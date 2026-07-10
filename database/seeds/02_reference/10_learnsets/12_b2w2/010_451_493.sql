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
-- Pokémon: #451-#493
-- Rows: 2877
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
  -- Skorupi - Bite - Level 1
  (451, 45100, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Poison Sting - Level 1
  (451, 45100, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skorupi - Leer - Level 1
  (451, 45100, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skorupi - Knock Off - Level 5
  (451, 45100, 282, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Skorupi - Pin Missile - Level 9
  (451, 45100, 42, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Skorupi - Acupressure - Level 13
  (451, 45100, 367, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Skorupi - Pursuit - Level 16
  (451, 45100, 228, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Skorupi - Bug Bite - Level 20
  (451, 45100, 450, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skorupi - Poison Fang - Level 23
  (451, 45100, 305, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Skorupi - Venoshock - Level 27
  (451, 45100, 474, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skorupi - Hone Claws - Level 30
  (451, 45100, 468, 12, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Skorupi - Toxic Spikes - Level 34
  (451, 45100, 390, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skorupi - Night Slash - Level 38
  (451, 45100, 400, 12, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Skorupi - Scary Face - Level 41
  (451, 45100, 184, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Skorupi - Crunch - Level 45
  (451, 45100, 242, 12, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Skorupi - Cross Poison - Level 49
  (451, 45100, 440, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Skorupi - Hone Claws - TM01
  (451, 45100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Skorupi - Toxic - TM06
  (451, 45100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Skorupi - Venoshock - TM09
  (451, 45100, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Skorupi - Hidden Power - TM10
  (451, 45100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Skorupi - Sunny Day - TM11
  (451, 45100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Skorupi - Taunt - TM12
  (451, 45100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Skorupi - Protect - TM17
  (451, 45100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Skorupi - Rain Dance - TM18
  (451, 45100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Skorupi - Frustration - TM21
  (451, 45100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Skorupi - Return - TM27
  (451, 45100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Skorupi - Dig - TM28
  (451, 45100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Skorupi - Shadow Ball - TM30
  (451, 45100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Skorupi - Brick Break - TM31
  (451, 45100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Skorupi - Double Team - TM32
  (451, 45100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Skorupi - Sludge Bomb - TM36
  (451, 45100, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 31),
  -- Skorupi - Rock Tomb - TM39
  (451, 45100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 32),
  -- Skorupi - Aerial Ace - TM40
  (451, 45100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Skorupi - Torment - TM41
  (451, 45100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Skorupi - Facade - TM42
  (451, 45100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Skorupi - Rest - TM44
  (451, 45100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Skorupi - Attract - TM45
  (451, 45100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Skorupi - Thief - TM46
  (451, 45100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Skorupi - Round - TM48
  (451, 45100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Skorupi - False Swipe - TM54
  (451, 45100, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 40),
  -- Skorupi - Fling - TM56
  (451, 45100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Skorupi - Payback - TM66
  (451, 45100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 42),
  -- Skorupi - Flash - TM70
  (451, 45100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Skorupi - Swords Dance - TM75
  (451, 45100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 44),
  -- Skorupi - Struggle Bug - TM76
  (451, 45100, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 45),
  -- Skorupi - X-Scissor - TM81
  (451, 45100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 46),
  -- Skorupi - Poison Jab - TM84
  (451, 45100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 47),
  -- Skorupi - Swagger - TM87
  (451, 45100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 48),
  -- Skorupi - Substitute - TM90
  (451, 45100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 49),
  -- Skorupi - Rock Smash - TM94
  (451, 45100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 50),
  -- Skorupi - Cut - HM01
  (451, 45100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 51),
  -- Skorupi - Strength - HM04
  (451, 45100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Skorupi - Agility - Egg Move
  (451, 45100, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skorupi - Confuse Ray - Egg Move
  (451, 45100, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skorupi - Feint Attack - Egg Move
  (451, 45100, 185, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skorupi - Iron Tail - Egg Move
  (451, 45100, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skorupi - Night Slash - Egg Move
  (451, 45100, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skorupi - Poison Tail - Egg Move
  (451, 45100, 342, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skorupi - Pursuit - Egg Move
  (451, 45100, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skorupi - Sand Attack - Egg Move
  (451, 45100, 28, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skorupi - Screech - Egg Move
  (451, 45100, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skorupi - Slash - Egg Move
  (451, 45100, 163, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skorupi - Twineedle - Egg Move
  (451, 45100, 41, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skorupi - Whirlwind - Egg Move
  (451, 45100, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skorupi - Aqua Tail - Move Tutor
  (451, 45100, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Skorupi - Bug Bite - Move Tutor
  (451, 45100, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Skorupi - Dark Pulse - Move Tutor
  (451, 45100, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Skorupi - Iron Tail - Move Tutor
  (451, 45100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Skorupi - Knock Off - Move Tutor
  (451, 45100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Skorupi - Sleep Talk - Move Tutor
  (451, 45100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Skorupi - Snore - Move Tutor
  (451, 45100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Drapion - Thunder Fang - Level 1
  (452, 45200, 422, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Ice Fang - Level 1
  (452, 45200, 423, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drapion - Fire Fang - Level 1
  (452, 45200, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drapion - Bite - Level 1
  (452, 45200, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drapion - Leer - Level 1
  (452, 45200, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drapion - Knock Off - Level 1
  (452, 45200, 282, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drapion - Knock Off - Level 5
  (452, 45200, 282, 12, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Drapion - Pin Missile - Level 9
  (452, 45200, 42, 12, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Drapion - Acupressure - Level 13
  (452, 45200, 367, 12, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Drapion - Pursuit - Level 16
  (452, 45200, 228, 12, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Drapion - Bug Bite - Level 20
  (452, 45200, 450, 12, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Drapion - Poison Fang - Level 23
  (452, 45200, 305, 12, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Drapion - Venoshock - Level 27
  (452, 45200, 474, 12, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Drapion - Hone Claws - Level 30
  (452, 45200, 468, 12, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Drapion - Toxic Spikes - Level 34
  (452, 45200, 390, 12, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Drapion - Night Slash - Level 38
  (452, 45200, 400, 12, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Drapion - Scary Face - Level 43
  (452, 45200, 184, 12, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Drapion - Crunch - Level 49
  (452, 45200, 242, 12, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Drapion - Cross Poison - Level 57
  (452, 45200, 440, 12, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Drapion - Hone Claws - TM01
  (452, 45200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 21),
  -- Drapion - Roar - TM05
  (452, 45200, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 22),
  -- Drapion - Toxic - TM06
  (452, 45200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Drapion - Venoshock - TM09
  (452, 45200, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 24),
  -- Drapion - Hidden Power - TM10
  (452, 45200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Drapion - Sunny Day - TM11
  (452, 45200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Drapion - Taunt - TM12
  (452, 45200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 27),
  -- Drapion - Hyper Beam - TM15
  (452, 45200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Drapion - Protect - TM17
  (452, 45200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Drapion - Rain Dance - TM18
  (452, 45200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Drapion - Frustration - TM21
  (452, 45200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Drapion - Earthquake - TM26
  (452, 45200, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 32),
  -- Drapion - Return - TM27
  (452, 45200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Drapion - Dig - TM28
  (452, 45200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 34),
  -- Drapion - Shadow Ball - TM30
  (452, 45200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 35),
  -- Drapion - Brick Break - TM31
  (452, 45200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 36),
  -- Drapion - Double Team - TM32
  (452, 45200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 37),
  -- Drapion - Sludge Bomb - TM36
  (452, 45200, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 38),
  -- Drapion - Rock Tomb - TM39
  (452, 45200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 39),
  -- Drapion - Aerial Ace - TM40
  (452, 45200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 40),
  -- Drapion - Torment - TM41
  (452, 45200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 41),
  -- Drapion - Facade - TM42
  (452, 45200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 42),
  -- Drapion - Rest - TM44
  (452, 45200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 43),
  -- Drapion - Attract - TM45
  (452, 45200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 44),
  -- Drapion - Thief - TM46
  (452, 45200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 45),
  -- Drapion - Round - TM48
  (452, 45200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 46),
  -- Drapion - False Swipe - TM54
  (452, 45200, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 47),
  -- Drapion - Fling - TM56
  (452, 45200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 48),
  -- Drapion - Payback - TM66
  (452, 45200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 49),
  -- Drapion - Retaliate - TM67
  (452, 45200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 50),
  -- Drapion - Giga Impact - TM68
  (452, 45200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 51),
  -- Drapion - Flash - TM70
  (452, 45200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 52),
  -- Drapion - Swords Dance - TM75
  (452, 45200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 53),
  -- Drapion - Struggle Bug - TM76
  (452, 45200, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 54),
  -- Drapion - Bulldoze - TM78
  (452, 45200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 55),
  -- Drapion - Rock Slide - TM80
  (452, 45200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 56),
  -- Drapion - X-Scissor - TM81
  (452, 45200, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 57),
  -- Drapion - Poison Jab - TM84
  (452, 45200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 58),
  -- Drapion - Swagger - TM87
  (452, 45200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 59),
  -- Drapion - Substitute - TM90
  (452, 45200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 60),
  -- Drapion - Rock Smash - TM94
  (452, 45200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 61),
  -- Drapion - Snarl - TM95
  (452, 45200, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 62),
  -- Drapion - Cut - HM01
  (452, 45200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 63),
  -- Drapion - Strength - HM04
  (452, 45200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 64),
  -- Drapion - Aqua Tail - Move Tutor
  (452, 45200, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Drapion - Bug Bite - Move Tutor
  (452, 45200, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Drapion - Dark Pulse - Move Tutor
  (452, 45200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Drapion - Iron Tail - Move Tutor
  (452, 45200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Drapion - Knock Off - Move Tutor
  (452, 45200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Drapion - Sleep Talk - Move Tutor
  (452, 45200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Drapion - Snore - Move Tutor
  (452, 45200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Croagunk - Astonish - Level 1
  (453, 45300, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 3
  (453, 45300, 189, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Croagunk - Poison Sting - Level 8
  (453, 45300, 40, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 10
  (453, 45300, 269, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Croagunk - Pursuit - Level 15
  (453, 45300, 228, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croagunk - Feint Attack - Level 17
  (453, 45300, 185, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Croagunk - Revenge - Level 22
  (453, 45300, 279, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Croagunk - Swagger - Level 24
  (453, 45300, 207, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Mud Bomb - Level 29
  (453, 45300, 426, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Croagunk - Sucker Punch - Level 31
  (453, 45300, 389, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Croagunk - Venoshock - Level 36
  (453, 45300, 474, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 38
  (453, 45300, 417, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Croagunk - Poison Jab - Level 43
  (453, 45300, 398, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Croagunk - Sludge Bomb - Level 45
  (453, 45300, 188, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Croagunk - Flatter - Level 50
  (453, 45300, 260, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Croagunk - Toxic - TM06
  (453, 45300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Croagunk - Bulk Up - TM08
  (453, 45300, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 17),
  -- Croagunk - Venoshock - TM09
  (453, 45300, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 18),
  -- Croagunk - Hidden Power - TM10
  (453, 45300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Croagunk - Sunny Day - TM11
  (453, 45300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Croagunk - Taunt - TM12
  (453, 45300, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Croagunk - Protect - TM17
  (453, 45300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Croagunk - Rain Dance - TM18
  (453, 45300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Croagunk - Frustration - TM21
  (453, 45300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Croagunk - Earthquake - TM26
  (453, 45300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Croagunk - Return - TM27
  (453, 45300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Croagunk - Dig - TM28
  (453, 45300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Croagunk - Shadow Ball - TM30
  (453, 45300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Croagunk - Brick Break - TM31
  (453, 45300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Croagunk - Double Team - TM32
  (453, 45300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Croagunk - Sludge Wave - TM34
  (453, 45300, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 31),
  -- Croagunk - Sludge Bomb - TM36
  (453, 45300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Croagunk - Rock Tomb - TM39
  (453, 45300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Croagunk - Torment - TM41
  (453, 45300, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Croagunk - Facade - TM42
  (453, 45300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Croagunk - Rest - TM44
  (453, 45300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Croagunk - Attract - TM45
  (453, 45300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Croagunk - Thief - TM46
  (453, 45300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Croagunk - Low Sweep - TM47
  (453, 45300, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 39),
  -- Croagunk - Round - TM48
  (453, 45300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Croagunk - Focus Blast - TM52
  (453, 45300, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 41),
  -- Croagunk - Fling - TM56
  (453, 45300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Croagunk - Embargo - TM63
  (453, 45300, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 43),
  -- Croagunk - Payback - TM66
  (453, 45300, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 44),
  -- Croagunk - Retaliate - TM67
  (453, 45300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 45),
  -- Croagunk - Bulldoze - TM78
  (453, 45300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 46),
  -- Croagunk - Rock Slide - TM80
  (453, 45300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 47),
  -- Croagunk - X-Scissor - TM81
  (453, 45300, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 48),
  -- Croagunk - Work Up - TM83
  (453, 45300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 49),
  -- Croagunk - Poison Jab - TM84
  (453, 45300, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 50),
  -- Croagunk - Swagger - TM87
  (453, 45300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Croagunk - Substitute - TM90
  (453, 45300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Croagunk - Rock Smash - TM94
  (453, 45300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Croagunk - Strength - HM04
  (453, 45300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Croagunk - Acupressure - Egg Move
  (453, 45300, 367, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Croagunk - Bullet Punch - Egg Move
  (453, 45300, 418, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croagunk - Counter - Egg Move
  (453, 45300, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croagunk - Cross Chop - Egg Move
  (453, 45300, 238, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croagunk - Drain Punch - Egg Move
  (453, 45300, 409, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croagunk - Dynamic Punch - Egg Move
  (453, 45300, 223, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croagunk - Fake Out - Egg Move
  (453, 45300, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Feint - Egg Move
  (453, 45300, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Croagunk - Headbutt - Egg Move
  (453, 45300, 29, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Croagunk - Me First - Egg Move
  (453, 45300, 382, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Croagunk - Meditate - Egg Move
  (453, 45300, 96, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Croagunk - Smelling Salts - Egg Move
  (453, 45300, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Vacuum Wave - Egg Move
  (453, 45300, 410, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Croagunk - Wake-Up Slap - Egg Move
  (453, 45300, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Croagunk - Bounce - Move Tutor
  (453, 45300, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Croagunk - Dark Pulse - Move Tutor
  (453, 45300, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Croagunk - Drain Punch - Move Tutor
  (453, 45300, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Croagunk - Dual Chop - Move Tutor
  (453, 45300, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Croagunk - Foul Play - Move Tutor
  (453, 45300, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Croagunk - Gunk Shot - Move Tutor
  (453, 45300, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Croagunk - Helping Hand - Move Tutor
  (453, 45300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Croagunk - Ice Punch - Move Tutor
  (453, 45300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Croagunk - Icy Wind - Move Tutor
  (453, 45300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Croagunk - Knock Off - Move Tutor
  (453, 45300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Croagunk - Low Kick - Move Tutor
  (453, 45300, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Croagunk - Role Play - Move Tutor
  (453, 45300, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Croagunk - Sleep Talk - Move Tutor
  (453, 45300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Croagunk - Snatch - Move Tutor
  (453, 45300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Croagunk - Snore - Move Tutor
  (453, 45300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Croagunk - Spite - Move Tutor
  (453, 45300, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Croagunk - Super Fang - Move Tutor
  (453, 45300, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Croagunk - Thunder Punch - Move Tutor
  (453, 45300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Mud-Slap - Level 3
  (454, 45400, 189, 12, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Toxicroak - Poison Sting - Level 8
  (454, 45400, 40, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toxicroak - Taunt - Level 10
  (454, 45400, 269, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Toxicroak - Pursuit - Level 15
  (454, 45400, 228, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Toxicroak - Feint Attack - Level 17
  (454, 45400, 185, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Toxicroak - Revenge - Level 22
  (454, 45400, 279, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Toxicroak - Swagger - Level 24
  (454, 45400, 207, 12, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Toxicroak - Mud Bomb - Level 29
  (454, 45400, 426, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Toxicroak - Sucker Punch - Level 31
  (454, 45400, 389, 12, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Toxicroak - Venoshock - Level 36
  (454, 45400, 474, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Toxicroak - Nasty Plot - Level 41
  (454, 45400, 417, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Toxicroak - Poison Jab - Level 49
  (454, 45400, 398, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Toxicroak - Sludge Bomb - Level 54
  (454, 45400, 188, 12, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Toxicroak - Flatter - Level 62
  (454, 45400, 260, 12, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Toxicroak - Toxic - TM06
  (454, 45400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Toxicroak - Bulk Up - TM08
  (454, 45400, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Toxicroak - Venoshock - TM09
  (454, 45400, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 20),
  -- Toxicroak - Hidden Power - TM10
  (454, 45400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Toxicroak - Sunny Day - TM11
  (454, 45400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Toxicroak - Taunt - TM12
  (454, 45400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 23),
  -- Toxicroak - Hyper Beam - TM15
  (454, 45400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Toxicroak - Protect - TM17
  (454, 45400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Toxicroak - Rain Dance - TM18
  (454, 45400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Toxicroak - Frustration - TM21
  (454, 45400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Toxicroak - Earthquake - TM26
  (454, 45400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Toxicroak - Return - TM27
  (454, 45400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Toxicroak - Dig - TM28
  (454, 45400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Toxicroak - Shadow Ball - TM30
  (454, 45400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Toxicroak - Brick Break - TM31
  (454, 45400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Toxicroak - Double Team - TM32
  (454, 45400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Toxicroak - Sludge Wave - TM34
  (454, 45400, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 34),
  -- Toxicroak - Sludge Bomb - TM36
  (454, 45400, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 35),
  -- Toxicroak - Rock Tomb - TM39
  (454, 45400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Toxicroak - Torment - TM41
  (454, 45400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Toxicroak - Facade - TM42
  (454, 45400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Toxicroak - Rest - TM44
  (454, 45400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Toxicroak - Attract - TM45
  (454, 45400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Toxicroak - Thief - TM46
  (454, 45400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Toxicroak - Low Sweep - TM47
  (454, 45400, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 42),
  -- Toxicroak - Round - TM48
  (454, 45400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Toxicroak - Focus Blast - TM52
  (454, 45400, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Toxicroak - Fling - TM56
  (454, 45400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Toxicroak - Embargo - TM63
  (454, 45400, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 46),
  -- Toxicroak - Payback - TM66
  (454, 45400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 47),
  -- Toxicroak - Retaliate - TM67
  (454, 45400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 48),
  -- Toxicroak - Giga Impact - TM68
  (454, 45400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Toxicroak - Stone Edge - TM71
  (454, 45400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 50),
  -- Toxicroak - Swords Dance - TM75
  (454, 45400, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 51),
  -- Toxicroak - Bulldoze - TM78
  (454, 45400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Toxicroak - Rock Slide - TM80
  (454, 45400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Toxicroak - X-Scissor - TM81
  (454, 45400, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 54),
  -- Toxicroak - Work Up - TM83
  (454, 45400, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 55),
  -- Toxicroak - Poison Jab - TM84
  (454, 45400, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 56),
  -- Toxicroak - Swagger - TM87
  (454, 45400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 57),
  -- Toxicroak - Substitute - TM90
  (454, 45400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 58),
  -- Toxicroak - Rock Smash - TM94
  (454, 45400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 59),
  -- Toxicroak - Cut - HM01
  (454, 45400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 60),
  -- Toxicroak - Strength - HM04
  (454, 45400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 61),
  -- Toxicroak - Bounce - Move Tutor
  (454, 45400, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Toxicroak - Dark Pulse - Move Tutor
  (454, 45400, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Toxicroak - Drain Punch - Move Tutor
  (454, 45400, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Toxicroak - Dual Chop - Move Tutor
  (454, 45400, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Toxicroak - Foul Play - Move Tutor
  (454, 45400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Toxicroak - Gunk Shot - Move Tutor
  (454, 45400, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Toxicroak - Helping Hand - Move Tutor
  (454, 45400, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Toxicroak - Ice Punch - Move Tutor
  (454, 45400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Toxicroak - Icy Wind - Move Tutor
  (454, 45400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Toxicroak - Knock Off - Move Tutor
  (454, 45400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Toxicroak - Low Kick - Move Tutor
  (454, 45400, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Toxicroak - Role Play - Move Tutor
  (454, 45400, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Toxicroak - Sleep Talk - Move Tutor
  (454, 45400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Toxicroak - Snatch - Move Tutor
  (454, 45400, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Toxicroak - Snore - Move Tutor
  (454, 45400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Toxicroak - Spite - Move Tutor
  (454, 45400, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Toxicroak - Super Fang - Move Tutor
  (454, 45400, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Toxicroak - Thunder Punch - Move Tutor
  (454, 45400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Carnivine - Bind - Level 1
  (455, 45500, 20, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carnivine - Growth - Level 1
  (455, 45500, 74, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 7
  (455, 45500, 44, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carnivine - Vine Whip - Level 11
  (455, 45500, 22, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Carnivine - Sweet Scent - Level 17
  (455, 45500, 230, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Carnivine - Ingrain - Level 21
  (455, 45500, 275, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Carnivine - Feint Attack - Level 27
  (455, 45500, 185, 12, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carnivine - Leaf Tornado - Level 31
  (455, 45500, 536, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carnivine - Stockpile - Level 37
  (455, 45500, 254, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Carnivine - Spit Up - Level 37
  (455, 45500, 255, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Carnivine - Swallow - Level 37
  (455, 45500, 256, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Carnivine - Crunch - Level 41
  (455, 45500, 242, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Carnivine - Wring Out - Level 47
  (455, 45500, 378, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Carnivine - Power Whip - Level 51
  (455, 45500, 438, 12, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Carnivine - Toxic - TM06
  (455, 45500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Carnivine - Hidden Power - TM10
  (455, 45500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Carnivine - Sunny Day - TM11
  (455, 45500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Carnivine - Hyper Beam - TM15
  (455, 45500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Carnivine - Protect - TM17
  (455, 45500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Carnivine - Frustration - TM21
  (455, 45500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Carnivine - Solar Beam - TM22
  (455, 45500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Carnivine - Return - TM27
  (455, 45500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Carnivine - Double Team - TM32
  (455, 45500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Carnivine - Sludge Bomb - TM36
  (455, 45500, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 24),
  -- Carnivine - Facade - TM42
  (455, 45500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Carnivine - Rest - TM44
  (455, 45500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Carnivine - Attract - TM45
  (455, 45500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Carnivine - Thief - TM46
  (455, 45500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 28),
  -- Carnivine - Round - TM48
  (455, 45500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Carnivine - Energy Ball - TM53
  (455, 45500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Carnivine - Fling - TM56
  (455, 45500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 31),
  -- Carnivine - Payback - TM66
  (455, 45500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 32),
  -- Carnivine - Giga Impact - TM68
  (455, 45500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 33),
  -- Carnivine - Flash - TM70
  (455, 45500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 34),
  -- Carnivine - Swords Dance - TM75
  (455, 45500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 35),
  -- Carnivine - Grass Knot - TM86
  (455, 45500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 36),
  -- Carnivine - Swagger - TM87
  (455, 45500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Carnivine - Substitute - TM90
  (455, 45500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Carnivine - Cut - HM01
  (455, 45500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 39),
  -- Carnivine - Giga Drain - Egg Move
  (455, 45500, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Carnivine - Grass Whistle - Egg Move
  (455, 45500, 320, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Carnivine - Leech Seed - Egg Move
  (455, 45500, 73, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carnivine - Magical Leaf - Egg Move
  (455, 45500, 345, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carnivine - Rage Powder - Egg Move
  (455, 45500, 476, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carnivine - Razor Leaf - Egg Move
  (455, 45500, 75, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carnivine - Slam - Egg Move
  (455, 45500, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carnivine - Sleep Powder - Egg Move
  (455, 45500, 79, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carnivine - Stun Spore - Egg Move
  (455, 45500, 78, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carnivine - Synthesis - Egg Move
  (455, 45500, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carnivine - Worry Seed - Egg Move
  (455, 45500, 388, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Carnivine - Bind - Move Tutor
  (455, 45500, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Carnivine - Bug Bite - Move Tutor
  (455, 45500, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Carnivine - Gastro Acid - Move Tutor
  (455, 45500, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Carnivine - Giga Drain - Move Tutor
  (455, 45500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Carnivine - Knock Off - Move Tutor
  (455, 45500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Carnivine - Seed Bomb - Move Tutor
  (455, 45500, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Carnivine - Sleep Talk - Move Tutor
  (455, 45500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Carnivine - Snore - Move Tutor
  (455, 45500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Carnivine - Synthesis - Move Tutor
  (455, 45500, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Carnivine - Worry Seed - Move Tutor
  (455, 45500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Finneon - Pound - Level 1
  (456, 45600, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 12, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Attract - Level 10
  (456, 45600, 213, 12, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 12, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Finneon - Captivate - Level 26
  (456, 45600, 445, 12, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Finneon - Silver Wind - Level 49
  (456, 45600, 318, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Finneon - Soak - Level 54
  (456, 45600, 487, 12, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Finneon - Toxic - TM06
  (456, 45600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Finneon - Hail - TM07
  (456, 45600, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Finneon - Hidden Power - TM10
  (456, 45600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Finneon - Ice Beam - TM13
  (456, 45600, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Finneon - Blizzard - TM14
  (456, 45600, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Finneon - Protect - TM17
  (456, 45600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Finneon - Rain Dance - TM18
  (456, 45600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Finneon - Safeguard - TM20
  (456, 45600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 22),
  -- Finneon - Frustration - TM21
  (456, 45600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Finneon - Return - TM27
  (456, 45600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Finneon - Double Team - TM32
  (456, 45600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Finneon - Facade - TM42
  (456, 45600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Finneon - Rest - TM44
  (456, 45600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Finneon - Attract - TM45
  (456, 45600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Finneon - Round - TM48
  (456, 45600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Finneon - Scald - TM55
  (456, 45600, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 30),
  -- Finneon - Payback - TM66
  (456, 45600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 31),
  -- Finneon - Flash - TM70
  (456, 45600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Finneon - Psych Up - TM77
  (456, 45600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 33),
  -- Finneon - Swagger - TM87
  (456, 45600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Finneon - U-turn - TM89
  (456, 45600, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 35),
  -- Finneon - Substitute - TM90
  (456, 45600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Finneon - Surf - HM03
  (456, 45600, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 37),
  -- Finneon - Waterfall - HM05
  (456, 45600, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 38),
  -- Finneon - Dive - HM06
  (456, 45600, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 39),
  -- Finneon - Agility - Egg Move
  (456, 45600, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Finneon - Aqua Tail - Egg Move
  (456, 45600, 401, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Finneon - Aurora Beam - Egg Move
  (456, 45600, 62, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Finneon - Brine - Egg Move
  (456, 45600, 362, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finneon - Charm - Egg Move
  (456, 45600, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finneon - Flail - Egg Move
  (456, 45600, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Psybeam - Egg Move
  (456, 45600, 60, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Signal Beam - Egg Move
  (456, 45600, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Splash - Egg Move
  (456, 45600, 150, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Sweet Kiss - Egg Move
  (456, 45600, 186, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Finneon - Tickle - Egg Move
  (456, 45600, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Finneon - Aqua Tail - Move Tutor
  (456, 45600, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Finneon - Bounce - Move Tutor
  (456, 45600, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Finneon - Icy Wind - Move Tutor
  (456, 45600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Finneon - Signal Beam - Move Tutor
  (456, 45600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Finneon - Sleep Talk - Move Tutor
  (456, 45600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Finneon - Snore - Move Tutor
  (456, 45600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Finneon - Tailwind - Move Tutor
  (456, 45600, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Lumineon - Pound - Level 1
  (457, 45700, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Water Gun - Level 1
  (457, 45700, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lumineon - Attract - Level 1
  (457, 45700, 213, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lumineon - Water Gun - Level 6
  (457, 45700, 55, 12, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lumineon - Attract - Level 10
  (457, 45700, 213, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Lumineon - Gust - Level 17
  (457, 45700, 16, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Lumineon - Captivate - Level 26
  (457, 45700, 445, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 12, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 12, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lumineon - Silver Wind - Level 59
  (457, 45700, 318, 12, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Lumineon - Soak - Level 66
  (457, 45700, 487, 12, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Lumineon - Toxic - TM06
  (457, 45700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Lumineon - Hail - TM07
  (457, 45700, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Lumineon - Hidden Power - TM10
  (457, 45700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Lumineon - Ice Beam - TM13
  (457, 45700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Lumineon - Blizzard - TM14
  (457, 45700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Lumineon - Hyper Beam - TM15
  (457, 45700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Lumineon - Protect - TM17
  (457, 45700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Lumineon - Rain Dance - TM18
  (457, 45700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Lumineon - Safeguard - TM20
  (457, 45700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Lumineon - Frustration - TM21
  (457, 45700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Lumineon - Return - TM27
  (457, 45700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Lumineon - Double Team - TM32
  (457, 45700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Lumineon - Facade - TM42
  (457, 45700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Lumineon - Rest - TM44
  (457, 45700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Lumineon - Attract - TM45
  (457, 45700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Lumineon - Round - TM48
  (457, 45700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Lumineon - Scald - TM55
  (457, 45700, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 33),
  -- Lumineon - Payback - TM66
  (457, 45700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Lumineon - Giga Impact - TM68
  (457, 45700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 35),
  -- Lumineon - Flash - TM70
  (457, 45700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Lumineon - Psych Up - TM77
  (457, 45700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 37),
  -- Lumineon - Swagger - TM87
  (457, 45700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Lumineon - U-turn - TM89
  (457, 45700, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 39),
  -- Lumineon - Substitute - TM90
  (457, 45700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Lumineon - Surf - HM03
  (457, 45700, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 41),
  -- Lumineon - Waterfall - HM05
  (457, 45700, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 42),
  -- Lumineon - Dive - HM06
  (457, 45700, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 43),
  -- Lumineon - Aqua Tail - Move Tutor
  (457, 45700, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Lumineon - Bounce - Move Tutor
  (457, 45700, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Lumineon - Icy Wind - Move Tutor
  (457, 45700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Lumineon - Signal Beam - Move Tutor
  (457, 45700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Lumineon - Sleep Talk - Move Tutor
  (457, 45700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Lumineon - Snore - Move Tutor
  (457, 45700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Lumineon - Tailwind - Move Tutor
  (457, 45700, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Bubble - Level 1
  (458, 45800, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 3
  (458, 45800, 48, 12, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Mantyke - Bubble Beam - Level 7
  (458, 45800, 61, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Mantyke - Confuse Ray - Level 11
  (458, 45800, 109, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Mantyke - Wing Attack - Level 14
  (458, 45800, 17, 12, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Mantyke - Headbutt - Level 16
  (458, 45800, 29, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mantyke - Water Pulse - Level 19
  (458, 45800, 352, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Mantyke - Wide Guard - Level 23
  (458, 45800, 469, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Mantyke - Take Down - Level 27
  (458, 45800, 36, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Mantyke - Agility - Level 32
  (458, 45800, 97, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mantyke - Air Slash - Level 36
  (458, 45800, 403, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mantyke - Aqua Ring - Level 39
  (458, 45800, 392, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Mantyke - Bounce - Level 46
  (458, 45800, 340, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Mantyke - Hydro Pump - Level 49
  (458, 45800, 56, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mantyke - Toxic - TM06
  (458, 45800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Mantyke - Hail - TM07
  (458, 45800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Mantyke - Hidden Power - TM10
  (458, 45800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Mantyke - Ice Beam - TM13
  (458, 45800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Mantyke - Blizzard - TM14
  (458, 45800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Mantyke - Protect - TM17
  (458, 45800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Mantyke - Rain Dance - TM18
  (458, 45800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Mantyke - Frustration - TM21
  (458, 45800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Mantyke - Earthquake - TM26
  (458, 45800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Mantyke - Return - TM27
  (458, 45800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Mantyke - Double Team - TM32
  (458, 45800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Mantyke - Aerial Ace - TM40
  (458, 45800, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 27),
  -- Mantyke - Facade - TM42
  (458, 45800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Mantyke - Rest - TM44
  (458, 45800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Mantyke - Attract - TM45
  (458, 45800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Mantyke - Round - TM48
  (458, 45800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Mantyke - Scald - TM55
  (458, 45800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 32),
  -- Mantyke - Acrobatics - TM62
  (458, 45800, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 33),
  -- Mantyke - Bulldoze - TM78
  (458, 45800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 34),
  -- Mantyke - Rock Slide - TM80
  (458, 45800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 35),
  -- Mantyke - Swagger - TM87
  (458, 45800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Mantyke - Substitute - TM90
  (458, 45800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Mantyke - Surf - HM03
  (458, 45800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 38),
  -- Mantyke - Waterfall - HM05
  (458, 45800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 39),
  -- Mantyke - Dive - HM06
  (458, 45800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 40),
  -- Mantyke - Amnesia - Egg Move
  (458, 45800, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mantyke - Haze - Egg Move
  (458, 45800, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantyke - Hydro Pump - Egg Move
  (458, 45800, 56, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mantyke - Mirror Coat - Egg Move
  (458, 45800, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mantyke - Mud Sport - Egg Move
  (458, 45800, 300, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mantyke - Signal Beam - Egg Move
  (458, 45800, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantyke - Slam - Egg Move
  (458, 45800, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantyke - Splash - Egg Move
  (458, 45800, 150, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantyke - Twister - Egg Move
  (458, 45800, 239, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantyke - Water Sport - Egg Move
  (458, 45800, 346, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mantyke - Wide Guard - Egg Move
  (458, 45800, 469, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mantyke - Bounce - Move Tutor
  (458, 45800, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mantyke - Helping Hand - Move Tutor
  (458, 45800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Mantyke - Icy Wind - Move Tutor
  (458, 45800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Mantyke - Signal Beam - Move Tutor
  (458, 45800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Mantyke - Sleep Talk - Move Tutor
  (458, 45800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Mantyke - Snore - Move Tutor
  (458, 45800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Leer - Level 1
  (459, 45900, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Razor Leaf - Level 5
  (459, 45900, 75, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Icy Wind - Level 9
  (459, 45900, 196, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Snover - Grass Whistle - Level 13
  (459, 45900, 320, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snover - Swagger - Level 17
  (459, 45900, 207, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Snover - Mist - Level 21
  (459, 45900, 54, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Snover - Ice Shard - Level 26
  (459, 45900, 420, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 31
  (459, 45900, 275, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 36
  (459, 45900, 452, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 41
  (459, 45900, 59, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 46
  (459, 45900, 329, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snover - Toxic - TM06
  (459, 45900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Snover - Hail - TM07
  (459, 45900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 14),
  -- Snover - Hidden Power - TM10
  (459, 45900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Snover - Ice Beam - TM13
  (459, 45900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 16),
  -- Snover - Blizzard - TM14
  (459, 45900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 17),
  -- Snover - Light Screen - TM16
  (459, 45900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Snover - Protect - TM17
  (459, 45900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Snover - Rain Dance - TM18
  (459, 45900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Snover - Safeguard - TM20
  (459, 45900, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 21),
  -- Snover - Frustration - TM21
  (459, 45900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Snover - Solar Beam - TM22
  (459, 45900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 23),
  -- Snover - Return - TM27
  (459, 45900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Snover - Shadow Ball - TM30
  (459, 45900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Snover - Double Team - TM32
  (459, 45900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Snover - Facade - TM42
  (459, 45900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Snover - Rest - TM44
  (459, 45900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Snover - Attract - TM45
  (459, 45900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Snover - Round - TM48
  (459, 45900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Snover - Energy Ball - TM53
  (459, 45900, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 31),
  -- Snover - Flash - TM70
  (459, 45900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Snover - Swords Dance - TM75
  (459, 45900, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 33),
  -- Snover - Frost Breath - TM79
  (459, 45900, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 34),
  -- Snover - Grass Knot - TM86
  (459, 45900, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 35),
  -- Snover - Swagger - TM87
  (459, 45900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Snover - Substitute - TM90
  (459, 45900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Snover - Avalanche - Egg Move
  (459, 45900, 419, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Snover - Bullet Seed - Egg Move
  (459, 45900, 331, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snover - Double-Edge - Egg Move
  (459, 45900, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snover - Growth - Egg Move
  (459, 45900, 74, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snover - Leech Seed - Egg Move
  (459, 45900, 73, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snover - Magical Leaf - Egg Move
  (459, 45900, 345, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snover - Mist - Egg Move
  (459, 45900, 54, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Natural Gift - Egg Move
  (459, 45900, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Seed Bomb - Egg Move
  (459, 45900, 402, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Skull Bash - Egg Move
  (459, 45900, 130, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snover - Stomp - Egg Move
  (459, 45900, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snover - Giga Drain - Move Tutor
  (459, 45900, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Snover - Ice Punch - Move Tutor
  (459, 45900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Snover - Icy Wind - Move Tutor
  (459, 45900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Snover - Iron Tail - Move Tutor
  (459, 45900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Snover - Role Play - Move Tutor
  (459, 45900, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Snover - Seed Bomb - Move Tutor
  (459, 45900, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Snover - Sleep Talk - Move Tutor
  (459, 45900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Snover - Snore - Move Tutor
  (459, 45900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Snover - Synthesis - Move Tutor
  (459, 45900, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Snover - Worry Seed - Move Tutor
  (459, 45900, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Abomasnow - Ice Punch - Level 1
  (460, 46000, 8, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Razor Leaf - Level 1
  (460, 46000, 75, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Icy Wind - Level 1
  (460, 46000, 196, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Razor Leaf - Level 5
  (460, 46000, 75, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Abomasnow - Icy Wind - Level 9
  (460, 46000, 196, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Abomasnow - Grass Whistle - Level 13
  (460, 46000, 320, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Abomasnow - Swagger - Level 17
  (460, 46000, 207, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Abomasnow - Mist - Level 21
  (460, 46000, 54, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Abomasnow - Ice Shard - Level 26
  (460, 46000, 420, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Abomasnow - Ingrain - Level 31
  (460, 46000, 275, 12, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Abomasnow - Wood Hammer - Level 36
  (460, 46000, 452, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Abomasnow - Blizzard - Level 47
  (460, 46000, 59, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Abomasnow - Sheer Cold - Level 58
  (460, 46000, 329, 12, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Abomasnow - Toxic - TM06
  (460, 46000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Abomasnow - Hail - TM07
  (460, 46000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Abomasnow - Hidden Power - TM10
  (460, 46000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Abomasnow - Ice Beam - TM13
  (460, 46000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Abomasnow - Blizzard - TM14
  (460, 46000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Abomasnow - Hyper Beam - TM15
  (460, 46000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Abomasnow - Light Screen - TM16
  (460, 46000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Abomasnow - Protect - TM17
  (460, 46000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Abomasnow - Rain Dance - TM18
  (460, 46000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Abomasnow - Safeguard - TM20
  (460, 46000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Abomasnow - Frustration - TM21
  (460, 46000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Abomasnow - Solar Beam - TM22
  (460, 46000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 27),
  -- Abomasnow - Earthquake - TM26
  (460, 46000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Abomasnow - Return - TM27
  (460, 46000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Abomasnow - Shadow Ball - TM30
  (460, 46000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 30),
  -- Abomasnow - Brick Break - TM31
  (460, 46000, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Abomasnow - Double Team - TM32
  (460, 46000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Abomasnow - Rock Tomb - TM39
  (460, 46000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Abomasnow - Facade - TM42
  (460, 46000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Abomasnow - Rest - TM44
  (460, 46000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Abomasnow - Attract - TM45
  (460, 46000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Abomasnow - Round - TM48
  (460, 46000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Abomasnow - Focus Blast - TM52
  (460, 46000, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 38),
  -- Abomasnow - Energy Ball - TM53
  (460, 46000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 39),
  -- Abomasnow - Fling - TM56
  (460, 46000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Abomasnow - Giga Impact - TM68
  (460, 46000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Abomasnow - Flash - TM70
  (460, 46000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 42),
  -- Abomasnow - Swords Dance - TM75
  (460, 46000, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 43),
  -- Abomasnow - Bulldoze - TM78
  (460, 46000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Abomasnow - Frost Breath - TM79
  (460, 46000, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 45),
  -- Abomasnow - Rock Slide - TM80
  (460, 46000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 46),
  -- Abomasnow - Grass Knot - TM86
  (460, 46000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 47),
  -- Abomasnow - Swagger - TM87
  (460, 46000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 48),
  -- Abomasnow - Substitute - TM90
  (460, 46000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 49),
  -- Abomasnow - Rock Smash - TM94
  (460, 46000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 50),
  -- Abomasnow - Strength - HM04
  (460, 46000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 51),
  -- Abomasnow - Block - Move Tutor
  (460, 46000, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Abomasnow - Giga Drain - Move Tutor
  (460, 46000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Abomasnow - Ice Punch - Move Tutor
  (460, 46000, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Abomasnow - Icy Wind - Move Tutor
  (460, 46000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Abomasnow - Iron Tail - Move Tutor
  (460, 46000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Abomasnow - Outrage - Move Tutor
  (460, 46000, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Abomasnow - Role Play - Move Tutor
  (460, 46000, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Abomasnow - Seed Bomb - Move Tutor
  (460, 46000, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Abomasnow - Sleep Talk - Move Tutor
  (460, 46000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Abomasnow - Snore - Move Tutor
  (460, 46000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Abomasnow - Synthesis - Move Tutor
  (460, 46000, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Abomasnow - Worry Seed - Move Tutor
  (460, 46000, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Weavile - Embargo - Level 1
  (461, 46100, 373, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Revenge - Level 1
  (461, 46100, 279, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Quick Attack - Level 8
  (461, 46100, 98, 12, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Weavile - Feint Attack - Level 10
  (461, 46100, 185, 12, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Weavile - Icy Wind - Level 14
  (461, 46100, 196, 12, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Weavile - Fury Swipes - Level 16
  (461, 46100, 154, 12, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Weavile - Nasty Plot - Level 20
  (461, 46100, 417, 12, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Weavile - Metal Claw - Level 22
  (461, 46100, 232, 12, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Weavile - Hone Claws - Level 25
  (461, 46100, 468, 12, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 28
  (461, 46100, 374, 12, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Weavile - Screech - Level 32
  (461, 46100, 103, 12, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Weavile - Night Slash - Level 35
  (461, 46100, 400, 12, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Weavile - Snatch - Level 40
  (461, 46100, 289, 12, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Weavile - Punishment - Level 44
  (461, 46100, 386, 12, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Weavile - Dark Pulse - Level 47
  (461, 46100, 399, 12, NULL, 1, 47, NULL, NULL, NULL, 20),
  -- Weavile - Hone Claws - TM01
  (461, 46100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 21),
  -- Weavile - Calm Mind - TM04
  (461, 46100, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 22),
  -- Weavile - Toxic - TM06
  (461, 46100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Weavile - Hail - TM07
  (461, 46100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 24),
  -- Weavile - Hidden Power - TM10
  (461, 46100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Weavile - Sunny Day - TM11
  (461, 46100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Weavile - Taunt - TM12
  (461, 46100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 27),
  -- Weavile - Ice Beam - TM13
  (461, 46100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 28),
  -- Weavile - Blizzard - TM14
  (461, 46100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 29),
  -- Weavile - Hyper Beam - TM15
  (461, 46100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 30),
  -- Weavile - Protect - TM17
  (461, 46100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 31),
  -- Weavile - Rain Dance - TM18
  (461, 46100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 32),
  -- Weavile - Frustration - TM21
  (461, 46100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Weavile - Return - TM27
  (461, 46100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 34),
  -- Weavile - Dig - TM28
  (461, 46100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 35),
  -- Weavile - Shadow Ball - TM30
  (461, 46100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 36),
  -- Weavile - Brick Break - TM31
  (461, 46100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 37),
  -- Weavile - Double Team - TM32
  (461, 46100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 38),
  -- Weavile - Reflect - TM33
  (461, 46100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 39),
  -- Weavile - Aerial Ace - TM40
  (461, 46100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 40),
  -- Weavile - Torment - TM41
  (461, 46100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 41),
  -- Weavile - Facade - TM42
  (461, 46100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 42),
  -- Weavile - Rest - TM44
  (461, 46100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 43),
  -- Weavile - Attract - TM45
  (461, 46100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 44),
  -- Weavile - Thief - TM46
  (461, 46100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 45),
  -- Weavile - Low Sweep - TM47
  (461, 46100, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 46),
  -- Weavile - Round - TM48
  (461, 46100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Weavile - Focus Blast - TM52
  (461, 46100, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 48),
  -- Weavile - False Swipe - TM54
  (461, 46100, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 49),
  -- Weavile - Fling - TM56
  (461, 46100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 50),
  -- Weavile - Embargo - TM63
  (461, 46100, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 51),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 52),
  -- Weavile - Payback - TM66
  (461, 46100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 53),
  -- Weavile - Retaliate - TM67
  (461, 46100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 54),
  -- Weavile - Giga Impact - TM68
  (461, 46100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 55),
  -- Weavile - Swords Dance - TM75
  (461, 46100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 56),
  -- Weavile - Psych Up - TM77
  (461, 46100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 57),
  -- Weavile - X-Scissor - TM81
  (461, 46100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 58),
  -- Weavile - Poison Jab - TM84
  (461, 46100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 59),
  -- Weavile - Dream Eater - TM85
  (461, 46100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 60),
  -- Weavile - Swagger - TM87
  (461, 46100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 61),
  -- Weavile - Substitute - TM90
  (461, 46100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 62),
  -- Weavile - Rock Smash - TM94
  (461, 46100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 63),
  -- Weavile - Snarl - TM95
  (461, 46100, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 64),
  -- Weavile - Cut - HM01
  (461, 46100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 65),
  -- Weavile - Surf - HM03
  (461, 46100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 66),
  -- Weavile - Strength - HM04
  (461, 46100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 67),
  -- Weavile - Dark Pulse - Move Tutor
  (461, 46100, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Weavile - Foul Play - Move Tutor
  (461, 46100, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Weavile - Ice Punch - Move Tutor
  (461, 46100, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Weavile - Icy Wind - Move Tutor
  (461, 46100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Weavile - Iron Tail - Move Tutor
  (461, 46100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Weavile - Knock Off - Move Tutor
  (461, 46100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Weavile - Low Kick - Move Tutor
  (461, 46100, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Weavile - Sleep Talk - Move Tutor
  (461, 46100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Weavile - Snatch - Move Tutor
  (461, 46100, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Weavile - Snore - Move Tutor
  (461, 46100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Weavile - Spite - Move Tutor
  (461, 46100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Barrier - Level 1
  (462, 46200, 112, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Sonic Boom - Level 1
  (462, 46200, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magnezone - Supersonic - Level 4
  (462, 46200, 48, 12, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Magnezone - Thunder Shock - Level 7
  (462, 46200, 84, 12, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Magnezone - Sonic Boom - Level 11
  (462, 46200, 49, 12, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Magnezone - Thunder Wave - Level 15
  (462, 46200, 86, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Magnezone - Magnet Bomb - Level 18
  (462, 46200, 443, 12, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Magnezone - Spark - Level 21
  (462, 46200, 209, 12, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Magnezone - Mirror Shot - Level 25
  (462, 46200, 429, 12, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Magnezone - Metal Sound - Level 29
  (462, 46200, 319, 12, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Magnezone - Electro Ball - Level 34
  (462, 46200, 486, 12, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Magnezone - Flash Cannon - Level 39
  (462, 46200, 430, 12, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Magnezone - Screech - Level 45
  (462, 46200, 103, 12, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Magnezone - Discharge - Level 51
  (462, 46200, 435, 12, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Magnezone - Lock-On - Level 56
  (462, 46200, 199, 12, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Magnezone - Magnet Rise - Level 62
  (462, 46200, 393, 12, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Magnezone - Gyro Ball - Level 67
  (462, 46200, 360, 12, NULL, 1, 67, NULL, NULL, NULL, 21),
  -- Magnezone - Zap Cannon - Level 73
  (462, 46200, 192, 12, NULL, 1, 73, NULL, NULL, NULL, 22),
  -- Magnezone - Toxic - TM06
  (462, 46200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Magnezone - Hidden Power - TM10
  (462, 46200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Magnezone - Sunny Day - TM11
  (462, 46200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 25),
  -- Magnezone - Hyper Beam - TM15
  (462, 46200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Magnezone - Light Screen - TM16
  (462, 46200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Magnezone - Protect - TM17
  (462, 46200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Magnezone - Rain Dance - TM18
  (462, 46200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Magnezone - Frustration - TM21
  (462, 46200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Magnezone - Thunderbolt - TM24
  (462, 46200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 31),
  -- Magnezone - Thunder - TM25
  (462, 46200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 32),
  -- Magnezone - Return - TM27
  (462, 46200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Magnezone - Double Team - TM32
  (462, 46200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Magnezone - Reflect - TM33
  (462, 46200, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 35),
  -- Magnezone - Facade - TM42
  (462, 46200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Magnezone - Rest - TM44
  (462, 46200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Magnezone - Round - TM48
  (462, 46200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Magnezone - Charge Beam - TM57
  (462, 46200, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 39),
  -- Magnezone - Explosion - TM64
  (462, 46200, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 40),
  -- Magnezone - Giga Impact - TM68
  (462, 46200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Magnezone - Flash - TM70
  (462, 46200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 42),
  -- Magnezone - Volt Switch - TM72
  (462, 46200, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 43),
  -- Magnezone - Thunder Wave - TM73
  (462, 46200, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 44),
  -- Magnezone - Gyro Ball - TM74
  (462, 46200, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 45),
  -- Magnezone - Psych Up - TM77
  (462, 46200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 46),
  -- Magnezone - Swagger - TM87
  (462, 46200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Magnezone - Substitute - TM90
  (462, 46200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Magnezone - Flash Cannon - TM91
  (462, 46200, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 49),
  -- Magnezone - Wild Charge - TM93
  (462, 46200, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 50),
  -- Magnezone - Electroweb - Move Tutor
  (462, 46200, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Magnezone - Gravity - Move Tutor
  (462, 46200, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Magnezone - Iron Defense - Move Tutor
  (462, 46200, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Magnezone - Iron Head - Move Tutor
  (462, 46200, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Magnezone - Magic Coat - Move Tutor
  (462, 46200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Magnezone - Magnet Rise - Move Tutor
  (462, 46200, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Magnezone - Recycle - Move Tutor
  (462, 46200, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Magnezone - Signal Beam - Move Tutor
  (462, 46200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Magnezone - Sleep Talk - Move Tutor
  (462, 46200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Magnezone - Snore - Move Tutor
  (462, 46200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Lickilicky - Lick - Level 1
  (463, 46300, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Supersonic - Level 5
  (463, 46300, 48, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickilicky - Defense Curl - Level 9
  (463, 46300, 111, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lickilicky - Knock Off - Level 13
  (463, 46300, 282, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lickilicky - Wrap - Level 17
  (463, 46300, 35, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Lickilicky - Stomp - Level 21
  (463, 46300, 23, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lickilicky - Disable - Level 25
  (463, 46300, 50, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lickilicky - Slam - Level 29
  (463, 46300, 21, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lickilicky - Rollout - Level 33
  (463, 46300, 205, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Lickilicky - Chip Away - Level 37
  (463, 46300, 498, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lickilicky - Me First - Level 41
  (463, 46300, 382, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lickilicky - Refresh - Level 45
  (463, 46300, 287, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Lickilicky - Screech - Level 49
  (463, 46300, 103, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Lickilicky - Power Whip - Level 53
  (463, 46300, 438, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lickilicky - Wring Out - Level 57
  (463, 46300, 378, 12, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Lickilicky - Gyro Ball - Level 61
  (463, 46300, 360, 12, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Lickilicky - Toxic - TM06
  (463, 46300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Lickilicky - Hidden Power - TM10
  (463, 46300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Lickilicky - Sunny Day - TM11
  (463, 46300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Lickilicky - Ice Beam - TM13
  (463, 46300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Lickilicky - Blizzard - TM14
  (463, 46300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Lickilicky - Hyper Beam - TM15
  (463, 46300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Lickilicky - Protect - TM17
  (463, 46300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Lickilicky - Rain Dance - TM18
  (463, 46300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Lickilicky - Frustration - TM21
  (463, 46300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Lickilicky - Solar Beam - TM22
  (463, 46300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Lickilicky - Thunderbolt - TM24
  (463, 46300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Lickilicky - Thunder - TM25
  (463, 46300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Lickilicky - Earthquake - TM26
  (463, 46300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Lickilicky - Return - TM27
  (463, 46300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Lickilicky - Dig - TM28
  (463, 46300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Lickilicky - Shadow Ball - TM30
  (463, 46300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Lickilicky - Brick Break - TM31
  (463, 46300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Lickilicky - Double Team - TM32
  (463, 46300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Lickilicky - Flamethrower - TM35
  (463, 46300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 35),
  -- Lickilicky - Sandstorm - TM37
  (463, 46300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 36),
  -- Lickilicky - Fire Blast - TM38
  (463, 46300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 37),
  -- Lickilicky - Rock Tomb - TM39
  (463, 46300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 38),
  -- Lickilicky - Facade - TM42
  (463, 46300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Lickilicky - Rest - TM44
  (463, 46300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Lickilicky - Attract - TM45
  (463, 46300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Lickilicky - Thief - TM46
  (463, 46300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 42),
  -- Lickilicky - Round - TM48
  (463, 46300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Lickilicky - Focus Blast - TM52
  (463, 46300, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Lickilicky - Fling - TM56
  (463, 46300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Lickilicky - Incinerate - TM59
  (463, 46300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 46),
  -- Lickilicky - Explosion - TM64
  (463, 46300, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 47),
  -- Lickilicky - Retaliate - TM67
  (463, 46300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 48),
  -- Lickilicky - Giga Impact - TM68
  (463, 46300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Lickilicky - Gyro Ball - TM74
  (463, 46300, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 50),
  -- Lickilicky - Swords Dance - TM75
  (463, 46300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 51),
  -- Lickilicky - Psych Up - TM77
  (463, 46300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 52),
  -- Lickilicky - Bulldoze - TM78
  (463, 46300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 53),
  -- Lickilicky - Rock Slide - TM80
  (463, 46300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 54),
  -- Lickilicky - Dragon Tail - TM82
  (463, 46300, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 55),
  -- Lickilicky - Work Up - TM83
  (463, 46300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 56),
  -- Lickilicky - Dream Eater - TM85
  (463, 46300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 57),
  -- Lickilicky - Swagger - TM87
  (463, 46300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Lickilicky - Substitute - TM90
  (463, 46300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Lickilicky - Rock Smash - TM94
  (463, 46300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 60),
  -- Lickilicky - Cut - HM01
  (463, 46300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 61),
  -- Lickilicky - Surf - HM03
  (463, 46300, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 62),
  -- Lickilicky - Strength - HM04
  (463, 46300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 63),
  -- Lickilicky - Aqua Tail - Move Tutor
  (463, 46300, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Lickilicky - Bind - Move Tutor
  (463, 46300, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Lickilicky - Block - Move Tutor
  (463, 46300, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Lickilicky - Fire Punch - Move Tutor
  (463, 46300, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Lickilicky - Ice Punch - Move Tutor
  (463, 46300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Lickilicky - Icy Wind - Move Tutor
  (463, 46300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Lickilicky - Iron Tail - Move Tutor
  (463, 46300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Lickilicky - Knock Off - Move Tutor
  (463, 46300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Lickilicky - Sleep Talk - Move Tutor
  (463, 46300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Lickilicky - Snore - Move Tutor
  (463, 46300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Lickilicky - Thunder Punch - Move Tutor
  (463, 46300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Lickilicky - Zen Headbutt - Move Tutor
  (463, 46300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Rhyperior - Poison Jab - Level 1
  (464, 46400, 398, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Horn Attack - Level 1
  (464, 46400, 30, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Stomp - Level 1
  (464, 46400, 23, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Fury Attack - Level 1
  (464, 46400, 31, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Stomp - Level 9
  (464, 46400, 23, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rhyperior - Fury Attack - Level 19
  (464, 46400, 31, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Rhyperior - Scary Face - Level 19
  (464, 46400, 184, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rhyperior - Rock Blast - Level 23
  (464, 46400, 350, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rhyperior - Chip Away - Level 30
  (464, 46400, 498, 12, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Rhyperior - Take Down - Level 41
  (464, 46400, 36, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Rhyperior - Hammer Arm - Level 42
  (464, 46400, 359, 12, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Rhyperior - Drill Run - Level 47
  (464, 46400, 529, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Rhyperior - Stone Edge - Level 56
  (464, 46400, 444, 12, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Rhyperior - Earthquake - Level 62
  (464, 46400, 89, 12, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Rhyperior - Horn Drill - Level 71
  (464, 46400, 32, 12, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Rhyperior - Megahorn - Level 77
  (464, 46400, 224, 12, NULL, 1, 77, NULL, NULL, NULL, 17),
  -- Rhyperior - Rock Wrecker - Level 86
  (464, 46400, 439, 12, NULL, 1, 86, NULL, NULL, NULL, 18),
  -- Rhyperior - Roar - TM05
  (464, 46400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Rhyperior - Toxic - TM06
  (464, 46400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Rhyperior - Hidden Power - TM10
  (464, 46400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Rhyperior - Sunny Day - TM11
  (464, 46400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Rhyperior - Ice Beam - TM13
  (464, 46400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Rhyperior - Blizzard - TM14
  (464, 46400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Rhyperior - Hyper Beam - TM15
  (464, 46400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Rhyperior - Protect - TM17
  (464, 46400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Rhyperior - Rain Dance - TM18
  (464, 46400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Rhyperior - Frustration - TM21
  (464, 46400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Rhyperior - Smack Down - TM23
  (464, 46400, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 29),
  -- Rhyperior - Thunderbolt - TM24
  (464, 46400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 30),
  -- Rhyperior - Thunder - TM25
  (464, 46400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 31),
  -- Rhyperior - Earthquake - TM26
  (464, 46400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 32),
  -- Rhyperior - Return - TM27
  (464, 46400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Rhyperior - Dig - TM28
  (464, 46400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 34),
  -- Rhyperior - Brick Break - TM31
  (464, 46400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 35),
  -- Rhyperior - Double Team - TM32
  (464, 46400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 36),
  -- Rhyperior - Flamethrower - TM35
  (464, 46400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 37),
  -- Rhyperior - Sandstorm - TM37
  (464, 46400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 38),
  -- Rhyperior - Fire Blast - TM38
  (464, 46400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 39),
  -- Rhyperior - Rock Tomb - TM39
  (464, 46400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 40),
  -- Rhyperior - Facade - TM42
  (464, 46400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 41),
  -- Rhyperior - Rest - TM44
  (464, 46400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 42),
  -- Rhyperior - Attract - TM45
  (464, 46400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 43),
  -- Rhyperior - Thief - TM46
  (464, 46400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 44),
  -- Rhyperior - Round - TM48
  (464, 46400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 45),
  -- Rhyperior - Focus Blast - TM52
  (464, 46400, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 46),
  -- Rhyperior - Fling - TM56
  (464, 46400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 47),
  -- Rhyperior - Incinerate - TM59
  (464, 46400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 48),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 49),
  -- Rhyperior - Payback - TM66
  (464, 46400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 50),
  -- Rhyperior - Giga Impact - TM68
  (464, 46400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 51),
  -- Rhyperior - Rock Polish - TM69
  (464, 46400, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 52),
  -- Rhyperior - Stone Edge - TM71
  (464, 46400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 53),
  -- Rhyperior - Swords Dance - TM75
  (464, 46400, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 54),
  -- Rhyperior - Bulldoze - TM78
  (464, 46400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 55),
  -- Rhyperior - Rock Slide - TM80
  (464, 46400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 56),
  -- Rhyperior - Dragon Tail - TM82
  (464, 46400, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 57),
  -- Rhyperior - Poison Jab - TM84
  (464, 46400, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 58),
  -- Rhyperior - Swagger - TM87
  (464, 46400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 59),
  -- Rhyperior - Substitute - TM90
  (464, 46400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 60),
  -- Rhyperior - Flash Cannon - TM91
  (464, 46400, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 61),
  -- Rhyperior - Rock Smash - TM94
  (464, 46400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 62),
  -- Rhyperior - Cut - HM01
  (464, 46400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 63),
  -- Rhyperior - Surf - HM03
  (464, 46400, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 64),
  -- Rhyperior - Strength - HM04
  (464, 46400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 65),
  -- Rhyperior - Aqua Tail - Move Tutor
  (464, 46400, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Rhyperior - Block - Move Tutor
  (464, 46400, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Rhyperior - Dragon Pulse - Move Tutor
  (464, 46400, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Rhyperior - Drill Run - Move Tutor
  (464, 46400, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Rhyperior - Earth Power - Move Tutor
  (464, 46400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Rhyperior - Endeavor - Move Tutor
  (464, 46400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Rhyperior - Fire Punch - Move Tutor
  (464, 46400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Rhyperior - Ice Punch - Move Tutor
  (464, 46400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Rhyperior - Icy Wind - Move Tutor
  (464, 46400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Rhyperior - Iron Head - Move Tutor
  (464, 46400, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Rhyperior - Iron Tail - Move Tutor
  (464, 46400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Rhyperior - Outrage - Move Tutor
  (464, 46400, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Rhyperior - Sleep Talk - Move Tutor
  (464, 46400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Rhyperior - Snore - Move Tutor
  (464, 46400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Rhyperior - Spite - Move Tutor
  (464, 46400, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Rhyperior - Stealth Rock - Move Tutor
  (464, 46400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Rhyperior - Superpower - Move Tutor
  (464, 46400, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Rhyperior - Thunder Punch - Move Tutor
  (464, 46400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Rhyperior - Uproar - Move Tutor
  (464, 46400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Tangrowth - Ingrain - Level 1
  (465, 46500, 275, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Constrict - Level 1
  (465, 46500, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangrowth - Sleep Powder - Level 4
  (465, 46500, 79, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tangrowth - Vine Whip - Level 7
  (465, 46500, 22, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tangrowth - Absorb - Level 10
  (465, 46500, 71, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Tangrowth - Poison Powder - Level 14
  (465, 46500, 77, 12, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tangrowth - Bind - Level 17
  (465, 46500, 20, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tangrowth - Growth - Level 20
  (465, 46500, 74, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tangrowth - Mega Drain - Level 23
  (465, 46500, 72, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Tangrowth - Knock Off - Level 27
  (465, 46500, 282, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tangrowth - Stun Spore - Level 30
  (465, 46500, 78, 12, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Tangrowth - Natural Gift - Level 33
  (465, 46500, 363, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Tangrowth - Giga Drain - Level 36
  (465, 46500, 202, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tangrowth - Ancient Power - Level 40
  (465, 46500, 246, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Tangrowth - Slam - Level 43
  (465, 46500, 21, 12, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tangrowth - Tickle - Level 46
  (465, 46500, 321, 12, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Tangrowth - Wring Out - Level 49
  (465, 46500, 378, 12, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Tangrowth - Power Whip - Level 53
  (465, 46500, 438, 12, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Tangrowth - Block - Level 56
  (465, 46500, 335, 12, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Tangrowth - Toxic - TM06
  (465, 46500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Tangrowth - Hidden Power - TM10
  (465, 46500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Tangrowth - Sunny Day - TM11
  (465, 46500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Tangrowth - Hyper Beam - TM15
  (465, 46500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Tangrowth - Protect - TM17
  (465, 46500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Tangrowth - Frustration - TM21
  (465, 46500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Tangrowth - Solar Beam - TM22
  (465, 46500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Tangrowth - Earthquake - TM26
  (465, 46500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Tangrowth - Return - TM27
  (465, 46500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Tangrowth - Brick Break - TM31
  (465, 46500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Tangrowth - Double Team - TM32
  (465, 46500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Tangrowth - Reflect - TM33
  (465, 46500, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 31),
  -- Tangrowth - Sludge Bomb - TM36
  (465, 46500, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Tangrowth - Rock Tomb - TM39
  (465, 46500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Tangrowth - Aerial Ace - TM40
  (465, 46500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 34),
  -- Tangrowth - Facade - TM42
  (465, 46500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Tangrowth - Rest - TM44
  (465, 46500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Tangrowth - Attract - TM45
  (465, 46500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Tangrowth - Thief - TM46
  (465, 46500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Tangrowth - Round - TM48
  (465, 46500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Tangrowth - Focus Blast - TM52
  (465, 46500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 40),
  -- Tangrowth - Energy Ball - TM53
  (465, 46500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 41),
  -- Tangrowth - Fling - TM56
  (465, 46500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Tangrowth - Payback - TM66
  (465, 46500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Tangrowth - Giga Impact - TM68
  (465, 46500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Tangrowth - Flash - TM70
  (465, 46500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 45),
  -- Tangrowth - Swords Dance - TM75
  (465, 46500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 46),
  -- Tangrowth - Psych Up - TM77
  (465, 46500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 47),
  -- Tangrowth - Bulldoze - TM78
  (465, 46500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Tangrowth - Rock Slide - TM80
  (465, 46500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Tangrowth - Poison Jab - TM84
  (465, 46500, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 50),
  -- Tangrowth - Grass Knot - TM86
  (465, 46500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 51),
  -- Tangrowth - Swagger - TM87
  (465, 46500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Tangrowth - Substitute - TM90
  (465, 46500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Tangrowth - Rock Smash - TM94
  (465, 46500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Tangrowth - Cut - HM01
  (465, 46500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 55),
  -- Tangrowth - Strength - HM04
  (465, 46500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Tangrowth - Bind - Move Tutor
  (465, 46500, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Tangrowth - Block - Move Tutor
  (465, 46500, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Tangrowth - Endeavor - Move Tutor
  (465, 46500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Tangrowth - Giga Drain - Move Tutor
  (465, 46500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Tangrowth - Knock Off - Move Tutor
  (465, 46500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Tangrowth - Pain Split - Move Tutor
  (465, 46500, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Tangrowth - Seed Bomb - Move Tutor
  (465, 46500, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Tangrowth - Sleep Talk - Move Tutor
  (465, 46500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Tangrowth - Snore - Move Tutor
  (465, 46500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Tangrowth - Synthesis - Move Tutor
  (465, 46500, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Tangrowth - Worry Seed - Move Tutor
  (465, 46500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Electivire - Fire Punch - Level 1
  (466, 46600, 7, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Low Kick - Level 1
  (466, 46600, 67, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electivire - Thunder Shock - Level 5
  (466, 46600, 84, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Electivire - Low Kick - Level 8
  (466, 46600, 67, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Electivire - Swift - Level 12
  (466, 46600, 129, 12, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Electivire - Shock Wave - Level 15
  (466, 46600, 351, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Electivire - Thunder Wave - Level 19
  (466, 46600, 86, 12, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Electivire - Electro Ball - Level 22
  (466, 46600, 486, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Electivire - Light Screen - Level 26
  (466, 46600, 113, 12, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Electivire - Thunder Punch - Level 29
  (466, 46600, 9, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Electivire - Discharge - Level 36
  (466, 46600, 435, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Electivire - Screech - Level 42
  (466, 46600, 103, 12, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Electivire - Thunderbolt - Level 49
  (466, 46600, 85, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Electivire - Thunder - Level 55
  (466, 46600, 87, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Electivire - Giga Impact - Level 62
  (466, 46600, 416, 12, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Electivire - Toxic - TM06
  (466, 46600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Electivire - Hidden Power - TM10
  (466, 46600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Electivire - Taunt - TM12
  (466, 46600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Electivire - Hyper Beam - TM15
  (466, 46600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Electivire - Light Screen - TM16
  (466, 46600, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Electivire - Protect - TM17
  (466, 46600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Electivire - Rain Dance - TM18
  (466, 46600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Electivire - Frustration - TM21
  (466, 46600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Electivire - Thunderbolt - TM24
  (466, 46600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Electivire - Thunder - TM25
  (466, 46600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Electivire - Earthquake - TM26
  (466, 46600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Electivire - Return - TM27
  (466, 46600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Electivire - Dig - TM28
  (466, 46600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Electivire - Psychic - TM29
  (466, 46600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Electivire - Brick Break - TM31
  (466, 46600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Electivire - Double Team - TM32
  (466, 46600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Electivire - Flamethrower - TM35
  (466, 46600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 35),
  -- Electivire - Rock Tomb - TM39
  (466, 46600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Electivire - Torment - TM41
  (466, 46600, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Electivire - Facade - TM42
  (466, 46600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Electivire - Rest - TM44
  (466, 46600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Electivire - Attract - TM45
  (466, 46600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Electivire - Thief - TM46
  (466, 46600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Electivire - Low Sweep - TM47
  (466, 46600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 42),
  -- Electivire - Round - TM48
  (466, 46600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Electivire - Focus Blast - TM52
  (466, 46600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Electivire - Fling - TM56
  (466, 46600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Electivire - Charge Beam - TM57
  (466, 46600, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 46),
  -- Electivire - Giga Impact - TM68
  (466, 46600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Electivire - Flash - TM70
  (466, 46600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Electivire - Volt Switch - TM72
  (466, 46600, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 49),
  -- Electivire - Thunder Wave - TM73
  (466, 46600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 50),
  -- Electivire - Bulldoze - TM78
  (466, 46600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 51),
  -- Electivire - Rock Slide - TM80
  (466, 46600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 52),
  -- Electivire - Swagger - TM87
  (466, 46600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Electivire - Substitute - TM90
  (466, 46600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Electivire - Wild Charge - TM93
  (466, 46600, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 55),
  -- Electivire - Rock Smash - TM94
  (466, 46600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 56),
  -- Electivire - Strength - HM04
  (466, 46600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 57),
  -- Electivire - Covet - Move Tutor
  (466, 46600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Electivire - Dual Chop - Move Tutor
  (466, 46600, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Electivire - Electroweb - Move Tutor
  (466, 46600, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Electivire - Fire Punch - Move Tutor
  (466, 46600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Electivire - Helping Hand - Move Tutor
  (466, 46600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Electivire - Ice Punch - Move Tutor
  (466, 46600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Electivire - Iron Tail - Move Tutor
  (466, 46600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Electivire - Low Kick - Move Tutor
  (466, 46600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Electivire - Magnet Rise - Move Tutor
  (466, 46600, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Electivire - Signal Beam - Move Tutor
  (466, 46600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Electivire - Sleep Talk - Move Tutor
  (466, 46600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Electivire - Snore - Move Tutor
  (466, 46600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Electivire - Thunder Punch - Move Tutor
  (466, 46600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Magmortar - Thunder Punch - Level 1
  (467, 46700, 9, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magmortar - Ember - Level 5
  (467, 46700, 52, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Magmortar - Smokescreen - Level 8
  (467, 46700, 108, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Magmortar - Feint Attack - Level 12
  (467, 46700, 185, 12, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Spin - Level 15
  (467, 46700, 83, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Magmortar - Clear Smog - Level 19
  (467, 46700, 499, 12, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Magmortar - Flame Burst - Level 22
  (467, 46700, 481, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Magmortar - Confuse Ray - Level 26
  (467, 46700, 109, 12, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Magmortar - Fire Punch - Level 29
  (467, 46700, 7, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Magmortar - Lava Plume - Level 36
  (467, 46700, 436, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Magmortar - Sunny Day - Level 42
  (467, 46700, 241, 12, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Magmortar - Flamethrower - Level 49
  (467, 46700, 53, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Magmortar - Fire Blast - Level 55
  (467, 46700, 126, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Magmortar - Hyper Beam - Level 62
  (467, 46700, 63, 12, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Magmortar - Toxic - TM06
  (467, 46700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Magmortar - Hidden Power - TM10
  (467, 46700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Magmortar - Sunny Day - TM11
  (467, 46700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Magmortar - Taunt - TM12
  (467, 46700, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Magmortar - Hyper Beam - TM15
  (467, 46700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Magmortar - Protect - TM17
  (467, 46700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Magmortar - Frustration - TM21
  (467, 46700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Magmortar - Solar Beam - TM22
  (467, 46700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Magmortar - Thunderbolt - TM24
  (467, 46700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Magmortar - Earthquake - TM26
  (467, 46700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Magmortar - Return - TM27
  (467, 46700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Magmortar - Psychic - TM29
  (467, 46700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Magmortar - Brick Break - TM31
  (467, 46700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Magmortar - Double Team - TM32
  (467, 46700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Magmortar - Flamethrower - TM35
  (467, 46700, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Magmortar - Fire Blast - TM38
  (467, 46700, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 34),
  -- Magmortar - Rock Tomb - TM39
  (467, 46700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Magmortar - Torment - TM41
  (467, 46700, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 36),
  -- Magmortar - Facade - TM42
  (467, 46700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Magmortar - Flame Charge - TM43
  (467, 46700, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 38),
  -- Magmortar - Rest - TM44
  (467, 46700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Magmortar - Attract - TM45
  (467, 46700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Magmortar - Thief - TM46
  (467, 46700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Magmortar - Low Sweep - TM47
  (467, 46700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 42),
  -- Magmortar - Round - TM48
  (467, 46700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Magmortar - Overheat - TM50
  (467, 46700, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 44),
  -- Magmortar - Focus Blast - TM52
  (467, 46700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 45),
  -- Magmortar - Fling - TM56
  (467, 46700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Magmortar - Incinerate - TM59
  (467, 46700, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 47),
  -- Magmortar - Will-O-Wisp - TM61
  (467, 46700, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 48),
  -- Magmortar - Giga Impact - TM68
  (467, 46700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Magmortar - Bulldoze - TM78
  (467, 46700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 50),
  -- Magmortar - Rock Slide - TM80
  (467, 46700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 51),
  -- Magmortar - Swagger - TM87
  (467, 46700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Magmortar - Substitute - TM90
  (467, 46700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Magmortar - Rock Smash - TM94
  (467, 46700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Magmortar - Strength - HM04
  (467, 46700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 55),
  -- Magmortar - Covet - Move Tutor
  (467, 46700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Magmortar - Dual Chop - Move Tutor
  (467, 46700, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Magmortar - Fire Punch - Move Tutor
  (467, 46700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Magmortar - Heat Wave - Move Tutor
  (467, 46700, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Magmortar - Helping Hand - Move Tutor
  (467, 46700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Magmortar - Iron Tail - Move Tutor
  (467, 46700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Magmortar - Low Kick - Move Tutor
  (467, 46700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Magmortar - Sleep Talk - Move Tutor
  (467, 46700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Magmortar - Snore - Move Tutor
  (467, 46700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Magmortar - Thunder Punch - Move Tutor
  (467, 46700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Togekiss - Sky Attack - Level 1
  (468, 46800, 143, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Extreme Speed - Level 1
  (468, 46800, 245, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togekiss - Aura Sphere - Level 1
  (468, 46800, 396, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togekiss - Air Slash - Level 1
  (468, 46800, 403, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togekiss - Psyshock - TM03
  (468, 46800, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 5),
  -- Togekiss - Toxic - TM06
  (468, 46800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 6),
  -- Togekiss - Hidden Power - TM10
  (468, 46800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 7),
  -- Togekiss - Sunny Day - TM11
  (468, 46800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 8),
  -- Togekiss - Hyper Beam - TM15
  (468, 46800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 9),
  -- Togekiss - Light Screen - TM16
  (468, 46800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 10),
  -- Togekiss - Protect - TM17
  (468, 46800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 11),
  -- Togekiss - Rain Dance - TM18
  (468, 46800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 12),
  -- Togekiss - Telekinesis - TM19
  (468, 46800, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 13),
  -- Togekiss - Safeguard - TM20
  (468, 46800, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 14),
  -- Togekiss - Frustration - TM21
  (468, 46800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 15),
  -- Togekiss - Solar Beam - TM22
  (468, 46800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 16),
  -- Togekiss - Return - TM27
  (468, 46800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 17),
  -- Togekiss - Psychic - TM29
  (468, 46800, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 18),
  -- Togekiss - Shadow Ball - TM30
  (468, 46800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 19),
  -- Togekiss - Brick Break - TM31
  (468, 46800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 20),
  -- Togekiss - Double Team - TM32
  (468, 46800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 21),
  -- Togekiss - Reflect - TM33
  (468, 46800, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 22),
  -- Togekiss - Flamethrower - TM35
  (468, 46800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 23),
  -- Togekiss - Fire Blast - TM38
  (468, 46800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 24),
  -- Togekiss - Aerial Ace - TM40
  (468, 46800, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 25),
  -- Togekiss - Facade - TM42
  (468, 46800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Togekiss - Rest - TM44
  (468, 46800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Togekiss - Attract - TM45
  (468, 46800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Togekiss - Round - TM48
  (468, 46800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Togekiss - Echoed Voice - TM49
  (468, 46800, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Togekiss - Fling - TM56
  (468, 46800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 31),
  -- Togekiss - Incinerate - TM59
  (468, 46800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 32),
  -- Togekiss - Retaliate - TM67
  (468, 46800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 33),
  -- Togekiss - Giga Impact - TM68
  (468, 46800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 34),
  -- Togekiss - Flash - TM70
  (468, 46800, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Togekiss - Thunder Wave - TM73
  (468, 46800, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 36),
  -- Togekiss - Psych Up - TM77
  (468, 46800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 37),
  -- Togekiss - Work Up - TM83
  (468, 46800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 38),
  -- Togekiss - Dream Eater - TM85
  (468, 46800, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Togekiss - Grass Knot - TM86
  (468, 46800, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 40),
  -- Togekiss - Swagger - TM87
  (468, 46800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Togekiss - Pluck - TM88
  (468, 46800, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 42),
  -- Togekiss - Substitute - TM90
  (468, 46800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Togekiss - Rock Smash - TM94
  (468, 46800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Togekiss - Fly - HM02
  (468, 46800, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 45),
  -- Togekiss - Covet - Move Tutor
  (468, 46800, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Togekiss - Drain Punch - Move Tutor
  (468, 46800, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Togekiss - Endeavor - Move Tutor
  (468, 46800, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Togekiss - Heal Bell - Move Tutor
  (468, 46800, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Togekiss - Heat Wave - Move Tutor
  (468, 46800, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Togekiss - Hyper Voice - Move Tutor
  (468, 46800, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Togekiss - Last Resort - Move Tutor
  (468, 46800, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Togekiss - Magic Coat - Move Tutor
  (468, 46800, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Togekiss - Roost - Move Tutor
  (468, 46800, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Togekiss - Signal Beam - Move Tutor
  (468, 46800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Togekiss - Sky Attack - Move Tutor
  (468, 46800, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Togekiss - Sleep Talk - Move Tutor
  (468, 46800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Togekiss - Snore - Move Tutor
  (468, 46800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Togekiss - Tailwind - Move Tutor
  (468, 46800, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Togekiss - Trick - Move Tutor
  (468, 46800, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Togekiss - Zen Headbutt - Move Tutor
  (468, 46800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Yanmega - Night Slash - Level 1
  (469, 46900, 400, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Bug Bite - Level 1
  (469, 46900, 450, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanmega - Tackle - Level 1
  (469, 46900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yanmega - Foresight - Level 1
  (469, 46900, 193, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yanmega - Quick Attack - Level 1
  (469, 46900, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Yanmega - Double Team - Level 1
  (469, 46900, 104, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Yanmega - Quick Attack - Level 6
  (469, 46900, 98, 12, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Yanmega - Double Team - Level 11
  (469, 46900, 104, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Yanmega - Sonic Boom - Level 14
  (469, 46900, 49, 12, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 12, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 12, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Yanmega - Pursuit - Level 30
  (469, 46900, 228, 12, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 12, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 12, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Yanmega - Air Slash - Level 54
  (469, 46900, 403, 12, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Yanmega - Bug Buzz - Level 57
  (469, 46900, 405, 12, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Yanmega - Toxic - TM06
  (469, 46900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Yanmega - Hidden Power - TM10
  (469, 46900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Yanmega - Sunny Day - TM11
  (469, 46900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Yanmega - Hyper Beam - TM15
  (469, 46900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Yanmega - Protect - TM17
  (469, 46900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Yanmega - Frustration - TM21
  (469, 46900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Yanmega - Solar Beam - TM22
  (469, 46900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 27),
  -- Yanmega - Return - TM27
  (469, 46900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Yanmega - Psychic - TM29
  (469, 46900, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 29),
  -- Yanmega - Shadow Ball - TM30
  (469, 46900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 30),
  -- Yanmega - Double Team - TM32
  (469, 46900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Yanmega - Aerial Ace - TM40
  (469, 46900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 32),
  -- Yanmega - Facade - TM42
  (469, 46900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Yanmega - Rest - TM44
  (469, 46900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Yanmega - Attract - TM45
  (469, 46900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Yanmega - Thief - TM46
  (469, 46900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Yanmega - Round - TM48
  (469, 46900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Yanmega - Giga Impact - TM68
  (469, 46900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Yanmega - Flash - TM70
  (469, 46900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Yanmega - Struggle Bug - TM76
  (469, 46900, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 40),
  -- Yanmega - Psych Up - TM77
  (469, 46900, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 41),
  -- Yanmega - Dream Eater - TM85
  (469, 46900, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 42),
  -- Yanmega - Swagger - TM87
  (469, 46900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Yanmega - U-turn - TM89
  (469, 46900, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 44),
  -- Yanmega - Substitute - TM90
  (469, 46900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Yanmega - Bug Bite - Move Tutor
  (469, 46900, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Yanmega - Giga Drain - Move Tutor
  (469, 46900, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Yanmega - Roost - Move Tutor
  (469, 46900, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Yanmega - Signal Beam - Move Tutor
  (469, 46900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Yanmega - Sleep Talk - Move Tutor
  (469, 46900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Yanmega - Snore - Move Tutor
  (469, 46900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Yanmega - Tailwind - Move Tutor
  (469, 46900, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Yanmega - Uproar - Move Tutor
  (469, 46900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Sand Attack - Level 5
  (470, 47000, 28, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Leafeon - Razor Leaf - Level 9
  (470, 47000, 75, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Leafeon - Quick Attack - Level 13
  (470, 47000, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Leafeon - Grass Whistle - Level 17
  (470, 47000, 320, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Leafeon - Magical Leaf - Level 21
  (470, 47000, 345, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Leafeon - Giga Drain - Level 25
  (470, 47000, 202, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Leafeon - Swords Dance - Level 29
  (470, 47000, 14, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Leafeon - Synthesis - Level 33
  (470, 47000, 235, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Leafeon - Sunny Day - Level 37
  (470, 47000, 241, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Leafeon - Last Resort - Level 41
  (470, 47000, 387, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Leafeon - Leaf Blade - Level 45
  (470, 47000, 348, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Leafeon - Roar - TM05
  (470, 47000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Leafeon - Toxic - TM06
  (470, 47000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Leafeon - Hidden Power - TM10
  (470, 47000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Leafeon - Sunny Day - TM11
  (470, 47000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Leafeon - Hyper Beam - TM15
  (470, 47000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Leafeon - Protect - TM17
  (470, 47000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Leafeon - Rain Dance - TM18
  (470, 47000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Leafeon - Frustration - TM21
  (470, 47000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Leafeon - Solar Beam - TM22
  (470, 47000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 23),
  -- Leafeon - Return - TM27
  (470, 47000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Leafeon - Dig - TM28
  (470, 47000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Leafeon - Shadow Ball - TM30
  (470, 47000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Leafeon - Double Team - TM32
  (470, 47000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Leafeon - Aerial Ace - TM40
  (470, 47000, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 28),
  -- Leafeon - Facade - TM42
  (470, 47000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Leafeon - Rest - TM44
  (470, 47000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Leafeon - Attract - TM45
  (470, 47000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Leafeon - Round - TM48
  (470, 47000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Leafeon - Echoed Voice - TM49
  (470, 47000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 33),
  -- Leafeon - Energy Ball - TM53
  (470, 47000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 34),
  -- Leafeon - Retaliate - TM67
  (470, 47000, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Leafeon - Giga Impact - TM68
  (470, 47000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Leafeon - Flash - TM70
  (470, 47000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Leafeon - Swords Dance - TM75
  (470, 47000, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 38),
  -- Leafeon - X-Scissor - TM81
  (470, 47000, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 39),
  -- Leafeon - Work Up - TM83
  (470, 47000, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 40),
  -- Leafeon - Grass Knot - TM86
  (470, 47000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 41),
  -- Leafeon - Swagger - TM87
  (470, 47000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Leafeon - Substitute - TM90
  (470, 47000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Leafeon - Rock Smash - TM94
  (470, 47000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Leafeon - Strength - HM04
  (470, 47000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 45),
  -- Leafeon - Covet - Move Tutor
  (470, 47000, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Leafeon - Giga Drain - Move Tutor
  (470, 47000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Leafeon - Heal Bell - Move Tutor
  (470, 47000, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Leafeon - Helping Hand - Move Tutor
  (470, 47000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Leafeon - Hyper Voice - Move Tutor
  (470, 47000, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Leafeon - Iron Tail - Move Tutor
  (470, 47000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Leafeon - Knock Off - Move Tutor
  (470, 47000, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Leafeon - Last Resort - Move Tutor
  (470, 47000, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Leafeon - Seed Bomb - Move Tutor
  (470, 47000, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Leafeon - Sleep Talk - Move Tutor
  (470, 47000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Leafeon - Snore - Move Tutor
  (470, 47000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Leafeon - Synthesis - Move Tutor
  (470, 47000, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Leafeon - Worry Seed - Move Tutor
  (470, 47000, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Sand Attack - Level 5
  (471, 47100, 28, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Glaceon - Icy Wind - Level 9
  (471, 47100, 196, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Glaceon - Quick Attack - Level 13
  (471, 47100, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Glaceon - Bite - Level 17
  (471, 47100, 44, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Glaceon - Ice Fang - Level 21
  (471, 47100, 423, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Glaceon - Ice Shard - Level 25
  (471, 47100, 420, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Glaceon - Barrier - Level 29
  (471, 47100, 112, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Glaceon - Mirror Coat - Level 33
  (471, 47100, 243, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Glaceon - Hail - Level 37
  (471, 47100, 258, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Glaceon - Last Resort - Level 41
  (471, 47100, 387, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Glaceon - Blizzard - Level 45
  (471, 47100, 59, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Glaceon - Roar - TM05
  (471, 47100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Glaceon - Toxic - TM06
  (471, 47100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Glaceon - Hail - TM07
  (471, 47100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Glaceon - Hidden Power - TM10
  (471, 47100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Glaceon - Sunny Day - TM11
  (471, 47100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Glaceon - Ice Beam - TM13
  (471, 47100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Glaceon - Blizzard - TM14
  (471, 47100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Glaceon - Hyper Beam - TM15
  (471, 47100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Glaceon - Protect - TM17
  (471, 47100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Glaceon - Rain Dance - TM18
  (471, 47100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Glaceon - Frustration - TM21
  (471, 47100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Glaceon - Return - TM27
  (471, 47100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Glaceon - Dig - TM28
  (471, 47100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Glaceon - Shadow Ball - TM30
  (471, 47100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Glaceon - Double Team - TM32
  (471, 47100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Glaceon - Facade - TM42
  (471, 47100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Glaceon - Rest - TM44
  (471, 47100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Glaceon - Attract - TM45
  (471, 47100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Glaceon - Round - TM48
  (471, 47100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Glaceon - Echoed Voice - TM49
  (471, 47100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Glaceon - Retaliate - TM67
  (471, 47100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Glaceon - Giga Impact - TM68
  (471, 47100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Glaceon - Frost Breath - TM79
  (471, 47100, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 37),
  -- Glaceon - Work Up - TM83
  (471, 47100, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 38),
  -- Glaceon - Swagger - TM87
  (471, 47100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 39),
  -- Glaceon - Substitute - TM90
  (471, 47100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Glaceon - Rock Smash - TM94
  (471, 47100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 41),
  -- Glaceon - Strength - HM04
  (471, 47100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 42),
  -- Glaceon - Aqua Tail - Move Tutor
  (471, 47100, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Glaceon - Covet - Move Tutor
  (471, 47100, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Glaceon - Heal Bell - Move Tutor
  (471, 47100, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Glaceon - Helping Hand - Move Tutor
  (471, 47100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Glaceon - Hyper Voice - Move Tutor
  (471, 47100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Glaceon - Icy Wind - Move Tutor
  (471, 47100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Glaceon - Iron Tail - Move Tutor
  (471, 47100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Glaceon - Last Resort - Move Tutor
  (471, 47100, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Glaceon - Signal Beam - Move Tutor
  (471, 47100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Glaceon - Sleep Talk - Move Tutor
  (471, 47100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Glaceon - Snore - Move Tutor
  (471, 47100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Gliscor - Thunder Fang - Level 1
  (472, 47200, 422, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Ice Fang - Level 1
  (472, 47200, 423, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gliscor - Fire Fang - Level 1
  (472, 47200, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gliscor - Poison Jab - Level 1
  (472, 47200, 398, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gliscor - Sand Attack - Level 1
  (472, 47200, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gliscor - Harden - Level 1
  (472, 47200, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gliscor - Knock Off - Level 1
  (472, 47200, 282, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gliscor - Sand Attack - Level 4
  (472, 47200, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Gliscor - Harden - Level 7
  (472, 47200, 106, 12, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Gliscor - Knock Off - Level 10
  (472, 47200, 282, 12, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Gliscor - Quick Attack - Level 13
  (472, 47200, 98, 12, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Gliscor - Fury Cutter - Level 16
  (472, 47200, 210, 12, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Gliscor - Feint Attack - Level 19
  (472, 47200, 185, 12, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Gliscor - Acrobatics - Level 22
  (472, 47200, 512, 12, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Gliscor - Night Slash - Level 27
  (472, 47200, 400, 12, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Gliscor - U-turn - Level 30
  (472, 47200, 369, 12, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Gliscor - Screech - Level 35
  (472, 47200, 103, 12, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Gliscor - X-Scissor - Level 40
  (472, 47200, 404, 12, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Gliscor - Sky Uppercut - Level 45
  (472, 47200, 327, 12, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Gliscor - Swords Dance - Level 50
  (472, 47200, 14, 12, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Gliscor - Guillotine - Level 55
  (472, 47200, 12, 12, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Gliscor - Hone Claws - TM01
  (472, 47200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 22),
  -- Gliscor - Toxic - TM06
  (472, 47200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Gliscor - Venoshock - TM09
  (472, 47200, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 24),
  -- Gliscor - Hidden Power - TM10
  (472, 47200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Gliscor - Sunny Day - TM11
  (472, 47200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Gliscor - Taunt - TM12
  (472, 47200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 27),
  -- Gliscor - Hyper Beam - TM15
  (472, 47200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Gliscor - Protect - TM17
  (472, 47200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Gliscor - Rain Dance - TM18
  (472, 47200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Gliscor - Frustration - TM21
  (472, 47200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Gliscor - Earthquake - TM26
  (472, 47200, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 32),
  -- Gliscor - Return - TM27
  (472, 47200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Gliscor - Dig - TM28
  (472, 47200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 34),
  -- Gliscor - Brick Break - TM31
  (472, 47200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 35),
  -- Gliscor - Double Team - TM32
  (472, 47200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 36),
  -- Gliscor - Sludge Bomb - TM36
  (472, 47200, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 37),
  -- Gliscor - Sandstorm - TM37
  (472, 47200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 38),
  -- Gliscor - Rock Tomb - TM39
  (472, 47200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 39),
  -- Gliscor - Aerial Ace - TM40
  (472, 47200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 40),
  -- Gliscor - Torment - TM41
  (472, 47200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 41),
  -- Gliscor - Facade - TM42
  (472, 47200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 42),
  -- Gliscor - Rest - TM44
  (472, 47200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 43),
  -- Gliscor - Attract - TM45
  (472, 47200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 44),
  -- Gliscor - Thief - TM46
  (472, 47200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 45),
  -- Gliscor - Round - TM48
  (472, 47200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 46),
  -- Gliscor - False Swipe - TM54
  (472, 47200, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 47),
  -- Gliscor - Fling - TM56
  (472, 47200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 48),
  -- Gliscor - Acrobatics - TM62
  (472, 47200, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 49),
  -- Gliscor - Payback - TM66
  (472, 47200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 50),
  -- Gliscor - Giga Impact - TM68
  (472, 47200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 51),
  -- Gliscor - Rock Polish - TM69
  (472, 47200, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 52),
  -- Gliscor - Stone Edge - TM71
  (472, 47200, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 53),
  -- Gliscor - Swords Dance - TM75
  (472, 47200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 54),
  -- Gliscor - Struggle Bug - TM76
  (472, 47200, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 55),
  -- Gliscor - Bulldoze - TM78
  (472, 47200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 56),
  -- Gliscor - Rock Slide - TM80
  (472, 47200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 57),
  -- Gliscor - X-Scissor - TM81
  (472, 47200, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 58),
  -- Gliscor - Poison Jab - TM84
  (472, 47200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 59),
  -- Gliscor - Swagger - TM87
  (472, 47200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 60),
  -- Gliscor - U-turn - TM89
  (472, 47200, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 61),
  -- Gliscor - Substitute - TM90
  (472, 47200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 62),
  -- Gliscor - Rock Smash - TM94
  (472, 47200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 63),
  -- Gliscor - Cut - HM01
  (472, 47200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 64),
  -- Gliscor - Strength - HM04
  (472, 47200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 65),
  -- Gliscor - Aqua Tail - Move Tutor
  (472, 47200, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Gliscor - Bug Bite - Move Tutor
  (472, 47200, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Gliscor - Dark Pulse - Move Tutor
  (472, 47200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Gliscor - Earth Power - Move Tutor
  (472, 47200, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Gliscor - Iron Tail - Move Tutor
  (472, 47200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Gliscor - Knock Off - Move Tutor
  (472, 47200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Gliscor - Roost - Move Tutor
  (472, 47200, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Gliscor - Sky Attack - Move Tutor
  (472, 47200, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Gliscor - Sleep Talk - Move Tutor
  (472, 47200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Gliscor - Snore - Move Tutor
  (472, 47200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Gliscor - Stealth Rock - Move Tutor
  (472, 47200, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Gliscor - Tailwind - Move Tutor
  (472, 47200, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Peck - Level 1
  (473, 47300, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Odor Sleuth - Level 1
  (473, 47300, 316, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Mud Sport - Level 1
  (473, 47300, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Mud Sport - Level 5
  (473, 47300, 300, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Mamoswine - Powder Snow - Level 8
  (473, 47300, 181, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Mamoswine - Mud-Slap - Level 11
  (473, 47300, 189, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Mamoswine - Endure - Level 14
  (473, 47300, 203, 12, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Mamoswine - Mud Bomb - Level 18
  (473, 47300, 426, 12, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Mamoswine - Hail - Level 21
  (473, 47300, 258, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Mamoswine - Ice Fang - Level 24
  (473, 47300, 423, 12, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Mamoswine - Take Down - Level 28
  (473, 47300, 36, 12, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Mamoswine - Double Hit - Level 33
  (473, 47300, 458, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mamoswine - Mist - Level 37
  (473, 47300, 54, 12, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Mamoswine - Thrash - Level 41
  (473, 47300, 37, 12, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Mamoswine - Earthquake - Level 46
  (473, 47300, 89, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Mamoswine - Blizzard - Level 52
  (473, 47300, 59, 12, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Mamoswine - Scary Face - Level 58
  (473, 47300, 184, 12, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Mamoswine - Roar - TM05
  (473, 47300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Mamoswine - Toxic - TM06
  (473, 47300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Mamoswine - Hail - TM07
  (473, 47300, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Mamoswine - Hidden Power - TM10
  (473, 47300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Mamoswine - Ice Beam - TM13
  (473, 47300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Mamoswine - Blizzard - TM14
  (473, 47300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Mamoswine - Hyper Beam - TM15
  (473, 47300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Mamoswine - Light Screen - TM16
  (473, 47300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Mamoswine - Protect - TM17
  (473, 47300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Mamoswine - Rain Dance - TM18
  (473, 47300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Mamoswine - Frustration - TM21
  (473, 47300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Mamoswine - Earthquake - TM26
  (473, 47300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Mamoswine - Return - TM27
  (473, 47300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Mamoswine - Dig - TM28
  (473, 47300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Mamoswine - Double Team - TM32
  (473, 47300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Mamoswine - Reflect - TM33
  (473, 47300, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 35),
  -- Mamoswine - Sandstorm - TM37
  (473, 47300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 36),
  -- Mamoswine - Rock Tomb - TM39
  (473, 47300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Mamoswine - Facade - TM42
  (473, 47300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Mamoswine - Rest - TM44
  (473, 47300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Mamoswine - Attract - TM45
  (473, 47300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Mamoswine - Round - TM48
  (473, 47300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Mamoswine - Giga Impact - TM68
  (473, 47300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Mamoswine - Stone Edge - TM71
  (473, 47300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 43),
  -- Mamoswine - Bulldoze - TM78
  (473, 47300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Mamoswine - Rock Slide - TM80
  (473, 47300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Mamoswine - Swagger - TM87
  (473, 47300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Mamoswine - Substitute - TM90
  (473, 47300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Mamoswine - Rock Smash - TM94
  (473, 47300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Mamoswine - Strength - HM04
  (473, 47300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Mamoswine - Block - Move Tutor
  (473, 47300, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Mamoswine - Earth Power - Move Tutor
  (473, 47300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Mamoswine - Endeavor - Move Tutor
  (473, 47300, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mamoswine - Icy Wind - Move Tutor
  (473, 47300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Mamoswine - Iron Head - Move Tutor
  (473, 47300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Mamoswine - Knock Off - Move Tutor
  (473, 47300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Mamoswine - Sleep Talk - Move Tutor
  (473, 47300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Mamoswine - Snore - Move Tutor
  (473, 47300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Mamoswine - Stealth Rock - Move Tutor
  (473, 47300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Mamoswine - Superpower - Move Tutor
  (473, 47300, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Conversion 2 - Level 1
  (474, 47400, 176, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Psybeam - Level 7
  (474, 47400, 60, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Porygon-Z - Agility - Level 12
  (474, 47400, 97, 12, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Porygon-Z - Recover - Level 18
  (474, 47400, 105, 12, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Porygon-Z - Magnet Rise - Level 23
  (474, 47400, 393, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Porygon-Z - Signal Beam - Level 29
  (474, 47400, 324, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Porygon-Z - Embargo - Level 34
  (474, 47400, 373, 12, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Porygon-Z - Lock-On - Level 45
  (474, 47400, 199, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Porygon-Z - Tri Attack - Level 51
  (474, 47400, 161, 12, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Porygon-Z - Magic Coat - Level 56
  (474, 47400, 277, 12, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Porygon-Z - Zap Cannon - Level 62
  (474, 47400, 192, 12, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Porygon-Z - Hyper Beam - Level 67
  (474, 47400, 63, 12, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Porygon-Z - Psyshock - TM03
  (474, 47400, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 18),
  -- Porygon-Z - Toxic - TM06
  (474, 47400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Porygon-Z - Hidden Power - TM10
  (474, 47400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Porygon-Z - Sunny Day - TM11
  (474, 47400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Porygon-Z - Ice Beam - TM13
  (474, 47400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Porygon-Z - Blizzard - TM14
  (474, 47400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Porygon-Z - Hyper Beam - TM15
  (474, 47400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Porygon-Z - Protect - TM17
  (474, 47400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Porygon-Z - Rain Dance - TM18
  (474, 47400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Porygon-Z - Frustration - TM21
  (474, 47400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Porygon-Z - Solar Beam - TM22
  (474, 47400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Porygon-Z - Thunderbolt - TM24
  (474, 47400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Porygon-Z - Thunder - TM25
  (474, 47400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Porygon-Z - Return - TM27
  (474, 47400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Porygon-Z - Psychic - TM29
  (474, 47400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Porygon-Z - Shadow Ball - TM30
  (474, 47400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Porygon-Z - Double Team - TM32
  (474, 47400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Porygon-Z - Aerial Ace - TM40
  (474, 47400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 35),
  -- Porygon-Z - Facade - TM42
  (474, 47400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Porygon-Z - Rest - TM44
  (474, 47400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Porygon-Z - Thief - TM46
  (474, 47400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Porygon-Z - Round - TM48
  (474, 47400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Porygon-Z - Charge Beam - TM57
  (474, 47400, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 40),
  -- Porygon-Z - Embargo - TM63
  (474, 47400, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 41),
  -- Porygon-Z - Giga Impact - TM68
  (474, 47400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Porygon-Z - Flash - TM70
  (474, 47400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Porygon-Z - Thunder Wave - TM73
  (474, 47400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 44),
  -- Porygon-Z - Psych Up - TM77
  (474, 47400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 45),
  -- Porygon-Z - Dream Eater - TM85
  (474, 47400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 46),
  -- Porygon-Z - Swagger - TM87
  (474, 47400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Porygon-Z - Substitute - TM90
  (474, 47400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Porygon-Z - Trick Room - TM92
  (474, 47400, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 49),
  -- Porygon-Z - Dark Pulse - Move Tutor
  (474, 47400, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Porygon-Z - Electroweb - Move Tutor
  (474, 47400, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Porygon-Z - Foul Play - Move Tutor
  (474, 47400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Porygon-Z - Gravity - Move Tutor
  (474, 47400, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Porygon-Z - Icy Wind - Move Tutor
  (474, 47400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Porygon-Z - Iron Tail - Move Tutor
  (474, 47400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Porygon-Z - Last Resort - Move Tutor
  (474, 47400, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Porygon-Z - Magic Coat - Move Tutor
  (474, 47400, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Porygon-Z - Magnet Rise - Move Tutor
  (474, 47400, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Porygon-Z - Pain Split - Move Tutor
  (474, 47400, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Porygon-Z - Recycle - Move Tutor
  (474, 47400, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Porygon-Z - Signal Beam - Move Tutor
  (474, 47400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Porygon-Z - Sleep Talk - Move Tutor
  (474, 47400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Porygon-Z - Snore - Move Tutor
  (474, 47400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Porygon-Z - Trick - Move Tutor
  (474, 47400, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Porygon-Z - Uproar - Move Tutor
  (474, 47400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Porygon-Z - Wonder Room - Move Tutor
  (474, 47400, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Porygon-Z - Zen Headbutt - Move Tutor
  (474, 47400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Gallade - Leaf Blade - Level 1
  (475, 47500, 348, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Leer - Level 1
  (475, 47500, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Teleport - Level 1
  (475, 47500, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Confusion - Level 6
  (475, 47500, 93, 12, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gallade - Double Team - Level 10
  (475, 47500, 104, 12, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Gallade - Teleport - Level 12
  (475, 47500, 100, 12, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Gallade - Fury Cutter - Level 17
  (475, 47500, 210, 12, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Gallade - Slash - Level 22
  (475, 47500, 163, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Gallade - Heal Pulse - Level 25
  (475, 47500, 505, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gallade - Swords Dance - Level 31
  (475, 47500, 14, 12, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Gallade - Psycho Cut - Level 36
  (475, 47500, 427, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gallade - Helping Hand - Level 39
  (475, 47500, 270, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Gallade - Feint - Level 45
  (475, 47500, 364, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Gallade - False Swipe - Level 50
  (475, 47500, 206, 12, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Gallade - Protect - Level 53
  (475, 47500, 182, 12, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Gallade - Close Combat - Level 59
  (475, 47500, 370, 12, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Gallade - Stored Power - Level 64
  (475, 47500, 500, 12, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Gallade - Psyshock - TM03
  (475, 47500, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 21),
  -- Gallade - Calm Mind - TM04
  (475, 47500, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 22),
  -- Gallade - Toxic - TM06
  (475, 47500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Gallade - Bulk Up - TM08
  (475, 47500, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 24),
  -- Gallade - Hidden Power - TM10
  (475, 47500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Gallade - Sunny Day - TM11
  (475, 47500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Gallade - Taunt - TM12
  (475, 47500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 27),
  -- Gallade - Hyper Beam - TM15
  (475, 47500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Gallade - Light Screen - TM16
  (475, 47500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 29),
  -- Gallade - Protect - TM17
  (475, 47500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Gallade - Rain Dance - TM18
  (475, 47500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Gallade - Telekinesis - TM19
  (475, 47500, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 32),
  -- Gallade - Safeguard - TM20
  (475, 47500, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 33),
  -- Gallade - Frustration - TM21
  (475, 47500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 34),
  -- Gallade - Thunderbolt - TM24
  (475, 47500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 35),
  -- Gallade - Earthquake - TM26
  (475, 47500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 36),
  -- Gallade - Return - TM27
  (475, 47500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 37),
  -- Gallade - Psychic - TM29
  (475, 47500, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 38),
  -- Gallade - Shadow Ball - TM30
  (475, 47500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 39),
  -- Gallade - Brick Break - TM31
  (475, 47500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 40),
  -- Gallade - Double Team - TM32
  (475, 47500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 41),
  -- Gallade - Reflect - TM33
  (475, 47500, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 42),
  -- Gallade - Rock Tomb - TM39
  (475, 47500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 43),
  -- Gallade - Aerial Ace - TM40
  (475, 47500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 44),
  -- Gallade - Torment - TM41
  (475, 47500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 45),
  -- Gallade - Facade - TM42
  (475, 47500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 46),
  -- Gallade - Rest - TM44
  (475, 47500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 47),
  -- Gallade - Attract - TM45
  (475, 47500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 48),
  -- Gallade - Thief - TM46
  (475, 47500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 49),
  -- Gallade - Low Sweep - TM47
  (475, 47500, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 50),
  -- Gallade - Round - TM48
  (475, 47500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 51),
  -- Gallade - Echoed Voice - TM49
  (475, 47500, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 52),
  -- Gallade - Ally Switch - TM51
  (475, 47500, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 53),
  -- Gallade - Focus Blast - TM52
  (475, 47500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 54),
  -- Gallade - False Swipe - TM54
  (475, 47500, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 55),
  -- Gallade - Fling - TM56
  (475, 47500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 56),
  -- Gallade - Charge Beam - TM57
  (475, 47500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 57),
  -- Gallade - Will-O-Wisp - TM61
  (475, 47500, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 58),
  -- Gallade - Retaliate - TM67
  (475, 47500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 59),
  -- Gallade - Giga Impact - TM68
  (475, 47500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 60),
  -- Gallade - Flash - TM70
  (475, 47500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 61),
  -- Gallade - Stone Edge - TM71
  (475, 47500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 62),
  -- Gallade - Thunder Wave - TM73
  (475, 47500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 63),
  -- Gallade - Swords Dance - TM75
  (475, 47500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 64),
  -- Gallade - Psych Up - TM77
  (475, 47500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 65),
  -- Gallade - Bulldoze - TM78
  (475, 47500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 66),
  -- Gallade - Rock Slide - TM80
  (475, 47500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 67),
  -- Gallade - X-Scissor - TM81
  (475, 47500, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 68),
  -- Gallade - Work Up - TM83
  (475, 47500, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 69),
  -- Gallade - Poison Jab - TM84
  (475, 47500, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 70),
  -- Gallade - Dream Eater - TM85
  (475, 47500, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 71),
  -- Gallade - Grass Knot - TM86
  (475, 47500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 72),
  -- Gallade - Swagger - TM87
  (475, 47500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 73),
  -- Gallade - Substitute - TM90
  (475, 47500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 74),
  -- Gallade - Trick Room - TM92
  (475, 47500, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 75),
  -- Gallade - Rock Smash - TM94
  (475, 47500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 76),
  -- Gallade - Cut - HM01
  (475, 47500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 77),
  -- Gallade - Strength - HM04
  (475, 47500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 78),
  -- Gallade - Drain Punch - Move Tutor
  (475, 47500, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Gallade - Dual Chop - Move Tutor
  (475, 47500, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Gallade - Fire Punch - Move Tutor
  (475, 47500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Gallade - Helping Hand - Move Tutor
  (475, 47500, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Gallade - Hyper Voice - Move Tutor
  (475, 47500, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Gallade - Ice Punch - Move Tutor
  (475, 47500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Gallade - Knock Off - Move Tutor
  (475, 47500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Gallade - Low Kick - Move Tutor
  (475, 47500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Gallade - Magic Coat - Move Tutor
  (475, 47500, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Gallade - Magic Room - Move Tutor
  (475, 47500, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Gallade - Pain Split - Move Tutor
  (475, 47500, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Gallade - Recycle - Move Tutor
  (475, 47500, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Gallade - Signal Beam - Move Tutor
  (475, 47500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 91),
  -- Gallade - Skill Swap - Move Tutor
  (475, 47500, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 92),
  -- Gallade - Sleep Talk - Move Tutor
  (475, 47500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 93),
  -- Gallade - Snatch - Move Tutor
  (475, 47500, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 94),
  -- Gallade - Snore - Move Tutor
  (475, 47500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 95),
  -- Gallade - Thunder Punch - Move Tutor
  (475, 47500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 96),
  -- Gallade - Trick - Move Tutor
  (475, 47500, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 97),
  -- Gallade - Wonder Room - Move Tutor
  (475, 47500, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 98),
  -- Gallade - Zen Headbutt - Move Tutor
  (475, 47500, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 99),
  -- Probopass - Magnet Rise - Level 1
  (476, 47600, 393, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Gravity - Level 1
  (476, 47600, 356, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Probopass - Iron Defense - Level 1
  (476, 47600, 334, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Probopass - Block - Level 1
  (476, 47600, 335, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Probopass - Magnet Bomb - Level 1
  (476, 47600, 443, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Probopass - Iron Defense - Level 4
  (476, 47600, 334, 12, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Probopass - Block - Level 8
  (476, 47600, 335, 12, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Probopass - Magnet Bomb - Level 11
  (476, 47600, 443, 12, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Probopass - Thunder Wave - Level 15
  (476, 47600, 86, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Probopass - Rock Blast - Level 18
  (476, 47600, 350, 12, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Probopass - Rest - Level 22
  (476, 47600, 156, 12, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Probopass - Spark - Level 25
  (476, 47600, 209, 12, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Probopass - Rock Slide - Level 29
  (476, 47600, 157, 12, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Probopass - Power Gem - Level 32
  (476, 47600, 408, 12, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Probopass - Sandstorm - Level 36
  (476, 47600, 201, 12, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Probopass - Discharge - Level 39
  (476, 47600, 435, 12, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Probopass - Earth Power - Level 43
  (476, 47600, 414, 12, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Probopass - Stone Edge - Level 46
  (476, 47600, 444, 12, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Probopass - Lock-On - Level 50
  (476, 47600, 199, 12, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Probopass - Zap Cannon - Level 50
  (476, 47600, 192, 12, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Probopass - Toxic - TM06
  (476, 47600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Probopass - Hidden Power - TM10
  (476, 47600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Probopass - Sunny Day - TM11
  (476, 47600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Probopass - Taunt - TM12
  (476, 47600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Probopass - Hyper Beam - TM15
  (476, 47600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Probopass - Protect - TM17
  (476, 47600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Probopass - Frustration - TM21
  (476, 47600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Probopass - Smack Down - TM23
  (476, 47600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 29),
  -- Probopass - Thunderbolt - TM24
  (476, 47600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 30),
  -- Probopass - Thunder - TM25
  (476, 47600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 31),
  -- Probopass - Earthquake - TM26
  (476, 47600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 32),
  -- Probopass - Return - TM27
  (476, 47600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Probopass - Double Team - TM32
  (476, 47600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Probopass - Sandstorm - TM37
  (476, 47600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 35),
  -- Probopass - Rock Tomb - TM39
  (476, 47600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Probopass - Torment - TM41
  (476, 47600, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Probopass - Facade - TM42
  (476, 47600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Probopass - Rest - TM44
  (476, 47600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Probopass - Attract - TM45
  (476, 47600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Probopass - Round - TM48
  (476, 47600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Probopass - Explosion - TM64
  (476, 47600, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 42),
  -- Probopass - Giga Impact - TM68
  (476, 47600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 43),
  -- Probopass - Rock Polish - TM69
  (476, 47600, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 44),
  -- Probopass - Stone Edge - TM71
  (476, 47600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 45),
  -- Probopass - Volt Switch - TM72
  (476, 47600, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 46),
  -- Probopass - Thunder Wave - TM73
  (476, 47600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 47),
  -- Probopass - Bulldoze - TM78
  (476, 47600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Probopass - Rock Slide - TM80
  (476, 47600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Probopass - Swagger - TM87
  (476, 47600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Probopass - Substitute - TM90
  (476, 47600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Probopass - Flash Cannon - TM91
  (476, 47600, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 52),
  -- Probopass - Rock Smash - TM94
  (476, 47600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Probopass - Strength - HM04
  (476, 47600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Probopass - Block - Move Tutor
  (476, 47600, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Probopass - Earth Power - Move Tutor
  (476, 47600, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Probopass - Fire Punch - Move Tutor
  (476, 47600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Probopass - Gravity - Move Tutor
  (476, 47600, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Probopass - Ice Punch - Move Tutor
  (476, 47600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Probopass - Iron Defense - Move Tutor
  (476, 47600, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Probopass - Iron Head - Move Tutor
  (476, 47600, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Probopass - Magic Coat - Move Tutor
  (476, 47600, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Probopass - Magnet Rise - Move Tutor
  (476, 47600, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Probopass - Pain Split - Move Tutor
  (476, 47600, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Probopass - Sleep Talk - Move Tutor
  (476, 47600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Probopass - Snore - Move Tutor
  (476, 47600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Probopass - Stealth Rock - Move Tutor
  (476, 47600, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Probopass - Thunder Punch - Move Tutor
  (476, 47600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Night Shade - Level 1
  (477, 47700, 101, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 12, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Disable - Level 6
  (477, 47700, 50, 12, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Dusknoir - Foresight - Level 9
  (477, 47700, 193, 12, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Dusknoir - Astonish - Level 14
  (477, 47700, 310, 12, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dusknoir - Confuse Ray - Level 17
  (477, 47700, 109, 12, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dusknoir - Shadow Sneak - Level 22
  (477, 47700, 425, 12, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dusknoir - Pursuit - Level 25
  (477, 47700, 228, 12, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dusknoir - Curse - Level 30
  (477, 47700, 174, 12, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dusknoir - Will-O-Wisp - Level 33
  (477, 47700, 261, 12, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Dusknoir - Shadow Punch - Level 37
  (477, 47700, 325, 12, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Dusknoir - Hex - Level 42
  (477, 47700, 506, 12, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusknoir - Mean Look - Level 49
  (477, 47700, 212, 12, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Dusknoir - Payback - Level 58
  (477, 47700, 371, 12, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Dusknoir - Future Sight - Level 61
  (477, 47700, 248, 12, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Dusknoir - Calm Mind - TM04
  (477, 47700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 22),
  -- Dusknoir - Toxic - TM06
  (477, 47700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Dusknoir - Hidden Power - TM10
  (477, 47700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Dusknoir - Sunny Day - TM11
  (477, 47700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 25),
  -- Dusknoir - Taunt - TM12
  (477, 47700, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 26),
  -- Dusknoir - Ice Beam - TM13
  (477, 47700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 27),
  -- Dusknoir - Blizzard - TM14
  (477, 47700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 28),
  -- Dusknoir - Hyper Beam - TM15
  (477, 47700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 29),
  -- Dusknoir - Protect - TM17
  (477, 47700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Dusknoir - Rain Dance - TM18
  (477, 47700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Dusknoir - Telekinesis - TM19
  (477, 47700, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 32),
  -- Dusknoir - Frustration - TM21
  (477, 47700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Dusknoir - Earthquake - TM26
  (477, 47700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 34),
  -- Dusknoir - Return - TM27
  (477, 47700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Dusknoir - Psychic - TM29
  (477, 47700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 36),
  -- Dusknoir - Shadow Ball - TM30
  (477, 47700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 37),
  -- Dusknoir - Brick Break - TM31
  (477, 47700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 38),
  -- Dusknoir - Double Team - TM32
  (477, 47700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 39),
  -- Dusknoir - Rock Tomb - TM39
  (477, 47700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 40),
  -- Dusknoir - Torment - TM41
  (477, 47700, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 41),
  -- Dusknoir - Facade - TM42
  (477, 47700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 42),
  -- Dusknoir - Rest - TM44
  (477, 47700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 43),
  -- Dusknoir - Attract - TM45
  (477, 47700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 44),
  -- Dusknoir - Thief - TM46
  (477, 47700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 45),
  -- Dusknoir - Round - TM48
  (477, 47700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 46),
  -- Dusknoir - Focus Blast - TM52
  (477, 47700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 47),
  -- Dusknoir - Fling - TM56
  (477, 47700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 48),
  -- Dusknoir - Charge Beam - TM57
  (477, 47700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 49),
  -- Dusknoir - Will-O-Wisp - TM61
  (477, 47700, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 50),
  -- Dusknoir - Embargo - TM63
  (477, 47700, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 51),
  -- Dusknoir - Payback - TM66
  (477, 47700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 52),
  -- Dusknoir - Giga Impact - TM68
  (477, 47700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 53),
  -- Dusknoir - Flash - TM70
  (477, 47700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 54),
  -- Dusknoir - Psych Up - TM77
  (477, 47700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 55),
  -- Dusknoir - Bulldoze - TM78
  (477, 47700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 56),
  -- Dusknoir - Rock Slide - TM80
  (477, 47700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 57),
  -- Dusknoir - Dream Eater - TM85
  (477, 47700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 58),
  -- Dusknoir - Swagger - TM87
  (477, 47700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 59),
  -- Dusknoir - Substitute - TM90
  (477, 47700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 60),
  -- Dusknoir - Trick Room - TM92
  (477, 47700, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 61),
  -- Dusknoir - Rock Smash - TM94
  (477, 47700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 62),
  -- Dusknoir - Strength - HM04
  (477, 47700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 63),
  -- Dusknoir - Bind - Move Tutor
  (477, 47700, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Dusknoir - Dark Pulse - Move Tutor
  (477, 47700, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Dusknoir - Fire Punch - Move Tutor
  (477, 47700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Dusknoir - Gravity - Move Tutor
  (477, 47700, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Dusknoir - Ice Punch - Move Tutor
  (477, 47700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Dusknoir - Icy Wind - Move Tutor
  (477, 47700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Dusknoir - Pain Split - Move Tutor
  (477, 47700, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Dusknoir - Skill Swap - Move Tutor
  (477, 47700, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Dusknoir - Sleep Talk - Move Tutor
  (477, 47700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Dusknoir - Snatch - Move Tutor
  (477, 47700, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Dusknoir - Snore - Move Tutor
  (477, 47700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Dusknoir - Spite - Move Tutor
  (477, 47700, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Dusknoir - Thunder Punch - Move Tutor
  (477, 47700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Dusknoir - Trick - Move Tutor
  (477, 47700, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Astonish - Level 1
  (478, 47800, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Double Team - Level 4
  (478, 47800, 104, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Froslass - Astonish - Level 10
  (478, 47800, 310, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Froslass - Icy Wind - Level 13
  (478, 47800, 196, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Froslass - Confuse Ray - Level 19
  (478, 47800, 109, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Froslass - Ominous Wind - Level 22
  (478, 47800, 466, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Froslass - Wake-Up Slap - Level 28
  (478, 47800, 358, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Froslass - Captivate - Level 31
  (478, 47800, 445, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Froslass - Ice Shard - Level 37
  (478, 47800, 420, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Froslass - Hail - Level 40
  (478, 47800, 258, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Froslass - Blizzard - Level 51
  (478, 47800, 59, 12, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Froslass - Destiny Bond - Level 59
  (478, 47800, 194, 12, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Froslass - Toxic - TM06
  (478, 47800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Froslass - Hail - TM07
  (478, 47800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Froslass - Hidden Power - TM10
  (478, 47800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Froslass - Taunt - TM12
  (478, 47800, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 19),
  -- Froslass - Ice Beam - TM13
  (478, 47800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Froslass - Blizzard - TM14
  (478, 47800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Froslass - Hyper Beam - TM15
  (478, 47800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Froslass - Light Screen - TM16
  (478, 47800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Froslass - Protect - TM17
  (478, 47800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Froslass - Rain Dance - TM18
  (478, 47800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Froslass - Telekinesis - TM19
  (478, 47800, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 26),
  -- Froslass - Safeguard - TM20
  (478, 47800, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 27),
  -- Froslass - Frustration - TM21
  (478, 47800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Froslass - Thunderbolt - TM24
  (478, 47800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Froslass - Thunder - TM25
  (478, 47800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Froslass - Return - TM27
  (478, 47800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Froslass - Psychic - TM29
  (478, 47800, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Froslass - Shadow Ball - TM30
  (478, 47800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Froslass - Double Team - TM32
  (478, 47800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Froslass - Torment - TM41
  (478, 47800, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 35),
  -- Froslass - Facade - TM42
  (478, 47800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Froslass - Rest - TM44
  (478, 47800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Froslass - Attract - TM45
  (478, 47800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Froslass - Round - TM48
  (478, 47800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Froslass - Fling - TM56
  (478, 47800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Froslass - Embargo - TM63
  (478, 47800, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 41),
  -- Froslass - Payback - TM66
  (478, 47800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 42),
  -- Froslass - Giga Impact - TM68
  (478, 47800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 43),
  -- Froslass - Flash - TM70
  (478, 47800, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 44),
  -- Froslass - Thunder Wave - TM73
  (478, 47800, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 45),
  -- Froslass - Psych Up - TM77
  (478, 47800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 46),
  -- Froslass - Frost Breath - TM79
  (478, 47800, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 47),
  -- Froslass - Dream Eater - TM85
  (478, 47800, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 48),
  -- Froslass - Swagger - TM87
  (478, 47800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Froslass - Substitute - TM90
  (478, 47800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Froslass - Block - Move Tutor
  (478, 47800, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Froslass - Ice Punch - Move Tutor
  (478, 47800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Froslass - Icy Wind - Move Tutor
  (478, 47800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Froslass - Pain Split - Move Tutor
  (478, 47800, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Froslass - Signal Beam - Move Tutor
  (478, 47800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Froslass - Sleep Talk - Move Tutor
  (478, 47800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Froslass - Snatch - Move Tutor
  (478, 47800, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Froslass - Snore - Move Tutor
  (478, 47800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Froslass - Spite - Move Tutor
  (478, 47800, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Froslass - Trick - Move Tutor
  (478, 47800, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Rotom - Trick - Level 1
  (479, 47900, 271, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Thunder Wave - Level 1
  (479, 47900, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom - Confuse Ray - Level 1
  (479, 47900, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom - Uproar - Level 8
  (479, 47900, 253, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom - Double Team - Level 15
  (479, 47900, 104, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom - Shock Wave - Level 22
  (479, 47900, 351, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom - Ominous Wind - Level 29
  (479, 47900, 466, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom - Substitute - Level 36
  (479, 47900, 164, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom - Electro Ball - Level 43
  (479, 47900, 486, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom - Hex - Level 50
  (479, 47900, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom - Charge - Level 57
  (479, 47900, 268, 12, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom - Discharge - Level 64
  (479, 47900, 435, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom - Toxic - TM06
  (479, 47900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rotom - Hidden Power - TM10
  (479, 47900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rotom - Sunny Day - TM11
  (479, 47900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rotom - Light Screen - TM16
  (479, 47900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Rotom - Protect - TM17
  (479, 47900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Rotom - Rain Dance - TM18
  (479, 47900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Rotom - Telekinesis - TM19
  (479, 47900, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Rotom - Frustration - TM21
  (479, 47900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Rotom - Thunderbolt - TM24
  (479, 47900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Rotom - Thunder - TM25
  (479, 47900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Rotom - Return - TM27
  (479, 47900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Rotom - Shadow Ball - TM30
  (479, 47900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Rotom - Double Team - TM32
  (479, 47900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Rotom - Reflect - TM33
  (479, 47900, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Rotom - Facade - TM42
  (479, 47900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Rotom - Rest - TM44
  (479, 47900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Rotom - Thief - TM46
  (479, 47900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Rotom - Round - TM48
  (479, 47900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Rotom - Charge Beam - TM57
  (479, 47900, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Rotom - Will-O-Wisp - TM61
  (479, 47900, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 34),
  -- Rotom - Flash - TM70
  (479, 47900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Rotom - Volt Switch - TM72
  (479, 47900, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Rotom - Thunder Wave - TM73
  (479, 47900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Rotom - Psych Up - TM77
  (479, 47900, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Rotom - Dream Eater - TM85
  (479, 47900, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Rotom - Swagger - TM87
  (479, 47900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Rotom - Substitute - TM90
  (479, 47900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Rotom - Dark Pulse - Move Tutor
  (479, 47900, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Rotom - Electroweb - Move Tutor
  (479, 47900, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Rotom - Pain Split - Move Tutor
  (479, 47900, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Rotom - Signal Beam - Move Tutor
  (479, 47900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Rotom - Sleep Talk - Move Tutor
  (479, 47900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rotom - Snatch - Move Tutor
  (479, 47900, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rotom - Snore - Move Tutor
  (479, 47900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rotom - Spite - Move Tutor
  (479, 47900, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rotom - Trick - Move Tutor
  (479, 47900, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rotom - Uproar - Move Tutor
  (479, 47900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Imprison - Level 6
  (480, 48000, 286, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Uxie - Endure - Level 16
  (480, 48000, 203, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Uxie - Swift - Level 21
  (480, 48000, 129, 12, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Uxie - Yawn - Level 31
  (480, 48000, 281, 12, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Uxie - Future Sight - Level 36
  (480, 48000, 248, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Uxie - Amnesia - Level 46
  (480, 48000, 133, 12, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Uxie - Extrasensory - Level 51
  (480, 48000, 326, 12, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Uxie - Flail - Level 61
  (480, 48000, 175, 12, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Uxie - Natural Gift - Level 66
  (480, 48000, 363, 12, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Uxie - Memento - Level 76
  (480, 48000, 262, 12, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Uxie - Psyshock - TM03
  (480, 48000, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 13),
  -- Uxie - Calm Mind - TM04
  (480, 48000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Uxie - Toxic - TM06
  (480, 48000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Uxie - Hidden Power - TM10
  (480, 48000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Uxie - Sunny Day - TM11
  (480, 48000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Uxie - Hyper Beam - TM15
  (480, 48000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Uxie - Light Screen - TM16
  (480, 48000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 19),
  -- Uxie - Protect - TM17
  (480, 48000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Uxie - Rain Dance - TM18
  (480, 48000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Uxie - Telekinesis - TM19
  (480, 48000, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 22),
  -- Uxie - Safeguard - TM20
  (480, 48000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 23),
  -- Uxie - Frustration - TM21
  (480, 48000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Uxie - Solar Beam - TM22
  (480, 48000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 25),
  -- Uxie - Thunderbolt - TM24
  (480, 48000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 26),
  -- Uxie - Thunder - TM25
  (480, 48000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 27),
  -- Uxie - Return - TM27
  (480, 48000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Uxie - Psychic - TM29
  (480, 48000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 29),
  -- Uxie - Shadow Ball - TM30
  (480, 48000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 30),
  -- Uxie - Double Team - TM32
  (480, 48000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Uxie - Reflect - TM33
  (480, 48000, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 32),
  -- Uxie - Sandstorm - TM37
  (480, 48000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 33),
  -- Uxie - Facade - TM42
  (480, 48000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Uxie - Rest - TM44
  (480, 48000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Uxie - Round - TM48
  (480, 48000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Uxie - Energy Ball - TM53
  (480, 48000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 37),
  -- Uxie - Fling - TM56
  (480, 48000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Uxie - Charge Beam - TM57
  (480, 48000, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 39),
  -- Uxie - Acrobatics - TM62
  (480, 48000, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 40),
  -- Uxie - Giga Impact - TM68
  (480, 48000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Uxie - Flash - TM70
  (480, 48000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 42),
  -- Uxie - Thunder Wave - TM73
  (480, 48000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 43),
  -- Uxie - Psych Up - TM77
  (480, 48000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 44),
  -- Uxie - Dream Eater - TM85
  (480, 48000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 45),
  -- Uxie - Grass Knot - TM86
  (480, 48000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 46),
  -- Uxie - Swagger - TM87
  (480, 48000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Uxie - U-turn - TM89
  (480, 48000, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 48),
  -- Uxie - Substitute - TM90
  (480, 48000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 49),
  -- Uxie - Trick Room - TM92
  (480, 48000, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 50),
  -- Uxie - Fire Punch - Move Tutor
  (480, 48000, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Uxie - Foul Play - Move Tutor
  (480, 48000, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Uxie - Giga Drain - Move Tutor
  (480, 48000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Uxie - Heal Bell - Move Tutor
  (480, 48000, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Uxie - Helping Hand - Move Tutor
  (480, 48000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Uxie - Ice Punch - Move Tutor
  (480, 48000, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Uxie - Iron Tail - Move Tutor
  (480, 48000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Uxie - Knock Off - Move Tutor
  (480, 48000, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Uxie - Magic Coat - Move Tutor
  (480, 48000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Uxie - Magic Room - Move Tutor
  (480, 48000, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Uxie - Recycle - Move Tutor
  (480, 48000, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Uxie - Role Play - Move Tutor
  (480, 48000, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Uxie - Signal Beam - Move Tutor
  (480, 48000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Uxie - Skill Swap - Move Tutor
  (480, 48000, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Uxie - Sleep Talk - Move Tutor
  (480, 48000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Uxie - Snore - Move Tutor
  (480, 48000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Uxie - Stealth Rock - Move Tutor
  (480, 48000, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Uxie - Thunder Punch - Move Tutor
  (480, 48000, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Uxie - Trick - Move Tutor
  (480, 48000, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Uxie - Wonder Room - Move Tutor
  (480, 48000, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Uxie - Zen Headbutt - Move Tutor
  (480, 48000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Imprison - Level 6
  (481, 48100, 286, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mesprit - Protect - Level 16
  (481, 48100, 182, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mesprit - Swift - Level 21
  (481, 48100, 129, 12, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mesprit - Lucky Chant - Level 31
  (481, 48100, 381, 12, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Mesprit - Future Sight - Level 36
  (481, 48100, 248, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Mesprit - Charm - Level 46
  (481, 48100, 204, 12, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Mesprit - Extrasensory - Level 51
  (481, 48100, 326, 12, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Mesprit - Copycat - Level 61
  (481, 48100, 383, 12, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Mesprit - Natural Gift - Level 66
  (481, 48100, 363, 12, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Mesprit - Healing Wish - Level 76
  (481, 48100, 361, 12, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Mesprit - Psyshock - TM03
  (481, 48100, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 13),
  -- Mesprit - Calm Mind - TM04
  (481, 48100, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Mesprit - Toxic - TM06
  (481, 48100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Mesprit - Hidden Power - TM10
  (481, 48100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Mesprit - Sunny Day - TM11
  (481, 48100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Mesprit - Ice Beam - TM13
  (481, 48100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Mesprit - Blizzard - TM14
  (481, 48100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Mesprit - Hyper Beam - TM15
  (481, 48100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Mesprit - Light Screen - TM16
  (481, 48100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Mesprit - Protect - TM17
  (481, 48100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Mesprit - Rain Dance - TM18
  (481, 48100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Mesprit - Telekinesis - TM19
  (481, 48100, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 24),
  -- Mesprit - Safeguard - TM20
  (481, 48100, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Mesprit - Frustration - TM21
  (481, 48100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Mesprit - Thunderbolt - TM24
  (481, 48100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Mesprit - Thunder - TM25
  (481, 48100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Mesprit - Return - TM27
  (481, 48100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Mesprit - Psychic - TM29
  (481, 48100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Mesprit - Shadow Ball - TM30
  (481, 48100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Mesprit - Double Team - TM32
  (481, 48100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Mesprit - Reflect - TM33
  (481, 48100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 33),
  -- Mesprit - Sandstorm - TM37
  (481, 48100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Mesprit - Facade - TM42
  (481, 48100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Mesprit - Rest - TM44
  (481, 48100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Mesprit - Round - TM48
  (481, 48100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Mesprit - Energy Ball - TM53
  (481, 48100, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 38),
  -- Mesprit - Fling - TM56
  (481, 48100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 39),
  -- Mesprit - Charge Beam - TM57
  (481, 48100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 40),
  -- Mesprit - Acrobatics - TM62
  (481, 48100, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 41),
  -- Mesprit - Giga Impact - TM68
  (481, 48100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Mesprit - Flash - TM70
  (481, 48100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Mesprit - Thunder Wave - TM73
  (481, 48100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 44),
  -- Mesprit - Psych Up - TM77
  (481, 48100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 45),
  -- Mesprit - Dream Eater - TM85
  (481, 48100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 46),
  -- Mesprit - Grass Knot - TM86
  (481, 48100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 47),
  -- Mesprit - Swagger - TM87
  (481, 48100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 48),
  -- Mesprit - U-turn - TM89
  (481, 48100, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 49),
  -- Mesprit - Substitute - TM90
  (481, 48100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Mesprit - Trick Room - TM92
  (481, 48100, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 51),
  -- Mesprit - Fire Punch - Move Tutor
  (481, 48100, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mesprit - Helping Hand - Move Tutor
  (481, 48100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Mesprit - Ice Punch - Move Tutor
  (481, 48100, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Mesprit - Iron Tail - Move Tutor
  (481, 48100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Mesprit - Knock Off - Move Tutor
  (481, 48100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Mesprit - Magic Coat - Move Tutor
  (481, 48100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Mesprit - Magic Room - Move Tutor
  (481, 48100, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Mesprit - Recycle - Move Tutor
  (481, 48100, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Mesprit - Role Play - Move Tutor
  (481, 48100, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Mesprit - Signal Beam - Move Tutor
  (481, 48100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Mesprit - Skill Swap - Move Tutor
  (481, 48100, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Mesprit - Sleep Talk - Move Tutor
  (481, 48100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Mesprit - Snore - Move Tutor
  (481, 48100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Mesprit - Stealth Rock - Move Tutor
  (481, 48100, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Mesprit - Thunder Punch - Move Tutor
  (481, 48100, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Mesprit - Trick - Move Tutor
  (481, 48100, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Mesprit - Wonder Room - Move Tutor
  (481, 48100, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Mesprit - Zen Headbutt - Move Tutor
  (481, 48100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Imprison - Level 6
  (482, 48200, 286, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Azelf - Detect - Level 16
  (482, 48200, 197, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Azelf - Swift - Level 21
  (482, 48200, 129, 12, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Azelf - Uproar - Level 31
  (482, 48200, 253, 12, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Azelf - Future Sight - Level 36
  (482, 48200, 248, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Azelf - Nasty Plot - Level 46
  (482, 48200, 417, 12, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Azelf - Extrasensory - Level 51
  (482, 48200, 326, 12, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Azelf - Last Resort - Level 61
  (482, 48200, 387, 12, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Azelf - Natural Gift - Level 66
  (482, 48200, 363, 12, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Azelf - Explosion - Level 76
  (482, 48200, 153, 12, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Azelf - Psyshock - TM03
  (482, 48200, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 13),
  -- Azelf - Calm Mind - TM04
  (482, 48200, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Azelf - Toxic - TM06
  (482, 48200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Azelf - Hidden Power - TM10
  (482, 48200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Azelf - Sunny Day - TM11
  (482, 48200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Azelf - Taunt - TM12
  (482, 48200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Azelf - Hyper Beam - TM15
  (482, 48200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Azelf - Light Screen - TM16
  (482, 48200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 20),
  -- Azelf - Protect - TM17
  (482, 48200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Azelf - Rain Dance - TM18
  (482, 48200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Azelf - Telekinesis - TM19
  (482, 48200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 23),
  -- Azelf - Safeguard - TM20
  (482, 48200, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 24),
  -- Azelf - Frustration - TM21
  (482, 48200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Azelf - Thunderbolt - TM24
  (482, 48200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 26),
  -- Azelf - Thunder - TM25
  (482, 48200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 27),
  -- Azelf - Return - TM27
  (482, 48200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Azelf - Psychic - TM29
  (482, 48200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 29),
  -- Azelf - Shadow Ball - TM30
  (482, 48200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 30),
  -- Azelf - Double Team - TM32
  (482, 48200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Azelf - Reflect - TM33
  (482, 48200, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 32),
  -- Azelf - Flamethrower - TM35
  (482, 48200, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Azelf - Sandstorm - TM37
  (482, 48200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Azelf - Fire Blast - TM38
  (482, 48200, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Azelf - Torment - TM41
  (482, 48200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 36),
  -- Azelf - Facade - TM42
  (482, 48200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Azelf - Rest - TM44
  (482, 48200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Azelf - Round - TM48
  (482, 48200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Azelf - Energy Ball - TM53
  (482, 48200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 40),
  -- Azelf - Fling - TM56
  (482, 48200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Azelf - Charge Beam - TM57
  (482, 48200, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 42),
  -- Azelf - Incinerate - TM59
  (482, 48200, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Azelf - Acrobatics - TM62
  (482, 48200, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 44),
  -- Azelf - Explosion - TM64
  (482, 48200, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 45),
  -- Azelf - Payback - TM66
  (482, 48200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 46),
  -- Azelf - Giga Impact - TM68
  (482, 48200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Azelf - Flash - TM70
  (482, 48200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Azelf - Thunder Wave - TM73
  (482, 48200, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 49),
  -- Azelf - Psych Up - TM77
  (482, 48200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Azelf - Dream Eater - TM85
  (482, 48200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 51),
  -- Azelf - Grass Knot - TM86
  (482, 48200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 52),
  -- Azelf - Swagger - TM87
  (482, 48200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Azelf - U-turn - TM89
  (482, 48200, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 54),
  -- Azelf - Substitute - TM90
  (482, 48200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 55),
  -- Azelf - Trick Room - TM92
  (482, 48200, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 56),
  -- Azelf - Fire Punch - Move Tutor
  (482, 48200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Azelf - Helping Hand - Move Tutor
  (482, 48200, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Azelf - Ice Punch - Move Tutor
  (482, 48200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Azelf - Iron Tail - Move Tutor
  (482, 48200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Azelf - Knock Off - Move Tutor
  (482, 48200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Azelf - Last Resort - Move Tutor
  (482, 48200, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Azelf - Magic Coat - Move Tutor
  (482, 48200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Azelf - Magic Room - Move Tutor
  (482, 48200, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Azelf - Recycle - Move Tutor
  (482, 48200, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Azelf - Role Play - Move Tutor
  (482, 48200, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Azelf - Signal Beam - Move Tutor
  (482, 48200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Azelf - Skill Swap - Move Tutor
  (482, 48200, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Azelf - Sleep Talk - Move Tutor
  (482, 48200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Azelf - Snore - Move Tutor
  (482, 48200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Azelf - Stealth Rock - Move Tutor
  (482, 48200, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Azelf - Thunder Punch - Move Tutor
  (482, 48200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Azelf - Trick - Move Tutor
  (482, 48200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Azelf - Uproar - Move Tutor
  (482, 48200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Azelf - Wonder Room - Move Tutor
  (482, 48200, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Azelf - Zen Headbutt - Move Tutor
  (482, 48200, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Dialga - Dragon Breath - Level 1
  (483, 48300, 225, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Metal Claw - Level 6
  (483, 48300, 232, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 10
  (483, 48300, 246, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 15
  (483, 48300, 163, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dialga - Power Gem - Level 19
  (483, 48300, 408, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Dialga - Metal Burst - Level 24
  (483, 48300, 368, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Dialga - Dragon Claw - Level 28
  (483, 48300, 337, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Dialga - Earth Power - Level 33
  (483, 48300, 414, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Dialga - Aura Sphere - Level 37
  (483, 48300, 396, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Dialga - Iron Tail - Level 42
  (483, 48300, 231, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Dialga - Roar of Time - Level 46
  (483, 48300, 459, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Dialga - Flash Cannon - Level 50
  (483, 48300, 430, 12, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dialga - Hone Claws - TM01
  (483, 48300, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Dialga - Dragon Claw - TM02
  (483, 48300, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 15),
  -- Dialga - Roar - TM05
  (483, 48300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Dialga - Toxic - TM06
  (483, 48300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Dialga - Bulk Up - TM08
  (483, 48300, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 18),
  -- Dialga - Hidden Power - TM10
  (483, 48300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Dialga - Sunny Day - TM11
  (483, 48300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Dialga - Ice Beam - TM13
  (483, 48300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Dialga - Blizzard - TM14
  (483, 48300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Dialga - Hyper Beam - TM15
  (483, 48300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Dialga - Protect - TM17
  (483, 48300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Dialga - Rain Dance - TM18
  (483, 48300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Dialga - Safeguard - TM20
  (483, 48300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Dialga - Frustration - TM21
  (483, 48300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Dialga - Thunderbolt - TM24
  (483, 48300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 28),
  -- Dialga - Thunder - TM25
  (483, 48300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 29),
  -- Dialga - Earthquake - TM26
  (483, 48300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Dialga - Return - TM27
  (483, 48300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Dialga - Brick Break - TM31
  (483, 48300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Dialga - Double Team - TM32
  (483, 48300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Dialga - Flamethrower - TM35
  (483, 48300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 34),
  -- Dialga - Sandstorm - TM37
  (483, 48300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 35),
  -- Dialga - Fire Blast - TM38
  (483, 48300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 36),
  -- Dialga - Rock Tomb - TM39
  (483, 48300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Dialga - Aerial Ace - TM40
  (483, 48300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 38),
  -- Dialga - Facade - TM42
  (483, 48300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Dialga - Rest - TM44
  (483, 48300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Dialga - Round - TM48
  (483, 48300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Dialga - Echoed Voice - TM49
  (483, 48300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 42),
  -- Dialga - Overheat - TM50
  (483, 48300, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 43),
  -- Dialga - Incinerate - TM59
  (483, 48300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 44),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 45),
  -- Dialga - Giga Impact - TM68
  (483, 48300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Dialga - Flash - TM70
  (483, 48300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 47),
  -- Dialga - Stone Edge - TM71
  (483, 48300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 48),
  -- Dialga - Thunder Wave - TM73
  (483, 48300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 49),
  -- Dialga - Psych Up - TM77
  (483, 48300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Dialga - Bulldoze - TM78
  (483, 48300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 51),
  -- Dialga - Rock Slide - TM80
  (483, 48300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 52),
  -- Dialga - Dragon Tail - TM82
  (483, 48300, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 53),
  -- Dialga - Swagger - TM87
  (483, 48300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 54),
  -- Dialga - Substitute - TM90
  (483, 48300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 55),
  -- Dialga - Flash Cannon - TM91
  (483, 48300, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 56),
  -- Dialga - Trick Room - TM92
  (483, 48300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 57),
  -- Dialga - Rock Smash - TM94
  (483, 48300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 58),
  -- Dialga - Cut - HM01
  (483, 48300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 59),
  -- Dialga - Strength - HM04
  (483, 48300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 60),
  -- Dialga - Draco Meteor - Move Tutor
  (483, 48300, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Dialga - Dragon Pulse - Move Tutor
  (483, 48300, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Dialga - Earth Power - Move Tutor
  (483, 48300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Dialga - Gravity - Move Tutor
  (483, 48300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Dialga - Hyper Voice - Move Tutor
  (483, 48300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Dialga - Iron Defense - Move Tutor
  (483, 48300, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Dialga - Iron Head - Move Tutor
  (483, 48300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Dialga - Iron Tail - Move Tutor
  (483, 48300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Dialga - Magnet Rise - Move Tutor
  (483, 48300, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Dialga - Outrage - Move Tutor
  (483, 48300, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Dialga - Sleep Talk - Move Tutor
  (483, 48300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Dialga - Snore - Move Tutor
  (483, 48300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Dialga - Stealth Rock - Move Tutor
  (483, 48300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Palkia - Dragon Breath - Level 1
  (484, 48400, 225, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Water Pulse - Level 6
  (484, 48400, 352, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 10
  (484, 48400, 246, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 15
  (484, 48400, 163, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Palkia - Power Gem - Level 19
  (484, 48400, 408, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Palkia - Aqua Tail - Level 24
  (484, 48400, 401, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Palkia - Dragon Claw - Level 28
  (484, 48400, 337, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Palkia - Earth Power - Level 33
  (484, 48400, 414, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Palkia - Aura Sphere - Level 37
  (484, 48400, 396, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Palkia - Aqua Tail - Level 42
  (484, 48400, 401, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Palkia - Spacial Rend - Level 46
  (484, 48400, 460, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Palkia - Hydro Pump - Level 50
  (484, 48400, 56, 12, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Palkia - Hone Claws - TM01
  (484, 48400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Palkia - Dragon Claw - TM02
  (484, 48400, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 15),
  -- Palkia - Roar - TM05
  (484, 48400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Palkia - Toxic - TM06
  (484, 48400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Palkia - Hail - TM07
  (484, 48400, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Palkia - Bulk Up - TM08
  (484, 48400, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Palkia - Hidden Power - TM10
  (484, 48400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Palkia - Sunny Day - TM11
  (484, 48400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Palkia - Ice Beam - TM13
  (484, 48400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Palkia - Blizzard - TM14
  (484, 48400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Palkia - Hyper Beam - TM15
  (484, 48400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Palkia - Protect - TM17
  (484, 48400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Palkia - Rain Dance - TM18
  (484, 48400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Palkia - Safeguard - TM20
  (484, 48400, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 27),
  -- Palkia - Frustration - TM21
  (484, 48400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Palkia - Thunderbolt - TM24
  (484, 48400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Palkia - Thunder - TM25
  (484, 48400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Palkia - Earthquake - TM26
  (484, 48400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Palkia - Return - TM27
  (484, 48400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Palkia - Brick Break - TM31
  (484, 48400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Palkia - Double Team - TM32
  (484, 48400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Palkia - Flamethrower - TM35
  (484, 48400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 35),
  -- Palkia - Sandstorm - TM37
  (484, 48400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 36),
  -- Palkia - Fire Blast - TM38
  (484, 48400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 37),
  -- Palkia - Rock Tomb - TM39
  (484, 48400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 38),
  -- Palkia - Aerial Ace - TM40
  (484, 48400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 39),
  -- Palkia - Facade - TM42
  (484, 48400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Palkia - Rest - TM44
  (484, 48400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Palkia - Round - TM48
  (484, 48400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Palkia - Echoed Voice - TM49
  (484, 48400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 43),
  -- Palkia - Focus Blast - TM52
  (484, 48400, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Palkia - Fling - TM56
  (484, 48400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Palkia - Incinerate - TM59
  (484, 48400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 46),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 47),
  -- Palkia - Giga Impact - TM68
  (484, 48400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 48),
  -- Palkia - Stone Edge - TM71
  (484, 48400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 49),
  -- Palkia - Thunder Wave - TM73
  (484, 48400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 50),
  -- Palkia - Psych Up - TM77
  (484, 48400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 51),
  -- Palkia - Bulldoze - TM78
  (484, 48400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Palkia - Rock Slide - TM80
  (484, 48400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Palkia - Dragon Tail - TM82
  (484, 48400, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 54),
  -- Palkia - Swagger - TM87
  (484, 48400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 55),
  -- Palkia - Substitute - TM90
  (484, 48400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 56),
  -- Palkia - Trick Room - TM92
  (484, 48400, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 57),
  -- Palkia - Rock Smash - TM94
  (484, 48400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 58),
  -- Palkia - Cut - HM01
  (484, 48400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 59),
  -- Palkia - Surf - HM03
  (484, 48400, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 60),
  -- Palkia - Strength - HM04
  (484, 48400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 61),
  -- Palkia - Dive - HM06
  (484, 48400, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 62),
  -- Palkia - Aqua Tail - Move Tutor
  (484, 48400, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Palkia - Draco Meteor - Move Tutor
  (484, 48400, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Palkia - Dragon Pulse - Move Tutor
  (484, 48400, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Palkia - Earth Power - Move Tutor
  (484, 48400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Palkia - Gravity - Move Tutor
  (484, 48400, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Palkia - Hyper Voice - Move Tutor
  (484, 48400, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Palkia - Outrage - Move Tutor
  (484, 48400, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Palkia - Sleep Talk - Move Tutor
  (484, 48400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Palkia - Snore - Move Tutor
  (484, 48400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Heatran - Ancient Power - Level 1
  (485, 48500, 246, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Leer - Level 9
  (485, 48500, 43, 12, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Heatran - Fire Fang - Level 17
  (485, 48500, 424, 12, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Heatran - Metal Sound - Level 25
  (485, 48500, 319, 12, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Heatran - Crunch - Level 33
  (485, 48500, 242, 12, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Heatran - Scary Face - Level 41
  (485, 48500, 184, 12, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Heatran - Lava Plume - Level 49
  (485, 48500, 436, 12, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Heatran - Fire Spin - Level 57
  (485, 48500, 83, 12, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Heatran - Iron Head - Level 65
  (485, 48500, 442, 12, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Heatran - Earth Power - Level 73
  (485, 48500, 414, 12, NULL, 1, 73, NULL, NULL, NULL, 10),
  -- Heatran - Heat Wave - Level 81
  (485, 48500, 257, 12, NULL, 1, 81, NULL, NULL, NULL, 11),
  -- Heatran - Stone Edge - Level 88
  (485, 48500, 444, 12, NULL, 1, 88, NULL, NULL, NULL, 12),
  -- Heatran - Magma Storm - Level 96
  (485, 48500, 463, 12, NULL, 1, 96, NULL, NULL, NULL, 13),
  -- Heatran - Roar - TM05
  (485, 48500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 14),
  -- Heatran - Toxic - TM06
  (485, 48500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Heatran - Hidden Power - TM10
  (485, 48500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Heatran - Sunny Day - TM11
  (485, 48500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Heatran - Taunt - TM12
  (485, 48500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Heatran - Hyper Beam - TM15
  (485, 48500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Heatran - Protect - TM17
  (485, 48500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Heatran - Frustration - TM21
  (485, 48500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Heatran - Solar Beam - TM22
  (485, 48500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 22),
  -- Heatran - Earthquake - TM26
  (485, 48500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 23),
  -- Heatran - Return - TM27
  (485, 48500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Heatran - Dig - TM28
  (485, 48500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Heatran - Double Team - TM32
  (485, 48500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Heatran - Flamethrower - TM35
  (485, 48500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 27),
  -- Heatran - Fire Blast - TM38
  (485, 48500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 28),
  -- Heatran - Rock Tomb - TM39
  (485, 48500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Heatran - Torment - TM41
  (485, 48500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 30),
  -- Heatran - Facade - TM42
  (485, 48500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Heatran - Flame Charge - TM43
  (485, 48500, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 32),
  -- Heatran - Rest - TM44
  (485, 48500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Heatran - Attract - TM45
  (485, 48500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Heatran - Round - TM48
  (485, 48500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Heatran - Overheat - TM50
  (485, 48500, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 36),
  -- Heatran - Incinerate - TM59
  (485, 48500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Heatran - Will-O-Wisp - TM61
  (485, 48500, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 38),
  -- Heatran - Explosion - TM64
  (485, 48500, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 39),
  -- Heatran - Payback - TM66
  (485, 48500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Heatran - Giga Impact - TM68
  (485, 48500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Heatran - Stone Edge - TM71
  (485, 48500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 42),
  -- Heatran - Bulldoze - TM78
  (485, 48500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 43),
  -- Heatran - Rock Slide - TM80
  (485, 48500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 44),
  -- Heatran - Swagger - TM87
  (485, 48500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 45),
  -- Heatran - Substitute - TM90
  (485, 48500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 46),
  -- Heatran - Flash Cannon - TM91
  (485, 48500, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 47),
  -- Heatran - Rock Smash - TM94
  (485, 48500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Heatran - Strength - HM04
  (485, 48500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Heatran - Bug Bite - Move Tutor
  (485, 48500, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Heatran - Dark Pulse - Move Tutor
  (485, 48500, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Heatran - Dragon Pulse - Move Tutor
  (485, 48500, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Heatran - Earth Power - Move Tutor
  (485, 48500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Heatran - Heat Wave - Move Tutor
  (485, 48500, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Heatran - Iron Defense - Move Tutor
  (485, 48500, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Heatran - Iron Head - Move Tutor
  (485, 48500, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Heatran - Sleep Talk - Move Tutor
  (485, 48500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Heatran - Snore - Move Tutor
  (485, 48500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Heatran - Stealth Rock - Move Tutor
  (485, 48500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Heatran - Uproar - Move Tutor
  (485, 48500, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Regigigas - Fire Punch - Level 1
  (486, 48600, 7, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Ice Punch - Level 1
  (486, 48600, 8, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Thunder Punch - Level 1
  (486, 48600, 9, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regigigas - Dizzy Punch - Level 1
  (486, 48600, 146, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regigigas - Knock Off - Level 1
  (486, 48600, 282, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Regigigas - Foresight - Level 1
  (486, 48600, 193, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Regigigas - Revenge - Level 25
  (486, 48600, 279, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Regigigas - Wide Guard - Level 40
  (486, 48600, 469, 12, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Regigigas - Zen Headbutt - Level 50
  (486, 48600, 428, 12, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Regigigas - Payback - Level 65
  (486, 48600, 371, 12, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Regigigas - Crush Grip - Level 75
  (486, 48600, 462, 12, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Regigigas - Heavy Slam - Level 90
  (486, 48600, 484, 12, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Regigigas - Giga Impact - Level 100
  (486, 48600, 416, 12, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Regigigas - Toxic - TM06
  (486, 48600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Regigigas - Hidden Power - TM10
  (486, 48600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Regigigas - Sunny Day - TM11
  (486, 48600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Regigigas - Hyper Beam - TM15
  (486, 48600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Regigigas - Rain Dance - TM18
  (486, 48600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Regigigas - Safeguard - TM20
  (486, 48600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 20),
  -- Regigigas - Frustration - TM21
  (486, 48600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Regigigas - Smack Down - TM23
  (486, 48600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 22),
  -- Regigigas - Thunderbolt - TM24
  (486, 48600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Regigigas - Thunder - TM25
  (486, 48600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Regigigas - Earthquake - TM26
  (486, 48600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Regigigas - Return - TM27
  (486, 48600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Regigigas - Brick Break - TM31
  (486, 48600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Regigigas - Double Team - TM32
  (486, 48600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Regigigas - Rock Tomb - TM39
  (486, 48600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Regigigas - Aerial Ace - TM40
  (486, 48600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Regigigas - Facade - TM42
  (486, 48600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Regigigas - Round - TM48
  (486, 48600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Regigigas - Focus Blast - TM52
  (486, 48600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 33),
  -- Regigigas - Fling - TM56
  (486, 48600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Regigigas - Payback - TM66
  (486, 48600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 35),
  -- Regigigas - Retaliate - TM67
  (486, 48600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 36),
  -- Regigigas - Giga Impact - TM68
  (486, 48600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Regigigas - Rock Polish - TM69
  (486, 48600, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 38),
  -- Regigigas - Stone Edge - TM71
  (486, 48600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 39),
  -- Regigigas - Thunder Wave - TM73
  (486, 48600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 40),
  -- Regigigas - Psych Up - TM77
  (486, 48600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 41),
  -- Regigigas - Bulldoze - TM78
  (486, 48600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 42),
  -- Regigigas - Rock Slide - TM80
  (486, 48600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 43),
  -- Regigigas - Swagger - TM87
  (486, 48600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Regigigas - Substitute - TM90
  (486, 48600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Regigigas - Rock Smash - TM94
  (486, 48600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Regigigas - Strength - HM04
  (486, 48600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Regigigas - Block - Move Tutor
  (486, 48600, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Regigigas - Drain Punch - Move Tutor
  (486, 48600, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Regigigas - Earth Power - Move Tutor
  (486, 48600, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Regigigas - Fire Punch - Move Tutor
  (486, 48600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Regigigas - Gravity - Move Tutor
  (486, 48600, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Regigigas - Ice Punch - Move Tutor
  (486, 48600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Regigigas - Icy Wind - Move Tutor
  (486, 48600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Regigigas - Iron Head - Move Tutor
  (486, 48600, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Regigigas - Knock Off - Move Tutor
  (486, 48600, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Regigigas - Sleep Talk - Move Tutor
  (486, 48600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Regigigas - Snore - Move Tutor
  (486, 48600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Regigigas - Superpower - Move Tutor
  (486, 48600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Regigigas - Thunder Punch - Move Tutor
  (486, 48600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Regigigas - Zen Headbutt - Move Tutor
  (486, 48600, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Giratina - Dragon Breath - Level 1
  (487, 48700, 225, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Scary Face - Level 1
  (487, 48700, 184, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Ominous Wind - Level 6
  (487, 48700, 466, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 10
  (487, 48700, 246, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina - Slash - Level 15
  (487, 48700, 163, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina - Shadow Sneak - Level 19
  (487, 48700, 425, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina - Destiny Bond - Level 24
  (487, 48700, 194, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina - Dragon Claw - Level 28
  (487, 48700, 337, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina - Earth Power - Level 33
  (487, 48700, 414, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina - Aura Sphere - Level 37
  (487, 48700, 396, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina - Shadow Force - Level 46
  (487, 48700, 467, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina - Hex - Level 50
  (487, 48700, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina - Hone Claws - TM01
  (487, 48700, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Giratina - Dragon Claw - TM02
  (487, 48700, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 15),
  -- Giratina - Calm Mind - TM04
  (487, 48700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 16),
  -- Giratina - Roar - TM05
  (487, 48700, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Giratina - Toxic - TM06
  (487, 48700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Giratina - Hidden Power - TM10
  (487, 48700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Giratina - Sunny Day - TM11
  (487, 48700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Giratina - Hyper Beam - TM15
  (487, 48700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Giratina - Protect - TM17
  (487, 48700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Giratina - Rain Dance - TM18
  (487, 48700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Giratina - Telekinesis - TM19
  (487, 48700, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 24),
  -- Giratina - Safeguard - TM20
  (487, 48700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Giratina - Frustration - TM21
  (487, 48700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Giratina - Thunderbolt - TM24
  (487, 48700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Giratina - Thunder - TM25
  (487, 48700, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Giratina - Earthquake - TM26
  (487, 48700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Giratina - Return - TM27
  (487, 48700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Giratina - Psychic - TM29
  (487, 48700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Giratina - Shadow Ball - TM30
  (487, 48700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Giratina - Double Team - TM32
  (487, 48700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Giratina - Aerial Ace - TM40
  (487, 48700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 34),
  -- Giratina - Facade - TM42
  (487, 48700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Giratina - Rest - TM44
  (487, 48700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Giratina - Round - TM48
  (487, 48700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Giratina - Echoed Voice - TM49
  (487, 48700, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 38),
  -- Giratina - Energy Ball - TM53
  (487, 48700, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 39),
  -- Giratina - Charge Beam - TM57
  (487, 48700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 40),
  -- Giratina - Will-O-Wisp - TM61
  (487, 48700, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 41),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 42),
  -- Giratina - Payback - TM66
  (487, 48700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Giratina - Giga Impact - TM68
  (487, 48700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Giratina - Stone Edge - TM71
  (487, 48700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 45),
  -- Giratina - Thunder Wave - TM73
  (487, 48700, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 46),
  -- Giratina - Psych Up - TM77
  (487, 48700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 47),
  -- Giratina - Bulldoze - TM78
  (487, 48700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Giratina - Dragon Tail - TM82
  (487, 48700, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 49),
  -- Giratina - Dream Eater - TM85
  (487, 48700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 50),
  -- Giratina - Swagger - TM87
  (487, 48700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Giratina - Substitute - TM90
  (487, 48700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Giratina - Rock Smash - TM94
  (487, 48700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Giratina - Cut - HM01
  (487, 48700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 54),
  -- Giratina - Fly - HM02
  (487, 48700, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Giratina - Strength - HM04
  (487, 48700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Giratina - Aqua Tail - Move Tutor
  (487, 48700, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Giratina - Dark Pulse - Move Tutor
  (487, 48700, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Giratina - Draco Meteor - Move Tutor
  (487, 48700, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Giratina - Dragon Pulse - Move Tutor
  (487, 48700, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Giratina - Earth Power - Move Tutor
  (487, 48700, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Giratina - Gravity - Move Tutor
  (487, 48700, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Giratina - Hyper Voice - Move Tutor
  (487, 48700, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Giratina - Icy Wind - Move Tutor
  (487, 48700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Giratina - Iron Head - Move Tutor
  (487, 48700, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Giratina - Iron Tail - Move Tutor
  (487, 48700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Giratina - Outrage - Move Tutor
  (487, 48700, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Giratina - Pain Split - Move Tutor
  (487, 48700, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Giratina - Sleep Talk - Move Tutor
  (487, 48700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Giratina - Snore - Move Tutor
  (487, 48700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Giratina - Spite - Move Tutor
  (487, 48700, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Safeguard - Level 11
  (488, 48800, 219, 12, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Cresselia - Mist - Level 20
  (488, 48800, 54, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Cresselia - Aurora Beam - Level 29
  (488, 48800, 62, 12, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Cresselia - Future Sight - Level 38
  (488, 48800, 248, 12, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Cresselia - Slash - Level 47
  (488, 48800, 163, 12, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Cresselia - Moonlight - Level 57
  (488, 48800, 236, 12, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Cresselia - Psycho Cut - Level 66
  (488, 48800, 427, 12, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Cresselia - Psycho Shift - Level 75
  (488, 48800, 375, 12, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Cresselia - Lunar Dance - Level 84
  (488, 48800, 461, 12, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Cresselia - Psychic - Level 93
  (488, 48800, 94, 12, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Cresselia - Psyshock - TM03
  (488, 48800, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 13),
  -- Cresselia - Calm Mind - TM04
  (488, 48800, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Cresselia - Toxic - TM06
  (488, 48800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Cresselia - Hidden Power - TM10
  (488, 48800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Cresselia - Sunny Day - TM11
  (488, 48800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Cresselia - Ice Beam - TM13
  (488, 48800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Cresselia - Hyper Beam - TM15
  (488, 48800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Cresselia - Light Screen - TM16
  (488, 48800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 20),
  -- Cresselia - Protect - TM17
  (488, 48800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Cresselia - Rain Dance - TM18
  (488, 48800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Cresselia - Telekinesis - TM19
  (488, 48800, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 23),
  -- Cresselia - Safeguard - TM20
  (488, 48800, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 24),
  -- Cresselia - Frustration - TM21
  (488, 48800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Cresselia - Solar Beam - TM22
  (488, 48800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Cresselia - Return - TM27
  (488, 48800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Cresselia - Psychic - TM29
  (488, 48800, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 28),
  -- Cresselia - Shadow Ball - TM30
  (488, 48800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 29),
  -- Cresselia - Double Team - TM32
  (488, 48800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Cresselia - Reflect - TM33
  (488, 48800, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 31),
  -- Cresselia - Facade - TM42
  (488, 48800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Cresselia - Rest - TM44
  (488, 48800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Cresselia - Attract - TM45
  (488, 48800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Cresselia - Round - TM48
  (488, 48800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Cresselia - Energy Ball - TM53
  (488, 48800, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 36),
  -- Cresselia - Charge Beam - TM57
  (488, 48800, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 37),
  -- Cresselia - Giga Impact - TM68
  (488, 48800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Cresselia - Flash - TM70
  (488, 48800, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Cresselia - Thunder Wave - TM73
  (488, 48800, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 40),
  -- Cresselia - Psych Up - TM77
  (488, 48800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 41),
  -- Cresselia - Dream Eater - TM85
  (488, 48800, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 42),
  -- Cresselia - Grass Knot - TM86
  (488, 48800, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 43),
  -- Cresselia - Swagger - TM87
  (488, 48800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Cresselia - Substitute - TM90
  (488, 48800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Cresselia - Trick Room - TM92
  (488, 48800, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 46),
  -- Cresselia - Gravity - Move Tutor
  (488, 48800, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Cresselia - Helping Hand - Move Tutor
  (488, 48800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Cresselia - Icy Wind - Move Tutor
  (488, 48800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Cresselia - Magic Coat - Move Tutor
  (488, 48800, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Cresselia - Magic Room - Move Tutor
  (488, 48800, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Cresselia - Recycle - Move Tutor
  (488, 48800, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Cresselia - Signal Beam - Move Tutor
  (488, 48800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Cresselia - Skill Swap - Move Tutor
  (488, 48800, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Cresselia - Sleep Talk - Move Tutor
  (488, 48800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Cresselia - Snore - Move Tutor
  (488, 48800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Cresselia - Trick - Move Tutor
  (488, 48800, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Cresselia - Zen Headbutt - Move Tutor
  (488, 48800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Phione - Bubble - Level 1
  (489, 48900, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Water Sport - Level 1
  (489, 48900, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 12, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 12, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 12, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 12, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 12, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 12, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 12, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Phione - Toxic - TM06
  (489, 48900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Phione - Hail - TM07
  (489, 48900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 13),
  -- Phione - Hidden Power - TM10
  (489, 48900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Phione - Ice Beam - TM13
  (489, 48900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 15),
  -- Phione - Blizzard - TM14
  (489, 48900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 16),
  -- Phione - Protect - TM17
  (489, 48900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Phione - Rain Dance - TM18
  (489, 48900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Phione - Safeguard - TM20
  (489, 48900, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 19),
  -- Phione - Frustration - TM21
  (489, 48900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Phione - Return - TM27
  (489, 48900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Phione - Double Team - TM32
  (489, 48900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Phione - Facade - TM42
  (489, 48900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 23),
  -- Phione - Rest - TM44
  (489, 48900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 24),
  -- Phione - Round - TM48
  (489, 48900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 25),
  -- Phione - Scald - TM55
  (489, 48900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 26),
  -- Phione - Fling - TM56
  (489, 48900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 27),
  -- Phione - Psych Up - TM77
  (489, 48900, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 28),
  -- Phione - Grass Knot - TM86
  (489, 48900, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 29),
  -- Phione - Swagger - TM87
  (489, 48900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 30),
  -- Phione - U-turn - TM89
  (489, 48900, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 31),
  -- Phione - Substitute - TM90
  (489, 48900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 32),
  -- Phione - Surf - HM03
  (489, 48900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 33),
  -- Phione - Waterfall - HM05
  (489, 48900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 34),
  -- Phione - Dive - HM06
  (489, 48900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 35),
  -- Phione - Bounce - Move Tutor
  (489, 48900, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 36),
  -- Phione - Covet - Move Tutor
  (489, 48900, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Phione - Heal Bell - Move Tutor
  (489, 48900, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Phione - Helping Hand - Move Tutor
  (489, 48900, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Phione - Icy Wind - Move Tutor
  (489, 48900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Phione - Knock Off - Move Tutor
  (489, 48900, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Phione - Last Resort - Move Tutor
  (489, 48900, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Phione - Signal Beam - Move Tutor
  (489, 48900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Phione - Sleep Talk - Move Tutor
  (489, 48900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Phione - Snore - Move Tutor
  (489, 48900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Phione - Uproar - Move Tutor
  (489, 48900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Manaphy - Tail Glow - Level 1
  (490, 49000, 294, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Bubble - Level 1
  (490, 49000, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manaphy - Water Sport - Level 1
  (490, 49000, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 12, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 12, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 12, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 12, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 12, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 12, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 12, NULL, 1, 69, NULL, NULL, NULL, 12),
  -- Manaphy - Heart Swap - Level 76
  (490, 49000, 391, 12, NULL, 1, 76, NULL, NULL, NULL, 13),
  -- Manaphy - Calm Mind - TM04
  (490, 49000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Manaphy - Toxic - TM06
  (490, 49000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Manaphy - Hail - TM07
  (490, 49000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Manaphy - Hidden Power - TM10
  (490, 49000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Manaphy - Ice Beam - TM13
  (490, 49000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Manaphy - Blizzard - TM14
  (490, 49000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Manaphy - Hyper Beam - TM15
  (490, 49000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Manaphy - Light Screen - TM16
  (490, 49000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Manaphy - Protect - TM17
  (490, 49000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Manaphy - Rain Dance - TM18
  (490, 49000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Manaphy - Safeguard - TM20
  (490, 49000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 24),
  -- Manaphy - Frustration - TM21
  (490, 49000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Manaphy - Return - TM27
  (490, 49000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Manaphy - Psychic - TM29
  (490, 49000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 27),
  -- Manaphy - Shadow Ball - TM30
  (490, 49000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Manaphy - Double Team - TM32
  (490, 49000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Manaphy - Reflect - TM33
  (490, 49000, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 30),
  -- Manaphy - Facade - TM42
  (490, 49000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Manaphy - Rest - TM44
  (490, 49000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Manaphy - Round - TM48
  (490, 49000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Manaphy - Energy Ball - TM53
  (490, 49000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 34),
  -- Manaphy - Scald - TM55
  (490, 49000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 35),
  -- Manaphy - Fling - TM56
  (490, 49000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Manaphy - Giga Impact - TM68
  (490, 49000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Manaphy - Flash - TM70
  (490, 49000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 38),
  -- Manaphy - Psych Up - TM77
  (490, 49000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Manaphy - Grass Knot - TM86
  (490, 49000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 40),
  -- Manaphy - Swagger - TM87
  (490, 49000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Manaphy - U-turn - TM89
  (490, 49000, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 42),
  -- Manaphy - Substitute - TM90
  (490, 49000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Manaphy - Surf - HM03
  (490, 49000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 44),
  -- Manaphy - Waterfall - HM05
  (490, 49000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 45),
  -- Manaphy - Dive - HM06
  (490, 49000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 46),
  -- Manaphy - Bounce - Move Tutor
  (490, 49000, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Manaphy - Covet - Move Tutor
  (490, 49000, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Manaphy - Heal Bell - Move Tutor
  (490, 49000, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Manaphy - Helping Hand - Move Tutor
  (490, 49000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Manaphy - Icy Wind - Move Tutor
  (490, 49000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Manaphy - Knock Off - Move Tutor
  (490, 49000, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Manaphy - Last Resort - Move Tutor
  (490, 49000, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Manaphy - Signal Beam - Move Tutor
  (490, 49000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Manaphy - Skill Swap - Move Tutor
  (490, 49000, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Manaphy - Sleep Talk - Move Tutor
  (490, 49000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Manaphy - Snore - Move Tutor
  (490, 49000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Manaphy - Uproar - Move Tutor
  (490, 49000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Darkrai - Ominous Wind - Level 1
  (491, 49100, 466, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Disable - Level 1
  (491, 49100, 50, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 12, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Darkrai - Feint Attack - Level 29
  (491, 49100, 185, 12, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Darkrai - Nightmare - Level 38
  (491, 49100, 171, 12, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 12, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 12, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 12, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 12, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 12, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 12, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Darkrai - Calm Mind - TM04
  (491, 49100, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 13),
  -- Darkrai - Toxic - TM06
  (491, 49100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Darkrai - Hidden Power - TM10
  (491, 49100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Darkrai - Sunny Day - TM11
  (491, 49100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Darkrai - Taunt - TM12
  (491, 49100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 17),
  -- Darkrai - Ice Beam - TM13
  (491, 49100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Darkrai - Blizzard - TM14
  (491, 49100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Darkrai - Hyper Beam - TM15
  (491, 49100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Darkrai - Protect - TM17
  (491, 49100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Darkrai - Rain Dance - TM18
  (491, 49100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Darkrai - Frustration - TM21
  (491, 49100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Darkrai - Thunderbolt - TM24
  (491, 49100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Darkrai - Thunder - TM25
  (491, 49100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Darkrai - Return - TM27
  (491, 49100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Darkrai - Psychic - TM29
  (491, 49100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 27),
  -- Darkrai - Shadow Ball - TM30
  (491, 49100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Darkrai - Brick Break - TM31
  (491, 49100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Darkrai - Double Team - TM32
  (491, 49100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Darkrai - Sludge Bomb - TM36
  (491, 49100, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 31),
  -- Darkrai - Rock Tomb - TM39
  (491, 49100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 32),
  -- Darkrai - Aerial Ace - TM40
  (491, 49100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Darkrai - Torment - TM41
  (491, 49100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Darkrai - Facade - TM42
  (491, 49100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Darkrai - Rest - TM44
  (491, 49100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Darkrai - Thief - TM46
  (491, 49100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Darkrai - Round - TM48
  (491, 49100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Darkrai - Focus Blast - TM52
  (491, 49100, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 39),
  -- Darkrai - Fling - TM56
  (491, 49100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Darkrai - Charge Beam - TM57
  (491, 49100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 41),
  -- Darkrai - Incinerate - TM59
  (491, 49100, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 42),
  -- Darkrai - Will-O-Wisp - TM61
  (491, 49100, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 43),
  -- Darkrai - Embargo - TM63
  (491, 49100, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 44),
  -- Darkrai - Shadow Claw - TM65
  (491, 49100, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 45),
  -- Darkrai - Payback - TM66
  (491, 49100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 46),
  -- Darkrai - Retaliate - TM67
  (491, 49100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 47),
  -- Darkrai - Giga Impact - TM68
  (491, 49100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 48),
  -- Darkrai - Flash - TM70
  (491, 49100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 49),
  -- Darkrai - Thunder Wave - TM73
  (491, 49100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 50),
  -- Darkrai - Swords Dance - TM75
  (491, 49100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 51),
  -- Darkrai - Psych Up - TM77
  (491, 49100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 52),
  -- Darkrai - Rock Slide - TM80
  (491, 49100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Darkrai - X-Scissor - TM81
  (491, 49100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 54),
  -- Darkrai - Poison Jab - TM84
  (491, 49100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 55),
  -- Darkrai - Dream Eater - TM85
  (491, 49100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 56),
  -- Darkrai - Swagger - TM87
  (491, 49100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 57),
  -- Darkrai - Substitute - TM90
  (491, 49100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 58),
  -- Darkrai - Rock Smash - TM94
  (491, 49100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 59),
  -- Darkrai - Snarl - TM95
  (491, 49100, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 60),
  -- Darkrai - Cut - HM01
  (491, 49100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 61),
  -- Darkrai - Strength - HM04
  (491, 49100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 62),
  -- Darkrai - Dark Pulse - Move Tutor
  (491, 49100, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Darkrai - Drain Punch - Move Tutor
  (491, 49100, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Darkrai - Foul Play - Move Tutor
  (491, 49100, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Darkrai - Icy Wind - Move Tutor
  (491, 49100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Darkrai - Knock Off - Move Tutor
  (491, 49100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Darkrai - Last Resort - Move Tutor
  (491, 49100, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Darkrai - Sleep Talk - Move Tutor
  (491, 49100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Darkrai - Snatch - Move Tutor
  (491, 49100, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Darkrai - Snore - Move Tutor
  (491, 49100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Darkrai - Spite - Move Tutor
  (491, 49100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Darkrai - Trick - Move Tutor
  (491, 49100, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Darkrai - Wonder Room - Move Tutor
  (491, 49100, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Shaymin - Growth - Level 1
  (492, 49200, 74, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 12, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 12, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 12, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Natural Gift - Level 46
  (492, 49200, 363, 12, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 12, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Aromatherapy - Level 64
  (492, 49200, 312, 12, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 12, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 12, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 12, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 12, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Toxic - TM06
  (492, 49200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Shaymin - Hidden Power - TM10
  (492, 49200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Shaymin - Sunny Day - TM11
  (492, 49200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Shaymin - Hyper Beam - TM15
  (492, 49200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 16),
  -- Shaymin - Protect - TM17
  (492, 49200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Shaymin - Safeguard - TM20
  (492, 49200, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 18),
  -- Shaymin - Frustration - TM21
  (492, 49200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Shaymin - Solar Beam - TM22
  (492, 49200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 20),
  -- Shaymin - Return - TM27
  (492, 49200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Shaymin - Psychic - TM29
  (492, 49200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 22),
  -- Shaymin - Double Team - TM32
  (492, 49200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Shaymin - Facade - TM42
  (492, 49200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Shaymin - Rest - TM44
  (492, 49200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Shaymin - Round - TM48
  (492, 49200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Shaymin - Energy Ball - TM53
  (492, 49200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 27),
  -- Shaymin - Giga Impact - TM68
  (492, 49200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 28),
  -- Shaymin - Flash - TM70
  (492, 49200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 29),
  -- Shaymin - Swords Dance - TM75
  (492, 49200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 30),
  -- Shaymin - Psych Up - TM77
  (492, 49200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 31),
  -- Shaymin - Grass Knot - TM86
  (492, 49200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 32),
  -- Shaymin - Swagger - TM87
  (492, 49200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Shaymin - Substitute - TM90
  (492, 49200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Shaymin - Covet - Move Tutor
  (492, 49200, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 35),
  -- Shaymin - Earth Power - Move Tutor
  (492, 49200, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 36),
  -- Shaymin - Endeavor - Move Tutor
  (492, 49200, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Shaymin - Giga Drain - Move Tutor
  (492, 49200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Shaymin - Last Resort - Move Tutor
  (492, 49200, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Shaymin - Seed Bomb - Move Tutor
  (492, 49200, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Shaymin - Sleep Talk - Move Tutor
  (492, 49200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Shaymin - Snore - Move Tutor
  (492, 49200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Shaymin - Synthesis - Move Tutor
  (492, 49200, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Shaymin - Worry Seed - Move Tutor
  (492, 49200, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Shaymin - Zen Headbutt - Move Tutor
  (492, 49200, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Arceus - Seismic Toss - Level 1
  (493, 49300, 69, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Level 1
  (493, 49300, 322, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arceus - Natural Gift - Level 1
  (493, 49300, 363, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arceus - Punishment - Level 1
  (493, 49300, 386, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 12, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 12, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 12, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Arceus - Refresh - Level 50
  (493, 49300, 287, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 12, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 12, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 12, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 12, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 12, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Arceus - Hone Claws - TM01
  (493, 49300, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 15),
  -- Arceus - Dragon Claw - TM02
  (493, 49300, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 16),
  -- Arceus - Psyshock - TM03
  (493, 49300, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Arceus - Calm Mind - TM04
  (493, 49300, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Arceus - Roar - TM05
  (493, 49300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Arceus - Toxic - TM06
  (493, 49300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Arceus - Hail - TM07
  (493, 49300, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 21),
  -- Arceus - Hidden Power - TM10
  (493, 49300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Arceus - Sunny Day - TM11
  (493, 49300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Arceus - Ice Beam - TM13
  (493, 49300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Arceus - Blizzard - TM14
  (493, 49300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Arceus - Hyper Beam - TM15
  (493, 49300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Arceus - Light Screen - TM16
  (493, 49300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Arceus - Protect - TM17
  (493, 49300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Arceus - Rain Dance - TM18
  (493, 49300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Arceus - Telekinesis - TM19
  (493, 49300, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 30),
  -- Arceus - Safeguard - TM20
  (493, 49300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 31),
  -- Arceus - Frustration - TM21
  (493, 49300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 32),
  -- Arceus - Solar Beam - TM22
  (493, 49300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 33),
  -- Arceus - Thunderbolt - TM24
  (493, 49300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 34),
  -- Arceus - Thunder - TM25
  (493, 49300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 35),
  -- Arceus - Earthquake - TM26
  (493, 49300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 36),
  -- Arceus - Return - TM27
  (493, 49300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 37),
  -- Arceus - Psychic - TM29
  (493, 49300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 38),
  -- Arceus - Shadow Ball - TM30
  (493, 49300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 39),
  -- Arceus - Brick Break - TM31
  (493, 49300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 40),
  -- Arceus - Double Team - TM32
  (493, 49300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 41),
  -- Arceus - Reflect - TM33
  (493, 49300, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 42),
  -- Arceus - Flamethrower - TM35
  (493, 49300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 43),
  -- Arceus - Sludge Bomb - TM36
  (493, 49300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 44),
  -- Arceus - Sandstorm - TM37
  (493, 49300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 45),
  -- Arceus - Fire Blast - TM38
  (493, 49300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 46),
  -- Arceus - Rock Tomb - TM39
  (493, 49300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 47),
  -- Arceus - Aerial Ace - TM40
  (493, 49300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 48),
  -- Arceus - Facade - TM42
  (493, 49300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 49),
  -- Arceus - Rest - TM44
  (493, 49300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 50),
  -- Arceus - Round - TM48
  (493, 49300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 51),
  -- Arceus - Echoed Voice - TM49
  (493, 49300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 52),
  -- Arceus - Overheat - TM50
  (493, 49300, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 53),
  -- Arceus - Focus Blast - TM52
  (493, 49300, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 54),
  -- Arceus - Energy Ball - TM53
  (493, 49300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 55),
  -- Arceus - Charge Beam - TM57
  (493, 49300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 56),
  -- Arceus - Incinerate - TM59
  (493, 49300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 57),
  -- Arceus - Quash - TM60
  (493, 49300, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 58),
  -- Arceus - Will-O-Wisp - TM61
  (493, 49300, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 59),
  -- Arceus - Shadow Claw - TM65
  (493, 49300, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 60),
  -- Arceus - Payback - TM66
  (493, 49300, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 61),
  -- Arceus - Retaliate - TM67
  (493, 49300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 62),
  -- Arceus - Giga Impact - TM68
  (493, 49300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 63),
  -- Arceus - Flash - TM70
  (493, 49300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 64),
  -- Arceus - Stone Edge - TM71
  (493, 49300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 65),
  -- Arceus - Thunder Wave - TM73
  (493, 49300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 66),
  -- Arceus - Swords Dance - TM75
  (493, 49300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 67),
  -- Arceus - Psych Up - TM77
  (493, 49300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 68),
  -- Arceus - Bulldoze - TM78
  (493, 49300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 69),
  -- Arceus - Rock Slide - TM80
  (493, 49300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 70),
  -- Arceus - X-Scissor - TM81
  (493, 49300, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 71),
  -- Arceus - Work Up - TM83
  (493, 49300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 72),
  -- Arceus - Poison Jab - TM84
  (493, 49300, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 73),
  -- Arceus - Dream Eater - TM85
  (493, 49300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 74),
  -- Arceus - Grass Knot - TM86
  (493, 49300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 75),
  -- Arceus - Swagger - TM87
  (493, 49300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 76),
  -- Arceus - Substitute - TM90
  (493, 49300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 77),
  -- Arceus - Flash Cannon - TM91
  (493, 49300, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 78),
  -- Arceus - Trick Room - TM92
  (493, 49300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 79),
  -- Arceus - Rock Smash - TM94
  (493, 49300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 80),
  -- Arceus - Snarl - TM95
  (493, 49300, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 81),
  -- Arceus - Cut - HM01
  (493, 49300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 82),
  -- Arceus - Fly - HM02
  (493, 49300, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 83),
  -- Arceus - Surf - HM03
  (493, 49300, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 84),
  -- Arceus - Strength - HM04
  (493, 49300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 85),
  -- Arceus - Waterfall - HM05
  (493, 49300, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 86),
  -- Arceus - Aqua Tail - Move Tutor
  (493, 49300, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Arceus - Dark Pulse - Move Tutor
  (493, 49300, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Arceus - Draco Meteor - Move Tutor
  (493, 49300, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Arceus - Dragon Pulse - Move Tutor
  (493, 49300, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Arceus - Earth Power - Move Tutor
  (493, 49300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 91),
  -- Arceus - Giga Drain - Move Tutor
  (493, 49300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 92),
  -- Arceus - Gravity - Move Tutor
  (493, 49300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 93),
  -- Arceus - Heat Wave - Move Tutor
  (493, 49300, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 94),
  -- Arceus - Hyper Voice - Move Tutor
  (493, 49300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 95),
  -- Arceus - Icy Wind - Move Tutor
  (493, 49300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 96),
  -- Arceus - Iron Defense - Move Tutor
  (493, 49300, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 97),
  -- Arceus - Iron Head - Move Tutor
  (493, 49300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 98),
  -- Arceus - Iron Tail - Move Tutor
  (493, 49300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 99),
  -- Arceus - Last Resort - Move Tutor
  (493, 49300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 100),
  -- Arceus - Magic Coat - Move Tutor
  (493, 49300, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 101),
  -- Arceus - Outrage - Move Tutor
  (493, 49300, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 102),
  -- Arceus - Recycle - Move Tutor
  (493, 49300, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 103),
  -- Arceus - Signal Beam - Move Tutor
  (493, 49300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 104),
  -- Arceus - Sleep Talk - Move Tutor
  (493, 49300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 105),
  -- Arceus - Snore - Move Tutor
  (493, 49300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 106),
  -- Arceus - Stealth Rock - Move Tutor
  (493, 49300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 107),
  -- Arceus - Tailwind - Move Tutor
  (493, 49300, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 108),
  -- Arceus - Trick - Move Tutor
  (493, 49300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 109),
  -- Arceus - Zen Headbutt - Move Tutor
  (493, 49300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 110);
