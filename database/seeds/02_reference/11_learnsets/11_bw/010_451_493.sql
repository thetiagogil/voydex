-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black / White
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black / White Pokedex learnset pages, Serebii Black / White
-- Move Tutor pages, and PokemonDB Generation 5 Black / White learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black / White
-- Pokémon: #451-#493
-- Rows: 2316
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black / White seed.
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
  (451, 45100, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Poison Sting - Level 1
  (451, 45100, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skorupi - Leer - Level 1
  (451, 45100, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skorupi - Knock Off - Level 6
  (451, 45100, 282, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Skorupi - Pin Missile - Level 12
  (451, 45100, 42, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skorupi - Acupressure - Level 17
  (451, 45100, 367, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Skorupi - Bug Bite - Level 34
  (451, 45100, 450, 11, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Skorupi - Poison Fang - Level 39
  (451, 45100, 305, 11, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Skorupi - Venoshock - Level 50
  (451, 45100, 474, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Skorupi - Hone Claws - Level 45
  (451, 45100, 468, 11, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Skorupi - Toxic Spikes - Level 28
  (451, 45100, 390, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Skorupi - Scary Face - Level 23
  (451, 45100, 184, 11, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Skorupi - Crunch - Level 56
  (451, 45100, 242, 11, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Skorupi - Cross Poison - Level 61
  (451, 45100, 440, 11, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Skorupi - Hone Claws - TM01
  (451, 45100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Skorupi - Toxic - TM06
  (451, 45100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Skorupi - Venoshock - TM09
  (451, 45100, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 17),
  -- Skorupi - Hidden Power - TM10
  (451, 45100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Skorupi - Sunny Day - TM11
  (451, 45100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Skorupi - Taunt - TM12
  (451, 45100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Skorupi - Protect - TM17
  (451, 45100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Skorupi - Rain Dance - TM18
  (451, 45100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Skorupi - Frustration - TM21
  (451, 45100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Skorupi - Return - TM27
  (451, 45100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Skorupi - Dig - TM28
  (451, 45100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Skorupi - Shadow Ball - TM30
  (451, 45100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Skorupi - Brick Break - TM31
  (451, 45100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Skorupi - Double Team - TM32
  (451, 45100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Skorupi - Sludge Bomb - TM36
  (451, 45100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 29),
  -- Skorupi - Rock Tomb - TM39
  (451, 45100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Skorupi - Aerial Ace - TM40
  (451, 45100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Skorupi - Torment - TM41
  (451, 45100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 32),
  -- Skorupi - Facade - TM42
  (451, 45100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Skorupi - Rest - TM44
  (451, 45100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Skorupi - Attract - TM45
  (451, 45100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Skorupi - Thief - TM46
  (451, 45100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Skorupi - Round - TM48
  (451, 45100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Skorupi - False Swipe - TM54
  (451, 45100, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 38),
  -- Skorupi - Fling - TM56
  (451, 45100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Skorupi - Payback - TM66
  (451, 45100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Skorupi - Flash - TM70
  (451, 45100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Skorupi - Swords Dance - TM75
  (451, 45100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 42),
  -- Skorupi - Struggle Bug - TM76
  (451, 45100, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 43),
  -- Skorupi - X-Scissor - TM81
  (451, 45100, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 44),
  -- Skorupi - Poison Jab - TM84
  (451, 45100, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 45),
  -- Skorupi - Swagger - TM87
  (451, 45100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Skorupi - Substitute - TM90
  (451, 45100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Skorupi - Rock Smash - TM94
  (451, 45100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Skorupi - Cut - HM01
  (451, 45100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 49),
  -- Skorupi - Strength - HM04
  (451, 45100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Skorupi - Agility - Egg Move
  (451, 45100, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skorupi - Confuse Ray - Egg Move
  (451, 45100, 109, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skorupi - Feint Attack - Egg Move
  (451, 45100, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skorupi - Iron Tail - Egg Move
  (451, 45100, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skorupi - Night Slash - Egg Move
  (451, 45100, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skorupi - Poison Tail - Egg Move
  (451, 45100, 342, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skorupi - Pursuit - Egg Move
  (451, 45100, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skorupi - Sand Attack - Egg Move
  (451, 45100, 28, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skorupi - Screech - Egg Move
  (451, 45100, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skorupi - Slash - Egg Move
  (451, 45100, 163, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skorupi - Twineedle - Egg Move
  (451, 45100, 41, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skorupi - Whirlwind - Egg Move
  (451, 45100, 18, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drapion - Thunder Fang - Level 1
  (452, 45200, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Ice Fang - Level 1
  (452, 45200, 423, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drapion - Fire Fang - Level 1
  (452, 45200, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drapion - Bite - Level 1
  (452, 45200, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drapion - Leer - Level 1
  (452, 45200, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drapion - Knock Off - Level 1
  (452, 45200, 282, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drapion - Knock Off - Level 6
  (452, 45200, 282, 11, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Drapion - Pin Missile - Level 12
  (452, 45200, 42, 11, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Drapion - Acupressure - Level 17
  (452, 45200, 367, 11, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Drapion - Bug Bite - Level 34
  (452, 45200, 450, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Drapion - Poison Fang - Level 39
  (452, 45200, 305, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Drapion - Venoshock - Level 56
  (452, 45200, 474, 11, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Drapion - Hone Claws - Level 48
  (452, 45200, 468, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Drapion - Toxic Spikes - Level 28
  (452, 45200, 390, 11, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Drapion - Scary Face - Level 23
  (452, 45200, 184, 11, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Drapion - Crunch - Level 65
  (452, 45200, 242, 11, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Drapion - Cross Poison - Level 73
  (452, 45200, 440, 11, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Drapion - Hone Claws - TM01
  (452, 45200, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 19),
  -- Drapion - Roar - TM05
  (452, 45200, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 20),
  -- Drapion - Toxic - TM06
  (452, 45200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Drapion - Venoshock - TM09
  (452, 45200, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 22),
  -- Drapion - Hidden Power - TM10
  (452, 45200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Drapion - Sunny Day - TM11
  (452, 45200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Drapion - Taunt - TM12
  (452, 45200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 25),
  -- Drapion - Hyper Beam - TM15
  (452, 45200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Drapion - Protect - TM17
  (452, 45200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Drapion - Rain Dance - TM18
  (452, 45200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Drapion - Frustration - TM21
  (452, 45200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Drapion - Earthquake - TM26
  (452, 45200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Drapion - Return - TM27
  (452, 45200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Drapion - Dig - TM28
  (452, 45200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 32),
  -- Drapion - Shadow Ball - TM30
  (452, 45200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Drapion - Brick Break - TM31
  (452, 45200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Drapion - Double Team - TM32
  (452, 45200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Drapion - Sludge Bomb - TM36
  (452, 45200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 36),
  -- Drapion - Rock Tomb - TM39
  (452, 45200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 37),
  -- Drapion - Aerial Ace - TM40
  (452, 45200, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 38),
  -- Drapion - Torment - TM41
  (452, 45200, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 39),
  -- Drapion - Facade - TM42
  (452, 45200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 40),
  -- Drapion - Rest - TM44
  (452, 45200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 41),
  -- Drapion - Attract - TM45
  (452, 45200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 42),
  -- Drapion - Thief - TM46
  (452, 45200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 43),
  -- Drapion - Round - TM48
  (452, 45200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 44),
  -- Drapion - False Swipe - TM54
  (452, 45200, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 45),
  -- Drapion - Fling - TM56
  (452, 45200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 46),
  -- Drapion - Payback - TM66
  (452, 45200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Drapion - Retaliate - TM67
  (452, 45200, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 48),
  -- Drapion - Giga Impact - TM68
  (452, 45200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 49),
  -- Drapion - Flash - TM70
  (452, 45200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 50),
  -- Drapion - Swords Dance - TM75
  (452, 45200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 51),
  -- Drapion - Struggle Bug - TM76
  (452, 45200, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 52),
  -- Drapion - Bulldoze - TM78
  (452, 45200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 53),
  -- Drapion - Rock Slide - TM80
  (452, 45200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 54),
  -- Drapion - X-Scissor - TM81
  (452, 45200, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 55),
  -- Drapion - Poison Jab - TM84
  (452, 45200, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 56),
  -- Drapion - Swagger - TM87
  (452, 45200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 57),
  -- Drapion - Substitute - TM90
  (452, 45200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 58),
  -- Drapion - Rock Smash - TM94
  (452, 45200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 59),
  -- Drapion - Snarl - TM95
  (452, 45200, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 60),
  -- Drapion - Cut - HM01
  (452, 45200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 61),
  -- Drapion - Strength - HM04
  (452, 45200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 62),
  -- Croagunk - Astonish - Level 1
  (453, 45300, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 3
  (453, 45300, 189, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Croagunk - Poison Sting - Level 8
  (453, 45300, 40, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 10
  (453, 45300, 269, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Croagunk - Pursuit - Level 15
  (453, 45300, 228, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croagunk - Feint Attack - Level 17
  (453, 45300, 185, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Croagunk - Revenge - Level 22
  (453, 45300, 279, 11, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Croagunk - Swagger - Level 24
  (453, 45300, 207, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Mud Bomb - Level 29
  (453, 45300, 426, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Croagunk - Sucker Punch - Level 31
  (453, 45300, 389, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Croagunk - Venoshock - Level 36
  (453, 45300, 474, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 38
  (453, 45300, 417, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Croagunk - Poison Jab - Level 43
  (453, 45300, 398, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Croagunk - Sludge Bomb - Level 45
  (453, 45300, 188, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Croagunk - Flatter - Level 50
  (453, 45300, 260, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Croagunk - Toxic - TM06
  (453, 45300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Croagunk - Bulk Up - TM08
  (453, 45300, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 17),
  -- Croagunk - Venoshock - TM09
  (453, 45300, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 18),
  -- Croagunk - Hidden Power - TM10
  (453, 45300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Croagunk - Sunny Day - TM11
  (453, 45300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Croagunk - Taunt - TM12
  (453, 45300, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Croagunk - Protect - TM17
  (453, 45300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Croagunk - Rain Dance - TM18
  (453, 45300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Croagunk - Frustration - TM21
  (453, 45300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Croagunk - Earthquake - TM26
  (453, 45300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Croagunk - Return - TM27
  (453, 45300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Croagunk - Dig - TM28
  (453, 45300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Croagunk - Shadow Ball - TM30
  (453, 45300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Croagunk - Brick Break - TM31
  (453, 45300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Croagunk - Double Team - TM32
  (453, 45300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Croagunk - Sludge Wave - TM34
  (453, 45300, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 31),
  -- Croagunk - Sludge Bomb - TM36
  (453, 45300, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 32),
  -- Croagunk - Rock Tomb - TM39
  (453, 45300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Croagunk - Torment - TM41
  (453, 45300, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 34),
  -- Croagunk - Facade - TM42
  (453, 45300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Croagunk - Rest - TM44
  (453, 45300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Croagunk - Attract - TM45
  (453, 45300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Croagunk - Thief - TM46
  (453, 45300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Croagunk - Low Sweep - TM47
  (453, 45300, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 39),
  -- Croagunk - Round - TM48
  (453, 45300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Croagunk - Focus Blast - TM52
  (453, 45300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 41),
  -- Croagunk - Fling - TM56
  (453, 45300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 42),
  -- Croagunk - Embargo - TM63
  (453, 45300, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 43),
  -- Croagunk - Payback - TM66
  (453, 45300, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 44),
  -- Croagunk - Retaliate - TM67
  (453, 45300, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 45),
  -- Croagunk - Bulldoze - TM78
  (453, 45300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 46),
  -- Croagunk - Rock Slide - TM80
  (453, 45300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 47),
  -- Croagunk - X-Scissor - TM81
  (453, 45300, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 48),
  -- Croagunk - Work Up - TM83
  (453, 45300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 49),
  -- Croagunk - Poison Jab - TM84
  (453, 45300, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 50),
  -- Croagunk - Swagger - TM87
  (453, 45300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Croagunk - Substitute - TM90
  (453, 45300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Croagunk - Rock Smash - TM94
  (453, 45300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Croagunk - Strength - HM04
  (453, 45300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 54),
  -- Croagunk - Acupressure - Egg Move
  (453, 45300, 367, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Croagunk - Bullet Punch - Egg Move
  (453, 45300, 418, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croagunk - Counter - Egg Move
  (453, 45300, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croagunk - Cross Chop - Egg Move
  (453, 45300, 238, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croagunk - Drain Punch - Egg Move
  (453, 45300, 409, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Croagunk - Dynamic Punch - Egg Move
  (453, 45300, 223, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Croagunk - Fake Out - Egg Move
  (453, 45300, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Croagunk - Feint - Egg Move
  (453, 45300, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Croagunk - Headbutt - Egg Move
  (453, 45300, 29, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Croagunk - Me First - Egg Move
  (453, 45300, 382, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Croagunk - Meditate - Egg Move
  (453, 45300, 96, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Croagunk - Smelling Salts - Egg Move
  (453, 45300, 265, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Vacuum Wave - Egg Move
  (453, 45300, 410, 11, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Croagunk - Wake-Up Slap - Egg Move
  (453, 45300, 358, 11, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Mud-Slap - Level 3
  (454, 45400, 189, 11, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Toxicroak - Poison Sting - Level 8
  (454, 45400, 40, 11, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toxicroak - Taunt - Level 10
  (454, 45400, 269, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Toxicroak - Pursuit - Level 15
  (454, 45400, 228, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Toxicroak - Feint Attack - Level 17
  (454, 45400, 185, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Toxicroak - Revenge - Level 22
  (454, 45400, 279, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Toxicroak - Swagger - Level 24
  (454, 45400, 207, 11, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Toxicroak - Mud Bomb - Level 29
  (454, 45400, 426, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Toxicroak - Sucker Punch - Level 31
  (454, 45400, 389, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Toxicroak - Venoshock - Level 36
  (454, 45400, 474, 11, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Toxicroak - Nasty Plot - Level 41
  (454, 45400, 417, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Toxicroak - Poison Jab - Level 49
  (454, 45400, 398, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Toxicroak - Sludge Bomb - Level 54
  (454, 45400, 188, 11, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Toxicroak - Flatter - Level 62
  (454, 45400, 260, 11, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Toxicroak - Toxic - TM06
  (454, 45400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Toxicroak - Bulk Up - TM08
  (454, 45400, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Toxicroak - Venoshock - TM09
  (454, 45400, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 20),
  -- Toxicroak - Hidden Power - TM10
  (454, 45400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Toxicroak - Sunny Day - TM11
  (454, 45400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Toxicroak - Taunt - TM12
  (454, 45400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Toxicroak - Hyper Beam - TM15
  (454, 45400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Toxicroak - Protect - TM17
  (454, 45400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Toxicroak - Rain Dance - TM18
  (454, 45400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Toxicroak - Frustration - TM21
  (454, 45400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Toxicroak - Earthquake - TM26
  (454, 45400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Toxicroak - Return - TM27
  (454, 45400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Toxicroak - Dig - TM28
  (454, 45400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Toxicroak - Shadow Ball - TM30
  (454, 45400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Toxicroak - Brick Break - TM31
  (454, 45400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 32),
  -- Toxicroak - Double Team - TM32
  (454, 45400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Toxicroak - Sludge Wave - TM34
  (454, 45400, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 34),
  -- Toxicroak - Sludge Bomb - TM36
  (454, 45400, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 35),
  -- Toxicroak - Rock Tomb - TM39
  (454, 45400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 36),
  -- Toxicroak - Torment - TM41
  (454, 45400, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 37),
  -- Toxicroak - Facade - TM42
  (454, 45400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Toxicroak - Rest - TM44
  (454, 45400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 39),
  -- Toxicroak - Attract - TM45
  (454, 45400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 40),
  -- Toxicroak - Thief - TM46
  (454, 45400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 41),
  -- Toxicroak - Low Sweep - TM47
  (454, 45400, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 42),
  -- Toxicroak - Round - TM48
  (454, 45400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Toxicroak - Focus Blast - TM52
  (454, 45400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 44),
  -- Toxicroak - Fling - TM56
  (454, 45400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Toxicroak - Embargo - TM63
  (454, 45400, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 46),
  -- Toxicroak - Payback - TM66
  (454, 45400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Toxicroak - Retaliate - TM67
  (454, 45400, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 48),
  -- Toxicroak - Giga Impact - TM68
  (454, 45400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 49),
  -- Toxicroak - Stone Edge - TM71
  (454, 45400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 50),
  -- Toxicroak - Swords Dance - TM75
  (454, 45400, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 51),
  -- Toxicroak - Bulldoze - TM78
  (454, 45400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 52),
  -- Toxicroak - Rock Slide - TM80
  (454, 45400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 53),
  -- Toxicroak - X-Scissor - TM81
  (454, 45400, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 54),
  -- Toxicroak - Work Up - TM83
  (454, 45400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 55),
  -- Toxicroak - Poison Jab - TM84
  (454, 45400, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 56),
  -- Toxicroak - Swagger - TM87
  (454, 45400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 57),
  -- Toxicroak - Substitute - TM90
  (454, 45400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 58),
  -- Toxicroak - Rock Smash - TM94
  (454, 45400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 59),
  -- Toxicroak - Cut - HM01
  (454, 45400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 60),
  -- Toxicroak - Strength - HM04
  (454, 45400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 61),
  -- Carnivine - Bind - Level 1
  (455, 45500, 20, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carnivine - Growth - Level 1
  (455, 45500, 74, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carnivine - Bite - Level 7
  (455, 45500, 44, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Carnivine - Vine Whip - Level 11
  (455, 45500, 22, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Carnivine - Sweet Scent - Level 17
  (455, 45500, 230, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Carnivine - Ingrain - Level 21
  (455, 45500, 275, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Carnivine - Feint Attack - Level 27
  (455, 45500, 185, 11, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carnivine - Leaf Tornado - Level 31
  (455, 45500, 536, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Carnivine - Stockpile - Level 37
  (455, 45500, 254, 11, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Carnivine - Spit Up - Level 37
  (455, 45500, 255, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Carnivine - Swallow - Level 37
  (455, 45500, 256, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Carnivine - Crunch - Level 41
  (455, 45500, 242, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Carnivine - Wring Out - Level 47
  (455, 45500, 378, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Carnivine - Power Whip - Level 51
  (455, 45500, 438, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Carnivine - Toxic - TM06
  (455, 45500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Carnivine - Hidden Power - TM10
  (455, 45500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Carnivine - Sunny Day - TM11
  (455, 45500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Carnivine - Hyper Beam - TM15
  (455, 45500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Carnivine - Protect - TM17
  (455, 45500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Carnivine - Frustration - TM21
  (455, 45500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Carnivine - Solar Beam - TM22
  (455, 45500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 21),
  -- Carnivine - Return - TM27
  (455, 45500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Carnivine - Double Team - TM32
  (455, 45500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Carnivine - Sludge Bomb - TM36
  (455, 45500, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 24),
  -- Carnivine - Facade - TM42
  (455, 45500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Carnivine - Rest - TM44
  (455, 45500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Carnivine - Attract - TM45
  (455, 45500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 27),
  -- Carnivine - Thief - TM46
  (455, 45500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 28),
  -- Carnivine - Round - TM48
  (455, 45500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Carnivine - Energy Ball - TM53
  (455, 45500, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 30),
  -- Carnivine - Fling - TM56
  (455, 45500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 31),
  -- Carnivine - Payback - TM66
  (455, 45500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 32),
  -- Carnivine - Giga Impact - TM68
  (455, 45500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 33),
  -- Carnivine - Flash - TM70
  (455, 45500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 34),
  -- Carnivine - Swords Dance - TM75
  (455, 45500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 35),
  -- Carnivine - Grass Knot - TM86
  (455, 45500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 36),
  -- Carnivine - Swagger - TM87
  (455, 45500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Carnivine - Substitute - TM90
  (455, 45500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Carnivine - Cut - HM01
  (455, 45500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 39),
  -- Carnivine - Giga Drain - Egg Move
  (455, 45500, 202, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Carnivine - Grass Whistle - Egg Move
  (455, 45500, 320, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Carnivine - Leech Seed - Egg Move
  (455, 45500, 73, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carnivine - Magical Leaf - Egg Move
  (455, 45500, 345, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carnivine - Rage Powder - Egg Move
  (455, 45500, 476, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carnivine - Razor Leaf - Egg Move
  (455, 45500, 75, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carnivine - Slam - Egg Move
  (455, 45500, 21, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carnivine - Sleep Powder - Egg Move
  (455, 45500, 79, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carnivine - Stun Spore - Egg Move
  (455, 45500, 78, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carnivine - Synthesis - Egg Move
  (455, 45500, 235, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carnivine - Worry Seed - Egg Move
  (455, 45500, 388, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Finneon - Pound - Level 1
  (456, 45600, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finneon - Water Gun - Level 6
  (456, 45600, 55, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Finneon - Attract - Level 10
  (456, 45600, 213, 11, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Finneon - Rain Dance - Level 13
  (456, 45600, 240, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Finneon - Gust - Level 17
  (456, 45600, 16, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Finneon - Water Pulse - Level 22
  (456, 45600, 352, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Finneon - Captivate - Level 26
  (456, 45600, 445, 11, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Finneon - Safeguard - Level 29
  (456, 45600, 219, 11, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Finneon - Aqua Ring - Level 33
  (456, 45600, 392, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Finneon - Whirlpool - Level 38
  (456, 45600, 250, 11, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Finneon - U-turn - Level 42
  (456, 45600, 369, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Finneon - Bounce - Level 45
  (456, 45600, 340, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Finneon - Silver Wind - Level 49
  (456, 45600, 318, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Finneon - Soak - Level 54
  (456, 45600, 487, 11, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Finneon - Toxic - TM06
  (456, 45600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Finneon - Hail - TM07
  (456, 45600, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 16),
  -- Finneon - Hidden Power - TM10
  (456, 45600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Finneon - Ice Beam - TM13
  (456, 45600, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Finneon - Blizzard - TM14
  (456, 45600, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 19),
  -- Finneon - Protect - TM17
  (456, 45600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Finneon - Rain Dance - TM18
  (456, 45600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Finneon - Safeguard - TM20
  (456, 45600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Finneon - Frustration - TM21
  (456, 45600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Finneon - Return - TM27
  (456, 45600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Finneon - Double Team - TM32
  (456, 45600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Finneon - Facade - TM42
  (456, 45600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Finneon - Rest - TM44
  (456, 45600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Finneon - Attract - TM45
  (456, 45600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Finneon - Round - TM48
  (456, 45600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Finneon - Scald - TM55
  (456, 45600, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 30),
  -- Finneon - Payback - TM66
  (456, 45600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 31),
  -- Finneon - Flash - TM70
  (456, 45600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 32),
  -- Finneon - Psych Up - TM77
  (456, 45600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 33),
  -- Finneon - Swagger - TM87
  (456, 45600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 34),
  -- Finneon - U-turn - TM89
  (456, 45600, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 35),
  -- Finneon - Substitute - TM90
  (456, 45600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Finneon - Surf - HM03
  (456, 45600, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 37),
  -- Finneon - Waterfall - HM05
  (456, 45600, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 38),
  -- Finneon - Dive - HM06
  (456, 45600, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 39),
  -- Finneon - Agility - Egg Move
  (456, 45600, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Finneon - Aqua Tail - Egg Move
  (456, 45600, 401, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Finneon - Aurora Beam - Egg Move
  (456, 45600, 62, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Finneon - Brine - Egg Move
  (456, 45600, 362, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finneon - Charm - Egg Move
  (456, 45600, 204, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finneon - Flail - Egg Move
  (456, 45600, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finneon - Psybeam - Egg Move
  (456, 45600, 60, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finneon - Signal Beam - Egg Move
  (456, 45600, 324, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Finneon - Splash - Egg Move
  (456, 45600, 150, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Finneon - Sweet Kiss - Egg Move
  (456, 45600, 186, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Finneon - Tickle - Egg Move
  (456, 45600, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lumineon - Pound - Level 1
  (457, 45700, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lumineon - Water Gun - Level 1
  (457, 45700, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lumineon - Attract - Level 1
  (457, 45700, 213, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lumineon - Water Gun - Level 6
  (457, 45700, 55, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lumineon - Attract - Level 10
  (457, 45700, 213, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lumineon - Rain Dance - Level 13
  (457, 45700, 240, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Lumineon - Gust - Level 17
  (457, 45700, 16, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lumineon - Water Pulse - Level 22
  (457, 45700, 352, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Lumineon - Captivate - Level 26
  (457, 45700, 445, 11, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Lumineon - Safeguard - Level 29
  (457, 45700, 219, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Lumineon - Aqua Ring - Level 35
  (457, 45700, 392, 11, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Lumineon - Whirlpool - Level 42
  (457, 45700, 250, 11, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Lumineon - U-turn - Level 48
  (457, 45700, 369, 11, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Lumineon - Bounce - Level 53
  (457, 45700, 340, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lumineon - Silver Wind - Level 59
  (457, 45700, 318, 11, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Lumineon - Soak - Level 66
  (457, 45700, 487, 11, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Lumineon - Toxic - TM06
  (457, 45700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Lumineon - Hail - TM07
  (457, 45700, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Lumineon - Hidden Power - TM10
  (457, 45700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Lumineon - Ice Beam - TM13
  (457, 45700, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Lumineon - Blizzard - TM14
  (457, 45700, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Lumineon - Hyper Beam - TM15
  (457, 45700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Lumineon - Protect - TM17
  (457, 45700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Lumineon - Rain Dance - TM18
  (457, 45700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Lumineon - Safeguard - TM20
  (457, 45700, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Lumineon - Frustration - TM21
  (457, 45700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Lumineon - Return - TM27
  (457, 45700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Lumineon - Double Team - TM32
  (457, 45700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Lumineon - Facade - TM42
  (457, 45700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Lumineon - Rest - TM44
  (457, 45700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Lumineon - Attract - TM45
  (457, 45700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Lumineon - Round - TM48
  (457, 45700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Lumineon - Scald - TM55
  (457, 45700, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 33),
  -- Lumineon - Payback - TM66
  (457, 45700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 34),
  -- Lumineon - Giga Impact - TM68
  (457, 45700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 35),
  -- Lumineon - Flash - TM70
  (457, 45700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 36),
  -- Lumineon - Psych Up - TM77
  (457, 45700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 37),
  -- Lumineon - Swagger - TM87
  (457, 45700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Lumineon - U-turn - TM89
  (457, 45700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 39),
  -- Lumineon - Substitute - TM90
  (457, 45700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Lumineon - Surf - HM03
  (457, 45700, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 41),
  -- Lumineon - Waterfall - HM05
  (457, 45700, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 42),
  -- Lumineon - Dive - HM06
  (457, 45700, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 43),
  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Bubble - Level 1
  (458, 45800, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 4
  (458, 45800, 48, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mantyke - Bubble Beam - Level 10
  (458, 45800, 61, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mantyke - Confuse Ray - Level 37
  (458, 45800, 109, 11, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Mantyke - Wing Attack - Level 22
  (458, 45800, 17, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Mantyke - Headbutt - Level 13
  (458, 45800, 29, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mantyke - Water Pulse - Level 28
  (458, 45800, 352, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mantyke - Take Down - Level 31
  (458, 45800, 36, 11, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Mantyke - Agility - Level 19
  (458, 45800, 97, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Mantyke - Aqua Ring - Level 46
  (458, 45800, 392, 11, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mantyke - Bounce - Level 40
  (458, 45800, 340, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mantyke - Hydro Pump - Level 49
  (458, 45800, 56, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Mantyke - Toxic - TM06
  (458, 45800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Mantyke - Hail - TM07
  (458, 45800, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 15),
  -- Mantyke - Hidden Power - TM10
  (458, 45800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Mantyke - Ice Beam - TM13
  (458, 45800, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 17),
  -- Mantyke - Blizzard - TM14
  (458, 45800, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 18),
  -- Mantyke - Protect - TM17
  (458, 45800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Mantyke - Rain Dance - TM18
  (458, 45800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Mantyke - Frustration - TM21
  (458, 45800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Mantyke - Earthquake - TM26
  (458, 45800, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 22),
  -- Mantyke - Return - TM27
  (458, 45800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Mantyke - Double Team - TM32
  (458, 45800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Mantyke - Aerial Ace - TM40
  (458, 45800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 25),
  -- Mantyke - Facade - TM42
  (458, 45800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Mantyke - Rest - TM44
  (458, 45800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Mantyke - Attract - TM45
  (458, 45800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Mantyke - Round - TM48
  (458, 45800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Mantyke - Scald - TM55
  (458, 45800, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 30),
  -- Mantyke - Acrobatics - TM62
  (458, 45800, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 31),
  -- Mantyke - Bulldoze - TM78
  (458, 45800, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 32),
  -- Mantyke - Rock Slide - TM80
  (458, 45800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 33),
  -- Mantyke - Swagger - TM87
  (458, 45800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 34),
  -- Mantyke - Substitute - TM90
  (458, 45800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 35),
  -- Mantyke - Surf - HM03
  (458, 45800, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 36),
  -- Mantyke - Waterfall - HM05
  (458, 45800, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 37),
  -- Mantyke - Dive - HM06
  (458, 45800, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 38),
  -- Mantyke - Amnesia - Egg Move
  (458, 45800, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mantyke - Haze - Egg Move
  (458, 45800, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mantyke - Hydro Pump - Egg Move
  (458, 45800, 56, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mantyke - Mirror Coat - Egg Move
  (458, 45800, 243, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mantyke - Mud Sport - Egg Move
  (458, 45800, 300, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mantyke - Signal Beam - Egg Move
  (458, 45800, 324, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mantyke - Slam - Egg Move
  (458, 45800, 21, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mantyke - Splash - Egg Move
  (458, 45800, 150, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantyke - Twister - Egg Move
  (458, 45800, 239, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantyke - Water Sport - Egg Move
  (458, 45800, 346, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantyke - Wide Guard - Egg Move
  (458, 45800, 469, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Leer - Level 1
  (459, 45900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Razor Leaf - Level 5
  (459, 45900, 75, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Icy Wind - Level 9
  (459, 45900, 196, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Snover - Grass Whistle - Level 13
  (459, 45900, 320, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snover - Swagger - Level 17
  (459, 45900, 207, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Snover - Mist - Level 21
  (459, 45900, 54, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Snover - Ice Shard - Level 26
  (459, 45900, 420, 11, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 31
  (459, 45900, 275, 11, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 36
  (459, 45900, 452, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 41
  (459, 45900, 59, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 46
  (459, 45900, 329, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snover - Toxic - TM06
  (459, 45900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 13),
  -- Snover - Hail - TM07
  (459, 45900, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 14),
  -- Snover - Hidden Power - TM10
  (459, 45900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Snover - Ice Beam - TM13
  (459, 45900, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 16),
  -- Snover - Blizzard - TM14
  (459, 45900, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 17),
  -- Snover - Light Screen - TM16
  (459, 45900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Snover - Protect - TM17
  (459, 45900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Snover - Rain Dance - TM18
  (459, 45900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Snover - Safeguard - TM20
  (459, 45900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 21),
  -- Snover - Frustration - TM21
  (459, 45900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Snover - Solar Beam - TM22
  (459, 45900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Snover - Return - TM27
  (459, 45900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Snover - Shadow Ball - TM30
  (459, 45900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 25),
  -- Snover - Double Team - TM32
  (459, 45900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Snover - Facade - TM42
  (459, 45900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Snover - Rest - TM44
  (459, 45900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Snover - Attract - TM45
  (459, 45900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Snover - Round - TM48
  (459, 45900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Snover - Energy Ball - TM53
  (459, 45900, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 31),
  -- Snover - Flash - TM70
  (459, 45900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 32),
  -- Snover - Swords Dance - TM75
  (459, 45900, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 33),
  -- Snover - Frost Breath - TM79
  (459, 45900, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 34),
  -- Snover - Grass Knot - TM86
  (459, 45900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 35),
  -- Snover - Swagger - TM87
  (459, 45900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Snover - Substitute - TM90
  (459, 45900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Snover - Avalanche - Egg Move
  (459, 45900, 419, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Snover - Bullet Seed - Egg Move
  (459, 45900, 331, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snover - Double-Edge - Egg Move
  (459, 45900, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snover - Growth - Egg Move
  (459, 45900, 74, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snover - Leech Seed - Egg Move
  (459, 45900, 73, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snover - Magical Leaf - Egg Move
  (459, 45900, 345, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snover - Mist - Egg Move
  (459, 45900, 54, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Natural Gift - Egg Move
  (459, 45900, 363, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Seed Bomb - Egg Move
  (459, 45900, 402, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Skull Bash - Egg Move
  (459, 45900, 130, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snover - Stomp - Egg Move
  (459, 45900, 23, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Abomasnow - Ice Punch - Level 1
  (460, 46000, 8, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Razor Leaf - Level 1
  (460, 46000, 75, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Icy Wind - Level 1
  (460, 46000, 196, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Razor Leaf - Level 5
  (460, 46000, 75, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Abomasnow - Icy Wind - Level 9
  (460, 46000, 196, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Abomasnow - Grass Whistle - Level 13
  (460, 46000, 320, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Abomasnow - Swagger - Level 17
  (460, 46000, 207, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Abomasnow - Mist - Level 21
  (460, 46000, 54, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Abomasnow - Ice Shard - Level 26
  (460, 46000, 420, 11, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Abomasnow - Ingrain - Level 31
  (460, 46000, 275, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Abomasnow - Wood Hammer - Level 36
  (460, 46000, 452, 11, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Abomasnow - Blizzard - Level 47
  (460, 46000, 59, 11, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Abomasnow - Sheer Cold - Level 58
  (460, 46000, 329, 11, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Abomasnow - Toxic - TM06
  (460, 46000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Abomasnow - Hail - TM07
  (460, 46000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Abomasnow - Hidden Power - TM10
  (460, 46000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Abomasnow - Ice Beam - TM13
  (460, 46000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 19),
  -- Abomasnow - Blizzard - TM14
  (460, 46000, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 20),
  -- Abomasnow - Hyper Beam - TM15
  (460, 46000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Abomasnow - Light Screen - TM16
  (460, 46000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Abomasnow - Protect - TM17
  (460, 46000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Abomasnow - Rain Dance - TM18
  (460, 46000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Abomasnow - Safeguard - TM20
  (460, 46000, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Abomasnow - Frustration - TM21
  (460, 46000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Abomasnow - Solar Beam - TM22
  (460, 46000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Abomasnow - Earthquake - TM26
  (460, 46000, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Abomasnow - Return - TM27
  (460, 46000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Abomasnow - Shadow Ball - TM30
  (460, 46000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Abomasnow - Brick Break - TM31
  (460, 46000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 31),
  -- Abomasnow - Double Team - TM32
  (460, 46000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Abomasnow - Rock Tomb - TM39
  (460, 46000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Abomasnow - Facade - TM42
  (460, 46000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Abomasnow - Rest - TM44
  (460, 46000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Abomasnow - Attract - TM45
  (460, 46000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Abomasnow - Round - TM48
  (460, 46000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Abomasnow - Focus Blast - TM52
  (460, 46000, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 38),
  -- Abomasnow - Energy Ball - TM53
  (460, 46000, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 39),
  -- Abomasnow - Fling - TM56
  (460, 46000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Abomasnow - Giga Impact - TM68
  (460, 46000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Abomasnow - Flash - TM70
  (460, 46000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 42),
  -- Abomasnow - Swords Dance - TM75
  (460, 46000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 43),
  -- Abomasnow - Bulldoze - TM78
  (460, 46000, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Abomasnow - Frost Breath - TM79
  (460, 46000, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 45),
  -- Abomasnow - Rock Slide - TM80
  (460, 46000, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 46),
  -- Abomasnow - Grass Knot - TM86
  (460, 46000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 47),
  -- Abomasnow - Swagger - TM87
  (460, 46000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Abomasnow - Substitute - TM90
  (460, 46000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Abomasnow - Rock Smash - TM94
  (460, 46000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Abomasnow - Strength - HM04
  (460, 46000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 51),
  -- Weavile - Embargo - Level 1
  (461, 46100, 373, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Revenge - Level 1
  (461, 46100, 279, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Quick Attack - Level 8
  (461, 46100, 98, 11, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Weavile - Feint Attack - Level 14
  (461, 46100, 185, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Weavile - Icy Wind - Level 28
  (461, 46100, 196, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Weavile - Fury Swipes - Level 21
  (461, 46100, 154, 11, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Weavile - Nasty Plot - Level 24
  (461, 46100, 417, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Weavile - Metal Claw - Level 49
  (461, 46100, 232, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Weavile - Hone Claws - Level 35
  (461, 46100, 468, 11, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 42
  (461, 46100, 374, 11, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Weavile - Screech - Level 10
  (461, 46100, 103, 11, NULL, 1, 10, NULL, NULL, NULL, 16),
  -- Weavile - Night Slash - Level 38
  (461, 46100, 400, 11, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Weavile - Dark Pulse - Level 51
  (461, 46100, 399, 11, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Weavile - Hone Claws - TM01
  (461, 46100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 19),
  -- Weavile - Calm Mind - TM04
  (461, 46100, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 20),
  -- Weavile - Toxic - TM06
  (461, 46100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Weavile - Hail - TM07
  (461, 46100, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 22),
  -- Weavile - Hidden Power - TM10
  (461, 46100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Weavile - Sunny Day - TM11
  (461, 46100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Weavile - Taunt - TM12
  (461, 46100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 25),
  -- Weavile - Ice Beam - TM13
  (461, 46100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 26),
  -- Weavile - Blizzard - TM14
  (461, 46100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 27),
  -- Weavile - Hyper Beam - TM15
  (461, 46100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 28),
  -- Weavile - Protect - TM17
  (461, 46100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 29),
  -- Weavile - Rain Dance - TM18
  (461, 46100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 30),
  -- Weavile - Frustration - TM21
  (461, 46100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 31),
  -- Weavile - Return - TM27
  (461, 46100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Weavile - Dig - TM28
  (461, 46100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 33),
  -- Weavile - Shadow Ball - TM30
  (461, 46100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Weavile - Brick Break - TM31
  (461, 46100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 35),
  -- Weavile - Double Team - TM32
  (461, 46100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 36),
  -- Weavile - Reflect - TM33
  (461, 46100, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 37),
  -- Weavile - Aerial Ace - TM40
  (461, 46100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 38),
  -- Weavile - Torment - TM41
  (461, 46100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 39),
  -- Weavile - Facade - TM42
  (461, 46100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 40),
  -- Weavile - Rest - TM44
  (461, 46100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 41),
  -- Weavile - Attract - TM45
  (461, 46100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 42),
  -- Weavile - Thief - TM46
  (461, 46100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 43),
  -- Weavile - Low Sweep - TM47
  (461, 46100, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 44),
  -- Weavile - Round - TM48
  (461, 46100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 45),
  -- Weavile - Focus Blast - TM52
  (461, 46100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 46),
  -- Weavile - False Swipe - TM54
  (461, 46100, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 47),
  -- Weavile - Fling - TM56
  (461, 46100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 48),
  -- Weavile - Embargo - TM63
  (461, 46100, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 49),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 50),
  -- Weavile - Payback - TM66
  (461, 46100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 51),
  -- Weavile - Retaliate - TM67
  (461, 46100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 52),
  -- Weavile - Giga Impact - TM68
  (461, 46100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 53),
  -- Weavile - Swords Dance - TM75
  (461, 46100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 54),
  -- Weavile - Psych Up - TM77
  (461, 46100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 55),
  -- Weavile - X-Scissor - TM81
  (461, 46100, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 56),
  -- Weavile - Poison Jab - TM84
  (461, 46100, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 57),
  -- Weavile - Dream Eater - TM85
  (461, 46100, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 58),
  -- Weavile - Swagger - TM87
  (461, 46100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 59),
  -- Weavile - Substitute - TM90
  (461, 46100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 60),
  -- Weavile - Rock Smash - TM94
  (461, 46100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 61),
  -- Weavile - Snarl - TM95
  (461, 46100, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 62),
  -- Weavile - Cut - HM01
  (461, 46100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 63),
  -- Weavile - Surf - HM03
  (461, 46100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 64),
  -- Weavile - Strength - HM04
  (461, 46100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 65),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Barrier - Level 1
  (462, 46200, 112, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Supersonic - Level 11
  (462, 46200, 48, 11, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Magnezone - Thunder Shock - Level 6
  (462, 46200, 84, 11, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Magnezone - Sonic Boom - Level 14
  (462, 46200, 49, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Magnezone - Thunder Wave - Level 17
  (462, 46200, 86, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Magnezone - Magnet Bomb - Level 34
  (462, 46200, 443, 11, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magnezone - Spark - Level 22
  (462, 46200, 209, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Magnezone - Mirror Shot - Level 50
  (462, 46200, 429, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Magnezone - Metal Sound - Level 1
  (462, 46200, 319, 11, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Magnezone - Electro Ball - Level 27
  (462, 46200, 486, 11, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Magnezone - Screech - Level 40
  (462, 46200, 103, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Magnezone - Discharge - Level 46
  (462, 46200, 435, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Magnezone - Lock-On - Level 30
  (462, 46200, 199, 11, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Magnezone - Magnet Rise - Level 54
  (462, 46200, 393, 11, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Magnezone - Gyro Ball - Level 60
  (462, 46200, 360, 11, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Magnezone - Zap Cannon - Level 66
  (462, 46200, 192, 11, NULL, 1, 66, NULL, NULL, NULL, 20),
  -- Magnezone - Toxic - TM06
  (462, 46200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Magnezone - Hidden Power - TM10
  (462, 46200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Magnezone - Sunny Day - TM11
  (462, 46200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Magnezone - Hyper Beam - TM15
  (462, 46200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Magnezone - Light Screen - TM16
  (462, 46200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 25),
  -- Magnezone - Protect - TM17
  (462, 46200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Magnezone - Rain Dance - TM18
  (462, 46200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Magnezone - Frustration - TM21
  (462, 46200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Magnezone - Thunderbolt - TM24
  (462, 46200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Magnezone - Thunder - TM25
  (462, 46200, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Magnezone - Return - TM27
  (462, 46200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Magnezone - Double Team - TM32
  (462, 46200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Magnezone - Reflect - TM33
  (462, 46200, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 33),
  -- Magnezone - Facade - TM42
  (462, 46200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Magnezone - Rest - TM44
  (462, 46200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Magnezone - Round - TM48
  (462, 46200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Magnezone - Charge Beam - TM57
  (462, 46200, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 37),
  -- Magnezone - Explosion - TM64
  (462, 46200, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 38),
  -- Magnezone - Giga Impact - TM68
  (462, 46200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Magnezone - Flash - TM70
  (462, 46200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 40),
  -- Magnezone - Volt Switch - TM72
  (462, 46200, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 41),
  -- Magnezone - Thunder Wave - TM73
  (462, 46200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Magnezone - Gyro Ball - TM74
  (462, 46200, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 43),
  -- Magnezone - Psych Up - TM77
  (462, 46200, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Magnezone - Swagger - TM87
  (462, 46200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Magnezone - Substitute - TM90
  (462, 46200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Magnezone - Flash Cannon - TM91
  (462, 46200, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 47),
  -- Magnezone - Wild Charge - TM93
  (462, 46200, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 48),
  -- Lickilicky - Lick - Level 1
  (463, 46300, 122, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Supersonic - Level 5
  (463, 46300, 48, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Lickilicky - Defense Curl - Level 9
  (463, 46300, 111, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Lickilicky - Knock Off - Level 13
  (463, 46300, 282, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Lickilicky - Wrap - Level 17
  (463, 46300, 35, 11, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Lickilicky - Stomp - Level 21
  (463, 46300, 23, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Lickilicky - Disable - Level 25
  (463, 46300, 50, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lickilicky - Slam - Level 29
  (463, 46300, 21, 11, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Lickilicky - Rollout - Level 33
  (463, 46300, 205, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Lickilicky - Chip Away - Level 37
  (463, 46300, 498, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Lickilicky - Me First - Level 41
  (463, 46300, 382, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lickilicky - Refresh - Level 45
  (463, 46300, 287, 11, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Lickilicky - Screech - Level 49
  (463, 46300, 103, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Lickilicky - Power Whip - Level 53
  (463, 46300, 438, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Lickilicky - Wring Out - Level 57
  (463, 46300, 378, 11, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Lickilicky - Gyro Ball - Level 61
  (463, 46300, 360, 11, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Lickilicky - Toxic - TM06
  (463, 46300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Lickilicky - Hidden Power - TM10
  (463, 46300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Lickilicky - Sunny Day - TM11
  (463, 46300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Lickilicky - Ice Beam - TM13
  (463, 46300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Lickilicky - Blizzard - TM14
  (463, 46300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Lickilicky - Hyper Beam - TM15
  (463, 46300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Lickilicky - Protect - TM17
  (463, 46300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Lickilicky - Rain Dance - TM18
  (463, 46300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Lickilicky - Frustration - TM21
  (463, 46300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Lickilicky - Solar Beam - TM22
  (463, 46300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Lickilicky - Thunderbolt - TM24
  (463, 46300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Lickilicky - Thunder - TM25
  (463, 46300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Lickilicky - Earthquake - TM26
  (463, 46300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Lickilicky - Return - TM27
  (463, 46300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Lickilicky - Dig - TM28
  (463, 46300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 31),
  -- Lickilicky - Shadow Ball - TM30
  (463, 46300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Lickilicky - Brick Break - TM31
  (463, 46300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 33),
  -- Lickilicky - Double Team - TM32
  (463, 46300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Lickilicky - Flamethrower - TM35
  (463, 46300, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 35),
  -- Lickilicky - Sandstorm - TM37
  (463, 46300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 36),
  -- Lickilicky - Fire Blast - TM38
  (463, 46300, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 37),
  -- Lickilicky - Rock Tomb - TM39
  (463, 46300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Lickilicky - Facade - TM42
  (463, 46300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Lickilicky - Rest - TM44
  (463, 46300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Lickilicky - Attract - TM45
  (463, 46300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Lickilicky - Thief - TM46
  (463, 46300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 42),
  -- Lickilicky - Round - TM48
  (463, 46300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Lickilicky - Focus Blast - TM52
  (463, 46300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 44),
  -- Lickilicky - Fling - TM56
  (463, 46300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Lickilicky - Incinerate - TM59
  (463, 46300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 46),
  -- Lickilicky - Explosion - TM64
  (463, 46300, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 47),
  -- Lickilicky - Retaliate - TM67
  (463, 46300, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 48),
  -- Lickilicky - Giga Impact - TM68
  (463, 46300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 49),
  -- Lickilicky - Gyro Ball - TM74
  (463, 46300, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 50),
  -- Lickilicky - Swords Dance - TM75
  (463, 46300, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 51),
  -- Lickilicky - Psych Up - TM77
  (463, 46300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 52),
  -- Lickilicky - Bulldoze - TM78
  (463, 46300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 53),
  -- Lickilicky - Rock Slide - TM80
  (463, 46300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 54),
  -- Lickilicky - Dragon Tail - TM82
  (463, 46300, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 55),
  -- Lickilicky - Work Up - TM83
  (463, 46300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 56),
  -- Lickilicky - Dream Eater - TM85
  (463, 46300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 57),
  -- Lickilicky - Swagger - TM87
  (463, 46300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 58),
  -- Lickilicky - Substitute - TM90
  (463, 46300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 59),
  -- Lickilicky - Rock Smash - TM94
  (463, 46300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 60),
  -- Lickilicky - Cut - HM01
  (463, 46300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 61),
  -- Lickilicky - Surf - HM03
  (463, 46300, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 62),
  -- Lickilicky - Strength - HM04
  (463, 46300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 63),
  -- Rhyperior - Poison Jab - Level 1
  (464, 46400, 398, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Horn Attack - Level 1
  (464, 46400, 30, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Stomp - Level 1
  (464, 46400, 23, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Fury Attack - Level 1
  (464, 46400, 31, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Stomp - Level 9
  (464, 46400, 23, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rhyperior - Fury Attack - Level 19
  (464, 46400, 31, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Rhyperior - Scary Face - Level 19
  (464, 46400, 184, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rhyperior - Rock Blast - Level 23
  (464, 46400, 350, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Rhyperior - Chip Away - Level 30
  (464, 46400, 498, 11, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Rhyperior - Take Down - Level 41
  (464, 46400, 36, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Rhyperior - Hammer Arm - Level 42
  (464, 46400, 359, 11, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Rhyperior - Drill Run - Level 47
  (464, 46400, 529, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Rhyperior - Stone Edge - Level 56
  (464, 46400, 444, 11, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Rhyperior - Earthquake - Level 62
  (464, 46400, 89, 11, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Rhyperior - Horn Drill - Level 71
  (464, 46400, 32, 11, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Rhyperior - Megahorn - Level 77
  (464, 46400, 224, 11, NULL, 1, 77, NULL, NULL, NULL, 17),
  -- Rhyperior - Rock Wrecker - Level 86
  (464, 46400, 439, 11, NULL, 1, 86, NULL, NULL, NULL, 18),
  -- Rhyperior - Roar - TM05
  (464, 46400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Rhyperior - Toxic - TM06
  (464, 46400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Rhyperior - Hidden Power - TM10
  (464, 46400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Rhyperior - Sunny Day - TM11
  (464, 46400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Rhyperior - Ice Beam - TM13
  (464, 46400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Rhyperior - Blizzard - TM14
  (464, 46400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Rhyperior - Hyper Beam - TM15
  (464, 46400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Rhyperior - Protect - TM17
  (464, 46400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Rhyperior - Rain Dance - TM18
  (464, 46400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Rhyperior - Frustration - TM21
  (464, 46400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Rhyperior - Smack Down - TM23
  (464, 46400, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 29),
  -- Rhyperior - Thunderbolt - TM24
  (464, 46400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 30),
  -- Rhyperior - Thunder - TM25
  (464, 46400, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 31),
  -- Rhyperior - Earthquake - TM26
  (464, 46400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 32),
  -- Rhyperior - Return - TM27
  (464, 46400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Rhyperior - Dig - TM28
  (464, 46400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 34),
  -- Rhyperior - Brick Break - TM31
  (464, 46400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 35),
  -- Rhyperior - Double Team - TM32
  (464, 46400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 36),
  -- Rhyperior - Flamethrower - TM35
  (464, 46400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 37),
  -- Rhyperior - Sandstorm - TM37
  (464, 46400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 38),
  -- Rhyperior - Fire Blast - TM38
  (464, 46400, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 39),
  -- Rhyperior - Rock Tomb - TM39
  (464, 46400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 40),
  -- Rhyperior - Facade - TM42
  (464, 46400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Rhyperior - Rest - TM44
  (464, 46400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 42),
  -- Rhyperior - Attract - TM45
  (464, 46400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 43),
  -- Rhyperior - Thief - TM46
  (464, 46400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 44),
  -- Rhyperior - Round - TM48
  (464, 46400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 45),
  -- Rhyperior - Focus Blast - TM52
  (464, 46400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 46),
  -- Rhyperior - Fling - TM56
  (464, 46400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 47),
  -- Rhyperior - Incinerate - TM59
  (464, 46400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 48),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 49),
  -- Rhyperior - Payback - TM66
  (464, 46400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 50),
  -- Rhyperior - Giga Impact - TM68
  (464, 46400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 51),
  -- Rhyperior - Rock Polish - TM69
  (464, 46400, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 52),
  -- Rhyperior - Stone Edge - TM71
  (464, 46400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 53),
  -- Rhyperior - Swords Dance - TM75
  (464, 46400, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 54),
  -- Rhyperior - Bulldoze - TM78
  (464, 46400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 55),
  -- Rhyperior - Rock Slide - TM80
  (464, 46400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 56),
  -- Rhyperior - Dragon Tail - TM82
  (464, 46400, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 57),
  -- Rhyperior - Poison Jab - TM84
  (464, 46400, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 58),
  -- Rhyperior - Swagger - TM87
  (464, 46400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 59),
  -- Rhyperior - Substitute - TM90
  (464, 46400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 60),
  -- Rhyperior - Flash Cannon - TM91
  (464, 46400, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 61),
  -- Rhyperior - Rock Smash - TM94
  (464, 46400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Rhyperior - Cut - HM01
  (464, 46400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 63),
  -- Rhyperior - Surf - HM03
  (464, 46400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 64),
  -- Rhyperior - Strength - HM04
  (464, 46400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 65),
  -- Tangrowth - Ingrain - Level 1
  (465, 46500, 275, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Constrict - Level 1
  (465, 46500, 132, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangrowth - Sleep Powder - Level 5
  (465, 46500, 79, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tangrowth - Vine Whip - Level 19
  (465, 46500, 22, 11, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Tangrowth - Absorb - Level 8
  (465, 46500, 71, 11, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tangrowth - Poison Powder - Level 15
  (465, 46500, 77, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tangrowth - Bind - Level 22
  (465, 46500, 20, 11, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tangrowth - Growth - Level 12
  (465, 46500, 74, 11, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Tangrowth - Mega Drain - Level 26
  (465, 46500, 72, 11, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Tangrowth - Knock Off - Level 33
  (465, 46500, 282, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Tangrowth - Stun Spore - Level 29
  (465, 46500, 78, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Tangrowth - Natural Gift - Level 40
  (465, 46500, 363, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tangrowth - Ancient Power - Level 36
  (465, 46500, 246, 11, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tangrowth - Slam - Level 43
  (465, 46500, 21, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tangrowth - Tickle - Level 47
  (465, 46500, 321, 11, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tangrowth - Wring Out - Level 50
  (465, 46500, 378, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Tangrowth - Power Whip - Level 54
  (465, 46500, 438, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tangrowth - Block - Level 57
  (465, 46500, 335, 11, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Tangrowth - Toxic - TM06
  (465, 46500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Tangrowth - Hidden Power - TM10
  (465, 46500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Tangrowth - Sunny Day - TM11
  (465, 46500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Tangrowth - Hyper Beam - TM15
  (465, 46500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Tangrowth - Protect - TM17
  (465, 46500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Tangrowth - Frustration - TM21
  (465, 46500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Tangrowth - Solar Beam - TM22
  (465, 46500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Tangrowth - Earthquake - TM26
  (465, 46500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 26),
  -- Tangrowth - Return - TM27
  (465, 46500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Tangrowth - Brick Break - TM31
  (465, 46500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Tangrowth - Double Team - TM32
  (465, 46500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Tangrowth - Reflect - TM33
  (465, 46500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Tangrowth - Sludge Bomb - TM36
  (465, 46500, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 31),
  -- Tangrowth - Rock Tomb - TM39
  (465, 46500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Tangrowth - Aerial Ace - TM40
  (465, 46500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Tangrowth - Facade - TM42
  (465, 46500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Tangrowth - Rest - TM44
  (465, 46500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Tangrowth - Attract - TM45
  (465, 46500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Tangrowth - Thief - TM46
  (465, 46500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Tangrowth - Round - TM48
  (465, 46500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Tangrowth - Focus Blast - TM52
  (465, 46500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 39),
  -- Tangrowth - Energy Ball - TM53
  (465, 46500, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 40),
  -- Tangrowth - Fling - TM56
  (465, 46500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Tangrowth - Payback - TM66
  (465, 46500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 42),
  -- Tangrowth - Giga Impact - TM68
  (465, 46500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 43),
  -- Tangrowth - Flash - TM70
  (465, 46500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 44),
  -- Tangrowth - Swords Dance - TM75
  (465, 46500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 45),
  -- Tangrowth - Psych Up - TM77
  (465, 46500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 46),
  -- Tangrowth - Bulldoze - TM78
  (465, 46500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 47),
  -- Tangrowth - Rock Slide - TM80
  (465, 46500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 48),
  -- Tangrowth - Poison Jab - TM84
  (465, 46500, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 49),
  -- Tangrowth - Grass Knot - TM86
  (465, 46500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 50),
  -- Tangrowth - Swagger - TM87
  (465, 46500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Tangrowth - Substitute - TM90
  (465, 46500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Tangrowth - Rock Smash - TM94
  (465, 46500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Tangrowth - Cut - HM01
  (465, 46500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Tangrowth - Strength - HM04
  (465, 46500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 55),
  -- Electivire - Fire Punch - Level 1
  (466, 46600, 7, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Low Kick - Level 1
  (466, 46600, 67, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electivire - Thunder Shock - Level 6
  (466, 46600, 84, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Electivire - Low Kick - Level 11
  (466, 46600, 67, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Electivire - Swift - Level 16
  (466, 46600, 129, 11, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Electivire - Shock Wave - Level 21
  (466, 46600, 351, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Electivire - Electro Ball - Level 32
  (466, 46600, 486, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Electivire - Light Screen - Level 26
  (466, 46600, 113, 11, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Electivire - Thunder Punch - Level 38
  (466, 46600, 9, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Electivire - Discharge - Level 44
  (466, 46600, 435, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Electivire - Screech - Level 56
  (466, 46600, 103, 11, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Electivire - Thunderbolt - Level 50
  (466, 46600, 85, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Electivire - Thunder - Level 62
  (466, 46600, 87, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Electivire - Giga Impact - Level 68
  (466, 46600, 416, 11, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Electivire - Toxic - TM06
  (466, 46600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Electivire - Hidden Power - TM10
  (466, 46600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Electivire - Taunt - TM12
  (466, 46600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Electivire - Hyper Beam - TM15
  (466, 46600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Electivire - Light Screen - TM16
  (466, 46600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Electivire - Protect - TM17
  (466, 46600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Electivire - Rain Dance - TM18
  (466, 46600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Electivire - Frustration - TM21
  (466, 46600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Electivire - Thunderbolt - TM24
  (466, 46600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Electivire - Thunder - TM25
  (466, 46600, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 27),
  -- Electivire - Earthquake - TM26
  (466, 46600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Electivire - Return - TM27
  (466, 46600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Electivire - Dig - TM28
  (466, 46600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Electivire - Psychic - TM29
  (466, 46600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Electivire - Brick Break - TM31
  (466, 46600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 32),
  -- Electivire - Double Team - TM32
  (466, 46600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Electivire - Flamethrower - TM35
  (466, 46600, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 34),
  -- Electivire - Rock Tomb - TM39
  (466, 46600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Electivire - Torment - TM41
  (466, 46600, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 36),
  -- Electivire - Facade - TM42
  (466, 46600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Electivire - Rest - TM44
  (466, 46600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Electivire - Attract - TM45
  (466, 46600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Electivire - Thief - TM46
  (466, 46600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 40),
  -- Electivire - Low Sweep - TM47
  (466, 46600, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 41),
  -- Electivire - Round - TM48
  (466, 46600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Electivire - Focus Blast - TM52
  (466, 46600, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 43),
  -- Electivire - Fling - TM56
  (466, 46600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 44),
  -- Electivire - Charge Beam - TM57
  (466, 46600, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 45),
  -- Electivire - Giga Impact - TM68
  (466, 46600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 46),
  -- Electivire - Flash - TM70
  (466, 46600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 47),
  -- Electivire - Volt Switch - TM72
  (466, 46600, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 48),
  -- Electivire - Thunder Wave - TM73
  (466, 46600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 49),
  -- Electivire - Bulldoze - TM78
  (466, 46600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 50),
  -- Electivire - Rock Slide - TM80
  (466, 46600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Electivire - Swagger - TM87
  (466, 46600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Electivire - Substitute - TM90
  (466, 46600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Electivire - Wild Charge - TM93
  (466, 46600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 54),
  -- Electivire - Rock Smash - TM94
  (466, 46600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 55),
  -- Electivire - Strength - HM04
  (466, 46600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Magmortar - Thunder Punch - Level 1
  (467, 46700, 9, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magmortar - Ember - Level 6
  (467, 46700, 52, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Magmortar - Smokescreen - Level 11
  (467, 46700, 108, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Magmortar - Feint Attack - Level 16
  (467, 46700, 185, 11, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Spin - Level 21
  (467, 46700, 83, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Magmortar - Flame Burst - Level 32
  (467, 46700, 481, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magmortar - Confuse Ray - Level 26
  (467, 46700, 109, 11, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Magmortar - Fire Punch - Level 38
  (467, 46700, 7, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Magmortar - Lava Plume - Level 44
  (467, 46700, 436, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magmortar - Sunny Day - Level 56
  (467, 46700, 241, 11, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Magmortar - Flamethrower - Level 50
  (467, 46700, 53, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Magmortar - Fire Blast - Level 62
  (467, 46700, 126, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Magmortar - Hyper Beam - Level 68
  (467, 46700, 63, 11, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Magmortar - Toxic - TM06
  (467, 46700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Magmortar - Hidden Power - TM10
  (467, 46700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Magmortar - Sunny Day - TM11
  (467, 46700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Magmortar - Taunt - TM12
  (467, 46700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Magmortar - Hyper Beam - TM15
  (467, 46700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Magmortar - Protect - TM17
  (467, 46700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Magmortar - Frustration - TM21
  (467, 46700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Magmortar - Solar Beam - TM22
  (467, 46700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Magmortar - Thunderbolt - TM24
  (467, 46700, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Magmortar - Earthquake - TM26
  (467, 46700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Magmortar - Return - TM27
  (467, 46700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Magmortar - Psychic - TM29
  (467, 46700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Magmortar - Brick Break - TM31
  (467, 46700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Magmortar - Double Team - TM32
  (467, 46700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Magmortar - Flamethrower - TM35
  (467, 46700, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 32),
  -- Magmortar - Fire Blast - TM38
  (467, 46700, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 33),
  -- Magmortar - Rock Tomb - TM39
  (467, 46700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Magmortar - Torment - TM41
  (467, 46700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Magmortar - Facade - TM42
  (467, 46700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Magmortar - Flame Charge - TM43
  (467, 46700, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 37),
  -- Magmortar - Rest - TM44
  (467, 46700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Magmortar - Attract - TM45
  (467, 46700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Magmortar - Thief - TM46
  (467, 46700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 40),
  -- Magmortar - Low Sweep - TM47
  (467, 46700, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 41),
  -- Magmortar - Round - TM48
  (467, 46700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Magmortar - Overheat - TM50
  (467, 46700, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 43),
  -- Magmortar - Focus Blast - TM52
  (467, 46700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 44),
  -- Magmortar - Fling - TM56
  (467, 46700, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Magmortar - Incinerate - TM59
  (467, 46700, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 46),
  -- Magmortar - Will-O-Wisp - TM61
  (467, 46700, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 47),
  -- Magmortar - Giga Impact - TM68
  (467, 46700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Magmortar - Bulldoze - TM78
  (467, 46700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 49),
  -- Magmortar - Rock Slide - TM80
  (467, 46700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 50),
  -- Magmortar - Swagger - TM87
  (467, 46700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Magmortar - Substitute - TM90
  (467, 46700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Magmortar - Rock Smash - TM94
  (467, 46700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Magmortar - Strength - HM04
  (467, 46700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 54),
  -- Togekiss - Sky Attack - Level 1
  (468, 46800, 143, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Extreme Speed - Level 1
  (468, 46800, 245, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togekiss - Aura Sphere - Level 1
  (468, 46800, 396, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togekiss - Air Slash - Level 1
  (468, 46800, 403, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togekiss - Psyshock - TM03
  (468, 46800, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 5),
  -- Togekiss - Toxic - TM06
  (468, 46800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 6),
  -- Togekiss - Hidden Power - TM10
  (468, 46800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 7),
  -- Togekiss - Sunny Day - TM11
  (468, 46800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 8),
  -- Togekiss - Hyper Beam - TM15
  (468, 46800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 9),
  -- Togekiss - Light Screen - TM16
  (468, 46800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 10),
  -- Togekiss - Protect - TM17
  (468, 46800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 11),
  -- Togekiss - Rain Dance - TM18
  (468, 46800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 12),
  -- Togekiss - Telekinesis - TM19
  (468, 46800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 13),
  -- Togekiss - Safeguard - TM20
  (468, 46800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 14),
  -- Togekiss - Frustration - TM21
  (468, 46800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 15),
  -- Togekiss - Solar Beam - TM22
  (468, 46800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 16),
  -- Togekiss - Return - TM27
  (468, 46800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 17),
  -- Togekiss - Psychic - TM29
  (468, 46800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 18),
  -- Togekiss - Shadow Ball - TM30
  (468, 46800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 19),
  -- Togekiss - Brick Break - TM31
  (468, 46800, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 20),
  -- Togekiss - Double Team - TM32
  (468, 46800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 21),
  -- Togekiss - Reflect - TM33
  (468, 46800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 22),
  -- Togekiss - Flamethrower - TM35
  (468, 46800, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 23),
  -- Togekiss - Fire Blast - TM38
  (468, 46800, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 24),
  -- Togekiss - Aerial Ace - TM40
  (468, 46800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 25),
  -- Togekiss - Facade - TM42
  (468, 46800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Togekiss - Rest - TM44
  (468, 46800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Togekiss - Attract - TM45
  (468, 46800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Togekiss - Round - TM48
  (468, 46800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Togekiss - Echoed Voice - TM49
  (468, 46800, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 30),
  -- Togekiss - Fling - TM56
  (468, 46800, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 31),
  -- Togekiss - Incinerate - TM59
  (468, 46800, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 32),
  -- Togekiss - Retaliate - TM67
  (468, 46800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 33),
  -- Togekiss - Giga Impact - TM68
  (468, 46800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 34),
  -- Togekiss - Flash - TM70
  (468, 46800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Togekiss - Thunder Wave - TM73
  (468, 46800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 36),
  -- Togekiss - Psych Up - TM77
  (468, 46800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 37),
  -- Togekiss - Work Up - TM83
  (468, 46800, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 38),
  -- Togekiss - Dream Eater - TM85
  (468, 46800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Togekiss - Grass Knot - TM86
  (468, 46800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 40),
  -- Togekiss - Swagger - TM87
  (468, 46800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Togekiss - Pluck - TM88
  (468, 46800, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 42),
  -- Togekiss - Substitute - TM90
  (468, 46800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Togekiss - Rock Smash - TM94
  (468, 46800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Togekiss - Fly - HM02
  (468, 46800, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 45),
  -- Yanmega - Night Slash - Level 1
  (469, 46900, 400, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanmega - Bug Bite - Level 1
  (469, 46900, 450, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanmega - Tackle - Level 1
  (469, 46900, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Yanmega - Foresight - Level 1
  (469, 46900, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Yanmega - Quick Attack - Level 1
  (469, 46900, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Yanmega - Double Team - Level 1
  (469, 46900, 104, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Yanmega - Quick Attack - Level 6
  (469, 46900, 98, 11, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Yanmega - Double Team - Level 11
  (469, 46900, 104, 11, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Yanmega - Sonic Boom - Level 14
  (469, 46900, 49, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Yanmega - Detect - Level 17
  (469, 46900, 197, 11, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Yanmega - Supersonic - Level 22
  (469, 46900, 48, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Yanmega - Uproar - Level 27
  (469, 46900, 253, 11, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Yanmega - Pursuit - Level 30
  (469, 46900, 228, 11, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Yanmega - Ancient Power - Level 33
  (469, 46900, 246, 11, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Yanmega - Feint - Level 38
  (469, 46900, 364, 11, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Yanmega - Slash - Level 43
  (469, 46900, 163, 11, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Yanmega - Screech - Level 46
  (469, 46900, 103, 11, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Yanmega - U-turn - Level 49
  (469, 46900, 369, 11, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Yanmega - Air Slash - Level 54
  (469, 46900, 403, 11, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Yanmega - Bug Buzz - Level 57
  (469, 46900, 405, 11, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Yanmega - Toxic - TM06
  (469, 46900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Yanmega - Hidden Power - TM10
  (469, 46900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Yanmega - Sunny Day - TM11
  (469, 46900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Yanmega - Hyper Beam - TM15
  (469, 46900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Yanmega - Protect - TM17
  (469, 46900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Yanmega - Frustration - TM21
  (469, 46900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Yanmega - Solar Beam - TM22
  (469, 46900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Yanmega - Return - TM27
  (469, 46900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Yanmega - Psychic - TM29
  (469, 46900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Yanmega - Shadow Ball - TM30
  (469, 46900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Yanmega - Double Team - TM32
  (469, 46900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Yanmega - Aerial Ace - TM40
  (469, 46900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Yanmega - Facade - TM42
  (469, 46900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Yanmega - Rest - TM44
  (469, 46900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Yanmega - Attract - TM45
  (469, 46900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Yanmega - Thief - TM46
  (469, 46900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Yanmega - Round - TM48
  (469, 46900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Yanmega - Giga Impact - TM68
  (469, 46900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Yanmega - Flash - TM70
  (469, 46900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Yanmega - Struggle Bug - TM76
  (469, 46900, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 40),
  -- Yanmega - Psych Up - TM77
  (469, 46900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 41),
  -- Yanmega - Dream Eater - TM85
  (469, 46900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 42),
  -- Yanmega - Swagger - TM87
  (469, 46900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Yanmega - U-turn - TM89
  (469, 46900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 44),
  -- Yanmega - Substitute - TM90
  (469, 46900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Sand Attack - Level 8
  (470, 47000, 28, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Leafeon - Razor Leaf - Level 15
  (470, 47000, 75, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Leafeon - Quick Attack - Level 22
  (470, 47000, 98, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Leafeon - Grass Whistle - Level 57
  (470, 47000, 320, 11, NULL, 1, 57, NULL, NULL, NULL, 7),
  -- Leafeon - Magical Leaf - Level 36
  (470, 47000, 345, 11, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Leafeon - Giga Drain - Level 43
  (470, 47000, 202, 11, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Leafeon - Swords Dance - Level 78
  (470, 47000, 14, 11, NULL, 1, 78, NULL, NULL, NULL, 10),
  -- Leafeon - Synthesis - Level 29
  (470, 47000, 235, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Leafeon - Sunny Day - Level 64
  (470, 47000, 241, 11, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Leafeon - Last Resort - Level 50
  (470, 47000, 387, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Leafeon - Leaf Blade - Level 71
  (470, 47000, 348, 11, NULL, 1, 71, NULL, NULL, NULL, 14),
  -- Leafeon - Roar - TM05
  (470, 47000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 15),
  -- Leafeon - Toxic - TM06
  (470, 47000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Leafeon - Hidden Power - TM10
  (470, 47000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Leafeon - Sunny Day - TM11
  (470, 47000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Leafeon - Hyper Beam - TM15
  (470, 47000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Leafeon - Protect - TM17
  (470, 47000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Leafeon - Rain Dance - TM18
  (470, 47000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Leafeon - Frustration - TM21
  (470, 47000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Leafeon - Solar Beam - TM22
  (470, 47000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Leafeon - Return - TM27
  (470, 47000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Leafeon - Dig - TM28
  (470, 47000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Leafeon - Shadow Ball - TM30
  (470, 47000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Leafeon - Double Team - TM32
  (470, 47000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Leafeon - Aerial Ace - TM40
  (470, 47000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 28),
  -- Leafeon - Facade - TM42
  (470, 47000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Leafeon - Rest - TM44
  (470, 47000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Leafeon - Attract - TM45
  (470, 47000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Leafeon - Round - TM48
  (470, 47000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Leafeon - Echoed Voice - TM49
  (470, 47000, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 33),
  -- Leafeon - Energy Ball - TM53
  (470, 47000, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 34),
  -- Leafeon - Retaliate - TM67
  (470, 47000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 35),
  -- Leafeon - Giga Impact - TM68
  (470, 47000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Leafeon - Flash - TM70
  (470, 47000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 37),
  -- Leafeon - Swords Dance - TM75
  (470, 47000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 38),
  -- Leafeon - X-Scissor - TM81
  (470, 47000, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 39),
  -- Leafeon - Work Up - TM83
  (470, 47000, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 40),
  -- Leafeon - Grass Knot - TM86
  (470, 47000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 41),
  -- Leafeon - Swagger - TM87
  (470, 47000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Leafeon - Substitute - TM90
  (470, 47000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Leafeon - Rock Smash - TM94
  (470, 47000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Leafeon - Strength - HM04
  (470, 47000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 45),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Sand Attack - Level 8
  (471, 47100, 28, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Glaceon - Icy Wind - Level 15
  (471, 47100, 196, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Glaceon - Quick Attack - Level 22
  (471, 47100, 98, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Glaceon - Bite - Level 29
  (471, 47100, 44, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Glaceon - Ice Fang - Level 43
  (471, 47100, 423, 11, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Glaceon - Ice Shard - Level 36
  (471, 47100, 420, 11, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Glaceon - Barrier - Level 78
  (471, 47100, 112, 11, NULL, 1, 78, NULL, NULL, NULL, 10),
  -- Glaceon - Mirror Coat - Level 57
  (471, 47100, 243, 11, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Glaceon - Hail - Level 64
  (471, 47100, 258, 11, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Glaceon - Last Resort - Level 50
  (471, 47100, 387, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Glaceon - Blizzard - Level 71
  (471, 47100, 59, 11, NULL, 1, 71, NULL, NULL, NULL, 14),
  -- Glaceon - Roar - TM05
  (471, 47100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 15),
  -- Glaceon - Toxic - TM06
  (471, 47100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Glaceon - Hail - TM07
  (471, 47100, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Glaceon - Hidden Power - TM10
  (471, 47100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Glaceon - Sunny Day - TM11
  (471, 47100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Glaceon - Ice Beam - TM13
  (471, 47100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Glaceon - Blizzard - TM14
  (471, 47100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Glaceon - Hyper Beam - TM15
  (471, 47100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Glaceon - Protect - TM17
  (471, 47100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Glaceon - Rain Dance - TM18
  (471, 47100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Glaceon - Frustration - TM21
  (471, 47100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Glaceon - Return - TM27
  (471, 47100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Glaceon - Dig - TM28
  (471, 47100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Glaceon - Shadow Ball - TM30
  (471, 47100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Glaceon - Double Team - TM32
  (471, 47100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Glaceon - Facade - TM42
  (471, 47100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Glaceon - Rest - TM44
  (471, 47100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Glaceon - Attract - TM45
  (471, 47100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Glaceon - Round - TM48
  (471, 47100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Glaceon - Echoed Voice - TM49
  (471, 47100, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 34),
  -- Glaceon - Retaliate - TM67
  (471, 47100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 35),
  -- Glaceon - Giga Impact - TM68
  (471, 47100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Glaceon - Frost Breath - TM79
  (471, 47100, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 37),
  -- Glaceon - Work Up - TM83
  (471, 47100, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 38),
  -- Glaceon - Swagger - TM87
  (471, 47100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Glaceon - Substitute - TM90
  (471, 47100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Glaceon - Rock Smash - TM94
  (471, 47100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 41),
  -- Glaceon - Strength - HM04
  (471, 47100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 42),
  -- Gliscor - Thunder Fang - Level 1
  (472, 47200, 422, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gliscor - Ice Fang - Level 1
  (472, 47200, 423, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gliscor - Fire Fang - Level 1
  (472, 47200, 424, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gliscor - Poison Jab - Level 1
  (472, 47200, 398, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gliscor - Sand Attack - Level 1
  (472, 47200, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gliscor - Harden - Level 1
  (472, 47200, 106, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gliscor - Knock Off - Level 1
  (472, 47200, 282, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gliscor - Sand Attack - Level 5
  (472, 47200, 28, 11, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Gliscor - Harden - Level 9
  (472, 47200, 106, 11, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Gliscor - Knock Off - Level 12
  (472, 47200, 282, 11, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Gliscor - Quick Attack - Level 16
  (472, 47200, 98, 11, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Gliscor - Fury Cutter - Level 20
  (472, 47200, 210, 11, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Gliscor - Feint Attack - Level 23
  (472, 47200, 185, 11, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Gliscor - Acrobatics - Level 27
  (472, 47200, 512, 11, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Gliscor - Night Slash - Level 34
  (472, 47200, 400, 11, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gliscor - U-turn - Level 42
  (472, 47200, 369, 11, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Gliscor - Screech - Level 31
  (472, 47200, 103, 11, NULL, 1, 31, NULL, NULL, NULL, 17),
  -- Gliscor - X-Scissor - Level 45
  (472, 47200, 404, 11, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Gliscor - Swords Dance - Level 38
  (472, 47200, 14, 11, NULL, 1, 38, NULL, NULL, NULL, 19),
  -- Gliscor - Guillotine - Level 49
  (472, 47200, 12, 11, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Gliscor - Hone Claws - TM01
  (472, 47200, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 21),
  -- Gliscor - Toxic - TM06
  (472, 47200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Gliscor - Venoshock - TM09
  (472, 47200, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 23),
  -- Gliscor - Hidden Power - TM10
  (472, 47200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Gliscor - Sunny Day - TM11
  (472, 47200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 25),
  -- Gliscor - Taunt - TM12
  (472, 47200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 26),
  -- Gliscor - Hyper Beam - TM15
  (472, 47200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 27),
  -- Gliscor - Protect - TM17
  (472, 47200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Gliscor - Rain Dance - TM18
  (472, 47200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 29),
  -- Gliscor - Frustration - TM21
  (472, 47200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Gliscor - Earthquake - TM26
  (472, 47200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 31),
  -- Gliscor - Return - TM27
  (472, 47200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Gliscor - Dig - TM28
  (472, 47200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 33),
  -- Gliscor - Brick Break - TM31
  (472, 47200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Gliscor - Double Team - TM32
  (472, 47200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Gliscor - Sludge Bomb - TM36
  (472, 47200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 36),
  -- Gliscor - Sandstorm - TM37
  (472, 47200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 37),
  -- Gliscor - Rock Tomb - TM39
  (472, 47200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Gliscor - Aerial Ace - TM40
  (472, 47200, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Gliscor - Torment - TM41
  (472, 47200, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 40),
  -- Gliscor - Facade - TM42
  (472, 47200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Gliscor - Rest - TM44
  (472, 47200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 42),
  -- Gliscor - Attract - TM45
  (472, 47200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 43),
  -- Gliscor - Thief - TM46
  (472, 47200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 44),
  -- Gliscor - Round - TM48
  (472, 47200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 45),
  -- Gliscor - False Swipe - TM54
  (472, 47200, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 46),
  -- Gliscor - Fling - TM56
  (472, 47200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 47),
  -- Gliscor - Acrobatics - TM62
  (472, 47200, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 48),
  -- Gliscor - Payback - TM66
  (472, 47200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 49),
  -- Gliscor - Giga Impact - TM68
  (472, 47200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 50),
  -- Gliscor - Rock Polish - TM69
  (472, 47200, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 51),
  -- Gliscor - Stone Edge - TM71
  (472, 47200, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 52),
  -- Gliscor - Swords Dance - TM75
  (472, 47200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 53),
  -- Gliscor - Struggle Bug - TM76
  (472, 47200, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 54),
  -- Gliscor - Bulldoze - TM78
  (472, 47200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 55),
  -- Gliscor - Rock Slide - TM80
  (472, 47200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 56),
  -- Gliscor - X-Scissor - TM81
  (472, 47200, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 57),
  -- Gliscor - Poison Jab - TM84
  (472, 47200, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 58),
  -- Gliscor - Swagger - TM87
  (472, 47200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 59),
  -- Gliscor - U-turn - TM89
  (472, 47200, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 60),
  -- Gliscor - Substitute - TM90
  (472, 47200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 61),
  -- Gliscor - Rock Smash - TM94
  (472, 47200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Gliscor - Cut - HM01
  (472, 47200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 63),
  -- Gliscor - Strength - HM04
  (472, 47200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 64),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Peck - Level 1
  (473, 47300, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Odor Sleuth - Level 1
  (473, 47300, 316, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Mud Sport - Level 1
  (473, 47300, 300, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Mud Sport - Level 4
  (473, 47300, 300, 11, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Mamoswine - Powder Snow - Level 8
  (473, 47300, 181, 11, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Mamoswine - Mud-Slap - Level 13
  (473, 47300, 189, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Mamoswine - Endure - Level 16
  (473, 47300, 203, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Mamoswine - Mud Bomb - Level 20
  (473, 47300, 426, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Mamoswine - Hail - Level 25
  (473, 47300, 258, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Mamoswine - Ice Fang - Level 28
  (473, 47300, 423, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Mamoswine - Take Down - Level 32
  (473, 47300, 36, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mamoswine - Double Hit - Level 33
  (473, 47300, 458, 11, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mamoswine - Mist - Level 48
  (473, 47300, 54, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Mamoswine - Earthquake - Level 40
  (473, 47300, 89, 11, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Mamoswine - Blizzard - Level 56
  (473, 47300, 59, 11, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Mamoswine - Scary Face - Level 65
  (473, 47300, 184, 11, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Mamoswine - Roar - TM05
  (473, 47300, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Mamoswine - Toxic - TM06
  (473, 47300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Mamoswine - Hail - TM07
  (473, 47300, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 21),
  -- Mamoswine - Hidden Power - TM10
  (473, 47300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Mamoswine - Ice Beam - TM13
  (473, 47300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Mamoswine - Blizzard - TM14
  (473, 47300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Mamoswine - Hyper Beam - TM15
  (473, 47300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Mamoswine - Light Screen - TM16
  (473, 47300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 26),
  -- Mamoswine - Protect - TM17
  (473, 47300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Mamoswine - Rain Dance - TM18
  (473, 47300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Mamoswine - Frustration - TM21
  (473, 47300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Mamoswine - Earthquake - TM26
  (473, 47300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Mamoswine - Return - TM27
  (473, 47300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Mamoswine - Dig - TM28
  (473, 47300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 32),
  -- Mamoswine - Double Team - TM32
  (473, 47300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Mamoswine - Reflect - TM33
  (473, 47300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Mamoswine - Sandstorm - TM37
  (473, 47300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 35),
  -- Mamoswine - Rock Tomb - TM39
  (473, 47300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 36),
  -- Mamoswine - Facade - TM42
  (473, 47300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Mamoswine - Rest - TM44
  (473, 47300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Mamoswine - Attract - TM45
  (473, 47300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Mamoswine - Round - TM48
  (473, 47300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Mamoswine - Giga Impact - TM68
  (473, 47300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Mamoswine - Stone Edge - TM71
  (473, 47300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 42),
  -- Mamoswine - Bulldoze - TM78
  (473, 47300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Mamoswine - Rock Slide - TM80
  (473, 47300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 44),
  -- Mamoswine - Swagger - TM87
  (473, 47300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Mamoswine - Substitute - TM90
  (473, 47300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Mamoswine - Rock Smash - TM94
  (473, 47300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 47),
  -- Mamoswine - Strength - HM04
  (473, 47300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 48),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Conversion 2 - Level 1
  (474, 47400, 176, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Psybeam - Level 7
  (474, 47400, 60, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Porygon-Z - Agility - Level 12
  (474, 47400, 97, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Porygon-Z - Recover - Level 18
  (474, 47400, 105, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Porygon-Z - Magnet Rise - Level 23
  (474, 47400, 393, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Porygon-Z - Signal Beam - Level 29
  (474, 47400, 324, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Porygon-Z - Embargo - Level 34
  (474, 47400, 373, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Porygon-Z - Lock-On - Level 45
  (474, 47400, 199, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Porygon-Z - Tri Attack - Level 51
  (474, 47400, 161, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Porygon-Z - Magic Coat - Level 56
  (474, 47400, 277, 11, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Porygon-Z - Zap Cannon - Level 62
  (474, 47400, 192, 11, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Porygon-Z - Hyper Beam - Level 67
  (474, 47400, 63, 11, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Porygon-Z - Psyshock - TM03
  (474, 47400, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 18),
  -- Porygon-Z - Toxic - TM06
  (474, 47400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Porygon-Z - Hidden Power - TM10
  (474, 47400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Porygon-Z - Sunny Day - TM11
  (474, 47400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Porygon-Z - Ice Beam - TM13
  (474, 47400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Porygon-Z - Blizzard - TM14
  (474, 47400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Porygon-Z - Hyper Beam - TM15
  (474, 47400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Porygon-Z - Protect - TM17
  (474, 47400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Porygon-Z - Rain Dance - TM18
  (474, 47400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Porygon-Z - Frustration - TM21
  (474, 47400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Porygon-Z - Solar Beam - TM22
  (474, 47400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 28),
  -- Porygon-Z - Thunderbolt - TM24
  (474, 47400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Porygon-Z - Thunder - TM25
  (474, 47400, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Porygon-Z - Return - TM27
  (474, 47400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Porygon-Z - Psychic - TM29
  (474, 47400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 32),
  -- Porygon-Z - Shadow Ball - TM30
  (474, 47400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Porygon-Z - Double Team - TM32
  (474, 47400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Porygon-Z - Aerial Ace - TM40
  (474, 47400, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 35),
  -- Porygon-Z - Facade - TM42
  (474, 47400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Porygon-Z - Rest - TM44
  (474, 47400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Porygon-Z - Thief - TM46
  (474, 47400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Porygon-Z - Round - TM48
  (474, 47400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Porygon-Z - Charge Beam - TM57
  (474, 47400, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 40),
  -- Porygon-Z - Embargo - TM63
  (474, 47400, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 41),
  -- Porygon-Z - Giga Impact - TM68
  (474, 47400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 42),
  -- Porygon-Z - Flash - TM70
  (474, 47400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 43),
  -- Porygon-Z - Thunder Wave - TM73
  (474, 47400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 44),
  -- Porygon-Z - Psych Up - TM77
  (474, 47400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 45),
  -- Porygon-Z - Dream Eater - TM85
  (474, 47400, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 46),
  -- Porygon-Z - Swagger - TM87
  (474, 47400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Porygon-Z - Substitute - TM90
  (474, 47400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Porygon-Z - Trick Room - TM92
  (474, 47400, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 49),
  -- Gallade - Leaf Blade - Level 1
  (475, 47500, 348, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Leer - Level 1
  (475, 47500, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Teleport - Level 1
  (475, 47500, 100, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Confusion - Level 6
  (475, 47500, 93, 11, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Gallade - Double Team - Level 10
  (475, 47500, 104, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Gallade - Teleport - Level 12
  (475, 47500, 100, 11, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Gallade - Fury Cutter - Level 17
  (475, 47500, 210, 11, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Gallade - Slash - Level 22
  (475, 47500, 163, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Gallade - Heal Pulse - Level 25
  (475, 47500, 505, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gallade - Swords Dance - Level 31
  (475, 47500, 14, 11, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Gallade - Psycho Cut - Level 36
  (475, 47500, 427, 11, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gallade - Helping Hand - Level 39
  (475, 47500, 270, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Gallade - Feint - Level 45
  (475, 47500, 364, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Gallade - False Swipe - Level 50
  (475, 47500, 206, 11, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Gallade - Protect - Level 53
  (475, 47500, 182, 11, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Gallade - Close Combat - Level 59
  (475, 47500, 370, 11, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Gallade - Stored Power - Level 64
  (475, 47500, 500, 11, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Gallade - Psyshock - TM03
  (475, 47500, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 21),
  -- Gallade - Calm Mind - TM04
  (475, 47500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 22),
  -- Gallade - Toxic - TM06
  (475, 47500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Gallade - Bulk Up - TM08
  (475, 47500, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 24),
  -- Gallade - Hidden Power - TM10
  (475, 47500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Gallade - Sunny Day - TM11
  (475, 47500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 26),
  -- Gallade - Taunt - TM12
  (475, 47500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 27),
  -- Gallade - Hyper Beam - TM15
  (475, 47500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 28),
  -- Gallade - Light Screen - TM16
  (475, 47500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 29),
  -- Gallade - Protect - TM17
  (475, 47500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 30),
  -- Gallade - Rain Dance - TM18
  (475, 47500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 31),
  -- Gallade - Telekinesis - TM19
  (475, 47500, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 32),
  -- Gallade - Safeguard - TM20
  (475, 47500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 33),
  -- Gallade - Frustration - TM21
  (475, 47500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 34),
  -- Gallade - Thunderbolt - TM24
  (475, 47500, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 35),
  -- Gallade - Earthquake - TM26
  (475, 47500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 36),
  -- Gallade - Return - TM27
  (475, 47500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 37),
  -- Gallade - Psychic - TM29
  (475, 47500, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 38),
  -- Gallade - Shadow Ball - TM30
  (475, 47500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 39),
  -- Gallade - Brick Break - TM31
  (475, 47500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 40),
  -- Gallade - Double Team - TM32
  (475, 47500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 41),
  -- Gallade - Reflect - TM33
  (475, 47500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 42),
  -- Gallade - Rock Tomb - TM39
  (475, 47500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 43),
  -- Gallade - Aerial Ace - TM40
  (475, 47500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 44),
  -- Gallade - Torment - TM41
  (475, 47500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 45),
  -- Gallade - Facade - TM42
  (475, 47500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 46),
  -- Gallade - Rest - TM44
  (475, 47500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 47),
  -- Gallade - Attract - TM45
  (475, 47500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 48),
  -- Gallade - Thief - TM46
  (475, 47500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 49),
  -- Gallade - Low Sweep - TM47
  (475, 47500, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 50),
  -- Gallade - Round - TM48
  (475, 47500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 51),
  -- Gallade - Echoed Voice - TM49
  (475, 47500, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 52),
  -- Gallade - Ally Switch - TM51
  (475, 47500, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 53),
  -- Gallade - Focus Blast - TM52
  (475, 47500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 54),
  -- Gallade - False Swipe - TM54
  (475, 47500, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 55),
  -- Gallade - Fling - TM56
  (475, 47500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 56),
  -- Gallade - Charge Beam - TM57
  (475, 47500, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 57),
  -- Gallade - Will-O-Wisp - TM61
  (475, 47500, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 58),
  -- Gallade - Retaliate - TM67
  (475, 47500, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 59),
  -- Gallade - Giga Impact - TM68
  (475, 47500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 60),
  -- Gallade - Flash - TM70
  (475, 47500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 61),
  -- Gallade - Stone Edge - TM71
  (475, 47500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 62),
  -- Gallade - Thunder Wave - TM73
  (475, 47500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 63),
  -- Gallade - Swords Dance - TM75
  (475, 47500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 64),
  -- Gallade - Psych Up - TM77
  (475, 47500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 65),
  -- Gallade - Bulldoze - TM78
  (475, 47500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 66),
  -- Gallade - Rock Slide - TM80
  (475, 47500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 67),
  -- Gallade - X-Scissor - TM81
  (475, 47500, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 68),
  -- Gallade - Work Up - TM83
  (475, 47500, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 69),
  -- Gallade - Poison Jab - TM84
  (475, 47500, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 70),
  -- Gallade - Dream Eater - TM85
  (475, 47500, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 71),
  -- Gallade - Grass Knot - TM86
  (475, 47500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 72),
  -- Gallade - Swagger - TM87
  (475, 47500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 73),
  -- Gallade - Substitute - TM90
  (475, 47500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 74),
  -- Gallade - Trick Room - TM92
  (475, 47500, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 75),
  -- Gallade - Rock Smash - TM94
  (475, 47500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 76),
  -- Gallade - Cut - HM01
  (475, 47500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 77),
  -- Gallade - Strength - HM04
  (475, 47500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 78),
  -- Probopass - Magnet Rise - Level 1
  (476, 47600, 393, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Probopass - Gravity - Level 1
  (476, 47600, 356, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Probopass - Tackle - Level 1
  (476, 47600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Probopass - Iron Defense - Level 1
  (476, 47600, 334, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Probopass - Block - Level 1
  (476, 47600, 335, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Probopass - Magnet Bomb - Level 1
  (476, 47600, 443, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Probopass - Iron Defense - Level 7
  (476, 47600, 334, 11, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Probopass - Block - Level 19
  (476, 47600, 335, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Probopass - Magnet Bomb - Level 13
  (476, 47600, 443, 11, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Probopass - Thunder Wave - Level 25
  (476, 47600, 86, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Probopass - Rest - Level 43
  (476, 47600, 156, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Probopass - Rock Slide - Level 31
  (476, 47600, 157, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Probopass - Power Gem - Level 49
  (476, 47600, 408, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Probopass - Sandstorm - Level 37
  (476, 47600, 201, 11, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Probopass - Discharge - Level 55
  (476, 47600, 435, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Probopass - Earth Power - Level 79
  (476, 47600, 414, 11, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Probopass - Stone Edge - Level 61
  (476, 47600, 444, 11, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Probopass - Lock-On - Level 73
  (476, 47600, 199, 11, NULL, 1, 73, NULL, NULL, NULL, 18),
  -- Probopass - Zap Cannon - Level 67
  (476, 47600, 192, 11, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Probopass - Toxic - TM06
  (476, 47600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Probopass - Hidden Power - TM10
  (476, 47600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Probopass - Sunny Day - TM11
  (476, 47600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Probopass - Taunt - TM12
  (476, 47600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Probopass - Hyper Beam - TM15
  (476, 47600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Probopass - Protect - TM17
  (476, 47600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Probopass - Frustration - TM21
  (476, 47600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Probopass - Smack Down - TM23
  (476, 47600, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 27),
  -- Probopass - Thunderbolt - TM24
  (476, 47600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Probopass - Thunder - TM25
  (476, 47600, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 29),
  -- Probopass - Earthquake - TM26
  (476, 47600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Probopass - Return - TM27
  (476, 47600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Probopass - Double Team - TM32
  (476, 47600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Probopass - Sandstorm - TM37
  (476, 47600, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 33),
  -- Probopass - Rock Tomb - TM39
  (476, 47600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Probopass - Torment - TM41
  (476, 47600, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Probopass - Facade - TM42
  (476, 47600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Probopass - Rest - TM44
  (476, 47600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Probopass - Attract - TM45
  (476, 47600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Probopass - Round - TM48
  (476, 47600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Probopass - Explosion - TM64
  (476, 47600, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 40),
  -- Probopass - Giga Impact - TM68
  (476, 47600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Probopass - Rock Polish - TM69
  (476, 47600, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 42),
  -- Probopass - Stone Edge - TM71
  (476, 47600, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Probopass - Volt Switch - TM72
  (476, 47600, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 44),
  -- Probopass - Thunder Wave - TM73
  (476, 47600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 45),
  -- Probopass - Bulldoze - TM78
  (476, 47600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 46),
  -- Probopass - Rock Slide - TM80
  (476, 47600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 47),
  -- Probopass - Swagger - TM87
  (476, 47600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Probopass - Substitute - TM90
  (476, 47600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Probopass - Flash Cannon - TM91
  (476, 47600, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 50),
  -- Probopass - Rock Smash - TM94
  (476, 47600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 51),
  -- Probopass - Strength - HM04
  (476, 47600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 52),
  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Night Shade - Level 1
  (477, 47700, 101, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 11, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Disable - Level 6
  (477, 47700, 50, 11, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Dusknoir - Foresight - Level 9
  (477, 47700, 193, 11, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Dusknoir - Astonish - Level 14
  (477, 47700, 310, 11, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dusknoir - Confuse Ray - Level 17
  (477, 47700, 109, 11, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dusknoir - Shadow Sneak - Level 22
  (477, 47700, 425, 11, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dusknoir - Pursuit - Level 25
  (477, 47700, 228, 11, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dusknoir - Curse - Level 30
  (477, 47700, 174, 11, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dusknoir - Will-O-Wisp - Level 33
  (477, 47700, 261, 11, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Dusknoir - Shadow Punch - Level 37
  (477, 47700, 325, 11, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Dusknoir - Hex - Level 42
  (477, 47700, 506, 11, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusknoir - Mean Look - Level 49
  (477, 47700, 212, 11, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Dusknoir - Payback - Level 58
  (477, 47700, 371, 11, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Dusknoir - Future Sight - Level 61
  (477, 47700, 248, 11, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Dusknoir - Calm Mind - TM04
  (477, 47700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 22),
  -- Dusknoir - Toxic - TM06
  (477, 47700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Dusknoir - Hidden Power - TM10
  (477, 47700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Dusknoir - Sunny Day - TM11
  (477, 47700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 25),
  -- Dusknoir - Taunt - TM12
  (477, 47700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 26),
  -- Dusknoir - Ice Beam - TM13
  (477, 47700, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 27),
  -- Dusknoir - Blizzard - TM14
  (477, 47700, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 28),
  -- Dusknoir - Hyper Beam - TM15
  (477, 47700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 29),
  -- Dusknoir - Protect - TM17
  (477, 47700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 30),
  -- Dusknoir - Rain Dance - TM18
  (477, 47700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 31),
  -- Dusknoir - Telekinesis - TM19
  (477, 47700, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 32),
  -- Dusknoir - Frustration - TM21
  (477, 47700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 33),
  -- Dusknoir - Earthquake - TM26
  (477, 47700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 34),
  -- Dusknoir - Return - TM27
  (477, 47700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 35),
  -- Dusknoir - Psychic - TM29
  (477, 47700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 36),
  -- Dusknoir - Shadow Ball - TM30
  (477, 47700, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 37),
  -- Dusknoir - Brick Break - TM31
  (477, 47700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 38),
  -- Dusknoir - Double Team - TM32
  (477, 47700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 39),
  -- Dusknoir - Rock Tomb - TM39
  (477, 47700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 40),
  -- Dusknoir - Torment - TM41
  (477, 47700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 41),
  -- Dusknoir - Facade - TM42
  (477, 47700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 42),
  -- Dusknoir - Rest - TM44
  (477, 47700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 43),
  -- Dusknoir - Attract - TM45
  (477, 47700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 44),
  -- Dusknoir - Thief - TM46
  (477, 47700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 45),
  -- Dusknoir - Round - TM48
  (477, 47700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 46),
  -- Dusknoir - Focus Blast - TM52
  (477, 47700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 47),
  -- Dusknoir - Fling - TM56
  (477, 47700, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 48),
  -- Dusknoir - Charge Beam - TM57
  (477, 47700, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 49),
  -- Dusknoir - Will-O-Wisp - TM61
  (477, 47700, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 50),
  -- Dusknoir - Embargo - TM63
  (477, 47700, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 51),
  -- Dusknoir - Payback - TM66
  (477, 47700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 52),
  -- Dusknoir - Giga Impact - TM68
  (477, 47700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 53),
  -- Dusknoir - Flash - TM70
  (477, 47700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 54),
  -- Dusknoir - Psych Up - TM77
  (477, 47700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 55),
  -- Dusknoir - Bulldoze - TM78
  (477, 47700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 56),
  -- Dusknoir - Rock Slide - TM80
  (477, 47700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 57),
  -- Dusknoir - Dream Eater - TM85
  (477, 47700, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 58),
  -- Dusknoir - Swagger - TM87
  (477, 47700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 59),
  -- Dusknoir - Substitute - TM90
  (477, 47700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 60),
  -- Dusknoir - Trick Room - TM92
  (477, 47700, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 61),
  -- Dusknoir - Rock Smash - TM94
  (477, 47700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Dusknoir - Strength - HM04
  (477, 47700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 63),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Astonish - Level 1
  (478, 47800, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Double Team - Level 4
  (478, 47800, 104, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Froslass - Astonish - Level 10
  (478, 47800, 310, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Froslass - Icy Wind - Level 13
  (478, 47800, 196, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Froslass - Confuse Ray - Level 19
  (478, 47800, 109, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Froslass - Ominous Wind - Level 22
  (478, 47800, 466, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Froslass - Wake-Up Slap - Level 28
  (478, 47800, 358, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Froslass - Captivate - Level 31
  (478, 47800, 445, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Froslass - Ice Shard - Level 37
  (478, 47800, 420, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Froslass - Hail - Level 40
  (478, 47800, 258, 11, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Froslass - Blizzard - Level 51
  (478, 47800, 59, 11, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Froslass - Destiny Bond - Level 59
  (478, 47800, 194, 11, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Froslass - Toxic - TM06
  (478, 47800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Froslass - Hail - TM07
  (478, 47800, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Froslass - Hidden Power - TM10
  (478, 47800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Froslass - Taunt - TM12
  (478, 47800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 19),
  -- Froslass - Ice Beam - TM13
  (478, 47800, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Froslass - Blizzard - TM14
  (478, 47800, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Froslass - Hyper Beam - TM15
  (478, 47800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Froslass - Light Screen - TM16
  (478, 47800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Froslass - Protect - TM17
  (478, 47800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Froslass - Rain Dance - TM18
  (478, 47800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Froslass - Telekinesis - TM19
  (478, 47800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 26),
  -- Froslass - Safeguard - TM20
  (478, 47800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Froslass - Frustration - TM21
  (478, 47800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Froslass - Thunderbolt - TM24
  (478, 47800, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Froslass - Thunder - TM25
  (478, 47800, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Froslass - Return - TM27
  (478, 47800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Froslass - Psychic - TM29
  (478, 47800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 32),
  -- Froslass - Shadow Ball - TM30
  (478, 47800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Froslass - Double Team - TM32
  (478, 47800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Froslass - Torment - TM41
  (478, 47800, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Froslass - Facade - TM42
  (478, 47800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Froslass - Rest - TM44
  (478, 47800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Froslass - Attract - TM45
  (478, 47800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Froslass - Round - TM48
  (478, 47800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Froslass - Fling - TM56
  (478, 47800, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Froslass - Embargo - TM63
  (478, 47800, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 41),
  -- Froslass - Payback - TM66
  (478, 47800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 42),
  -- Froslass - Giga Impact - TM68
  (478, 47800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 43),
  -- Froslass - Flash - TM70
  (478, 47800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 44),
  -- Froslass - Thunder Wave - TM73
  (478, 47800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 45),
  -- Froslass - Psych Up - TM77
  (478, 47800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 46),
  -- Froslass - Frost Breath - TM79
  (478, 47800, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 47),
  -- Froslass - Dream Eater - TM85
  (478, 47800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 48),
  -- Froslass - Swagger - TM87
  (478, 47800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 49),
  -- Froslass - Substitute - TM90
  (478, 47800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 50),
  -- Rotom - Trick - Level 1
  (479, 47900, 271, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Thunder Wave - Level 1
  (479, 47900, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom - Thunder Shock - Level 1
  (479, 47900, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom - Confuse Ray - Level 1
  (479, 47900, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom - Uproar - Level 8
  (479, 47900, 253, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom - Double Team - Level 15
  (479, 47900, 104, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom - Shock Wave - Level 22
  (479, 47900, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom - Ominous Wind - Level 29
  (479, 47900, 466, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom - Substitute - Level 36
  (479, 47900, 164, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom - Electro Ball - Level 43
  (479, 47900, 486, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom - Hex - Level 50
  (479, 47900, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom - Charge - Level 57
  (479, 47900, 268, 11, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom - Discharge - Level 64
  (479, 47900, 435, 11, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom - Toxic - TM06
  (479, 47900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Rotom - Hidden Power - TM10
  (479, 47900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Rotom - Sunny Day - TM11
  (479, 47900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Rotom - Light Screen - TM16
  (479, 47900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Rotom - Protect - TM17
  (479, 47900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Rotom - Rain Dance - TM18
  (479, 47900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Rotom - Telekinesis - TM19
  (479, 47900, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Rotom - Frustration - TM21
  (479, 47900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Rotom - Thunderbolt - TM24
  (479, 47900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Rotom - Thunder - TM25
  (479, 47900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Rotom - Return - TM27
  (479, 47900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rotom - Shadow Ball - TM30
  (479, 47900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Rotom - Double Team - TM32
  (479, 47900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Rotom - Reflect - TM33
  (479, 47900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Rotom - Facade - TM42
  (479, 47900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rotom - Rest - TM44
  (479, 47900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rotom - Thief - TM46
  (479, 47900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Rotom - Round - TM48
  (479, 47900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rotom - Charge Beam - TM57
  (479, 47900, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Rotom - Will-O-Wisp - TM61
  (479, 47900, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Rotom - Flash - TM70
  (479, 47900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Rotom - Volt Switch - TM72
  (479, 47900, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Rotom - Thunder Wave - TM73
  (479, 47900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Rotom - Psych Up - TM77
  (479, 47900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Rotom - Dream Eater - TM85
  (479, 47900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Rotom - Swagger - TM87
  (479, 47900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Rotom - Substitute - TM90
  (479, 47900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Imprison - Level 6
  (480, 48000, 286, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Uxie - Endure - Level 16
  (480, 48000, 203, 11, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Uxie - Swift - Level 21
  (480, 48000, 129, 11, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Uxie - Yawn - Level 31
  (480, 48000, 281, 11, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Uxie - Future Sight - Level 36
  (480, 48000, 248, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Uxie - Amnesia - Level 46
  (480, 48000, 133, 11, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Uxie - Extrasensory - Level 51
  (480, 48000, 326, 11, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Uxie - Flail - Level 61
  (480, 48000, 175, 11, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Uxie - Natural Gift - Level 66
  (480, 48000, 363, 11, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Uxie - Memento - Level 76
  (480, 48000, 262, 11, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Uxie - Psyshock - TM03
  (480, 48000, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 13),
  -- Uxie - Calm Mind - TM04
  (480, 48000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 14),
  -- Uxie - Toxic - TM06
  (480, 48000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Uxie - Hidden Power - TM10
  (480, 48000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Uxie - Sunny Day - TM11
  (480, 48000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Uxie - Hyper Beam - TM15
  (480, 48000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Uxie - Light Screen - TM16
  (480, 48000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 19),
  -- Uxie - Protect - TM17
  (480, 48000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Uxie - Rain Dance - TM18
  (480, 48000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Uxie - Telekinesis - TM19
  (480, 48000, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 22),
  -- Uxie - Safeguard - TM20
  (480, 48000, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Uxie - Frustration - TM21
  (480, 48000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Uxie - Solar Beam - TM22
  (480, 48000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Uxie - Thunderbolt - TM24
  (480, 48000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Uxie - Thunder - TM25
  (480, 48000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 27),
  -- Uxie - Return - TM27
  (480, 48000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Uxie - Psychic - TM29
  (480, 48000, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Uxie - Shadow Ball - TM30
  (480, 48000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Uxie - Double Team - TM32
  (480, 48000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Uxie - Reflect - TM33
  (480, 48000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Uxie - Sandstorm - TM37
  (480, 48000, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 33),
  -- Uxie - Facade - TM42
  (480, 48000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Uxie - Rest - TM44
  (480, 48000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Uxie - Round - TM48
  (480, 48000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Uxie - Energy Ball - TM53
  (480, 48000, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 37),
  -- Uxie - Fling - TM56
  (480, 48000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Uxie - Charge Beam - TM57
  (480, 48000, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 39),
  -- Uxie - Acrobatics - TM62
  (480, 48000, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 40),
  -- Uxie - Giga Impact - TM68
  (480, 48000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Uxie - Flash - TM70
  (480, 48000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 42),
  -- Uxie - Thunder Wave - TM73
  (480, 48000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 43),
  -- Uxie - Psych Up - TM77
  (480, 48000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Uxie - Dream Eater - TM85
  (480, 48000, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 45),
  -- Uxie - Grass Knot - TM86
  (480, 48000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 46),
  -- Uxie - Swagger - TM87
  (480, 48000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Uxie - U-turn - TM89
  (480, 48000, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 48),
  -- Uxie - Substitute - TM90
  (480, 48000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Uxie - Trick Room - TM92
  (480, 48000, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 50),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Imprison - Level 6
  (481, 48100, 286, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Mesprit - Protect - Level 16
  (481, 48100, 182, 11, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mesprit - Swift - Level 21
  (481, 48100, 129, 11, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mesprit - Lucky Chant - Level 31
  (481, 48100, 381, 11, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Mesprit - Future Sight - Level 36
  (481, 48100, 248, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Mesprit - Charm - Level 46
  (481, 48100, 204, 11, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Mesprit - Extrasensory - Level 51
  (481, 48100, 326, 11, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Mesprit - Copycat - Level 61
  (481, 48100, 383, 11, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Mesprit - Natural Gift - Level 66
  (481, 48100, 363, 11, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Mesprit - Healing Wish - Level 76
  (481, 48100, 361, 11, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Mesprit - Psyshock - TM03
  (481, 48100, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 13),
  -- Mesprit - Calm Mind - TM04
  (481, 48100, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 14),
  -- Mesprit - Toxic - TM06
  (481, 48100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Mesprit - Hidden Power - TM10
  (481, 48100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Mesprit - Sunny Day - TM11
  (481, 48100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Mesprit - Ice Beam - TM13
  (481, 48100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Mesprit - Blizzard - TM14
  (481, 48100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 19),
  -- Mesprit - Hyper Beam - TM15
  (481, 48100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Mesprit - Light Screen - TM16
  (481, 48100, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Mesprit - Protect - TM17
  (481, 48100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Mesprit - Rain Dance - TM18
  (481, 48100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Mesprit - Telekinesis - TM19
  (481, 48100, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Mesprit - Safeguard - TM20
  (481, 48100, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Mesprit - Frustration - TM21
  (481, 48100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Mesprit - Thunderbolt - TM24
  (481, 48100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Mesprit - Thunder - TM25
  (481, 48100, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Mesprit - Return - TM27
  (481, 48100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Mesprit - Psychic - TM29
  (481, 48100, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Mesprit - Shadow Ball - TM30
  (481, 48100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Mesprit - Double Team - TM32
  (481, 48100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Mesprit - Reflect - TM33
  (481, 48100, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 33),
  -- Mesprit - Sandstorm - TM37
  (481, 48100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 34),
  -- Mesprit - Facade - TM42
  (481, 48100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Mesprit - Rest - TM44
  (481, 48100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Mesprit - Round - TM48
  (481, 48100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Mesprit - Energy Ball - TM53
  (481, 48100, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 38),
  -- Mesprit - Fling - TM56
  (481, 48100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Mesprit - Charge Beam - TM57
  (481, 48100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 40),
  -- Mesprit - Acrobatics - TM62
  (481, 48100, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 41),
  -- Mesprit - Giga Impact - TM68
  (481, 48100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 42),
  -- Mesprit - Flash - TM70
  (481, 48100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 43),
  -- Mesprit - Thunder Wave - TM73
  (481, 48100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 44),
  -- Mesprit - Psych Up - TM77
  (481, 48100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 45),
  -- Mesprit - Dream Eater - TM85
  (481, 48100, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 46),
  -- Mesprit - Grass Knot - TM86
  (481, 48100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 47),
  -- Mesprit - Swagger - TM87
  (481, 48100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Mesprit - U-turn - TM89
  (481, 48100, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 49),
  -- Mesprit - Substitute - TM90
  (481, 48100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 50),
  -- Mesprit - Trick Room - TM92
  (481, 48100, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 51),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Imprison - Level 6
  (482, 48200, 286, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Azelf - Detect - Level 16
  (482, 48200, 197, 11, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Azelf - Swift - Level 21
  (482, 48200, 129, 11, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Azelf - Uproar - Level 31
  (482, 48200, 253, 11, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Azelf - Future Sight - Level 36
  (482, 48200, 248, 11, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Azelf - Nasty Plot - Level 46
  (482, 48200, 417, 11, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Azelf - Extrasensory - Level 51
  (482, 48200, 326, 11, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Azelf - Last Resort - Level 61
  (482, 48200, 387, 11, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Azelf - Natural Gift - Level 66
  (482, 48200, 363, 11, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Azelf - Explosion - Level 76
  (482, 48200, 153, 11, NULL, 1, 76, NULL, NULL, NULL, 12),
  -- Azelf - Psyshock - TM03
  (482, 48200, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 13),
  -- Azelf - Calm Mind - TM04
  (482, 48200, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 14),
  -- Azelf - Toxic - TM06
  (482, 48200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Azelf - Hidden Power - TM10
  (482, 48200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Azelf - Sunny Day - TM11
  (482, 48200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Azelf - Taunt - TM12
  (482, 48200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Azelf - Hyper Beam - TM15
  (482, 48200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Azelf - Light Screen - TM16
  (482, 48200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 20),
  -- Azelf - Protect - TM17
  (482, 48200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Azelf - Rain Dance - TM18
  (482, 48200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Azelf - Telekinesis - TM19
  (482, 48200, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 23),
  -- Azelf - Safeguard - TM20
  (482, 48200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Azelf - Frustration - TM21
  (482, 48200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Azelf - Thunderbolt - TM24
  (482, 48200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Azelf - Thunder - TM25
  (482, 48200, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 27),
  -- Azelf - Return - TM27
  (482, 48200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Azelf - Psychic - TM29
  (482, 48200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Azelf - Shadow Ball - TM30
  (482, 48200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Azelf - Double Team - TM32
  (482, 48200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Azelf - Reflect - TM33
  (482, 48200, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Azelf - Flamethrower - TM35
  (482, 48200, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 33),
  -- Azelf - Sandstorm - TM37
  (482, 48200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 34),
  -- Azelf - Fire Blast - TM38
  (482, 48200, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 35),
  -- Azelf - Torment - TM41
  (482, 48200, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 36),
  -- Azelf - Facade - TM42
  (482, 48200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Azelf - Rest - TM44
  (482, 48200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Azelf - Round - TM48
  (482, 48200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Azelf - Energy Ball - TM53
  (482, 48200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 40),
  -- Azelf - Fling - TM56
  (482, 48200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Azelf - Charge Beam - TM57
  (482, 48200, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 42),
  -- Azelf - Incinerate - TM59
  (482, 48200, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 43),
  -- Azelf - Acrobatics - TM62
  (482, 48200, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 44),
  -- Azelf - Explosion - TM64
  (482, 48200, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 45),
  -- Azelf - Payback - TM66
  (482, 48200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 46),
  -- Azelf - Giga Impact - TM68
  (482, 48200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Azelf - Flash - TM70
  (482, 48200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 48),
  -- Azelf - Thunder Wave - TM73
  (482, 48200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 49),
  -- Azelf - Psych Up - TM77
  (482, 48200, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 50),
  -- Azelf - Dream Eater - TM85
  (482, 48200, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 51),
  -- Azelf - Grass Knot - TM86
  (482, 48200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 52),
  -- Azelf - Swagger - TM87
  (482, 48200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 53),
  -- Azelf - U-turn - TM89
  (482, 48200, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 54),
  -- Azelf - Substitute - TM90
  (482, 48200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 55),
  -- Azelf - Trick Room - TM92
  (482, 48200, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 56),
  -- Dialga - Dragon Breath - Level 1
  (483, 48300, 225, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Metal Claw - Level 6
  (483, 48300, 232, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 10
  (483, 48300, 246, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 15
  (483, 48300, 163, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dialga - Power Gem - Level 19
  (483, 48300, 408, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Dialga - Metal Burst - Level 24
  (483, 48300, 368, 11, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Dialga - Dragon Claw - Level 28
  (483, 48300, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Dialga - Earth Power - Level 33
  (483, 48300, 414, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Dialga - Aura Sphere - Level 37
  (483, 48300, 396, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Dialga - Iron Tail - Level 42
  (483, 48300, 231, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Dialga - Roar of Time - Level 46
  (483, 48300, 459, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Dialga - Flash Cannon - Level 50
  (483, 48300, 430, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dialga - Hone Claws - TM01
  (483, 48300, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 14),
  -- Dialga - Dragon Claw - TM02
  (483, 48300, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 15),
  -- Dialga - Roar - TM05
  (483, 48300, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Dialga - Toxic - TM06
  (483, 48300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Dialga - Bulk Up - TM08
  (483, 48300, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 18),
  -- Dialga - Hidden Power - TM10
  (483, 48300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Dialga - Sunny Day - TM11
  (483, 48300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Dialga - Ice Beam - TM13
  (483, 48300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Dialga - Blizzard - TM14
  (483, 48300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Dialga - Hyper Beam - TM15
  (483, 48300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Dialga - Protect - TM17
  (483, 48300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Dialga - Rain Dance - TM18
  (483, 48300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Dialga - Safeguard - TM20
  (483, 48300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 26),
  -- Dialga - Frustration - TM21
  (483, 48300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Dialga - Thunderbolt - TM24
  (483, 48300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Dialga - Thunder - TM25
  (483, 48300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 29),
  -- Dialga - Earthquake - TM26
  (483, 48300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Dialga - Return - TM27
  (483, 48300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Dialga - Brick Break - TM31
  (483, 48300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 32),
  -- Dialga - Double Team - TM32
  (483, 48300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Dialga - Flamethrower - TM35
  (483, 48300, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 34),
  -- Dialga - Sandstorm - TM37
  (483, 48300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 35),
  -- Dialga - Fire Blast - TM38
  (483, 48300, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 36),
  -- Dialga - Rock Tomb - TM39
  (483, 48300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 37),
  -- Dialga - Aerial Ace - TM40
  (483, 48300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 38),
  -- Dialga - Facade - TM42
  (483, 48300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Dialga - Rest - TM44
  (483, 48300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Dialga - Round - TM48
  (483, 48300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Dialga - Echoed Voice - TM49
  (483, 48300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 42),
  -- Dialga - Overheat - TM50
  (483, 48300, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 43),
  -- Dialga - Incinerate - TM59
  (483, 48300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 44),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 45),
  -- Dialga - Giga Impact - TM68
  (483, 48300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 46),
  -- Dialga - Flash - TM70
  (483, 48300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 47),
  -- Dialga - Stone Edge - TM71
  (483, 48300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 48),
  -- Dialga - Thunder Wave - TM73
  (483, 48300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 49),
  -- Dialga - Psych Up - TM77
  (483, 48300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 50),
  -- Dialga - Bulldoze - TM78
  (483, 48300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 51),
  -- Dialga - Rock Slide - TM80
  (483, 48300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 52),
  -- Dialga - Dragon Tail - TM82
  (483, 48300, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 53),
  -- Dialga - Swagger - TM87
  (483, 48300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 54),
  -- Dialga - Substitute - TM90
  (483, 48300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 55),
  -- Dialga - Flash Cannon - TM91
  (483, 48300, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 56),
  -- Dialga - Trick Room - TM92
  (483, 48300, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 57),
  -- Dialga - Rock Smash - TM94
  (483, 48300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 58),
  -- Dialga - Cut - HM01
  (483, 48300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 59),
  -- Dialga - Strength - HM04
  (483, 48300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 60),
  -- Dialga - Draco Meteor - Move Tutor
  (483, 48300, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 61),
  -- Palkia - Dragon Breath - Level 1
  (484, 48400, 225, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Water Pulse - Level 6
  (484, 48400, 352, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 10
  (484, 48400, 246, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 15
  (484, 48400, 163, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Palkia - Power Gem - Level 19
  (484, 48400, 408, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Palkia - Aqua Tail - Level 24
  (484, 48400, 401, 11, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Palkia - Dragon Claw - Level 28
  (484, 48400, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Palkia - Earth Power - Level 33
  (484, 48400, 414, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Palkia - Aura Sphere - Level 37
  (484, 48400, 396, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Palkia - Aqua Tail - Level 42
  (484, 48400, 401, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Palkia - Spacial Rend - Level 46
  (484, 48400, 460, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Palkia - Hydro Pump - Level 50
  (484, 48400, 56, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Palkia - Hone Claws - TM01
  (484, 48400, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 14),
  -- Palkia - Dragon Claw - TM02
  (484, 48400, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 15),
  -- Palkia - Roar - TM05
  (484, 48400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 16),
  -- Palkia - Toxic - TM06
  (484, 48400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Palkia - Hail - TM07
  (484, 48400, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Palkia - Bulk Up - TM08
  (484, 48400, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 19),
  -- Palkia - Hidden Power - TM10
  (484, 48400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Palkia - Sunny Day - TM11
  (484, 48400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Palkia - Ice Beam - TM13
  (484, 48400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Palkia - Blizzard - TM14
  (484, 48400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Palkia - Hyper Beam - TM15
  (484, 48400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Palkia - Protect - TM17
  (484, 48400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Palkia - Rain Dance - TM18
  (484, 48400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Palkia - Safeguard - TM20
  (484, 48400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Palkia - Frustration - TM21
  (484, 48400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Palkia - Thunderbolt - TM24
  (484, 48400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Palkia - Thunder - TM25
  (484, 48400, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Palkia - Earthquake - TM26
  (484, 48400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 31),
  -- Palkia - Return - TM27
  (484, 48400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Palkia - Brick Break - TM31
  (484, 48400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 33),
  -- Palkia - Double Team - TM32
  (484, 48400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Palkia - Flamethrower - TM35
  (484, 48400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 35),
  -- Palkia - Sandstorm - TM37
  (484, 48400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 36),
  -- Palkia - Fire Blast - TM38
  (484, 48400, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 37),
  -- Palkia - Rock Tomb - TM39
  (484, 48400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Palkia - Aerial Ace - TM40
  (484, 48400, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Palkia - Facade - TM42
  (484, 48400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 40),
  -- Palkia - Rest - TM44
  (484, 48400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 41),
  -- Palkia - Round - TM48
  (484, 48400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Palkia - Echoed Voice - TM49
  (484, 48400, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 43),
  -- Palkia - Focus Blast - TM52
  (484, 48400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 44),
  -- Palkia - Fling - TM56
  (484, 48400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Palkia - Incinerate - TM59
  (484, 48400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 46),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 47),
  -- Palkia - Giga Impact - TM68
  (484, 48400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Palkia - Stone Edge - TM71
  (484, 48400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 49),
  -- Palkia - Thunder Wave - TM73
  (484, 48400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 50),
  -- Palkia - Psych Up - TM77
  (484, 48400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 51),
  -- Palkia - Bulldoze - TM78
  (484, 48400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 52),
  -- Palkia - Rock Slide - TM80
  (484, 48400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 53),
  -- Palkia - Dragon Tail - TM82
  (484, 48400, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 54),
  -- Palkia - Swagger - TM87
  (484, 48400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 55),
  -- Palkia - Substitute - TM90
  (484, 48400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 56),
  -- Palkia - Trick Room - TM92
  (484, 48400, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 57),
  -- Palkia - Rock Smash - TM94
  (484, 48400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 58),
  -- Palkia - Cut - HM01
  (484, 48400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 59),
  -- Palkia - Surf - HM03
  (484, 48400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 60),
  -- Palkia - Strength - HM04
  (484, 48400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 61),
  -- Palkia - Dive - HM06
  (484, 48400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 62),
  -- Palkia - Draco Meteor - Move Tutor
  (484, 48400, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 63),
  -- Heatran - Ancient Power - Level 1
  (485, 48500, 246, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Leer - Level 9
  (485, 48500, 43, 11, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Heatran - Fire Fang - Level 17
  (485, 48500, 424, 11, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Heatran - Metal Sound - Level 25
  (485, 48500, 319, 11, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Heatran - Crunch - Level 33
  (485, 48500, 242, 11, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Heatran - Scary Face - Level 41
  (485, 48500, 184, 11, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Heatran - Lava Plume - Level 49
  (485, 48500, 436, 11, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Heatran - Fire Spin - Level 57
  (485, 48500, 83, 11, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Heatran - Iron Head - Level 65
  (485, 48500, 442, 11, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Heatran - Earth Power - Level 73
  (485, 48500, 414, 11, NULL, 1, 73, NULL, NULL, NULL, 10),
  -- Heatran - Heat Wave - Level 81
  (485, 48500, 257, 11, NULL, 1, 81, NULL, NULL, NULL, 11),
  -- Heatran - Stone Edge - Level 88
  (485, 48500, 444, 11, NULL, 1, 88, NULL, NULL, NULL, 12),
  -- Heatran - Magma Storm - Level 96
  (485, 48500, 463, 11, NULL, 1, 96, NULL, NULL, NULL, 13),
  -- Heatran - Roar - TM05
  (485, 48500, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 14),
  -- Heatran - Toxic - TM06
  (485, 48500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Heatran - Hidden Power - TM10
  (485, 48500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Heatran - Sunny Day - TM11
  (485, 48500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Heatran - Taunt - TM12
  (485, 48500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Heatran - Hyper Beam - TM15
  (485, 48500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Heatran - Protect - TM17
  (485, 48500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Heatran - Frustration - TM21
  (485, 48500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Heatran - Solar Beam - TM22
  (485, 48500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 22),
  -- Heatran - Earthquake - TM26
  (485, 48500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Heatran - Return - TM27
  (485, 48500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Heatran - Dig - TM28
  (485, 48500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Heatran - Double Team - TM32
  (485, 48500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Heatran - Flamethrower - TM35
  (485, 48500, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 27),
  -- Heatran - Fire Blast - TM38
  (485, 48500, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 28),
  -- Heatran - Rock Tomb - TM39
  (485, 48500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 29),
  -- Heatran - Torment - TM41
  (485, 48500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 30),
  -- Heatran - Facade - TM42
  (485, 48500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Heatran - Flame Charge - TM43
  (485, 48500, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 32),
  -- Heatran - Rest - TM44
  (485, 48500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Heatran - Attract - TM45
  (485, 48500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Heatran - Round - TM48
  (485, 48500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Heatran - Overheat - TM50
  (485, 48500, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 36),
  -- Heatran - Incinerate - TM59
  (485, 48500, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 37),
  -- Heatran - Will-O-Wisp - TM61
  (485, 48500, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 38),
  -- Heatran - Explosion - TM64
  (485, 48500, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 39),
  -- Heatran - Payback - TM66
  (485, 48500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Heatran - Giga Impact - TM68
  (485, 48500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Heatran - Stone Edge - TM71
  (485, 48500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 42),
  -- Heatran - Bulldoze - TM78
  (485, 48500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Heatran - Rock Slide - TM80
  (485, 48500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 44),
  -- Heatran - Swagger - TM87
  (485, 48500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Heatran - Substitute - TM90
  (485, 48500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Heatran - Flash Cannon - TM91
  (485, 48500, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 47),
  -- Heatran - Rock Smash - TM94
  (485, 48500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Heatran - Strength - HM04
  (485, 48500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 49),
  -- Regigigas - Fire Punch - Level 1
  (486, 48600, 7, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Ice Punch - Level 1
  (486, 48600, 8, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Thunder Punch - Level 1
  (486, 48600, 9, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regigigas - Dizzy Punch - Level 1
  (486, 48600, 146, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regigigas - Knock Off - Level 1
  (486, 48600, 282, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Regigigas - Foresight - Level 1
  (486, 48600, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Regigigas - Revenge - Level 25
  (486, 48600, 279, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Regigigas - Wide Guard - Level 40
  (486, 48600, 469, 11, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Regigigas - Zen Headbutt - Level 50
  (486, 48600, 428, 11, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Regigigas - Payback - Level 65
  (486, 48600, 371, 11, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Regigigas - Crush Grip - Level 75
  (486, 48600, 462, 11, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Regigigas - Heavy Slam - Level 90
  (486, 48600, 484, 11, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Regigigas - Giga Impact - Level 100
  (486, 48600, 416, 11, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Regigigas - Toxic - TM06
  (486, 48600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Regigigas - Hidden Power - TM10
  (486, 48600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Regigigas - Sunny Day - TM11
  (486, 48600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Regigigas - Hyper Beam - TM15
  (486, 48600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Regigigas - Rain Dance - TM18
  (486, 48600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 19),
  -- Regigigas - Safeguard - TM20
  (486, 48600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 20),
  -- Regigigas - Frustration - TM21
  (486, 48600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Regigigas - Smack Down - TM23
  (486, 48600, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 22),
  -- Regigigas - Thunderbolt - TM24
  (486, 48600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Regigigas - Thunder - TM25
  (486, 48600, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Regigigas - Earthquake - TM26
  (486, 48600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Regigigas - Return - TM27
  (486, 48600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Regigigas - Brick Break - TM31
  (486, 48600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Regigigas - Double Team - TM32
  (486, 48600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Regigigas - Rock Tomb - TM39
  (486, 48600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 29),
  -- Regigigas - Aerial Ace - TM40
  (486, 48600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Regigigas - Facade - TM42
  (486, 48600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Regigigas - Round - TM48
  (486, 48600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Regigigas - Focus Blast - TM52
  (486, 48600, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 33),
  -- Regigigas - Fling - TM56
  (486, 48600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 34),
  -- Regigigas - Payback - TM66
  (486, 48600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 35),
  -- Regigigas - Retaliate - TM67
  (486, 48600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 36),
  -- Regigigas - Giga Impact - TM68
  (486, 48600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 37),
  -- Regigigas - Rock Polish - TM69
  (486, 48600, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 38),
  -- Regigigas - Stone Edge - TM71
  (486, 48600, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 39),
  -- Regigigas - Thunder Wave - TM73
  (486, 48600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 40),
  -- Regigigas - Psych Up - TM77
  (486, 48600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 41),
  -- Regigigas - Bulldoze - TM78
  (486, 48600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 42),
  -- Regigigas - Rock Slide - TM80
  (486, 48600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 43),
  -- Regigigas - Swagger - TM87
  (486, 48600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Regigigas - Substitute - TM90
  (486, 48600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Regigigas - Rock Smash - TM94
  (486, 48600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Regigigas - Strength - HM04
  (486, 48600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 47),
  -- Giratina - Dragon Breath - Level 1
  (487, 48700, 225, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Scary Face - Level 1
  (487, 48700, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Ominous Wind - Level 6
  (487, 48700, 466, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 10
  (487, 48700, 246, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina - Slash - Level 15
  (487, 48700, 163, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina - Shadow Sneak - Level 19
  (487, 48700, 425, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina - Destiny Bond - Level 24
  (487, 48700, 194, 11, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina - Dragon Claw - Level 28
  (487, 48700, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina - Earth Power - Level 33
  (487, 48700, 414, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina - Aura Sphere - Level 37
  (487, 48700, 396, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina - Shadow Force - Level 46
  (487, 48700, 467, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina - Hex - Level 50
  (487, 48700, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina - Hone Claws - TM01
  (487, 48700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 14),
  -- Giratina - Dragon Claw - TM02
  (487, 48700, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 15),
  -- Giratina - Calm Mind - TM04
  (487, 48700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Giratina - Roar - TM05
  (487, 48700, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Giratina - Toxic - TM06
  (487, 48700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Giratina - Hidden Power - TM10
  (487, 48700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Giratina - Sunny Day - TM11
  (487, 48700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Giratina - Hyper Beam - TM15
  (487, 48700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Giratina - Protect - TM17
  (487, 48700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Giratina - Rain Dance - TM18
  (487, 48700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Giratina - Telekinesis - TM19
  (487, 48700, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Giratina - Safeguard - TM20
  (487, 48700, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Giratina - Frustration - TM21
  (487, 48700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Giratina - Thunderbolt - TM24
  (487, 48700, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Giratina - Thunder - TM25
  (487, 48700, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Giratina - Earthquake - TM26
  (487, 48700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Giratina - Return - TM27
  (487, 48700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Giratina - Psychic - TM29
  (487, 48700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Giratina - Shadow Ball - TM30
  (487, 48700, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Giratina - Double Team - TM32
  (487, 48700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Giratina - Aerial Ace - TM40
  (487, 48700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 34),
  -- Giratina - Facade - TM42
  (487, 48700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Giratina - Rest - TM44
  (487, 48700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Giratina - Round - TM48
  (487, 48700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Giratina - Echoed Voice - TM49
  (487, 48700, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 38),
  -- Giratina - Energy Ball - TM53
  (487, 48700, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 39),
  -- Giratina - Charge Beam - TM57
  (487, 48700, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 40),
  -- Giratina - Will-O-Wisp - TM61
  (487, 48700, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 41),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Giratina - Payback - TM66
  (487, 48700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Giratina - Giga Impact - TM68
  (487, 48700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Giratina - Stone Edge - TM71
  (487, 48700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 45),
  -- Giratina - Thunder Wave - TM73
  (487, 48700, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 46),
  -- Giratina - Psych Up - TM77
  (487, 48700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 47),
  -- Giratina - Bulldoze - TM78
  (487, 48700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 48),
  -- Giratina - Dragon Tail - TM82
  (487, 48700, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 49),
  -- Giratina - Dream Eater - TM85
  (487, 48700, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 50),
  -- Giratina - Swagger - TM87
  (487, 48700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Giratina - Substitute - TM90
  (487, 48700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Giratina - Rock Smash - TM94
  (487, 48700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Giratina - Cut - HM01
  (487, 48700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Giratina - Fly - HM02
  (487, 48700, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 55),
  -- Giratina - Strength - HM04
  (487, 48700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Giratina - Draco Meteor - Move Tutor
  (487, 48700, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 57),
  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Safeguard - Level 11
  (488, 48800, 219, 11, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Cresselia - Mist - Level 20
  (488, 48800, 54, 11, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Cresselia - Aurora Beam - Level 29
  (488, 48800, 62, 11, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Cresselia - Future Sight - Level 38
  (488, 48800, 248, 11, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Cresselia - Slash - Level 47
  (488, 48800, 163, 11, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Cresselia - Moonlight - Level 57
  (488, 48800, 236, 11, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Cresselia - Psycho Cut - Level 66
  (488, 48800, 427, 11, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Cresselia - Psycho Shift - Level 75
  (488, 48800, 375, 11, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Cresselia - Lunar Dance - Level 84
  (488, 48800, 461, 11, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Cresselia - Psychic - Level 93
  (488, 48800, 94, 11, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Cresselia - Psyshock - TM03
  (488, 48800, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 13),
  -- Cresselia - Calm Mind - TM04
  (488, 48800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 14),
  -- Cresselia - Toxic - TM06
  (488, 48800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Cresselia - Hidden Power - TM10
  (488, 48800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Cresselia - Sunny Day - TM11
  (488, 48800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Cresselia - Ice Beam - TM13
  (488, 48800, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Cresselia - Hyper Beam - TM15
  (488, 48800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Cresselia - Light Screen - TM16
  (488, 48800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 20),
  -- Cresselia - Protect - TM17
  (488, 48800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Cresselia - Rain Dance - TM18
  (488, 48800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Cresselia - Telekinesis - TM19
  (488, 48800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 23),
  -- Cresselia - Safeguard - TM20
  (488, 48800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Cresselia - Frustration - TM21
  (488, 48800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Cresselia - Solar Beam - TM22
  (488, 48800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Cresselia - Return - TM27
  (488, 48800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Cresselia - Psychic - TM29
  (488, 48800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 28),
  -- Cresselia - Shadow Ball - TM30
  (488, 48800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Cresselia - Double Team - TM32
  (488, 48800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Cresselia - Reflect - TM33
  (488, 48800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Cresselia - Facade - TM42
  (488, 48800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Cresselia - Rest - TM44
  (488, 48800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Cresselia - Attract - TM45
  (488, 48800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Cresselia - Round - TM48
  (488, 48800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Cresselia - Energy Ball - TM53
  (488, 48800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 36),
  -- Cresselia - Charge Beam - TM57
  (488, 48800, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 37),
  -- Cresselia - Giga Impact - TM68
  (488, 48800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Cresselia - Flash - TM70
  (488, 48800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Cresselia - Thunder Wave - TM73
  (488, 48800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 40),
  -- Cresselia - Psych Up - TM77
  (488, 48800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 41),
  -- Cresselia - Dream Eater - TM85
  (488, 48800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 42),
  -- Cresselia - Grass Knot - TM86
  (488, 48800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 43),
  -- Cresselia - Swagger - TM87
  (488, 48800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Cresselia - Substitute - TM90
  (488, 48800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Cresselia - Trick Room - TM92
  (488, 48800, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 46),
  -- Phione - Bubble - Level 1
  (489, 48900, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phione - Water Sport - Level 1
  (489, 48900, 346, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phione - Charm - Level 9
  (489, 48900, 204, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Phione - Supersonic - Level 16
  (489, 48900, 48, 11, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Phione - Bubble Beam - Level 24
  (489, 48900, 61, 11, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Phione - Acid Armor - Level 31
  (489, 48900, 151, 11, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Phione - Whirlpool - Level 39
  (489, 48900, 250, 11, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Phione - Water Pulse - Level 46
  (489, 48900, 352, 11, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Phione - Aqua Ring - Level 54
  (489, 48900, 392, 11, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Phione - Dive - Level 61
  (489, 48900, 291, 11, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Phione - Rain Dance - Level 69
  (489, 48900, 240, 11, NULL, 1, 69, NULL, NULL, NULL, 11),
  -- Phione - Toxic - TM06
  (489, 48900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 12),
  -- Phione - Hail - TM07
  (489, 48900, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 13),
  -- Phione - Hidden Power - TM10
  (489, 48900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 14),
  -- Phione - Ice Beam - TM13
  (489, 48900, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 15),
  -- Phione - Blizzard - TM14
  (489, 48900, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 16),
  -- Phione - Protect - TM17
  (489, 48900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 17),
  -- Phione - Rain Dance - TM18
  (489, 48900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 18),
  -- Phione - Safeguard - TM20
  (489, 48900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 19),
  -- Phione - Frustration - TM21
  (489, 48900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Phione - Return - TM27
  (489, 48900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Phione - Double Team - TM32
  (489, 48900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 22),
  -- Phione - Facade - TM42
  (489, 48900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 23),
  -- Phione - Rest - TM44
  (489, 48900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 24),
  -- Phione - Round - TM48
  (489, 48900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 25),
  -- Phione - Scald - TM55
  (489, 48900, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 26),
  -- Phione - Fling - TM56
  (489, 48900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 27),
  -- Phione - Psych Up - TM77
  (489, 48900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 28),
  -- Phione - Grass Knot - TM86
  (489, 48900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 29),
  -- Phione - Swagger - TM87
  (489, 48900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 30),
  -- Phione - U-turn - TM89
  (489, 48900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 31),
  -- Phione - Substitute - TM90
  (489, 48900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 32),
  -- Phione - Surf - HM03
  (489, 48900, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 33),
  -- Phione - Waterfall - HM05
  (489, 48900, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 34),
  -- Phione - Dive - HM06
  (489, 48900, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 35),
  -- Manaphy - Tail Glow - Level 1
  (490, 49000, 294, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manaphy - Bubble - Level 1
  (490, 49000, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manaphy - Water Sport - Level 1
  (490, 49000, 346, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manaphy - Charm - Level 9
  (490, 49000, 204, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Manaphy - Supersonic - Level 16
  (490, 49000, 48, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Manaphy - Bubble Beam - Level 24
  (490, 49000, 61, 11, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Manaphy - Acid Armor - Level 31
  (490, 49000, 151, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Manaphy - Whirlpool - Level 39
  (490, 49000, 250, 11, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Manaphy - Water Pulse - Level 46
  (490, 49000, 352, 11, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Manaphy - Aqua Ring - Level 54
  (490, 49000, 392, 11, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Manaphy - Dive - Level 61
  (490, 49000, 291, 11, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Manaphy - Rain Dance - Level 69
  (490, 49000, 240, 11, NULL, 1, 69, NULL, NULL, NULL, 12),
  -- Manaphy - Heart Swap - Level 76
  (490, 49000, 391, 11, NULL, 1, 76, NULL, NULL, NULL, 13),
  -- Manaphy - Calm Mind - TM04
  (490, 49000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 14),
  -- Manaphy - Toxic - TM06
  (490, 49000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Manaphy - Hail - TM07
  (490, 49000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 16),
  -- Manaphy - Hidden Power - TM10
  (490, 49000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Manaphy - Ice Beam - TM13
  (490, 49000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Manaphy - Blizzard - TM14
  (490, 49000, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 19),
  -- Manaphy - Hyper Beam - TM15
  (490, 49000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Manaphy - Light Screen - TM16
  (490, 49000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Manaphy - Protect - TM17
  (490, 49000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Manaphy - Rain Dance - TM18
  (490, 49000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Manaphy - Safeguard - TM20
  (490, 49000, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Manaphy - Frustration - TM21
  (490, 49000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Manaphy - Return - TM27
  (490, 49000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Manaphy - Psychic - TM29
  (490, 49000, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 27),
  -- Manaphy - Shadow Ball - TM30
  (490, 49000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Manaphy - Double Team - TM32
  (490, 49000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Manaphy - Reflect - TM33
  (490, 49000, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Manaphy - Facade - TM42
  (490, 49000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Manaphy - Rest - TM44
  (490, 49000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Manaphy - Round - TM48
  (490, 49000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Manaphy - Energy Ball - TM53
  (490, 49000, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 34),
  -- Manaphy - Scald - TM55
  (490, 49000, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 35),
  -- Manaphy - Fling - TM56
  (490, 49000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 36),
  -- Manaphy - Giga Impact - TM68
  (490, 49000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 37),
  -- Manaphy - Flash - TM70
  (490, 49000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 38),
  -- Manaphy - Psych Up - TM77
  (490, 49000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 39),
  -- Manaphy - Grass Knot - TM86
  (490, 49000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 40),
  -- Manaphy - Swagger - TM87
  (490, 49000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Manaphy - U-turn - TM89
  (490, 49000, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 42),
  -- Manaphy - Substitute - TM90
  (490, 49000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Manaphy - Surf - HM03
  (490, 49000, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 44),
  -- Manaphy - Waterfall - HM05
  (490, 49000, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 45),
  -- Manaphy - Dive - HM06
  (490, 49000, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 46),
  -- Darkrai - Ominous Wind - Level 1
  (491, 49100, 466, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darkrai - Disable - Level 1
  (491, 49100, 50, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darkrai - Quick Attack - Level 11
  (491, 49100, 98, 11, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Darkrai - Hypnosis - Level 20
  (491, 49100, 95, 11, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Darkrai - Feint Attack - Level 29
  (491, 49100, 185, 11, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Darkrai - Nightmare - Level 38
  (491, 49100, 171, 11, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Darkrai - Double Team - Level 47
  (491, 49100, 104, 11, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Darkrai - Haze - Level 57
  (491, 49100, 114, 11, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Darkrai - Dark Void - Level 66
  (491, 49100, 464, 11, NULL, 1, 66, NULL, NULL, NULL, 9),
  -- Darkrai - Nasty Plot - Level 75
  (491, 49100, 417, 11, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Darkrai - Dream Eater - Level 84
  (491, 49100, 138, 11, NULL, 1, 84, NULL, NULL, NULL, 11),
  -- Darkrai - Dark Pulse - Level 93
  (491, 49100, 399, 11, NULL, 1, 93, NULL, NULL, NULL, 12),
  -- Darkrai - Calm Mind - TM04
  (491, 49100, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 13),
  -- Darkrai - Toxic - TM06
  (491, 49100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Darkrai - Hidden Power - TM10
  (491, 49100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Darkrai - Sunny Day - TM11
  (491, 49100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 16),
  -- Darkrai - Taunt - TM12
  (491, 49100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 17),
  -- Darkrai - Ice Beam - TM13
  (491, 49100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Darkrai - Blizzard - TM14
  (491, 49100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 19),
  -- Darkrai - Hyper Beam - TM15
  (491, 49100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Darkrai - Protect - TM17
  (491, 49100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Darkrai - Rain Dance - TM18
  (491, 49100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Darkrai - Frustration - TM21
  (491, 49100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Darkrai - Thunderbolt - TM24
  (491, 49100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Darkrai - Thunder - TM25
  (491, 49100, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 25),
  -- Darkrai - Return - TM27
  (491, 49100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Darkrai - Psychic - TM29
  (491, 49100, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 27),
  -- Darkrai - Shadow Ball - TM30
  (491, 49100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Darkrai - Brick Break - TM31
  (491, 49100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Darkrai - Double Team - TM32
  (491, 49100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Darkrai - Sludge Bomb - TM36
  (491, 49100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 31),
  -- Darkrai - Rock Tomb - TM39
  (491, 49100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Darkrai - Aerial Ace - TM40
  (491, 49100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Darkrai - Torment - TM41
  (491, 49100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 34),
  -- Darkrai - Facade - TM42
  (491, 49100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Darkrai - Rest - TM44
  (491, 49100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Darkrai - Thief - TM46
  (491, 49100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Darkrai - Round - TM48
  (491, 49100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Darkrai - Focus Blast - TM52
  (491, 49100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 39),
  -- Darkrai - Fling - TM56
  (491, 49100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Darkrai - Charge Beam - TM57
  (491, 49100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 41),
  -- Darkrai - Incinerate - TM59
  (491, 49100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 42),
  -- Darkrai - Will-O-Wisp - TM61
  (491, 49100, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 43),
  -- Darkrai - Embargo - TM63
  (491, 49100, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 44),
  -- Darkrai - Shadow Claw - TM65
  (491, 49100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 45),
  -- Darkrai - Payback - TM66
  (491, 49100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 46),
  -- Darkrai - Retaliate - TM67
  (491, 49100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 47),
  -- Darkrai - Giga Impact - TM68
  (491, 49100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Darkrai - Flash - TM70
  (491, 49100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 49),
  -- Darkrai - Thunder Wave - TM73
  (491, 49100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 50),
  -- Darkrai - Swords Dance - TM75
  (491, 49100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 51),
  -- Darkrai - Psych Up - TM77
  (491, 49100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 52),
  -- Darkrai - Rock Slide - TM80
  (491, 49100, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 53),
  -- Darkrai - X-Scissor - TM81
  (491, 49100, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 54),
  -- Darkrai - Poison Jab - TM84
  (491, 49100, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 55),
  -- Darkrai - Dream Eater - TM85
  (491, 49100, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 56),
  -- Darkrai - Swagger - TM87
  (491, 49100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 57),
  -- Darkrai - Substitute - TM90
  (491, 49100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 58),
  -- Darkrai - Rock Smash - TM94
  (491, 49100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 59),
  -- Darkrai - Snarl - TM95
  (491, 49100, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 60),
  -- Darkrai - Cut - HM01
  (491, 49100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 61),
  -- Darkrai - Strength - HM04
  (491, 49100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 62),
  -- Shaymin - Growth - Level 1
  (492, 49200, 74, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin - Magical Leaf - Level 10
  (492, 49200, 345, 11, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin - Leech Seed - Level 19
  (492, 49200, 73, 11, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin - Synthesis - Level 28
  (492, 49200, 235, 11, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin - Sweet Scent - Level 37
  (492, 49200, 230, 11, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin - Natural Gift - Level 46
  (492, 49200, 363, 11, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin - Worry Seed - Level 55
  (492, 49200, 388, 11, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin - Aromatherapy - Level 64
  (492, 49200, 312, 11, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin - Energy Ball - Level 73
  (492, 49200, 412, 11, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin - Sweet Kiss - Level 82
  (492, 49200, 186, 11, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin - Healing Wish - Level 91
  (492, 49200, 361, 11, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin - Seed Flare - Level 100
  (492, 49200, 465, 11, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin - Toxic - TM06
  (492, 49200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 13),
  -- Shaymin - Hidden Power - TM10
  (492, 49200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 14),
  -- Shaymin - Sunny Day - TM11
  (492, 49200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 15),
  -- Shaymin - Hyper Beam - TM15
  (492, 49200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 16),
  -- Shaymin - Protect - TM17
  (492, 49200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 17),
  -- Shaymin - Safeguard - TM20
  (492, 49200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 18),
  -- Shaymin - Frustration - TM21
  (492, 49200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 19),
  -- Shaymin - Solar Beam - TM22
  (492, 49200, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 20),
  -- Shaymin - Return - TM27
  (492, 49200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Shaymin - Psychic - TM29
  (492, 49200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 22),
  -- Shaymin - Double Team - TM32
  (492, 49200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Shaymin - Facade - TM42
  (492, 49200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 24),
  -- Shaymin - Rest - TM44
  (492, 49200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 25),
  -- Shaymin - Round - TM48
  (492, 49200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 26),
  -- Shaymin - Energy Ball - TM53
  (492, 49200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 27),
  -- Shaymin - Giga Impact - TM68
  (492, 49200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 28),
  -- Shaymin - Flash - TM70
  (492, 49200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 29),
  -- Shaymin - Swords Dance - TM75
  (492, 49200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 30),
  -- Shaymin - Psych Up - TM77
  (492, 49200, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 31),
  -- Shaymin - Grass Knot - TM86
  (492, 49200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 32),
  -- Shaymin - Swagger - TM87
  (492, 49200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 33),
  -- Shaymin - Substitute - TM90
  (492, 49200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 34),
  -- Arceus - Seismic Toss - Level 1
  (493, 49300, 69, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arceus - Cosmic Power - Level 1
  (493, 49300, 322, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arceus - Natural Gift - Level 1
  (493, 49300, 363, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arceus - Punishment - Level 1
  (493, 49300, 386, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arceus - Gravity - Level 10
  (493, 49300, 356, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Arceus - Earth Power - Level 20
  (493, 49300, 414, 11, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Arceus - Hyper Voice - Level 30
  (493, 49300, 304, 11, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arceus - Extreme Speed - Level 40
  (493, 49300, 245, 11, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Arceus - Refresh - Level 50
  (493, 49300, 287, 11, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Arceus - Future Sight - Level 60
  (493, 49300, 248, 11, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Arceus - Recover - Level 70
  (493, 49300, 105, 11, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Arceus - Hyper Beam - Level 80
  (493, 49300, 63, 11, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Arceus - Perish Song - Level 90
  (493, 49300, 195, 11, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Arceus - Judgment - Level 100
  (493, 49300, 449, 11, NULL, 1, 100, NULL, NULL, NULL, 14),
  -- Arceus - Hone Claws - TM01
  (493, 49300, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Arceus - Dragon Claw - TM02
  (493, 49300, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 16),
  -- Arceus - Psyshock - TM03
  (493, 49300, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Arceus - Calm Mind - TM04
  (493, 49300, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Arceus - Roar - TM05
  (493, 49300, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Arceus - Toxic - TM06
  (493, 49300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Arceus - Hail - TM07
  (493, 49300, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 21),
  -- Arceus - Hidden Power - TM10
  (493, 49300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Arceus - Sunny Day - TM11
  (493, 49300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Arceus - Ice Beam - TM13
  (493, 49300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 24),
  -- Arceus - Blizzard - TM14
  (493, 49300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 25),
  -- Arceus - Hyper Beam - TM15
  (493, 49300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Arceus - Light Screen - TM16
  (493, 49300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 27),
  -- Arceus - Protect - TM17
  (493, 49300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Arceus - Rain Dance - TM18
  (493, 49300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 29),
  -- Arceus - Telekinesis - TM19
  (493, 49300, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 30),
  -- Arceus - Safeguard - TM20
  (493, 49300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 31),
  -- Arceus - Frustration - TM21
  (493, 49300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 32),
  -- Arceus - Solar Beam - TM22
  (493, 49300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 33),
  -- Arceus - Thunderbolt - TM24
  (493, 49300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 34),
  -- Arceus - Thunder - TM25
  (493, 49300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 35),
  -- Arceus - Earthquake - TM26
  (493, 49300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 36),
  -- Arceus - Return - TM27
  (493, 49300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 37),
  -- Arceus - Psychic - TM29
  (493, 49300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 38),
  -- Arceus - Shadow Ball - TM30
  (493, 49300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 39),
  -- Arceus - Brick Break - TM31
  (493, 49300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 40),
  -- Arceus - Double Team - TM32
  (493, 49300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 41),
  -- Arceus - Reflect - TM33
  (493, 49300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 42),
  -- Arceus - Flamethrower - TM35
  (493, 49300, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 43),
  -- Arceus - Sludge Bomb - TM36
  (493, 49300, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 44),
  -- Arceus - Sandstorm - TM37
  (493, 49300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 45),
  -- Arceus - Fire Blast - TM38
  (493, 49300, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 46),
  -- Arceus - Rock Tomb - TM39
  (493, 49300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 47),
  -- Arceus - Aerial Ace - TM40
  (493, 49300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 48),
  -- Arceus - Facade - TM42
  (493, 49300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 49),
  -- Arceus - Rest - TM44
  (493, 49300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 50),
  -- Arceus - Round - TM48
  (493, 49300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 51),
  -- Arceus - Echoed Voice - TM49
  (493, 49300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 52),
  -- Arceus - Overheat - TM50
  (493, 49300, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 53),
  -- Arceus - Focus Blast - TM52
  (493, 49300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 54),
  -- Arceus - Energy Ball - TM53
  (493, 49300, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 55),
  -- Arceus - Charge Beam - TM57
  (493, 49300, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 56),
  -- Arceus - Incinerate - TM59
  (493, 49300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 57),
  -- Arceus - Quash - TM60
  (493, 49300, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 58),
  -- Arceus - Will-O-Wisp - TM61
  (493, 49300, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 59),
  -- Arceus - Shadow Claw - TM65
  (493, 49300, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 60),
  -- Arceus - Payback - TM66
  (493, 49300, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 61),
  -- Arceus - Retaliate - TM67
  (493, 49300, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 62),
  -- Arceus - Giga Impact - TM68
  (493, 49300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 63),
  -- Arceus - Flash - TM70
  (493, 49300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 64),
  -- Arceus - Stone Edge - TM71
  (493, 49300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 65),
  -- Arceus - Thunder Wave - TM73
  (493, 49300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 66),
  -- Arceus - Swords Dance - TM75
  (493, 49300, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 67),
  -- Arceus - Psych Up - TM77
  (493, 49300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 68),
  -- Arceus - Bulldoze - TM78
  (493, 49300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 69),
  -- Arceus - Rock Slide - TM80
  (493, 49300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 70),
  -- Arceus - X-Scissor - TM81
  (493, 49300, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 71),
  -- Arceus - Work Up - TM83
  (493, 49300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 72),
  -- Arceus - Poison Jab - TM84
  (493, 49300, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 73),
  -- Arceus - Dream Eater - TM85
  (493, 49300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 74),
  -- Arceus - Grass Knot - TM86
  (493, 49300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 75),
  -- Arceus - Swagger - TM87
  (493, 49300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 76),
  -- Arceus - Substitute - TM90
  (493, 49300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 77),
  -- Arceus - Flash Cannon - TM91
  (493, 49300, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 78),
  -- Arceus - Trick Room - TM92
  (493, 49300, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 79),
  -- Arceus - Rock Smash - TM94
  (493, 49300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 80),
  -- Arceus - Snarl - TM95
  (493, 49300, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 81),
  -- Arceus - Cut - HM01
  (493, 49300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 82),
  -- Arceus - Fly - HM02
  (493, 49300, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 83),
  -- Arceus - Surf - HM03
  (493, 49300, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 84),
  -- Arceus - Strength - HM04
  (493, 49300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 85),
  -- Arceus - Waterfall - HM05
  (493, 49300, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 86),
  -- Arceus - Draco Meteor - Move Tutor
  (493, 49300, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 87);
