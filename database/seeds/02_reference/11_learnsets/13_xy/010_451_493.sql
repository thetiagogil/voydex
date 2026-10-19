-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 451-493.
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
  -- Skorupi - Poison Sting - Level 1
  (451, 45100, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Leer - Level 1
  (451, 45100, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skorupi - Bite - Level 1
  (451, 45100, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skorupi - Knock Off - Level 5
  (451, 45100, 282, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Skorupi - Pin Missile - Level 9
  (451, 45100, 42, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Skorupi - Acupressure - Level 13
  (451, 45100, 367, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Skorupi - Pursuit - Level 16
  (451, 45100, 228, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Skorupi - Bug Bite - Level 20
  (451, 45100, 450, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skorupi - Poison Fang - Level 23
  (451, 45100, 305, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Skorupi - Venoshock - Level 27
  (451, 45100, 474, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skorupi - Hone Claws - Level 30
  (451, 45100, 468, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Skorupi - Toxic Spikes - Level 34
  (451, 45100, 390, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skorupi - Night Slash - Level 38
  (451, 45100, 400, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Skorupi - Scary Face - Level 41
  (451, 45100, 184, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Skorupi - Crunch - Level 45
  (451, 45100, 242, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Skorupi - Fell Stinger - Level 47
  (451, 45100, 565, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Skorupi - Cross Poison - Level 49
  (451, 45100, 440, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Skorupi - Hone Claws - TM01
  (451, 45100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Skorupi - Toxic - TM06
  (451, 45100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Skorupi - Venoshock - TM09
  (451, 45100, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 20),
  -- Skorupi - Hidden Power - TM10
  (451, 45100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Skorupi - Sunny Day - TM11
  (451, 45100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Skorupi - Taunt - TM12
  (451, 45100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Skorupi - Protect - TM17
  (451, 45100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Skorupi - Rain Dance - TM18
  (451, 45100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Skorupi - Frustration - TM21
  (451, 45100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Skorupi - Return - TM27
  (451, 45100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Skorupi - Dig - TM28
  (451, 45100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Skorupi - Shadow Ball - TM30
  (451, 45100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Skorupi - Brick Break - TM31
  (451, 45100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Skorupi - Double Team - TM32
  (451, 45100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Skorupi - Sludge Bomb - TM36
  (451, 45100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 32),
  -- Skorupi - Rock Tomb - TM39
  (451, 45100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Skorupi - Aerial Ace - TM40
  (451, 45100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Skorupi - Torment - TM41
  (451, 45100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Skorupi - Facade - TM42
  (451, 45100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Skorupi - Rest - TM44
  (451, 45100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Skorupi - Attract - TM45
  (451, 45100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Skorupi - Thief - TM46
  (451, 45100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Skorupi - Round - TM48
  (451, 45100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Skorupi - False Swipe - TM54
  (451, 45100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 41),
  -- Skorupi - Fling - TM56
  (451, 45100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Skorupi - Payback - TM66
  (451, 45100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Skorupi - Flash - TM70
  (451, 45100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Skorupi - Swords Dance - TM75
  (451, 45100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 45),
  -- Skorupi - Struggle Bug - TM76
  (451, 45100, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 46),
  -- Skorupi - X-Scissor - TM81
  (451, 45100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 47),
  -- Skorupi - Infestation - TM83
  (451, 45100, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 48),
  -- Skorupi - Poison Jab - TM84
  (451, 45100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 49),
  -- Skorupi - Swagger - TM87
  (451, 45100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Skorupi - Sleep Talk - TM88
  (451, 45100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Skorupi - Substitute - TM90
  (451, 45100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Skorupi - Rock Smash - TM94
  (451, 45100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Skorupi - Dark Pulse - TM97
  (451, 45100, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 54),
  -- Skorupi - Confide - TM100
  (451, 45100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Skorupi - Cut - HM01
  (451, 45100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 56),
  -- Skorupi - Strength - HM04
  (451, 45100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Skorupi - Whirlwind - Egg
  (451, 45100, 18, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skorupi - Sand Attack - Egg
  (451, 45100, 28, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skorupi - Twineedle - Egg
  (451, 45100, 41, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skorupi - Agility - Egg
  (451, 45100, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skorupi - Screech - Egg
  (451, 45100, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skorupi - Confuse Ray - Egg
  (451, 45100, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skorupi - Slash - Egg
  (451, 45100, 163, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skorupi - Feint Attack - Egg
  (451, 45100, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Skorupi - Pursuit - Egg
  (451, 45100, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Skorupi - Iron Tail - Egg
  (451, 45100, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Skorupi - Poison Tail - Egg
  (451, 45100, 342, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Skorupi - Night Slash - Egg
  (451, 45100, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Leer - Level 1
  (452, 45200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drapion - Bite - Level 1
  (452, 45200, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drapion - Knock Off - Level 1
  (452, 45200, 282, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drapion - Thunder Fang - Level 1
  (452, 45200, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drapion - Ice Fang - Level 1
  (452, 45200, 423, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drapion - Fire Fang - Level 1
  (452, 45200, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drapion - Knock Off - Level 5
  (452, 45200, 282, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Drapion - Pin Missile - Level 9
  (452, 45200, 42, 13, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Drapion - Acupressure - Level 13
  (452, 45200, 367, 13, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Drapion - Pursuit - Level 16
  (452, 45200, 228, 13, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Drapion - Bug Bite - Level 20
  (452, 45200, 450, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Drapion - Poison Fang - Level 23
  (452, 45200, 305, 13, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Drapion - Venoshock - Level 27
  (452, 45200, 474, 13, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Drapion - Hone Claws - Level 30
  (452, 45200, 468, 13, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Drapion - Toxic Spikes - Level 34
  (452, 45200, 390, 13, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Drapion - Night Slash - Level 38
  (452, 45200, 400, 13, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Drapion - Scary Face - Level 43
  (452, 45200, 184, 13, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Drapion - Crunch - Level 49
  (452, 45200, 242, 13, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Drapion - Fell Stinger - Level 53
  (452, 45200, 565, 13, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Drapion - Cross Poison - Level 57
  (452, 45200, 440, 13, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Drapion - Hone Claws - TM01
  (452, 45200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 22),
  -- Drapion - Roar - TM05
  (452, 45200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 23),
  -- Drapion - Toxic - TM06
  (452, 45200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Drapion - Venoshock - TM09
  (452, 45200, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 25),
  -- Drapion - Hidden Power - TM10
  (452, 45200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 26),
  -- Drapion - Sunny Day - TM11
  (452, 45200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 27),
  -- Drapion - Taunt - TM12
  (452, 45200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 28),
  -- Drapion - Hyper Beam - TM15
  (452, 45200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Drapion - Protect - TM17
  (452, 45200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Drapion - Rain Dance - TM18
  (452, 45200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Drapion - Frustration - TM21
  (452, 45200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Drapion - Earthquake - TM26
  (452, 45200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 33),
  -- Drapion - Return - TM27
  (452, 45200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Drapion - Dig - TM28
  (452, 45200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 35),
  -- Drapion - Shadow Ball - TM30
  (452, 45200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Drapion - Brick Break - TM31
  (452, 45200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Drapion - Double Team - TM32
  (452, 45200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Drapion - Sludge Bomb - TM36
  (452, 45200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 39),
  -- Drapion - Rock Tomb - TM39
  (452, 45200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 40),
  -- Drapion - Aerial Ace - TM40
  (452, 45200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 41),
  -- Drapion - Torment - TM41
  (452, 45200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 42),
  -- Drapion - Facade - TM42
  (452, 45200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 43),
  -- Drapion - Rest - TM44
  (452, 45200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 44),
  -- Drapion - Attract - TM45
  (452, 45200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 45),
  -- Drapion - Thief - TM46
  (452, 45200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 46),
  -- Drapion - Round - TM48
  (452, 45200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 47),
  -- Drapion - False Swipe - TM54
  (452, 45200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 48),
  -- Drapion - Fling - TM56
  (452, 45200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 49),
  -- Drapion - Payback - TM66
  (452, 45200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 50),
  -- Drapion - Retaliate - TM67
  (452, 45200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 51),
  -- Drapion - Giga Impact - TM68
  (452, 45200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 52),
  -- Drapion - Flash - TM70
  (452, 45200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 53),
  -- Drapion - Swords Dance - TM75
  (452, 45200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 54),
  -- Drapion - Struggle Bug - TM76
  (452, 45200, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 55),
  -- Drapion - Bulldoze - TM78
  (452, 45200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 56),
  -- Drapion - Rock Slide - TM80
  (452, 45200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 57),
  -- Drapion - X-Scissor - TM81
  (452, 45200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 58),
  -- Drapion - Infestation - TM83
  (452, 45200, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 59),
  -- Drapion - Poison Jab - TM84
  (452, 45200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 60),
  -- Drapion - Swagger - TM87
  (452, 45200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 61),
  -- Drapion - Sleep Talk - TM88
  (452, 45200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 62),
  -- Drapion - Substitute - TM90
  (452, 45200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 63),
  -- Drapion - Rock Smash - TM94
  (452, 45200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 64),
  -- Drapion - Snarl - TM95
  (452, 45200, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 65),
  -- Drapion - Dark Pulse - TM97
  (452, 45200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 66),
  -- Drapion - Confide - TM100
  (452, 45200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 67),
  -- Drapion - Cut - HM01
  (452, 45200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 68),
  -- Drapion - Strength - HM04
  (452, 45200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 69),
  -- Croagunk - Astonish - Level 1
  (453, 45300, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 3
  (453, 45300, 189, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Croagunk - Poison Sting - Level 8
  (453, 45300, 40, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 10
  (453, 45300, 269, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Croagunk - Pursuit - Level 15
  (453, 45300, 228, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croagunk - Feint Attack - Level 17
  (453, 45300, 185, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Croagunk - Revenge - Level 22
  (453, 45300, 279, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Croagunk - Swagger - Level 24
  (453, 45300, 207, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Mud Bomb - Level 29
  (453, 45300, 426, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Croagunk - Sucker Punch - Level 31
  (453, 45300, 389, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Croagunk - Venoshock - Level 36
  (453, 45300, 474, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 38
  (453, 45300, 417, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Croagunk - Poison Jab - Level 43
  (453, 45300, 398, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Croagunk - Sludge Bomb - Level 45
  (453, 45300, 188, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Croagunk - Belch - Level 47
  (453, 45300, 562, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Croagunk - Flatter - Level 50
  (453, 45300, 260, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Croagunk - Toxic - TM06
  (453, 45300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Croagunk - Bulk Up - TM08
  (453, 45300, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Croagunk - Venoshock - TM09
  (453, 45300, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Croagunk - Hidden Power - TM10
  (453, 45300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Croagunk - Sunny Day - TM11
  (453, 45300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Croagunk - Taunt - TM12
  (453, 45300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Croagunk - Protect - TM17
  (453, 45300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Croagunk - Rain Dance - TM18
  (453, 45300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Croagunk - Frustration - TM21
  (453, 45300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Croagunk - Earthquake - TM26
  (453, 45300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Croagunk - Return - TM27
  (453, 45300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Croagunk - Dig - TM28
  (453, 45300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Croagunk - Shadow Ball - TM30
  (453, 45300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Croagunk - Brick Break - TM31
  (453, 45300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Croagunk - Double Team - TM32
  (453, 45300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Croagunk - Sludge Wave - TM34
  (453, 45300, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 32),
  -- Croagunk - Sludge Bomb - TM36
  (453, 45300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Croagunk - Rock Tomb - TM39
  (453, 45300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Croagunk - Torment - TM41
  (453, 45300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Croagunk - Facade - TM42
  (453, 45300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Croagunk - Rest - TM44
  (453, 45300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Croagunk - Attract - TM45
  (453, 45300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Croagunk - Thief - TM46
  (453, 45300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Croagunk - Low Sweep - TM47
  (453, 45300, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 40),
  -- Croagunk - Round - TM48
  (453, 45300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Croagunk - Focus Blast - TM52
  (453, 45300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 42),
  -- Croagunk - Fling - TM56
  (453, 45300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Croagunk - Embargo - TM63
  (453, 45300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 44),
  -- Croagunk - Payback - TM66
  (453, 45300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Croagunk - Retaliate - TM67
  (453, 45300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Croagunk - Bulldoze - TM78
  (453, 45300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Croagunk - Rock Slide - TM80
  (453, 45300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Croagunk - X-Scissor - TM81
  (453, 45300, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 49),
  -- Croagunk - Poison Jab - TM84
  (453, 45300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 50),
  -- Croagunk - Swagger - TM87
  (453, 45300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Croagunk - Sleep Talk - TM88
  (453, 45300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Croagunk - Substitute - TM90
  (453, 45300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Croagunk - Rock Smash - TM94
  (453, 45300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Croagunk - Dark Pulse - TM97
  (453, 45300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 55),
  -- Croagunk - Power-Up Punch - TM98
  (453, 45300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Croagunk - Confide - TM100
  (453, 45300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Croagunk - Strength - HM04
  (453, 45300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Croagunk - Headbutt - Egg
  (453, 45300, 29, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croagunk - Counter - Egg
  (453, 45300, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croagunk - Meditate - Egg
  (453, 45300, 96, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Dynamic Punch - Egg
  (453, 45300, 223, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Croagunk - Cross Chop - Egg
  (453, 45300, 238, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Croagunk - Fake Out - Egg
  (453, 45300, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Croagunk - Smelling Salts - Egg
  (453, 45300, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Croagunk - Wake-Up Slap - Egg
  (453, 45300, 358, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Feint - Egg
  (453, 45300, 364, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Croagunk - Acupressure - Egg
  (453, 45300, 367, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Croagunk - Me First - Egg
  (453, 45300, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Croagunk - Drain Punch - Egg
  (453, 45300, 409, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Croagunk - Vacuum Wave - Egg
  (453, 45300, 410, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Croagunk - Bullet Punch - Egg
  (453, 45300, 418, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Croagunk - Quick Guard - Egg
  (453, 45300, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Mud-Slap - Level 3
  (454, 45400, 189, 13, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Toxicroak - Poison Sting - Level 8
  (454, 45400, 40, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toxicroak - Taunt - Level 10
  (454, 45400, 269, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Toxicroak - Pursuit - Level 15
  (454, 45400, 228, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Toxicroak - Feint Attack - Level 17
  (454, 45400, 185, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Toxicroak - Revenge - Level 22
  (454, 45400, 279, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Toxicroak - Swagger - Level 24
  (454, 45400, 207, 13, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Toxicroak - Mud Bomb - Level 29
  (454, 45400, 426, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Toxicroak - Sucker Punch - Level 31
  (454, 45400, 389, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Toxicroak - Venoshock - Level 36
  (454, 45400, 474, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Toxicroak - Nasty Plot - Level 41
  (454, 45400, 417, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Toxicroak - Poison Jab - Level 49
  (454, 45400, 398, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Toxicroak - Sludge Bomb - Level 54
  (454, 45400, 188, 13, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Toxicroak - Belch - Level 58
  (454, 45400, 562, 13, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Toxicroak - Flatter - Level 62
  (454, 45400, 260, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Toxicroak - Toxic - TM06
  (454, 45400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Toxicroak - Bulk Up - TM08
  (454, 45400, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 20),
  -- Toxicroak - Venoshock - TM09
  (454, 45400, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 21),
  -- Toxicroak - Hidden Power - TM10
  (454, 45400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Toxicroak - Sunny Day - TM11
  (454, 45400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Toxicroak - Taunt - TM12
  (454, 45400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Toxicroak - Hyper Beam - TM15
  (454, 45400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Toxicroak - Protect - TM17
  (454, 45400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Toxicroak - Rain Dance - TM18
  (454, 45400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Toxicroak - Frustration - TM21
  (454, 45400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Toxicroak - Earthquake - TM26
  (454, 45400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Toxicroak - Return - TM27
  (454, 45400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Toxicroak - Dig - TM28
  (454, 45400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Toxicroak - Shadow Ball - TM30
  (454, 45400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Toxicroak - Brick Break - TM31
  (454, 45400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Toxicroak - Double Team - TM32
  (454, 45400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Toxicroak - Sludge Wave - TM34
  (454, 45400, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 35),
  -- Toxicroak - Sludge Bomb - TM36
  (454, 45400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 36),
  -- Toxicroak - Rock Tomb - TM39
  (454, 45400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Toxicroak - Torment - TM41
  (454, 45400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 38),
  -- Toxicroak - Facade - TM42
  (454, 45400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Toxicroak - Rest - TM44
  (454, 45400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Toxicroak - Attract - TM45
  (454, 45400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Toxicroak - Thief - TM46
  (454, 45400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 42),
  -- Toxicroak - Low Sweep - TM47
  (454, 45400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 43),
  -- Toxicroak - Round - TM48
  (454, 45400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Toxicroak - Focus Blast - TM52
  (454, 45400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 45),
  -- Toxicroak - Fling - TM56
  (454, 45400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Toxicroak - Embargo - TM63
  (454, 45400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 47),
  -- Toxicroak - Payback - TM66
  (454, 45400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 48),
  -- Toxicroak - Retaliate - TM67
  (454, 45400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 49),
  -- Toxicroak - Giga Impact - TM68
  (454, 45400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 50),
  -- Toxicroak - Stone Edge - TM71
  (454, 45400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 51),
  -- Toxicroak - Swords Dance - TM75
  (454, 45400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 52),
  -- Toxicroak - Bulldoze - TM78
  (454, 45400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 53),
  -- Toxicroak - Rock Slide - TM80
  (454, 45400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 54),
  -- Toxicroak - X-Scissor - TM81
  (454, 45400, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 55),
  -- Toxicroak - Poison Jab - TM84
  (454, 45400, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 56),
  -- Toxicroak - Swagger - TM87
  (454, 45400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Toxicroak - Sleep Talk - TM88
  (454, 45400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Toxicroak - Substitute - TM90
  (454, 45400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Toxicroak - Rock Smash - TM94
  (454, 45400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Toxicroak - Dark Pulse - TM97
  (454, 45400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 61),
  -- Toxicroak - Power-Up Punch - TM98
  (454, 45400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 62),
  -- Toxicroak - Confide - TM100
  (454, 45400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 63),
  -- Toxicroak - Cut - HM01
  (454, 45400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 64),
  -- Toxicroak - Strength - HM04
  (454, 45400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 65),
  -- Carnivine - Bind - Level 1
  (455, 45500, 20, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carnivine - Growth - Level 1
  (455, 45500, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 7
  (455, 45500, 44, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carnivine - Vine Whip - Level 11
  (455, 45500, 22, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Carnivine - Sweet Scent - Level 17
  (455, 45500, 230, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Carnivine - Ingrain - Level 21
  (455, 45500, 275, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Carnivine - Feint Attack - Level 27
  (455, 45500, 185, 13, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carnivine - Leaf Tornado - Level 31
  (455, 45500, 536, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carnivine - Stockpile - Level 37
  (455, 45500, 254, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Carnivine - Spit Up - Level 37
  (455, 45500, 255, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Carnivine - Swallow - Level 37
  (455, 45500, 256, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Carnivine - Crunch - Level 41
  (455, 45500, 242, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Carnivine - Wring Out - Level 47
  (455, 45500, 378, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Carnivine - Power Whip - Level 50
  (455, 45500, 438, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Carnivine - Toxic - TM06
  (455, 45500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Carnivine - Hidden Power - TM10
  (455, 45500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Carnivine - Sunny Day - TM11
  (455, 45500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Carnivine - Hyper Beam - TM15
  (455, 45500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Carnivine - Protect - TM17
  (455, 45500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Carnivine - Frustration - TM21
  (455, 45500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Carnivine - Solar Beam - TM22
  (455, 45500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Carnivine - Return - TM27
  (455, 45500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Carnivine - Double Team - TM32
  (455, 45500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Carnivine - Sludge Bomb - TM36
  (455, 45500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 24),
  -- Carnivine - Facade - TM42
  (455, 45500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Carnivine - Rest - TM44
  (455, 45500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Carnivine - Attract - TM45
  (455, 45500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Carnivine - Thief - TM46
  (455, 45500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 28),
  -- Carnivine - Round - TM48
  (455, 45500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Carnivine - Energy Ball - TM53
  (455, 45500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 30),
  -- Carnivine - Fling - TM56
  (455, 45500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 31),
  -- Carnivine - Payback - TM66
  (455, 45500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 32),
  -- Carnivine - Giga Impact - TM68
  (455, 45500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 33),
  -- Carnivine - Flash - TM70
  (455, 45500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 34),
  -- Carnivine - Swords Dance - TM75
  (455, 45500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 35),
  -- Carnivine - Infestation - TM83
  (455, 45500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 36),
  -- Carnivine - Grass Knot - TM86
  (455, 45500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 37),
  -- Carnivine - Swagger - TM87
  (455, 45500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Carnivine - Sleep Talk - TM88
  (455, 45500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Carnivine - Substitute - TM90
  (455, 45500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Carnivine - Nature Power - TM96
  (455, 45500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 41),
  -- Carnivine - Confide - TM100
  (455, 45500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Carnivine - Cut - HM01
  (455, 45500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 43),
  -- Carnivine - Slam - Egg
  (455, 45500, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carnivine - Leech Seed - Egg
  (455, 45500, 73, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carnivine - Razor Leaf - Egg
  (455, 45500, 75, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carnivine - Stun Spore - Egg
  (455, 45500, 78, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carnivine - Sleep Powder - Egg
  (455, 45500, 79, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carnivine - Giga Drain - Egg
  (455, 45500, 202, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carnivine - Synthesis - Egg
  (455, 45500, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Carnivine - Grass Whistle - Egg
  (455, 45500, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Carnivine - Magical Leaf - Egg
  (455, 45500, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Carnivine - Worry Seed - Egg
  (455, 45500, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Carnivine - Rage Powder - Egg
  (455, 45500, 476, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Finneon - Pound - Level 1
  (456, 45600, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Attract - Level 10
  (456, 45600, 213, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 13, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Finneon - Captivate - Level 26
  (456, 45600, 445, 13, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Finneon - Silver Wind - Level 49
  (456, 45600, 318, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Finneon - Soak - Level 54
  (456, 45600, 487, 13, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Finneon - Toxic - TM06
  (456, 45600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Finneon - Hail - TM07
  (456, 45600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Finneon - Hidden Power - TM10
  (456, 45600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Finneon - Ice Beam - TM13
  (456, 45600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Finneon - Blizzard - TM14
  (456, 45600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Finneon - Protect - TM17
  (456, 45600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Finneon - Rain Dance - TM18
  (456, 45600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Finneon - Safeguard - TM20
  (456, 45600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 22),
  -- Finneon - Frustration - TM21
  (456, 45600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Finneon - Return - TM27
  (456, 45600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Finneon - Double Team - TM32
  (456, 45600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Finneon - Facade - TM42
  (456, 45600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Finneon - Rest - TM44
  (456, 45600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Finneon - Attract - TM45
  (456, 45600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Finneon - Round - TM48
  (456, 45600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Finneon - Scald - TM55
  (456, 45600, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 30),
  -- Finneon - Payback - TM66
  (456, 45600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 31),
  -- Finneon - Flash - TM70
  (456, 45600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 32),
  -- Finneon - Psych Up - TM77
  (456, 45600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 33),
  -- Finneon - Swagger - TM87
  (456, 45600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Finneon - Sleep Talk - TM88
  (456, 45600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Finneon - U-turn - TM89
  (456, 45600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 36),
  -- Finneon - Substitute - TM90
  (456, 45600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Finneon - Nature Power - TM96
  (456, 45600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Finneon - Confide - TM100
  (456, 45600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Finneon - Surf - HM03
  (456, 45600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Finneon - Waterfall - HM05
  (456, 45600, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Finneon - Psybeam - Egg
  (456, 45600, 60, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Finneon - Aurora Beam - Egg
  (456, 45600, 62, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finneon - Agility - Egg
  (456, 45600, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finneon - Splash - Egg
  (456, 45600, 150, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Flail - Egg
  (456, 45600, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Sweet Kiss - Egg
  (456, 45600, 186, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Charm - Egg
  (456, 45600, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Tickle - Egg
  (456, 45600, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Finneon - Signal Beam - Egg
  (456, 45600, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Finneon - Brine - Egg
  (456, 45600, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Finneon - Aqua Tail - Egg
  (456, 45600, 401, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lumineon - Pound - Level 1
  (457, 45700, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Gust - Level 1
  (457, 45700, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lumineon - Water Gun - Level 1
  (457, 45700, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lumineon - Attract - Level 1
  (457, 45700, 213, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lumineon - Soak - Level 1
  (457, 45700, 487, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lumineon - Water Gun - Level 6
  (457, 45700, 55, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Lumineon - Attract - Level 10
  (457, 45700, 213, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lumineon - Gust - Level 17
  (457, 45700, 16, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Lumineon - Captivate - Level 26
  (457, 45700, 445, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lumineon - Silver Wind - Level 59
  (457, 45700, 318, 13, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Lumineon - Soak - Level 66
  (457, 45700, 487, 13, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Lumineon - Toxic - TM06
  (457, 45700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Lumineon - Hail - TM07
  (457, 45700, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Lumineon - Hidden Power - TM10
  (457, 45700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Lumineon - Ice Beam - TM13
  (457, 45700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Lumineon - Blizzard - TM14
  (457, 45700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Lumineon - Hyper Beam - TM15
  (457, 45700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Lumineon - Protect - TM17
  (457, 45700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Lumineon - Rain Dance - TM18
  (457, 45700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Lumineon - Safeguard - TM20
  (457, 45700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Lumineon - Frustration - TM21
  (457, 45700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Lumineon - Return - TM27
  (457, 45700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Lumineon - Double Team - TM32
  (457, 45700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Lumineon - Facade - TM42
  (457, 45700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Lumineon - Rest - TM44
  (457, 45700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Lumineon - Attract - TM45
  (457, 45700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Lumineon - Round - TM48
  (457, 45700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Lumineon - Scald - TM55
  (457, 45700, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Lumineon - Payback - TM66
  (457, 45700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 36),
  -- Lumineon - Giga Impact - TM68
  (457, 45700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Lumineon - Flash - TM70
  (457, 45700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Lumineon - Psych Up - TM77
  (457, 45700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Lumineon - Swagger - TM87
  (457, 45700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Lumineon - Sleep Talk - TM88
  (457, 45700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Lumineon - U-turn - TM89
  (457, 45700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 42),
  -- Lumineon - Substitute - TM90
  (457, 45700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Lumineon - Confide - TM100
  (457, 45700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Lumineon - Surf - HM03
  (457, 45700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 45),
  -- Lumineon - Waterfall - HM05
  (457, 45700, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 46),
  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Bubble - Level 1
  (458, 45800, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 3
  (458, 45800, 48, 13, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Mantyke - Bubble Beam - Level 7
  (458, 45800, 61, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Mantyke - Confuse Ray - Level 11
  (458, 45800, 109, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Mantyke - Wing Attack - Level 14
  (458, 45800, 17, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Mantyke - Headbutt - Level 16
  (458, 45800, 29, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mantyke - Water Pulse - Level 19
  (458, 45800, 352, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Mantyke - Wide Guard - Level 23
  (458, 45800, 469, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Mantyke - Take Down - Level 27
  (458, 45800, 36, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Mantyke - Agility - Level 32
  (458, 45800, 97, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mantyke - Air Slash - Level 36
  (458, 45800, 403, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mantyke - Aqua Ring - Level 39
  (458, 45800, 392, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Mantyke - Bounce - Level 46
  (458, 45800, 340, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Mantyke - Hydro Pump - Level 49
  (458, 45800, 56, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mantyke - Toxic - TM06
  (458, 45800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Mantyke - Hail - TM07
  (458, 45800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Mantyke - Hidden Power - TM10
  (458, 45800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Mantyke - Ice Beam - TM13
  (458, 45800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Mantyke - Blizzard - TM14
  (458, 45800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Mantyke - Protect - TM17
  (458, 45800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Mantyke - Rain Dance - TM18
  (458, 45800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Mantyke - Frustration - TM21
  (458, 45800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Mantyke - Earthquake - TM26
  (458, 45800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Mantyke - Return - TM27
  (458, 45800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Mantyke - Double Team - TM32
  (458, 45800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Mantyke - Aerial Ace - TM40
  (458, 45800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Mantyke - Facade - TM42
  (458, 45800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Mantyke - Rest - TM44
  (458, 45800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Mantyke - Attract - TM45
  (458, 45800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Mantyke - Round - TM48
  (458, 45800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Mantyke - Scald - TM55
  (458, 45800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 32),
  -- Mantyke - Acrobatics - TM62
  (458, 45800, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 33),
  -- Mantyke - Bulldoze - TM78
  (458, 45800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 34),
  -- Mantyke - Rock Slide - TM80
  (458, 45800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Mantyke - Swagger - TM87
  (458, 45800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Mantyke - Sleep Talk - TM88
  (458, 45800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Mantyke - Substitute - TM90
  (458, 45800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Mantyke - Confide - TM100
  (458, 45800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Mantyke - Surf - HM03
  (458, 45800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Mantyke - Waterfall - HM05
  (458, 45800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Mantyke - Slam - Egg
  (458, 45800, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantyke - Hydro Pump - Egg
  (458, 45800, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mantyke - Haze - Egg
  (458, 45800, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mantyke - Amnesia - Egg
  (458, 45800, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mantyke - Splash - Egg
  (458, 45800, 150, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantyke - Twister - Egg
  (458, 45800, 239, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantyke - Mirror Coat - Egg
  (458, 45800, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantyke - Mud Sport - Egg
  (458, 45800, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantyke - Signal Beam - Egg
  (458, 45800, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mantyke - Water Sport - Egg
  (458, 45800, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mantyke - Tailwind - Egg
  (458, 45800, 366, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantyke - Wide Guard - Egg
  (458, 45800, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Snover - Leer - Level 1
  (459, 45900, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Razor Leaf - Level 5
  (459, 45900, 75, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Icy Wind - Level 9
  (459, 45900, 196, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Snover - Grass Whistle - Level 13
  (459, 45900, 320, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snover - Swagger - Level 17
  (459, 45900, 207, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Snover - Mist - Level 21
  (459, 45900, 54, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Snover - Ice Shard - Level 26
  (459, 45900, 420, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 31
  (459, 45900, 275, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 36
  (459, 45900, 452, 13, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 41
  (459, 45900, 59, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 46
  (459, 45900, 329, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snover - Toxic - TM06
  (459, 45900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Snover - Hail - TM07
  (459, 45900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Snover - Hidden Power - TM10
  (459, 45900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Snover - Ice Beam - TM13
  (459, 45900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Snover - Blizzard - TM14
  (459, 45900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Snover - Light Screen - TM16
  (459, 45900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 18),
  -- Snover - Protect - TM17
  (459, 45900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Snover - Rain Dance - TM18
  (459, 45900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Snover - Safeguard - TM20
  (459, 45900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Snover - Frustration - TM21
  (459, 45900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Snover - Solar Beam - TM22
  (459, 45900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Snover - Return - TM27
  (459, 45900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Snover - Shadow Ball - TM30
  (459, 45900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Snover - Double Team - TM32
  (459, 45900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Snover - Facade - TM42
  (459, 45900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Snover - Rest - TM44
  (459, 45900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Snover - Attract - TM45
  (459, 45900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Snover - Round - TM48
  (459, 45900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Snover - Energy Ball - TM53
  (459, 45900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 31),
  -- Snover - Flash - TM70
  (459, 45900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 32),
  -- Snover - Swords Dance - TM75
  (459, 45900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Snover - Frost Breath - TM79
  (459, 45900, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 34),
  -- Snover - Grass Knot - TM86
  (459, 45900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 35),
  -- Snover - Swagger - TM87
  (459, 45900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Snover - Sleep Talk - TM88
  (459, 45900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Snover - Substitute - TM90
  (459, 45900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Snover - Confide - TM100
  (459, 45900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Snover - Stomp - Egg
  (459, 45900, 23, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snover - Double-Edge - Egg
  (459, 45900, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snover - Mist - Egg
  (459, 45900, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snover - Leech Seed - Egg
  (459, 45900, 73, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snover - Growth - Egg
  (459, 45900, 74, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Skull Bash - Egg
  (459, 45900, 130, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Bullet Seed - Egg
  (459, 45900, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Magical Leaf - Egg
  (459, 45900, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snover - Natural Gift - Egg
  (459, 45900, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snover - Seed Bomb - Egg
  (459, 45900, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snover - Avalanche - Egg
  (459, 45900, 419, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Abomasnow - Ice Punch - Level 1
  (460, 46000, 8, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Razor Leaf - Level 1
  (460, 46000, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Icy Wind - Level 1
  (460, 46000, 196, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Razor Leaf - Level 5
  (460, 46000, 75, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Abomasnow - Icy Wind - Level 9
  (460, 46000, 196, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Abomasnow - Grass Whistle - Level 13
  (460, 46000, 320, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Abomasnow - Swagger - Level 17
  (460, 46000, 207, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Abomasnow - Mist - Level 21
  (460, 46000, 54, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Abomasnow - Ice Shard - Level 26
  (460, 46000, 420, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Abomasnow - Ingrain - Level 31
  (460, 46000, 275, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Abomasnow - Wood Hammer - Level 36
  (460, 46000, 452, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Abomasnow - Blizzard - Level 47
  (460, 46000, 59, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Abomasnow - Sheer Cold - Level 58
  (460, 46000, 329, 13, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Abomasnow - Toxic - TM06
  (460, 46000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Abomasnow - Hail - TM07
  (460, 46000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Abomasnow - Hidden Power - TM10
  (460, 46000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Abomasnow - Ice Beam - TM13
  (460, 46000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Abomasnow - Blizzard - TM14
  (460, 46000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Abomasnow - Hyper Beam - TM15
  (460, 46000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Abomasnow - Light Screen - TM16
  (460, 46000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Abomasnow - Protect - TM17
  (460, 46000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Abomasnow - Rain Dance - TM18
  (460, 46000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Abomasnow - Safeguard - TM20
  (460, 46000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Abomasnow - Frustration - TM21
  (460, 46000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Abomasnow - Solar Beam - TM22
  (460, 46000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Abomasnow - Earthquake - TM26
  (460, 46000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Abomasnow - Return - TM27
  (460, 46000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Abomasnow - Shadow Ball - TM30
  (460, 46000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 30),
  -- Abomasnow - Brick Break - TM31
  (460, 46000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Abomasnow - Double Team - TM32
  (460, 46000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Abomasnow - Rock Tomb - TM39
  (460, 46000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Abomasnow - Facade - TM42
  (460, 46000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Abomasnow - Rest - TM44
  (460, 46000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Abomasnow - Attract - TM45
  (460, 46000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Abomasnow - Round - TM48
  (460, 46000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Abomasnow - Focus Blast - TM52
  (460, 46000, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 38),
  -- Abomasnow - Energy Ball - TM53
  (460, 46000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Abomasnow - Fling - TM56
  (460, 46000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Abomasnow - Giga Impact - TM68
  (460, 46000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Abomasnow - Flash - TM70
  (460, 46000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Abomasnow - Swords Dance - TM75
  (460, 46000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 43),
  -- Abomasnow - Bulldoze - TM78
  (460, 46000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Abomasnow - Frost Breath - TM79
  (460, 46000, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 45),
  -- Abomasnow - Rock Slide - TM80
  (460, 46000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Abomasnow - Grass Knot - TM86
  (460, 46000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Abomasnow - Swagger - TM87
  (460, 46000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Abomasnow - Sleep Talk - TM88
  (460, 46000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Abomasnow - Substitute - TM90
  (460, 46000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Abomasnow - Rock Smash - TM94
  (460, 46000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Abomasnow - Confide - TM100
  (460, 46000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Abomasnow - Strength - HM04
  (460, 46000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Revenge - Level 1
  (461, 46100, 279, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Embargo - Level 1
  (461, 46100, 373, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Quick Attack - Level 8
  (461, 46100, 98, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Weavile - Feint Attack - Level 10
  (461, 46100, 185, 13, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Weavile - Icy Wind - Level 14
  (461, 46100, 196, 13, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Weavile - Fury Swipes - Level 16
  (461, 46100, 154, 13, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Weavile - Nasty Plot - Level 20
  (461, 46100, 417, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Weavile - Metal Claw - Level 22
  (461, 46100, 232, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Weavile - Hone Claws - Level 25
  (461, 46100, 468, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 28
  (461, 46100, 374, 13, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Weavile - Screech - Level 32
  (461, 46100, 103, 13, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Weavile - Night Slash - Level 35
  (461, 46100, 400, 13, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Weavile - Snatch - Level 40
  (461, 46100, 289, 13, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Weavile - Punishment - Level 44
  (461, 46100, 386, 13, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Weavile - Dark Pulse - Level 47
  (461, 46100, 399, 13, NULL, 1, 47, NULL, NULL, NULL, 20),
  -- Weavile - Hone Claws - TM01
  (461, 46100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 21),
  -- Weavile - Calm Mind - TM04
  (461, 46100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Weavile - Toxic - TM06
  (461, 46100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Weavile - Hail - TM07
  (461, 46100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 24),
  -- Weavile - Hidden Power - TM10
  (461, 46100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Weavile - Sunny Day - TM11
  (461, 46100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Weavile - Taunt - TM12
  (461, 46100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 27),
  -- Weavile - Ice Beam - TM13
  (461, 46100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 28),
  -- Weavile - Blizzard - TM14
  (461, 46100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 29),
  -- Weavile - Hyper Beam - TM15
  (461, 46100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 30),
  -- Weavile - Protect - TM17
  (461, 46100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 31),
  -- Weavile - Rain Dance - TM18
  (461, 46100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 32),
  -- Weavile - Frustration - TM21
  (461, 46100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Weavile - Return - TM27
  (461, 46100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Weavile - Dig - TM28
  (461, 46100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 35),
  -- Weavile - Shadow Ball - TM30
  (461, 46100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Weavile - Brick Break - TM31
  (461, 46100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Weavile - Double Team - TM32
  (461, 46100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Weavile - Reflect - TM33
  (461, 46100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 39),
  -- Weavile - Aerial Ace - TM40
  (461, 46100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 40),
  -- Weavile - Torment - TM41
  (461, 46100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 41),
  -- Weavile - Facade - TM42
  (461, 46100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Weavile - Rest - TM44
  (461, 46100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 43),
  -- Weavile - Attract - TM45
  (461, 46100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 44),
  -- Weavile - Thief - TM46
  (461, 46100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 45),
  -- Weavile - Low Sweep - TM47
  (461, 46100, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 46),
  -- Weavile - Round - TM48
  (461, 46100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 47),
  -- Weavile - Focus Blast - TM52
  (461, 46100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 48),
  -- Weavile - False Swipe - TM54
  (461, 46100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 49),
  -- Weavile - Fling - TM56
  (461, 46100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 50),
  -- Weavile - Embargo - TM63
  (461, 46100, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 51),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 52),
  -- Weavile - Payback - TM66
  (461, 46100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 53),
  -- Weavile - Retaliate - TM67
  (461, 46100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 54),
  -- Weavile - Giga Impact - TM68
  (461, 46100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 55),
  -- Weavile - Swords Dance - TM75
  (461, 46100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 56),
  -- Weavile - Psych Up - TM77
  (461, 46100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 57),
  -- Weavile - X-Scissor - TM81
  (461, 46100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 58),
  -- Weavile - Poison Jab - TM84
  (461, 46100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 59),
  -- Weavile - Dream Eater - TM85
  (461, 46100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 60),
  -- Weavile - Swagger - TM87
  (461, 46100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 61),
  -- Weavile - Sleep Talk - TM88
  (461, 46100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 62),
  -- Weavile - Substitute - TM90
  (461, 46100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 63),
  -- Weavile - Rock Smash - TM94
  (461, 46100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 64),
  -- Weavile - Snarl - TM95
  (461, 46100, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 65),
  -- Weavile - Dark Pulse - TM97
  (461, 46100, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 66),
  -- Weavile - Power-Up Punch - TM98
  (461, 46100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 67),
  -- Weavile - Confide - TM100
  (461, 46100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 68),
  -- Weavile - Cut - HM01
  (461, 46100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 69),
  -- Weavile - Surf - HM03
  (461, 46100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 70),
  -- Weavile - Strength - HM04
  (461, 46100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 71),
  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Sonic Boom - Level 1
  (462, 46200, 49, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Barrier - Level 1
  (462, 46200, 112, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Zap Cannon - Level 1
  (462, 46200, 192, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magnezone - Magnetic Flux - Level 1
  (462, 46200, 602, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Magnezone - Supersonic - Level 4
  (462, 46200, 48, 13, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Magnezone - Thunder Shock - Level 7
  (462, 46200, 84, 13, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Magnezone - Electric Terrain - Level 11
  (462, 46200, 604, 13, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Magnezone - Thunder Wave - Level 15
  (462, 46200, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Magnezone - Magnet Bomb - Level 18
  (462, 46200, 443, 13, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Magnezone - Spark - Level 21
  (462, 46200, 209, 13, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Magnezone - Mirror Shot - Level 25
  (462, 46200, 429, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Magnezone - Metal Sound - Level 29
  (462, 46200, 319, 13, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Magnezone - Electro Ball - Level 34
  (462, 46200, 486, 13, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Magnezone - Flash Cannon - Level 39
  (462, 46200, 430, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Magnezone - Screech - Level 45
  (462, 46200, 103, 13, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Magnezone - Discharge - Level 51
  (462, 46200, 435, 13, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Magnezone - Lock-On - Level 56
  (462, 46200, 199, 13, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Magnezone - Magnet Rise - Level 62
  (462, 46200, 393, 13, NULL, 1, 62, NULL, NULL, NULL, 21),
  -- Magnezone - Gyro Ball - Level 67
  (462, 46200, 360, 13, NULL, 1, 67, NULL, NULL, NULL, 22),
  -- Magnezone - Zap Cannon - Level 73
  (462, 46200, 192, 13, NULL, 1, 73, NULL, NULL, NULL, 23),
  -- Magnezone - Toxic - TM06
  (462, 46200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Magnezone - Hidden Power - TM10
  (462, 46200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Magnezone - Sunny Day - TM11
  (462, 46200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Magnezone - Hyper Beam - TM15
  (462, 46200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Magnezone - Light Screen - TM16
  (462, 46200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 28),
  -- Magnezone - Protect - TM17
  (462, 46200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Magnezone - Rain Dance - TM18
  (462, 46200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Magnezone - Frustration - TM21
  (462, 46200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Magnezone - Thunderbolt - TM24
  (462, 46200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 32),
  -- Magnezone - Thunder - TM25
  (462, 46200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 33),
  -- Magnezone - Return - TM27
  (462, 46200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Magnezone - Double Team - TM32
  (462, 46200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Magnezone - Reflect - TM33
  (462, 46200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Magnezone - Facade - TM42
  (462, 46200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Magnezone - Rest - TM44
  (462, 46200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Magnezone - Round - TM48
  (462, 46200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Magnezone - Charge Beam - TM57
  (462, 46200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 40),
  -- Magnezone - Explosion - TM64
  (462, 46200, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 41),
  -- Magnezone - Giga Impact - TM68
  (462, 46200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Magnezone - Flash - TM70
  (462, 46200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Magnezone - Volt Switch - TM72
  (462, 46200, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 44),
  -- Magnezone - Thunder Wave - TM73
  (462, 46200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Magnezone - Gyro Ball - TM74
  (462, 46200, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 46),
  -- Magnezone - Psych Up - TM77
  (462, 46200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Magnezone - Swagger - TM87
  (462, 46200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Magnezone - Sleep Talk - TM88
  (462, 46200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Magnezone - Substitute - TM90
  (462, 46200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Magnezone - Flash Cannon - TM91
  (462, 46200, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 51),
  -- Magnezone - Wild Charge - TM93
  (462, 46200, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 52),
  -- Magnezone - Confide - TM100
  (462, 46200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Lickilicky - Lick - Level 1
  (463, 46300, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Wring Out - Level 1
  (463, 46300, 378, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lickilicky - Power Whip - Level 1
  (463, 46300, 438, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lickilicky - Supersonic - Level 5
  (463, 46300, 48, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Lickilicky - Defense Curl - Level 9
  (463, 46300, 111, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lickilicky - Knock Off - Level 13
  (463, 46300, 282, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Lickilicky - Wrap - Level 17
  (463, 46300, 35, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lickilicky - Stomp - Level 21
  (463, 46300, 23, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Lickilicky - Disable - Level 25
  (463, 46300, 50, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Lickilicky - Slam - Level 29
  (463, 46300, 21, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Lickilicky - Rollout - Level 33
  (463, 46300, 205, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lickilicky - Chip Away - Level 37
  (463, 46300, 498, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Lickilicky - Me First - Level 41
  (463, 46300, 382, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Lickilicky - Refresh - Level 45
  (463, 46300, 287, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Lickilicky - Screech - Level 49
  (463, 46300, 103, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Lickilicky - Power Whip - Level 53
  (463, 46300, 438, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lickilicky - Wring Out - Level 57
  (463, 46300, 378, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Lickilicky - Gyro Ball - Level 61
  (463, 46300, 360, 13, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Lickilicky - Toxic - TM06
  (463, 46300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Lickilicky - Hidden Power - TM10
  (463, 46300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Lickilicky - Sunny Day - TM11
  (463, 46300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Lickilicky - Ice Beam - TM13
  (463, 46300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Lickilicky - Blizzard - TM14
  (463, 46300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Lickilicky - Hyper Beam - TM15
  (463, 46300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Lickilicky - Protect - TM17
  (463, 46300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Lickilicky - Rain Dance - TM18
  (463, 46300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Lickilicky - Frustration - TM21
  (463, 46300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Lickilicky - Solar Beam - TM22
  (463, 46300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Lickilicky - Thunderbolt - TM24
  (463, 46300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Lickilicky - Thunder - TM25
  (463, 46300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Lickilicky - Earthquake - TM26
  (463, 46300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Lickilicky - Return - TM27
  (463, 46300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Lickilicky - Dig - TM28
  (463, 46300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 33),
  -- Lickilicky - Shadow Ball - TM30
  (463, 46300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 34),
  -- Lickilicky - Brick Break - TM31
  (463, 46300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 35),
  -- Lickilicky - Double Team - TM32
  (463, 46300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Lickilicky - Flamethrower - TM35
  (463, 46300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 37),
  -- Lickilicky - Sandstorm - TM37
  (463, 46300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 38),
  -- Lickilicky - Fire Blast - TM38
  (463, 46300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 39),
  -- Lickilicky - Rock Tomb - TM39
  (463, 46300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 40),
  -- Lickilicky - Facade - TM42
  (463, 46300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Lickilicky - Rest - TM44
  (463, 46300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Lickilicky - Attract - TM45
  (463, 46300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Lickilicky - Thief - TM46
  (463, 46300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 44),
  -- Lickilicky - Round - TM48
  (463, 46300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Lickilicky - Focus Blast - TM52
  (463, 46300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 46),
  -- Lickilicky - Fling - TM56
  (463, 46300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 47),
  -- Lickilicky - Incinerate - TM59
  (463, 46300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 48),
  -- Lickilicky - Explosion - TM64
  (463, 46300, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 49),
  -- Lickilicky - Retaliate - TM67
  (463, 46300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 50),
  -- Lickilicky - Giga Impact - TM68
  (463, 46300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Lickilicky - Gyro Ball - TM74
  (463, 46300, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 52),
  -- Lickilicky - Swords Dance - TM75
  (463, 46300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 53),
  -- Lickilicky - Psych Up - TM77
  (463, 46300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Lickilicky - Bulldoze - TM78
  (463, 46300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 55),
  -- Lickilicky - Rock Slide - TM80
  (463, 46300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 56),
  -- Lickilicky - Dragon Tail - TM82
  (463, 46300, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 57),
  -- Lickilicky - Dream Eater - TM85
  (463, 46300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 58),
  -- Lickilicky - Swagger - TM87
  (463, 46300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Lickilicky - Sleep Talk - TM88
  (463, 46300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Lickilicky - Substitute - TM90
  (463, 46300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Lickilicky - Rock Smash - TM94
  (463, 46300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Lickilicky - Power-Up Punch - TM98
  (463, 46300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 63),
  -- Lickilicky - Confide - TM100
  (463, 46300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 64),
  -- Lickilicky - Cut - HM01
  (463, 46300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 65),
  -- Lickilicky - Surf - HM03
  (463, 46300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 66),
  -- Lickilicky - Strength - HM04
  (463, 46300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 67),
  -- Rhyperior - Stomp - Level 1
  (464, 46400, 23, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Horn Attack - Level 1
  (464, 46400, 30, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Fury Attack - Level 1
  (464, 46400, 31, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Horn Drill - Level 1
  (464, 46400, 32, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Megahorn - Level 1
  (464, 46400, 224, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rhyperior - Poison Jab - Level 1
  (464, 46400, 398, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rhyperior - Rock Wrecker - Level 1
  (464, 46400, 439, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Rhyperior - Stomp - Level 9
  (464, 46400, 23, 13, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Rhyperior - Fury Attack - Level 19
  (464, 46400, 31, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Rhyperior - Scary Face - Level 19
  (464, 46400, 184, 13, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Rhyperior - Rock Blast - Level 23
  (464, 46400, 350, 13, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Rhyperior - Chip Away - Level 30
  (464, 46400, 498, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Rhyperior - Take Down - Level 41
  (464, 46400, 36, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Rhyperior - Hammer Arm - Level 42
  (464, 46400, 359, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Rhyperior - Drill Run - Level 47
  (464, 46400, 529, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Rhyperior - Stone Edge - Level 56
  (464, 46400, 444, 13, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Rhyperior - Earthquake - Level 62
  (464, 46400, 89, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Rhyperior - Horn Drill - Level 71
  (464, 46400, 32, 13, NULL, 1, 71, NULL, NULL, NULL, 19),
  -- Rhyperior - Megahorn - Level 77
  (464, 46400, 224, 13, NULL, 1, 77, NULL, NULL, NULL, 20),
  -- Rhyperior - Rock Wrecker - Level 86
  (464, 46400, 439, 13, NULL, 1, 86, NULL, NULL, NULL, 21),
  -- Rhyperior - Roar - TM05
  (464, 46400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 22),
  -- Rhyperior - Toxic - TM06
  (464, 46400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Rhyperior - Hidden Power - TM10
  (464, 46400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Rhyperior - Sunny Day - TM11
  (464, 46400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Rhyperior - Ice Beam - TM13
  (464, 46400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Rhyperior - Blizzard - TM14
  (464, 46400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Rhyperior - Hyper Beam - TM15
  (464, 46400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Rhyperior - Protect - TM17
  (464, 46400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Rhyperior - Rain Dance - TM18
  (464, 46400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Rhyperior - Frustration - TM21
  (464, 46400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Rhyperior - Smack Down - TM23
  (464, 46400, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 32),
  -- Rhyperior - Thunderbolt - TM24
  (464, 46400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 33),
  -- Rhyperior - Thunder - TM25
  (464, 46400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 34),
  -- Rhyperior - Earthquake - TM26
  (464, 46400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 35),
  -- Rhyperior - Return - TM27
  (464, 46400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 36),
  -- Rhyperior - Dig - TM28
  (464, 46400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 37),
  -- Rhyperior - Brick Break - TM31
  (464, 46400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 38),
  -- Rhyperior - Double Team - TM32
  (464, 46400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 39),
  -- Rhyperior - Flamethrower - TM35
  (464, 46400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 40),
  -- Rhyperior - Sandstorm - TM37
  (464, 46400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 41),
  -- Rhyperior - Fire Blast - TM38
  (464, 46400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 42),
  -- Rhyperior - Rock Tomb - TM39
  (464, 46400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 43),
  -- Rhyperior - Facade - TM42
  (464, 46400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 44),
  -- Rhyperior - Rest - TM44
  (464, 46400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 45),
  -- Rhyperior - Attract - TM45
  (464, 46400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 46),
  -- Rhyperior - Thief - TM46
  (464, 46400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 47),
  -- Rhyperior - Round - TM48
  (464, 46400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 48),
  -- Rhyperior - Focus Blast - TM52
  (464, 46400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 49),
  -- Rhyperior - Fling - TM56
  (464, 46400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 50),
  -- Rhyperior - Incinerate - TM59
  (464, 46400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 51),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 52),
  -- Rhyperior - Payback - TM66
  (464, 46400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 53),
  -- Rhyperior - Giga Impact - TM68
  (464, 46400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 54),
  -- Rhyperior - Rock Polish - TM69
  (464, 46400, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 55),
  -- Rhyperior - Stone Edge - TM71
  (464, 46400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 56),
  -- Rhyperior - Swords Dance - TM75
  (464, 46400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 57),
  -- Rhyperior - Bulldoze - TM78
  (464, 46400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 58),
  -- Rhyperior - Rock Slide - TM80
  (464, 46400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 59),
  -- Rhyperior - Dragon Tail - TM82
  (464, 46400, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 60),
  -- Rhyperior - Poison Jab - TM84
  (464, 46400, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 61),
  -- Rhyperior - Swagger - TM87
  (464, 46400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 62),
  -- Rhyperior - Sleep Talk - TM88
  (464, 46400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 63),
  -- Rhyperior - Substitute - TM90
  (464, 46400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 64),
  -- Rhyperior - Flash Cannon - TM91
  (464, 46400, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 65),
  -- Rhyperior - Rock Smash - TM94
  (464, 46400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 66),
  -- Rhyperior - Power-Up Punch - TM98
  (464, 46400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 67),
  -- Rhyperior - Confide - TM100
  (464, 46400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 68),
  -- Rhyperior - Cut - HM01
  (464, 46400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 69),
  -- Rhyperior - Surf - HM03
  (464, 46400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 70),
  -- Rhyperior - Strength - HM04
  (464, 46400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 71),
  -- Tangrowth - Constrict - Level 1
  (465, 46500, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Ingrain - Level 1
  (465, 46500, 275, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangrowth - Block - Level 1
  (465, 46500, 335, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tangrowth - Sleep Powder - Level 4
  (465, 46500, 79, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Tangrowth - Vine Whip - Level 7
  (465, 46500, 22, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Tangrowth - Absorb - Level 10
  (465, 46500, 71, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Tangrowth - Poison Powder - Level 14
  (465, 46500, 77, 13, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Tangrowth - Bind - Level 17
  (465, 46500, 20, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Tangrowth - Growth - Level 20
  (465, 46500, 74, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Tangrowth - Mega Drain - Level 23
  (465, 46500, 72, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Tangrowth - Knock Off - Level 27
  (465, 46500, 282, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Tangrowth - Stun Spore - Level 30
  (465, 46500, 78, 13, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Tangrowth - Natural Gift - Level 33
  (465, 46500, 363, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Tangrowth - Giga Drain - Level 36
  (465, 46500, 202, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Tangrowth - Ancient Power - Level 40
  (465, 46500, 246, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Tangrowth - Slam - Level 43
  (465, 46500, 21, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Tangrowth - Tickle - Level 46
  (465, 46500, 321, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Tangrowth - Wring Out - Level 49
  (465, 46500, 378, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Tangrowth - Grassy Terrain - Level 50
  (465, 46500, 580, 13, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Tangrowth - Power Whip - Level 53
  (465, 46500, 438, 13, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Tangrowth - Block - Level 56
  (465, 46500, 335, 13, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Tangrowth - Toxic - TM06
  (465, 46500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Tangrowth - Hidden Power - TM10
  (465, 46500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Tangrowth - Sunny Day - TM11
  (465, 46500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Tangrowth - Hyper Beam - TM15
  (465, 46500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Tangrowth - Protect - TM17
  (465, 46500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Tangrowth - Frustration - TM21
  (465, 46500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Tangrowth - Solar Beam - TM22
  (465, 46500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Tangrowth - Earthquake - TM26
  (465, 46500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Tangrowth - Return - TM27
  (465, 46500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Tangrowth - Brick Break - TM31
  (465, 46500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Tangrowth - Double Team - TM32
  (465, 46500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Tangrowth - Reflect - TM33
  (465, 46500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Tangrowth - Sludge Bomb - TM36
  (465, 46500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 34),
  -- Tangrowth - Rock Tomb - TM39
  (465, 46500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Tangrowth - Aerial Ace - TM40
  (465, 46500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 36),
  -- Tangrowth - Facade - TM42
  (465, 46500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Tangrowth - Rest - TM44
  (465, 46500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Tangrowth - Attract - TM45
  (465, 46500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Tangrowth - Thief - TM46
  (465, 46500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Tangrowth - Round - TM48
  (465, 46500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Tangrowth - Focus Blast - TM52
  (465, 46500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 42),
  -- Tangrowth - Energy Ball - TM53
  (465, 46500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 43),
  -- Tangrowth - Fling - TM56
  (465, 46500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Tangrowth - Payback - TM66
  (465, 46500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Tangrowth - Giga Impact - TM68
  (465, 46500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Tangrowth - Flash - TM70
  (465, 46500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 47),
  -- Tangrowth - Swords Dance - TM75
  (465, 46500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 48),
  -- Tangrowth - Psych Up - TM77
  (465, 46500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 49),
  -- Tangrowth - Bulldoze - TM78
  (465, 46500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Tangrowth - Rock Slide - TM80
  (465, 46500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Tangrowth - Infestation - TM83
  (465, 46500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 52),
  -- Tangrowth - Poison Jab - TM84
  (465, 46500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 53),
  -- Tangrowth - Grass Knot - TM86
  (465, 46500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 54),
  -- Tangrowth - Swagger - TM87
  (465, 46500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Tangrowth - Sleep Talk - TM88
  (465, 46500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Tangrowth - Substitute - TM90
  (465, 46500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Tangrowth - Rock Smash - TM94
  (465, 46500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 58),
  -- Tangrowth - Nature Power - TM96
  (465, 46500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 59),
  -- Tangrowth - Confide - TM100
  (465, 46500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 60),
  -- Tangrowth - Cut - HM01
  (465, 46500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 61),
  -- Tangrowth - Strength - HM04
  (465, 46500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 62),
  -- Electivire - Fire Punch - Level 1
  (466, 46600, 7, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Low Kick - Level 1
  (466, 46600, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electivire - Ion Deluge - Level 1
  (466, 46600, 569, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Electivire - Electric Terrain - Level 1
  (466, 46600, 604, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Electivire - Thunder Shock - Level 5
  (466, 46600, 84, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Electivire - Low Kick - Level 8
  (466, 46600, 67, 13, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Electivire - Swift - Level 12
  (466, 46600, 129, 13, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Electivire - Shock Wave - Level 15
  (466, 46600, 351, 13, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Electivire - Thunder Wave - Level 19
  (466, 46600, 86, 13, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Electivire - Electro Ball - Level 22
  (466, 46600, 486, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Electivire - Light Screen - Level 26
  (466, 46600, 113, 13, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Electivire - Thunder Punch - Level 29
  (466, 46600, 9, 13, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Electivire - Discharge - Level 36
  (466, 46600, 435, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Electivire - Screech - Level 42
  (466, 46600, 103, 13, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Electivire - Thunderbolt - Level 49
  (466, 46600, 85, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Electivire - Thunder - Level 55
  (466, 46600, 87, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Electivire - Giga Impact - Level 62
  (466, 46600, 416, 13, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Electivire - Electric Terrain - Level 65
  (466, 46600, 604, 13, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Electivire - Toxic - TM06
  (466, 46600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Electivire - Hidden Power - TM10
  (466, 46600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Electivire - Taunt - TM12
  (466, 46600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Electivire - Hyper Beam - TM15
  (466, 46600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Electivire - Light Screen - TM16
  (466, 46600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 26),
  -- Electivire - Protect - TM17
  (466, 46600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Electivire - Rain Dance - TM18
  (466, 46600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Electivire - Frustration - TM21
  (466, 46600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Electivire - Thunderbolt - TM24
  (466, 46600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 30),
  -- Electivire - Thunder - TM25
  (466, 46600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 31),
  -- Electivire - Earthquake - TM26
  (466, 46600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Electivire - Return - TM27
  (466, 46600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Electivire - Dig - TM28
  (466, 46600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Electivire - Psychic - TM29
  (466, 46600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Electivire - Brick Break - TM31
  (466, 46600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 36),
  -- Electivire - Double Team - TM32
  (466, 46600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Electivire - Flamethrower - TM35
  (466, 46600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 38),
  -- Electivire - Rock Tomb - TM39
  (466, 46600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Electivire - Torment - TM41
  (466, 46600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Electivire - Facade - TM42
  (466, 46600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Electivire - Rest - TM44
  (466, 46600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Electivire - Attract - TM45
  (466, 46600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Electivire - Thief - TM46
  (466, 46600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 44),
  -- Electivire - Low Sweep - TM47
  (466, 46600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 45),
  -- Electivire - Round - TM48
  (466, 46600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Electivire - Focus Blast - TM52
  (466, 46600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 47),
  -- Electivire - Fling - TM56
  (466, 46600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 48),
  -- Electivire - Charge Beam - TM57
  (466, 46600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 49),
  -- Electivire - Giga Impact - TM68
  (466, 46600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 50),
  -- Electivire - Flash - TM70
  (466, 46600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 51),
  -- Electivire - Volt Switch - TM72
  (466, 46600, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 52),
  -- Electivire - Thunder Wave - TM73
  (466, 46600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 53),
  -- Electivire - Bulldoze - TM78
  (466, 46600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 54),
  -- Electivire - Rock Slide - TM80
  (466, 46600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 55),
  -- Electivire - Swagger - TM87
  (466, 46600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 56),
  -- Electivire - Sleep Talk - TM88
  (466, 46600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 57),
  -- Electivire - Substitute - TM90
  (466, 46600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Electivire - Wild Charge - TM93
  (466, 46600, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 59),
  -- Electivire - Rock Smash - TM94
  (466, 46600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Electivire - Power-Up Punch - TM98
  (466, 46600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 61),
  -- Electivire - Confide - TM100
  (466, 46600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Electivire - Strength - HM04
  (466, 46600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 63),
  -- Magmortar - Thunder Punch - Level 1
  (467, 46700, 9, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magmortar - Ember - Level 5
  (467, 46700, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Magmortar - Smokescreen - Level 8
  (467, 46700, 108, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Magmortar - Feint Attack - Level 12
  (467, 46700, 185, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Spin - Level 15
  (467, 46700, 83, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Magmortar - Clear Smog - Level 19
  (467, 46700, 499, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Magmortar - Flame Burst - Level 22
  (467, 46700, 481, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Magmortar - Confuse Ray - Level 26
  (467, 46700, 109, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Magmortar - Fire Punch - Level 29
  (467, 46700, 7, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Magmortar - Lava Plume - Level 36
  (467, 46700, 436, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Magmortar - Sunny Day - Level 42
  (467, 46700, 241, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Magmortar - Flamethrower - Level 49
  (467, 46700, 53, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Magmortar - Fire Blast - Level 55
  (467, 46700, 126, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Magmortar - Hyper Beam - Level 62
  (467, 46700, 63, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Magmortar - Toxic - TM06
  (467, 46700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Magmortar - Hidden Power - TM10
  (467, 46700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Magmortar - Sunny Day - TM11
  (467, 46700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Magmortar - Taunt - TM12
  (467, 46700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Magmortar - Hyper Beam - TM15
  (467, 46700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Magmortar - Protect - TM17
  (467, 46700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Magmortar - Frustration - TM21
  (467, 46700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Magmortar - Solar Beam - TM22
  (467, 46700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Magmortar - Thunderbolt - TM24
  (467, 46700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Magmortar - Earthquake - TM26
  (467, 46700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Magmortar - Return - TM27
  (467, 46700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Magmortar - Psychic - TM29
  (467, 46700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Magmortar - Brick Break - TM31
  (467, 46700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Magmortar - Double Team - TM32
  (467, 46700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Magmortar - Flamethrower - TM35
  (467, 46700, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Magmortar - Fire Blast - TM38
  (467, 46700, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Magmortar - Rock Tomb - TM39
  (467, 46700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Magmortar - Torment - TM41
  (467, 46700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Magmortar - Facade - TM42
  (467, 46700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Magmortar - Flame Charge - TM43
  (467, 46700, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 38),
  -- Magmortar - Rest - TM44
  (467, 46700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Magmortar - Attract - TM45
  (467, 46700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Magmortar - Thief - TM46
  (467, 46700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 41),
  -- Magmortar - Low Sweep - TM47
  (467, 46700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 42),
  -- Magmortar - Round - TM48
  (467, 46700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Magmortar - Overheat - TM50
  (467, 46700, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 44),
  -- Magmortar - Focus Blast - TM52
  (467, 46700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 45),
  -- Magmortar - Fling - TM56
  (467, 46700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Magmortar - Incinerate - TM59
  (467, 46700, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 47),
  -- Magmortar - Will-O-Wisp - TM61
  (467, 46700, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 48),
  -- Magmortar - Giga Impact - TM68
  (467, 46700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Magmortar - Bulldoze - TM78
  (467, 46700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Magmortar - Rock Slide - TM80
  (467, 46700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Magmortar - Swagger - TM87
  (467, 46700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Magmortar - Sleep Talk - TM88
  (467, 46700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Magmortar - Substitute - TM90
  (467, 46700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Magmortar - Rock Smash - TM94
  (467, 46700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Magmortar - Power-Up Punch - TM98
  (467, 46700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Magmortar - Confide - TM100
  (467, 46700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Magmortar - Strength - HM04
  (467, 46700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Togekiss - Sky Attack - Level 1
  (468, 46800, 143, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Extreme Speed - Level 1
  (468, 46800, 245, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togekiss - Aura Sphere - Level 1
  (468, 46800, 396, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togekiss - Air Slash - Level 1
  (468, 46800, 403, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togekiss - After You - Level 1
  (468, 46800, 495, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togekiss - Psyshock - TM03
  (468, 46800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 6),
  -- Togekiss - Toxic - TM06
  (468, 46800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 7),
  -- Togekiss - Hidden Power - TM10
  (468, 46800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Togekiss - Sunny Day - TM11
  (468, 46800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 9),
  -- Togekiss - Hyper Beam - TM15
  (468, 46800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 10),
  -- Togekiss - Light Screen - TM16
  (468, 46800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 11),
  -- Togekiss - Protect - TM17
  (468, 46800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 12),
  -- Togekiss - Rain Dance - TM18
  (468, 46800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 13),
  -- Togekiss - Roost - TM19
  (468, 46800, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 14),
  -- Togekiss - Safeguard - TM20
  (468, 46800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 15),
  -- Togekiss - Frustration - TM21
  (468, 46800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 16),
  -- Togekiss - Solar Beam - TM22
  (468, 46800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 17),
  -- Togekiss - Return - TM27
  (468, 46800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 18),
  -- Togekiss - Psychic - TM29
  (468, 46800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 19),
  -- Togekiss - Shadow Ball - TM30
  (468, 46800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 20),
  -- Togekiss - Brick Break - TM31
  (468, 46800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 21),
  -- Togekiss - Double Team - TM32
  (468, 46800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Togekiss - Reflect - TM33
  (468, 46800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 23),
  -- Togekiss - Flamethrower - TM35
  (468, 46800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 24),
  -- Togekiss - Fire Blast - TM38
  (468, 46800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 25),
  -- Togekiss - Aerial Ace - TM40
  (468, 46800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 26),
  -- Togekiss - Facade - TM42
  (468, 46800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Togekiss - Rest - TM44
  (468, 46800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Togekiss - Attract - TM45
  (468, 46800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Togekiss - Round - TM48
  (468, 46800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Togekiss - Echoed Voice - TM49
  (468, 46800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Togekiss - Steel Wing - TM51
  (468, 46800, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 32),
  -- Togekiss - Fling - TM56
  (468, 46800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 33),
  -- Togekiss - Incinerate - TM59
  (468, 46800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 34),
  -- Togekiss - Retaliate - TM67
  (468, 46800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Togekiss - Giga Impact - TM68
  (468, 46800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Togekiss - Flash - TM70
  (468, 46800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Togekiss - Thunder Wave - TM73
  (468, 46800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Togekiss - Psych Up - TM77
  (468, 46800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Togekiss - Dream Eater - TM85
  (468, 46800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 40),
  -- Togekiss - Grass Knot - TM86
  (468, 46800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 41),
  -- Togekiss - Swagger - TM87
  (468, 46800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Togekiss - Sleep Talk - TM88
  (468, 46800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Togekiss - Substitute - TM90
  (468, 46800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Togekiss - Rock Smash - TM94
  (468, 46800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Togekiss - Dazzling Gleam - TM99
  (468, 46800, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 46),
  -- Togekiss - Confide - TM100
  (468, 46800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Togekiss - Fly - HM02
  (468, 46800, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 48),
  -- Yanmega - Tackle - Level 1
  (469, 46900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Quick Attack - Level 1
  (469, 46900, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanmega - Double Team - Level 1
  (469, 46900, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yanmega - Foresight - Level 1
  (469, 46900, 193, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yanmega - Night Slash - Level 1
  (469, 46900, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Yanmega - Air Slash - Level 1
  (469, 46900, 403, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Yanmega - Bug Buzz - Level 1
  (469, 46900, 405, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Yanmega - Bug Bite - Level 1
  (469, 46900, 450, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Yanmega - Quick Attack - Level 6
  (469, 46900, 98, 13, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Yanmega - Double Team - Level 11
  (469, 46900, 104, 13, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Yanmega - Sonic Boom - Level 14
  (469, 46900, 49, 13, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 13, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 13, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Yanmega - Pursuit - Level 30
  (469, 46900, 228, 13, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 13, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 13, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 13, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 13, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 13, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Yanmega - Air Slash - Level 54
  (469, 46900, 403, 13, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Yanmega - Bug Buzz - Level 57
  (469, 46900, 405, 13, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Yanmega - Toxic - TM06
  (469, 46900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Yanmega - Hidden Power - TM10
  (469, 46900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Yanmega - Sunny Day - TM11
  (469, 46900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Yanmega - Hyper Beam - TM15
  (469, 46900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Yanmega - Protect - TM17
  (469, 46900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Yanmega - Roost - TM19
  (469, 46900, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 28),
  -- Yanmega - Frustration - TM21
  (469, 46900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Yanmega - Solar Beam - TM22
  (469, 46900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Yanmega - Return - TM27
  (469, 46900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Yanmega - Psychic - TM29
  (469, 46900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Yanmega - Shadow Ball - TM30
  (469, 46900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Yanmega - Double Team - TM32
  (469, 46900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Yanmega - Aerial Ace - TM40
  (469, 46900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Yanmega - Facade - TM42
  (469, 46900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Yanmega - Rest - TM44
  (469, 46900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Yanmega - Attract - TM45
  (469, 46900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Yanmega - Thief - TM46
  (469, 46900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Yanmega - Round - TM48
  (469, 46900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Yanmega - Steel Wing - TM51
  (469, 46900, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 41),
  -- Yanmega - Giga Impact - TM68
  (469, 46900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Yanmega - Flash - TM70
  (469, 46900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Yanmega - Struggle Bug - TM76
  (469, 46900, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 44),
  -- Yanmega - Psych Up - TM77
  (469, 46900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Yanmega - Dream Eater - TM85
  (469, 46900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 46),
  -- Yanmega - Swagger - TM87
  (469, 46900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Yanmega - Sleep Talk - TM88
  (469, 46900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Yanmega - U-turn - TM89
  (469, 46900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 49),
  -- Yanmega - Substitute - TM90
  (469, 46900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Yanmega - Confide - TM100
  (469, 46900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Sand Attack - Level 5
  (470, 47000, 28, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Leafeon - Razor Leaf - Level 9
  (470, 47000, 75, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Leafeon - Quick Attack - Level 13
  (470, 47000, 98, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Leafeon - Grass Whistle - Level 17
  (470, 47000, 320, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Leafeon - Magical Leaf - Level 20
  (470, 47000, 345, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Leafeon - Giga Drain - Level 25
  (470, 47000, 202, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Leafeon - Swords Dance - Level 29
  (470, 47000, 14, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Leafeon - Synthesis - Level 33
  (470, 47000, 235, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Leafeon - Sunny Day - Level 37
  (470, 47000, 241, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Leafeon - Last Resort - Level 41
  (470, 47000, 387, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Leafeon - Leaf Blade - Level 45
  (470, 47000, 348, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Leafeon - Roar - TM05
  (470, 47000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Leafeon - Toxic - TM06
  (470, 47000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Leafeon - Hidden Power - TM10
  (470, 47000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Leafeon - Sunny Day - TM11
  (470, 47000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Leafeon - Hyper Beam - TM15
  (470, 47000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 19),
  -- Leafeon - Protect - TM17
  (470, 47000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Leafeon - Rain Dance - TM18
  (470, 47000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Leafeon - Frustration - TM21
  (470, 47000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Leafeon - Solar Beam - TM22
  (470, 47000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Leafeon - Return - TM27
  (470, 47000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Leafeon - Dig - TM28
  (470, 47000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Leafeon - Shadow Ball - TM30
  (470, 47000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Leafeon - Double Team - TM32
  (470, 47000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Leafeon - Aerial Ace - TM40
  (470, 47000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Leafeon - Facade - TM42
  (470, 47000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Leafeon - Rest - TM44
  (470, 47000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Leafeon - Attract - TM45
  (470, 47000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Leafeon - Round - TM48
  (470, 47000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Leafeon - Echoed Voice - TM49
  (470, 47000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 33),
  -- Leafeon - Energy Ball - TM53
  (470, 47000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 34),
  -- Leafeon - Retaliate - TM67
  (470, 47000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Leafeon - Giga Impact - TM68
  (470, 47000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Leafeon - Flash - TM70
  (470, 47000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Leafeon - Swords Dance - TM75
  (470, 47000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 38),
  -- Leafeon - X-Scissor - TM81
  (470, 47000, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 39),
  -- Leafeon - Grass Knot - TM86
  (470, 47000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 40),
  -- Leafeon - Swagger - TM87
  (470, 47000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Leafeon - Sleep Talk - TM88
  (470, 47000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Leafeon - Substitute - TM90
  (470, 47000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Leafeon - Rock Smash - TM94
  (470, 47000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Leafeon - Nature Power - TM96
  (470, 47000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 45),
  -- Leafeon - Confide - TM100
  (470, 47000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Leafeon - Strength - HM04
  (470, 47000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Sand Attack - Level 5
  (471, 47100, 28, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Glaceon - Icy Wind - Level 9
  (471, 47100, 196, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Glaceon - Quick Attack - Level 13
  (471, 47100, 98, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Glaceon - Bite - Level 17
  (471, 47100, 44, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Glaceon - Ice Fang - Level 20
  (471, 47100, 423, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Glaceon - Ice Shard - Level 25
  (471, 47100, 420, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Glaceon - Barrier - Level 29
  (471, 47100, 112, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Glaceon - Mirror Coat - Level 33
  (471, 47100, 243, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Glaceon - Hail - Level 37
  (471, 47100, 258, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Glaceon - Last Resort - Level 41
  (471, 47100, 387, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Glaceon - Blizzard - Level 45
  (471, 47100, 59, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Glaceon - Roar - TM05
  (471, 47100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Glaceon - Toxic - TM06
  (471, 47100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Glaceon - Hail - TM07
  (471, 47100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Glaceon - Hidden Power - TM10
  (471, 47100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Glaceon - Sunny Day - TM11
  (471, 47100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Glaceon - Ice Beam - TM13
  (471, 47100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Glaceon - Blizzard - TM14
  (471, 47100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Glaceon - Hyper Beam - TM15
  (471, 47100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Glaceon - Protect - TM17
  (471, 47100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Glaceon - Rain Dance - TM18
  (471, 47100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Glaceon - Frustration - TM21
  (471, 47100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Glaceon - Return - TM27
  (471, 47100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Glaceon - Dig - TM28
  (471, 47100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Glaceon - Shadow Ball - TM30
  (471, 47100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Glaceon - Double Team - TM32
  (471, 47100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Glaceon - Facade - TM42
  (471, 47100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Glaceon - Rest - TM44
  (471, 47100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Glaceon - Attract - TM45
  (471, 47100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Glaceon - Round - TM48
  (471, 47100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Glaceon - Echoed Voice - TM49
  (471, 47100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Glaceon - Retaliate - TM67
  (471, 47100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Glaceon - Giga Impact - TM68
  (471, 47100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Glaceon - Frost Breath - TM79
  (471, 47100, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 37),
  -- Glaceon - Swagger - TM87
  (471, 47100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Glaceon - Sleep Talk - TM88
  (471, 47100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Glaceon - Substitute - TM90
  (471, 47100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Glaceon - Rock Smash - TM94
  (471, 47100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Glaceon - Confide - TM100
  (471, 47100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Glaceon - Strength - HM04
  (471, 47100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 43),
  -- Gliscor - Guillotine - Level 1
  (472, 47200, 12, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Sand Attack - Level 1
  (472, 47200, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gliscor - Harden - Level 1
  (472, 47200, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gliscor - Knock Off - Level 1
  (472, 47200, 282, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gliscor - Poison Jab - Level 1
  (472, 47200, 398, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gliscor - Thunder Fang - Level 1
  (472, 47200, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gliscor - Ice Fang - Level 1
  (472, 47200, 423, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gliscor - Fire Fang - Level 1
  (472, 47200, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gliscor - Sand Attack - Level 4
  (472, 47200, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Gliscor - Harden - Level 7
  (472, 47200, 106, 13, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Gliscor - Knock Off - Level 10
  (472, 47200, 282, 13, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Gliscor - Quick Attack - Level 13
  (472, 47200, 98, 13, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Gliscor - Fury Cutter - Level 16
  (472, 47200, 210, 13, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Gliscor - Feint Attack - Level 19
  (472, 47200, 185, 13, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Gliscor - Acrobatics - Level 22
  (472, 47200, 512, 13, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Gliscor - Night Slash - Level 27
  (472, 47200, 400, 13, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Gliscor - U-turn - Level 30
  (472, 47200, 369, 13, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Gliscor - Screech - Level 35
  (472, 47200, 103, 13, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Gliscor - X-Scissor - Level 40
  (472, 47200, 404, 13, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Gliscor - Sky Uppercut - Level 45
  (472, 47200, 327, 13, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Gliscor - Swords Dance - Level 50
  (472, 47200, 14, 13, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Gliscor - Guillotine - Level 55
  (472, 47200, 12, 13, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Gliscor - Hone Claws - TM01
  (472, 47200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 23),
  -- Gliscor - Toxic - TM06
  (472, 47200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Gliscor - Venoshock - TM09
  (472, 47200, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 25),
  -- Gliscor - Hidden Power - TM10
  (472, 47200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 26),
  -- Gliscor - Sunny Day - TM11
  (472, 47200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 27),
  -- Gliscor - Taunt - TM12
  (472, 47200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 28),
  -- Gliscor - Hyper Beam - TM15
  (472, 47200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Gliscor - Protect - TM17
  (472, 47200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Gliscor - Rain Dance - TM18
  (472, 47200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Gliscor - Roost - TM19
  (472, 47200, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 32),
  -- Gliscor - Frustration - TM21
  (472, 47200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Gliscor - Earthquake - TM26
  (472, 47200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 34),
  -- Gliscor - Return - TM27
  (472, 47200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 35),
  -- Gliscor - Dig - TM28
  (472, 47200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 36),
  -- Gliscor - Brick Break - TM31
  (472, 47200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Gliscor - Double Team - TM32
  (472, 47200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Gliscor - Sludge Bomb - TM36
  (472, 47200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 39),
  -- Gliscor - Sandstorm - TM37
  (472, 47200, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 40),
  -- Gliscor - Rock Tomb - TM39
  (472, 47200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 41),
  -- Gliscor - Aerial Ace - TM40
  (472, 47200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 42),
  -- Gliscor - Torment - TM41
  (472, 47200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 43),
  -- Gliscor - Facade - TM42
  (472, 47200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 44),
  -- Gliscor - Rest - TM44
  (472, 47200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 45),
  -- Gliscor - Attract - TM45
  (472, 47200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 46),
  -- Gliscor - Thief - TM46
  (472, 47200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 47),
  -- Gliscor - Round - TM48
  (472, 47200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 48),
  -- Gliscor - Steel Wing - TM51
  (472, 47200, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 49),
  -- Gliscor - False Swipe - TM54
  (472, 47200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 50),
  -- Gliscor - Fling - TM56
  (472, 47200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 51),
  -- Gliscor - Acrobatics - TM62
  (472, 47200, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 52),
  -- Gliscor - Payback - TM66
  (472, 47200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 53),
  -- Gliscor - Giga Impact - TM68
  (472, 47200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 54),
  -- Gliscor - Rock Polish - TM69
  (472, 47200, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 55),
  -- Gliscor - Stone Edge - TM71
  (472, 47200, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 56),
  -- Gliscor - Swords Dance - TM75
  (472, 47200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 57),
  -- Gliscor - Struggle Bug - TM76
  (472, 47200, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 58),
  -- Gliscor - Bulldoze - TM78
  (472, 47200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 59),
  -- Gliscor - Rock Slide - TM80
  (472, 47200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 60),
  -- Gliscor - X-Scissor - TM81
  (472, 47200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 61),
  -- Gliscor - Poison Jab - TM84
  (472, 47200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 62),
  -- Gliscor - Swagger - TM87
  (472, 47200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 63),
  -- Gliscor - Sleep Talk - TM88
  (472, 47200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 64),
  -- Gliscor - U-turn - TM89
  (472, 47200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 65),
  -- Gliscor - Substitute - TM90
  (472, 47200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 66),
  -- Gliscor - Rock Smash - TM94
  (472, 47200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 67),
  -- Gliscor - Dark Pulse - TM97
  (472, 47200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 68),
  -- Gliscor - Confide - TM100
  (472, 47200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 69),
  -- Gliscor - Cut - HM01
  (472, 47200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 70),
  -- Gliscor - Strength - HM04
  (472, 47200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 71),
  -- Mamoswine - Peck - Level 1
  (473, 47300, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Scary Face - Level 1
  (473, 47300, 184, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Mud Sport - Level 1
  (473, 47300, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Odor Sleuth - Level 1
  (473, 47300, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mamoswine - Mud Sport - Level 5
  (473, 47300, 300, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Mamoswine - Powder Snow - Level 8
  (473, 47300, 181, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Mamoswine - Mud-Slap - Level 11
  (473, 47300, 189, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Mamoswine - Endure - Level 14
  (473, 47300, 203, 13, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Mamoswine - Mud Bomb - Level 18
  (473, 47300, 426, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Mamoswine - Hail - Level 21
  (473, 47300, 258, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Mamoswine - Ice Fang - Level 24
  (473, 47300, 423, 13, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Mamoswine - Take Down - Level 28
  (473, 47300, 36, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Mamoswine - Double Hit - Level 33
  (473, 47300, 458, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Mamoswine - Mist - Level 37
  (473, 47300, 54, 13, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Mamoswine - Thrash - Level 41
  (473, 47300, 37, 13, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Mamoswine - Earthquake - Level 46
  (473, 47300, 89, 13, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Mamoswine - Blizzard - Level 52
  (473, 47300, 59, 13, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Mamoswine - Scary Face - Level 58
  (473, 47300, 184, 13, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Mamoswine - Roar - TM05
  (473, 47300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Mamoswine - Toxic - TM06
  (473, 47300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Mamoswine - Hail - TM07
  (473, 47300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 23),
  -- Mamoswine - Hidden Power - TM10
  (473, 47300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Mamoswine - Ice Beam - TM13
  (473, 47300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Mamoswine - Blizzard - TM14
  (473, 47300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Mamoswine - Hyper Beam - TM15
  (473, 47300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Mamoswine - Light Screen - TM16
  (473, 47300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 28),
  -- Mamoswine - Protect - TM17
  (473, 47300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Mamoswine - Rain Dance - TM18
  (473, 47300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Mamoswine - Frustration - TM21
  (473, 47300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Mamoswine - Earthquake - TM26
  (473, 47300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Mamoswine - Return - TM27
  (473, 47300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Mamoswine - Dig - TM28
  (473, 47300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Mamoswine - Double Team - TM32
  (473, 47300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Mamoswine - Reflect - TM33
  (473, 47300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Mamoswine - Sandstorm - TM37
  (473, 47300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 37),
  -- Mamoswine - Rock Tomb - TM39
  (473, 47300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 38),
  -- Mamoswine - Facade - TM42
  (473, 47300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Mamoswine - Rest - TM44
  (473, 47300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Mamoswine - Attract - TM45
  (473, 47300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Mamoswine - Round - TM48
  (473, 47300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Mamoswine - Giga Impact - TM68
  (473, 47300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Mamoswine - Stone Edge - TM71
  (473, 47300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 44),
  -- Mamoswine - Bulldoze - TM78
  (473, 47300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Mamoswine - Rock Slide - TM80
  (473, 47300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Mamoswine - Swagger - TM87
  (473, 47300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Mamoswine - Sleep Talk - TM88
  (473, 47300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Mamoswine - Substitute - TM90
  (473, 47300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Mamoswine - Rock Smash - TM94
  (473, 47300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Mamoswine - Confide - TM100
  (473, 47300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Mamoswine - Strength - HM04
  (473, 47300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Conversion 2 - Level 1
  (474, 47400, 176, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Zap Cannon - Level 1
  (474, 47400, 192, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Magic Coat - Level 1
  (474, 47400, 277, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Porygon-Z - Psybeam - Level 7
  (474, 47400, 60, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Porygon-Z - Agility - Level 12
  (474, 47400, 97, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Porygon-Z - Recover - Level 18
  (474, 47400, 105, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Porygon-Z - Magnet Rise - Level 23
  (474, 47400, 393, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Porygon-Z - Signal Beam - Level 29
  (474, 47400, 324, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Porygon-Z - Embargo - Level 34
  (474, 47400, 373, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Porygon-Z - Lock-On - Level 45
  (474, 47400, 199, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Porygon-Z - Tri Attack - Level 50
  (474, 47400, 161, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Porygon-Z - Magic Coat - Level 56
  (474, 47400, 277, 13, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Porygon-Z - Zap Cannon - Level 62
  (474, 47400, 192, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Porygon-Z - Hyper Beam - Level 67
  (474, 47400, 63, 13, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Porygon-Z - Psyshock - TM03
  (474, 47400, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 20),
  -- Porygon-Z - Toxic - TM06
  (474, 47400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Porygon-Z - Hidden Power - TM10
  (474, 47400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Porygon-Z - Sunny Day - TM11
  (474, 47400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Porygon-Z - Ice Beam - TM13
  (474, 47400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Porygon-Z - Blizzard - TM14
  (474, 47400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Porygon-Z - Hyper Beam - TM15
  (474, 47400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Porygon-Z - Protect - TM17
  (474, 47400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Porygon-Z - Rain Dance - TM18
  (474, 47400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Porygon-Z - Frustration - TM21
  (474, 47400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Porygon-Z - Solar Beam - TM22
  (474, 47400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Porygon-Z - Thunderbolt - TM24
  (474, 47400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Porygon-Z - Thunder - TM25
  (474, 47400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Porygon-Z - Return - TM27
  (474, 47400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Porygon-Z - Psychic - TM29
  (474, 47400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Porygon-Z - Shadow Ball - TM30
  (474, 47400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Porygon-Z - Double Team - TM32
  (474, 47400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Porygon-Z - Aerial Ace - TM40
  (474, 47400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Porygon-Z - Facade - TM42
  (474, 47400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Porygon-Z - Rest - TM44
  (474, 47400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Porygon-Z - Thief - TM46
  (474, 47400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Porygon-Z - Round - TM48
  (474, 47400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Porygon-Z - Charge Beam - TM57
  (474, 47400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 42),
  -- Porygon-Z - Embargo - TM63
  (474, 47400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 43),
  -- Porygon-Z - Giga Impact - TM68
  (474, 47400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Porygon-Z - Flash - TM70
  (474, 47400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Porygon-Z - Thunder Wave - TM73
  (474, 47400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 46),
  -- Porygon-Z - Psych Up - TM77
  (474, 47400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Porygon-Z - Dream Eater - TM85
  (474, 47400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Porygon-Z - Swagger - TM87
  (474, 47400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Porygon-Z - Sleep Talk - TM88
  (474, 47400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Porygon-Z - Substitute - TM90
  (474, 47400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Porygon-Z - Trick Room - TM92
  (474, 47400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 52),
  -- Porygon-Z - Dark Pulse - TM97
  (474, 47400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 53),
  -- Porygon-Z - Confide - TM100
  (474, 47400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Gallade - Leer - Level 1
  (475, 47500, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Teleport - Level 1
  (475, 47500, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Leaf Blade - Level 1
  (475, 47500, 348, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Close Combat - Level 1
  (475, 47500, 370, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gallade - Stored Power - Level 1
  (475, 47500, 500, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gallade - Confusion - Level 6
  (475, 47500, 93, 13, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Gallade - Double Team - Level 10
  (475, 47500, 104, 13, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Gallade - Teleport - Level 12
  (475, 47500, 100, 13, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Gallade - Fury Cutter - Level 17
  (475, 47500, 210, 13, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Gallade - Slash - Level 22
  (475, 47500, 163, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Gallade - Heal Pulse - Level 25
  (475, 47500, 505, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Gallade - Swords Dance - Level 31
  (475, 47500, 14, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Gallade - Psycho Cut - Level 36
  (475, 47500, 427, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Gallade - Helping Hand - Level 39
  (475, 47500, 270, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Gallade - Feint - Level 45
  (475, 47500, 364, 13, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Gallade - False Swipe - Level 50
  (475, 47500, 206, 13, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Gallade - Protect - Level 53
  (475, 47500, 182, 13, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Gallade - Close Combat - Level 59
  (475, 47500, 370, 13, NULL, 1, 59, NULL, NULL, NULL, 21),
  -- Gallade - Stored Power - Level 64
  (475, 47500, 500, 13, NULL, 1, 64, NULL, NULL, NULL, 22),
  -- Gallade - Psyshock - TM03
  (475, 47500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 23),
  -- Gallade - Calm Mind - TM04
  (475, 47500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 24),
  -- Gallade - Toxic - TM06
  (475, 47500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 25),
  -- Gallade - Bulk Up - TM08
  (475, 47500, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 26),
  -- Gallade - Hidden Power - TM10
  (475, 47500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 27),
  -- Gallade - Sunny Day - TM11
  (475, 47500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 28),
  -- Gallade - Taunt - TM12
  (475, 47500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 29),
  -- Gallade - Hyper Beam - TM15
  (475, 47500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 30),
  -- Gallade - Light Screen - TM16
  (475, 47500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 31),
  -- Gallade - Protect - TM17
  (475, 47500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 32),
  -- Gallade - Rain Dance - TM18
  (475, 47500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 33),
  -- Gallade - Safeguard - TM20
  (475, 47500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 34),
  -- Gallade - Frustration - TM21
  (475, 47500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 35),
  -- Gallade - Thunderbolt - TM24
  (475, 47500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 36),
  -- Gallade - Earthquake - TM26
  (475, 47500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 37),
  -- Gallade - Return - TM27
  (475, 47500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 38),
  -- Gallade - Psychic - TM29
  (475, 47500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 39),
  -- Gallade - Shadow Ball - TM30
  (475, 47500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 40),
  -- Gallade - Brick Break - TM31
  (475, 47500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 41),
  -- Gallade - Double Team - TM32
  (475, 47500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 42),
  -- Gallade - Reflect - TM33
  (475, 47500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 43),
  -- Gallade - Rock Tomb - TM39
  (475, 47500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 44),
  -- Gallade - Aerial Ace - TM40
  (475, 47500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 45),
  -- Gallade - Torment - TM41
  (475, 47500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 46),
  -- Gallade - Facade - TM42
  (475, 47500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 47),
  -- Gallade - Rest - TM44
  (475, 47500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 48),
  -- Gallade - Attract - TM45
  (475, 47500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 49),
  -- Gallade - Thief - TM46
  (475, 47500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 50),
  -- Gallade - Low Sweep - TM47
  (475, 47500, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 51),
  -- Gallade - Round - TM48
  (475, 47500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 52),
  -- Gallade - Echoed Voice - TM49
  (475, 47500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 53),
  -- Gallade - Focus Blast - TM52
  (475, 47500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 54),
  -- Gallade - False Swipe - TM54
  (475, 47500, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 55),
  -- Gallade - Fling - TM56
  (475, 47500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 56),
  -- Gallade - Charge Beam - TM57
  (475, 47500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 57),
  -- Gallade - Will-O-Wisp - TM61
  (475, 47500, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 58),
  -- Gallade - Retaliate - TM67
  (475, 47500, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 59),
  -- Gallade - Giga Impact - TM68
  (475, 47500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 60),
  -- Gallade - Flash - TM70
  (475, 47500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 61),
  -- Gallade - Stone Edge - TM71
  (475, 47500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 62),
  -- Gallade - Thunder Wave - TM73
  (475, 47500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 63),
  -- Gallade - Swords Dance - TM75
  (475, 47500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 64),
  -- Gallade - Psych Up - TM77
  (475, 47500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 65),
  -- Gallade - Bulldoze - TM78
  (475, 47500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 66),
  -- Gallade - Rock Slide - TM80
  (475, 47500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 67),
  -- Gallade - X-Scissor - TM81
  (475, 47500, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 68),
  -- Gallade - Poison Jab - TM84
  (475, 47500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 69),
  -- Gallade - Dream Eater - TM85
  (475, 47500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 70),
  -- Gallade - Grass Knot - TM86
  (475, 47500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 71),
  -- Gallade - Swagger - TM87
  (475, 47500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 72),
  -- Gallade - Sleep Talk - TM88
  (475, 47500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 73),
  -- Gallade - Substitute - TM90
  (475, 47500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 74),
  -- Gallade - Trick Room - TM92
  (475, 47500, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 75),
  -- Gallade - Rock Smash - TM94
  (475, 47500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 76),
  -- Gallade - Power-Up Punch - TM98
  (475, 47500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 77),
  -- Gallade - Dazzling Gleam - TM99
  (475, 47500, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 78),
  -- Gallade - Confide - TM100
  (475, 47500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 79),
  -- Gallade - Cut - HM01
  (475, 47500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 80),
  -- Gallade - Strength - HM04
  (475, 47500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 81),
  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Iron Defense - Level 1
  (476, 47600, 334, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Probopass - Block - Level 1
  (476, 47600, 335, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Probopass - Gravity - Level 1
  (476, 47600, 356, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Probopass - Magnet Rise - Level 1
  (476, 47600, 393, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Probopass - Magnet Bomb - Level 1
  (476, 47600, 443, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Probopass - Iron Defense - Level 4
  (476, 47600, 334, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Probopass - Block - Level 8
  (476, 47600, 335, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Probopass - Magnet Bomb - Level 11
  (476, 47600, 443, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Probopass - Thunder Wave - Level 15
  (476, 47600, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Probopass - Rock Blast - Level 18
  (476, 47600, 350, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Probopass - Rest - Level 22
  (476, 47600, 156, 13, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Probopass - Spark - Level 25
  (476, 47600, 209, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Probopass - Rock Slide - Level 29
  (476, 47600, 157, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Probopass - Power Gem - Level 32
  (476, 47600, 408, 13, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Probopass - Sandstorm - Level 36
  (476, 47600, 201, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Probopass - Discharge - Level 39
  (476, 47600, 435, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Probopass - Earth Power - Level 43
  (476, 47600, 414, 13, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Probopass - Stone Edge - Level 46
  (476, 47600, 444, 13, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Probopass - Zap Cannon - Level 50
  (476, 47600, 192, 13, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Probopass - Lock-On - Level 50
  (476, 47600, 199, 13, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Probopass - Toxic - TM06
  (476, 47600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Probopass - Hidden Power - TM10
  (476, 47600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Probopass - Sunny Day - TM11
  (476, 47600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Probopass - Taunt - TM12
  (476, 47600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 25),
  -- Probopass - Hyper Beam - TM15
  (476, 47600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Probopass - Protect - TM17
  (476, 47600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Probopass - Frustration - TM21
  (476, 47600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Probopass - Smack Down - TM23
  (476, 47600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 29),
  -- Probopass - Thunderbolt - TM24
  (476, 47600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 30),
  -- Probopass - Thunder - TM25
  (476, 47600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 31),
  -- Probopass - Earthquake - TM26
  (476, 47600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Probopass - Return - TM27
  (476, 47600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Probopass - Double Team - TM32
  (476, 47600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Probopass - Sandstorm - TM37
  (476, 47600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Probopass - Rock Tomb - TM39
  (476, 47600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Probopass - Torment - TM41
  (476, 47600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 37),
  -- Probopass - Facade - TM42
  (476, 47600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Probopass - Rest - TM44
  (476, 47600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Probopass - Attract - TM45
  (476, 47600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Probopass - Round - TM48
  (476, 47600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Probopass - Explosion - TM64
  (476, 47600, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 42),
  -- Probopass - Giga Impact - TM68
  (476, 47600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Probopass - Rock Polish - TM69
  (476, 47600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 44),
  -- Probopass - Stone Edge - TM71
  (476, 47600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 45),
  -- Probopass - Volt Switch - TM72
  (476, 47600, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 46),
  -- Probopass - Thunder Wave - TM73
  (476, 47600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 47),
  -- Probopass - Bulldoze - TM78
  (476, 47600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Probopass - Rock Slide - TM80
  (476, 47600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Probopass - Swagger - TM87
  (476, 47600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Probopass - Sleep Talk - TM88
  (476, 47600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Probopass - Substitute - TM90
  (476, 47600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Probopass - Flash Cannon - TM91
  (476, 47600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 53),
  -- Probopass - Rock Smash - TM94
  (476, 47600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Probopass - Dazzling Gleam - TM99
  (476, 47600, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 55),
  -- Probopass - Confide - TM100
  (476, 47600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Probopass - Strength - HM04
  (476, 47600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Night Shade - Level 1
  (477, 47700, 101, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Disable - Level 6
  (477, 47700, 50, 13, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Dusknoir - Foresight - Level 9
  (477, 47700, 193, 13, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Dusknoir - Astonish - Level 14
  (477, 47700, 310, 13, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dusknoir - Confuse Ray - Level 17
  (477, 47700, 109, 13, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dusknoir - Shadow Sneak - Level 22
  (477, 47700, 425, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dusknoir - Pursuit - Level 25
  (477, 47700, 228, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dusknoir - Curse - Level 30
  (477, 47700, 174, 13, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dusknoir - Will-O-Wisp - Level 33
  (477, 47700, 261, 13, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Dusknoir - Shadow Punch - Level 37
  (477, 47700, 325, 13, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Dusknoir - Hex - Level 42
  (477, 47700, 506, 13, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusknoir - Mean Look - Level 49
  (477, 47700, 212, 13, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Dusknoir - Payback - Level 58
  (477, 47700, 371, 13, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Dusknoir - Future Sight - Level 61
  (477, 47700, 248, 13, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Dusknoir - Calm Mind - TM04
  (477, 47700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Dusknoir - Toxic - TM06
  (477, 47700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Dusknoir - Hidden Power - TM10
  (477, 47700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Dusknoir - Sunny Day - TM11
  (477, 47700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Dusknoir - Taunt - TM12
  (477, 47700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Dusknoir - Ice Beam - TM13
  (477, 47700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 27),
  -- Dusknoir - Blizzard - TM14
  (477, 47700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 28),
  -- Dusknoir - Hyper Beam - TM15
  (477, 47700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Dusknoir - Protect - TM17
  (477, 47700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Dusknoir - Rain Dance - TM18
  (477, 47700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Dusknoir - Frustration - TM21
  (477, 47700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Dusknoir - Earthquake - TM26
  (477, 47700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 33),
  -- Dusknoir - Return - TM27
  (477, 47700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Dusknoir - Psychic - TM29
  (477, 47700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Dusknoir - Shadow Ball - TM30
  (477, 47700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Dusknoir - Brick Break - TM31
  (477, 47700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Dusknoir - Double Team - TM32
  (477, 47700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Dusknoir - Rock Tomb - TM39
  (477, 47700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Dusknoir - Torment - TM41
  (477, 47700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Dusknoir - Facade - TM42
  (477, 47700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Dusknoir - Rest - TM44
  (477, 47700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Dusknoir - Attract - TM45
  (477, 47700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Dusknoir - Thief - TM46
  (477, 47700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 44),
  -- Dusknoir - Round - TM48
  (477, 47700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Dusknoir - Focus Blast - TM52
  (477, 47700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 46),
  -- Dusknoir - Fling - TM56
  (477, 47700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 47),
  -- Dusknoir - Charge Beam - TM57
  (477, 47700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 48),
  -- Dusknoir - Will-O-Wisp - TM61
  (477, 47700, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 49),
  -- Dusknoir - Embargo - TM63
  (477, 47700, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 50),
  -- Dusknoir - Payback - TM66
  (477, 47700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 51),
  -- Dusknoir - Giga Impact - TM68
  (477, 47700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 52),
  -- Dusknoir - Flash - TM70
  (477, 47700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 53),
  -- Dusknoir - Psych Up - TM77
  (477, 47700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Dusknoir - Bulldoze - TM78
  (477, 47700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 55),
  -- Dusknoir - Rock Slide - TM80
  (477, 47700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 56),
  -- Dusknoir - Infestation - TM83
  (477, 47700, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 57),
  -- Dusknoir - Dream Eater - TM85
  (477, 47700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 58),
  -- Dusknoir - Swagger - TM87
  (477, 47700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Dusknoir - Sleep Talk - TM88
  (477, 47700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Dusknoir - Substitute - TM90
  (477, 47700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Dusknoir - Trick Room - TM92
  (477, 47700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 62),
  -- Dusknoir - Rock Smash - TM94
  (477, 47700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 63),
  -- Dusknoir - Dark Pulse - TM97
  (477, 47700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 64),
  -- Dusknoir - Power-Up Punch - TM98
  (477, 47700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 65),
  -- Dusknoir - Confide - TM100
  (477, 47700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 66),
  -- Dusknoir - Strength - HM04
  (477, 47700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 67),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Destiny Bond - Level 1
  (478, 47800, 194, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Astonish - Level 1
  (478, 47800, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Froslass - Double Team - Level 4
  (478, 47800, 104, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Froslass - Astonish - Level 10
  (478, 47800, 310, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Froslass - Icy Wind - Level 13
  (478, 47800, 196, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Froslass - Confuse Ray - Level 19
  (478, 47800, 109, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Froslass - Ominous Wind - Level 22
  (478, 47800, 466, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Froslass - Wake-Up Slap - Level 28
  (478, 47800, 358, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Froslass - Captivate - Level 31
  (478, 47800, 445, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Froslass - Ice Shard - Level 37
  (478, 47800, 420, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Froslass - Hail - Level 40
  (478, 47800, 258, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Froslass - Blizzard - Level 51
  (478, 47800, 59, 13, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Froslass - Destiny Bond - Level 59
  (478, 47800, 194, 13, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Froslass - Toxic - TM06
  (478, 47800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Froslass - Hail - TM07
  (478, 47800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Froslass - Hidden Power - TM10
  (478, 47800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Froslass - Taunt - TM12
  (478, 47800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Froslass - Ice Beam - TM13
  (478, 47800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Froslass - Blizzard - TM14
  (478, 47800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Froslass - Hyper Beam - TM15
  (478, 47800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Froslass - Light Screen - TM16
  (478, 47800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Froslass - Protect - TM17
  (478, 47800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Froslass - Rain Dance - TM18
  (478, 47800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Froslass - Safeguard - TM20
  (478, 47800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Froslass - Frustration - TM21
  (478, 47800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Froslass - Thunderbolt - TM24
  (478, 47800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Froslass - Thunder - TM25
  (478, 47800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Froslass - Return - TM27
  (478, 47800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Froslass - Psychic - TM29
  (478, 47800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Froslass - Shadow Ball - TM30
  (478, 47800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Froslass - Double Team - TM32
  (478, 47800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Froslass - Torment - TM41
  (478, 47800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Froslass - Facade - TM42
  (478, 47800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Froslass - Rest - TM44
  (478, 47800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Froslass - Attract - TM45
  (478, 47800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Froslass - Round - TM48
  (478, 47800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Froslass - Fling - TM56
  (478, 47800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Froslass - Embargo - TM63
  (478, 47800, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 41),
  -- Froslass - Payback - TM66
  (478, 47800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Froslass - Giga Impact - TM68
  (478, 47800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Froslass - Flash - TM70
  (478, 47800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Froslass - Thunder Wave - TM73
  (478, 47800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Froslass - Psych Up - TM77
  (478, 47800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Froslass - Frost Breath - TM79
  (478, 47800, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 47),
  -- Froslass - Dream Eater - TM85
  (478, 47800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Froslass - Swagger - TM87
  (478, 47800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Froslass - Sleep Talk - TM88
  (478, 47800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Froslass - Substitute - TM90
  (478, 47800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Froslass - Confide - TM100
  (478, 47800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Thunder Wave - Level 1
  (479, 47900, 86, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Confuse Ray - Level 1
  (479, 47900, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom - Charge - Level 1
  (479, 47900, 268, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom - Trick - Level 1
  (479, 47900, 271, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom - Discharge - Level 1
  (479, 47900, 435, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom - Uproar - Level 8
  (479, 47900, 253, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom - Double Team - Level 15
  (479, 47900, 104, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom - Shock Wave - Level 22
  (479, 47900, 351, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom - Ominous Wind - Level 29
  (479, 47900, 466, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom - Substitute - Level 36
  (479, 47900, 164, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom - Electro Ball - Level 43
  (479, 47900, 486, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom - Hex - Level 50
  (479, 47900, 506, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom - Charge - Level 57
  (479, 47900, 268, 13, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom - Discharge - Level 64
  (479, 47900, 435, 13, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom - Toxic - TM06
  (479, 47900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Rotom - Hidden Power - TM10
  (479, 47900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Rotom - Sunny Day - TM11
  (479, 47900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Rotom - Light Screen - TM16
  (479, 47900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 20),
  -- Rotom - Protect - TM17
  (479, 47900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Rotom - Rain Dance - TM18
  (479, 47900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Rotom - Frustration - TM21
  (479, 47900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Rotom - Thunderbolt - TM24
  (479, 47900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Rotom - Thunder - TM25
  (479, 47900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Rotom - Return - TM27
  (479, 47900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Rotom - Shadow Ball - TM30
  (479, 47900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Rotom - Double Team - TM32
  (479, 47900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Rotom - Reflect - TM33
  (479, 47900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 29),
  -- Rotom - Facade - TM42
  (479, 47900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Rotom - Rest - TM44
  (479, 47900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Rotom - Thief - TM46
  (479, 47900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Rotom - Round - TM48
  (479, 47900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Rotom - Charge Beam - TM57
  (479, 47900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 34),
  -- Rotom - Will-O-Wisp - TM61
  (479, 47900, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 35),
  -- Rotom - Flash - TM70
  (479, 47900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Rotom - Volt Switch - TM72
  (479, 47900, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 37),
  -- Rotom - Thunder Wave - TM73
  (479, 47900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Rotom - Psych Up - TM77
  (479, 47900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Rotom - Dream Eater - TM85
  (479, 47900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 40),
  -- Rotom - Swagger - TM87
  (479, 47900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Rotom - Sleep Talk - TM88
  (479, 47900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Rotom - Substitute - TM90
  (479, 47900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Rotom - Dark Pulse - TM97
  (479, 47900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 44),
  -- Rotom - Confide - TM100
  (479, 47900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Flail - Level 1
  (480, 48000, 175, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Uxie - Memento - Level 1
  (480, 48000, 262, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Uxie - Natural Gift - Level 1
  (480, 48000, 363, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Uxie - Imprison - Level 6
  (480, 48000, 286, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Uxie - Endure - Level 16
  (480, 48000, 203, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Uxie - Swift - Level 21
  (480, 48000, 129, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Uxie - Yawn - Level 31
  (480, 48000, 281, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Uxie - Future Sight - Level 36
  (480, 48000, 248, 13, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Uxie - Amnesia - Level 46
  (480, 48000, 133, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Uxie - Extrasensory - Level 50
  (480, 48000, 326, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Uxie - Flail - Level 61
  (480, 48000, 175, 13, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Uxie - Natural Gift - Level 66
  (480, 48000, 363, 13, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Uxie - Memento - Level 76
  (480, 48000, 262, 13, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Uxie - Psyshock - TM03
  (480, 48000, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 16),
  -- Uxie - Calm Mind - TM04
  (480, 48000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Uxie - Toxic - TM06
  (480, 48000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Uxie - Hidden Power - TM10
  (480, 48000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Uxie - Sunny Day - TM11
  (480, 48000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Uxie - Hyper Beam - TM15
  (480, 48000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Uxie - Light Screen - TM16
  (480, 48000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Uxie - Protect - TM17
  (480, 48000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Uxie - Rain Dance - TM18
  (480, 48000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Uxie - Safeguard - TM20
  (480, 48000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Uxie - Frustration - TM21
  (480, 48000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Uxie - Solar Beam - TM22
  (480, 48000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Uxie - Thunderbolt - TM24
  (480, 48000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Uxie - Thunder - TM25
  (480, 48000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Uxie - Return - TM27
  (480, 48000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Uxie - Psychic - TM29
  (480, 48000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Uxie - Shadow Ball - TM30
  (480, 48000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Uxie - Double Team - TM32
  (480, 48000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Uxie - Reflect - TM33
  (480, 48000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 34),
  -- Uxie - Sandstorm - TM37
  (480, 48000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Uxie - Facade - TM42
  (480, 48000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Uxie - Rest - TM44
  (480, 48000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Uxie - Round - TM48
  (480, 48000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Uxie - Energy Ball - TM53
  (480, 48000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Uxie - Fling - TM56
  (480, 48000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Uxie - Charge Beam - TM57
  (480, 48000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Uxie - Acrobatics - TM62
  (480, 48000, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 42),
  -- Uxie - Giga Impact - TM68
  (480, 48000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Uxie - Flash - TM70
  (480, 48000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Uxie - Thunder Wave - TM73
  (480, 48000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Uxie - Psych Up - TM77
  (480, 48000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Uxie - Dream Eater - TM85
  (480, 48000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Uxie - Grass Knot - TM86
  (480, 48000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Uxie - Swagger - TM87
  (480, 48000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Uxie - Sleep Talk - TM88
  (480, 48000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Uxie - U-turn - TM89
  (480, 48000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 51),
  -- Uxie - Substitute - TM90
  (480, 48000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Uxie - Trick Room - TM92
  (480, 48000, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 53),
  -- Uxie - Power-Up Punch - TM98
  (480, 48000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Uxie - Dazzling Gleam - TM99
  (480, 48000, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 55),
  -- Uxie - Confide - TM100
  (480, 48000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Healing Wish - Level 1
  (481, 48100, 361, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mesprit - Natural Gift - Level 1
  (481, 48100, 363, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mesprit - Copycat - Level 1
  (481, 48100, 383, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mesprit - Imprison - Level 6
  (481, 48100, 286, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Mesprit - Protect - Level 16
  (481, 48100, 182, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mesprit - Swift - Level 21
  (481, 48100, 129, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Mesprit - Lucky Chant - Level 31
  (481, 48100, 381, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Mesprit - Future Sight - Level 36
  (481, 48100, 248, 13, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Mesprit - Charm - Level 46
  (481, 48100, 204, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mesprit - Extrasensory - Level 50
  (481, 48100, 326, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Mesprit - Copycat - Level 61
  (481, 48100, 383, 13, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Mesprit - Natural Gift - Level 66
  (481, 48100, 363, 13, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Mesprit - Healing Wish - Level 76
  (481, 48100, 361, 13, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Mesprit - Psyshock - TM03
  (481, 48100, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 16),
  -- Mesprit - Calm Mind - TM04
  (481, 48100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Mesprit - Toxic - TM06
  (481, 48100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Mesprit - Hidden Power - TM10
  (481, 48100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Mesprit - Sunny Day - TM11
  (481, 48100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Mesprit - Ice Beam - TM13
  (481, 48100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Mesprit - Blizzard - TM14
  (481, 48100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Mesprit - Hyper Beam - TM15
  (481, 48100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Mesprit - Light Screen - TM16
  (481, 48100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Mesprit - Protect - TM17
  (481, 48100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Mesprit - Rain Dance - TM18
  (481, 48100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Mesprit - Safeguard - TM20
  (481, 48100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Mesprit - Frustration - TM21
  (481, 48100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Mesprit - Thunderbolt - TM24
  (481, 48100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Mesprit - Thunder - TM25
  (481, 48100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Mesprit - Return - TM27
  (481, 48100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Mesprit - Psychic - TM29
  (481, 48100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Mesprit - Shadow Ball - TM30
  (481, 48100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Mesprit - Double Team - TM32
  (481, 48100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Mesprit - Reflect - TM33
  (481, 48100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 35),
  -- Mesprit - Sandstorm - TM37
  (481, 48100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 36),
  -- Mesprit - Facade - TM42
  (481, 48100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Mesprit - Rest - TM44
  (481, 48100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Mesprit - Round - TM48
  (481, 48100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Mesprit - Energy Ball - TM53
  (481, 48100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Mesprit - Fling - TM56
  (481, 48100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Mesprit - Charge Beam - TM57
  (481, 48100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 42),
  -- Mesprit - Acrobatics - TM62
  (481, 48100, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 43),
  -- Mesprit - Giga Impact - TM68
  (481, 48100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Mesprit - Flash - TM70
  (481, 48100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Mesprit - Thunder Wave - TM73
  (481, 48100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 46),
  -- Mesprit - Psych Up - TM77
  (481, 48100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Mesprit - Dream Eater - TM85
  (481, 48100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Mesprit - Grass Knot - TM86
  (481, 48100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Mesprit - Swagger - TM87
  (481, 48100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Mesprit - Sleep Talk - TM88
  (481, 48100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Mesprit - U-turn - TM89
  (481, 48100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 52),
  -- Mesprit - Substitute - TM90
  (481, 48100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Mesprit - Trick Room - TM92
  (481, 48100, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 54),
  -- Mesprit - Power-Up Punch - TM98
  (481, 48100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Mesprit - Dazzling Gleam - TM99
  (481, 48100, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 56),
  -- Mesprit - Confide - TM100
  (481, 48100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Natural Gift - Level 1
  (482, 48200, 363, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azelf - Last Resort - Level 1
  (482, 48200, 387, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azelf - Imprison - Level 6
  (482, 48200, 286, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Azelf - Detect - Level 16
  (482, 48200, 197, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Azelf - Swift - Level 21
  (482, 48200, 129, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Azelf - Uproar - Level 31
  (482, 48200, 253, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Azelf - Future Sight - Level 36
  (482, 48200, 248, 13, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Azelf - Nasty Plot - Level 46
  (482, 48200, 417, 13, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Azelf - Extrasensory - Level 50
  (482, 48200, 326, 13, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Azelf - Last Resort - Level 61
  (482, 48200, 387, 13, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Azelf - Natural Gift - Level 66
  (482, 48200, 363, 13, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Azelf - Explosion - Level 76
  (482, 48200, 153, 13, NULL, 1, 76, NULL, NULL, NULL, 14),
  -- Azelf - Psyshock - TM03
  (482, 48200, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 15),
  -- Azelf - Calm Mind - TM04
  (482, 48200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Azelf - Toxic - TM06
  (482, 48200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Azelf - Hidden Power - TM10
  (482, 48200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Azelf - Sunny Day - TM11
  (482, 48200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Azelf - Taunt - TM12
  (482, 48200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Azelf - Hyper Beam - TM15
  (482, 48200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Azelf - Light Screen - TM16
  (482, 48200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Azelf - Protect - TM17
  (482, 48200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Azelf - Rain Dance - TM18
  (482, 48200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Azelf - Safeguard - TM20
  (482, 48200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Azelf - Frustration - TM21
  (482, 48200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Azelf - Thunderbolt - TM24
  (482, 48200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Azelf - Thunder - TM25
  (482, 48200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Azelf - Return - TM27
  (482, 48200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Azelf - Psychic - TM29
  (482, 48200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Azelf - Shadow Ball - TM30
  (482, 48200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Azelf - Double Team - TM32
  (482, 48200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Azelf - Reflect - TM33
  (482, 48200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Azelf - Flamethrower - TM35
  (482, 48200, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Azelf - Sandstorm - TM37
  (482, 48200, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Azelf - Fire Blast - TM38
  (482, 48200, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Azelf - Torment - TM41
  (482, 48200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 37),
  -- Azelf - Facade - TM42
  (482, 48200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Azelf - Rest - TM44
  (482, 48200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Azelf - Round - TM48
  (482, 48200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Azelf - Energy Ball - TM53
  (482, 48200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 41),
  -- Azelf - Fling - TM56
  (482, 48200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Azelf - Charge Beam - TM57
  (482, 48200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 43),
  -- Azelf - Incinerate - TM59
  (482, 48200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Azelf - Acrobatics - TM62
  (482, 48200, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Azelf - Explosion - TM64
  (482, 48200, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 46),
  -- Azelf - Payback - TM66
  (482, 48200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 47),
  -- Azelf - Giga Impact - TM68
  (482, 48200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Azelf - Flash - TM70
  (482, 48200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 49),
  -- Azelf - Thunder Wave - TM73
  (482, 48200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 50),
  -- Azelf - Psych Up - TM77
  (482, 48200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 51),
  -- Azelf - Dream Eater - TM85
  (482, 48200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 52),
  -- Azelf - Grass Knot - TM86
  (482, 48200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 53),
  -- Azelf - Swagger - TM87
  (482, 48200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 54),
  -- Azelf - Sleep Talk - TM88
  (482, 48200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 55),
  -- Azelf - U-turn - TM89
  (482, 48200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 56),
  -- Azelf - Substitute - TM90
  (482, 48200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Azelf - Trick Room - TM92
  (482, 48200, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 58),
  -- Azelf - Power-Up Punch - TM98
  (482, 48200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 59),
  -- Azelf - Dazzling Gleam - TM99
  (482, 48200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 60),
  -- Azelf - Confide - TM100
  (482, 48200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Dragon Breath - Level 1
  (483, 48300, 225, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Metal Claw - Level 6
  (483, 48300, 232, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 10
  (483, 48300, 246, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 15
  (483, 48300, 163, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dialga - Power Gem - Level 19
  (483, 48300, 408, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Dialga - Metal Burst - Level 24
  (483, 48300, 368, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Dialga - Dragon Claw - Level 28
  (483, 48300, 337, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Dialga - Earth Power - Level 33
  (483, 48300, 414, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Dialga - Aura Sphere - Level 37
  (483, 48300, 396, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Dialga - Iron Tail - Level 42
  (483, 48300, 231, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Dialga - Roar of Time - Level 46
  (483, 48300, 459, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Dialga - Flash Cannon - Level 50
  (483, 48300, 430, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dialga - Hone Claws - TM01
  (483, 48300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Dialga - Dragon Claw - TM02
  (483, 48300, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 15),
  -- Dialga - Roar - TM05
  (483, 48300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Dialga - Toxic - TM06
  (483, 48300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Dialga - Bulk Up - TM08
  (483, 48300, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Dialga - Hidden Power - TM10
  (483, 48300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Dialga - Sunny Day - TM11
  (483, 48300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Dialga - Ice Beam - TM13
  (483, 48300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Dialga - Blizzard - TM14
  (483, 48300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Dialga - Hyper Beam - TM15
  (483, 48300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Dialga - Protect - TM17
  (483, 48300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Dialga - Rain Dance - TM18
  (483, 48300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Dialga - Safeguard - TM20
  (483, 48300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Dialga - Frustration - TM21
  (483, 48300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Dialga - Thunderbolt - TM24
  (483, 48300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Dialga - Thunder - TM25
  (483, 48300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Dialga - Earthquake - TM26
  (483, 48300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Dialga - Return - TM27
  (483, 48300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Dialga - Brick Break - TM31
  (483, 48300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Dialga - Double Team - TM32
  (483, 48300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Dialga - Flamethrower - TM35
  (483, 48300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Dialga - Sandstorm - TM37
  (483, 48300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Dialga - Fire Blast - TM38
  (483, 48300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Dialga - Rock Tomb - TM39
  (483, 48300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Dialga - Aerial Ace - TM40
  (483, 48300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Dialga - Facade - TM42
  (483, 48300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Dialga - Rest - TM44
  (483, 48300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Dialga - Round - TM48
  (483, 48300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Dialga - Echoed Voice - TM49
  (483, 48300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Dialga - Overheat - TM50
  (483, 48300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 43),
  -- Dialga - Incinerate - TM59
  (483, 48300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Dialga - Giga Impact - TM68
  (483, 48300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Dialga - Flash - TM70
  (483, 48300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 47),
  -- Dialga - Stone Edge - TM71
  (483, 48300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 48),
  -- Dialga - Thunder Wave - TM73
  (483, 48300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 49),
  -- Dialga - Psych Up - TM77
  (483, 48300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 50),
  -- Dialga - Bulldoze - TM78
  (483, 48300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 51),
  -- Dialga - Rock Slide - TM80
  (483, 48300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 52),
  -- Dialga - Dragon Tail - TM82
  (483, 48300, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 53),
  -- Dialga - Swagger - TM87
  (483, 48300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 54),
  -- Dialga - Sleep Talk - TM88
  (483, 48300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 55),
  -- Dialga - Substitute - TM90
  (483, 48300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Dialga - Flash Cannon - TM91
  (483, 48300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 57),
  -- Dialga - Trick Room - TM92
  (483, 48300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 58),
  -- Dialga - Rock Smash - TM94
  (483, 48300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 59),
  -- Dialga - Confide - TM100
  (483, 48300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 60),
  -- Dialga - Cut - HM01
  (483, 48300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 61),
  -- Dialga - Strength - HM04
  (483, 48300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 62),
  -- Dialga - Draco Meteor - Tutor
  (483, 48300, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 63),
  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Dragon Breath - Level 1
  (484, 48400, 225, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Water Pulse - Level 6
  (484, 48400, 352, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 10
  (484, 48400, 246, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 15
  (484, 48400, 163, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Palkia - Power Gem - Level 19
  (484, 48400, 408, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Palkia - Aqua Tail - Level 24
  (484, 48400, 401, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Palkia - Dragon Claw - Level 28
  (484, 48400, 337, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Palkia - Earth Power - Level 33
  (484, 48400, 414, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Palkia - Aura Sphere - Level 37
  (484, 48400, 396, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Palkia - Aqua Tail - Level 42
  (484, 48400, 401, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Palkia - Spacial Rend - Level 46
  (484, 48400, 460, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Palkia - Hydro Pump - Level 50
  (484, 48400, 56, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Palkia - Hone Claws - TM01
  (484, 48400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Palkia - Dragon Claw - TM02
  (484, 48400, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 15),
  -- Palkia - Roar - TM05
  (484, 48400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Palkia - Toxic - TM06
  (484, 48400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Palkia - Hail - TM07
  (484, 48400, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Palkia - Bulk Up - TM08
  (484, 48400, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Palkia - Hidden Power - TM10
  (484, 48400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Palkia - Sunny Day - TM11
  (484, 48400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Palkia - Ice Beam - TM13
  (484, 48400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Palkia - Blizzard - TM14
  (484, 48400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Palkia - Hyper Beam - TM15
  (484, 48400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Palkia - Protect - TM17
  (484, 48400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Palkia - Rain Dance - TM18
  (484, 48400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Palkia - Safeguard - TM20
  (484, 48400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Palkia - Frustration - TM21
  (484, 48400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Palkia - Thunderbolt - TM24
  (484, 48400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Palkia - Thunder - TM25
  (484, 48400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Palkia - Earthquake - TM26
  (484, 48400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Palkia - Return - TM27
  (484, 48400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Palkia - Brick Break - TM31
  (484, 48400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Palkia - Double Team - TM32
  (484, 48400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Palkia - Flamethrower - TM35
  (484, 48400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Palkia - Sandstorm - TM37
  (484, 48400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 36),
  -- Palkia - Fire Blast - TM38
  (484, 48400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 37),
  -- Palkia - Rock Tomb - TM39
  (484, 48400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 38),
  -- Palkia - Aerial Ace - TM40
  (484, 48400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 39),
  -- Palkia - Facade - TM42
  (484, 48400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Palkia - Rest - TM44
  (484, 48400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Palkia - Round - TM48
  (484, 48400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Palkia - Echoed Voice - TM49
  (484, 48400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 43),
  -- Palkia - Focus Blast - TM52
  (484, 48400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Palkia - Fling - TM56
  (484, 48400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 45),
  -- Palkia - Incinerate - TM59
  (484, 48400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 46),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 47),
  -- Palkia - Giga Impact - TM68
  (484, 48400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Palkia - Stone Edge - TM71
  (484, 48400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 49),
  -- Palkia - Thunder Wave - TM73
  (484, 48400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 50),
  -- Palkia - Psych Up - TM77
  (484, 48400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 51),
  -- Palkia - Bulldoze - TM78
  (484, 48400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 52),
  -- Palkia - Rock Slide - TM80
  (484, 48400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 53),
  -- Palkia - Dragon Tail - TM82
  (484, 48400, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 54),
  -- Palkia - Swagger - TM87
  (484, 48400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Palkia - Sleep Talk - TM88
  (484, 48400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Palkia - Substitute - TM90
  (484, 48400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Palkia - Trick Room - TM92
  (484, 48400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 58),
  -- Palkia - Rock Smash - TM94
  (484, 48400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 59),
  -- Palkia - Confide - TM100
  (484, 48400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 60),
  -- Palkia - Cut - HM01
  (484, 48400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 61),
  -- Palkia - Surf - HM03
  (484, 48400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 62),
  -- Palkia - Strength - HM04
  (484, 48400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 63),
  -- Palkia - Draco Meteor - Tutor
  (484, 48400, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 64),
  -- Heatran - Fire Spin - Level 1
  (485, 48500, 83, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Ancient Power - Level 1
  (485, 48500, 246, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatran - Heat Wave - Level 1
  (485, 48500, 257, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heatran - Earth Power - Level 1
  (485, 48500, 414, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heatran - Iron Head - Level 1
  (485, 48500, 442, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heatran - Magma Storm - Level 1
  (485, 48500, 463, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Heatran - Leer - Level 9
  (485, 48500, 43, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Heatran - Fire Fang - Level 17
  (485, 48500, 424, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Heatran - Metal Sound - Level 25
  (485, 48500, 319, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Heatran - Crunch - Level 33
  (485, 48500, 242, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Heatran - Scary Face - Level 41
  (485, 48500, 184, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Heatran - Lava Plume - Level 49
  (485, 48500, 436, 13, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Heatran - Fire Spin - Level 57
  (485, 48500, 83, 13, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Heatran - Iron Head - Level 65
  (485, 48500, 442, 13, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Heatran - Earth Power - Level 73
  (485, 48500, 414, 13, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Heatran - Heat Wave - Level 81
  (485, 48500, 257, 13, NULL, 1, 81, NULL, NULL, NULL, 16),
  -- Heatran - Stone Edge - Level 88
  (485, 48500, 444, 13, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Heatran - Magma Storm - Level 96
  (485, 48500, 463, 13, NULL, 1, 96, NULL, NULL, NULL, 18),
  -- Heatran - Roar - TM05
  (485, 48500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 19),
  -- Heatran - Toxic - TM06
  (485, 48500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Heatran - Hidden Power - TM10
  (485, 48500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Heatran - Sunny Day - TM11
  (485, 48500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Heatran - Taunt - TM12
  (485, 48500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Heatran - Hyper Beam - TM15
  (485, 48500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Heatran - Protect - TM17
  (485, 48500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Heatran - Frustration - TM21
  (485, 48500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Heatran - Solar Beam - TM22
  (485, 48500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Heatran - Earthquake - TM26
  (485, 48500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Heatran - Return - TM27
  (485, 48500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Heatran - Dig - TM28
  (485, 48500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Heatran - Double Team - TM32
  (485, 48500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Heatran - Flamethrower - TM35
  (485, 48500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Heatran - Fire Blast - TM38
  (485, 48500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 33),
  -- Heatran - Rock Tomb - TM39
  (485, 48500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Heatran - Torment - TM41
  (485, 48500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Heatran - Facade - TM42
  (485, 48500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Heatran - Flame Charge - TM43
  (485, 48500, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 37),
  -- Heatran - Rest - TM44
  (485, 48500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Heatran - Attract - TM45
  (485, 48500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Heatran - Round - TM48
  (485, 48500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Heatran - Overheat - TM50
  (485, 48500, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 41),
  -- Heatran - Incinerate - TM59
  (485, 48500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 42),
  -- Heatran - Will-O-Wisp - TM61
  (485, 48500, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 43),
  -- Heatran - Explosion - TM64
  (485, 48500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 44),
  -- Heatran - Payback - TM66
  (485, 48500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Heatran - Giga Impact - TM68
  (485, 48500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Heatran - Stone Edge - TM71
  (485, 48500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 47),
  -- Heatran - Bulldoze - TM78
  (485, 48500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Heatran - Rock Slide - TM80
  (485, 48500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Heatran - Swagger - TM87
  (485, 48500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Heatran - Sleep Talk - TM88
  (485, 48500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Heatran - Substitute - TM90
  (485, 48500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Heatran - Flash Cannon - TM91
  (485, 48500, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 53),
  -- Heatran - Rock Smash - TM94
  (485, 48500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Heatran - Nature Power - TM96
  (485, 48500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 55),
  -- Heatran - Dark Pulse - TM97
  (485, 48500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 56),
  -- Heatran - Confide - TM100
  (485, 48500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Heatran - Strength - HM04
  (485, 48500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Regigigas - Fire Punch - Level 1
  (486, 48600, 7, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Ice Punch - Level 1
  (486, 48600, 8, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Thunder Punch - Level 1
  (486, 48600, 9, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regigigas - Dizzy Punch - Level 1
  (486, 48600, 146, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regigigas - Foresight - Level 1
  (486, 48600, 193, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Regigigas - Knock Off - Level 1
  (486, 48600, 282, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Regigigas - Crush Grip - Level 1
  (486, 48600, 462, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Regigigas - Heavy Slam - Level 1
  (486, 48600, 484, 13, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Regigigas - Revenge - Level 25
  (486, 48600, 279, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Regigigas - Wide Guard - Level 40
  (486, 48600, 469, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Regigigas - Zen Headbutt - Level 50
  (486, 48600, 428, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Regigigas - Payback - Level 65
  (486, 48600, 371, 13, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Regigigas - Crush Grip - Level 75
  (486, 48600, 462, 13, NULL, 1, 75, NULL, NULL, NULL, 14),
  -- Regigigas - Heavy Slam - Level 90
  (486, 48600, 484, 13, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Regigigas - Giga Impact - Level 100
  (486, 48600, 416, 13, NULL, 1, 100, NULL, NULL, NULL, 16),
  -- Regigigas - Toxic - TM06
  (486, 48600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Regigigas - Hidden Power - TM10
  (486, 48600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Regigigas - Sunny Day - TM11
  (486, 48600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Regigigas - Hyper Beam - TM15
  (486, 48600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Regigigas - Rain Dance - TM18
  (486, 48600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Regigigas - Safeguard - TM20
  (486, 48600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 22),
  -- Regigigas - Frustration - TM21
  (486, 48600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Regigigas - Smack Down - TM23
  (486, 48600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 24),
  -- Regigigas - Thunderbolt - TM24
  (486, 48600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Regigigas - Thunder - TM25
  (486, 48600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Regigigas - Earthquake - TM26
  (486, 48600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Regigigas - Return - TM27
  (486, 48600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Regigigas - Brick Break - TM31
  (486, 48600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Regigigas - Double Team - TM32
  (486, 48600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Regigigas - Rock Tomb - TM39
  (486, 48600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Regigigas - Aerial Ace - TM40
  (486, 48600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 32),
  -- Regigigas - Facade - TM42
  (486, 48600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Regigigas - Round - TM48
  (486, 48600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Regigigas - Focus Blast - TM52
  (486, 48600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 35),
  -- Regigigas - Fling - TM56
  (486, 48600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Regigigas - Payback - TM66
  (486, 48600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 37),
  -- Regigigas - Retaliate - TM67
  (486, 48600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 38),
  -- Regigigas - Giga Impact - TM68
  (486, 48600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 39),
  -- Regigigas - Rock Polish - TM69
  (486, 48600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 40),
  -- Regigigas - Stone Edge - TM71
  (486, 48600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 41),
  -- Regigigas - Thunder Wave - TM73
  (486, 48600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 42),
  -- Regigigas - Psych Up - TM77
  (486, 48600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Regigigas - Bulldoze - TM78
  (486, 48600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Regigigas - Rock Slide - TM80
  (486, 48600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Regigigas - Swagger - TM87
  (486, 48600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Regigigas - Sleep Talk - TM88
  (486, 48600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Regigigas - Substitute - TM90
  (486, 48600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Regigigas - Rock Smash - TM94
  (486, 48600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Regigigas - Nature Power - TM96
  (486, 48600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 50),
  -- Regigigas - Power-Up Punch - TM98
  (486, 48600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Regigigas - Confide - TM100
  (486, 48600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Regigigas - Strength - HM04
  (486, 48600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Giratina - Scary Face - Level 1
  (487, 48700, 184, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Dragon Breath - Level 1
  (487, 48700, 225, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Ominous Wind - Level 6
  (487, 48700, 466, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 10
  (487, 48700, 246, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina - Slash - Level 15
  (487, 48700, 163, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina - Shadow Sneak - Level 19
  (487, 48700, 425, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina - Destiny Bond - Level 24
  (487, 48700, 194, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina - Dragon Claw - Level 28
  (487, 48700, 337, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina - Earth Power - Level 33
  (487, 48700, 414, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina - Aura Sphere - Level 37
  (487, 48700, 396, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina - Shadow Force - Level 46
  (487, 48700, 467, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina - Hex - Level 50
  (487, 48700, 506, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina - Hone Claws - TM01
  (487, 48700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Giratina - Dragon Claw - TM02
  (487, 48700, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 15),
  -- Giratina - Calm Mind - TM04
  (487, 48700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Giratina - Roar - TM05
  (487, 48700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Giratina - Toxic - TM06
  (487, 48700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Giratina - Hidden Power - TM10
  (487, 48700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Giratina - Sunny Day - TM11
  (487, 48700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Giratina - Hyper Beam - TM15
  (487, 48700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Giratina - Protect - TM17
  (487, 48700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Giratina - Rain Dance - TM18
  (487, 48700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Giratina - Safeguard - TM20
  (487, 48700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Giratina - Frustration - TM21
  (487, 48700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Giratina - Thunderbolt - TM24
  (487, 48700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Giratina - Thunder - TM25
  (487, 48700, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 27),
  -- Giratina - Earthquake - TM26
  (487, 48700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Giratina - Return - TM27
  (487, 48700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Giratina - Psychic - TM29
  (487, 48700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Giratina - Shadow Ball - TM30
  (487, 48700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Giratina - Double Team - TM32
  (487, 48700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Giratina - Aerial Ace - TM40
  (487, 48700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Giratina - Facade - TM42
  (487, 48700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Giratina - Rest - TM44
  (487, 48700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Giratina - Round - TM48
  (487, 48700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Giratina - Echoed Voice - TM49
  (487, 48700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Giratina - Steel Wing - TM51
  (487, 48700, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 38),
  -- Giratina - Energy Ball - TM53
  (487, 48700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Giratina - Charge Beam - TM57
  (487, 48700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 40),
  -- Giratina - Will-O-Wisp - TM61
  (487, 48700, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 41),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 42),
  -- Giratina - Payback - TM66
  (487, 48700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Giratina - Giga Impact - TM68
  (487, 48700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Giratina - Stone Edge - TM71
  (487, 48700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 45),
  -- Giratina - Thunder Wave - TM73
  (487, 48700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 46),
  -- Giratina - Psych Up - TM77
  (487, 48700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Giratina - Bulldoze - TM78
  (487, 48700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Giratina - Dragon Tail - TM82
  (487, 48700, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 49),
  -- Giratina - Dream Eater - TM85
  (487, 48700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 50),
  -- Giratina - Swagger - TM87
  (487, 48700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Giratina - Sleep Talk - TM88
  (487, 48700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Giratina - Substitute - TM90
  (487, 48700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Giratina - Rock Smash - TM94
  (487, 48700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Giratina - Dark Pulse - TM97
  (487, 48700, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 55),
  -- Giratina - Confide - TM100
  (487, 48700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Giratina - Cut - HM01
  (487, 48700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Giratina - Fly - HM02
  (487, 48700, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 58),
  -- Giratina - Strength - HM04
  (487, 48700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Giratina - Draco Meteor - Tutor
  (487, 48700, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 60),
  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Moonlight - Level 1
  (488, 48800, 236, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cresselia - Psycho Shift - Level 1
  (488, 48800, 375, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cresselia - Psycho Cut - Level 1
  (488, 48800, 427, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cresselia - Lunar Dance - Level 1
  (488, 48800, 461, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cresselia - Safeguard - Level 11
  (488, 48800, 219, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Cresselia - Mist - Level 20
  (488, 48800, 54, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cresselia - Aurora Beam - Level 29
  (488, 48800, 62, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cresselia - Future Sight - Level 38
  (488, 48800, 248, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Cresselia - Slash - Level 47
  (488, 48800, 163, 13, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Cresselia - Moonlight - Level 57
  (488, 48800, 236, 13, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Cresselia - Psycho Cut - Level 66
  (488, 48800, 427, 13, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cresselia - Psycho Shift - Level 75
  (488, 48800, 375, 13, NULL, 1, 75, NULL, NULL, NULL, 14),
  -- Cresselia - Lunar Dance - Level 84
  (488, 48800, 461, 13, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Cresselia - Psychic - Level 93
  (488, 48800, 94, 13, NULL, 1, 93, NULL, NULL, NULL, 16),
  -- Cresselia - Moonblast - Level 99
  (488, 48800, 585, 13, NULL, 1, 99, NULL, NULL, NULL, 17),
  -- Cresselia - Psyshock - TM03
  (488, 48800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Cresselia - Calm Mind - TM04
  (488, 48800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Cresselia - Toxic - TM06
  (488, 48800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Cresselia - Hidden Power - TM10
  (488, 48800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Cresselia - Sunny Day - TM11
  (488, 48800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Cresselia - Ice Beam - TM13
  (488, 48800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Cresselia - Hyper Beam - TM15
  (488, 48800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Cresselia - Light Screen - TM16
  (488, 48800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Cresselia - Protect - TM17
  (488, 48800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Cresselia - Rain Dance - TM18
  (488, 48800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Cresselia - Safeguard - TM20
  (488, 48800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Cresselia - Frustration - TM21
  (488, 48800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Cresselia - Solar Beam - TM22
  (488, 48800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Cresselia - Return - TM27
  (488, 48800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Cresselia - Psychic - TM29
  (488, 48800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Cresselia - Shadow Ball - TM30
  (488, 48800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Cresselia - Double Team - TM32
  (488, 48800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Cresselia - Reflect - TM33
  (488, 48800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 35),
  -- Cresselia - Facade - TM42
  (488, 48800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Cresselia - Rest - TM44
  (488, 48800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Cresselia - Attract - TM45
  (488, 48800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Cresselia - Round - TM48
  (488, 48800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Cresselia - Energy Ball - TM53
  (488, 48800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Cresselia - Charge Beam - TM57
  (488, 48800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Cresselia - Giga Impact - TM68
  (488, 48800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Cresselia - Flash - TM70
  (488, 48800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Cresselia - Thunder Wave - TM73
  (488, 48800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Cresselia - Psych Up - TM77
  (488, 48800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Cresselia - Dream Eater - TM85
  (488, 48800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 46),
  -- Cresselia - Grass Knot - TM86
  (488, 48800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Cresselia - Swagger - TM87
  (488, 48800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Cresselia - Sleep Talk - TM88
  (488, 48800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Cresselia - Substitute - TM90
  (488, 48800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Cresselia - Trick Room - TM92
  (488, 48800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 51),
  -- Cresselia - Confide - TM100
  (488, 48800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Phione - Bubble - Level 1
  (489, 48900, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Water Sport - Level 1
  (489, 48900, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 13, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 13, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 13, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 13, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 13, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 13, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 13, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 13, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Phione - Toxic - TM06
  (489, 48900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 12),
  -- Phione - Hail - TM07
  (489, 48900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 13),
  -- Phione - Hidden Power - TM10
  (489, 48900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Phione - Ice Beam - TM13
  (489, 48900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 15),
  -- Phione - Blizzard - TM14
  (489, 48900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 16),
  -- Phione - Protect - TM17
  (489, 48900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Phione - Rain Dance - TM18
  (489, 48900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Phione - Safeguard - TM20
  (489, 48900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 19),
  -- Phione - Frustration - TM21
  (489, 48900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Phione - Return - TM27
  (489, 48900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Phione - Double Team - TM32
  (489, 48900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Phione - Facade - TM42
  (489, 48900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Phione - Rest - TM44
  (489, 48900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Phione - Round - TM48
  (489, 48900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Phione - Scald - TM55
  (489, 48900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 26),
  -- Phione - Fling - TM56
  (489, 48900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 27),
  -- Phione - Psych Up - TM77
  (489, 48900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 28),
  -- Phione - Grass Knot - TM86
  (489, 48900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 29),
  -- Phione - Swagger - TM87
  (489, 48900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 30),
  -- Phione - Sleep Talk - TM88
  (489, 48900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 31),
  -- Phione - U-turn - TM89
  (489, 48900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 32),
  -- Phione - Substitute - TM90
  (489, 48900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 33),
  -- Phione - Dazzling Gleam - TM99
  (489, 48900, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 34),
  -- Phione - Confide - TM100
  (489, 48900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Phione - Surf - HM03
  (489, 48900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 36),
  -- Phione - Waterfall - HM05
  (489, 48900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 37),
  -- Manaphy - Bubble - Level 1
  (490, 49000, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Tail Glow - Level 1
  (490, 49000, 294, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manaphy - Water Sport - Level 1
  (490, 49000, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 13, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 13, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 13, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 13, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 13, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 13, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 13, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 13, NULL, 1, 69, NULL, NULL, NULL, 12),
  -- Manaphy - Heart Swap - Level 76
  (490, 49000, 391, 13, NULL, 1, 76, NULL, NULL, NULL, 13),
  -- Manaphy - Calm Mind - TM04
  (490, 49000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 14),
  -- Manaphy - Toxic - TM06
  (490, 49000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Manaphy - Hail - TM07
  (490, 49000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Manaphy - Hidden Power - TM10
  (490, 49000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Manaphy - Ice Beam - TM13
  (490, 49000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Manaphy - Blizzard - TM14
  (490, 49000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Manaphy - Hyper Beam - TM15
  (490, 49000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Manaphy - Light Screen - TM16
  (490, 49000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Manaphy - Protect - TM17
  (490, 49000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Manaphy - Rain Dance - TM18
  (490, 49000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Manaphy - Safeguard - TM20
  (490, 49000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Manaphy - Frustration - TM21
  (490, 49000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Manaphy - Return - TM27
  (490, 49000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Manaphy - Psychic - TM29
  (490, 49000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Manaphy - Shadow Ball - TM30
  (490, 49000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Manaphy - Double Team - TM32
  (490, 49000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Manaphy - Reflect - TM33
  (490, 49000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 30),
  -- Manaphy - Facade - TM42
  (490, 49000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Manaphy - Rest - TM44
  (490, 49000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Manaphy - Round - TM48
  (490, 49000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Manaphy - Energy Ball - TM53
  (490, 49000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 34),
  -- Manaphy - Scald - TM55
  (490, 49000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Manaphy - Fling - TM56
  (490, 49000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Manaphy - Giga Impact - TM68
  (490, 49000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Manaphy - Flash - TM70
  (490, 49000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Manaphy - Psych Up - TM77
  (490, 49000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Manaphy - Grass Knot - TM86
  (490, 49000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 40),
  -- Manaphy - Swagger - TM87
  (490, 49000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Manaphy - Sleep Talk - TM88
  (490, 49000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Manaphy - U-turn - TM89
  (490, 49000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 43),
  -- Manaphy - Substitute - TM90
  (490, 49000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Manaphy - Dazzling Gleam - TM99
  (490, 49000, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 45),
  -- Manaphy - Confide - TM100
  (490, 49000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Manaphy - Surf - HM03
  (490, 49000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Manaphy - Waterfall - HM05
  (490, 49000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 48),
  -- Darkrai - Disable - Level 1
  (491, 49100, 50, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Ominous Wind - Level 1
  (491, 49100, 466, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Darkrai - Feint Attack - Level 29
  (491, 49100, 185, 13, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Darkrai - Nightmare - Level 38
  (491, 49100, 171, 13, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 13, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 13, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 13, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 13, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 13, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 13, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Darkrai - Calm Mind - TM04
  (491, 49100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 13),
  -- Darkrai - Toxic - TM06
  (491, 49100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Darkrai - Hidden Power - TM10
  (491, 49100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Darkrai - Sunny Day - TM11
  (491, 49100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Darkrai - Taunt - TM12
  (491, 49100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 17),
  -- Darkrai - Ice Beam - TM13
  (491, 49100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Darkrai - Blizzard - TM14
  (491, 49100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Darkrai - Hyper Beam - TM15
  (491, 49100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Darkrai - Protect - TM17
  (491, 49100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Darkrai - Rain Dance - TM18
  (491, 49100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Darkrai - Frustration - TM21
  (491, 49100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Darkrai - Thunderbolt - TM24
  (491, 49100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Darkrai - Thunder - TM25
  (491, 49100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Darkrai - Return - TM27
  (491, 49100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Darkrai - Psychic - TM29
  (491, 49100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Darkrai - Shadow Ball - TM30
  (491, 49100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Darkrai - Brick Break - TM31
  (491, 49100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Darkrai - Double Team - TM32
  (491, 49100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Darkrai - Sludge Bomb - TM36
  (491, 49100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 31),
  -- Darkrai - Rock Tomb - TM39
  (491, 49100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Darkrai - Aerial Ace - TM40
  (491, 49100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Darkrai - Torment - TM41
  (491, 49100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Darkrai - Facade - TM42
  (491, 49100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Darkrai - Rest - TM44
  (491, 49100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Darkrai - Thief - TM46
  (491, 49100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Darkrai - Round - TM48
  (491, 49100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Darkrai - Focus Blast - TM52
  (491, 49100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 39),
  -- Darkrai - Fling - TM56
  (491, 49100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Darkrai - Charge Beam - TM57
  (491, 49100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Darkrai - Incinerate - TM59
  (491, 49100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 42),
  -- Darkrai - Will-O-Wisp - TM61
  (491, 49100, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 43),
  -- Darkrai - Embargo - TM63
  (491, 49100, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 44),
  -- Darkrai - Shadow Claw - TM65
  (491, 49100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Darkrai - Payback - TM66
  (491, 49100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 46),
  -- Darkrai - Retaliate - TM67
  (491, 49100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 47),
  -- Darkrai - Giga Impact - TM68
  (491, 49100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Darkrai - Flash - TM70
  (491, 49100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 49),
  -- Darkrai - Thunder Wave - TM73
  (491, 49100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 50),
  -- Darkrai - Swords Dance - TM75
  (491, 49100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 51),
  -- Darkrai - Psych Up - TM77
  (491, 49100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Darkrai - Rock Slide - TM80
  (491, 49100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 53),
  -- Darkrai - X-Scissor - TM81
  (491, 49100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 54),
  -- Darkrai - Poison Jab - TM84
  (491, 49100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 55),
  -- Darkrai - Dream Eater - TM85
  (491, 49100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 56),
  -- Darkrai - Swagger - TM87
  (491, 49100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Darkrai - Sleep Talk - TM88
  (491, 49100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Darkrai - Substitute - TM90
  (491, 49100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Darkrai - Rock Smash - TM94
  (491, 49100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Darkrai - Snarl - TM95
  (491, 49100, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 61),
  -- Darkrai - Dark Pulse - TM97
  (491, 49100, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 62),
  -- Darkrai - Power-Up Punch - TM98
  (491, 49100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 63),
  -- Darkrai - Confide - TM100
  (491, 49100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 64),
  -- Darkrai - Cut - HM01
  (491, 49100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 65),
  -- Darkrai - Strength - HM04
  (491, 49100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Shaymin - Growth - Level 1
  (492, 49200, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 13, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 13, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 13, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Natural Gift - Level 46
  (492, 49200, 363, 13, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 13, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Aromatherapy - Level 64
  (492, 49200, 312, 13, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 13, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 13, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 13, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 13, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Toxic - TM06
  (492, 49200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Shaymin - Hidden Power - TM10
  (492, 49200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Shaymin - Sunny Day - TM11
  (492, 49200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Shaymin - Hyper Beam - TM15
  (492, 49200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 16),
  -- Shaymin - Protect - TM17
  (492, 49200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Shaymin - Safeguard - TM20
  (492, 49200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 18),
  -- Shaymin - Frustration - TM21
  (492, 49200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Shaymin - Solar Beam - TM22
  (492, 49200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 20),
  -- Shaymin - Return - TM27
  (492, 49200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Shaymin - Psychic - TM29
  (492, 49200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 22),
  -- Shaymin - Double Team - TM32
  (492, 49200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Shaymin - Facade - TM42
  (492, 49200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Shaymin - Rest - TM44
  (492, 49200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Shaymin - Round - TM48
  (492, 49200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 26),
  -- Shaymin - Energy Ball - TM53
  (492, 49200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 27),
  -- Shaymin - Giga Impact - TM68
  (492, 49200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 28),
  -- Shaymin - Flash - TM70
  (492, 49200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 29),
  -- Shaymin - Swords Dance - TM75
  (492, 49200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 30),
  -- Shaymin - Psych Up - TM77
  (492, 49200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 31),
  -- Shaymin - Grass Knot - TM86
  (492, 49200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 32),
  -- Shaymin - Swagger - TM87
  (492, 49200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Shaymin - Sleep Talk - TM88
  (492, 49200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Shaymin - Substitute - TM90
  (492, 49200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Shaymin - Nature Power - TM96
  (492, 49200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 36),
  -- Shaymin - Dazzling Gleam - TM99
  (492, 49200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 37),
  -- Shaymin - Confide - TM100
  (492, 49200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Arceus - Seismic Toss - Level 1
  (493, 49300, 69, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Level 1
  (493, 49300, 322, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arceus - Natural Gift - Level 1
  (493, 49300, 363, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arceus - Punishment - Level 1
  (493, 49300, 386, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 13, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 13, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Arceus - Refresh - Level 50
  (493, 49300, 287, 13, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 13, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 13, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 13, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 13, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 13, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Arceus - Hone Claws - TM01
  (493, 49300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 15),
  -- Arceus - Dragon Claw - TM02
  (493, 49300, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 16),
  -- Arceus - Psyshock - TM03
  (493, 49300, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Arceus - Calm Mind - TM04
  (493, 49300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Arceus - Roar - TM05
  (493, 49300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 19),
  -- Arceus - Toxic - TM06
  (493, 49300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Arceus - Hail - TM07
  (493, 49300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Arceus - Hidden Power - TM10
  (493, 49300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Arceus - Sunny Day - TM11
  (493, 49300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Arceus - Ice Beam - TM13
  (493, 49300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Arceus - Blizzard - TM14
  (493, 49300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Arceus - Hyper Beam - TM15
  (493, 49300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Arceus - Light Screen - TM16
  (493, 49300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 27),
  -- Arceus - Protect - TM17
  (493, 49300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Arceus - Rain Dance - TM18
  (493, 49300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Arceus - Safeguard - TM20
  (493, 49300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 30),
  -- Arceus - Frustration - TM21
  (493, 49300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Arceus - Solar Beam - TM22
  (493, 49300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 32),
  -- Arceus - Thunderbolt - TM24
  (493, 49300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 33),
  -- Arceus - Thunder - TM25
  (493, 49300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 34),
  -- Arceus - Earthquake - TM26
  (493, 49300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 35),
  -- Arceus - Return - TM27
  (493, 49300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 36),
  -- Arceus - Psychic - TM29
  (493, 49300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 37),
  -- Arceus - Shadow Ball - TM30
  (493, 49300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 38),
  -- Arceus - Brick Break - TM31
  (493, 49300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 39),
  -- Arceus - Double Team - TM32
  (493, 49300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Arceus - Reflect - TM33
  (493, 49300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 41),
  -- Arceus - Flamethrower - TM35
  (493, 49300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 42),
  -- Arceus - Sludge Bomb - TM36
  (493, 49300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 43),
  -- Arceus - Sandstorm - TM37
  (493, 49300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 44),
  -- Arceus - Fire Blast - TM38
  (493, 49300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 45),
  -- Arceus - Rock Tomb - TM39
  (493, 49300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 46),
  -- Arceus - Aerial Ace - TM40
  (493, 49300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 47),
  -- Arceus - Facade - TM42
  (493, 49300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 48),
  -- Arceus - Rest - TM44
  (493, 49300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 49),
  -- Arceus - Round - TM48
  (493, 49300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 50),
  -- Arceus - Echoed Voice - TM49
  (493, 49300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 51),
  -- Arceus - Overheat - TM50
  (493, 49300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 52),
  -- Arceus - Focus Blast - TM52
  (493, 49300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 53),
  -- Arceus - Energy Ball - TM53
  (493, 49300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 54),
  -- Arceus - Charge Beam - TM57
  (493, 49300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 55),
  -- Arceus - Incinerate - TM59
  (493, 49300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 56),
  -- Arceus - Quash - TM60
  (493, 49300, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 57),
  -- Arceus - Will-O-Wisp - TM61
  (493, 49300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 58),
  -- Arceus - Shadow Claw - TM65
  (493, 49300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 59),
  -- Arceus - Payback - TM66
  (493, 49300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 60),
  -- Arceus - Retaliate - TM67
  (493, 49300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 61),
  -- Arceus - Giga Impact - TM68
  (493, 49300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 62),
  -- Arceus - Flash - TM70
  (493, 49300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 63),
  -- Arceus - Stone Edge - TM71
  (493, 49300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 64),
  -- Arceus - Thunder Wave - TM73
  (493, 49300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 65),
  -- Arceus - Swords Dance - TM75
  (493, 49300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 66),
  -- Arceus - Psych Up - TM77
  (493, 49300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 67),
  -- Arceus - Bulldoze - TM78
  (493, 49300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 68),
  -- Arceus - Rock Slide - TM80
  (493, 49300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 69),
  -- Arceus - X-Scissor - TM81
  (493, 49300, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 70),
  -- Arceus - Poison Jab - TM84
  (493, 49300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 71),
  -- Arceus - Dream Eater - TM85
  (493, 49300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 72),
  -- Arceus - Grass Knot - TM86
  (493, 49300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 73),
  -- Arceus - Swagger - TM87
  (493, 49300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 74),
  -- Arceus - Sleep Talk - TM88
  (493, 49300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 75),
  -- Arceus - Substitute - TM90
  (493, 49300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 76),
  -- Arceus - Flash Cannon - TM91
  (493, 49300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 77),
  -- Arceus - Trick Room - TM92
  (493, 49300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 78),
  -- Arceus - Rock Smash - TM94
  (493, 49300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 79),
  -- Arceus - Snarl - TM95
  (493, 49300, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 80),
  -- Arceus - Dark Pulse - TM97
  (493, 49300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 81),
  -- Arceus - Confide - TM100
  (493, 49300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 82),
  -- Arceus - Cut - HM01
  (493, 49300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 83),
  -- Arceus - Fly - HM02
  (493, 49300, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 84),
  -- Arceus - Surf - HM03
  (493, 49300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 85),
  -- Arceus - Strength - HM04
  (493, 49300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 86),
  -- Arceus - Waterfall - HM05
  (493, 49300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 87),
  -- Arceus - Draco Meteor - Tutor
  (493, 49300, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 88);
