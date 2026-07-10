-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Ultra Sun / Ultra Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon learnsets for default forms, species 451-493.
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
  (451, 45100, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Leer - Level 1
  (451, 45100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skorupi - Bite - Level 1
  (451, 45100, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skorupi - Knock Off - Level 5
  (451, 45100, 282, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Skorupi - Pin Missile - Level 9
  (451, 45100, 42, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Skorupi - Acupressure - Level 13
  (451, 45100, 367, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Skorupi - Pursuit - Level 16
  (451, 45100, 228, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Skorupi - Bug Bite - Level 20
  (451, 45100, 450, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skorupi - Poison Fang - Level 23
  (451, 45100, 305, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Skorupi - Venoshock - Level 27
  (451, 45100, 474, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skorupi - Hone Claws - Level 30
  (451, 45100, 468, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Skorupi - Toxic Spikes - Level 34
  (451, 45100, 390, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skorupi - Night Slash - Level 38
  (451, 45100, 400, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Skorupi - Scary Face - Level 41
  (451, 45100, 184, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Skorupi - Crunch - Level 45
  (451, 45100, 242, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Skorupi - Fell Stinger - Level 47
  (451, 45100, 565, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Skorupi - Cross Poison - Level 49
  (451, 45100, 440, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Skorupi - Toxic - TM06
  (451, 45100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Skorupi - Venoshock - TM09
  (451, 45100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Skorupi - Hidden Power - TM10
  (451, 45100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Skorupi - Sunny Day - TM11
  (451, 45100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Skorupi - Taunt - TM12
  (451, 45100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Skorupi - Protect - TM17
  (451, 45100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Skorupi - Rain Dance - TM18
  (451, 45100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Skorupi - Frustration - TM21
  (451, 45100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Skorupi - Return - TM27
  (451, 45100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Skorupi - Shadow Ball - TM30
  (451, 45100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Skorupi - Brick Break - TM31
  (451, 45100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Skorupi - Double Team - TM32
  (451, 45100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Skorupi - Sludge Bomb - TM36
  (451, 45100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Skorupi - Rock Tomb - TM39
  (451, 45100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Skorupi - Aerial Ace - TM40
  (451, 45100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Skorupi - Torment - TM41
  (451, 45100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Skorupi - Facade - TM42
  (451, 45100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Skorupi - Rest - TM44
  (451, 45100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Skorupi - Attract - TM45
  (451, 45100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Skorupi - Thief - TM46
  (451, 45100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Skorupi - Round - TM48
  (451, 45100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Skorupi - False Swipe - TM54
  (451, 45100, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 39),
  -- Skorupi - Fling - TM56
  (451, 45100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Skorupi - Payback - TM66
  (451, 45100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Skorupi - Swords Dance - TM75
  (451, 45100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Skorupi - X-Scissor - TM81
  (451, 45100, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 43),
  -- Skorupi - Infestation - TM83
  (451, 45100, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 44),
  -- Skorupi - Poison Jab - TM84
  (451, 45100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Skorupi - Swagger - TM87
  (451, 45100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Skorupi - Sleep Talk - TM88
  (451, 45100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Skorupi - Substitute - TM90
  (451, 45100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Skorupi - Dark Pulse - TM97
  (451, 45100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 49),
  -- Skorupi - Confide - TM100
  (451, 45100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Skorupi - Whirlwind - Egg
  (451, 45100, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skorupi - Sand Attack - Egg
  (451, 45100, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skorupi - Twineedle - Egg
  (451, 45100, 41, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skorupi - Agility - Egg
  (451, 45100, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skorupi - Screech - Egg
  (451, 45100, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skorupi - Confuse Ray - Egg
  (451, 45100, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skorupi - Slash - Egg
  (451, 45100, 163, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skorupi - Feint Attack - Egg
  (451, 45100, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skorupi - Pursuit - Egg
  (451, 45100, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skorupi - Iron Tail - Egg
  (451, 45100, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skorupi - Poison Tail - Egg
  (451, 45100, 342, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skorupi - Night Slash - Egg
  (451, 45100, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skorupi - Snore - Tutor
  (451, 45100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Skorupi - Iron Tail - Tutor
  (451, 45100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Skorupi - Knock Off - Tutor
  (451, 45100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Skorupi - Aqua Tail - Tutor
  (451, 45100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Skorupi - Bug Bite - Tutor
  (451, 45100, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Leer - Level 1
  (452, 45200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drapion - Bite - Level 1
  (452, 45200, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drapion - Knock Off - Level 1
  (452, 45200, 282, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drapion - Thunder Fang - Level 1
  (452, 45200, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drapion - Ice Fang - Level 1
  (452, 45200, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drapion - Fire Fang - Level 1
  (452, 45200, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drapion - Knock Off - Level 5
  (452, 45200, 282, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Drapion - Pin Missile - Level 9
  (452, 45200, 42, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Drapion - Acupressure - Level 13
  (452, 45200, 367, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Drapion - Pursuit - Level 16
  (452, 45200, 228, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Drapion - Bug Bite - Level 20
  (452, 45200, 450, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Drapion - Poison Fang - Level 23
  (452, 45200, 305, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Drapion - Venoshock - Level 27
  (452, 45200, 474, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Drapion - Hone Claws - Level 30
  (452, 45200, 468, 16, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Drapion - Toxic Spikes - Level 34
  (452, 45200, 390, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Drapion - Night Slash - Level 38
  (452, 45200, 400, 16, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Drapion - Scary Face - Level 43
  (452, 45200, 184, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Drapion - Crunch - Level 49
  (452, 45200, 242, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Drapion - Fell Stinger - Level 53
  (452, 45200, 565, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Drapion - Cross Poison - Level 57
  (452, 45200, 440, 16, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Drapion - Roar - TM05
  (452, 45200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Drapion - Toxic - TM06
  (452, 45200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Drapion - Venoshock - TM09
  (452, 45200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 24),
  -- Drapion - Hidden Power - TM10
  (452, 45200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Drapion - Sunny Day - TM11
  (452, 45200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Drapion - Taunt - TM12
  (452, 45200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 27),
  -- Drapion - Hyper Beam - TM15
  (452, 45200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Drapion - Protect - TM17
  (452, 45200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Drapion - Rain Dance - TM18
  (452, 45200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Drapion - Frustration - TM21
  (452, 45200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Drapion - Earthquake - TM26
  (452, 45200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Drapion - Return - TM27
  (452, 45200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Drapion - Shadow Ball - TM30
  (452, 45200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Drapion - Brick Break - TM31
  (452, 45200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Drapion - Double Team - TM32
  (452, 45200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Drapion - Sludge Bomb - TM36
  (452, 45200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 37),
  -- Drapion - Rock Tomb - TM39
  (452, 45200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Drapion - Aerial Ace - TM40
  (452, 45200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 39),
  -- Drapion - Torment - TM41
  (452, 45200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 40),
  -- Drapion - Facade - TM42
  (452, 45200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Drapion - Rest - TM44
  (452, 45200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Drapion - Attract - TM45
  (452, 45200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Drapion - Thief - TM46
  (452, 45200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 44),
  -- Drapion - Round - TM48
  (452, 45200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Drapion - False Swipe - TM54
  (452, 45200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 46),
  -- Drapion - Fling - TM56
  (452, 45200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Drapion - Brutal Swing - TM59
  (452, 45200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 48),
  -- Drapion - Payback - TM66
  (452, 45200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 49),
  -- Drapion - Giga Impact - TM68
  (452, 45200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Drapion - Swords Dance - TM75
  (452, 45200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 51),
  -- Drapion - Bulldoze - TM78
  (452, 45200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Drapion - Rock Slide - TM80
  (452, 45200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Drapion - X-Scissor - TM81
  (452, 45200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 54),
  -- Drapion - Infestation - TM83
  (452, 45200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 55),
  -- Drapion - Poison Jab - TM84
  (452, 45200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 56),
  -- Drapion - Swagger - TM87
  (452, 45200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Drapion - Sleep Talk - TM88
  (452, 45200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Drapion - Substitute - TM90
  (452, 45200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Drapion - Snarl - TM95
  (452, 45200, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 60),
  -- Drapion - Dark Pulse - TM97
  (452, 45200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Drapion - Confide - TM100
  (452, 45200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Drapion - Snore - Tutor
  (452, 45200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Drapion - Iron Tail - Tutor
  (452, 45200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Drapion - Knock Off - Tutor
  (452, 45200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Drapion - Aqua Tail - Tutor
  (452, 45200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Drapion - Bug Bite - Tutor
  (452, 45200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Drapion - Throat Chop - Tutor
  (452, 45200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Drapion - Stomping Tantrum - Tutor
  (452, 45200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Croagunk - Astonish - Level 1
  (453, 45300, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 3
  (453, 45300, 189, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Croagunk - Poison Sting - Level 8
  (453, 45300, 40, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 10
  (453, 45300, 269, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Croagunk - Pursuit - Level 15
  (453, 45300, 228, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croagunk - Feint Attack - Level 17
  (453, 45300, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Croagunk - Revenge - Level 22
  (453, 45300, 279, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Croagunk - Swagger - Level 24
  (453, 45300, 207, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Mud Bomb - Level 29
  (453, 45300, 426, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Croagunk - Sucker Punch - Level 31
  (453, 45300, 389, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Croagunk - Venoshock - Level 36
  (453, 45300, 474, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 38
  (453, 45300, 417, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Croagunk - Poison Jab - Level 43
  (453, 45300, 398, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Croagunk - Sludge Bomb - Level 45
  (453, 45300, 188, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Croagunk - Belch - Level 47
  (453, 45300, 562, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Croagunk - Flatter - Level 50
  (453, 45300, 260, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Croagunk - Work Up - TM01
  (453, 45300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Croagunk - Toxic - TM06
  (453, 45300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Croagunk - Bulk Up - TM08
  (453, 45300, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 19),
  -- Croagunk - Venoshock - TM09
  (453, 45300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Croagunk - Hidden Power - TM10
  (453, 45300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Croagunk - Sunny Day - TM11
  (453, 45300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Croagunk - Taunt - TM12
  (453, 45300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Croagunk - Protect - TM17
  (453, 45300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Croagunk - Rain Dance - TM18
  (453, 45300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Croagunk - Frustration - TM21
  (453, 45300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Croagunk - Earthquake - TM26
  (453, 45300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Croagunk - Return - TM27
  (453, 45300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Croagunk - Shadow Ball - TM30
  (453, 45300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Croagunk - Brick Break - TM31
  (453, 45300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Croagunk - Double Team - TM32
  (453, 45300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Croagunk - Sludge Wave - TM34
  (453, 45300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 32),
  -- Croagunk - Sludge Bomb - TM36
  (453, 45300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 33),
  -- Croagunk - Rock Tomb - TM39
  (453, 45300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Croagunk - Torment - TM41
  (453, 45300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Croagunk - Facade - TM42
  (453, 45300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Croagunk - Rest - TM44
  (453, 45300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Croagunk - Attract - TM45
  (453, 45300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Croagunk - Thief - TM46
  (453, 45300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 39),
  -- Croagunk - Low Sweep - TM47
  (453, 45300, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 40),
  -- Croagunk - Round - TM48
  (453, 45300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Croagunk - Focus Blast - TM52
  (453, 45300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Croagunk - Fling - TM56
  (453, 45300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Croagunk - Embargo - TM63
  (453, 45300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 44),
  -- Croagunk - Payback - TM66
  (453, 45300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Croagunk - Bulldoze - TM78
  (453, 45300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Croagunk - Rock Slide - TM80
  (453, 45300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Croagunk - X-Scissor - TM81
  (453, 45300, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 48),
  -- Croagunk - Poison Jab - TM84
  (453, 45300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 49),
  -- Croagunk - Swagger - TM87
  (453, 45300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Croagunk - Sleep Talk - TM88
  (453, 45300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Croagunk - Substitute - TM90
  (453, 45300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Croagunk - Dark Pulse - TM97
  (453, 45300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Croagunk - Confide - TM100
  (453, 45300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Croagunk - Headbutt - Egg
  (453, 45300, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Croagunk - Counter - Egg
  (453, 45300, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croagunk - Meditate - Egg
  (453, 45300, 96, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croagunk - Dynamic Punch - Egg
  (453, 45300, 223, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croagunk - Cross Chop - Egg
  (453, 45300, 238, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croagunk - Fake Out - Egg
  (453, 45300, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croagunk - Smelling Salts - Egg
  (453, 45300, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Wake-Up Slap - Egg
  (453, 45300, 358, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Croagunk - Feint - Egg
  (453, 45300, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Croagunk - Acupressure - Egg
  (453, 45300, 367, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Croagunk - Me First - Egg
  (453, 45300, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Croagunk - Drain Punch - Egg
  (453, 45300, 409, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Vacuum Wave - Egg
  (453, 45300, 410, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Croagunk - Bullet Punch - Egg
  (453, 45300, 418, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Croagunk - Quick Guard - Egg
  (453, 45300, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Croagunk - Ice Punch - Tutor
  (453, 45300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Croagunk - Thunder Punch - Tutor
  (453, 45300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Croagunk - Low Kick - Tutor
  (453, 45300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Croagunk - Super Fang - Tutor
  (453, 45300, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Croagunk - Snore - Tutor
  (453, 45300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Croagunk - Spite - Tutor
  (453, 45300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Croagunk - Icy Wind - Tutor
  (453, 45300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Croagunk - Focus Punch - Tutor
  (453, 45300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Croagunk - Helping Hand - Tutor
  (453, 45300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Croagunk - Role Play - Tutor
  (453, 45300, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Croagunk - Knock Off - Tutor
  (453, 45300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Croagunk - Snatch - Tutor
  (453, 45300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Croagunk - Bounce - Tutor
  (453, 45300, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Croagunk - Drain Punch - Tutor
  (453, 45300, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Croagunk - Gunk Shot - Tutor
  (453, 45300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Croagunk - Foul Play - Tutor
  (453, 45300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Croagunk - Dual Chop - Tutor
  (453, 45300, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),

  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Mud-Slap - Level 3
  (454, 45400, 189, 16, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Toxicroak - Poison Sting - Level 8
  (454, 45400, 40, 16, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toxicroak - Taunt - Level 10
  (454, 45400, 269, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Toxicroak - Pursuit - Level 15
  (454, 45400, 228, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Toxicroak - Feint Attack - Level 17
  (454, 45400, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Toxicroak - Revenge - Level 22
  (454, 45400, 279, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Toxicroak - Swagger - Level 24
  (454, 45400, 207, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Toxicroak - Mud Bomb - Level 29
  (454, 45400, 426, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Toxicroak - Sucker Punch - Level 31
  (454, 45400, 389, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Toxicroak - Venoshock - Level 36
  (454, 45400, 474, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Toxicroak - Nasty Plot - Level 41
  (454, 45400, 417, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Toxicroak - Poison Jab - Level 49
  (454, 45400, 398, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Toxicroak - Sludge Bomb - Level 54
  (454, 45400, 188, 16, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Toxicroak - Belch - Level 58
  (454, 45400, 562, 16, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Toxicroak - Flatter - Level 62
  (454, 45400, 260, 16, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Toxicroak - Work Up - TM01
  (454, 45400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Toxicroak - Toxic - TM06
  (454, 45400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Toxicroak - Bulk Up - TM08
  (454, 45400, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 21),
  -- Toxicroak - Venoshock - TM09
  (454, 45400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 22),
  -- Toxicroak - Hidden Power - TM10
  (454, 45400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Toxicroak - Sunny Day - TM11
  (454, 45400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Toxicroak - Taunt - TM12
  (454, 45400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Toxicroak - Hyper Beam - TM15
  (454, 45400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Toxicroak - Protect - TM17
  (454, 45400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Toxicroak - Rain Dance - TM18
  (454, 45400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Toxicroak - Frustration - TM21
  (454, 45400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Toxicroak - Earthquake - TM26
  (454, 45400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Toxicroak - Return - TM27
  (454, 45400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Toxicroak - Shadow Ball - TM30
  (454, 45400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Toxicroak - Brick Break - TM31
  (454, 45400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Toxicroak - Double Team - TM32
  (454, 45400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Toxicroak - Sludge Wave - TM34
  (454, 45400, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 35),
  -- Toxicroak - Sludge Bomb - TM36
  (454, 45400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 36),
  -- Toxicroak - Rock Tomb - TM39
  (454, 45400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Toxicroak - Torment - TM41
  (454, 45400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Toxicroak - Facade - TM42
  (454, 45400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Toxicroak - Rest - TM44
  (454, 45400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Toxicroak - Attract - TM45
  (454, 45400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Toxicroak - Thief - TM46
  (454, 45400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Toxicroak - Low Sweep - TM47
  (454, 45400, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 43),
  -- Toxicroak - Round - TM48
  (454, 45400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Toxicroak - Focus Blast - TM52
  (454, 45400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Toxicroak - Fling - TM56
  (454, 45400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Toxicroak - Embargo - TM63
  (454, 45400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 47),
  -- Toxicroak - Payback - TM66
  (454, 45400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Toxicroak - Giga Impact - TM68
  (454, 45400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Toxicroak - Stone Edge - TM71
  (454, 45400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 50),
  -- Toxicroak - Swords Dance - TM75
  (454, 45400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 51),
  -- Toxicroak - Bulldoze - TM78
  (454, 45400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Toxicroak - Rock Slide - TM80
  (454, 45400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Toxicroak - X-Scissor - TM81
  (454, 45400, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 54),
  -- Toxicroak - Poison Jab - TM84
  (454, 45400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 55),
  -- Toxicroak - Swagger - TM87
  (454, 45400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Toxicroak - Sleep Talk - TM88
  (454, 45400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Toxicroak - Substitute - TM90
  (454, 45400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Toxicroak - Dark Pulse - TM97
  (454, 45400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 59),
  -- Toxicroak - Confide - TM100
  (454, 45400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 60),
  -- Toxicroak - Ice Punch - Tutor
  (454, 45400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Toxicroak - Thunder Punch - Tutor
  (454, 45400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Toxicroak - Low Kick - Tutor
  (454, 45400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Toxicroak - Super Fang - Tutor
  (454, 45400, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Toxicroak - Snore - Tutor
  (454, 45400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Toxicroak - Spite - Tutor
  (454, 45400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Toxicroak - Icy Wind - Tutor
  (454, 45400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Toxicroak - Focus Punch - Tutor
  (454, 45400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Toxicroak - Helping Hand - Tutor
  (454, 45400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Toxicroak - Role Play - Tutor
  (454, 45400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Toxicroak - Knock Off - Tutor
  (454, 45400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Toxicroak - Snatch - Tutor
  (454, 45400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Toxicroak - Bounce - Tutor
  (454, 45400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Toxicroak - Drain Punch - Tutor
  (454, 45400, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Toxicroak - Gunk Shot - Tutor
  (454, 45400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Toxicroak - Foul Play - Tutor
  (454, 45400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Toxicroak - Dual Chop - Tutor
  (454, 45400, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Toxicroak - Throat Chop - Tutor
  (454, 45400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),

  -- Carnivine - Bind - Level 1
  (455, 45500, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carnivine - Growth - Level 1
  (455, 45500, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 7
  (455, 45500, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carnivine - Vine Whip - Level 11
  (455, 45500, 22, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Carnivine - Sweet Scent - Level 17
  (455, 45500, 230, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Carnivine - Ingrain - Level 21
  (455, 45500, 275, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Carnivine - Feint Attack - Level 27
  (455, 45500, 185, 16, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carnivine - Leaf Tornado - Level 31
  (455, 45500, 536, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carnivine - Stockpile - Level 37
  (455, 45500, 254, 16, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Carnivine - Spit Up - Level 37
  (455, 45500, 255, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Carnivine - Swallow - Level 37
  (455, 45500, 256, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Carnivine - Crunch - Level 41
  (455, 45500, 242, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Carnivine - Wring Out - Level 47
  (455, 45500, 378, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Carnivine - Power Whip - Level 50
  (455, 45500, 438, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Carnivine - Toxic - TM06
  (455, 45500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Carnivine - Hidden Power - TM10
  (455, 45500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Carnivine - Sunny Day - TM11
  (455, 45500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Carnivine - Hyper Beam - TM15
  (455, 45500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 18),
  -- Carnivine - Protect - TM17
  (455, 45500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Carnivine - Frustration - TM21
  (455, 45500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Carnivine - Solar Beam - TM22
  (455, 45500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Carnivine - Return - TM27
  (455, 45500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Carnivine - Double Team - TM32
  (455, 45500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Carnivine - Sludge Bomb - TM36
  (455, 45500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 24),
  -- Carnivine - Facade - TM42
  (455, 45500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Carnivine - Rest - TM44
  (455, 45500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Carnivine - Attract - TM45
  (455, 45500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Carnivine - Thief - TM46
  (455, 45500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 28),
  -- Carnivine - Round - TM48
  (455, 45500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Carnivine - Energy Ball - TM53
  (455, 45500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 30),
  -- Carnivine - Fling - TM56
  (455, 45500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 31),
  -- Carnivine - Payback - TM66
  (455, 45500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 32),
  -- Carnivine - Giga Impact - TM68
  (455, 45500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Carnivine - Swords Dance - TM75
  (455, 45500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Carnivine - Infestation - TM83
  (455, 45500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 35),
  -- Carnivine - Grass Knot - TM86
  (455, 45500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Carnivine - Swagger - TM87
  (455, 45500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Carnivine - Sleep Talk - TM88
  (455, 45500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Carnivine - Substitute - TM90
  (455, 45500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Carnivine - Nature Power - TM96
  (455, 45500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 40),
  -- Carnivine - Confide - TM100
  (455, 45500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Carnivine - Slam - Egg
  (455, 45500, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carnivine - Leech Seed - Egg
  (455, 45500, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carnivine - Razor Leaf - Egg
  (455, 45500, 75, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carnivine - Stun Spore - Egg
  (455, 45500, 78, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carnivine - Sleep Powder - Egg
  (455, 45500, 79, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carnivine - Giga Drain - Egg
  (455, 45500, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carnivine - Synthesis - Egg
  (455, 45500, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carnivine - Grass Whistle - Egg
  (455, 45500, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carnivine - Magical Leaf - Egg
  (455, 45500, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Carnivine - Worry Seed - Egg
  (455, 45500, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Carnivine - Rage Powder - Egg
  (455, 45500, 476, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Carnivine - Acid Spray - Egg
  (455, 45500, 491, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Carnivine - Bind - Tutor
  (455, 45500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Carnivine - Snore - Tutor
  (455, 45500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Carnivine - Giga Drain - Tutor
  (455, 45500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Carnivine - Synthesis - Tutor
  (455, 45500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Carnivine - Knock Off - Tutor
  (455, 45500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Carnivine - Gastro Acid - Tutor
  (455, 45500, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Carnivine - Worry Seed - Tutor
  (455, 45500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Carnivine - Seed Bomb - Tutor
  (455, 45500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Carnivine - Defog - Tutor
  (455, 45500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Carnivine - Bug Bite - Tutor
  (455, 45500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Carnivine - Throat Chop - Tutor
  (455, 45500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Finneon - Pound - Level 1
  (456, 45600, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Attract - Level 10
  (456, 45600, 213, 16, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 16, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Finneon - Captivate - Level 26
  (456, 45600, 445, 16, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 16, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Finneon - Silver Wind - Level 49
  (456, 45600, 318, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Finneon - Soak - Level 54
  (456, 45600, 487, 16, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Finneon - Toxic - TM06
  (456, 45600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Finneon - Hail - TM07
  (456, 45600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Finneon - Hidden Power - TM10
  (456, 45600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Finneon - Ice Beam - TM13
  (456, 45600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Finneon - Blizzard - TM14
  (456, 45600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Finneon - Protect - TM17
  (456, 45600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Finneon - Rain Dance - TM18
  (456, 45600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Finneon - Safeguard - TM20
  (456, 45600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Finneon - Frustration - TM21
  (456, 45600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Finneon - Return - TM27
  (456, 45600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Finneon - Double Team - TM32
  (456, 45600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Finneon - Facade - TM42
  (456, 45600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Finneon - Rest - TM44
  (456, 45600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Finneon - Attract - TM45
  (456, 45600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Finneon - Round - TM48
  (456, 45600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Finneon - Scald - TM55
  (456, 45600, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 30),
  -- Finneon - Payback - TM66
  (456, 45600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 31),
  -- Finneon - Psych Up - TM77
  (456, 45600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 32),
  -- Finneon - Swagger - TM87
  (456, 45600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Finneon - Sleep Talk - TM88
  (456, 45600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Finneon - U-turn - TM89
  (456, 45600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 35),
  -- Finneon - Substitute - TM90
  (456, 45600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Finneon - Surf - TM94
  (456, 45600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Finneon - Nature Power - TM96
  (456, 45600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 38),
  -- Finneon - Waterfall - TM98
  (456, 45600, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 39),
  -- Finneon - Confide - TM100
  (456, 45600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Finneon - Psybeam - Egg
  (456, 45600, 60, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Finneon - Aurora Beam - Egg
  (456, 45600, 62, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Finneon - Agility - Egg
  (456, 45600, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finneon - Confuse Ray - Egg
  (456, 45600, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finneon - Splash - Egg
  (456, 45600, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Flail - Egg
  (456, 45600, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Sweet Kiss - Egg
  (456, 45600, 186, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Charm - Egg
  (456, 45600, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Tickle - Egg
  (456, 45600, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Finneon - Signal Beam - Egg
  (456, 45600, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Finneon - Brine - Egg
  (456, 45600, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Finneon - Aqua Tail - Egg
  (456, 45600, 401, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Finneon - Snore - Tutor
  (456, 45600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Finneon - Icy Wind - Tutor
  (456, 45600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Finneon - Signal Beam - Tutor
  (456, 45600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Finneon - Bounce - Tutor
  (456, 45600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Finneon - Water Pulse - Tutor
  (456, 45600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Finneon - Tailwind - Tutor
  (456, 45600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Finneon - Aqua Tail - Tutor
  (456, 45600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Finneon - Defog - Tutor
  (456, 45600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Lumineon - Pound - Level 1
  (457, 45700, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Gust - Level 1
  (457, 45700, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lumineon - Water Gun - Level 1
  (457, 45700, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lumineon - Attract - Level 1
  (457, 45700, 213, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lumineon - Soak - Level 1
  (457, 45700, 487, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lumineon - Water Gun - Level 6
  (457, 45700, 55, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Lumineon - Attract - Level 10
  (457, 45700, 213, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lumineon - Gust - Level 17
  (457, 45700, 16, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Lumineon - Captivate - Level 26
  (457, 45700, 445, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lumineon - Silver Wind - Level 59
  (457, 45700, 318, 16, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Lumineon - Soak - Level 66
  (457, 45700, 487, 16, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Lumineon - Toxic - TM06
  (457, 45700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Lumineon - Hail - TM07
  (457, 45700, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Lumineon - Hidden Power - TM10
  (457, 45700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Lumineon - Ice Beam - TM13
  (457, 45700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Lumineon - Blizzard - TM14
  (457, 45700, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Lumineon - Hyper Beam - TM15
  (457, 45700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Lumineon - Protect - TM17
  (457, 45700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Lumineon - Rain Dance - TM18
  (457, 45700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Lumineon - Safeguard - TM20
  (457, 45700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Lumineon - Frustration - TM21
  (457, 45700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Lumineon - Return - TM27
  (457, 45700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Lumineon - Double Team - TM32
  (457, 45700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Lumineon - Facade - TM42
  (457, 45700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Lumineon - Rest - TM44
  (457, 45700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Lumineon - Attract - TM45
  (457, 45700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Lumineon - Round - TM48
  (457, 45700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Lumineon - Scald - TM55
  (457, 45700, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 35),
  -- Lumineon - Payback - TM66
  (457, 45700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 36),
  -- Lumineon - Giga Impact - TM68
  (457, 45700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Lumineon - Psych Up - TM77
  (457, 45700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Lumineon - Swagger - TM87
  (457, 45700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Lumineon - Sleep Talk - TM88
  (457, 45700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Lumineon - U-turn - TM89
  (457, 45700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 41),
  -- Lumineon - Substitute - TM90
  (457, 45700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Lumineon - Surf - TM94
  (457, 45700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 43),
  -- Lumineon - Waterfall - TM98
  (457, 45700, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 44),
  -- Lumineon - Confide - TM100
  (457, 45700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Lumineon - Snore - Tutor
  (457, 45700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Lumineon - Icy Wind - Tutor
  (457, 45700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Lumineon - Signal Beam - Tutor
  (457, 45700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Lumineon - Bounce - Tutor
  (457, 45700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Lumineon - Water Pulse - Tutor
  (457, 45700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Lumineon - Tailwind - Tutor
  (457, 45700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Lumineon - Aqua Tail - Tutor
  (457, 45700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Lumineon - Defog - Tutor
  (457, 45700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Bubble - Level 1
  (458, 45800, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 3
  (458, 45800, 48, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Mantyke - Bubble Beam - Level 7
  (458, 45800, 61, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Mantyke - Confuse Ray - Level 11
  (458, 45800, 109, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Mantyke - Wing Attack - Level 14
  (458, 45800, 17, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Mantyke - Headbutt - Level 16
  (458, 45800, 29, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mantyke - Water Pulse - Level 19
  (458, 45800, 352, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Mantyke - Wide Guard - Level 23
  (458, 45800, 469, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Mantyke - Take Down - Level 27
  (458, 45800, 36, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Mantyke - Agility - Level 32
  (458, 45800, 97, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mantyke - Air Slash - Level 36
  (458, 45800, 403, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mantyke - Aqua Ring - Level 39
  (458, 45800, 392, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Mantyke - Bounce - Level 46
  (458, 45800, 340, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Mantyke - Hydro Pump - Level 49
  (458, 45800, 56, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mantyke - Toxic - TM06
  (458, 45800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Mantyke - Hail - TM07
  (458, 45800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Mantyke - Hidden Power - TM10
  (458, 45800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Mantyke - Ice Beam - TM13
  (458, 45800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Mantyke - Blizzard - TM14
  (458, 45800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Mantyke - Protect - TM17
  (458, 45800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Mantyke - Rain Dance - TM18
  (458, 45800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Mantyke - Frustration - TM21
  (458, 45800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Mantyke - Earthquake - TM26
  (458, 45800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Mantyke - Return - TM27
  (458, 45800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Mantyke - Double Team - TM32
  (458, 45800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Mantyke - Aerial Ace - TM40
  (458, 45800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Mantyke - Facade - TM42
  (458, 45800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Mantyke - Rest - TM44
  (458, 45800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Mantyke - Attract - TM45
  (458, 45800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Mantyke - Round - TM48
  (458, 45800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Mantyke - Scald - TM55
  (458, 45800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 32),
  -- Mantyke - Acrobatics - TM62
  (458, 45800, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 33),
  -- Mantyke - Bulldoze - TM78
  (458, 45800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 34),
  -- Mantyke - Rock Slide - TM80
  (458, 45800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Mantyke - Swagger - TM87
  (458, 45800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Mantyke - Sleep Talk - TM88
  (458, 45800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Mantyke - Substitute - TM90
  (458, 45800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Mantyke - Surf - TM94
  (458, 45800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 39),
  -- Mantyke - Waterfall - TM98
  (458, 45800, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 40),
  -- Mantyke - Confide - TM100
  (458, 45800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Mantyke - Slam - Egg
  (458, 45800, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantyke - Hydro Pump - Egg
  (458, 45800, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mantyke - Haze - Egg
  (458, 45800, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mantyke - Amnesia - Egg
  (458, 45800, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mantyke - Splash - Egg
  (458, 45800, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantyke - Twister - Egg
  (458, 45800, 239, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantyke - Mirror Coat - Egg
  (458, 45800, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantyke - Mud Sport - Egg
  (458, 45800, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantyke - Signal Beam - Egg
  (458, 45800, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mantyke - Water Sport - Egg
  (458, 45800, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mantyke - Tailwind - Egg
  (458, 45800, 366, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantyke - Wide Guard - Egg
  (458, 45800, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mantyke - Snore - Tutor
  (458, 45800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Mantyke - Icy Wind - Tutor
  (458, 45800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Mantyke - Helping Hand - Tutor
  (458, 45800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mantyke - Signal Beam - Tutor
  (458, 45800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mantyke - Bounce - Tutor
  (458, 45800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Mantyke - Water Pulse - Tutor
  (458, 45800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Mantyke - Tailwind - Tutor
  (458, 45800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Snover - Leer - Level 1
  (459, 45900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Razor Leaf - Level 5
  (459, 45900, 75, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Icy Wind - Level 9
  (459, 45900, 196, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Snover - Grass Whistle - Level 13
  (459, 45900, 320, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snover - Swagger - Level 17
  (459, 45900, 207, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Snover - Mist - Level 21
  (459, 45900, 54, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Snover - Ice Shard - Level 26
  (459, 45900, 420, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 31
  (459, 45900, 275, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 36
  (459, 45900, 452, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 41
  (459, 45900, 59, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 46
  (459, 45900, 329, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snover - Toxic - TM06
  (459, 45900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Snover - Hail - TM07
  (459, 45900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 14),
  -- Snover - Hidden Power - TM10
  (459, 45900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Snover - Ice Beam - TM13
  (459, 45900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 16),
  -- Snover - Blizzard - TM14
  (459, 45900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 17),
  -- Snover - Light Screen - TM16
  (459, 45900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 18),
  -- Snover - Protect - TM17
  (459, 45900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Snover - Rain Dance - TM18
  (459, 45900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Snover - Safeguard - TM20
  (459, 45900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Snover - Frustration - TM21
  (459, 45900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Snover - Solar Beam - TM22
  (459, 45900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Snover - Return - TM27
  (459, 45900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Snover - Shadow Ball - TM30
  (459, 45900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 25),
  -- Snover - Double Team - TM32
  (459, 45900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Snover - Facade - TM42
  (459, 45900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Snover - Rest - TM44
  (459, 45900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Snover - Attract - TM45
  (459, 45900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Snover - Round - TM48
  (459, 45900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Snover - Energy Ball - TM53
  (459, 45900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 31),
  -- Snover - Swords Dance - TM75
  (459, 45900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 32),
  -- Snover - Frost Breath - TM79
  (459, 45900, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 33),
  -- Snover - Grass Knot - TM86
  (459, 45900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 34),
  -- Snover - Swagger - TM87
  (459, 45900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Snover - Sleep Talk - TM88
  (459, 45900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Snover - Substitute - TM90
  (459, 45900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Snover - Confide - TM100
  (459, 45900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Snover - Stomp - Egg
  (459, 45900, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snover - Double-Edge - Egg
  (459, 45900, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snover - Mist - Egg
  (459, 45900, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snover - Leech Seed - Egg
  (459, 45900, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snover - Growth - Egg
  (459, 45900, 74, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snover - Skull Bash - Egg
  (459, 45900, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Bullet Seed - Egg
  (459, 45900, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Magical Leaf - Egg
  (459, 45900, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Natural Gift - Egg
  (459, 45900, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snover - Seed Bomb - Egg
  (459, 45900, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snover - Avalanche - Egg
  (459, 45900, 419, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snover - Ice Punch - Tutor
  (459, 45900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Snover - Snore - Tutor
  (459, 45900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Snover - Icy Wind - Tutor
  (459, 45900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Snover - Giga Drain - Tutor
  (459, 45900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Snover - Iron Tail - Tutor
  (459, 45900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Snover - Synthesis - Tutor
  (459, 45900, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Snover - Role Play - Tutor
  (459, 45900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Snover - Water Pulse - Tutor
  (459, 45900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Snover - Worry Seed - Tutor
  (459, 45900, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Snover - Seed Bomb - Tutor
  (459, 45900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Abomasnow - Ice Punch - Level 1
  (460, 46000, 8, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Razor Leaf - Level 1
  (460, 46000, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Icy Wind - Level 1
  (460, 46000, 196, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Razor Leaf - Level 5
  (460, 46000, 75, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Abomasnow - Icy Wind - Level 9
  (460, 46000, 196, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Abomasnow - Grass Whistle - Level 13
  (460, 46000, 320, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Abomasnow - Swagger - Level 17
  (460, 46000, 207, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Abomasnow - Mist - Level 21
  (460, 46000, 54, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Abomasnow - Ice Shard - Level 26
  (460, 46000, 420, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Abomasnow - Ingrain - Level 31
  (460, 46000, 275, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Abomasnow - Wood Hammer - Level 36
  (460, 46000, 452, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Abomasnow - Blizzard - Level 47
  (460, 46000, 59, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Abomasnow - Sheer Cold - Level 58
  (460, 46000, 329, 16, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Abomasnow - Toxic - TM06
  (460, 46000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Abomasnow - Hail - TM07
  (460, 46000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Abomasnow - Hidden Power - TM10
  (460, 46000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Abomasnow - Ice Beam - TM13
  (460, 46000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Abomasnow - Blizzard - TM14
  (460, 46000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Abomasnow - Hyper Beam - TM15
  (460, 46000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Abomasnow - Light Screen - TM16
  (460, 46000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Abomasnow - Protect - TM17
  (460, 46000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Abomasnow - Rain Dance - TM18
  (460, 46000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Abomasnow - Safeguard - TM20
  (460, 46000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Abomasnow - Frustration - TM21
  (460, 46000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Abomasnow - Solar Beam - TM22
  (460, 46000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Abomasnow - Earthquake - TM26
  (460, 46000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Abomasnow - Return - TM27
  (460, 46000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Abomasnow - Shadow Ball - TM30
  (460, 46000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Abomasnow - Brick Break - TM31
  (460, 46000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Abomasnow - Double Team - TM32
  (460, 46000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Abomasnow - Rock Tomb - TM39
  (460, 46000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Abomasnow - Facade - TM42
  (460, 46000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Abomasnow - Rest - TM44
  (460, 46000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Abomasnow - Attract - TM45
  (460, 46000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Abomasnow - Round - TM48
  (460, 46000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Abomasnow - Focus Blast - TM52
  (460, 46000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Abomasnow - Energy Ball - TM53
  (460, 46000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Abomasnow - Fling - TM56
  (460, 46000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Abomasnow - Giga Impact - TM68
  (460, 46000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Abomasnow - Swords Dance - TM75
  (460, 46000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Abomasnow - Bulldoze - TM78
  (460, 46000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Abomasnow - Frost Breath - TM79
  (460, 46000, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 44),
  -- Abomasnow - Rock Slide - TM80
  (460, 46000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Abomasnow - Grass Knot - TM86
  (460, 46000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Abomasnow - Swagger - TM87
  (460, 46000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Abomasnow - Sleep Talk - TM88
  (460, 46000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Abomasnow - Substitute - TM90
  (460, 46000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Abomasnow - Confide - TM100
  (460, 46000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Abomasnow - Ice Punch - Tutor
  (460, 46000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Abomasnow - Snore - Tutor
  (460, 46000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Abomasnow - Icy Wind - Tutor
  (460, 46000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Abomasnow - Outrage - Tutor
  (460, 46000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Abomasnow - Giga Drain - Tutor
  (460, 46000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Abomasnow - Iron Tail - Tutor
  (460, 46000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Abomasnow - Synthesis - Tutor
  (460, 46000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Abomasnow - Focus Punch - Tutor
  (460, 46000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Abomasnow - Role Play - Tutor
  (460, 46000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Abomasnow - Block - Tutor
  (460, 46000, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Abomasnow - Water Pulse - Tutor
  (460, 46000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Abomasnow - Worry Seed - Tutor
  (460, 46000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Abomasnow - Seed Bomb - Tutor
  (460, 46000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Abomasnow - Stomping Tantrum - Tutor
  (460, 46000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Revenge - Level 1
  (461, 46100, 279, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Embargo - Level 1
  (461, 46100, 373, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Quick Attack - Level 8
  (461, 46100, 98, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Weavile - Feint Attack - Level 10
  (461, 46100, 185, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Weavile - Icy Wind - Level 14
  (461, 46100, 196, 16, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Weavile - Fury Swipes - Level 16
  (461, 46100, 154, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Weavile - Nasty Plot - Level 20
  (461, 46100, 417, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Weavile - Metal Claw - Level 22
  (461, 46100, 232, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Weavile - Hone Claws - Level 25
  (461, 46100, 468, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 28
  (461, 46100, 374, 16, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Weavile - Screech - Level 32
  (461, 46100, 103, 16, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Weavile - Night Slash - Level 35
  (461, 46100, 400, 16, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Weavile - Snatch - Level 40
  (461, 46100, 289, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Weavile - Punishment - Level 44
  (461, 46100, 386, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Weavile - Dark Pulse - Level 47
  (461, 46100, 399, 16, NULL, 1, 47, NULL, NULL, NULL, 20),
  -- Weavile - Calm Mind - TM04
  (461, 46100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Weavile - Toxic - TM06
  (461, 46100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Weavile - Hail - TM07
  (461, 46100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Weavile - Hidden Power - TM10
  (461, 46100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Weavile - Sunny Day - TM11
  (461, 46100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Weavile - Taunt - TM12
  (461, 46100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Weavile - Ice Beam - TM13
  (461, 46100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Weavile - Blizzard - TM14
  (461, 46100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Weavile - Hyper Beam - TM15
  (461, 46100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Weavile - Protect - TM17
  (461, 46100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Weavile - Rain Dance - TM18
  (461, 46100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Weavile - Frustration - TM21
  (461, 46100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Weavile - Return - TM27
  (461, 46100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Weavile - Shadow Ball - TM30
  (461, 46100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Weavile - Brick Break - TM31
  (461, 46100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Weavile - Double Team - TM32
  (461, 46100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Weavile - Reflect - TM33
  (461, 46100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Weavile - Aerial Ace - TM40
  (461, 46100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Weavile - Torment - TM41
  (461, 46100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 39),
  -- Weavile - Facade - TM42
  (461, 46100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Weavile - Rest - TM44
  (461, 46100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Weavile - Attract - TM45
  (461, 46100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Weavile - Thief - TM46
  (461, 46100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Weavile - Low Sweep - TM47
  (461, 46100, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 44),
  -- Weavile - Round - TM48
  (461, 46100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Weavile - Focus Blast - TM52
  (461, 46100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Weavile - False Swipe - TM54
  (461, 46100, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 47),
  -- Weavile - Fling - TM56
  (461, 46100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 48),
  -- Weavile - Embargo - TM63
  (461, 46100, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 49),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 50),
  -- Weavile - Payback - TM66
  (461, 46100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 51),
  -- Weavile - Giga Impact - TM68
  (461, 46100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Weavile - Swords Dance - TM75
  (461, 46100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 53),
  -- Weavile - Psych Up - TM77
  (461, 46100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 54),
  -- Weavile - X-Scissor - TM81
  (461, 46100, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 55),
  -- Weavile - Poison Jab - TM84
  (461, 46100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 56),
  -- Weavile - Dream Eater - TM85
  (461, 46100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 57),
  -- Weavile - Swagger - TM87
  (461, 46100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Weavile - Sleep Talk - TM88
  (461, 46100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Weavile - Substitute - TM90
  (461, 46100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Weavile - Surf - TM94
  (461, 46100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 61),
  -- Weavile - Snarl - TM95
  (461, 46100, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 62),
  -- Weavile - Dark Pulse - TM97
  (461, 46100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 63),
  -- Weavile - Confide - TM100
  (461, 46100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 64),
  -- Weavile - Ice Punch - Tutor
  (461, 46100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Weavile - Low Kick - Tutor
  (461, 46100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Weavile - Snore - Tutor
  (461, 46100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Weavile - Spite - Tutor
  (461, 46100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Weavile - Icy Wind - Tutor
  (461, 46100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Weavile - Iron Tail - Tutor
  (461, 46100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Weavile - Focus Punch - Tutor
  (461, 46100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Weavile - Knock Off - Tutor
  (461, 46100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Weavile - Snatch - Tutor
  (461, 46100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Weavile - Foul Play - Tutor
  (461, 46100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Weavile - Laser Focus - Tutor
  (461, 46100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Weavile - Throat Chop - Tutor
  (461, 46100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Thunder Wave - Level 1
  (462, 46200, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Barrier - Level 1
  (462, 46200, 112, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Tri Attack - Level 1
  (462, 46200, 161, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magnezone - Zap Cannon - Level 1
  (462, 46200, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Magnezone - Magnetic Flux - Level 1
  (462, 46200, 602, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Magnezone - Electric Terrain - Level 1
  (462, 46200, 604, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Magnezone - Thunder Shock - Level 5
  (462, 46200, 84, 16, NULL, 1, 5, NULL, NULL, NULL, 11),
  -- Magnezone - Thunder Wave - Level 7
  (462, 46200, 86, 16, NULL, 1, 7, NULL, NULL, NULL, 12),
  -- Magnezone - Magnet Bomb - Level 11
  (462, 46200, 443, 16, NULL, 1, 11, NULL, NULL, NULL, 13),
  -- Magnezone - Light Screen - Level 13
  (462, 46200, 113, 16, NULL, 1, 13, NULL, NULL, NULL, 14),
  -- Magnezone - Sonic Boom - Level 17
  (462, 46200, 49, 16, NULL, 1, 17, NULL, NULL, NULL, 15),
  -- Magnezone - Spark - Level 19
  (462, 46200, 209, 16, NULL, 1, 19, NULL, NULL, NULL, 16),
  -- Magnezone - Mirror Shot - Level 23
  (462, 46200, 429, 16, NULL, 1, 23, NULL, NULL, NULL, 17),
  -- Magnezone - Metal Sound - Level 25
  (462, 46200, 319, 16, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Magnezone - Electro Ball - Level 29
  (462, 46200, 486, 16, NULL, 1, 29, NULL, NULL, NULL, 19),
  -- Magnezone - Flash Cannon - Level 33
  (462, 46200, 430, 16, NULL, 1, 33, NULL, NULL, NULL, 20),
  -- Magnezone - Screech - Level 39
  (462, 46200, 103, 16, NULL, 1, 39, NULL, NULL, NULL, 21),
  -- Magnezone - Discharge - Level 43
  (462, 46200, 435, 16, NULL, 1, 43, NULL, NULL, NULL, 22),
  -- Magnezone - Lock-On - Level 49
  (462, 46200, 199, 16, NULL, 1, 49, NULL, NULL, NULL, 23),
  -- Magnezone - Magnet Rise - Level 53
  (462, 46200, 393, 16, NULL, 1, 53, NULL, NULL, NULL, 24),
  -- Magnezone - Gyro Ball - Level 59
  (462, 46200, 360, 16, NULL, 1, 59, NULL, NULL, NULL, 25),
  -- Magnezone - Zap Cannon - Level 63
  (462, 46200, 192, 16, NULL, 1, 63, NULL, NULL, NULL, 26),
  -- Magnezone - Toxic - TM06
  (462, 46200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 27),
  -- Magnezone - Hidden Power - TM10
  (462, 46200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 28),
  -- Magnezone - Sunny Day - TM11
  (462, 46200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 29),
  -- Magnezone - Hyper Beam - TM15
  (462, 46200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 30),
  -- Magnezone - Light Screen - TM16
  (462, 46200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 31),
  -- Magnezone - Protect - TM17
  (462, 46200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 32),
  -- Magnezone - Rain Dance - TM18
  (462, 46200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 33),
  -- Magnezone - Frustration - TM21
  (462, 46200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 34),
  -- Magnezone - Thunderbolt - TM24
  (462, 46200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 35),
  -- Magnezone - Thunder - TM25
  (462, 46200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 36),
  -- Magnezone - Return - TM27
  (462, 46200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Magnezone - Double Team - TM32
  (462, 46200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Magnezone - Reflect - TM33
  (462, 46200, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 39),
  -- Magnezone - Facade - TM42
  (462, 46200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Magnezone - Rest - TM44
  (462, 46200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Magnezone - Round - TM48
  (462, 46200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Magnezone - Charge Beam - TM57
  (462, 46200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Magnezone - Explosion - TM64
  (462, 46200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Magnezone - Giga Impact - TM68
  (462, 46200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Magnezone - Volt Switch - TM72
  (462, 46200, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 46),
  -- Magnezone - Thunder Wave - TM73
  (462, 46200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 47),
  -- Magnezone - Gyro Ball - TM74
  (462, 46200, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 48),
  -- Magnezone - Psych Up - TM77
  (462, 46200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Magnezone - Swagger - TM87
  (462, 46200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Magnezone - Sleep Talk - TM88
  (462, 46200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Magnezone - Substitute - TM90
  (462, 46200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Magnezone - Flash Cannon - TM91
  (462, 46200, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 53),
  -- Magnezone - Wild Charge - TM93
  (462, 46200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 54),
  -- Magnezone - Confide - TM100
  (462, 46200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Magnezone - Snore - Tutor
  (462, 46200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Magnezone - Magic Coat - Tutor
  (462, 46200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Magnezone - Recycle - Tutor
  (462, 46200, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Magnezone - Signal Beam - Tutor
  (462, 46200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Magnezone - Iron Defense - Tutor
  (462, 46200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Magnezone - Shock Wave - Tutor
  (462, 46200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Magnezone - Gravity - Tutor
  (462, 46200, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Magnezone - Magnet Rise - Tutor
  (462, 46200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Magnezone - Iron Head - Tutor
  (462, 46200, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Magnezone - Ally Switch - Tutor
  (462, 46200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Magnezone - Electroweb - Tutor
  (462, 46200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Lickilicky - Lick - Level 1
  (463, 46300, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Wring Out - Level 1
  (463, 46300, 378, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lickilicky - Power Whip - Level 1
  (463, 46300, 438, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lickilicky - Supersonic - Level 5
  (463, 46300, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Lickilicky - Defense Curl - Level 9
  (463, 46300, 111, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lickilicky - Knock Off - Level 13
  (463, 46300, 282, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Lickilicky - Wrap - Level 17
  (463, 46300, 35, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lickilicky - Stomp - Level 21
  (463, 46300, 23, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Lickilicky - Disable - Level 25
  (463, 46300, 50, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Lickilicky - Slam - Level 29
  (463, 46300, 21, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Lickilicky - Rollout - Level 33
  (463, 46300, 205, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lickilicky - Chip Away - Level 37
  (463, 46300, 498, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Lickilicky - Me First - Level 41
  (463, 46300, 382, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Lickilicky - Refresh - Level 45
  (463, 46300, 287, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Lickilicky - Screech - Level 49
  (463, 46300, 103, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Lickilicky - Power Whip - Level 53
  (463, 46300, 438, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lickilicky - Wring Out - Level 57
  (463, 46300, 378, 16, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Lickilicky - Gyro Ball - Level 61
  (463, 46300, 360, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Lickilicky - Work Up - TM01
  (463, 46300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Lickilicky - Toxic - TM06
  (463, 46300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Lickilicky - Hidden Power - TM10
  (463, 46300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Lickilicky - Sunny Day - TM11
  (463, 46300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Lickilicky - Ice Beam - TM13
  (463, 46300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Lickilicky - Blizzard - TM14
  (463, 46300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Lickilicky - Hyper Beam - TM15
  (463, 46300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Lickilicky - Protect - TM17
  (463, 46300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Lickilicky - Rain Dance - TM18
  (463, 46300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Lickilicky - Frustration - TM21
  (463, 46300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Lickilicky - Solar Beam - TM22
  (463, 46300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Lickilicky - Thunderbolt - TM24
  (463, 46300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Lickilicky - Thunder - TM25
  (463, 46300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Lickilicky - Earthquake - TM26
  (463, 46300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Lickilicky - Return - TM27
  (463, 46300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Lickilicky - Shadow Ball - TM30
  (463, 46300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Lickilicky - Brick Break - TM31
  (463, 46300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Lickilicky - Double Team - TM32
  (463, 46300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Lickilicky - Flamethrower - TM35
  (463, 46300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Lickilicky - Sandstorm - TM37
  (463, 46300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 38),
  -- Lickilicky - Fire Blast - TM38
  (463, 46300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 39),
  -- Lickilicky - Rock Tomb - TM39
  (463, 46300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 40),
  -- Lickilicky - Facade - TM42
  (463, 46300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Lickilicky - Rest - TM44
  (463, 46300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Lickilicky - Attract - TM45
  (463, 46300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Lickilicky - Thief - TM46
  (463, 46300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 44),
  -- Lickilicky - Round - TM48
  (463, 46300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Lickilicky - Focus Blast - TM52
  (463, 46300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Lickilicky - Fling - TM56
  (463, 46300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Lickilicky - Brutal Swing - TM59
  (463, 46300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 48),
  -- Lickilicky - Explosion - TM64
  (463, 46300, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 49),
  -- Lickilicky - Giga Impact - TM68
  (463, 46300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Lickilicky - Gyro Ball - TM74
  (463, 46300, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 51),
  -- Lickilicky - Swords Dance - TM75
  (463, 46300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 52),
  -- Lickilicky - Psych Up - TM77
  (463, 46300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Lickilicky - Bulldoze - TM78
  (463, 46300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Lickilicky - Rock Slide - TM80
  (463, 46300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Lickilicky - Dragon Tail - TM82
  (463, 46300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 56),
  -- Lickilicky - Dream Eater - TM85
  (463, 46300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 57),
  -- Lickilicky - Swagger - TM87
  (463, 46300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Lickilicky - Sleep Talk - TM88
  (463, 46300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Lickilicky - Substitute - TM90
  (463, 46300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Lickilicky - Surf - TM94
  (463, 46300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 61),
  -- Lickilicky - Confide - TM100
  (463, 46300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Lickilicky - Fire Punch - Tutor
  (463, 46300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Lickilicky - Ice Punch - Tutor
  (463, 46300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Lickilicky - Thunder Punch - Tutor
  (463, 46300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Lickilicky - Bind - Tutor
  (463, 46300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Lickilicky - Snore - Tutor
  (463, 46300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Lickilicky - Icy Wind - Tutor
  (463, 46300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Lickilicky - Iron Tail - Tutor
  (463, 46300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Lickilicky - Focus Punch - Tutor
  (463, 46300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Lickilicky - Knock Off - Tutor
  (463, 46300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Lickilicky - Block - Tutor
  (463, 46300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Lickilicky - Shock Wave - Tutor
  (463, 46300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Lickilicky - Water Pulse - Tutor
  (463, 46300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Lickilicky - Aqua Tail - Tutor
  (463, 46300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Lickilicky - Zen Headbutt - Tutor
  (463, 46300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Lickilicky - Stomping Tantrum - Tutor
  (463, 46300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Rhyperior - Horn Attack - Level 1
  (464, 46400, 30, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Fury Attack - Level 1
  (464, 46400, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Horn Drill - Level 1
  (464, 46400, 32, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Scary Face - Level 1
  (464, 46400, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Hammer Arm - Level 1
  (464, 46400, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rhyperior - Poison Jab - Level 1
  (464, 46400, 398, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rhyperior - Rock Wrecker - Level 1
  (464, 46400, 439, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Rhyperior - Fury Attack - Level 5
  (464, 46400, 31, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Rhyperior - Scary Face - Level 9
  (464, 46400, 184, 16, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Rhyperior - Smack Down - Level 13
  (464, 46400, 479, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Rhyperior - Stomp - Level 17
  (464, 46400, 23, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Rhyperior - Bulldoze - Level 21
  (464, 46400, 523, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Rhyperior - Chip Away - Level 25
  (464, 46400, 498, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Rhyperior - Rock Blast - Level 29
  (464, 46400, 350, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Rhyperior - Drill Run - Level 33
  (464, 46400, 529, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Rhyperior - Take Down - Level 37
  (464, 46400, 36, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Rhyperior - Stone Edge - Level 41
  (464, 46400, 444, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Rhyperior - Earthquake - Level 48
  (464, 46400, 89, 16, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Rhyperior - Megahorn - Level 55
  (464, 46400, 224, 16, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Rhyperior - Horn Drill - Level 62
  (464, 46400, 32, 16, NULL, 1, 62, NULL, NULL, NULL, 21),
  -- Rhyperior - Rock Wrecker - Level 69
  (464, 46400, 439, 16, NULL, 1, 69, NULL, NULL, NULL, 22),
  -- Rhyperior - Roar - TM05
  (464, 46400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 23),
  -- Rhyperior - Toxic - TM06
  (464, 46400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Rhyperior - Hidden Power - TM10
  (464, 46400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Rhyperior - Sunny Day - TM11
  (464, 46400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Rhyperior - Ice Beam - TM13
  (464, 46400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Rhyperior - Blizzard - TM14
  (464, 46400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Rhyperior - Hyper Beam - TM15
  (464, 46400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Rhyperior - Protect - TM17
  (464, 46400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Rhyperior - Rain Dance - TM18
  (464, 46400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Rhyperior - Frustration - TM21
  (464, 46400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Rhyperior - Smack Down - TM23
  (464, 46400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 33),
  -- Rhyperior - Thunderbolt - TM24
  (464, 46400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 34),
  -- Rhyperior - Thunder - TM25
  (464, 46400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 35),
  -- Rhyperior - Earthquake - TM26
  (464, 46400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Rhyperior - Return - TM27
  (464, 46400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Rhyperior - Brick Break - TM31
  (464, 46400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 38),
  -- Rhyperior - Double Team - TM32
  (464, 46400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Rhyperior - Flamethrower - TM35
  (464, 46400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Rhyperior - Sandstorm - TM37
  (464, 46400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 41),
  -- Rhyperior - Fire Blast - TM38
  (464, 46400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 42),
  -- Rhyperior - Rock Tomb - TM39
  (464, 46400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 43),
  -- Rhyperior - Facade - TM42
  (464, 46400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 44),
  -- Rhyperior - Rest - TM44
  (464, 46400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 45),
  -- Rhyperior - Attract - TM45
  (464, 46400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 46),
  -- Rhyperior - Thief - TM46
  (464, 46400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 47),
  -- Rhyperior - Round - TM48
  (464, 46400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 48),
  -- Rhyperior - Focus Blast - TM52
  (464, 46400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Rhyperior - Fling - TM56
  (464, 46400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Rhyperior - Brutal Swing - TM59
  (464, 46400, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 51),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 52),
  -- Rhyperior - Payback - TM66
  (464, 46400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 53),
  -- Rhyperior - Smart Strike - TM67
  (464, 46400, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 54),
  -- Rhyperior - Giga Impact - TM68
  (464, 46400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 55),
  -- Rhyperior - Rock Polish - TM69
  (464, 46400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 56),
  -- Rhyperior - Stone Edge - TM71
  (464, 46400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 57),
  -- Rhyperior - Swords Dance - TM75
  (464, 46400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 58),
  -- Rhyperior - Bulldoze - TM78
  (464, 46400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 59),
  -- Rhyperior - Rock Slide - TM80
  (464, 46400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 60),
  -- Rhyperior - Dragon Tail - TM82
  (464, 46400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 61),
  -- Rhyperior - Poison Jab - TM84
  (464, 46400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 62),
  -- Rhyperior - Swagger - TM87
  (464, 46400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 63),
  -- Rhyperior - Sleep Talk - TM88
  (464, 46400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 64),
  -- Rhyperior - Substitute - TM90
  (464, 46400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 65),
  -- Rhyperior - Flash Cannon - TM91
  (464, 46400, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 66),
  -- Rhyperior - Surf - TM94
  (464, 46400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 67),
  -- Rhyperior - Confide - TM100
  (464, 46400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 68),
  -- Rhyperior - Fire Punch - Tutor
  (464, 46400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Rhyperior - Ice Punch - Tutor
  (464, 46400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Rhyperior - Thunder Punch - Tutor
  (464, 46400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Rhyperior - Snore - Tutor
  (464, 46400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Rhyperior - Spite - Tutor
  (464, 46400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Rhyperior - Icy Wind - Tutor
  (464, 46400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Rhyperior - Outrage - Tutor
  (464, 46400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Rhyperior - Iron Tail - Tutor
  (464, 46400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Rhyperior - Uproar - Tutor
  (464, 46400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Rhyperior - Focus Punch - Tutor
  (464, 46400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Rhyperior - Superpower - Tutor
  (464, 46400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Rhyperior - Endeavor - Tutor
  (464, 46400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Rhyperior - Block - Tutor
  (464, 46400, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Rhyperior - Shock Wave - Tutor
  (464, 46400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Rhyperior - Aqua Tail - Tutor
  (464, 46400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Rhyperior - Dragon Pulse - Tutor
  (464, 46400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Rhyperior - Earth Power - Tutor
  (464, 46400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Rhyperior - Iron Head - Tutor
  (464, 46400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Rhyperior - Stealth Rock - Tutor
  (464, 46400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Rhyperior - Drill Run - Tutor
  (464, 46400, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Rhyperior - Stomping Tantrum - Tutor
  (464, 46400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),

  -- Tangrowth - Constrict - Level 1
  (465, 46500, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Ingrain - Level 1
  (465, 46500, 275, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangrowth - Block - Level 1
  (465, 46500, 335, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tangrowth - Sleep Powder - Level 4
  (465, 46500, 79, 16, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Tangrowth - Vine Whip - Level 7
  (465, 46500, 22, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Tangrowth - Absorb - Level 10
  (465, 46500, 71, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Tangrowth - Poison Powder - Level 14
  (465, 46500, 77, 16, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Tangrowth - Bind - Level 17
  (465, 46500, 20, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Tangrowth - Growth - Level 20
  (465, 46500, 74, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Tangrowth - Mega Drain - Level 23
  (465, 46500, 72, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Tangrowth - Knock Off - Level 27
  (465, 46500, 282, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Tangrowth - Stun Spore - Level 30
  (465, 46500, 78, 16, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Tangrowth - Natural Gift - Level 33
  (465, 46500, 363, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Tangrowth - Giga Drain - Level 36
  (465, 46500, 202, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Tangrowth - Ancient Power - Level 40
  (465, 46500, 246, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Tangrowth - Slam - Level 43
  (465, 46500, 21, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Tangrowth - Tickle - Level 46
  (465, 46500, 321, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Tangrowth - Wring Out - Level 49
  (465, 46500, 378, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Tangrowth - Grassy Terrain - Level 50
  (465, 46500, 580, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Tangrowth - Power Whip - Level 53
  (465, 46500, 438, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Tangrowth - Block - Level 56
  (465, 46500, 335, 16, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Tangrowth - Toxic - TM06
  (465, 46500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Tangrowth - Hidden Power - TM10
  (465, 46500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Tangrowth - Sunny Day - TM11
  (465, 46500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Tangrowth - Hyper Beam - TM15
  (465, 46500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Tangrowth - Protect - TM17
  (465, 46500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Tangrowth - Frustration - TM21
  (465, 46500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Tangrowth - Solar Beam - TM22
  (465, 46500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Tangrowth - Earthquake - TM26
  (465, 46500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Tangrowth - Return - TM27
  (465, 46500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Tangrowth - Brick Break - TM31
  (465, 46500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Tangrowth - Double Team - TM32
  (465, 46500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Tangrowth - Reflect - TM33
  (465, 46500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Tangrowth - Sludge Bomb - TM36
  (465, 46500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 34),
  -- Tangrowth - Rock Tomb - TM39
  (465, 46500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Tangrowth - Aerial Ace - TM40
  (465, 46500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Tangrowth - Facade - TM42
  (465, 46500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Tangrowth - Rest - TM44
  (465, 46500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Tangrowth - Attract - TM45
  (465, 46500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Tangrowth - Thief - TM46
  (465, 46500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Tangrowth - Round - TM48
  (465, 46500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Tangrowth - Focus Blast - TM52
  (465, 46500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Tangrowth - Energy Ball - TM53
  (465, 46500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 43),
  -- Tangrowth - Fling - TM56
  (465, 46500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Tangrowth - Payback - TM66
  (465, 46500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Tangrowth - Giga Impact - TM68
  (465, 46500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Tangrowth - Swords Dance - TM75
  (465, 46500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 47),
  -- Tangrowth - Psych Up - TM77
  (465, 46500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Tangrowth - Bulldoze - TM78
  (465, 46500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Tangrowth - Rock Slide - TM80
  (465, 46500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Tangrowth - Infestation - TM83
  (465, 46500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 51),
  -- Tangrowth - Poison Jab - TM84
  (465, 46500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 52),
  -- Tangrowth - Grass Knot - TM86
  (465, 46500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 53),
  -- Tangrowth - Swagger - TM87
  (465, 46500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Tangrowth - Sleep Talk - TM88
  (465, 46500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Tangrowth - Substitute - TM90
  (465, 46500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Tangrowth - Nature Power - TM96
  (465, 46500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 57),
  -- Tangrowth - Confide - TM100
  (465, 46500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Tangrowth - Bind - Tutor
  (465, 46500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Tangrowth - Snore - Tutor
  (465, 46500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Tangrowth - Giga Drain - Tutor
  (465, 46500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Tangrowth - Pain Split - Tutor
  (465, 46500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Tangrowth - Synthesis - Tutor
  (465, 46500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Tangrowth - Knock Off - Tutor
  (465, 46500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Tangrowth - Endeavor - Tutor
  (465, 46500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Tangrowth - Block - Tutor
  (465, 46500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Tangrowth - Shock Wave - Tutor
  (465, 46500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Tangrowth - Worry Seed - Tutor
  (465, 46500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Tangrowth - Seed Bomb - Tutor
  (465, 46500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Tangrowth - Stomping Tantrum - Tutor
  (465, 46500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Electivire - Fire Punch - Level 1
  (466, 46600, 7, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Low Kick - Level 1
  (466, 46600, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electivire - Ion Deluge - Level 1
  (466, 46600, 569, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Electivire - Electric Terrain - Level 1
  (466, 46600, 604, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Electivire - Thunder Shock - Level 5
  (466, 46600, 84, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Electivire - Low Kick - Level 8
  (466, 46600, 67, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Electivire - Swift - Level 12
  (466, 46600, 129, 16, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Electivire - Shock Wave - Level 15
  (466, 46600, 351, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Electivire - Thunder Wave - Level 19
  (466, 46600, 86, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Electivire - Electro Ball - Level 22
  (466, 46600, 486, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Electivire - Light Screen - Level 26
  (466, 46600, 113, 16, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Electivire - Thunder Punch - Level 29
  (466, 46600, 9, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Electivire - Discharge - Level 36
  (466, 46600, 435, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Electivire - Screech - Level 42
  (466, 46600, 103, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Electivire - Thunderbolt - Level 49
  (466, 46600, 85, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Electivire - Thunder - Level 55
  (466, 46600, 87, 16, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Electivire - Giga Impact - Level 62
  (466, 46600, 416, 16, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Electivire - Electric Terrain - Level 65
  (466, 46600, 604, 16, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Electivire - Toxic - TM06
  (466, 46600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Electivire - Hidden Power - TM10
  (466, 46600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Electivire - Taunt - TM12
  (466, 46600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Electivire - Hyper Beam - TM15
  (466, 46600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Electivire - Light Screen - TM16
  (466, 46600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Electivire - Protect - TM17
  (466, 46600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Electivire - Rain Dance - TM18
  (466, 46600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Electivire - Frustration - TM21
  (466, 46600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Electivire - Thunderbolt - TM24
  (466, 46600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Electivire - Thunder - TM25
  (466, 46600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Electivire - Earthquake - TM26
  (466, 46600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Electivire - Return - TM27
  (466, 46600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Electivire - Psychic - TM29
  (466, 46600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Electivire - Brick Break - TM31
  (466, 46600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Electivire - Double Team - TM32
  (466, 46600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Electivire - Flamethrower - TM35
  (466, 46600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Electivire - Rock Tomb - TM39
  (466, 46600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Electivire - Torment - TM41
  (466, 46600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 39),
  -- Electivire - Facade - TM42
  (466, 46600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Electivire - Rest - TM44
  (466, 46600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Electivire - Attract - TM45
  (466, 46600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Electivire - Thief - TM46
  (466, 46600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Electivire - Low Sweep - TM47
  (466, 46600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 44),
  -- Electivire - Round - TM48
  (466, 46600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Electivire - Focus Blast - TM52
  (466, 46600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Electivire - Fling - TM56
  (466, 46600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Electivire - Charge Beam - TM57
  (466, 46600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Electivire - Giga Impact - TM68
  (466, 46600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Electivire - Volt Switch - TM72
  (466, 46600, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 50),
  -- Electivire - Thunder Wave - TM73
  (466, 46600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 51),
  -- Electivire - Bulldoze - TM78
  (466, 46600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Electivire - Rock Slide - TM80
  (466, 46600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Electivire - Swagger - TM87
  (466, 46600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Electivire - Sleep Talk - TM88
  (466, 46600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Electivire - Substitute - TM90
  (466, 46600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Electivire - Wild Charge - TM93
  (466, 46600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 57),
  -- Electivire - Confide - TM100
  (466, 46600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Electivire - Fire Punch - Tutor
  (466, 46600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Electivire - Ice Punch - Tutor
  (466, 46600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Electivire - Thunder Punch - Tutor
  (466, 46600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Electivire - Low Kick - Tutor
  (466, 46600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Electivire - Snore - Tutor
  (466, 46600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Electivire - Iron Tail - Tutor
  (466, 46600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Electivire - Focus Punch - Tutor
  (466, 46600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Electivire - Helping Hand - Tutor
  (466, 46600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Electivire - Signal Beam - Tutor
  (466, 46600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Electivire - Covet - Tutor
  (466, 46600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Electivire - Shock Wave - Tutor
  (466, 46600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Electivire - Magnet Rise - Tutor
  (466, 46600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Electivire - Electroweb - Tutor
  (466, 46600, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Electivire - Dual Chop - Tutor
  (466, 46600, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Electivire - Stomping Tantrum - Tutor
  (466, 46600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),

  -- Magmortar - Thunder Punch - Level 1
  (467, 46700, 9, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magmortar - Ember - Level 5
  (467, 46700, 52, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Magmortar - Smokescreen - Level 8
  (467, 46700, 108, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Magmortar - Feint Attack - Level 12
  (467, 46700, 185, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Spin - Level 15
  (467, 46700, 83, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Magmortar - Clear Smog - Level 19
  (467, 46700, 499, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Magmortar - Flame Burst - Level 22
  (467, 46700, 481, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Magmortar - Confuse Ray - Level 26
  (467, 46700, 109, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Magmortar - Fire Punch - Level 29
  (467, 46700, 7, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Magmortar - Lava Plume - Level 36
  (467, 46700, 436, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Magmortar - Sunny Day - Level 42
  (467, 46700, 241, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Magmortar - Flamethrower - Level 49
  (467, 46700, 53, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Magmortar - Fire Blast - Level 55
  (467, 46700, 126, 16, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Magmortar - Hyper Beam - Level 62
  (467, 46700, 63, 16, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Magmortar - Toxic - TM06
  (467, 46700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Magmortar - Hidden Power - TM10
  (467, 46700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Magmortar - Sunny Day - TM11
  (467, 46700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Magmortar - Taunt - TM12
  (467, 46700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Magmortar - Hyper Beam - TM15
  (467, 46700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Magmortar - Protect - TM17
  (467, 46700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Magmortar - Frustration - TM21
  (467, 46700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Magmortar - Solar Beam - TM22
  (467, 46700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Magmortar - Thunderbolt - TM24
  (467, 46700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Magmortar - Earthquake - TM26
  (467, 46700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Magmortar - Return - TM27
  (467, 46700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Magmortar - Psychic - TM29
  (467, 46700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Magmortar - Brick Break - TM31
  (467, 46700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Magmortar - Double Team - TM32
  (467, 46700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Magmortar - Flamethrower - TM35
  (467, 46700, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Magmortar - Fire Blast - TM38
  (467, 46700, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 34),
  -- Magmortar - Rock Tomb - TM39
  (467, 46700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Magmortar - Torment - TM41
  (467, 46700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Magmortar - Facade - TM42
  (467, 46700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Magmortar - Flame Charge - TM43
  (467, 46700, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 38),
  -- Magmortar - Rest - TM44
  (467, 46700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Magmortar - Attract - TM45
  (467, 46700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Magmortar - Thief - TM46
  (467, 46700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Magmortar - Low Sweep - TM47
  (467, 46700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 42),
  -- Magmortar - Round - TM48
  (467, 46700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Magmortar - Overheat - TM50
  (467, 46700, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 44),
  -- Magmortar - Focus Blast - TM52
  (467, 46700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Magmortar - Fling - TM56
  (467, 46700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Magmortar - Will-O-Wisp - TM61
  (467, 46700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 47),
  -- Magmortar - Giga Impact - TM68
  (467, 46700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Magmortar - Bulldoze - TM78
  (467, 46700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Magmortar - Rock Slide - TM80
  (467, 46700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Magmortar - Swagger - TM87
  (467, 46700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Magmortar - Sleep Talk - TM88
  (467, 46700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Magmortar - Substitute - TM90
  (467, 46700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Magmortar - Confide - TM100
  (467, 46700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Magmortar - Fire Punch - Tutor
  (467, 46700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Magmortar - Thunder Punch - Tutor
  (467, 46700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Magmortar - Low Kick - Tutor
  (467, 46700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Magmortar - Snore - Tutor
  (467, 46700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Magmortar - Iron Tail - Tutor
  (467, 46700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Magmortar - Heat Wave - Tutor
  (467, 46700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Magmortar - Focus Punch - Tutor
  (467, 46700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Magmortar - Helping Hand - Tutor
  (467, 46700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Magmortar - Covet - Tutor
  (467, 46700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Magmortar - Dual Chop - Tutor
  (467, 46700, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Magmortar - Stomping Tantrum - Tutor
  (467, 46700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Togekiss - Sky Attack - Level 1
  (468, 46800, 143, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Extreme Speed - Level 1
  (468, 46800, 245, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togekiss - Aura Sphere - Level 1
  (468, 46800, 396, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togekiss - Air Slash - Level 1
  (468, 46800, 403, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togekiss - After You - Level 1
  (468, 46800, 495, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togekiss - Work Up - TM01
  (468, 46800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 6),
  -- Togekiss - Psyshock - TM03
  (468, 46800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 7),
  -- Togekiss - Toxic - TM06
  (468, 46800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Togekiss - Hidden Power - TM10
  (468, 46800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Togekiss - Sunny Day - TM11
  (468, 46800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Togekiss - Hyper Beam - TM15
  (468, 46800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 11),
  -- Togekiss - Light Screen - TM16
  (468, 46800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 12),
  -- Togekiss - Protect - TM17
  (468, 46800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 13),
  -- Togekiss - Rain Dance - TM18
  (468, 46800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 14),
  -- Togekiss - Roost - TM19
  (468, 46800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 15),
  -- Togekiss - Safeguard - TM20
  (468, 46800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 16),
  -- Togekiss - Frustration - TM21
  (468, 46800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Togekiss - Solar Beam - TM22
  (468, 46800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 18),
  -- Togekiss - Return - TM27
  (468, 46800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Togekiss - Psychic - TM29
  (468, 46800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 20),
  -- Togekiss - Shadow Ball - TM30
  (468, 46800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 21),
  -- Togekiss - Brick Break - TM31
  (468, 46800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 22),
  -- Togekiss - Double Team - TM32
  (468, 46800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Togekiss - Reflect - TM33
  (468, 46800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 24),
  -- Togekiss - Flamethrower - TM35
  (468, 46800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 25),
  -- Togekiss - Fire Blast - TM38
  (468, 46800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 26),
  -- Togekiss - Aerial Ace - TM40
  (468, 46800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Togekiss - Facade - TM42
  (468, 46800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Togekiss - Rest - TM44
  (468, 46800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Togekiss - Attract - TM45
  (468, 46800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Togekiss - Round - TM48
  (468, 46800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Togekiss - Echoed Voice - TM49
  (468, 46800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Togekiss - Steel Wing - TM51
  (468, 46800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 33),
  -- Togekiss - Fling - TM56
  (468, 46800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Togekiss - Giga Impact - TM68
  (468, 46800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Togekiss - Thunder Wave - TM73
  (468, 46800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 36),
  -- Togekiss - Fly - TM76
  (468, 46800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 37),
  -- Togekiss - Psych Up - TM77
  (468, 46800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Togekiss - Dream Eater - TM85
  (468, 46800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 39),
  -- Togekiss - Grass Knot - TM86
  (468, 46800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 40),
  -- Togekiss - Swagger - TM87
  (468, 46800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Togekiss - Sleep Talk - TM88
  (468, 46800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Togekiss - Substitute - TM90
  (468, 46800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Togekiss - Dazzling Gleam - TM99
  (468, 46800, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 44),
  -- Togekiss - Confide - TM100
  (468, 46800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Togekiss - Sky Attack - Tutor
  (468, 46800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Togekiss - Snore - Tutor
  (468, 46800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Togekiss - Heal Bell - Tutor
  (468, 46800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Togekiss - Heat Wave - Tutor
  (468, 46800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Togekiss - Focus Punch - Tutor
  (468, 46800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Togekiss - Trick - Tutor
  (468, 46800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Togekiss - Magic Coat - Tutor
  (468, 46800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Togekiss - Endeavor - Tutor
  (468, 46800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Togekiss - Hyper Voice - Tutor
  (468, 46800, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Togekiss - Signal Beam - Tutor
  (468, 46800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Togekiss - Covet - Tutor
  (468, 46800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Togekiss - Shock Wave - Tutor
  (468, 46800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Togekiss - Water Pulse - Tutor
  (468, 46800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Togekiss - Tailwind - Tutor
  (468, 46800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Togekiss - Last Resort - Tutor
  (468, 46800, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Togekiss - Drain Punch - Tutor
  (468, 46800, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Togekiss - Zen Headbutt - Tutor
  (468, 46800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Togekiss - Defog - Tutor
  (468, 46800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Togekiss - Telekinesis - Tutor
  (468, 46800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Togekiss - After You - Tutor
  (468, 46800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Togekiss - Laser Focus - Tutor
  (468, 46800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Yanmega - Tackle - Level 1
  (469, 46900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Quick Attack - Level 1
  (469, 46900, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanmega - Double Team - Level 1
  (469, 46900, 104, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yanmega - Foresight - Level 1
  (469, 46900, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yanmega - Night Slash - Level 1
  (469, 46900, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Yanmega - Air Slash - Level 1
  (469, 46900, 403, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Yanmega - Bug Buzz - Level 1
  (469, 46900, 405, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Yanmega - Bug Bite - Level 1
  (469, 46900, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Yanmega - Quick Attack - Level 6
  (469, 46900, 98, 16, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Yanmega - Double Team - Level 11
  (469, 46900, 104, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Yanmega - Sonic Boom - Level 14
  (469, 46900, 49, 16, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 16, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Yanmega - Pursuit - Level 30
  (469, 46900, 228, 16, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 16, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Yanmega - Air Slash - Level 54
  (469, 46900, 403, 16, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Yanmega - Bug Buzz - Level 57
  (469, 46900, 405, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Yanmega - Toxic - TM06
  (469, 46900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Yanmega - Hidden Power - TM10
  (469, 46900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Yanmega - Sunny Day - TM11
  (469, 46900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Yanmega - Hyper Beam - TM15
  (469, 46900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Yanmega - Protect - TM17
  (469, 46900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Yanmega - Roost - TM19
  (469, 46900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 28),
  -- Yanmega - Frustration - TM21
  (469, 46900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Yanmega - Solar Beam - TM22
  (469, 46900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Yanmega - Return - TM27
  (469, 46900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Yanmega - Leech Life - TM28
  (469, 46900, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 32),
  -- Yanmega - Psychic - TM29
  (469, 46900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Yanmega - Shadow Ball - TM30
  (469, 46900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Yanmega - Double Team - TM32
  (469, 46900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Yanmega - Aerial Ace - TM40
  (469, 46900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Yanmega - Facade - TM42
  (469, 46900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Yanmega - Rest - TM44
  (469, 46900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Yanmega - Attract - TM45
  (469, 46900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Yanmega - Thief - TM46
  (469, 46900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Yanmega - Round - TM48
  (469, 46900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Yanmega - Steel Wing - TM51
  (469, 46900, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 42),
  -- Yanmega - Giga Impact - TM68
  (469, 46900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Yanmega - Psych Up - TM77
  (469, 46900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Yanmega - Dream Eater - TM85
  (469, 46900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Yanmega - Swagger - TM87
  (469, 46900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Yanmega - Sleep Talk - TM88
  (469, 46900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Yanmega - U-turn - TM89
  (469, 46900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 48),
  -- Yanmega - Substitute - TM90
  (469, 46900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Yanmega - Confide - TM100
  (469, 46900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Yanmega - Snore - Tutor
  (469, 46900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Yanmega - Giga Drain - Tutor
  (469, 46900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Yanmega - Uproar - Tutor
  (469, 46900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Yanmega - Signal Beam - Tutor
  (469, 46900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Yanmega - Tailwind - Tutor
  (469, 46900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Yanmega - Defog - Tutor
  (469, 46900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Yanmega - Bug Bite - Tutor
  (469, 46900, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Yanmega - Laser Focus - Tutor
  (469, 46900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Razor Leaf - Level 1
  (470, 47000, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leafeon - Sand Attack - Level 5
  (470, 47000, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Leafeon - Baby-Doll Eyes - Level 9
  (470, 47000, 608, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Leafeon - Quick Attack - Level 13
  (470, 47000, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Leafeon - Grass Whistle - Level 17
  (470, 47000, 320, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Leafeon - Magical Leaf - Level 20
  (470, 47000, 345, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Leafeon - Giga Drain - Level 25
  (470, 47000, 202, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Leafeon - Swords Dance - Level 29
  (470, 47000, 14, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Leafeon - Synthesis - Level 33
  (470, 47000, 235, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Leafeon - Sunny Day - Level 37
  (470, 47000, 241, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Leafeon - Last Resort - Level 41
  (470, 47000, 387, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Leafeon - Leaf Blade - Level 45
  (470, 47000, 348, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Leafeon - Work Up - TM01
  (470, 47000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Leafeon - Roar - TM05
  (470, 47000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Leafeon - Toxic - TM06
  (470, 47000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Leafeon - Hidden Power - TM10
  (470, 47000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Leafeon - Sunny Day - TM11
  (470, 47000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Leafeon - Hyper Beam - TM15
  (470, 47000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Leafeon - Protect - TM17
  (470, 47000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Leafeon - Rain Dance - TM18
  (470, 47000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Leafeon - Frustration - TM21
  (470, 47000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Leafeon - Solar Beam - TM22
  (470, 47000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Leafeon - Return - TM27
  (470, 47000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Leafeon - Shadow Ball - TM30
  (470, 47000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Leafeon - Double Team - TM32
  (470, 47000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Leafeon - Aerial Ace - TM40
  (470, 47000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Leafeon - Facade - TM42
  (470, 47000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Leafeon - Rest - TM44
  (470, 47000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Leafeon - Attract - TM45
  (470, 47000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Leafeon - Round - TM48
  (470, 47000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Leafeon - Echoed Voice - TM49
  (470, 47000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Leafeon - Energy Ball - TM53
  (470, 47000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 35),
  -- Leafeon - Giga Impact - TM68
  (470, 47000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 36),
  -- Leafeon - Swords Dance - TM75
  (470, 47000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 37),
  -- Leafeon - X-Scissor - TM81
  (470, 47000, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 38),
  -- Leafeon - Grass Knot - TM86
  (470, 47000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Leafeon - Swagger - TM87
  (470, 47000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Leafeon - Sleep Talk - TM88
  (470, 47000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Leafeon - Substitute - TM90
  (470, 47000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Leafeon - Nature Power - TM96
  (470, 47000, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 43),
  -- Leafeon - Confide - TM100
  (470, 47000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Leafeon - Snore - Tutor
  (470, 47000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Leafeon - Giga Drain - Tutor
  (470, 47000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Leafeon - Heal Bell - Tutor
  (470, 47000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Leafeon - Iron Tail - Tutor
  (470, 47000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Leafeon - Synthesis - Tutor
  (470, 47000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Leafeon - Helping Hand - Tutor
  (470, 47000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Leafeon - Knock Off - Tutor
  (470, 47000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Leafeon - Hyper Voice - Tutor
  (470, 47000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Leafeon - Covet - Tutor
  (470, 47000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Leafeon - Last Resort - Tutor
  (470, 47000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Leafeon - Worry Seed - Tutor
  (470, 47000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Leafeon - Seed Bomb - Tutor
  (470, 47000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Leafeon - Laser Focus - Tutor
  (470, 47000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Leafeon - Razor Leaf - Evolution
  (470, 47000, 75, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Icy Wind - Level 1
  (471, 47100, 196, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glaceon - Sand Attack - Level 5
  (471, 47100, 28, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Glaceon - Baby-Doll Eyes - Level 9
  (471, 47100, 608, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Glaceon - Quick Attack - Level 13
  (471, 47100, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Glaceon - Bite - Level 17
  (471, 47100, 44, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Glaceon - Ice Fang - Level 20
  (471, 47100, 423, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Glaceon - Ice Shard - Level 25
  (471, 47100, 420, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Glaceon - Barrier - Level 29
  (471, 47100, 112, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Glaceon - Mirror Coat - Level 33
  (471, 47100, 243, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Glaceon - Hail - Level 37
  (471, 47100, 258, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Glaceon - Last Resort - Level 41
  (471, 47100, 387, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Glaceon - Blizzard - Level 45
  (471, 47100, 59, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Glaceon - Work Up - TM01
  (471, 47100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Glaceon - Roar - TM05
  (471, 47100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Glaceon - Toxic - TM06
  (471, 47100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Glaceon - Hail - TM07
  (471, 47100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Glaceon - Hidden Power - TM10
  (471, 47100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Glaceon - Sunny Day - TM11
  (471, 47100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Glaceon - Ice Beam - TM13
  (471, 47100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Glaceon - Blizzard - TM14
  (471, 47100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Glaceon - Hyper Beam - TM15
  (471, 47100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Glaceon - Protect - TM17
  (471, 47100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Glaceon - Rain Dance - TM18
  (471, 47100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Glaceon - Frustration - TM21
  (471, 47100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Glaceon - Return - TM27
  (471, 47100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Glaceon - Shadow Ball - TM30
  (471, 47100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Glaceon - Double Team - TM32
  (471, 47100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Glaceon - Facade - TM42
  (471, 47100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Glaceon - Rest - TM44
  (471, 47100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Glaceon - Attract - TM45
  (471, 47100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Glaceon - Round - TM48
  (471, 47100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Glaceon - Echoed Voice - TM49
  (471, 47100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Glaceon - Giga Impact - TM68
  (471, 47100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 36),
  -- Glaceon - Aurora Veil - TM70
  (471, 47100, 694, 16, NULL, 2, NULL, NULL, 16002070, NULL, 37),
  -- Glaceon - Frost Breath - TM79
  (471, 47100, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 38),
  -- Glaceon - Swagger - TM87
  (471, 47100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Glaceon - Sleep Talk - TM88
  (471, 47100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Glaceon - Substitute - TM90
  (471, 47100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Glaceon - Confide - TM100
  (471, 47100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Glaceon - Snore - Tutor
  (471, 47100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Glaceon - Icy Wind - Tutor
  (471, 47100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Glaceon - Heal Bell - Tutor
  (471, 47100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Glaceon - Iron Tail - Tutor
  (471, 47100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Glaceon - Helping Hand - Tutor
  (471, 47100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Glaceon - Hyper Voice - Tutor
  (471, 47100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Glaceon - Signal Beam - Tutor
  (471, 47100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Glaceon - Covet - Tutor
  (471, 47100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Glaceon - Water Pulse - Tutor
  (471, 47100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Glaceon - Last Resort - Tutor
  (471, 47100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Glaceon - Aqua Tail - Tutor
  (471, 47100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Glaceon - Laser Focus - Tutor
  (471, 47100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Glaceon - Icy Wind - Evolution
  (471, 47100, 196, 16, NULL, 7, NULL, NULL, NULL, NULL, 55),

  -- Gliscor - Guillotine - Level 1
  (472, 47200, 12, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Sand Attack - Level 1
  (472, 47200, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gliscor - Harden - Level 1
  (472, 47200, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gliscor - Knock Off - Level 1
  (472, 47200, 282, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gliscor - Poison Jab - Level 1
  (472, 47200, 398, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gliscor - Thunder Fang - Level 1
  (472, 47200, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gliscor - Ice Fang - Level 1
  (472, 47200, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gliscor - Fire Fang - Level 1
  (472, 47200, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gliscor - Sand Attack - Level 4
  (472, 47200, 28, 16, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Gliscor - Harden - Level 7
  (472, 47200, 106, 16, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Gliscor - Knock Off - Level 10
  (472, 47200, 282, 16, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Gliscor - Quick Attack - Level 13
  (472, 47200, 98, 16, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Gliscor - Fury Cutter - Level 16
  (472, 47200, 210, 16, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Gliscor - Feint Attack - Level 19
  (472, 47200, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Gliscor - Acrobatics - Level 22
  (472, 47200, 512, 16, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Gliscor - Night Slash - Level 27
  (472, 47200, 400, 16, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Gliscor - U-turn - Level 30
  (472, 47200, 369, 16, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Gliscor - Screech - Level 35
  (472, 47200, 103, 16, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Gliscor - X-Scissor - Level 40
  (472, 47200, 404, 16, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Gliscor - Sky Uppercut - Level 45
  (472, 47200, 327, 16, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Gliscor - Swords Dance - Level 50
  (472, 47200, 14, 16, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Gliscor - Guillotine - Level 55
  (472, 47200, 12, 16, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Gliscor - Toxic - TM06
  (472, 47200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Gliscor - Venoshock - TM09
  (472, 47200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 24),
  -- Gliscor - Hidden Power - TM10
  (472, 47200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Gliscor - Sunny Day - TM11
  (472, 47200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Gliscor - Taunt - TM12
  (472, 47200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 27),
  -- Gliscor - Hyper Beam - TM15
  (472, 47200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Gliscor - Protect - TM17
  (472, 47200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Gliscor - Rain Dance - TM18
  (472, 47200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Gliscor - Roost - TM19
  (472, 47200, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 31),
  -- Gliscor - Frustration - TM21
  (472, 47200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Gliscor - Earthquake - TM26
  (472, 47200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Gliscor - Return - TM27
  (472, 47200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Gliscor - Brick Break - TM31
  (472, 47200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Gliscor - Double Team - TM32
  (472, 47200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Gliscor - Sludge Bomb - TM36
  (472, 47200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 37),
  -- Gliscor - Sandstorm - TM37
  (472, 47200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 38),
  -- Gliscor - Rock Tomb - TM39
  (472, 47200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Gliscor - Aerial Ace - TM40
  (472, 47200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 40),
  -- Gliscor - Torment - TM41
  (472, 47200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 41),
  -- Gliscor - Facade - TM42
  (472, 47200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Gliscor - Rest - TM44
  (472, 47200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Gliscor - Attract - TM45
  (472, 47200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 44),
  -- Gliscor - Thief - TM46
  (472, 47200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 45),
  -- Gliscor - Round - TM48
  (472, 47200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Gliscor - Steel Wing - TM51
  (472, 47200, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 47),
  -- Gliscor - False Swipe - TM54
  (472, 47200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 48),
  -- Gliscor - Fling - TM56
  (472, 47200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 49),
  -- Gliscor - Brutal Swing - TM59
  (472, 47200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 50),
  -- Gliscor - Acrobatics - TM62
  (472, 47200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 51),
  -- Gliscor - Payback - TM66
  (472, 47200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 52),
  -- Gliscor - Giga Impact - TM68
  (472, 47200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 53),
  -- Gliscor - Rock Polish - TM69
  (472, 47200, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 54),
  -- Gliscor - Stone Edge - TM71
  (472, 47200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 55),
  -- Gliscor - Swords Dance - TM75
  (472, 47200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 56),
  -- Gliscor - Bulldoze - TM78
  (472, 47200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 57),
  -- Gliscor - Rock Slide - TM80
  (472, 47200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 58),
  -- Gliscor - X-Scissor - TM81
  (472, 47200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 59),
  -- Gliscor - Poison Jab - TM84
  (472, 47200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 60),
  -- Gliscor - Swagger - TM87
  (472, 47200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 61),
  -- Gliscor - Sleep Talk - TM88
  (472, 47200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 62),
  -- Gliscor - U-turn - TM89
  (472, 47200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 63),
  -- Gliscor - Substitute - TM90
  (472, 47200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 64),
  -- Gliscor - Dark Pulse - TM97
  (472, 47200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 65),
  -- Gliscor - Confide - TM100
  (472, 47200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 66),
  -- Gliscor - Sky Attack - Tutor
  (472, 47200, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Gliscor - Snore - Tutor
  (472, 47200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Gliscor - Iron Tail - Tutor
  (472, 47200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Gliscor - Knock Off - Tutor
  (472, 47200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Gliscor - Tailwind - Tutor
  (472, 47200, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Gliscor - Aqua Tail - Tutor
  (472, 47200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Gliscor - Earth Power - Tutor
  (472, 47200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Gliscor - Defog - Tutor
  (472, 47200, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Gliscor - Stealth Rock - Tutor
  (472, 47200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Gliscor - Bug Bite - Tutor
  (472, 47200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Gliscor - Throat Chop - Tutor
  (472, 47200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Mamoswine - Fury Attack - Level 1
  (473, 47300, 31, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Peck - Level 1
  (473, 47300, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Scary Face - Level 1
  (473, 47300, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Mud Sport - Level 1
  (473, 47300, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mamoswine - Odor Sleuth - Level 1
  (473, 47300, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mamoswine - Mud Sport - Level 5
  (473, 47300, 300, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Mamoswine - Powder Snow - Level 8
  (473, 47300, 181, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Mamoswine - Mud-Slap - Level 11
  (473, 47300, 189, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Mamoswine - Endure - Level 14
  (473, 47300, 203, 16, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Mamoswine - Mud Bomb - Level 18
  (473, 47300, 426, 16, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Mamoswine - Hail - Level 21
  (473, 47300, 258, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Mamoswine - Ice Fang - Level 24
  (473, 47300, 423, 16, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Mamoswine - Take Down - Level 28
  (473, 47300, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Mamoswine - Double Hit - Level 33
  (473, 47300, 458, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Mamoswine - Mist - Level 37
  (473, 47300, 54, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Mamoswine - Thrash - Level 41
  (473, 47300, 37, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Mamoswine - Earthquake - Level 46
  (473, 47300, 89, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Mamoswine - Blizzard - Level 52
  (473, 47300, 59, 16, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Mamoswine - Scary Face - Level 58
  (473, 47300, 184, 16, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Mamoswine - Roar - TM05
  (473, 47300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Mamoswine - Toxic - TM06
  (473, 47300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Mamoswine - Hail - TM07
  (473, 47300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Mamoswine - Hidden Power - TM10
  (473, 47300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Mamoswine - Ice Beam - TM13
  (473, 47300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Mamoswine - Blizzard - TM14
  (473, 47300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Mamoswine - Hyper Beam - TM15
  (473, 47300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Mamoswine - Light Screen - TM16
  (473, 47300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Mamoswine - Protect - TM17
  (473, 47300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Mamoswine - Rain Dance - TM18
  (473, 47300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Mamoswine - Frustration - TM21
  (473, 47300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Mamoswine - Earthquake - TM26
  (473, 47300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Mamoswine - Return - TM27
  (473, 47300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Mamoswine - Double Team - TM32
  (473, 47300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Mamoswine - Reflect - TM33
  (473, 47300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Mamoswine - Sandstorm - TM37
  (473, 47300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 37),
  -- Mamoswine - Rock Tomb - TM39
  (473, 47300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Mamoswine - Facade - TM42
  (473, 47300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Mamoswine - Rest - TM44
  (473, 47300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Mamoswine - Attract - TM45
  (473, 47300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Mamoswine - Round - TM48
  (473, 47300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Mamoswine - Giga Impact - TM68
  (473, 47300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Mamoswine - Stone Edge - TM71
  (473, 47300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 44),
  -- Mamoswine - Bulldoze - TM78
  (473, 47300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Mamoswine - Rock Slide - TM80
  (473, 47300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Mamoswine - Swagger - TM87
  (473, 47300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Mamoswine - Sleep Talk - TM88
  (473, 47300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Mamoswine - Substitute - TM90
  (473, 47300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Mamoswine - Confide - TM100
  (473, 47300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Mamoswine - Snore - Tutor
  (473, 47300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Mamoswine - Icy Wind - Tutor
  (473, 47300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Mamoswine - Superpower - Tutor
  (473, 47300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Mamoswine - Knock Off - Tutor
  (473, 47300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Mamoswine - Endeavor - Tutor
  (473, 47300, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Mamoswine - Block - Tutor
  (473, 47300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mamoswine - Earth Power - Tutor
  (473, 47300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mamoswine - Iron Head - Tutor
  (473, 47300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Mamoswine - Stealth Rock - Tutor
  (473, 47300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Mamoswine - Stomping Tantrum - Tutor
  (473, 47300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Conversion 2 - Level 1
  (474, 47400, 176, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Zap Cannon - Level 1
  (474, 47400, 192, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Magic Coat - Level 1
  (474, 47400, 277, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Porygon-Z - Psybeam - Level 7
  (474, 47400, 60, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Porygon-Z - Agility - Level 12
  (474, 47400, 97, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Porygon-Z - Recover - Level 18
  (474, 47400, 105, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Porygon-Z - Magnet Rise - Level 23
  (474, 47400, 393, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Porygon-Z - Signal Beam - Level 29
  (474, 47400, 324, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Porygon-Z - Embargo - Level 34
  (474, 47400, 373, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Porygon-Z - Lock-On - Level 45
  (474, 47400, 199, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Porygon-Z - Tri Attack - Level 50
  (474, 47400, 161, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Porygon-Z - Magic Coat - Level 56
  (474, 47400, 277, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Porygon-Z - Zap Cannon - Level 62
  (474, 47400, 192, 16, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Porygon-Z - Hyper Beam - Level 67
  (474, 47400, 63, 16, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Porygon-Z - Psyshock - TM03
  (474, 47400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Porygon-Z - Toxic - TM06
  (474, 47400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Porygon-Z - Hidden Power - TM10
  (474, 47400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Porygon-Z - Sunny Day - TM11
  (474, 47400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Porygon-Z - Ice Beam - TM13
  (474, 47400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Porygon-Z - Blizzard - TM14
  (474, 47400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Porygon-Z - Hyper Beam - TM15
  (474, 47400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Porygon-Z - Protect - TM17
  (474, 47400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Porygon-Z - Rain Dance - TM18
  (474, 47400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Porygon-Z - Frustration - TM21
  (474, 47400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Porygon-Z - Solar Beam - TM22
  (474, 47400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Porygon-Z - Thunderbolt - TM24
  (474, 47400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 31),
  -- Porygon-Z - Thunder - TM25
  (474, 47400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 32),
  -- Porygon-Z - Return - TM27
  (474, 47400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Porygon-Z - Psychic - TM29
  (474, 47400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Porygon-Z - Shadow Ball - TM30
  (474, 47400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Porygon-Z - Double Team - TM32
  (474, 47400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Porygon-Z - Aerial Ace - TM40
  (474, 47400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Porygon-Z - Facade - TM42
  (474, 47400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Porygon-Z - Rest - TM44
  (474, 47400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Porygon-Z - Thief - TM46
  (474, 47400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Porygon-Z - Round - TM48
  (474, 47400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Porygon-Z - Charge Beam - TM57
  (474, 47400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Porygon-Z - Embargo - TM63
  (474, 47400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 43),
  -- Porygon-Z - Giga Impact - TM68
  (474, 47400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Porygon-Z - Thunder Wave - TM73
  (474, 47400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Porygon-Z - Psych Up - TM77
  (474, 47400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Porygon-Z - Dream Eater - TM85
  (474, 47400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Porygon-Z - Swagger - TM87
  (474, 47400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Porygon-Z - Sleep Talk - TM88
  (474, 47400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Porygon-Z - Substitute - TM90
  (474, 47400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Porygon-Z - Trick Room - TM92
  (474, 47400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 51),
  -- Porygon-Z - Dark Pulse - TM97
  (474, 47400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 52),
  -- Porygon-Z - Confide - TM100
  (474, 47400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Porygon-Z - Snore - Tutor
  (474, 47400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Porygon-Z - Icy Wind - Tutor
  (474, 47400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Porygon-Z - Pain Split - Tutor
  (474, 47400, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Porygon-Z - Iron Tail - Tutor
  (474, 47400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Porygon-Z - Uproar - Tutor
  (474, 47400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Porygon-Z - Trick - Tutor
  (474, 47400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Porygon-Z - Magic Coat - Tutor
  (474, 47400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Porygon-Z - Recycle - Tutor
  (474, 47400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Porygon-Z - Signal Beam - Tutor
  (474, 47400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Porygon-Z - Shock Wave - Tutor
  (474, 47400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Porygon-Z - Gravity - Tutor
  (474, 47400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Porygon-Z - Last Resort - Tutor
  (474, 47400, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Porygon-Z - Magnet Rise - Tutor
  (474, 47400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Porygon-Z - Zen Headbutt - Tutor
  (474, 47400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Porygon-Z - Wonder Room - Tutor
  (474, 47400, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Porygon-Z - Telekinesis - Tutor
  (474, 47400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Porygon-Z - Foul Play - Tutor
  (474, 47400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Porygon-Z - Ally Switch - Tutor
  (474, 47400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Porygon-Z - Electroweb - Tutor
  (474, 47400, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Gallade - Leer - Level 1
  (475, 47500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Teleport - Level 1
  (475, 47500, 100, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Slash - Level 1
  (475, 47500, 163, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Leaf Blade - Level 1
  (475, 47500, 348, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Close Combat - Level 1
  (475, 47500, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gallade - Stored Power - Level 1
  (475, 47500, 500, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Gallade - Confusion - Level 4
  (475, 47500, 93, 16, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Gallade - Double Team - Level 6
  (475, 47500, 104, 16, NULL, 1, 6, NULL, NULL, NULL, 11),
  -- Gallade - Teleport - Level 9
  (475, 47500, 100, 16, NULL, 1, 9, NULL, NULL, NULL, 12),
  -- Gallade - Quick Guard - Level 11
  (475, 47500, 501, 16, NULL, 1, 11, NULL, NULL, NULL, 13),
  -- Gallade - Fury Cutter - Level 14
  (475, 47500, 210, 16, NULL, 1, 14, NULL, NULL, NULL, 14),
  -- Gallade - Aerial Ace - Level 17
  (475, 47500, 332, 16, NULL, 1, 17, NULL, NULL, NULL, 15),
  -- Gallade - Heal Pulse - Level 19
  (475, 47500, 505, 16, NULL, 1, 19, NULL, NULL, NULL, 16),
  -- Gallade - Wide Guard - Level 23
  (475, 47500, 469, 16, NULL, 1, 23, NULL, NULL, NULL, 17),
  -- Gallade - Swords Dance - Level 26
  (475, 47500, 14, 16, NULL, 1, 26, NULL, NULL, NULL, 18),
  -- Gallade - Psycho Cut - Level 31
  (475, 47500, 427, 16, NULL, 1, 31, NULL, NULL, NULL, 19),
  -- Gallade - Helping Hand - Level 35
  (475, 47500, 270, 16, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Gallade - Feint - Level 40
  (475, 47500, 364, 16, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Gallade - False Swipe - Level 44
  (475, 47500, 206, 16, NULL, 1, 44, NULL, NULL, NULL, 22),
  -- Gallade - Protect - Level 49
  (475, 47500, 182, 16, NULL, 1, 49, NULL, NULL, NULL, 23),
  -- Gallade - Close Combat - Level 53
  (475, 47500, 370, 16, NULL, 1, 53, NULL, NULL, NULL, 24),
  -- Gallade - Stored Power - Level 58
  (475, 47500, 500, 16, NULL, 1, 58, NULL, NULL, NULL, 25),
  -- Gallade - Work Up - TM01
  (475, 47500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 26),
  -- Gallade - Psyshock - TM03
  (475, 47500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 27),
  -- Gallade - Calm Mind - TM04
  (475, 47500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 28),
  -- Gallade - Toxic - TM06
  (475, 47500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 29),
  -- Gallade - Bulk Up - TM08
  (475, 47500, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 30),
  -- Gallade - Hidden Power - TM10
  (475, 47500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 31),
  -- Gallade - Sunny Day - TM11
  (475, 47500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 32),
  -- Gallade - Taunt - TM12
  (475, 47500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 33),
  -- Gallade - Hyper Beam - TM15
  (475, 47500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 34),
  -- Gallade - Light Screen - TM16
  (475, 47500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 35),
  -- Gallade - Protect - TM17
  (475, 47500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 36),
  -- Gallade - Rain Dance - TM18
  (475, 47500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 37),
  -- Gallade - Safeguard - TM20
  (475, 47500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 38),
  -- Gallade - Frustration - TM21
  (475, 47500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 39),
  -- Gallade - Thunderbolt - TM24
  (475, 47500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 40),
  -- Gallade - Earthquake - TM26
  (475, 47500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 41),
  -- Gallade - Return - TM27
  (475, 47500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 42),
  -- Gallade - Psychic - TM29
  (475, 47500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 43),
  -- Gallade - Shadow Ball - TM30
  (475, 47500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 44),
  -- Gallade - Brick Break - TM31
  (475, 47500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 45),
  -- Gallade - Double Team - TM32
  (475, 47500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 46),
  -- Gallade - Reflect - TM33
  (475, 47500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 47),
  -- Gallade - Rock Tomb - TM39
  (475, 47500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 48),
  -- Gallade - Aerial Ace - TM40
  (475, 47500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 49),
  -- Gallade - Torment - TM41
  (475, 47500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 50),
  -- Gallade - Facade - TM42
  (475, 47500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 51),
  -- Gallade - Rest - TM44
  (475, 47500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 52),
  -- Gallade - Attract - TM45
  (475, 47500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 53),
  -- Gallade - Thief - TM46
  (475, 47500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 54),
  -- Gallade - Low Sweep - TM47
  (475, 47500, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 55),
  -- Gallade - Round - TM48
  (475, 47500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 56),
  -- Gallade - Echoed Voice - TM49
  (475, 47500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 57),
  -- Gallade - Focus Blast - TM52
  (475, 47500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 58),
  -- Gallade - False Swipe - TM54
  (475, 47500, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 59),
  -- Gallade - Fling - TM56
  (475, 47500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 60),
  -- Gallade - Charge Beam - TM57
  (475, 47500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 61),
  -- Gallade - Will-O-Wisp - TM61
  (475, 47500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 62),
  -- Gallade - Giga Impact - TM68
  (475, 47500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 63),
  -- Gallade - Stone Edge - TM71
  (475, 47500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 64),
  -- Gallade - Thunder Wave - TM73
  (475, 47500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 65),
  -- Gallade - Swords Dance - TM75
  (475, 47500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 66),
  -- Gallade - Psych Up - TM77
  (475, 47500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 67),
  -- Gallade - Bulldoze - TM78
  (475, 47500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 68),
  -- Gallade - Rock Slide - TM80
  (475, 47500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 69),
  -- Gallade - X-Scissor - TM81
  (475, 47500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 70),
  -- Gallade - Poison Jab - TM84
  (475, 47500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 71),
  -- Gallade - Dream Eater - TM85
  (475, 47500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 72),
  -- Gallade - Grass Knot - TM86
  (475, 47500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 73),
  -- Gallade - Swagger - TM87
  (475, 47500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 74),
  -- Gallade - Sleep Talk - TM88
  (475, 47500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 75),
  -- Gallade - Substitute - TM90
  (475, 47500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 76),
  -- Gallade - Trick Room - TM92
  (475, 47500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 77),
  -- Gallade - Dazzling Gleam - TM99
  (475, 47500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 78),
  -- Gallade - Confide - TM100
  (475, 47500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 79),
  -- Gallade - Fire Punch - Tutor
  (475, 47500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Gallade - Ice Punch - Tutor
  (475, 47500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Gallade - Thunder Punch - Tutor
  (475, 47500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Gallade - Low Kick - Tutor
  (475, 47500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Gallade - Snore - Tutor
  (475, 47500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Gallade - Pain Split - Tutor
  (475, 47500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Gallade - Focus Punch - Tutor
  (475, 47500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Gallade - Helping Hand - Tutor
  (475, 47500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Gallade - Trick - Tutor
  (475, 47500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Gallade - Magic Coat - Tutor
  (475, 47500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Gallade - Recycle - Tutor
  (475, 47500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Gallade - Knock Off - Tutor
  (475, 47500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Gallade - Skill Swap - Tutor
  (475, 47500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Gallade - Snatch - Tutor
  (475, 47500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),
  -- Gallade - Hyper Voice - Tutor
  (475, 47500, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 94),
  -- Gallade - Signal Beam - Tutor
  (475, 47500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 95),
  -- Gallade - Shock Wave - Tutor
  (475, 47500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 96),
  -- Gallade - Drain Punch - Tutor
  (475, 47500, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 97),
  -- Gallade - Zen Headbutt - Tutor
  (475, 47500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 98),
  -- Gallade - Wonder Room - Tutor
  (475, 47500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 99),
  -- Gallade - Telekinesis - Tutor
  (475, 47500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 100),
  -- Gallade - Magic Room - Tutor
  (475, 47500, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 101),
  -- Gallade - Ally Switch - Tutor
  (475, 47500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 102),
  -- Gallade - Dual Chop - Tutor
  (475, 47500, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 103),
  -- Gallade - Laser Focus - Tutor
  (475, 47500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 104),
  -- Gallade - Throat Chop - Tutor
  (475, 47500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 105),
  -- Gallade - Slash - Evolution
  (475, 47500, 163, 16, NULL, 7, NULL, NULL, NULL, NULL, 106),

  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Tri Attack - Level 1
  (476, 47600, 161, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Probopass - Iron Defense - Level 1
  (476, 47600, 334, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Probopass - Block - Level 1
  (476, 47600, 335, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Probopass - Gravity - Level 1
  (476, 47600, 356, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Probopass - Magnet Rise - Level 1
  (476, 47600, 393, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Probopass - Magnet Bomb - Level 1
  (476, 47600, 443, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Probopass - Wide Guard - Level 1
  (476, 47600, 469, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Probopass - Magnetic Flux - Level 1
  (476, 47600, 602, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Probopass - Iron Defense - Level 4
  (476, 47600, 334, 16, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Probopass - Block - Level 7
  (476, 47600, 335, 16, NULL, 1, 7, NULL, NULL, NULL, 11),
  -- Probopass - Magnet Bomb - Level 10
  (476, 47600, 443, 16, NULL, 1, 10, NULL, NULL, NULL, 12),
  -- Probopass - Thunder Wave - Level 13
  (476, 47600, 86, 16, NULL, 1, 13, NULL, NULL, NULL, 13),
  -- Probopass - Rest - Level 16
  (476, 47600, 156, 16, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Probopass - Spark - Level 19
  (476, 47600, 209, 16, NULL, 1, 19, NULL, NULL, NULL, 15),
  -- Probopass - Rock Slide - Level 22
  (476, 47600, 157, 16, NULL, 1, 22, NULL, NULL, NULL, 16),
  -- Probopass - Power Gem - Level 25
  (476, 47600, 408, 16, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Probopass - Rock Blast - Level 28
  (476, 47600, 350, 16, NULL, 1, 28, NULL, NULL, NULL, 18),
  -- Probopass - Discharge - Level 31
  (476, 47600, 435, 16, NULL, 1, 31, NULL, NULL, NULL, 19),
  -- Probopass - Sandstorm - Level 34
  (476, 47600, 201, 16, NULL, 1, 34, NULL, NULL, NULL, 20),
  -- Probopass - Earth Power - Level 37
  (476, 47600, 414, 16, NULL, 1, 37, NULL, NULL, NULL, 21),
  -- Probopass - Stone Edge - Level 40
  (476, 47600, 444, 16, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Probopass - Zap Cannon - Level 43
  (476, 47600, 192, 16, NULL, 1, 43, NULL, NULL, NULL, 23),
  -- Probopass - Lock-On - Level 43
  (476, 47600, 199, 16, NULL, 1, 43, NULL, NULL, NULL, 24),
  -- Probopass - Toxic - TM06
  (476, 47600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Probopass - Hidden Power - TM10
  (476, 47600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Probopass - Sunny Day - TM11
  (476, 47600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Probopass - Taunt - TM12
  (476, 47600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 28),
  -- Probopass - Hyper Beam - TM15
  (476, 47600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Probopass - Protect - TM17
  (476, 47600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Probopass - Frustration - TM21
  (476, 47600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Probopass - Smack Down - TM23
  (476, 47600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 32),
  -- Probopass - Thunderbolt - TM24
  (476, 47600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 33),
  -- Probopass - Thunder - TM25
  (476, 47600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 34),
  -- Probopass - Earthquake - TM26
  (476, 47600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 35),
  -- Probopass - Return - TM27
  (476, 47600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Probopass - Double Team - TM32
  (476, 47600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Probopass - Sandstorm - TM37
  (476, 47600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 38),
  -- Probopass - Rock Tomb - TM39
  (476, 47600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Probopass - Torment - TM41
  (476, 47600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 40),
  -- Probopass - Facade - TM42
  (476, 47600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Probopass - Rest - TM44
  (476, 47600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Probopass - Attract - TM45
  (476, 47600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Probopass - Round - TM48
  (476, 47600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Probopass - Explosion - TM64
  (476, 47600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 45),
  -- Probopass - Giga Impact - TM68
  (476, 47600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Probopass - Rock Polish - TM69
  (476, 47600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 47),
  -- Probopass - Stone Edge - TM71
  (476, 47600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 48),
  -- Probopass - Volt Switch - TM72
  (476, 47600, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 49),
  -- Probopass - Thunder Wave - TM73
  (476, 47600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 50),
  -- Probopass - Bulldoze - TM78
  (476, 47600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 51),
  -- Probopass - Rock Slide - TM80
  (476, 47600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Probopass - Swagger - TM87
  (476, 47600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Probopass - Sleep Talk - TM88
  (476, 47600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Probopass - Substitute - TM90
  (476, 47600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Probopass - Flash Cannon - TM91
  (476, 47600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 56),
  -- Probopass - Dazzling Gleam - TM99
  (476, 47600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 57),
  -- Probopass - Confide - TM100
  (476, 47600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Probopass - Fire Punch - Tutor
  (476, 47600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Probopass - Ice Punch - Tutor
  (476, 47600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Probopass - Thunder Punch - Tutor
  (476, 47600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Probopass - Snore - Tutor
  (476, 47600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Probopass - Pain Split - Tutor
  (476, 47600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Probopass - Magic Coat - Tutor
  (476, 47600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Probopass - Iron Defense - Tutor
  (476, 47600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Probopass - Block - Tutor
  (476, 47600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Probopass - Shock Wave - Tutor
  (476, 47600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Probopass - Gravity - Tutor
  (476, 47600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Probopass - Magnet Rise - Tutor
  (476, 47600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Probopass - Earth Power - Tutor
  (476, 47600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Probopass - Iron Head - Tutor
  (476, 47600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Probopass - Stealth Rock - Tutor
  (476, 47600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Probopass - Telekinesis - Tutor
  (476, 47600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Probopass - Ally Switch - Tutor
  (476, 47600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Probopass - Stomping Tantrum - Tutor
  (476, 47600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Probopass - Tri Attack - Evolution
  (476, 47600, 161, 16, NULL, 7, NULL, NULL, NULL, NULL, 76),

  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Night Shade - Level 1
  (477, 47700, 101, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Future Sight - Level 1
  (477, 47700, 248, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Astonish - Level 1
  (477, 47700, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dusknoir - Shadow Punch - Level 1
  (477, 47700, 325, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 16, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Dusknoir - Disable - Level 6
  (477, 47700, 50, 16, NULL, 1, 6, NULL, NULL, NULL, 12),
  -- Dusknoir - Astonish - Level 9
  (477, 47700, 310, 16, NULL, 1, 9, NULL, NULL, NULL, 13),
  -- Dusknoir - Foresight - Level 14
  (477, 47700, 193, 16, NULL, 1, 14, NULL, NULL, NULL, 14),
  -- Dusknoir - Shadow Sneak - Level 17
  (477, 47700, 425, 16, NULL, 1, 17, NULL, NULL, NULL, 15),
  -- Dusknoir - Pursuit - Level 22
  (477, 47700, 228, 16, NULL, 1, 22, NULL, NULL, NULL, 16),
  -- Dusknoir - Will-O-Wisp - Level 25
  (477, 47700, 261, 16, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Dusknoir - Confuse Ray - Level 30
  (477, 47700, 109, 16, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Dusknoir - Curse - Level 33
  (477, 47700, 174, 16, NULL, 1, 33, NULL, NULL, NULL, 19),
  -- Dusknoir - Hex - Level 40
  (477, 47700, 506, 16, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Dusknoir - Shadow Ball - Level 45
  (477, 47700, 247, 16, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Dusknoir - Mean Look - Level 52
  (477, 47700, 212, 16, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Dusknoir - Payback - Level 57
  (477, 47700, 371, 16, NULL, 1, 57, NULL, NULL, NULL, 23),
  -- Dusknoir - Future Sight - Level 64
  (477, 47700, 248, 16, NULL, 1, 64, NULL, NULL, NULL, 24),
  -- Dusknoir - Calm Mind - TM04
  (477, 47700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 25),
  -- Dusknoir - Toxic - TM06
  (477, 47700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Dusknoir - Hidden Power - TM10
  (477, 47700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Dusknoir - Sunny Day - TM11
  (477, 47700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 28),
  -- Dusknoir - Taunt - TM12
  (477, 47700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 29),
  -- Dusknoir - Ice Beam - TM13
  (477, 47700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 30),
  -- Dusknoir - Blizzard - TM14
  (477, 47700, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 31),
  -- Dusknoir - Hyper Beam - TM15
  (477, 47700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 32),
  -- Dusknoir - Protect - TM17
  (477, 47700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 33),
  -- Dusknoir - Rain Dance - TM18
  (477, 47700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 34),
  -- Dusknoir - Frustration - TM21
  (477, 47700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Dusknoir - Earthquake - TM26
  (477, 47700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Dusknoir - Return - TM27
  (477, 47700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Dusknoir - Psychic - TM29
  (477, 47700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 38),
  -- Dusknoir - Shadow Ball - TM30
  (477, 47700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 39),
  -- Dusknoir - Brick Break - TM31
  (477, 47700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 40),
  -- Dusknoir - Double Team - TM32
  (477, 47700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 41),
  -- Dusknoir - Rock Tomb - TM39
  (477, 47700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 42),
  -- Dusknoir - Torment - TM41
  (477, 47700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 43),
  -- Dusknoir - Facade - TM42
  (477, 47700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 44),
  -- Dusknoir - Rest - TM44
  (477, 47700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 45),
  -- Dusknoir - Attract - TM45
  (477, 47700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 46),
  -- Dusknoir - Thief - TM46
  (477, 47700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 47),
  -- Dusknoir - Round - TM48
  (477, 47700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 48),
  -- Dusknoir - Focus Blast - TM52
  (477, 47700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Dusknoir - Fling - TM56
  (477, 47700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Dusknoir - Charge Beam - TM57
  (477, 47700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 51),
  -- Dusknoir - Will-O-Wisp - TM61
  (477, 47700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 52),
  -- Dusknoir - Embargo - TM63
  (477, 47700, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 53),
  -- Dusknoir - Payback - TM66
  (477, 47700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 54),
  -- Dusknoir - Giga Impact - TM68
  (477, 47700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 55),
  -- Dusknoir - Psych Up - TM77
  (477, 47700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 56),
  -- Dusknoir - Bulldoze - TM78
  (477, 47700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 57),
  -- Dusknoir - Rock Slide - TM80
  (477, 47700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 58),
  -- Dusknoir - Infestation - TM83
  (477, 47700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 59),
  -- Dusknoir - Dream Eater - TM85
  (477, 47700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 60),
  -- Dusknoir - Swagger - TM87
  (477, 47700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 61),
  -- Dusknoir - Sleep Talk - TM88
  (477, 47700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 62),
  -- Dusknoir - Substitute - TM90
  (477, 47700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 63),
  -- Dusknoir - Trick Room - TM92
  (477, 47700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 64),
  -- Dusknoir - Dark Pulse - TM97
  (477, 47700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 65),
  -- Dusknoir - Confide - TM100
  (477, 47700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 66),
  -- Dusknoir - Fire Punch - Tutor
  (477, 47700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Dusknoir - Ice Punch - Tutor
  (477, 47700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Dusknoir - Thunder Punch - Tutor
  (477, 47700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Dusknoir - Bind - Tutor
  (477, 47700, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Dusknoir - Snore - Tutor
  (477, 47700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Dusknoir - Spite - Tutor
  (477, 47700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Dusknoir - Icy Wind - Tutor
  (477, 47700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Dusknoir - Pain Split - Tutor
  (477, 47700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Dusknoir - Focus Punch - Tutor
  (477, 47700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Dusknoir - Trick - Tutor
  (477, 47700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Dusknoir - Skill Swap - Tutor
  (477, 47700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Dusknoir - Snatch - Tutor
  (477, 47700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Dusknoir - Gravity - Tutor
  (477, 47700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Dusknoir - Wonder Room - Tutor
  (477, 47700, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Dusknoir - Telekinesis - Tutor
  (477, 47700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Dusknoir - Ally Switch - Tutor
  (477, 47700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Dusknoir - Laser Focus - Tutor
  (477, 47700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),

  -- Froslass - Leer - Level 1
  (478, 47800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Destiny Bond - Level 1
  (478, 47800, 194, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Ice Shard - Level 1
  (478, 47800, 420, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Froslass - Ominous Wind - Level 1
  (478, 47800, 466, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Froslass - Double Team - Level 5
  (478, 47800, 104, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Froslass - Ice Shard - Level 10
  (478, 47800, 420, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Froslass - Icy Wind - Level 14
  (478, 47800, 196, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Froslass - Astonish - Level 19
  (478, 47800, 310, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Froslass - Draining Kiss - Level 23
  (478, 47800, 577, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Froslass - Will-O-Wisp - Level 28
  (478, 47800, 261, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Froslass - Confuse Ray - Level 32
  (478, 47800, 109, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Froslass - Wake-Up Slap - Level 37
  (478, 47800, 358, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Froslass - Captivate - Level 41
  (478, 47800, 445, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Froslass - Shadow Ball - Level 42
  (478, 47800, 247, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Froslass - Blizzard - Level 48
  (478, 47800, 59, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Froslass - Hail - Level 54
  (478, 47800, 258, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Froslass - Destiny Bond - Level 61
  (478, 47800, 194, 16, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Froslass - Toxic - TM06
  (478, 47800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Froslass - Hail - TM07
  (478, 47800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Froslass - Hidden Power - TM10
  (478, 47800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Froslass - Taunt - TM12
  (478, 47800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Froslass - Ice Beam - TM13
  (478, 47800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Froslass - Blizzard - TM14
  (478, 47800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Froslass - Hyper Beam - TM15
  (478, 47800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Froslass - Light Screen - TM16
  (478, 47800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Froslass - Protect - TM17
  (478, 47800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Froslass - Rain Dance - TM18
  (478, 47800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Froslass - Safeguard - TM20
  (478, 47800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 30),
  -- Froslass - Frustration - TM21
  (478, 47800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Froslass - Thunderbolt - TM24
  (478, 47800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 32),
  -- Froslass - Thunder - TM25
  (478, 47800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 33),
  -- Froslass - Return - TM27
  (478, 47800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Froslass - Psychic - TM29
  (478, 47800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Froslass - Shadow Ball - TM30
  (478, 47800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 36),
  -- Froslass - Double Team - TM32
  (478, 47800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Froslass - Torment - TM41
  (478, 47800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Froslass - Facade - TM42
  (478, 47800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Froslass - Rest - TM44
  (478, 47800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Froslass - Attract - TM45
  (478, 47800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Froslass - Round - TM48
  (478, 47800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Froslass - Fling - TM56
  (478, 47800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Froslass - Will-O-Wisp - TM61
  (478, 47800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 44),
  -- Froslass - Embargo - TM63
  (478, 47800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 45),
  -- Froslass - Payback - TM66
  (478, 47800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Froslass - Giga Impact - TM68
  (478, 47800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Froslass - Aurora Veil - TM70
  (478, 47800, 694, 16, NULL, 2, NULL, NULL, 16002070, NULL, 48),
  -- Froslass - Thunder Wave - TM73
  (478, 47800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Froslass - Psych Up - TM77
  (478, 47800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 50),
  -- Froslass - Frost Breath - TM79
  (478, 47800, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 51),
  -- Froslass - Dream Eater - TM85
  (478, 47800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 52),
  -- Froslass - Swagger - TM87
  (478, 47800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Froslass - Sleep Talk - TM88
  (478, 47800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Froslass - Substitute - TM90
  (478, 47800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Froslass - Confide - TM100
  (478, 47800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Froslass - Ice Punch - Tutor
  (478, 47800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Froslass - Snore - Tutor
  (478, 47800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Froslass - Spite - Tutor
  (478, 47800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Froslass - Icy Wind - Tutor
  (478, 47800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Froslass - Pain Split - Tutor
  (478, 47800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Froslass - Trick - Tutor
  (478, 47800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Froslass - Snatch - Tutor
  (478, 47800, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Froslass - Signal Beam - Tutor
  (478, 47800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Froslass - Block - Tutor
  (478, 47800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Froslass - Shock Wave - Tutor
  (478, 47800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Froslass - Water Pulse - Tutor
  (478, 47800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Froslass - Telekinesis - Tutor
  (478, 47800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Froslass - Ally Switch - Tutor
  (478, 47800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Froslass - Laser Focus - Tutor
  (478, 47800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Froslass - Ominous Wind - Evolution
  (478, 47800, 466, 16, NULL, 7, NULL, NULL, NULL, NULL, 71),

  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Thunder Wave - Level 1
  (479, 47900, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Confuse Ray - Level 1
  (479, 47900, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom - Charge - Level 1
  (479, 47900, 268, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom - Trick - Level 1
  (479, 47900, 271, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rotom - Discharge - Level 1
  (479, 47900, 435, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rotom - Uproar - Level 8
  (479, 47900, 253, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Rotom - Double Team - Level 15
  (479, 47900, 104, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rotom - Shock Wave - Level 22
  (479, 47900, 351, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Rotom - Ominous Wind - Level 29
  (479, 47900, 466, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Rotom - Substitute - Level 36
  (479, 47900, 164, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rotom - Electro Ball - Level 43
  (479, 47900, 486, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rotom - Hex - Level 50
  (479, 47900, 506, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Rotom - Charge - Level 57
  (479, 47900, 268, 16, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Rotom - Discharge - Level 64
  (479, 47900, 435, 16, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Rotom - Toxic - TM06
  (479, 47900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Rotom - Hidden Power - TM10
  (479, 47900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Rotom - Sunny Day - TM11
  (479, 47900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Rotom - Light Screen - TM16
  (479, 47900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Rotom - Protect - TM17
  (479, 47900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Rotom - Rain Dance - TM18
  (479, 47900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Rotom - Frustration - TM21
  (479, 47900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Rotom - Thunderbolt - TM24
  (479, 47900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Rotom - Thunder - TM25
  (479, 47900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 25),
  -- Rotom - Return - TM27
  (479, 47900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Rotom - Shadow Ball - TM30
  (479, 47900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Rotom - Double Team - TM32
  (479, 47900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Rotom - Reflect - TM33
  (479, 47900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Rotom - Facade - TM42
  (479, 47900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Rotom - Rest - TM44
  (479, 47900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Rotom - Thief - TM46
  (479, 47900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Rotom - Round - TM48
  (479, 47900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Rotom - Charge Beam - TM57
  (479, 47900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Rotom - Will-O-Wisp - TM61
  (479, 47900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Rotom - Volt Switch - TM72
  (479, 47900, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 36),
  -- Rotom - Thunder Wave - TM73
  (479, 47900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Rotom - Psych Up - TM77
  (479, 47900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Rotom - Dream Eater - TM85
  (479, 47900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 39),
  -- Rotom - Swagger - TM87
  (479, 47900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Rotom - Sleep Talk - TM88
  (479, 47900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Rotom - Substitute - TM90
  (479, 47900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Rotom - Dark Pulse - TM97
  (479, 47900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 43),
  -- Rotom - Confide - TM100
  (479, 47900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Rotom - Snore - Tutor
  (479, 47900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Rotom - Spite - Tutor
  (479, 47900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Rotom - Pain Split - Tutor
  (479, 47900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Rotom - Uproar - Tutor
  (479, 47900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Rotom - Trick - Tutor
  (479, 47900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Rotom - Snatch - Tutor
  (479, 47900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Rotom - Signal Beam - Tutor
  (479, 47900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Rotom - Shock Wave - Tutor
  (479, 47900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Rotom - Defog - Tutor
  (479, 47900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Rotom - Telekinesis - Tutor
  (479, 47900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Rotom - Foul Play - Tutor
  (479, 47900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Rotom - Ally Switch - Tutor
  (479, 47900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Rotom - Electroweb - Tutor
  (479, 47900, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Flail - Level 1
  (480, 48000, 175, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Uxie - Memento - Level 1
  (480, 48000, 262, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Uxie - Natural Gift - Level 1
  (480, 48000, 363, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Uxie - Imprison - Level 6
  (480, 48000, 286, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Uxie - Endure - Level 16
  (480, 48000, 203, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Uxie - Swift - Level 21
  (480, 48000, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Uxie - Yawn - Level 31
  (480, 48000, 281, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Uxie - Future Sight - Level 36
  (480, 48000, 248, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Uxie - Amnesia - Level 46
  (480, 48000, 133, 16, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Uxie - Extrasensory - Level 50
  (480, 48000, 326, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Uxie - Flail - Level 61
  (480, 48000, 175, 16, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Uxie - Natural Gift - Level 66
  (480, 48000, 363, 16, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Uxie - Memento - Level 76
  (480, 48000, 262, 16, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Uxie - Psyshock - TM03
  (480, 48000, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 16),
  -- Uxie - Calm Mind - TM04
  (480, 48000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Uxie - Toxic - TM06
  (480, 48000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Uxie - Hidden Power - TM10
  (480, 48000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Uxie - Sunny Day - TM11
  (480, 48000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Uxie - Hyper Beam - TM15
  (480, 48000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Uxie - Light Screen - TM16
  (480, 48000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Uxie - Protect - TM17
  (480, 48000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Uxie - Rain Dance - TM18
  (480, 48000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Uxie - Safeguard - TM20
  (480, 48000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Uxie - Frustration - TM21
  (480, 48000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Uxie - Solar Beam - TM22
  (480, 48000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Uxie - Thunderbolt - TM24
  (480, 48000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Uxie - Thunder - TM25
  (480, 48000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Uxie - Return - TM27
  (480, 48000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Uxie - Psychic - TM29
  (480, 48000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Uxie - Shadow Ball - TM30
  (480, 48000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Uxie - Double Team - TM32
  (480, 48000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Uxie - Reflect - TM33
  (480, 48000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Uxie - Sandstorm - TM37
  (480, 48000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Uxie - Facade - TM42
  (480, 48000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Uxie - Rest - TM44
  (480, 48000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Uxie - Round - TM48
  (480, 48000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Uxie - Energy Ball - TM53
  (480, 48000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Uxie - Fling - TM56
  (480, 48000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Uxie - Charge Beam - TM57
  (480, 48000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 41),
  -- Uxie - Acrobatics - TM62
  (480, 48000, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 42),
  -- Uxie - Giga Impact - TM68
  (480, 48000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Uxie - Thunder Wave - TM73
  (480, 48000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Uxie - Psych Up - TM77
  (480, 48000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Uxie - Dream Eater - TM85
  (480, 48000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 46),
  -- Uxie - Grass Knot - TM86
  (480, 48000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Uxie - Swagger - TM87
  (480, 48000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Uxie - Sleep Talk - TM88
  (480, 48000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Uxie - U-turn - TM89
  (480, 48000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 50),
  -- Uxie - Substitute - TM90
  (480, 48000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Uxie - Trick Room - TM92
  (480, 48000, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Uxie - Dazzling Gleam - TM99
  (480, 48000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 53),
  -- Uxie - Confide - TM100
  (480, 48000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Uxie - Fire Punch - Tutor
  (480, 48000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Uxie - Ice Punch - Tutor
  (480, 48000, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Uxie - Thunder Punch - Tutor
  (480, 48000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Uxie - Snore - Tutor
  (480, 48000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Uxie - Giga Drain - Tutor
  (480, 48000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Uxie - Heal Bell - Tutor
  (480, 48000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Uxie - Iron Tail - Tutor
  (480, 48000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Uxie - Helping Hand - Tutor
  (480, 48000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Uxie - Trick - Tutor
  (480, 48000, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Uxie - Role Play - Tutor
  (480, 48000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Uxie - Magic Coat - Tutor
  (480, 48000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Uxie - Recycle - Tutor
  (480, 48000, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Uxie - Knock Off - Tutor
  (480, 48000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Uxie - Skill Swap - Tutor
  (480, 48000, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Uxie - Signal Beam - Tutor
  (480, 48000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Uxie - Shock Wave - Tutor
  (480, 48000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Uxie - Water Pulse - Tutor
  (480, 48000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Uxie - Zen Headbutt - Tutor
  (480, 48000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Uxie - Stealth Rock - Tutor
  (480, 48000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Uxie - Wonder Room - Tutor
  (480, 48000, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Uxie - Telekinesis - Tutor
  (480, 48000, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Uxie - Magic Room - Tutor
  (480, 48000, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Uxie - Foul Play - Tutor
  (480, 48000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Uxie - Ally Switch - Tutor
  (480, 48000, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Uxie - Laser Focus - Tutor
  (480, 48000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Healing Wish - Level 1
  (481, 48100, 361, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mesprit - Natural Gift - Level 1
  (481, 48100, 363, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mesprit - Copycat - Level 1
  (481, 48100, 383, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mesprit - Imprison - Level 6
  (481, 48100, 286, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Mesprit - Protect - Level 16
  (481, 48100, 182, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mesprit - Swift - Level 21
  (481, 48100, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Mesprit - Lucky Chant - Level 31
  (481, 48100, 381, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Mesprit - Future Sight - Level 36
  (481, 48100, 248, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Mesprit - Charm - Level 46
  (481, 48100, 204, 16, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mesprit - Extrasensory - Level 50
  (481, 48100, 326, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Mesprit - Copycat - Level 61
  (481, 48100, 383, 16, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Mesprit - Natural Gift - Level 66
  (481, 48100, 363, 16, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Mesprit - Healing Wish - Level 76
  (481, 48100, 361, 16, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Mesprit - Psyshock - TM03
  (481, 48100, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 16),
  -- Mesprit - Calm Mind - TM04
  (481, 48100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Mesprit - Toxic - TM06
  (481, 48100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Mesprit - Hidden Power - TM10
  (481, 48100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Mesprit - Sunny Day - TM11
  (481, 48100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Mesprit - Ice Beam - TM13
  (481, 48100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Mesprit - Blizzard - TM14
  (481, 48100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Mesprit - Hyper Beam - TM15
  (481, 48100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Mesprit - Light Screen - TM16
  (481, 48100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Mesprit - Protect - TM17
  (481, 48100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Mesprit - Rain Dance - TM18
  (481, 48100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Mesprit - Safeguard - TM20
  (481, 48100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Mesprit - Frustration - TM21
  (481, 48100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Mesprit - Thunderbolt - TM24
  (481, 48100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Mesprit - Thunder - TM25
  (481, 48100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Mesprit - Return - TM27
  (481, 48100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Mesprit - Psychic - TM29
  (481, 48100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Mesprit - Shadow Ball - TM30
  (481, 48100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Mesprit - Double Team - TM32
  (481, 48100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Mesprit - Reflect - TM33
  (481, 48100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Mesprit - Sandstorm - TM37
  (481, 48100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 36),
  -- Mesprit - Facade - TM42
  (481, 48100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Mesprit - Rest - TM44
  (481, 48100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Mesprit - Round - TM48
  (481, 48100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Mesprit - Energy Ball - TM53
  (481, 48100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Mesprit - Fling - TM56
  (481, 48100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Mesprit - Charge Beam - TM57
  (481, 48100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Mesprit - Acrobatics - TM62
  (481, 48100, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 43),
  -- Mesprit - Giga Impact - TM68
  (481, 48100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Mesprit - Thunder Wave - TM73
  (481, 48100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Mesprit - Psych Up - TM77
  (481, 48100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Mesprit - Dream Eater - TM85
  (481, 48100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Mesprit - Grass Knot - TM86
  (481, 48100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 48),
  -- Mesprit - Swagger - TM87
  (481, 48100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Mesprit - Sleep Talk - TM88
  (481, 48100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Mesprit - U-turn - TM89
  (481, 48100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 51),
  -- Mesprit - Substitute - TM90
  (481, 48100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Mesprit - Trick Room - TM92
  (481, 48100, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 53),
  -- Mesprit - Dazzling Gleam - TM99
  (481, 48100, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 54),
  -- Mesprit - Confide - TM100
  (481, 48100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Mesprit - Fire Punch - Tutor
  (481, 48100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mesprit - Ice Punch - Tutor
  (481, 48100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mesprit - Thunder Punch - Tutor
  (481, 48100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Mesprit - Snore - Tutor
  (481, 48100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Mesprit - Iron Tail - Tutor
  (481, 48100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Mesprit - Helping Hand - Tutor
  (481, 48100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Mesprit - Trick - Tutor
  (481, 48100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Mesprit - Role Play - Tutor
  (481, 48100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Mesprit - Magic Coat - Tutor
  (481, 48100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Mesprit - Recycle - Tutor
  (481, 48100, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Mesprit - Knock Off - Tutor
  (481, 48100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Mesprit - Skill Swap - Tutor
  (481, 48100, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Mesprit - Signal Beam - Tutor
  (481, 48100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Mesprit - Shock Wave - Tutor
  (481, 48100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Mesprit - Water Pulse - Tutor
  (481, 48100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Mesprit - Zen Headbutt - Tutor
  (481, 48100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Mesprit - Stealth Rock - Tutor
  (481, 48100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Mesprit - Wonder Room - Tutor
  (481, 48100, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Mesprit - Telekinesis - Tutor
  (481, 48100, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Mesprit - Magic Room - Tutor
  (481, 48100, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Mesprit - Ally Switch - Tutor
  (481, 48100, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Mesprit - Laser Focus - Tutor
  (481, 48100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Natural Gift - Level 1
  (482, 48200, 363, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azelf - Last Resort - Level 1
  (482, 48200, 387, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azelf - Imprison - Level 6
  (482, 48200, 286, 16, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Azelf - Detect - Level 16
  (482, 48200, 197, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Azelf - Swift - Level 21
  (482, 48200, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Azelf - Uproar - Level 31
  (482, 48200, 253, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Azelf - Future Sight - Level 36
  (482, 48200, 248, 16, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Azelf - Nasty Plot - Level 46
  (482, 48200, 417, 16, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Azelf - Extrasensory - Level 50
  (482, 48200, 326, 16, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Azelf - Last Resort - Level 61
  (482, 48200, 387, 16, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Azelf - Natural Gift - Level 66
  (482, 48200, 363, 16, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Azelf - Explosion - Level 76
  (482, 48200, 153, 16, NULL, 1, 76, NULL, NULL, NULL, 14),
  -- Azelf - Psyshock - TM03
  (482, 48200, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 15),
  -- Azelf - Calm Mind - TM04
  (482, 48200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Azelf - Toxic - TM06
  (482, 48200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Azelf - Hidden Power - TM10
  (482, 48200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Azelf - Sunny Day - TM11
  (482, 48200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Azelf - Taunt - TM12
  (482, 48200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Azelf - Hyper Beam - TM15
  (482, 48200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Azelf - Light Screen - TM16
  (482, 48200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Azelf - Protect - TM17
  (482, 48200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Azelf - Rain Dance - TM18
  (482, 48200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Azelf - Safeguard - TM20
  (482, 48200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Azelf - Frustration - TM21
  (482, 48200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Azelf - Thunderbolt - TM24
  (482, 48200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Azelf - Thunder - TM25
  (482, 48200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Azelf - Return - TM27
  (482, 48200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Azelf - Psychic - TM29
  (482, 48200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Azelf - Shadow Ball - TM30
  (482, 48200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Azelf - Double Team - TM32
  (482, 48200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Azelf - Reflect - TM33
  (482, 48200, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Azelf - Flamethrower - TM35
  (482, 48200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Azelf - Sandstorm - TM37
  (482, 48200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Azelf - Fire Blast - TM38
  (482, 48200, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Azelf - Torment - TM41
  (482, 48200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Azelf - Facade - TM42
  (482, 48200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Azelf - Rest - TM44
  (482, 48200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Azelf - Round - TM48
  (482, 48200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Azelf - Energy Ball - TM53
  (482, 48200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 41),
  -- Azelf - Fling - TM56
  (482, 48200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Azelf - Charge Beam - TM57
  (482, 48200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Azelf - Acrobatics - TM62
  (482, 48200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 44),
  -- Azelf - Explosion - TM64
  (482, 48200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 45),
  -- Azelf - Payback - TM66
  (482, 48200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 46),
  -- Azelf - Giga Impact - TM68
  (482, 48200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Azelf - Thunder Wave - TM73
  (482, 48200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Azelf - Psych Up - TM77
  (482, 48200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Azelf - Dream Eater - TM85
  (482, 48200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 50),
  -- Azelf - Grass Knot - TM86
  (482, 48200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 51),
  -- Azelf - Swagger - TM87
  (482, 48200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Azelf - Sleep Talk - TM88
  (482, 48200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Azelf - U-turn - TM89
  (482, 48200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 54),
  -- Azelf - Substitute - TM90
  (482, 48200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Azelf - Trick Room - TM92
  (482, 48200, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 56),
  -- Azelf - Dazzling Gleam - TM99
  (482, 48200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 57),
  -- Azelf - Confide - TM100
  (482, 48200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Azelf - Fire Punch - Tutor
  (482, 48200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Azelf - Ice Punch - Tutor
  (482, 48200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Azelf - Thunder Punch - Tutor
  (482, 48200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Azelf - Snore - Tutor
  (482, 48200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Azelf - Iron Tail - Tutor
  (482, 48200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Azelf - Uproar - Tutor
  (482, 48200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Azelf - Helping Hand - Tutor
  (482, 48200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Azelf - Trick - Tutor
  (482, 48200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Azelf - Role Play - Tutor
  (482, 48200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Azelf - Magic Coat - Tutor
  (482, 48200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Azelf - Recycle - Tutor
  (482, 48200, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Azelf - Knock Off - Tutor
  (482, 48200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Azelf - Skill Swap - Tutor
  (482, 48200, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Azelf - Signal Beam - Tutor
  (482, 48200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Azelf - Shock Wave - Tutor
  (482, 48200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Azelf - Water Pulse - Tutor
  (482, 48200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Azelf - Last Resort - Tutor
  (482, 48200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Azelf - Zen Headbutt - Tutor
  (482, 48200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Azelf - Stealth Rock - Tutor
  (482, 48200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Azelf - Wonder Room - Tutor
  (482, 48200, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Azelf - Telekinesis - Tutor
  (482, 48200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Azelf - Magic Room - Tutor
  (482, 48200, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Azelf - Ally Switch - Tutor
  (482, 48200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Azelf - Laser Focus - Tutor
  (482, 48200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),

  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Dragon Breath - Level 1
  (483, 48300, 225, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Metal Claw - Level 6
  (483, 48300, 232, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 10
  (483, 48300, 246, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 15
  (483, 48300, 163, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dialga - Power Gem - Level 19
  (483, 48300, 408, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Dialga - Metal Burst - Level 24
  (483, 48300, 368, 16, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Dialga - Dragon Claw - Level 28
  (483, 48300, 337, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Dialga - Earth Power - Level 33
  (483, 48300, 414, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Dialga - Aura Sphere - Level 37
  (483, 48300, 396, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Dialga - Iron Tail - Level 42
  (483, 48300, 231, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Dialga - Roar of Time - Level 46
  (483, 48300, 459, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Dialga - Flash Cannon - Level 50
  (483, 48300, 430, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dialga - Dragon Claw - TM02
  (483, 48300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Dialga - Roar - TM05
  (483, 48300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 15),
  -- Dialga - Toxic - TM06
  (483, 48300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Dialga - Bulk Up - TM08
  (483, 48300, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 17),
  -- Dialga - Hidden Power - TM10
  (483, 48300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Dialga - Sunny Day - TM11
  (483, 48300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Dialga - Ice Beam - TM13
  (483, 48300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Dialga - Blizzard - TM14
  (483, 48300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Dialga - Hyper Beam - TM15
  (483, 48300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Dialga - Protect - TM17
  (483, 48300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Dialga - Rain Dance - TM18
  (483, 48300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Dialga - Safeguard - TM20
  (483, 48300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Dialga - Frustration - TM21
  (483, 48300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Dialga - Thunderbolt - TM24
  (483, 48300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Dialga - Thunder - TM25
  (483, 48300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Dialga - Earthquake - TM26
  (483, 48300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Dialga - Return - TM27
  (483, 48300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Dialga - Brick Break - TM31
  (483, 48300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Dialga - Double Team - TM32
  (483, 48300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Dialga - Flamethrower - TM35
  (483, 48300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Dialga - Sandstorm - TM37
  (483, 48300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Dialga - Fire Blast - TM38
  (483, 48300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Dialga - Rock Tomb - TM39
  (483, 48300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Dialga - Aerial Ace - TM40
  (483, 48300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Dialga - Facade - TM42
  (483, 48300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Dialga - Rest - TM44
  (483, 48300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Dialga - Round - TM48
  (483, 48300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Dialga - Echoed Voice - TM49
  (483, 48300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Dialga - Overheat - TM50
  (483, 48300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 42),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Dialga - Giga Impact - TM68
  (483, 48300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Dialga - Stone Edge - TM71
  (483, 48300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Dialga - Thunder Wave - TM73
  (483, 48300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Dialga - Psych Up - TM77
  (483, 48300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Dialga - Bulldoze - TM78
  (483, 48300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Dialga - Rock Slide - TM80
  (483, 48300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Dialga - Dragon Tail - TM82
  (483, 48300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 50),
  -- Dialga - Swagger - TM87
  (483, 48300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Dialga - Sleep Talk - TM88
  (483, 48300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Dialga - Substitute - TM90
  (483, 48300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Dialga - Flash Cannon - TM91
  (483, 48300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 54),
  -- Dialga - Trick Room - TM92
  (483, 48300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 55),
  -- Dialga - Confide - TM100
  (483, 48300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Dialga - Snore - Tutor
  (483, 48300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Dialga - Outrage - Tutor
  (483, 48300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Dialga - Iron Tail - Tutor
  (483, 48300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Dialga - Hyper Voice - Tutor
  (483, 48300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Dialga - Iron Defense - Tutor
  (483, 48300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Dialga - Shock Wave - Tutor
  (483, 48300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Dialga - Gravity - Tutor
  (483, 48300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Dialga - Magnet Rise - Tutor
  (483, 48300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Dialga - Dragon Pulse - Tutor
  (483, 48300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Dialga - Earth Power - Tutor
  (483, 48300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Dialga - Draco Meteor - Tutor
  (483, 48300, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Dialga - Iron Head - Tutor
  (483, 48300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Dialga - Stealth Rock - Tutor
  (483, 48300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Dialga - Stomping Tantrum - Tutor
  (483, 48300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Dragon Breath - Level 1
  (484, 48400, 225, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Water Pulse - Level 6
  (484, 48400, 352, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 10
  (484, 48400, 246, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 15
  (484, 48400, 163, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Palkia - Power Gem - Level 19
  (484, 48400, 408, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Palkia - Aqua Ring - Level 24
  (484, 48400, 392, 16, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Palkia - Dragon Claw - Level 28
  (484, 48400, 337, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Palkia - Earth Power - Level 33
  (484, 48400, 414, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Palkia - Aura Sphere - Level 37
  (484, 48400, 396, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Palkia - Aqua Tail - Level 42
  (484, 48400, 401, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Palkia - Spacial Rend - Level 46
  (484, 48400, 460, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Palkia - Hydro Pump - Level 50
  (484, 48400, 56, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Palkia - Dragon Claw - TM02
  (484, 48400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Palkia - Roar - TM05
  (484, 48400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 15),
  -- Palkia - Toxic - TM06
  (484, 48400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Palkia - Hail - TM07
  (484, 48400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Palkia - Bulk Up - TM08
  (484, 48400, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 18),
  -- Palkia - Hidden Power - TM10
  (484, 48400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Palkia - Sunny Day - TM11
  (484, 48400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Palkia - Ice Beam - TM13
  (484, 48400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Palkia - Blizzard - TM14
  (484, 48400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Palkia - Hyper Beam - TM15
  (484, 48400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Palkia - Protect - TM17
  (484, 48400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Palkia - Rain Dance - TM18
  (484, 48400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Palkia - Safeguard - TM20
  (484, 48400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Palkia - Frustration - TM21
  (484, 48400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Palkia - Thunderbolt - TM24
  (484, 48400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Palkia - Thunder - TM25
  (484, 48400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Palkia - Earthquake - TM26
  (484, 48400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Palkia - Return - TM27
  (484, 48400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Palkia - Brick Break - TM31
  (484, 48400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Palkia - Double Team - TM32
  (484, 48400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Palkia - Flamethrower - TM35
  (484, 48400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Palkia - Sandstorm - TM37
  (484, 48400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Palkia - Fire Blast - TM38
  (484, 48400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Palkia - Rock Tomb - TM39
  (484, 48400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Palkia - Aerial Ace - TM40
  (484, 48400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Palkia - Facade - TM42
  (484, 48400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Palkia - Rest - TM44
  (484, 48400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Palkia - Round - TM48
  (484, 48400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Palkia - Echoed Voice - TM49
  (484, 48400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Palkia - Focus Blast - TM52
  (484, 48400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Palkia - Fling - TM56
  (484, 48400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Palkia - Giga Impact - TM68
  (484, 48400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Palkia - Stone Edge - TM71
  (484, 48400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Palkia - Thunder Wave - TM73
  (484, 48400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Palkia - Psych Up - TM77
  (484, 48400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Palkia - Bulldoze - TM78
  (484, 48400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 50),
  -- Palkia - Rock Slide - TM80
  (484, 48400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Palkia - Dragon Tail - TM82
  (484, 48400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 52),
  -- Palkia - Swagger - TM87
  (484, 48400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Palkia - Sleep Talk - TM88
  (484, 48400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Palkia - Substitute - TM90
  (484, 48400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Palkia - Trick Room - TM92
  (484, 48400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 56),
  -- Palkia - Surf - TM94
  (484, 48400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 57),
  -- Palkia - Confide - TM100
  (484, 48400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Palkia - Snore - Tutor
  (484, 48400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Palkia - Outrage - Tutor
  (484, 48400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Palkia - Focus Punch - Tutor
  (484, 48400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Palkia - Hyper Voice - Tutor
  (484, 48400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Palkia - Shock Wave - Tutor
  (484, 48400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Palkia - Water Pulse - Tutor
  (484, 48400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Palkia - Gravity - Tutor
  (484, 48400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Palkia - Aqua Tail - Tutor
  (484, 48400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Palkia - Dragon Pulse - Tutor
  (484, 48400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Palkia - Earth Power - Tutor
  (484, 48400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Palkia - Draco Meteor - Tutor
  (484, 48400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Palkia - Stomping Tantrum - Tutor
  (484, 48400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Palkia - Liquidation - Tutor
  (484, 48400, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Heatran - Fire Spin - Level 1
  (485, 48500, 83, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Ancient Power - Level 1
  (485, 48500, 246, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatran - Heat Wave - Level 1
  (485, 48500, 257, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heatran - Earth Power - Level 1
  (485, 48500, 414, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heatran - Iron Head - Level 1
  (485, 48500, 442, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heatran - Magma Storm - Level 1
  (485, 48500, 463, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Heatran - Leer - Level 9
  (485, 48500, 43, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Heatran - Fire Fang - Level 17
  (485, 48500, 424, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Heatran - Metal Sound - Level 25
  (485, 48500, 319, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Heatran - Crunch - Level 33
  (485, 48500, 242, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Heatran - Scary Face - Level 41
  (485, 48500, 184, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Heatran - Lava Plume - Level 49
  (485, 48500, 436, 16, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Heatran - Fire Spin - Level 57
  (485, 48500, 83, 16, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Heatran - Iron Head - Level 65
  (485, 48500, 442, 16, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Heatran - Earth Power - Level 73
  (485, 48500, 414, 16, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Heatran - Heat Wave - Level 81
  (485, 48500, 257, 16, NULL, 1, 81, NULL, NULL, NULL, 16),
  -- Heatran - Stone Edge - Level 88
  (485, 48500, 444, 16, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Heatran - Magma Storm - Level 96
  (485, 48500, 463, 16, NULL, 1, 96, NULL, NULL, NULL, 18),
  -- Heatran - Roar - TM05
  (485, 48500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Heatran - Toxic - TM06
  (485, 48500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Heatran - Hidden Power - TM10
  (485, 48500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Heatran - Sunny Day - TM11
  (485, 48500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Heatran - Taunt - TM12
  (485, 48500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Heatran - Hyper Beam - TM15
  (485, 48500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Heatran - Protect - TM17
  (485, 48500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Heatran - Frustration - TM21
  (485, 48500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Heatran - Solar Beam - TM22
  (485, 48500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Heatran - Earthquake - TM26
  (485, 48500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Heatran - Return - TM27
  (485, 48500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Heatran - Double Team - TM32
  (485, 48500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Heatran - Flamethrower - TM35
  (485, 48500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 31),
  -- Heatran - Fire Blast - TM38
  (485, 48500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 32),
  -- Heatran - Rock Tomb - TM39
  (485, 48500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Heatran - Torment - TM41
  (485, 48500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Heatran - Facade - TM42
  (485, 48500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Heatran - Flame Charge - TM43
  (485, 48500, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 36),
  -- Heatran - Rest - TM44
  (485, 48500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Heatran - Attract - TM45
  (485, 48500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Heatran - Round - TM48
  (485, 48500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Heatran - Overheat - TM50
  (485, 48500, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 40),
  -- Heatran - Will-O-Wisp - TM61
  (485, 48500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 41),
  -- Heatran - Explosion - TM64
  (485, 48500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 42),
  -- Heatran - Payback - TM66
  (485, 48500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Heatran - Giga Impact - TM68
  (485, 48500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Heatran - Stone Edge - TM71
  (485, 48500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Heatran - Bulldoze - TM78
  (485, 48500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Heatran - Rock Slide - TM80
  (485, 48500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Heatran - Swagger - TM87
  (485, 48500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Heatran - Sleep Talk - TM88
  (485, 48500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Heatran - Substitute - TM90
  (485, 48500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Heatran - Flash Cannon - TM91
  (485, 48500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 51),
  -- Heatran - Nature Power - TM96
  (485, 48500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 52),
  -- Heatran - Dark Pulse - TM97
  (485, 48500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Heatran - Confide - TM100
  (485, 48500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Heatran - Snore - Tutor
  (485, 48500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Heatran - Uproar - Tutor
  (485, 48500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Heatran - Heat Wave - Tutor
  (485, 48500, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Heatran - Iron Defense - Tutor
  (485, 48500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Heatran - Dragon Pulse - Tutor
  (485, 48500, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Heatran - Earth Power - Tutor
  (485, 48500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Heatran - Iron Head - Tutor
  (485, 48500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Heatran - Stealth Rock - Tutor
  (485, 48500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Heatran - Bug Bite - Tutor
  (485, 48500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Heatran - Stomping Tantrum - Tutor
  (485, 48500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Regigigas - Fire Punch - Level 1
  (486, 48600, 7, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Ice Punch - Level 1
  (486, 48600, 8, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Thunder Punch - Level 1
  (486, 48600, 9, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regigigas - Dizzy Punch - Level 1
  (486, 48600, 146, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regigigas - Foresight - Level 1
  (486, 48600, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Regigigas - Knock Off - Level 1
  (486, 48600, 282, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Regigigas - Crush Grip - Level 1
  (486, 48600, 462, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Regigigas - Heavy Slam - Level 1
  (486, 48600, 484, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Regigigas - Revenge - Level 25
  (486, 48600, 279, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Regigigas - Wide Guard - Level 40
  (486, 48600, 469, 16, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Regigigas - Zen Headbutt - Level 50
  (486, 48600, 428, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Regigigas - Payback - Level 65
  (486, 48600, 371, 16, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Regigigas - Crush Grip - Level 75
  (486, 48600, 462, 16, NULL, 1, 75, NULL, NULL, NULL, 14),
  -- Regigigas - Heavy Slam - Level 90
  (486, 48600, 484, 16, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Regigigas - Giga Impact - Level 100
  (486, 48600, 416, 16, NULL, 1, 100, NULL, NULL, NULL, 16),
  -- Regigigas - Toxic - TM06
  (486, 48600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Regigigas - Hidden Power - TM10
  (486, 48600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Regigigas - Sunny Day - TM11
  (486, 48600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Regigigas - Hyper Beam - TM15
  (486, 48600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Regigigas - Rain Dance - TM18
  (486, 48600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Regigigas - Safeguard - TM20
  (486, 48600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Regigigas - Frustration - TM21
  (486, 48600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Regigigas - Smack Down - TM23
  (486, 48600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 24),
  -- Regigigas - Thunderbolt - TM24
  (486, 48600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Regigigas - Thunder - TM25
  (486, 48600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Regigigas - Earthquake - TM26
  (486, 48600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Regigigas - Return - TM27
  (486, 48600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Regigigas - Brick Break - TM31
  (486, 48600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 29),
  -- Regigigas - Double Team - TM32
  (486, 48600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Regigigas - Rock Tomb - TM39
  (486, 48600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Regigigas - Aerial Ace - TM40
  (486, 48600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Regigigas - Facade - TM42
  (486, 48600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Regigigas - Round - TM48
  (486, 48600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Regigigas - Focus Blast - TM52
  (486, 48600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 35),
  -- Regigigas - Fling - TM56
  (486, 48600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Regigigas - Payback - TM66
  (486, 48600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Regigigas - Giga Impact - TM68
  (486, 48600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Regigigas - Rock Polish - TM69
  (486, 48600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 39),
  -- Regigigas - Stone Edge - TM71
  (486, 48600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Regigigas - Thunder Wave - TM73
  (486, 48600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Regigigas - Psych Up - TM77
  (486, 48600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Regigigas - Bulldoze - TM78
  (486, 48600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Regigigas - Rock Slide - TM80
  (486, 48600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Regigigas - Swagger - TM87
  (486, 48600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Regigigas - Sleep Talk - TM88
  (486, 48600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Regigigas - Substitute - TM90
  (486, 48600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Regigigas - Nature Power - TM96
  (486, 48600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 48),
  -- Regigigas - Confide - TM100
  (486, 48600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Regigigas - Fire Punch - Tutor
  (486, 48600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Regigigas - Ice Punch - Tutor
  (486, 48600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Regigigas - Thunder Punch - Tutor
  (486, 48600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Regigigas - Snore - Tutor
  (486, 48600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Regigigas - Icy Wind - Tutor
  (486, 48600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Regigigas - Focus Punch - Tutor
  (486, 48600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Regigigas - Superpower - Tutor
  (486, 48600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Regigigas - Knock Off - Tutor
  (486, 48600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Regigigas - Block - Tutor
  (486, 48600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Regigigas - Shock Wave - Tutor
  (486, 48600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Regigigas - Gravity - Tutor
  (486, 48600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Regigigas - Drain Punch - Tutor
  (486, 48600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Regigigas - Earth Power - Tutor
  (486, 48600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Regigigas - Zen Headbutt - Tutor
  (486, 48600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Regigigas - Iron Head - Tutor
  (486, 48600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Regigigas - Stomping Tantrum - Tutor
  (486, 48600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Giratina - Scary Face - Level 1
  (487, 48700, 184, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Dragon Breath - Level 1
  (487, 48700, 225, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Ominous Wind - Level 6
  (487, 48700, 466, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 10
  (487, 48700, 246, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina - Slash - Level 15
  (487, 48700, 163, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina - Shadow Sneak - Level 19
  (487, 48700, 425, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina - Destiny Bond - Level 24
  (487, 48700, 194, 16, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina - Dragon Claw - Level 28
  (487, 48700, 337, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina - Earth Power - Level 33
  (487, 48700, 414, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina - Aura Sphere - Level 37
  (487, 48700, 396, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina - Shadow Force - Level 46
  (487, 48700, 467, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina - Hex - Level 50
  (487, 48700, 506, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina - Dragon Claw - TM02
  (487, 48700, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Giratina - Calm Mind - TM04
  (487, 48700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 15),
  -- Giratina - Roar - TM05
  (487, 48700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 16),
  -- Giratina - Toxic - TM06
  (487, 48700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Giratina - Hidden Power - TM10
  (487, 48700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Giratina - Sunny Day - TM11
  (487, 48700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Giratina - Hyper Beam - TM15
  (487, 48700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Giratina - Protect - TM17
  (487, 48700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Giratina - Rain Dance - TM18
  (487, 48700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Giratina - Safeguard - TM20
  (487, 48700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Giratina - Frustration - TM21
  (487, 48700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Giratina - Thunderbolt - TM24
  (487, 48700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Giratina - Thunder - TM25
  (487, 48700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Giratina - Earthquake - TM26
  (487, 48700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Giratina - Return - TM27
  (487, 48700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Giratina - Psychic - TM29
  (487, 48700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 29),
  -- Giratina - Shadow Ball - TM30
  (487, 48700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Giratina - Double Team - TM32
  (487, 48700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Giratina - Aerial Ace - TM40
  (487, 48700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Giratina - Facade - TM42
  (487, 48700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Giratina - Rest - TM44
  (487, 48700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Giratina - Round - TM48
  (487, 48700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Giratina - Echoed Voice - TM49
  (487, 48700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Giratina - Steel Wing - TM51
  (487, 48700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 37),
  -- Giratina - Energy Ball - TM53
  (487, 48700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Giratina - Charge Beam - TM57
  (487, 48700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Giratina - Brutal Swing - TM59
  (487, 48700, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 40),
  -- Giratina - Will-O-Wisp - TM61
  (487, 48700, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 41),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 42),
  -- Giratina - Payback - TM66
  (487, 48700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Giratina - Giga Impact - TM68
  (487, 48700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Giratina - Stone Edge - TM71
  (487, 48700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Giratina - Thunder Wave - TM73
  (487, 48700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Giratina - Fly - TM76
  (487, 48700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 47),
  -- Giratina - Psych Up - TM77
  (487, 48700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Giratina - Bulldoze - TM78
  (487, 48700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Giratina - Dragon Tail - TM82
  (487, 48700, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 50),
  -- Giratina - Dream Eater - TM85
  (487, 48700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 51),
  -- Giratina - Swagger - TM87
  (487, 48700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Giratina - Sleep Talk - TM88
  (487, 48700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Giratina - Substitute - TM90
  (487, 48700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Giratina - Dark Pulse - TM97
  (487, 48700, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Giratina - Confide - TM100
  (487, 48700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Giratina - Snore - Tutor
  (487, 48700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Giratina - Spite - Tutor
  (487, 48700, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Giratina - Icy Wind - Tutor
  (487, 48700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Giratina - Outrage - Tutor
  (487, 48700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Giratina - Pain Split - Tutor
  (487, 48700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Giratina - Iron Tail - Tutor
  (487, 48700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Giratina - Hyper Voice - Tutor
  (487, 48700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Giratina - Shock Wave - Tutor
  (487, 48700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Giratina - Gravity - Tutor
  (487, 48700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Giratina - Aqua Tail - Tutor
  (487, 48700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Giratina - Dragon Pulse - Tutor
  (487, 48700, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Giratina - Earth Power - Tutor
  (487, 48700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Giratina - Defog - Tutor
  (487, 48700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Giratina - Draco Meteor - Tutor
  (487, 48700, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Giratina - Iron Head - Tutor
  (487, 48700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Giratina - Telekinesis - Tutor
  (487, 48700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Moonlight - Level 1
  (488, 48800, 236, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cresselia - Psycho Shift - Level 1
  (488, 48800, 375, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cresselia - Psycho Cut - Level 1
  (488, 48800, 427, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cresselia - Lunar Dance - Level 1
  (488, 48800, 461, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cresselia - Safeguard - Level 11
  (488, 48800, 219, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Cresselia - Mist - Level 20
  (488, 48800, 54, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cresselia - Aurora Beam - Level 29
  (488, 48800, 62, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cresselia - Future Sight - Level 38
  (488, 48800, 248, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Cresselia - Slash - Level 47
  (488, 48800, 163, 16, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Cresselia - Moonlight - Level 57
  (488, 48800, 236, 16, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Cresselia - Psycho Cut - Level 66
  (488, 48800, 427, 16, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cresselia - Psycho Shift - Level 75
  (488, 48800, 375, 16, NULL, 1, 75, NULL, NULL, NULL, 14),
  -- Cresselia - Lunar Dance - Level 84
  (488, 48800, 461, 16, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Cresselia - Psychic - Level 93
  (488, 48800, 94, 16, NULL, 1, 93, NULL, NULL, NULL, 16),
  -- Cresselia - Moonblast - Level 99
  (488, 48800, 585, 16, NULL, 1, 99, NULL, NULL, NULL, 17),
  -- Cresselia - Psyshock - TM03
  (488, 48800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Cresselia - Calm Mind - TM04
  (488, 48800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Cresselia - Toxic - TM06
  (488, 48800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Cresselia - Hidden Power - TM10
  (488, 48800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Cresselia - Sunny Day - TM11
  (488, 48800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Cresselia - Ice Beam - TM13
  (488, 48800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Cresselia - Hyper Beam - TM15
  (488, 48800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Cresselia - Light Screen - TM16
  (488, 48800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Cresselia - Protect - TM17
  (488, 48800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Cresselia - Rain Dance - TM18
  (488, 48800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Cresselia - Safeguard - TM20
  (488, 48800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Cresselia - Frustration - TM21
  (488, 48800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Cresselia - Solar Beam - TM22
  (488, 48800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Cresselia - Return - TM27
  (488, 48800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Cresselia - Psychic - TM29
  (488, 48800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Cresselia - Shadow Ball - TM30
  (488, 48800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Cresselia - Double Team - TM32
  (488, 48800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Cresselia - Reflect - TM33
  (488, 48800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Cresselia - Facade - TM42
  (488, 48800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Cresselia - Rest - TM44
  (488, 48800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Cresselia - Attract - TM45
  (488, 48800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Cresselia - Round - TM48
  (488, 48800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Cresselia - Energy Ball - TM53
  (488, 48800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Cresselia - Charge Beam - TM57
  (488, 48800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 41),
  -- Cresselia - Giga Impact - TM68
  (488, 48800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Cresselia - Thunder Wave - TM73
  (488, 48800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Cresselia - Psych Up - TM77
  (488, 48800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 44),
  -- Cresselia - Dream Eater - TM85
  (488, 48800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Cresselia - Grass Knot - TM86
  (488, 48800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Cresselia - Swagger - TM87
  (488, 48800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Cresselia - Sleep Talk - TM88
  (488, 48800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Cresselia - Substitute - TM90
  (488, 48800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Cresselia - Trick Room - TM92
  (488, 48800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 50),
  -- Cresselia - Confide - TM100
  (488, 48800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Cresselia - Snore - Tutor
  (488, 48800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cresselia - Icy Wind - Tutor
  (488, 48800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cresselia - Helping Hand - Tutor
  (488, 48800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cresselia - Trick - Tutor
  (488, 48800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cresselia - Magic Coat - Tutor
  (488, 48800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cresselia - Recycle - Tutor
  (488, 48800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cresselia - Skill Swap - Tutor
  (488, 48800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cresselia - Signal Beam - Tutor
  (488, 48800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cresselia - Gravity - Tutor
  (488, 48800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cresselia - Zen Headbutt - Tutor
  (488, 48800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Cresselia - Telekinesis - Tutor
  (488, 48800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Cresselia - Magic Room - Tutor
  (488, 48800, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Cresselia - Ally Switch - Tutor
  (488, 48800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Phione - Bubble - Level 1
  (489, 48900, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Water Sport - Level 1
  (489, 48900, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 16, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 16, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 16, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 16, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 16, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 16, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 16, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 16, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Phione - Toxic - TM06
  (489, 48900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 12),
  -- Phione - Hail - TM07
  (489, 48900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 13),
  -- Phione - Hidden Power - TM10
  (489, 48900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Phione - Ice Beam - TM13
  (489, 48900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 15),
  -- Phione - Blizzard - TM14
  (489, 48900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 16),
  -- Phione - Protect - TM17
  (489, 48900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Phione - Rain Dance - TM18
  (489, 48900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Phione - Safeguard - TM20
  (489, 48900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 19),
  -- Phione - Frustration - TM21
  (489, 48900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Phione - Return - TM27
  (489, 48900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Phione - Double Team - TM32
  (489, 48900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Phione - Facade - TM42
  (489, 48900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Phione - Rest - TM44
  (489, 48900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Phione - Round - TM48
  (489, 48900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 25),
  -- Phione - Scald - TM55
  (489, 48900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 26),
  -- Phione - Fling - TM56
  (489, 48900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 27),
  -- Phione - Psych Up - TM77
  (489, 48900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 28),
  -- Phione - Grass Knot - TM86
  (489, 48900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 29),
  -- Phione - Swagger - TM87
  (489, 48900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 30),
  -- Phione - Sleep Talk - TM88
  (489, 48900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 31),
  -- Phione - U-turn - TM89
  (489, 48900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 32),
  -- Phione - Substitute - TM90
  (489, 48900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 33),
  -- Phione - Surf - TM94
  (489, 48900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 34),
  -- Phione - Waterfall - TM98
  (489, 48900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 35),
  -- Phione - Dazzling Gleam - TM99
  (489, 48900, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 36),
  -- Phione - Confide - TM100
  (489, 48900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Phione - Snore - Tutor
  (489, 48900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Phione - Icy Wind - Tutor
  (489, 48900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Phione - Heal Bell - Tutor
  (489, 48900, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Phione - Uproar - Tutor
  (489, 48900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Phione - Helping Hand - Tutor
  (489, 48900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Phione - Knock Off - Tutor
  (489, 48900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Phione - Signal Beam - Tutor
  (489, 48900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Phione - Bounce - Tutor
  (489, 48900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Phione - Covet - Tutor
  (489, 48900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Phione - Water Pulse - Tutor
  (489, 48900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Phione - Last Resort - Tutor
  (489, 48900, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Phione - Liquidation - Tutor
  (489, 48900, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),

  -- Manaphy - Bubble - Level 1
  (490, 49000, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Tail Glow - Level 1
  (490, 49000, 294, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manaphy - Water Sport - Level 1
  (490, 49000, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 16, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 16, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 16, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 16, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 16, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 16, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 16, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 16, NULL, 1, 69, NULL, NULL, NULL, 12),
  -- Manaphy - Heart Swap - Level 76
  (490, 49000, 391, 16, NULL, 1, 76, NULL, NULL, NULL, 13),
  -- Manaphy - Calm Mind - TM04
  (490, 49000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 14),
  -- Manaphy - Toxic - TM06
  (490, 49000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Manaphy - Hail - TM07
  (490, 49000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Manaphy - Hidden Power - TM10
  (490, 49000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Manaphy - Ice Beam - TM13
  (490, 49000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Manaphy - Blizzard - TM14
  (490, 49000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Manaphy - Hyper Beam - TM15
  (490, 49000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Manaphy - Light Screen - TM16
  (490, 49000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Manaphy - Protect - TM17
  (490, 49000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Manaphy - Rain Dance - TM18
  (490, 49000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Manaphy - Safeguard - TM20
  (490, 49000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Manaphy - Frustration - TM21
  (490, 49000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Manaphy - Return - TM27
  (490, 49000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Manaphy - Psychic - TM29
  (490, 49000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Manaphy - Shadow Ball - TM30
  (490, 49000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Manaphy - Double Team - TM32
  (490, 49000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Manaphy - Reflect - TM33
  (490, 49000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Manaphy - Facade - TM42
  (490, 49000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Manaphy - Rest - TM44
  (490, 49000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Manaphy - Round - TM48
  (490, 49000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Manaphy - Energy Ball - TM53
  (490, 49000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 34),
  -- Manaphy - Scald - TM55
  (490, 49000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 35),
  -- Manaphy - Fling - TM56
  (490, 49000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Manaphy - Giga Impact - TM68
  (490, 49000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Manaphy - Psych Up - TM77
  (490, 49000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Manaphy - Grass Knot - TM86
  (490, 49000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Manaphy - Swagger - TM87
  (490, 49000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Manaphy - Sleep Talk - TM88
  (490, 49000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Manaphy - U-turn - TM89
  (490, 49000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 42),
  -- Manaphy - Substitute - TM90
  (490, 49000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Manaphy - Surf - TM94
  (490, 49000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Manaphy - Waterfall - TM98
  (490, 49000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 45),
  -- Manaphy - Dazzling Gleam - TM99
  (490, 49000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 46),
  -- Manaphy - Confide - TM100
  (490, 49000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Manaphy - Snore - Tutor
  (490, 49000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Manaphy - Icy Wind - Tutor
  (490, 49000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Manaphy - Heal Bell - Tutor
  (490, 49000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Manaphy - Uproar - Tutor
  (490, 49000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Manaphy - Helping Hand - Tutor
  (490, 49000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Manaphy - Knock Off - Tutor
  (490, 49000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Manaphy - Skill Swap - Tutor
  (490, 49000, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Manaphy - Signal Beam - Tutor
  (490, 49000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Manaphy - Bounce - Tutor
  (490, 49000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Manaphy - Covet - Tutor
  (490, 49000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Manaphy - Water Pulse - Tutor
  (490, 49000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Manaphy - Last Resort - Tutor
  (490, 49000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Manaphy - Liquidation - Tutor
  (490, 49000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Darkrai - Disable - Level 1
  (491, 49100, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Ominous Wind - Level 1
  (491, 49100, 466, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 16, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 16, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Darkrai - Feint Attack - Level 29
  (491, 49100, 185, 16, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Darkrai - Nightmare - Level 38
  (491, 49100, 171, 16, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 16, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 16, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 16, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 16, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 16, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 16, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Darkrai - Calm Mind - TM04
  (491, 49100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 13),
  -- Darkrai - Toxic - TM06
  (491, 49100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Darkrai - Hidden Power - TM10
  (491, 49100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Darkrai - Sunny Day - TM11
  (491, 49100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Darkrai - Taunt - TM12
  (491, 49100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 17),
  -- Darkrai - Ice Beam - TM13
  (491, 49100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Darkrai - Blizzard - TM14
  (491, 49100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Darkrai - Hyper Beam - TM15
  (491, 49100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Darkrai - Protect - TM17
  (491, 49100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Darkrai - Rain Dance - TM18
  (491, 49100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Darkrai - Frustration - TM21
  (491, 49100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Darkrai - Thunderbolt - TM24
  (491, 49100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Darkrai - Thunder - TM25
  (491, 49100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 25),
  -- Darkrai - Return - TM27
  (491, 49100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Darkrai - Psychic - TM29
  (491, 49100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Darkrai - Shadow Ball - TM30
  (491, 49100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Darkrai - Brick Break - TM31
  (491, 49100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 29),
  -- Darkrai - Double Team - TM32
  (491, 49100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Darkrai - Sludge Bomb - TM36
  (491, 49100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Darkrai - Rock Tomb - TM39
  (491, 49100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Darkrai - Aerial Ace - TM40
  (491, 49100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Darkrai - Torment - TM41
  (491, 49100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Darkrai - Facade - TM42
  (491, 49100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Darkrai - Rest - TM44
  (491, 49100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Darkrai - Thief - TM46
  (491, 49100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Darkrai - Round - TM48
  (491, 49100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Darkrai - Focus Blast - TM52
  (491, 49100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 39),
  -- Darkrai - Fling - TM56
  (491, 49100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Darkrai - Charge Beam - TM57
  (491, 49100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 41),
  -- Darkrai - Will-O-Wisp - TM61
  (491, 49100, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 42),
  -- Darkrai - Embargo - TM63
  (491, 49100, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 43),
  -- Darkrai - Shadow Claw - TM65
  (491, 49100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Darkrai - Payback - TM66
  (491, 49100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Darkrai - Giga Impact - TM68
  (491, 49100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Darkrai - Thunder Wave - TM73
  (491, 49100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 47),
  -- Darkrai - Swords Dance - TM75
  (491, 49100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 48),
  -- Darkrai - Psych Up - TM77
  (491, 49100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Darkrai - Rock Slide - TM80
  (491, 49100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Darkrai - X-Scissor - TM81
  (491, 49100, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 51),
  -- Darkrai - Poison Jab - TM84
  (491, 49100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 52),
  -- Darkrai - Dream Eater - TM85
  (491, 49100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 53),
  -- Darkrai - Swagger - TM87
  (491, 49100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Darkrai - Sleep Talk - TM88
  (491, 49100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Darkrai - Substitute - TM90
  (491, 49100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Darkrai - Snarl - TM95
  (491, 49100, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 57),
  -- Darkrai - Dark Pulse - TM97
  (491, 49100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 58),
  -- Darkrai - Confide - TM100
  (491, 49100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Darkrai - Snore - Tutor
  (491, 49100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Darkrai - Spite - Tutor
  (491, 49100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Darkrai - Icy Wind - Tutor
  (491, 49100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Darkrai - Focus Punch - Tutor
  (491, 49100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Darkrai - Trick - Tutor
  (491, 49100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Darkrai - Knock Off - Tutor
  (491, 49100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Darkrai - Snatch - Tutor
  (491, 49100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Darkrai - Shock Wave - Tutor
  (491, 49100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Darkrai - Last Resort - Tutor
  (491, 49100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Darkrai - Drain Punch - Tutor
  (491, 49100, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Darkrai - Wonder Room - Tutor
  (491, 49100, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Darkrai - Foul Play - Tutor
  (491, 49100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Darkrai - Throat Chop - Tutor
  (491, 49100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Shaymin - Growth - Level 1
  (492, 49200, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 16, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 16, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 16, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 16, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Natural Gift - Level 46
  (492, 49200, 363, 16, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 16, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Aromatherapy - Level 64
  (492, 49200, 312, 16, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 16, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 16, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 16, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 16, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Toxic - TM06
  (492, 49200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Shaymin - Hidden Power - TM10
  (492, 49200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Shaymin - Sunny Day - TM11
  (492, 49200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 15),
  -- Shaymin - Hyper Beam - TM15
  (492, 49200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 16),
  -- Shaymin - Protect - TM17
  (492, 49200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Shaymin - Safeguard - TM20
  (492, 49200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 18),
  -- Shaymin - Frustration - TM21
  (492, 49200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Shaymin - Solar Beam - TM22
  (492, 49200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 20),
  -- Shaymin - Return - TM27
  (492, 49200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Shaymin - Psychic - TM29
  (492, 49200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 22),
  -- Shaymin - Double Team - TM32
  (492, 49200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Shaymin - Facade - TM42
  (492, 49200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Shaymin - Rest - TM44
  (492, 49200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Shaymin - Round - TM48
  (492, 49200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Shaymin - Energy Ball - TM53
  (492, 49200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 27),
  -- Shaymin - Giga Impact - TM68
  (492, 49200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 28),
  -- Shaymin - Swords Dance - TM75
  (492, 49200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 29),
  -- Shaymin - Psych Up - TM77
  (492, 49200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 30),
  -- Shaymin - Grass Knot - TM86
  (492, 49200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 31),
  -- Shaymin - Swagger - TM87
  (492, 49200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Shaymin - Sleep Talk - TM88
  (492, 49200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Shaymin - Substitute - TM90
  (492, 49200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Shaymin - Nature Power - TM96
  (492, 49200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 35),
  -- Shaymin - Dazzling Gleam - TM99
  (492, 49200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 36),
  -- Shaymin - Confide - TM100
  (492, 49200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Shaymin - Snore - Tutor
  (492, 49200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Shaymin - Giga Drain - Tutor
  (492, 49200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Shaymin - Synthesis - Tutor
  (492, 49200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Shaymin - Endeavor - Tutor
  (492, 49200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Shaymin - Covet - Tutor
  (492, 49200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Shaymin - Last Resort - Tutor
  (492, 49200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Shaymin - Worry Seed - Tutor
  (492, 49200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Shaymin - Seed Bomb - Tutor
  (492, 49200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Shaymin - Earth Power - Tutor
  (492, 49200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Shaymin - Zen Headbutt - Tutor
  (492, 49200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Shaymin - Laser Focus - Tutor
  (492, 49200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Arceus - Seismic Toss - Level 1
  (493, 49300, 69, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Level 1
  (493, 49300, 322, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arceus - Natural Gift - Level 1
  (493, 49300, 363, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arceus - Punishment - Level 1
  (493, 49300, 386, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 16, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 16, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Arceus - Refresh - Level 50
  (493, 49300, 287, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 16, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 16, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 16, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 16, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 16, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Arceus - Work Up - TM01
  (493, 49300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Arceus - Dragon Claw - TM02
  (493, 49300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 16),
  -- Arceus - Psyshock - TM03
  (493, 49300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Arceus - Calm Mind - TM04
  (493, 49300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Arceus - Roar - TM05
  (493, 49300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Arceus - Toxic - TM06
  (493, 49300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Arceus - Hail - TM07
  (493, 49300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Arceus - Hidden Power - TM10
  (493, 49300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Arceus - Sunny Day - TM11
  (493, 49300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Arceus - Ice Beam - TM13
  (493, 49300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Arceus - Blizzard - TM14
  (493, 49300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Arceus - Hyper Beam - TM15
  (493, 49300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Arceus - Light Screen - TM16
  (493, 49300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Arceus - Protect - TM17
  (493, 49300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Arceus - Rain Dance - TM18
  (493, 49300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Arceus - Safeguard - TM20
  (493, 49300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 30),
  -- Arceus - Frustration - TM21
  (493, 49300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Arceus - Solar Beam - TM22
  (493, 49300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 32),
  -- Arceus - Thunderbolt - TM24
  (493, 49300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 33),
  -- Arceus - Thunder - TM25
  (493, 49300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 34),
  -- Arceus - Earthquake - TM26
  (493, 49300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 35),
  -- Arceus - Return - TM27
  (493, 49300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 36),
  -- Arceus - Psychic - TM29
  (493, 49300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 37),
  -- Arceus - Shadow Ball - TM30
  (493, 49300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Arceus - Brick Break - TM31
  (493, 49300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 39),
  -- Arceus - Double Team - TM32
  (493, 49300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 40),
  -- Arceus - Reflect - TM33
  (493, 49300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 41),
  -- Arceus - Flamethrower - TM35
  (493, 49300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 42),
  -- Arceus - Sludge Bomb - TM36
  (493, 49300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 43),
  -- Arceus - Sandstorm - TM37
  (493, 49300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 44),
  -- Arceus - Fire Blast - TM38
  (493, 49300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 45),
  -- Arceus - Rock Tomb - TM39
  (493, 49300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 46),
  -- Arceus - Aerial Ace - TM40
  (493, 49300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 47),
  -- Arceus - Facade - TM42
  (493, 49300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 48),
  -- Arceus - Rest - TM44
  (493, 49300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 49),
  -- Arceus - Round - TM48
  (493, 49300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 50),
  -- Arceus - Echoed Voice - TM49
  (493, 49300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 51),
  -- Arceus - Overheat - TM50
  (493, 49300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 52),
  -- Arceus - Focus Blast - TM52
  (493, 49300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 53),
  -- Arceus - Energy Ball - TM53
  (493, 49300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 54),
  -- Arceus - Charge Beam - TM57
  (493, 49300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 55),
  -- Arceus - Quash - TM60
  (493, 49300, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 56),
  -- Arceus - Will-O-Wisp - TM61
  (493, 49300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 57),
  -- Arceus - Shadow Claw - TM65
  (493, 49300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 58),
  -- Arceus - Payback - TM66
  (493, 49300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 59),
  -- Arceus - Giga Impact - TM68
  (493, 49300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 60),
  -- Arceus - Stone Edge - TM71
  (493, 49300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 61),
  -- Arceus - Thunder Wave - TM73
  (493, 49300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 62),
  -- Arceus - Swords Dance - TM75
  (493, 49300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 63),
  -- Arceus - Fly - TM76
  (493, 49300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 64),
  -- Arceus - Psych Up - TM77
  (493, 49300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 65),
  -- Arceus - Bulldoze - TM78
  (493, 49300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 66),
  -- Arceus - Rock Slide - TM80
  (493, 49300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 67),
  -- Arceus - X-Scissor - TM81
  (493, 49300, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 68),
  -- Arceus - Poison Jab - TM84
  (493, 49300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 69),
  -- Arceus - Dream Eater - TM85
  (493, 49300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 70),
  -- Arceus - Grass Knot - TM86
  (493, 49300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 71),
  -- Arceus - Swagger - TM87
  (493, 49300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 72),
  -- Arceus - Sleep Talk - TM88
  (493, 49300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 73),
  -- Arceus - Substitute - TM90
  (493, 49300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 74),
  -- Arceus - Flash Cannon - TM91
  (493, 49300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 75),
  -- Arceus - Trick Room - TM92
  (493, 49300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 76),
  -- Arceus - Surf - TM94
  (493, 49300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 77),
  -- Arceus - Snarl - TM95
  (493, 49300, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 78),
  -- Arceus - Dark Pulse - TM97
  (493, 49300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 79),
  -- Arceus - Waterfall - TM98
  (493, 49300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 80),
  -- Arceus - Confide - TM100
  (493, 49300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 81),
  -- Arceus - Snore - Tutor
  (493, 49300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Arceus - Icy Wind - Tutor
  (493, 49300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Arceus - Outrage - Tutor
  (493, 49300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Arceus - Giga Drain - Tutor
  (493, 49300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Arceus - Iron Tail - Tutor
  (493, 49300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Arceus - Heat Wave - Tutor
  (493, 49300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Arceus - Trick - Tutor
  (493, 49300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Arceus - Magic Coat - Tutor
  (493, 49300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Arceus - Recycle - Tutor
  (493, 49300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Arceus - Hyper Voice - Tutor
  (493, 49300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Arceus - Signal Beam - Tutor
  (493, 49300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Arceus - Iron Defense - Tutor
  (493, 49300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),
  -- Arceus - Shock Wave - Tutor
  (493, 49300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 94),
  -- Arceus - Water Pulse - Tutor
  (493, 49300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 95),
  -- Arceus - Gravity - Tutor
  (493, 49300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 96),
  -- Arceus - Tailwind - Tutor
  (493, 49300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 97),
  -- Arceus - Last Resort - Tutor
  (493, 49300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 98),
  -- Arceus - Aqua Tail - Tutor
  (493, 49300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 99),
  -- Arceus - Dragon Pulse - Tutor
  (493, 49300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 100),
  -- Arceus - Earth Power - Tutor
  (493, 49300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 101),
  -- Arceus - Zen Headbutt - Tutor
  (493, 49300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 102),
  -- Arceus - Defog - Tutor
  (493, 49300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 103),
  -- Arceus - Draco Meteor - Tutor
  (493, 49300, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 104),
  -- Arceus - Iron Head - Tutor
  (493, 49300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 105),
  -- Arceus - Stealth Rock - Tutor
  (493, 49300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 106),
  -- Arceus - Telekinesis - Tutor
  (493, 49300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 107),
  -- Arceus - Laser Focus - Tutor
  (493, 49300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 108),
  -- Arceus - Liquidation - Tutor
  (493, 49300, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 109);
