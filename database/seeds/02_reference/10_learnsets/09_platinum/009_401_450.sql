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
-- Pokémon: #401-#450
-- Rows: 2855
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
  -- Kricketot - Growl - Level 1
  (401, 40100, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketot - Bide - Level 1
  (401, 40100, 117, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketot - Bug Bite - Level 16
  (401, 40100, 450, 9, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Kricketot - Snore - Tutor
  (401, 40100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 4),
  -- Kricketot - Mud-Slap - Tutor
  (401, 40100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 5),
  -- Kricketot - Uproar - Tutor
  (401, 40100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 6),
  -- Kricketot - Endeavor - Tutor
  (401, 40100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 7),
  -- Kricketune - Growl - Level 1
  (402, 40200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketune - Bide - Level 1
  (402, 40200, 117, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketune - Fury Cutter - Level 10
  (402, 40200, 210, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Kricketune - Leech Life - Level 14
  (402, 40200, 141, 9, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Kricketune - Sing - Level 18
  (402, 40200, 47, 9, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kricketune - Focus Energy - Level 22
  (402, 40200, 116, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kricketune - Slash - Level 26
  (402, 40200, 163, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kricketune - X-Scissor - Level 30
  (402, 40200, 404, 9, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kricketune - Screech - Level 34
  (402, 40200, 103, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Kricketune - Taunt - Level 38
  (402, 40200, 269, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Kricketune - Night Slash - Level 42
  (402, 40200, 400, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Kricketune - Bug Buzz - Level 46
  (402, 40200, 405, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Kricketune - Perish Song - Level 50
  (402, 40200, 195, 9, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Kricketune - Toxic - TM06
  (402, 40200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Kricketune - Hidden Power - TM10
  (402, 40200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Kricketune - Sunny Day - TM11
  (402, 40200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Kricketune - Taunt - TM12
  (402, 40200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Kricketune - Hyper Beam - TM15
  (402, 40200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Kricketune - Protect - TM17
  (402, 40200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Kricketune - Rain Dance - TM18
  (402, 40200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Kricketune - Frustration - TM21
  (402, 40200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Kricketune - Return - TM27
  (402, 40200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Kricketune - Brick Break - TM31
  (402, 40200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 23),
  -- Kricketune - Double Team - TM32
  (402, 40200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Kricketune - Aerial Ace - TM40
  (402, 40200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 25),
  -- Kricketune - Facade - TM42
  (402, 40200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Kricketune - Secret Power - TM43
  (402, 40200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Kricketune - Rest - TM44
  (402, 40200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Kricketune - Attract - TM45
  (402, 40200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Kricketune - False Swipe - TM54
  (402, 40200, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 30),
  -- Kricketune - Endure - TM58
  (402, 40200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Kricketune - Silver Wind - TM62
  (402, 40200, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 32),
  -- Kricketune - Giga Impact - TM68
  (402, 40200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 33),
  -- Kricketune - Flash - TM70
  (402, 40200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 34),
  -- Kricketune - Swords Dance - TM75
  (402, 40200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 35),
  -- Kricketune - Captivate - TM78
  (402, 40200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Kricketune - X-Scissor - TM81
  (402, 40200, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 37),
  -- Kricketune - Sleep Talk - TM82
  (402, 40200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Kricketune - Natural Gift - TM83
  (402, 40200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Kricketune - Swagger - TM87
  (402, 40200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Kricketune - Substitute - TM90
  (402, 40200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Kricketune - Cut - HM01
  (402, 40200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 42),
  -- Kricketune - Strength - HM04
  (402, 40200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Kricketune - Rock Smash - HM06
  (402, 40200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 44),
  -- Kricketune - Snore - Tutor
  (402, 40200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Kricketune - Mud-Slap - Tutor
  (402, 40200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Kricketune - Fury Cutter - Tutor
  (402, 40200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Kricketune - Uproar - Tutor
  (402, 40200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Kricketune - Knock Off - Tutor
  (402, 40200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Kricketune - Endeavor - Tutor
  (402, 40200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Shinx - Tackle - Level 1
  (403, 40300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Level 5
  (403, 40300, 43, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shinx - Charge - Level 9
  (403, 40300, 268, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shinx - Spark - Level 13
  (403, 40300, 209, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shinx - Bite - Level 17
  (403, 40300, 44, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Shinx - Roar - Level 21
  (403, 40300, 46, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Shinx - Swagger - Level 25
  (403, 40300, 207, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shinx - Thunder Fang - Level 29
  (403, 40300, 422, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shinx - Crunch - Level 33
  (403, 40300, 242, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shinx - Scary Face - Level 37
  (403, 40300, 184, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shinx - Discharge - Level 41
  (403, 40300, 435, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Shinx - Roar - TM05
  (403, 40300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 12),
  -- Shinx - Toxic - TM06
  (403, 40300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Shinx - Hidden Power - TM10
  (403, 40300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Shinx - Light Screen - TM16
  (403, 40300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 15),
  -- Shinx - Protect - TM17
  (403, 40300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Shinx - Rain Dance - TM18
  (403, 40300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Shinx - Frustration - TM21
  (403, 40300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Shinx - Iron Tail - TM23
  (403, 40300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 19),
  -- Shinx - Thunderbolt - TM24
  (403, 40300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Shinx - Thunder - TM25
  (403, 40300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Shinx - Return - TM27
  (403, 40300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Shinx - Double Team - TM32
  (403, 40300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Shinx - Shock Wave - TM34
  (403, 40300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 24),
  -- Shinx - Facade - TM42
  (403, 40300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Shinx - Secret Power - TM43
  (403, 40300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Shinx - Rest - TM44
  (403, 40300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Shinx - Attract - TM45
  (403, 40300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Shinx - Thief - TM46
  (403, 40300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 29),
  -- Shinx - Charge Beam - TM57
  (403, 40300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 30),
  -- Shinx - Endure - TM58
  (403, 40300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Shinx - Flash - TM70
  (403, 40300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Shinx - Thunder Wave - TM73
  (403, 40300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 33),
  -- Shinx - Captivate - TM78
  (403, 40300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Shinx - Sleep Talk - TM82
  (403, 40300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Shinx - Natural Gift - TM83
  (403, 40300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Shinx - Swagger - TM87
  (403, 40300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Shinx - Substitute - TM90
  (403, 40300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Shinx - Strength - HM04
  (403, 40300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 39),
  -- Shinx - Take Down - Egg
  (403, 40300, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shinx - Quick Attack - Egg
  (403, 40300, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shinx - Howl - Egg
  (403, 40300, 336, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shinx - Thunder Fang - Egg
  (403, 40300, 422, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shinx - Ice Fang - Egg
  (403, 40300, 423, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shinx - Fire Fang - Egg
  (403, 40300, 424, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shinx - Swift - Tutor
  (403, 40300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Shinx - Snore - Tutor
  (403, 40300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Shinx - Mud-Slap - Tutor
  (403, 40300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Shinx - Fury Cutter - Tutor
  (403, 40300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Shinx - Signal Beam - Tutor
  (403, 40300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Shinx - Magnet Rise - Tutor
  (403, 40300, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Luxio - Tackle - Level 1
  (404, 40400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Level 1
  (404, 40400, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxio - Leer - Level 5
  (404, 40400, 43, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Level 9
  (404, 40400, 268, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Luxio - Spark - Level 13
  (404, 40400, 209, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Luxio - Bite - Level 18
  (404, 40400, 44, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 23
  (404, 40400, 46, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Luxio - Swagger - Level 28
  (404, 40400, 207, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Luxio - Thunder Fang - Level 33
  (404, 40400, 422, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxio - Crunch - Level 38
  (404, 40400, 242, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Luxio - Scary Face - Level 43
  (404, 40400, 184, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 48
  (404, 40400, 435, 9, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Luxio - Roar - TM05
  (404, 40400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 13),
  -- Luxio - Toxic - TM06
  (404, 40400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Luxio - Hidden Power - TM10
  (404, 40400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Luxio - Light Screen - TM16
  (404, 40400, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Luxio - Protect - TM17
  (404, 40400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Luxio - Rain Dance - TM18
  (404, 40400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Luxio - Frustration - TM21
  (404, 40400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Luxio - Iron Tail - TM23
  (404, 40400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 20),
  -- Luxio - Thunderbolt - TM24
  (404, 40400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 21),
  -- Luxio - Thunder - TM25
  (404, 40400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 22),
  -- Luxio - Return - TM27
  (404, 40400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Luxio - Double Team - TM32
  (404, 40400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Luxio - Shock Wave - TM34
  (404, 40400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 25),
  -- Luxio - Facade - TM42
  (404, 40400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Luxio - Secret Power - TM43
  (404, 40400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Luxio - Rest - TM44
  (404, 40400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Luxio - Attract - TM45
  (404, 40400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Luxio - Thief - TM46
  (404, 40400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Luxio - Charge Beam - TM57
  (404, 40400, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 31),
  -- Luxio - Endure - TM58
  (404, 40400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Luxio - Flash - TM70
  (404, 40400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 33),
  -- Luxio - Thunder Wave - TM73
  (404, 40400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 34),
  -- Luxio - Captivate - TM78
  (404, 40400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Luxio - Sleep Talk - TM82
  (404, 40400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Luxio - Natural Gift - TM83
  (404, 40400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Luxio - Swagger - TM87
  (404, 40400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Luxio - Substitute - TM90
  (404, 40400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Luxio - Strength - HM04
  (404, 40400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 40),
  -- Luxio - Swift - Tutor
  (404, 40400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Luxio - Snore - Tutor
  (404, 40400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Luxio - Mud-Slap - Tutor
  (404, 40400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Luxio - Fury Cutter - Tutor
  (404, 40400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Luxio - Signal Beam - Tutor
  (404, 40400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Luxio - Magnet Rise - Tutor
  (404, 40400, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Luxray - Tackle - Level 1
  (405, 40500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Leer - Level 1
  (405, 40500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxray - Charge - Level 1
  (405, 40500, 268, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxray - Leer - Level 5
  (405, 40500, 43, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Luxray - Charge - Level 9
  (405, 40500, 268, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Luxray - Spark - Level 13
  (405, 40500, 209, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Luxray - Bite - Level 18
  (405, 40500, 44, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Luxray - Roar - Level 23
  (405, 40500, 46, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Luxray - Swagger - Level 28
  (405, 40500, 207, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Luxray - Thunder Fang - Level 35
  (405, 40500, 422, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Luxray - Crunch - Level 42
  (405, 40500, 242, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Luxray - Scary Face - Level 49
  (405, 40500, 184, 9, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Luxray - Discharge - Level 56
  (405, 40500, 435, 9, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Luxray - Roar - TM05
  (405, 40500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Luxray - Toxic - TM06
  (405, 40500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Luxray - Hidden Power - TM10
  (405, 40500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Luxray - Hyper Beam - TM15
  (405, 40500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Luxray - Light Screen - TM16
  (405, 40500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Luxray - Protect - TM17
  (405, 40500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Luxray - Rain Dance - TM18
  (405, 40500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Luxray - Frustration - TM21
  (405, 40500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Luxray - Iron Tail - TM23
  (405, 40500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 22),
  -- Luxray - Thunderbolt - TM24
  (405, 40500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 23),
  -- Luxray - Thunder - TM25
  (405, 40500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 24),
  -- Luxray - Return - TM27
  (405, 40500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Luxray - Double Team - TM32
  (405, 40500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Luxray - Shock Wave - TM34
  (405, 40500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 27),
  -- Luxray - Facade - TM42
  (405, 40500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Luxray - Secret Power - TM43
  (405, 40500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Luxray - Rest - TM44
  (405, 40500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Luxray - Attract - TM45
  (405, 40500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Luxray - Thief - TM46
  (405, 40500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Luxray - Charge Beam - TM57
  (405, 40500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 33),
  -- Luxray - Endure - TM58
  (405, 40500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Luxray - Giga Impact - TM68
  (405, 40500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Luxray - Flash - TM70
  (405, 40500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Luxray - Thunder Wave - TM73
  (405, 40500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 37),
  -- Luxray - Captivate - TM78
  (405, 40500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Luxray - Sleep Talk - TM82
  (405, 40500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Luxray - Natural Gift - TM83
  (405, 40500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Luxray - Swagger - TM87
  (405, 40500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Luxray - Substitute - TM90
  (405, 40500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Luxray - Strength - HM04
  (405, 40500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Luxray - Swift - Tutor
  (405, 40500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Luxray - Snore - Tutor
  (405, 40500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Luxray - Mud-Slap - Tutor
  (405, 40500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Luxray - Fury Cutter - Tutor
  (405, 40500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Luxray - Superpower - Tutor
  (405, 40500, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Luxray - Signal Beam - Tutor
  (405, 40500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Luxray - Magnet Rise - Tutor
  (405, 40500, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Budew - Absorb - Level 1
  (406, 40600, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Growth - Level 4
  (406, 40600, 74, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Budew - Water Sport - Level 7
  (406, 40600, 346, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Budew - Stun Spore - Level 10
  (406, 40600, 78, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Budew - Mega Drain - Level 13
  (406, 40600, 72, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Budew - Worry Seed - Level 16
  (406, 40600, 388, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Budew - Toxic - TM06
  (406, 40600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 7),
  -- Budew - Bullet Seed - TM09
  (406, 40600, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 8),
  -- Budew - Hidden Power - TM10
  (406, 40600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 9),
  -- Budew - Sunny Day - TM11
  (406, 40600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 10),
  -- Budew - Protect - TM17
  (406, 40600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 11),
  -- Budew - Rain Dance - TM18
  (406, 40600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 12),
  -- Budew - Giga Drain - TM19
  (406, 40600, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 13),
  -- Budew - Frustration - TM21
  (406, 40600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 14),
  -- Budew - Solar Beam - TM22
  (406, 40600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 15),
  -- Budew - Return - TM27
  (406, 40600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 16),
  -- Budew - Shadow Ball - TM30
  (406, 40600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 17),
  -- Budew - Double Team - TM32
  (406, 40600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 18),
  -- Budew - Sludge Bomb - TM36
  (406, 40600, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 19),
  -- Budew - Facade - TM42
  (406, 40600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 20),
  -- Budew - Secret Power - TM43
  (406, 40600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 21),
  -- Budew - Rest - TM44
  (406, 40600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 22),
  -- Budew - Attract - TM45
  (406, 40600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 23),
  -- Budew - Energy Ball - TM53
  (406, 40600, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 24),
  -- Budew - Endure - TM58
  (406, 40600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 25),
  -- Budew - Flash - TM70
  (406, 40600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 26),
  -- Budew - Swords Dance - TM75
  (406, 40600, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 27),
  -- Budew - Psych Up - TM77
  (406, 40600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 28),
  -- Budew - Captivate - TM78
  (406, 40600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 29),
  -- Budew - Sleep Talk - TM82
  (406, 40600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 30),
  -- Budew - Natural Gift - TM83
  (406, 40600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 31),
  -- Budew - Grass Knot - TM86
  (406, 40600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 32),
  -- Budew - Swagger - TM87
  (406, 40600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 33),
  -- Budew - Substitute - TM90
  (406, 40600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 34),
  -- Budew - Cut - HM01
  (406, 40600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 35),
  -- Budew - Pin Missile - Egg
  (406, 40600, 42, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Budew - Razor Leaf - Egg
  (406, 40600, 75, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Budew - Sleep Powder - Egg
  (406, 40600, 79, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Budew - Mind Reader - Egg
  (406, 40600, 170, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Budew - Cotton Spore - Egg
  (406, 40600, 178, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Budew - Spikes - Egg
  (406, 40600, 191, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Budew - Synthesis - Egg
  (406, 40600, 235, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Budew - Extrasensory - Egg
  (406, 40600, 326, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Budew - Leaf Storm - Egg
  (406, 40600, 437, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Budew - Swift - Tutor
  (406, 40600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Budew - Snore - Tutor
  (406, 40600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Budew - Mud-Slap - Tutor
  (406, 40600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Budew - Synthesis - Tutor
  (406, 40600, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Budew - Uproar - Tutor
  (406, 40600, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Budew - Seed Bomb - Tutor
  (406, 40600, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Roserade - Poison Sting - Level 1
  (407, 40700, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Mega Drain - Level 1
  (407, 40700, 72, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roserade - Sweet Scent - Level 1
  (407, 40700, 230, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roserade - Weather Ball - Level 1
  (407, 40700, 311, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roserade - Magical Leaf - Level 1
  (407, 40700, 345, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Roserade - Toxic - TM06
  (407, 40700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 6),
  -- Roserade - Bullet Seed - TM09
  (407, 40700, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 7),
  -- Roserade - Hidden Power - TM10
  (407, 40700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 8),
  -- Roserade - Sunny Day - TM11
  (407, 40700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 9),
  -- Roserade - Hyper Beam - TM15
  (407, 40700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 10),
  -- Roserade - Protect - TM17
  (407, 40700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 11),
  -- Roserade - Rain Dance - TM18
  (407, 40700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 12),
  -- Roserade - Giga Drain - TM19
  (407, 40700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 13),
  -- Roserade - Frustration - TM21
  (407, 40700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 14),
  -- Roserade - Solar Beam - TM22
  (407, 40700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 15),
  -- Roserade - Return - TM27
  (407, 40700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 16),
  -- Roserade - Shadow Ball - TM30
  (407, 40700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 17),
  -- Roserade - Double Team - TM32
  (407, 40700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 18),
  -- Roserade - Sludge Bomb - TM36
  (407, 40700, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 19),
  -- Roserade - Facade - TM42
  (407, 40700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 20),
  -- Roserade - Secret Power - TM43
  (407, 40700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 21),
  -- Roserade - Rest - TM44
  (407, 40700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 22),
  -- Roserade - Attract - TM45
  (407, 40700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 23),
  -- Roserade - Energy Ball - TM53
  (407, 40700, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 24),
  -- Roserade - Endure - TM58
  (407, 40700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 25),
  -- Roserade - Giga Impact - TM68
  (407, 40700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 26),
  -- Roserade - Flash - TM70
  (407, 40700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 27),
  -- Roserade - Swords Dance - TM75
  (407, 40700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 28),
  -- Roserade - Psych Up - TM77
  (407, 40700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 29),
  -- Roserade - Captivate - TM78
  (407, 40700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 30),
  -- Roserade - Sleep Talk - TM82
  (407, 40700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 31),
  -- Roserade - Natural Gift - TM83
  (407, 40700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 32),
  -- Roserade - Poison Jab - TM84
  (407, 40700, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 33),
  -- Roserade - Grass Knot - TM86
  (407, 40700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 34),
  -- Roserade - Swagger - TM87
  (407, 40700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Roserade - Substitute - TM90
  (407, 40700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Roserade - Cut - HM01
  (407, 40700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 37),
  -- Roserade - Swift - Tutor
  (407, 40700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 38),
  -- Roserade - Snore - Tutor
  (407, 40700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 39),
  -- Roserade - Mud-Slap - Tutor
  (407, 40700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Roserade - Fury Cutter - Tutor
  (407, 40700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Roserade - Synthesis - Tutor
  (407, 40700, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Roserade - Seed Bomb - Tutor
  (407, 40700, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Cranidos - Headbutt - Level 1
  (408, 40800, 29, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cranidos - Leer - Level 1
  (408, 40800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cranidos - Focus Energy - Level 6
  (408, 40800, 116, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cranidos - Pursuit - Level 10
  (408, 40800, 228, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cranidos - Take Down - Level 15
  (408, 40800, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cranidos - Scary Face - Level 19
  (408, 40800, 184, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cranidos - Assurance - Level 24
  (408, 40800, 372, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cranidos - Ancient Power - Level 28
  (408, 40800, 246, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cranidos - Zen Headbutt - Level 33
  (408, 40800, 428, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cranidos - Screech - Level 37
  (408, 40800, 103, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cranidos - Head Smash - Level 43
  (408, 40800, 457, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Cranidos - Roar - TM05
  (408, 40800, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 12),
  -- Cranidos - Toxic - TM06
  (408, 40800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Cranidos - Hidden Power - TM10
  (408, 40800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Cranidos - Sunny Day - TM11
  (408, 40800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Cranidos - Ice Beam - TM13
  (408, 40800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 16),
  -- Cranidos - Blizzard - TM14
  (408, 40800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 17),
  -- Cranidos - Protect - TM17
  (408, 40800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Cranidos - Rain Dance - TM18
  (408, 40800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Cranidos - Frustration - TM21
  (408, 40800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Cranidos - Iron Tail - TM23
  (408, 40800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Cranidos - Thunderbolt - TM24
  (408, 40800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Cranidos - Thunder - TM25
  (408, 40800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Cranidos - Earthquake - TM26
  (408, 40800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Cranidos - Return - TM27
  (408, 40800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Cranidos - Dig - TM28
  (408, 40800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Cranidos - Double Team - TM32
  (408, 40800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Cranidos - Shock Wave - TM34
  (408, 40800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Cranidos - Flamethrower - TM35
  (408, 40800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 29),
  -- Cranidos - Sandstorm - TM37
  (408, 40800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Cranidos - Fire Blast - TM38
  (408, 40800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 31),
  -- Cranidos - Rock Tomb - TM39
  (408, 40800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 32),
  -- Cranidos - Facade - TM42
  (408, 40800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Cranidos - Secret Power - TM43
  (408, 40800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Cranidos - Rest - TM44
  (408, 40800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Cranidos - Attract - TM45
  (408, 40800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Cranidos - Thief - TM46
  (408, 40800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Cranidos - Fling - TM56
  (408, 40800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 38),
  -- Cranidos - Endure - TM58
  (408, 40800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Cranidos - Dragon Pulse - TM59
  (408, 40800, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 40),
  -- Cranidos - Payback - TM66
  (408, 40800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Cranidos - Rock Polish - TM69
  (408, 40800, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 42),
  -- Cranidos - Stone Edge - TM71
  (408, 40800, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 43),
  -- Cranidos - Swords Dance - TM75
  (408, 40800, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 44),
  -- Cranidos - Stealth Rock - TM76
  (408, 40800, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 45),
  -- Cranidos - Captivate - TM78
  (408, 40800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Cranidos - Rock Slide - TM80
  (408, 40800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Cranidos - Sleep Talk - TM82
  (408, 40800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Cranidos - Natural Gift - TM83
  (408, 40800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Cranidos - Swagger - TM87
  (408, 40800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Cranidos - Substitute - TM90
  (408, 40800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Cranidos - Strength - HM04
  (408, 40800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Cranidos - Rock Smash - HM06
  (408, 40800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Cranidos - Rock Climb - HM08
  (408, 40800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Cranidos - Whirlwind - Egg
  (408, 40800, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cranidos - Slam - Egg
  (408, 40800, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cranidos - Stomp - Egg
  (408, 40800, 23, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cranidos - Thrash - Egg
  (408, 40800, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cranidos - Double-Edge - Egg
  (408, 40800, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cranidos - Leer - Egg
  (408, 40800, 43, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cranidos - Crunch - Egg
  (408, 40800, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cranidos - Hammer Arm - Egg
  (408, 40800, 359, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cranidos - Fire Punch - Tutor
  (408, 40800, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Cranidos - Thunder Punch - Tutor
  (408, 40800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Cranidos - Snore - Tutor
  (408, 40800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Cranidos - Spite - Tutor
  (408, 40800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Cranidos - Mud-Slap - Tutor
  (408, 40800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Cranidos - Ancient Power - Tutor
  (408, 40800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Cranidos - Uproar - Tutor
  (408, 40800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Cranidos - Superpower - Tutor
  (408, 40800, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Cranidos - Endeavor - Tutor
  (408, 40800, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Cranidos - Earth Power - Tutor
  (408, 40800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Cranidos - Zen Headbutt - Tutor
  (408, 40800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Cranidos - Iron Head - Tutor
  (408, 40800, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Rampardos - Headbutt - Level 1
  (409, 40900, 29, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rampardos - Leer - Level 1
  (409, 40900, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rampardos - Focus Energy - Level 6
  (409, 40900, 116, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rampardos - Pursuit - Level 10
  (409, 40900, 228, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rampardos - Take Down - Level 15
  (409, 40900, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rampardos - Scary Face - Level 19
  (409, 40900, 184, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rampardos - Assurance - Level 24
  (409, 40900, 372, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rampardos - Ancient Power - Level 28
  (409, 40900, 246, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Rampardos - Endeavor - Level 30
  (409, 40900, 283, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rampardos - Zen Headbutt - Level 36
  (409, 40900, 428, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rampardos - Screech - Level 43
  (409, 40900, 103, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rampardos - Head Smash - Level 52
  (409, 40900, 457, 9, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Rampardos - Focus Punch - TM01
  (409, 40900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Rampardos - Roar - TM05
  (409, 40900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Rampardos - Toxic - TM06
  (409, 40900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Rampardos - Hidden Power - TM10
  (409, 40900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Rampardos - Sunny Day - TM11
  (409, 40900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Rampardos - Ice Beam - TM13
  (409, 40900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Rampardos - Blizzard - TM14
  (409, 40900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Rampardos - Hyper Beam - TM15
  (409, 40900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Rampardos - Protect - TM17
  (409, 40900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Rampardos - Rain Dance - TM18
  (409, 40900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Rampardos - Frustration - TM21
  (409, 40900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Rampardos - Iron Tail - TM23
  (409, 40900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Rampardos - Thunderbolt - TM24
  (409, 40900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Rampardos - Thunder - TM25
  (409, 40900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Rampardos - Earthquake - TM26
  (409, 40900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Rampardos - Return - TM27
  (409, 40900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Rampardos - Dig - TM28
  (409, 40900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Rampardos - Brick Break - TM31
  (409, 40900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Rampardos - Double Team - TM32
  (409, 40900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Rampardos - Shock Wave - TM34
  (409, 40900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Rampardos - Flamethrower - TM35
  (409, 40900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Rampardos - Sandstorm - TM37
  (409, 40900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Rampardos - Fire Blast - TM38
  (409, 40900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Rampardos - Rock Tomb - TM39
  (409, 40900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Rampardos - Facade - TM42
  (409, 40900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Rampardos - Secret Power - TM43
  (409, 40900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Rampardos - Rest - TM44
  (409, 40900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Rampardos - Attract - TM45
  (409, 40900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Rampardos - Thief - TM46
  (409, 40900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 41),
  -- Rampardos - Focus Blast - TM52
  (409, 40900, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Rampardos - Fling - TM56
  (409, 40900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Rampardos - Endure - TM58
  (409, 40900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Rampardos - Dragon Pulse - TM59
  (409, 40900, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 45),
  -- Rampardos - Payback - TM66
  (409, 40900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 46),
  -- Rampardos - Giga Impact - TM68
  (409, 40900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Rampardos - Rock Polish - TM69
  (409, 40900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 48),
  -- Rampardos - Stone Edge - TM71
  (409, 40900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 49),
  -- Rampardos - Avalanche - TM72
  (409, 40900, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 50),
  -- Rampardos - Swords Dance - TM75
  (409, 40900, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 51),
  -- Rampardos - Stealth Rock - TM76
  (409, 40900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 52),
  -- Rampardos - Captivate - TM78
  (409, 40900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 53),
  -- Rampardos - Rock Slide - TM80
  (409, 40900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 54),
  -- Rampardos - Sleep Talk - TM82
  (409, 40900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Rampardos - Natural Gift - TM83
  (409, 40900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Rampardos - Swagger - TM87
  (409, 40900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 57),
  -- Rampardos - Substitute - TM90
  (409, 40900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 58),
  -- Rampardos - Cut - HM01
  (409, 40900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 59),
  -- Rampardos - Surf - HM03
  (409, 40900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 60),
  -- Rampardos - Strength - HM04
  (409, 40900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 61),
  -- Rampardos - Defog - HM05
  (409, 40900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 62),
  -- Rampardos - Rock Smash - HM06
  (409, 40900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 63),
  -- Rampardos - Rock Climb - HM08
  (409, 40900, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 64),
  -- Rampardos - Fire Punch - Tutor
  (409, 40900, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Rampardos - Thunder Punch - Tutor
  (409, 40900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Rampardos - Snore - Tutor
  (409, 40900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Rampardos - Spite - Tutor
  (409, 40900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Rampardos - Mud-Slap - Tutor
  (409, 40900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Rampardos - Outrage - Tutor
  (409, 40900, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Rampardos - Ancient Power - Tutor
  (409, 40900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Rampardos - Uproar - Tutor
  (409, 40900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Rampardos - Superpower - Tutor
  (409, 40900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Rampardos - Endeavor - Tutor
  (409, 40900, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Rampardos - Earth Power - Tutor
  (409, 40900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Rampardos - Zen Headbutt - Tutor
  (409, 40900, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Rampardos - Iron Head - Tutor
  (409, 40900, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Shieldon - Tackle - Level 1
  (410, 41000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shieldon - Protect - Level 1
  (410, 41000, 182, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shieldon - Taunt - Level 6
  (410, 41000, 269, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Shieldon - Metal Sound - Level 10
  (410, 41000, 319, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shieldon - Take Down - Level 15
  (410, 41000, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shieldon - Iron Defense - Level 19
  (410, 41000, 334, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shieldon - Swagger - Level 24
  (410, 41000, 207, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Shieldon - Ancient Power - Level 28
  (410, 41000, 246, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shieldon - Endure - Level 33
  (410, 41000, 203, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shieldon - Metal Burst - Level 37
  (410, 41000, 368, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shieldon - Iron Head - Level 43
  (410, 41000, 442, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Shieldon - Roar - TM05
  (410, 41000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 12),
  -- Shieldon - Toxic - TM06
  (410, 41000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Shieldon - Hidden Power - TM10
  (410, 41000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Shieldon - Sunny Day - TM11
  (410, 41000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Shieldon - Taunt - TM12
  (410, 41000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 16),
  -- Shieldon - Ice Beam - TM13
  (410, 41000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Shieldon - Blizzard - TM14
  (410, 41000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Shieldon - Protect - TM17
  (410, 41000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Shieldon - Rain Dance - TM18
  (410, 41000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Shieldon - Frustration - TM21
  (410, 41000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Shieldon - Iron Tail - TM23
  (410, 41000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 22),
  -- Shieldon - Thunderbolt - TM24
  (410, 41000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 23),
  -- Shieldon - Thunder - TM25
  (410, 41000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 24),
  -- Shieldon - Earthquake - TM26
  (410, 41000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Shieldon - Return - TM27
  (410, 41000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Shieldon - Dig - TM28
  (410, 41000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Shieldon - Double Team - TM32
  (410, 41000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Shieldon - Shock Wave - TM34
  (410, 41000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Shieldon - Flamethrower - TM35
  (410, 41000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 30),
  -- Shieldon - Sandstorm - TM37
  (410, 41000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 31),
  -- Shieldon - Fire Blast - TM38
  (410, 41000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 32),
  -- Shieldon - Rock Tomb - TM39
  (410, 41000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Shieldon - Torment - TM41
  (410, 41000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 34),
  -- Shieldon - Facade - TM42
  (410, 41000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Shieldon - Secret Power - TM43
  (410, 41000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Shieldon - Rest - TM44
  (410, 41000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Shieldon - Attract - TM45
  (410, 41000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Shieldon - Endure - TM58
  (410, 41000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Shieldon - Rock Polish - TM69
  (410, 41000, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 40),
  -- Shieldon - Stone Edge - TM71
  (410, 41000, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 41),
  -- Shieldon - Stealth Rock - TM76
  (410, 41000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 42),
  -- Shieldon - Captivate - TM78
  (410, 41000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Shieldon - Rock Slide - TM80
  (410, 41000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 44),
  -- Shieldon - Sleep Talk - TM82
  (410, 41000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Shieldon - Natural Gift - TM83
  (410, 41000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Shieldon - Swagger - TM87
  (410, 41000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Shieldon - Substitute - TM90
  (410, 41000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Shieldon - Flash Cannon - TM91
  (410, 41000, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 49),
  -- Shieldon - Strength - HM04
  (410, 41000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Shieldon - Rock Smash - HM06
  (410, 41000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Shieldon - Headbutt - Egg
  (410, 41000, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shieldon - Body Slam - Egg
  (410, 41000, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shieldon - Double-Edge - Egg
  (410, 41000, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shieldon - Fissure - Egg
  (410, 41000, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shieldon - Screech - Egg
  (410, 41000, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shieldon - Focus Energy - Egg
  (410, 41000, 116, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shieldon - Curse - Egg
  (410, 41000, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shieldon - Scary Face - Egg
  (410, 41000, 184, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shieldon - Rock Blast - Egg
  (410, 41000, 350, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Shieldon - Snore - Tutor
  (410, 41000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Shieldon - Mud-Slap - Tutor
  (410, 41000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Shieldon - Ancient Power - Tutor
  (410, 41000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Shieldon - Iron Defense - Tutor
  (410, 41000, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Shieldon - Magnet Rise - Tutor
  (410, 41000, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Shieldon - Earth Power - Tutor
  (410, 41000, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Shieldon - Iron Head - Tutor
  (410, 41000, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Bastiodon - Tackle - Level 1
  (411, 41100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bastiodon - Protect - Level 1
  (411, 41100, 182, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bastiodon - Taunt - Level 1
  (411, 41100, 269, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bastiodon - Metal Sound - Level 1
  (411, 41100, 319, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bastiodon - Taunt - Level 6
  (411, 41100, 269, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bastiodon - Metal Sound - Level 10
  (411, 41100, 319, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Bastiodon - Take Down - Level 15
  (411, 41100, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bastiodon - Iron Defense - Level 19
  (411, 41100, 334, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Bastiodon - Swagger - Level 24
  (411, 41100, 207, 9, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Bastiodon - Ancient Power - Level 28
  (411, 41100, 246, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Bastiodon - Block - Level 30
  (411, 41100, 335, 9, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Bastiodon - Endure - Level 36
  (411, 41100, 203, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bastiodon - Metal Burst - Level 43
  (411, 41100, 368, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Bastiodon - Iron Head - Level 52
  (411, 41100, 442, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Bastiodon - Roar - TM05
  (411, 41100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Bastiodon - Toxic - TM06
  (411, 41100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Bastiodon - Hidden Power - TM10
  (411, 41100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Bastiodon - Sunny Day - TM11
  (411, 41100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Bastiodon - Taunt - TM12
  (411, 41100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Bastiodon - Ice Beam - TM13
  (411, 41100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Bastiodon - Blizzard - TM14
  (411, 41100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Bastiodon - Hyper Beam - TM15
  (411, 41100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Bastiodon - Protect - TM17
  (411, 41100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Bastiodon - Rain Dance - TM18
  (411, 41100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Bastiodon - Frustration - TM21
  (411, 41100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Bastiodon - Iron Tail - TM23
  (411, 41100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Bastiodon - Thunderbolt - TM24
  (411, 41100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Bastiodon - Thunder - TM25
  (411, 41100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Bastiodon - Earthquake - TM26
  (411, 41100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Bastiodon - Return - TM27
  (411, 41100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Bastiodon - Dig - TM28
  (411, 41100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Bastiodon - Double Team - TM32
  (411, 41100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Bastiodon - Shock Wave - TM34
  (411, 41100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Bastiodon - Flamethrower - TM35
  (411, 41100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 34),
  -- Bastiodon - Sandstorm - TM37
  (411, 41100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Bastiodon - Fire Blast - TM38
  (411, 41100, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 36),
  -- Bastiodon - Rock Tomb - TM39
  (411, 41100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 37),
  -- Bastiodon - Torment - TM41
  (411, 41100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 38),
  -- Bastiodon - Facade - TM42
  (411, 41100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Bastiodon - Secret Power - TM43
  (411, 41100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Bastiodon - Rest - TM44
  (411, 41100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Bastiodon - Attract - TM45
  (411, 41100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Bastiodon - Endure - TM58
  (411, 41100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Bastiodon - Giga Impact - TM68
  (411, 41100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Bastiodon - Rock Polish - TM69
  (411, 41100, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 45),
  -- Bastiodon - Stone Edge - TM71
  (411, 41100, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 46),
  -- Bastiodon - Avalanche - TM72
  (411, 41100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 47),
  -- Bastiodon - Stealth Rock - TM76
  (411, 41100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Bastiodon - Captivate - TM78
  (411, 41100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Bastiodon - Rock Slide - TM80
  (411, 41100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Bastiodon - Sleep Talk - TM82
  (411, 41100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Bastiodon - Natural Gift - TM83
  (411, 41100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Bastiodon - Swagger - TM87
  (411, 41100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Bastiodon - Substitute - TM90
  (411, 41100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Bastiodon - Flash Cannon - TM91
  (411, 41100, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 55),
  -- Bastiodon - Strength - HM04
  (411, 41100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 56),
  -- Bastiodon - Rock Smash - HM06
  (411, 41100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 57),
  -- Bastiodon - Snore - Tutor
  (411, 41100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Bastiodon - Mud-Slap - Tutor
  (411, 41100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Bastiodon - Outrage - Tutor
  (411, 41100, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Bastiodon - Ancient Power - Tutor
  (411, 41100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Bastiodon - Iron Defense - Tutor
  (411, 41100, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Bastiodon - Magnet Rise - Tutor
  (411, 41100, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Bastiodon - Earth Power - Tutor
  (411, 41100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Bastiodon - Iron Head - Tutor
  (411, 41100, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Burmy - Protect - Level 1
  (412, 41200, 182, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Burmy - Tackle - Level 10
  (412, 41200, 33, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Burmy - Bug Bite - Level 15
  (412, 41200, 450, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Burmy - Hidden Power - Level 20
  (412, 41200, 237, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Burmy - Snore - Tutor
  (412, 41200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 5),
  -- Wormadam - Tackle - Level 1
  (413, 41300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam - Protect - Level 10
  (413, 41300, 182, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam - Bug Bite - Level 15
  (413, 41300, 450, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam - Hidden Power - Level 20
  (413, 41300, 237, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam - Confusion - Level 23
  (413, 41300, 93, 9, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam - Razor Leaf - Level 26
  (413, 41300, 75, 9, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam - Growth - Level 29
  (413, 41300, 74, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam - Psybeam - Level 32
  (413, 41300, 60, 9, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam - Captivate - Level 35
  (413, 41300, 445, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam - Flail - Level 38
  (413, 41300, 175, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam - Attract - Level 41
  (413, 41300, 213, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam - Psychic - Level 44
  (413, 41300, 94, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam - Leaf Storm - Level 47
  (413, 41300, 437, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam - Toxic - TM06
  (413, 41300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Wormadam - Bullet Seed - TM09
  (413, 41300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Wormadam - Hidden Power - TM10
  (413, 41300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Wormadam - Sunny Day - TM11
  (413, 41300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Wormadam - Hyper Beam - TM15
  (413, 41300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Wormadam - Protect - TM17
  (413, 41300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Wormadam - Rain Dance - TM18
  (413, 41300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Wormadam - Giga Drain - TM19
  (413, 41300, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 21),
  -- Wormadam - Safeguard - TM20
  (413, 41300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Wormadam - Frustration - TM21
  (413, 41300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Wormadam - Solar Beam - TM22
  (413, 41300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Wormadam - Return - TM27
  (413, 41300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Wormadam - Psychic - TM29
  (413, 41300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Wormadam - Shadow Ball - TM30
  (413, 41300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Wormadam - Double Team - TM32
  (413, 41300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Wormadam - Facade - TM42
  (413, 41300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Wormadam - Secret Power - TM43
  (413, 41300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Wormadam - Rest - TM44
  (413, 41300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Wormadam - Attract - TM45
  (413, 41300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Wormadam - Thief - TM46
  (413, 41300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Wormadam - Skill Swap - TM48
  (413, 41300, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 34),
  -- Wormadam - Energy Ball - TM53
  (413, 41300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 35),
  -- Wormadam - Endure - TM58
  (413, 41300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Wormadam - Giga Impact - TM68
  (413, 41300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Wormadam - Flash - TM70
  (413, 41300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Wormadam - Psych Up - TM77
  (413, 41300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Wormadam - Captivate - TM78
  (413, 41300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Wormadam - Sleep Talk - TM82
  (413, 41300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Wormadam - Natural Gift - TM83
  (413, 41300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Wormadam - Dream Eater - TM85
  (413, 41300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 43),
  -- Wormadam - Grass Knot - TM86
  (413, 41300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 44),
  -- Wormadam - Swagger - TM87
  (413, 41300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Wormadam - Substitute - TM90
  (413, 41300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Wormadam - Snore - Tutor
  (413, 41300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Wormadam - Synthesis - Tutor
  (413, 41300, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Wormadam - Uproar - Tutor
  (413, 41300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Wormadam - Endeavor - Tutor
  (413, 41300, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Wormadam - Signal Beam - Tutor
  (413, 41300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Wormadam - Sucker Punch - Tutor
  (413, 41300, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Wormadam - Seed Bomb - Tutor
  (413, 41300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Mothim - Tackle - Level 1
  (414, 41400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mothim - Protect - Level 10
  (414, 41400, 182, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Mothim - Bug Bite - Level 15
  (414, 41400, 450, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Mothim - Hidden Power - Level 20
  (414, 41400, 237, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mothim - Confusion - Level 23
  (414, 41400, 93, 9, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Mothim - Gust - Level 26
  (414, 41400, 16, 9, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mothim - Poison Powder - Level 29
  (414, 41400, 77, 9, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Mothim - Psybeam - Level 32
  (414, 41400, 60, 9, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Mothim - Camouflage - Level 35
  (414, 41400, 293, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mothim - Silver Wind - Level 38
  (414, 41400, 318, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Mothim - Air Slash - Level 41
  (414, 41400, 403, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mothim - Psychic - Level 44
  (414, 41400, 94, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Mothim - Bug Buzz - Level 47
  (414, 41400, 405, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Mothim - Toxic - TM06
  (414, 41400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Mothim - Hidden Power - TM10
  (414, 41400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Mothim - Sunny Day - TM11
  (414, 41400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Mothim - Hyper Beam - TM15
  (414, 41400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Mothim - Protect - TM17
  (414, 41400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Mothim - Rain Dance - TM18
  (414, 41400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Mothim - Giga Drain - TM19
  (414, 41400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 20),
  -- Mothim - Safeguard - TM20
  (414, 41400, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Mothim - Frustration - TM21
  (414, 41400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Mothim - Solar Beam - TM22
  (414, 41400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Mothim - Return - TM27
  (414, 41400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Mothim - Psychic - TM29
  (414, 41400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Mothim - Shadow Ball - TM30
  (414, 41400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Mothim - Double Team - TM32
  (414, 41400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Mothim - Aerial Ace - TM40
  (414, 41400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Mothim - Facade - TM42
  (414, 41400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Mothim - Secret Power - TM43
  (414, 41400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Mothim - Rest - TM44
  (414, 41400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Mothim - Attract - TM45
  (414, 41400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Mothim - Thief - TM46
  (414, 41400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Mothim - Skill Swap - TM48
  (414, 41400, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 34),
  -- Mothim - Roost - TM51
  (414, 41400, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 35),
  -- Mothim - Energy Ball - TM53
  (414, 41400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 36),
  -- Mothim - Endure - TM58
  (414, 41400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Mothim - Silver Wind - TM62
  (414, 41400, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 38),
  -- Mothim - Giga Impact - TM68
  (414, 41400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Mothim - Flash - TM70
  (414, 41400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Mothim - Psych Up - TM77
  (414, 41400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 41),
  -- Mothim - Captivate - TM78
  (414, 41400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Mothim - Sleep Talk - TM82
  (414, 41400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Mothim - Natural Gift - TM83
  (414, 41400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Mothim - Dream Eater - TM85
  (414, 41400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 45),
  -- Mothim - Swagger - TM87
  (414, 41400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Mothim - U-turn - TM89
  (414, 41400, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 47),
  -- Mothim - Substitute - TM90
  (414, 41400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Mothim - Defog - HM05
  (414, 41400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Mothim - Swift - Tutor
  (414, 41400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Mothim - Snore - Tutor
  (414, 41400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Mothim - Mud-Slap - Tutor
  (414, 41400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Mothim - Twister - Tutor
  (414, 41400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Mothim - Air Cutter - Tutor
  (414, 41400, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Mothim - Signal Beam - Tutor
  (414, 41400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Mothim - Ominous Wind - Tutor
  (414, 41400, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Combee - Gust - Level 1
  (415, 41500, 16, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Sweet Scent - Level 1
  (415, 41500, 230, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combee - Bug Bite - Level 13
  (415, 41500, 450, 9, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Combee - Swift - Tutor
  (415, 41500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 4),
  -- Combee - Snore - Tutor
  (415, 41500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 5),
  -- Combee - Mud-Slap - Tutor
  (415, 41500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 6),
  -- Combee - Endeavor - Tutor
  (415, 41500, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 7),
  -- Combee - Air Cutter - Tutor
  (415, 41500, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 8),
  -- Combee - Ominous Wind - Tutor
  (415, 41500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 9),
  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Sweet Scent - Level 1
  (416, 41600, 230, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vespiquen - Poison Sting - Level 3
  (416, 41600, 40, 9, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Vespiquen - Confuse Ray - Level 7
  (416, 41600, 109, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Vespiquen - Fury Cutter - Level 9
  (416, 41600, 210, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Vespiquen - Defend Order - Level 13
  (416, 41600, 455, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Vespiquen - Pursuit - Level 15
  (416, 41600, 228, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Vespiquen - Fury Swipes - Level 19
  (416, 41600, 154, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Vespiquen - Power Gem - Level 21
  (416, 41600, 408, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Vespiquen - Heal Order - Level 25
  (416, 41600, 456, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Vespiquen - Toxic - Level 27
  (416, 41600, 92, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Vespiquen - Slash - Level 31
  (416, 41600, 163, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Vespiquen - Captivate - Level 33
  (416, 41600, 445, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Vespiquen - Attack Order - Level 37
  (416, 41600, 454, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Vespiquen - Swagger - Level 39
  (416, 41600, 207, 9, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Vespiquen - Destiny Bond - Level 43
  (416, 41600, 194, 9, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Vespiquen - Toxic - TM06
  (416, 41600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Vespiquen - Hidden Power - TM10
  (416, 41600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Vespiquen - Sunny Day - TM11
  (416, 41600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Vespiquen - Hyper Beam - TM15
  (416, 41600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Vespiquen - Protect - TM17
  (416, 41600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Vespiquen - Rain Dance - TM18
  (416, 41600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Vespiquen - Frustration - TM21
  (416, 41600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Vespiquen - Return - TM27
  (416, 41600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Vespiquen - Double Team - TM32
  (416, 41600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Vespiquen - Sludge Bomb - TM36
  (416, 41600, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 26),
  -- Vespiquen - Aerial Ace - TM40
  (416, 41600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 27),
  -- Vespiquen - Facade - TM42
  (416, 41600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Vespiquen - Secret Power - TM43
  (416, 41600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Vespiquen - Rest - TM44
  (416, 41600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Vespiquen - Attract - TM45
  (416, 41600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Vespiquen - Thief - TM46
  (416, 41600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Vespiquen - Roost - TM51
  (416, 41600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 33),
  -- Vespiquen - Fling - TM56
  (416, 41600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 34),
  -- Vespiquen - Endure - TM58
  (416, 41600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Vespiquen - Silver Wind - TM62
  (416, 41600, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 36),
  -- Vespiquen - Giga Impact - TM68
  (416, 41600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Vespiquen - Flash - TM70
  (416, 41600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Vespiquen - Captivate - TM78
  (416, 41600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Vespiquen - X-Scissor - TM81
  (416, 41600, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 40),
  -- Vespiquen - Sleep Talk - TM82
  (416, 41600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Vespiquen - Natural Gift - TM83
  (416, 41600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Vespiquen - Swagger - TM87
  (416, 41600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Vespiquen - U-turn - TM89
  (416, 41600, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 44),
  -- Vespiquen - Substitute - TM90
  (416, 41600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Vespiquen - Cut - HM01
  (416, 41600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 46),
  -- Vespiquen - Defog - HM05
  (416, 41600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Vespiquen - Swift - Tutor
  (416, 41600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Vespiquen - Snore - Tutor
  (416, 41600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Vespiquen - Mud-Slap - Tutor
  (416, 41600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Vespiquen - Fury Cutter - Tutor
  (416, 41600, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Vespiquen - Endeavor - Tutor
  (416, 41600, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Vespiquen - Air Cutter - Tutor
  (416, 41600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Vespiquen - Signal Beam - Tutor
  (416, 41600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Vespiquen - Ominous Wind - Tutor
  (416, 41600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Pachirisu - Growl - Level 1
  (417, 41700, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pachirisu - Bide - Level 1
  (417, 41700, 117, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pachirisu - Quick Attack - Level 5
  (417, 41700, 98, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pachirisu - Charm - Level 9
  (417, 41700, 204, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pachirisu - Spark - Level 13
  (417, 41700, 209, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pachirisu - Endure - Level 17
  (417, 41700, 203, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pachirisu - Swift - Level 21
  (417, 41700, 129, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Pachirisu - Sweet Kiss - Level 25
  (417, 41700, 186, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Pachirisu - Discharge - Level 29
  (417, 41700, 435, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Pachirisu - Super Fang - Level 33
  (417, 41700, 162, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Pachirisu - Last Resort - Level 37
  (417, 41700, 387, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Pachirisu - Toxic - TM06
  (417, 41700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Pachirisu - Hidden Power - TM10
  (417, 41700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Pachirisu - Light Screen - TM16
  (417, 41700, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 14),
  -- Pachirisu - Protect - TM17
  (417, 41700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Pachirisu - Rain Dance - TM18
  (417, 41700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 16),
  -- Pachirisu - Frustration - TM21
  (417, 41700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 17),
  -- Pachirisu - Iron Tail - TM23
  (417, 41700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 18),
  -- Pachirisu - Thunderbolt - TM24
  (417, 41700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 19),
  -- Pachirisu - Thunder - TM25
  (417, 41700, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 20),
  -- Pachirisu - Return - TM27
  (417, 41700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Pachirisu - Dig - TM28
  (417, 41700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 22),
  -- Pachirisu - Double Team - TM32
  (417, 41700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Pachirisu - Shock Wave - TM34
  (417, 41700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 24),
  -- Pachirisu - Facade - TM42
  (417, 41700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Pachirisu - Secret Power - TM43
  (417, 41700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Pachirisu - Rest - TM44
  (417, 41700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Pachirisu - Attract - TM45
  (417, 41700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Pachirisu - Fling - TM56
  (417, 41700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 29),
  -- Pachirisu - Charge Beam - TM57
  (417, 41700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 30),
  -- Pachirisu - Endure - TM58
  (417, 41700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Pachirisu - Flash - TM70
  (417, 41700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Pachirisu - Thunder Wave - TM73
  (417, 41700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 33),
  -- Pachirisu - Captivate - TM78
  (417, 41700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Pachirisu - Sleep Talk - TM82
  (417, 41700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Pachirisu - Natural Gift - TM83
  (417, 41700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Pachirisu - Grass Knot - TM86
  (417, 41700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 37),
  -- Pachirisu - Swagger - TM87
  (417, 41700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Pachirisu - U-turn - TM89
  (417, 41700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 39),
  -- Pachirisu - Substitute - TM90
  (417, 41700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Pachirisu - Cut - HM01
  (417, 41700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 41),
  -- Pachirisu - Bite - Egg
  (417, 41700, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pachirisu - Defense Curl - Egg
  (417, 41700, 111, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pachirisu - Flail - Egg
  (417, 41700, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pachirisu - Rollout - Egg
  (417, 41700, 205, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pachirisu - Flatter - Egg
  (417, 41700, 260, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pachirisu - Fake Tears - Egg
  (417, 41700, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pachirisu - Covet - Egg
  (417, 41700, 343, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pachirisu - Thunder Punch - Tutor
  (417, 41700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Pachirisu - Swift - Tutor
  (417, 41700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Pachirisu - Snore - Tutor
  (417, 41700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Pachirisu - Mud-Slap - Tutor
  (417, 41700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Pachirisu - Rollout - Tutor
  (417, 41700, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Pachirisu - Uproar - Tutor
  (417, 41700, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Pachirisu - Helping Hand - Tutor
  (417, 41700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Pachirisu - Last Resort - Tutor
  (417, 41700, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Pachirisu - Magnet Rise - Tutor
  (417, 41700, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Pachirisu - Seed Bomb - Tutor
  (417, 41700, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Pachirisu - Gunk Shot - Tutor
  (417, 41700, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Buizel - Growl - Level 1
  (418, 41800, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buizel - Sonic Boom - Level 1
  (418, 41800, 49, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buizel - Water Sport - Level 1
  (418, 41800, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Buizel - Quick Attack - Level 3
  (418, 41800, 98, 9, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Buizel - Water Gun - Level 6
  (418, 41800, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Buizel - Pursuit - Level 10
  (418, 41800, 228, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Buizel - Swift - Level 15
  (418, 41800, 129, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Buizel - Aqua Jet - Level 21
  (418, 41800, 453, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Buizel - Agility - Level 28
  (418, 41800, 97, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Buizel - Whirlpool - Level 36
  (418, 41800, 250, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Buizel - Razor Wind - Level 45
  (418, 41800, 13, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Buizel - Focus Punch - TM01
  (418, 41800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 12),
  -- Buizel - Water Pulse - TM03
  (418, 41800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Buizel - Toxic - TM06
  (418, 41800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Buizel - Hail - TM07
  (418, 41800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Buizel - Bulk Up - TM08
  (418, 41800, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 16),
  -- Buizel - Hidden Power - TM10
  (418, 41800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Buizel - Ice Beam - TM13
  (418, 41800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Buizel - Blizzard - TM14
  (418, 41800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Buizel - Protect - TM17
  (418, 41800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Buizel - Rain Dance - TM18
  (418, 41800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Buizel - Frustration - TM21
  (418, 41800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Buizel - Iron Tail - TM23
  (418, 41800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Buizel - Return - TM27
  (418, 41800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Buizel - Dig - TM28
  (418, 41800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Buizel - Brick Break - TM31
  (418, 41800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Buizel - Double Team - TM32
  (418, 41800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Buizel - Rock Tomb - TM39
  (418, 41800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 28),
  -- Buizel - Facade - TM42
  (418, 41800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Buizel - Secret Power - TM43
  (418, 41800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Buizel - Rest - TM44
  (418, 41800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Buizel - Attract - TM45
  (418, 41800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Buizel - Brine - TM55
  (418, 41800, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Buizel - Endure - TM58
  (418, 41800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Buizel - Captivate - TM78
  (418, 41800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Buizel - Sleep Talk - TM82
  (418, 41800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Buizel - Natural Gift - TM83
  (418, 41800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Buizel - Swagger - TM87
  (418, 41800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Buizel - Substitute - TM90
  (418, 41800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Buizel - Surf - HM03
  (418, 41800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 40),
  -- Buizel - Strength - HM04
  (418, 41800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 41),
  -- Buizel - Defog - HM05
  (418, 41800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 42),
  -- Buizel - Rock Smash - HM06
  (418, 41800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Buizel - Waterfall - HM07
  (418, 41800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Buizel - Double Slap - Egg
  (418, 41800, 3, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buizel - Headbutt - Egg
  (418, 41800, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buizel - Fury Swipes - Egg
  (418, 41800, 154, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buizel - Slash - Egg
  (418, 41800, 163, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buizel - Mud-Slap - Egg
  (418, 41800, 189, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buizel - Fury Cutter - Egg
  (418, 41800, 210, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buizel - Baton Pass - Egg
  (418, 41800, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buizel - Odor Sleuth - Egg
  (418, 41800, 316, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buizel - Ice Punch - Tutor
  (418, 41800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Buizel - Swift - Tutor
  (418, 41800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Buizel - Snore - Tutor
  (418, 41800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Buizel - Mud-Slap - Tutor
  (418, 41800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Buizel - Icy Wind - Tutor
  (418, 41800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Buizel - Dive - Tutor
  (418, 41800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Floatzel - Growl - Level 1
  (419, 41900, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floatzel - Sonic Boom - Level 1
  (419, 41900, 49, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floatzel - Quick Attack - Level 1
  (419, 41900, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floatzel - Water Sport - Level 1
  (419, 41900, 346, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Floatzel - Ice Fang - Level 1
  (419, 41900, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Floatzel - Quick Attack - Level 3
  (419, 41900, 98, 9, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Floatzel - Water Gun - Level 6
  (419, 41900, 55, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Floatzel - Pursuit - Level 10
  (419, 41900, 228, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Floatzel - Swift - Level 15
  (419, 41900, 129, 9, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Floatzel - Aqua Jet - Level 21
  (419, 41900, 453, 9, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Floatzel - Crunch - Level 26
  (419, 41900, 242, 9, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Floatzel - Agility - Level 29
  (419, 41900, 97, 9, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Floatzel - Whirlpool - Level 39
  (419, 41900, 250, 9, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Floatzel - Razor Wind - Level 50
  (419, 41900, 13, 9, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Floatzel - Focus Punch - TM01
  (419, 41900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Floatzel - Water Pulse - TM03
  (419, 41900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Floatzel - Roar - TM05
  (419, 41900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Floatzel - Toxic - TM06
  (419, 41900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Floatzel - Hail - TM07
  (419, 41900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Floatzel - Bulk Up - TM08
  (419, 41900, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 20),
  -- Floatzel - Hidden Power - TM10
  (419, 41900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Floatzel - Taunt - TM12
  (419, 41900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Floatzel - Ice Beam - TM13
  (419, 41900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Floatzel - Blizzard - TM14
  (419, 41900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Floatzel - Hyper Beam - TM15
  (419, 41900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Floatzel - Protect - TM17
  (419, 41900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Floatzel - Rain Dance - TM18
  (419, 41900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Floatzel - Frustration - TM21
  (419, 41900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Floatzel - Iron Tail - TM23
  (419, 41900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Floatzel - Return - TM27
  (419, 41900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Floatzel - Dig - TM28
  (419, 41900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Floatzel - Brick Break - TM31
  (419, 41900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Floatzel - Double Team - TM32
  (419, 41900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Floatzel - Rock Tomb - TM39
  (419, 41900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Floatzel - Torment - TM41
  (419, 41900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 35),
  -- Floatzel - Facade - TM42
  (419, 41900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Floatzel - Secret Power - TM43
  (419, 41900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Floatzel - Rest - TM44
  (419, 41900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Floatzel - Attract - TM45
  (419, 41900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Floatzel - Focus Blast - TM52
  (419, 41900, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 40),
  -- Floatzel - Brine - TM55
  (419, 41900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 41),
  -- Floatzel - Endure - TM58
  (419, 41900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Floatzel - Payback - TM66
  (419, 41900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 43),
  -- Floatzel - Giga Impact - TM68
  (419, 41900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Floatzel - Captivate - TM78
  (419, 41900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Floatzel - Sleep Talk - TM82
  (419, 41900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Floatzel - Natural Gift - TM83
  (419, 41900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Floatzel - Swagger - TM87
  (419, 41900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Floatzel - Substitute - TM90
  (419, 41900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Floatzel - Surf - HM03
  (419, 41900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 50),
  -- Floatzel - Strength - HM04
  (419, 41900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Floatzel - Defog - HM05
  (419, 41900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Floatzel - Rock Smash - HM06
  (419, 41900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Floatzel - Waterfall - HM07
  (419, 41900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 54),
  -- Floatzel - Ice Punch - Tutor
  (419, 41900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Floatzel - Headbutt - Tutor
  (419, 41900, 29, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Floatzel - Swift - Tutor
  (419, 41900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Floatzel - Snore - Tutor
  (419, 41900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Floatzel - Mud-Slap - Tutor
  (419, 41900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Floatzel - Icy Wind - Tutor
  (419, 41900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Floatzel - Dive - Tutor
  (419, 41900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Floatzel - Aqua Tail - Tutor
  (419, 41900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Cherubi - Tackle - Level 1
  (420, 42000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherubi - Growth - Level 7
  (420, 42000, 74, 9, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Cherubi - Leech Seed - Level 10
  (420, 42000, 73, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Cherubi - Helping Hand - Level 13
  (420, 42000, 270, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cherubi - Magical Leaf - Level 19
  (420, 42000, 345, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Cherubi - Sunny Day - Level 22
  (420, 42000, 241, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Cherubi - Worry Seed - Level 28
  (420, 42000, 388, 9, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Cherubi - Take Down - Level 31
  (420, 42000, 36, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Cherubi - Solar Beam - Level 37
  (420, 42000, 76, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Cherubi - Lucky Chant - Level 40
  (420, 42000, 381, 9, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cherubi - Toxic - TM06
  (420, 42000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 11),
  -- Cherubi - Bullet Seed - TM09
  (420, 42000, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 12),
  -- Cherubi - Hidden Power - TM10
  (420, 42000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Cherubi - Sunny Day - TM11
  (420, 42000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 14),
  -- Cherubi - Protect - TM17
  (420, 42000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Cherubi - Giga Drain - TM19
  (420, 42000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 16),
  -- Cherubi - Safeguard - TM20
  (420, 42000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 17),
  -- Cherubi - Frustration - TM21
  (420, 42000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Cherubi - Solar Beam - TM22
  (420, 42000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 19),
  -- Cherubi - Return - TM27
  (420, 42000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Cherubi - Double Team - TM32
  (420, 42000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Cherubi - Facade - TM42
  (420, 42000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 22),
  -- Cherubi - Secret Power - TM43
  (420, 42000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 23),
  -- Cherubi - Rest - TM44
  (420, 42000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 24),
  -- Cherubi - Attract - TM45
  (420, 42000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 25),
  -- Cherubi - Energy Ball - TM53
  (420, 42000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 26),
  -- Cherubi - Endure - TM58
  (420, 42000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 27),
  -- Cherubi - Flash - TM70
  (420, 42000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 28),
  -- Cherubi - Swords Dance - TM75
  (420, 42000, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 29),
  -- Cherubi - Captivate - TM78
  (420, 42000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 30),
  -- Cherubi - Sleep Talk - TM82
  (420, 42000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 31),
  -- Cherubi - Natural Gift - TM83
  (420, 42000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 32),
  -- Cherubi - Grass Knot - TM86
  (420, 42000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 33),
  -- Cherubi - Swagger - TM87
  (420, 42000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 34),
  -- Cherubi - Substitute - TM90
  (420, 42000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 35),
  -- Cherubi - Razor Leaf - Egg
  (420, 42000, 75, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cherubi - Sweet Scent - Egg
  (420, 42000, 230, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherubi - Nature Power - Egg
  (420, 42000, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherubi - Aromatherapy - Egg
  (420, 42000, 312, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherubi - Grass Whistle - Egg
  (420, 42000, 320, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherubi - Tickle - Egg
  (420, 42000, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherubi - Snore - Tutor
  (420, 42000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Cherubi - Rollout - Tutor
  (420, 42000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Cherubi - Synthesis - Tutor
  (420, 42000, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Cherubi - Helping Hand - Tutor
  (420, 42000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Cherubi - Seed Bomb - Tutor
  (420, 42000, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Cherrim - Tackle - Level 1
  (421, 42100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherrim - Growth - Level 1
  (421, 42100, 74, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherrim - Growth - Level 7
  (421, 42100, 74, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cherrim - Leech Seed - Level 10
  (421, 42100, 73, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cherrim - Helping Hand - Level 13
  (421, 42100, 270, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cherrim - Magical Leaf - Level 19
  (421, 42100, 345, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cherrim - Sunny Day - Level 22
  (421, 42100, 241, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cherrim - Petal Dance - Level 25
  (421, 42100, 80, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cherrim - Worry Seed - Level 30
  (421, 42100, 388, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Cherrim - Take Down - Level 35
  (421, 42100, 36, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Cherrim - Solar Beam - Level 43
  (421, 42100, 76, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Cherrim - Lucky Chant - Level 48
  (421, 42100, 381, 9, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Cherrim - Toxic - TM06
  (421, 42100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Cherrim - Bullet Seed - TM09
  (421, 42100, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 14),
  -- Cherrim - Hidden Power - TM10
  (421, 42100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Cherrim - Sunny Day - TM11
  (421, 42100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Cherrim - Hyper Beam - TM15
  (421, 42100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 17),
  -- Cherrim - Protect - TM17
  (421, 42100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Cherrim - Giga Drain - TM19
  (421, 42100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 19),
  -- Cherrim - Safeguard - TM20
  (421, 42100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Cherrim - Frustration - TM21
  (421, 42100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Cherrim - Solar Beam - TM22
  (421, 42100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Cherrim - Return - TM27
  (421, 42100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Cherrim - Double Team - TM32
  (421, 42100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Cherrim - Facade - TM42
  (421, 42100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Cherrim - Secret Power - TM43
  (421, 42100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Cherrim - Rest - TM44
  (421, 42100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Cherrim - Attract - TM45
  (421, 42100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Cherrim - Energy Ball - TM53
  (421, 42100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 29),
  -- Cherrim - Endure - TM58
  (421, 42100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 30),
  -- Cherrim - Giga Impact - TM68
  (421, 42100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 31),
  -- Cherrim - Flash - TM70
  (421, 42100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Cherrim - Swords Dance - TM75
  (421, 42100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 33),
  -- Cherrim - Captivate - TM78
  (421, 42100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Cherrim - Sleep Talk - TM82
  (421, 42100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Cherrim - Natural Gift - TM83
  (421, 42100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Cherrim - Grass Knot - TM86
  (421, 42100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 37),
  -- Cherrim - Swagger - TM87
  (421, 42100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Cherrim - Substitute - TM90
  (421, 42100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Cherrim - Snore - Tutor
  (421, 42100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Cherrim - Rollout - Tutor
  (421, 42100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Cherrim - Synthesis - Tutor
  (421, 42100, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Cherrim - Helping Hand - Tutor
  (421, 42100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Cherrim - Seed Bomb - Tutor
  (421, 42100, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Mud Sport - Level 2
  (422, 42200, 300, 9, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 4
  (422, 42200, 106, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellos - Water Pulse - Level 7
  (422, 42200, 352, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Shellos - Mud Bomb - Level 11
  (422, 42200, 426, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Shellos - Hidden Power - Level 16
  (422, 42200, 237, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellos - Rain Dance - Level 22
  (422, 42200, 240, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Shellos - Body Slam - Level 29
  (422, 42200, 34, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shellos - Muddy Water - Level 37
  (422, 42200, 330, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Shellos - Recover - Level 46
  (422, 42200, 105, 9, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Shellos - Water Pulse - TM03
  (422, 42200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 11),
  -- Shellos - Toxic - TM06
  (422, 42200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Shellos - Hail - TM07
  (422, 42200, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 13),
  -- Shellos - Hidden Power - TM10
  (422, 42200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Shellos - Ice Beam - TM13
  (422, 42200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 15),
  -- Shellos - Blizzard - TM14
  (422, 42200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 16),
  -- Shellos - Protect - TM17
  (422, 42200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Shellos - Rain Dance - TM18
  (422, 42200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Shellos - Frustration - TM21
  (422, 42200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Shellos - Return - TM27
  (422, 42200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Shellos - Double Team - TM32
  (422, 42200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Shellos - Facade - TM42
  (422, 42200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 22),
  -- Shellos - Secret Power - TM43
  (422, 42200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 23),
  -- Shellos - Rest - TM44
  (422, 42200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 24),
  -- Shellos - Attract - TM45
  (422, 42200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 25),
  -- Shellos - Brine - TM55
  (422, 42200, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 26),
  -- Shellos - Endure - TM58
  (422, 42200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 27),
  -- Shellos - Captivate - TM78
  (422, 42200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 28),
  -- Shellos - Sleep Talk - TM82
  (422, 42200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 29),
  -- Shellos - Natural Gift - TM83
  (422, 42200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 30),
  -- Shellos - Swagger - TM87
  (422, 42200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 31),
  -- Shellos - Substitute - TM90
  (422, 42200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 32),
  -- Shellos - Surf - HM03
  (422, 42200, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 33),
  -- Shellos - Defog - HM05
  (422, 42200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 34),
  -- Shellos - Counter - Egg
  (422, 42200, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shellos - Fissure - Egg
  (422, 42200, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shellos - Amnesia - Egg
  (422, 42200, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellos - Curse - Egg
  (422, 42200, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellos - Mirror Coat - Egg
  (422, 42200, 243, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellos - Stockpile - Egg
  (422, 42200, 254, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellos - Spit Up - Egg
  (422, 42200, 255, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellos - Swallow - Egg
  (422, 42200, 256, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellos - Memento - Egg
  (422, 42200, 262, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellos - Yawn - Egg
  (422, 42200, 281, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellos - Snore - Tutor
  (422, 42200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Shellos - Mud-Slap - Tutor
  (422, 42200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Shellos - Icy Wind - Tutor
  (422, 42200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Shellos - Ancient Power - Tutor
  (422, 42200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Shellos - Dive - Tutor
  (422, 42200, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Shellos - Earth Power - Tutor
  (422, 42200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Gastrodon - Harden - Level 1
  (423, 42300, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastrodon - Mud Sport - Level 1
  (423, 42300, 300, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastrodon - Water Pulse - Level 1
  (423, 42300, 352, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gastrodon - Mud Sport - Level 2
  (423, 42300, 300, 9, NULL, 1, 2, NULL, NULL, NULL, 5),
  -- Gastrodon - Harden - Level 4
  (423, 42300, 106, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gastrodon - Water Pulse - Level 7
  (423, 42300, 352, 9, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Gastrodon - Mud Bomb - Level 11
  (423, 42300, 426, 9, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gastrodon - Hidden Power - Level 16
  (423, 42300, 237, 9, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 22
  (423, 42300, 240, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gastrodon - Body Slam - Level 29
  (423, 42300, 34, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gastrodon - Muddy Water - Level 41
  (423, 42300, 330, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Gastrodon - Recover - Level 54
  (423, 42300, 105, 9, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Gastrodon - Water Pulse - TM03
  (423, 42300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Gastrodon - Toxic - TM06
  (423, 42300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Gastrodon - Hail - TM07
  (423, 42300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Gastrodon - Hidden Power - TM10
  (423, 42300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Gastrodon - Ice Beam - TM13
  (423, 42300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Gastrodon - Blizzard - TM14
  (423, 42300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Gastrodon - Hyper Beam - TM15
  (423, 42300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Gastrodon - Protect - TM17
  (423, 42300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Gastrodon - Rain Dance - TM18
  (423, 42300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Gastrodon - Frustration - TM21
  (423, 42300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Gastrodon - Earthquake - TM26
  (423, 42300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Gastrodon - Return - TM27
  (423, 42300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Gastrodon - Dig - TM28
  (423, 42300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Gastrodon - Double Team - TM32
  (423, 42300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Gastrodon - Sludge Bomb - TM36
  (423, 42300, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Gastrodon - Sandstorm - TM37
  (423, 42300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Gastrodon - Rock Tomb - TM39
  (423, 42300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Gastrodon - Facade - TM42
  (423, 42300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Gastrodon - Secret Power - TM43
  (423, 42300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Gastrodon - Rest - TM44
  (423, 42300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Gastrodon - Attract - TM45
  (423, 42300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Gastrodon - Brine - TM55
  (423, 42300, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 35),
  -- Gastrodon - Endure - TM58
  (423, 42300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Gastrodon - Giga Impact - TM68
  (423, 42300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Gastrodon - Flash - TM70
  (423, 42300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 38),
  -- Gastrodon - Stone Edge - TM71
  (423, 42300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 39),
  -- Gastrodon - Captivate - TM78
  (423, 42300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Gastrodon - Rock Slide - TM80
  (423, 42300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Gastrodon - Sleep Talk - TM82
  (423, 42300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Gastrodon - Natural Gift - TM83
  (423, 42300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Gastrodon - Swagger - TM87
  (423, 42300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Gastrodon - Substitute - TM90
  (423, 42300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Gastrodon - Surf - HM03
  (423, 42300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 46),
  -- Gastrodon - Strength - HM04
  (423, 42300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 47),
  -- Gastrodon - Defog - HM05
  (423, 42300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 48),
  -- Gastrodon - Rock Smash - HM06
  (423, 42300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Gastrodon - Waterfall - HM07
  (423, 42300, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 50),
  -- Gastrodon - Snore - Tutor
  (423, 42300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Gastrodon - Mud-Slap - Tutor
  (423, 42300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Gastrodon - Icy Wind - Tutor
  (423, 42300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Gastrodon - Ancient Power - Tutor
  (423, 42300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Gastrodon - Dive - Tutor
  (423, 42300, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Gastrodon - Earth Power - Tutor
  (423, 42300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Ambipom - Scratch - Level 1
  (424, 42400, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ambipom - Sand Attack - Level 1
  (424, 42400, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ambipom - Tail Whip - Level 1
  (424, 42400, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ambipom - Astonish - Level 1
  (424, 42400, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ambipom - Sand Attack - Level 4
  (424, 42400, 28, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Ambipom - Astonish - Level 8
  (424, 42400, 310, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Ambipom - Baton Pass - Level 11
  (424, 42400, 226, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Ambipom - Tickle - Level 15
  (424, 42400, 321, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ambipom - Fury Swipes - Level 18
  (424, 42400, 154, 9, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Ambipom - Swift - Level 22
  (424, 42400, 129, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Ambipom - Screech - Level 25
  (424, 42400, 103, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Ambipom - Agility - Level 29
  (424, 42400, 97, 9, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Ambipom - Double Hit - Level 32
  (424, 42400, 458, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Ambipom - Fling - Level 36
  (424, 42400, 374, 9, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ambipom - Nasty Plot - Level 39
  (424, 42400, 417, 9, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ambipom - Last Resort - Level 43
  (424, 42400, 387, 9, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Ambipom - Focus Punch - TM01
  (424, 42400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Ambipom - Water Pulse - TM03
  (424, 42400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Ambipom - Toxic - TM06
  (424, 42400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Ambipom - Hidden Power - TM10
  (424, 42400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Ambipom - Sunny Day - TM11
  (424, 42400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Ambipom - Taunt - TM12
  (424, 42400, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Ambipom - Hyper Beam - TM15
  (424, 42400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Ambipom - Protect - TM17
  (424, 42400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Ambipom - Rain Dance - TM18
  (424, 42400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Ambipom - Frustration - TM21
  (424, 42400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Ambipom - Solar Beam - TM22
  (424, 42400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Ambipom - Iron Tail - TM23
  (424, 42400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Ambipom - Thunderbolt - TM24
  (424, 42400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Ambipom - Thunder - TM25
  (424, 42400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Ambipom - Return - TM27
  (424, 42400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Ambipom - Dig - TM28
  (424, 42400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Ambipom - Shadow Ball - TM30
  (424, 42400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Ambipom - Brick Break - TM31
  (424, 42400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 34),
  -- Ambipom - Double Team - TM32
  (424, 42400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Ambipom - Shock Wave - TM34
  (424, 42400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 36),
  -- Ambipom - Aerial Ace - TM40
  (424, 42400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Ambipom - Facade - TM42
  (424, 42400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Ambipom - Secret Power - TM43
  (424, 42400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Ambipom - Rest - TM44
  (424, 42400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Ambipom - Attract - TM45
  (424, 42400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Ambipom - Thief - TM46
  (424, 42400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 42),
  -- Ambipom - Snatch - TM49
  (424, 42400, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 43),
  -- Ambipom - Fling - TM56
  (424, 42400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 44),
  -- Ambipom - Endure - TM58
  (424, 42400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Ambipom - Shadow Claw - TM65
  (424, 42400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 46),
  -- Ambipom - Payback - TM66
  (424, 42400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 47),
  -- Ambipom - Giga Impact - TM68
  (424, 42400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 48),
  -- Ambipom - Thunder Wave - TM73
  (424, 42400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 49),
  -- Ambipom - Captivate - TM78
  (424, 42400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 50),
  -- Ambipom - Sleep Talk - TM82
  (424, 42400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Ambipom - Natural Gift - TM83
  (424, 42400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Ambipom - Dream Eater - TM85
  (424, 42400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 53),
  -- Ambipom - Grass Knot - TM86
  (424, 42400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 54),
  -- Ambipom - Swagger - TM87
  (424, 42400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Ambipom - U-turn - TM89
  (424, 42400, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 56),
  -- Ambipom - Substitute - TM90
  (424, 42400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Ambipom - Cut - HM01
  (424, 42400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Ambipom - Strength - HM04
  (424, 42400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 59),
  -- Ambipom - Rock Smash - HM06
  (424, 42400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Ambipom - Fire Punch - Tutor
  (424, 42400, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Ambipom - Ice Punch - Tutor
  (424, 42400, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Ambipom - Thunder Punch - Tutor
  (424, 42400, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Ambipom - Swift - Tutor
  (424, 42400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Ambipom - Snore - Tutor
  (424, 42400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Ambipom - Spite - Tutor
  (424, 42400, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Ambipom - Mud-Slap - Tutor
  (424, 42400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Ambipom - Fury Cutter - Tutor
  (424, 42400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Ambipom - Uproar - Tutor
  (424, 42400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Ambipom - Knock Off - Tutor
  (424, 42400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Ambipom - Bounce - Tutor
  (424, 42400, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Ambipom - Last Resort - Tutor
  (424, 42400, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Ambipom - Seed Bomb - Tutor
  (424, 42400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Ambipom - Gunk Shot - Tutor
  (424, 42400, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Drifloon - Minimize - Level 1
  (425, 42500, 107, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Constrict - Level 1
  (425, 42500, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifloon - Astonish - Level 6
  (425, 42500, 310, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Drifloon - Gust - Level 11
  (425, 42500, 16, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Drifloon - Focus Energy - Level 14
  (425, 42500, 116, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Drifloon - Payback - Level 17
  (425, 42500, 371, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drifloon - Stockpile - Level 22
  (425, 42500, 254, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Drifloon - Spit Up - Level 27
  (425, 42500, 255, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Drifloon - Swallow - Level 27
  (425, 42500, 256, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Drifloon - Ominous Wind - Level 30
  (425, 42500, 466, 9, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Drifloon - Baton Pass - Level 33
  (425, 42500, 226, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Drifloon - Shadow Ball - Level 38
  (425, 42500, 247, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Drifloon - Explosion - Level 43
  (425, 42500, 153, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Drifloon - Calm Mind - TM04
  (425, 42500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Drifloon - Toxic - TM06
  (425, 42500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Drifloon - Hidden Power - TM10
  (425, 42500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Drifloon - Sunny Day - TM11
  (425, 42500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Drifloon - Protect - TM17
  (425, 42500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Drifloon - Rain Dance - TM18
  (425, 42500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Drifloon - Frustration - TM21
  (425, 42500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Drifloon - Thunderbolt - TM24
  (425, 42500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 21),
  -- Drifloon - Thunder - TM25
  (425, 42500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 22),
  -- Drifloon - Return - TM27
  (425, 42500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Drifloon - Psychic - TM29
  (425, 42500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 24),
  -- Drifloon - Shadow Ball - TM30
  (425, 42500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 25),
  -- Drifloon - Double Team - TM32
  (425, 42500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Drifloon - Shock Wave - TM34
  (425, 42500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 27),
  -- Drifloon - Facade - TM42
  (425, 42500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Drifloon - Secret Power - TM43
  (425, 42500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Drifloon - Rest - TM44
  (425, 42500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Drifloon - Attract - TM45
  (425, 42500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Drifloon - Thief - TM46
  (425, 42500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Drifloon - Skill Swap - TM48
  (425, 42500, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 33),
  -- Drifloon - Charge Beam - TM57
  (425, 42500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 34),
  -- Drifloon - Endure - TM58
  (425, 42500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Drifloon - Will-O-Wisp - TM61
  (425, 42500, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 36),
  -- Drifloon - Silver Wind - TM62
  (425, 42500, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 37),
  -- Drifloon - Embargo - TM63
  (425, 42500, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 38),
  -- Drifloon - Explosion - TM64
  (425, 42500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 39),
  -- Drifloon - Payback - TM66
  (425, 42500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 40),
  -- Drifloon - Recycle - TM67
  (425, 42500, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 41),
  -- Drifloon - Flash - TM70
  (425, 42500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Drifloon - Thunder Wave - TM73
  (425, 42500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 43),
  -- Drifloon - Gyro Ball - TM74
  (425, 42500, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 44),
  -- Drifloon - Psych Up - TM77
  (425, 42500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Drifloon - Captivate - TM78
  (425, 42500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Drifloon - Sleep Talk - TM82
  (425, 42500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Drifloon - Natural Gift - TM83
  (425, 42500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Drifloon - Dream Eater - TM85
  (425, 42500, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 49),
  -- Drifloon - Swagger - TM87
  (425, 42500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Drifloon - Substitute - TM90
  (425, 42500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Drifloon - Cut - HM01
  (425, 42500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 52),
  -- Drifloon - Defog - HM05
  (425, 42500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 53),
  -- Drifloon - Body Slam - Egg
  (425, 42500, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Disable - Egg
  (425, 42500, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifloon - Hypnosis - Egg
  (425, 42500, 95, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifloon - Haze - Egg
  (425, 42500, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drifloon - Destiny Bond - Egg
  (425, 42500, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drifloon - Memento - Egg
  (425, 42500, 262, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drifloon - Swift - Tutor
  (425, 42500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Drifloon - Snore - Tutor
  (425, 42500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Drifloon - Spite - Tutor
  (425, 42500, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Drifloon - Mud-Slap - Tutor
  (425, 42500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Drifloon - Icy Wind - Tutor
  (425, 42500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Drifloon - Rollout - Tutor
  (425, 42500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Drifloon - Trick - Tutor
  (425, 42500, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Drifloon - Knock Off - Tutor
  (425, 42500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Drifloon - Air Cutter - Tutor
  (425, 42500, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Drifloon - Sucker Punch - Tutor
  (425, 42500, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Drifloon - Ominous Wind - Tutor
  (425, 42500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Drifblim - Gust - Level 1
  (426, 42600, 16, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Minimize - Level 1
  (426, 42600, 107, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifblim - Constrict - Level 1
  (426, 42600, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drifblim - Astonish - Level 1
  (426, 42600, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drifblim - Astonish - Level 6
  (426, 42600, 310, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Drifblim - Gust - Level 11
  (426, 42600, 16, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Drifblim - Focus Energy - Level 14
  (426, 42600, 116, 9, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Drifblim - Payback - Level 17
  (426, 42600, 371, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Drifblim - Stockpile - Level 22
  (426, 42600, 254, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Drifblim - Spit Up - Level 27
  (426, 42600, 255, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Drifblim - Swallow - Level 27
  (426, 42600, 256, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Drifblim - Ominous Wind - Level 32
  (426, 42600, 466, 9, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Drifblim - Baton Pass - Level 37
  (426, 42600, 226, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Drifblim - Shadow Ball - Level 44
  (426, 42600, 247, 9, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Drifblim - Explosion - Level 51
  (426, 42600, 153, 9, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Drifblim - Calm Mind - TM04
  (426, 42600, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Drifblim - Toxic - TM06
  (426, 42600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Drifblim - Hidden Power - TM10
  (426, 42600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Drifblim - Sunny Day - TM11
  (426, 42600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Drifblim - Hyper Beam - TM15
  (426, 42600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Drifblim - Protect - TM17
  (426, 42600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Drifblim - Rain Dance - TM18
  (426, 42600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Drifblim - Frustration - TM21
  (426, 42600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Drifblim - Thunderbolt - TM24
  (426, 42600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 24),
  -- Drifblim - Thunder - TM25
  (426, 42600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 25),
  -- Drifblim - Return - TM27
  (426, 42600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Drifblim - Psychic - TM29
  (426, 42600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 27),
  -- Drifblim - Shadow Ball - TM30
  (426, 42600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Drifblim - Double Team - TM32
  (426, 42600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Drifblim - Shock Wave - TM34
  (426, 42600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 30),
  -- Drifblim - Facade - TM42
  (426, 42600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Drifblim - Secret Power - TM43
  (426, 42600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Drifblim - Rest - TM44
  (426, 42600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Drifblim - Attract - TM45
  (426, 42600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Drifblim - Thief - TM46
  (426, 42600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Drifblim - Skill Swap - TM48
  (426, 42600, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 36),
  -- Drifblim - Charge Beam - TM57
  (426, 42600, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Drifblim - Endure - TM58
  (426, 42600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Drifblim - Will-O-Wisp - TM61
  (426, 42600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 39),
  -- Drifblim - Silver Wind - TM62
  (426, 42600, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 40),
  -- Drifblim - Embargo - TM63
  (426, 42600, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 41),
  -- Drifblim - Explosion - TM64
  (426, 42600, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 42),
  -- Drifblim - Payback - TM66
  (426, 42600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 43),
  -- Drifblim - Recycle - TM67
  (426, 42600, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 44),
  -- Drifblim - Giga Impact - TM68
  (426, 42600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Drifblim - Flash - TM70
  (426, 42600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Drifblim - Thunder Wave - TM73
  (426, 42600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Drifblim - Gyro Ball - TM74
  (426, 42600, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 48),
  -- Drifblim - Psych Up - TM77
  (426, 42600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 49),
  -- Drifblim - Captivate - TM78
  (426, 42600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 50),
  -- Drifblim - Sleep Talk - TM82
  (426, 42600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Drifblim - Natural Gift - TM83
  (426, 42600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Drifblim - Dream Eater - TM85
  (426, 42600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 53),
  -- Drifblim - Swagger - TM87
  (426, 42600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Drifblim - Substitute - TM90
  (426, 42600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Drifblim - Cut - HM01
  (426, 42600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 56),
  -- Drifblim - Fly - HM02
  (426, 42600, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 57),
  -- Drifblim - Defog - HM05
  (426, 42600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 58),
  -- Drifblim - Swift - Tutor
  (426, 42600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Drifblim - Snore - Tutor
  (426, 42600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Drifblim - Spite - Tutor
  (426, 42600, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Drifblim - Mud-Slap - Tutor
  (426, 42600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Drifblim - Icy Wind - Tutor
  (426, 42600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Drifblim - Rollout - Tutor
  (426, 42600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Drifblim - Trick - Tutor
  (426, 42600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Drifblim - Knock Off - Tutor
  (426, 42600, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Drifblim - Air Cutter - Tutor
  (426, 42600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Drifblim - Sucker Punch - Tutor
  (426, 42600, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Drifblim - Ominous Wind - Tutor
  (426, 42600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Buneary - Pound - Level 1
  (427, 42700, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Defense Curl - Level 1
  (427, 42700, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buneary - Splash - Level 1
  (427, 42700, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Buneary - Foresight - Level 1
  (427, 42700, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Buneary - Endure - Level 6
  (427, 42700, 203, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Buneary - Frustration - Level 13
  (427, 42700, 218, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Buneary - Jump Kick - Level 23
  (427, 42700, 26, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Buneary - Baton Pass - Level 26
  (427, 42700, 226, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Buneary - Agility - Level 33
  (427, 42700, 97, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Buneary - Dizzy Punch - Level 36
  (427, 42700, 146, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Buneary - Charm - Level 43
  (427, 42700, 204, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Buneary - Bounce - Level 46
  (427, 42700, 340, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Buneary - Healing Wish - Level 53
  (427, 42700, 361, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Buneary - Focus Punch - TM01
  (427, 42700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Buneary - Water Pulse - TM03
  (427, 42700, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Buneary - Toxic - TM06
  (427, 42700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Buneary - Hidden Power - TM10
  (427, 42700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Buneary - Sunny Day - TM11
  (427, 42700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Buneary - Ice Beam - TM13
  (427, 42700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Buneary - Protect - TM17
  (427, 42700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Buneary - Rain Dance - TM18
  (427, 42700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Buneary - Frustration - TM21
  (427, 42700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Buneary - Solar Beam - TM22
  (427, 42700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Buneary - Iron Tail - TM23
  (427, 42700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Buneary - Thunderbolt - TM24
  (427, 42700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Buneary - Return - TM27
  (427, 42700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Buneary - Dig - TM28
  (427, 42700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Buneary - Shadow Ball - TM30
  (427, 42700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Buneary - Double Team - TM32
  (427, 42700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Buneary - Shock Wave - TM34
  (427, 42700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Buneary - Facade - TM42
  (427, 42700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Buneary - Secret Power - TM43
  (427, 42700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Buneary - Rest - TM44
  (427, 42700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Buneary - Attract - TM45
  (427, 42700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Buneary - Fling - TM56
  (427, 42700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Buneary - Charge Beam - TM57
  (427, 42700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Buneary - Endure - TM58
  (427, 42700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Buneary - Drain Punch - TM60
  (427, 42700, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 39),
  -- Buneary - Thunder Wave - TM73
  (427, 42700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 40),
  -- Buneary - Captivate - TM78
  (427, 42700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Buneary - Sleep Talk - TM82
  (427, 42700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Buneary - Natural Gift - TM83
  (427, 42700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Buneary - Grass Knot - TM86
  (427, 42700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 44),
  -- Buneary - Swagger - TM87
  (427, 42700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Buneary - Substitute - TM90
  (427, 42700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Buneary - Cut - HM01
  (427, 42700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 47),
  -- Buneary - Rock Smash - HM06
  (427, 42700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Buneary - Fire Punch - Egg
  (427, 42700, 7, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buneary - Ice Punch - Egg
  (427, 42700, 8, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buneary - Thunder Punch - Egg
  (427, 42700, 9, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buneary - Low Kick - Egg
  (427, 42700, 67, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buneary - Sweet Kiss - Egg
  (427, 42700, 186, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buneary - Attract - Egg
  (427, 42700, 213, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buneary - Encore - Egg
  (427, 42700, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buneary - Fake Out - Egg
  (427, 42700, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buneary - Fake Tears - Egg
  (427, 42700, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Buneary - Sky Uppercut - Egg
  (427, 42700, 327, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Buneary - Switcheroo - Egg
  (427, 42700, 415, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Buneary - Double Hit - Egg
  (427, 42700, 458, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Buneary - Swift - Tutor
  (427, 42700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Buneary - Snore - Tutor
  (427, 42700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Buneary - Mud-Slap - Tutor
  (427, 42700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Buneary - Uproar - Tutor
  (427, 42700, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Buneary - Helping Hand - Tutor
  (427, 42700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Buneary - Endeavor - Tutor
  (427, 42700, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Buneary - Bounce - Tutor
  (427, 42700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Buneary - Last Resort - Tutor
  (427, 42700, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Lopunny - Pound - Level 1
  (428, 42800, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Defense Curl - Level 1
  (428, 42800, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Splash - Level 1
  (428, 42800, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lopunny - Foresight - Level 1
  (428, 42800, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lopunny - Mirror Coat - Level 1
  (428, 42800, 243, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lopunny - Magic Coat - Level 1
  (428, 42800, 277, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lopunny - Endure - Level 6
  (428, 42800, 203, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Lopunny - Return - Level 13
  (428, 42800, 216, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 9, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Lopunny - Jump Kick - Level 23
  (428, 42800, 26, 9, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Lopunny - Baton Pass - Level 26
  (428, 42800, 226, 9, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Lopunny - Agility - Level 33
  (428, 42800, 97, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lopunny - Dizzy Punch - Level 36
  (428, 42800, 146, 9, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lopunny - Charm - Level 43
  (428, 42800, 204, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Lopunny - Bounce - Level 46
  (428, 42800, 340, 9, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Lopunny - Healing Wish - Level 53
  (428, 42800, 361, 9, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lopunny - Focus Punch - TM01
  (428, 42800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Lopunny - Water Pulse - TM03
  (428, 42800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Lopunny - Toxic - TM06
  (428, 42800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Lopunny - Hidden Power - TM10
  (428, 42800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Lopunny - Sunny Day - TM11
  (428, 42800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Lopunny - Ice Beam - TM13
  (428, 42800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Lopunny - Blizzard - TM14
  (428, 42800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Lopunny - Hyper Beam - TM15
  (428, 42800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Lopunny - Protect - TM17
  (428, 42800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Lopunny - Rain Dance - TM18
  (428, 42800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Lopunny - Frustration - TM21
  (428, 42800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Lopunny - Solar Beam - TM22
  (428, 42800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Lopunny - Iron Tail - TM23
  (428, 42800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Lopunny - Thunderbolt - TM24
  (428, 42800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Lopunny - Thunder - TM25
  (428, 42800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Lopunny - Return - TM27
  (428, 42800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Lopunny - Dig - TM28
  (428, 42800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Lopunny - Shadow Ball - TM30
  (428, 42800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Lopunny - Double Team - TM32
  (428, 42800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Lopunny - Shock Wave - TM34
  (428, 42800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 36),
  -- Lopunny - Facade - TM42
  (428, 42800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Lopunny - Secret Power - TM43
  (428, 42800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Lopunny - Rest - TM44
  (428, 42800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Lopunny - Attract - TM45
  (428, 42800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Lopunny - Focus Blast - TM52
  (428, 42800, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 41),
  -- Lopunny - Fling - TM56
  (428, 42800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Lopunny - Charge Beam - TM57
  (428, 42800, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 43),
  -- Lopunny - Endure - TM58
  (428, 42800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Lopunny - Drain Punch - TM60
  (428, 42800, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 45),
  -- Lopunny - Giga Impact - TM68
  (428, 42800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 46),
  -- Lopunny - Thunder Wave - TM73
  (428, 42800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Lopunny - Captivate - TM78
  (428, 42800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Lopunny - Sleep Talk - TM82
  (428, 42800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Lopunny - Natural Gift - TM83
  (428, 42800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Lopunny - Grass Knot - TM86
  (428, 42800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 51),
  -- Lopunny - Swagger - TM87
  (428, 42800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Lopunny - Substitute - TM90
  (428, 42800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Lopunny - Cut - HM01
  (428, 42800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 54),
  -- Lopunny - Strength - HM04
  (428, 42800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Lopunny - Rock Smash - HM06
  (428, 42800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Lopunny - Fire Punch - Tutor
  (428, 42800, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Lopunny - Ice Punch - Tutor
  (428, 42800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Lopunny - Thunder Punch - Tutor
  (428, 42800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Lopunny - Swift - Tutor
  (428, 42800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Lopunny - Snore - Tutor
  (428, 42800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Lopunny - Mud-Slap - Tutor
  (428, 42800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Lopunny - Fury Cutter - Tutor
  (428, 42800, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Lopunny - Uproar - Tutor
  (428, 42800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Lopunny - Helping Hand - Tutor
  (428, 42800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Lopunny - Endeavor - Tutor
  (428, 42800, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Lopunny - Bounce - Tutor
  (428, 42800, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Lopunny - Last Resort - Tutor
  (428, 42800, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Mismagius - Growl - Level 1
  (429, 42900, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mismagius - Psywave - Level 1
  (429, 42900, 149, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mismagius - Spite - Level 1
  (429, 42900, 180, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mismagius - Astonish - Level 1
  (429, 42900, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mismagius - Magical Leaf - Level 1
  (429, 42900, 345, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mismagius - Lucky Chant - Level 1
  (429, 42900, 381, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mismagius - Calm Mind - TM04
  (429, 42900, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 7),
  -- Mismagius - Toxic - TM06
  (429, 42900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 8),
  -- Mismagius - Hidden Power - TM10
  (429, 42900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 9),
  -- Mismagius - Sunny Day - TM11
  (429, 42900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 10),
  -- Mismagius - Taunt - TM12
  (429, 42900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 11),
  -- Mismagius - Hyper Beam - TM15
  (429, 42900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 12),
  -- Mismagius - Protect - TM17
  (429, 42900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 13),
  -- Mismagius - Rain Dance - TM18
  (429, 42900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 14),
  -- Mismagius - Frustration - TM21
  (429, 42900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 15),
  -- Mismagius - Thunderbolt - TM24
  (429, 42900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 16),
  -- Mismagius - Thunder - TM25
  (429, 42900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 17),
  -- Mismagius - Return - TM27
  (429, 42900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 18),
  -- Mismagius - Psychic - TM29
  (429, 42900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 19),
  -- Mismagius - Shadow Ball - TM30
  (429, 42900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 20),
  -- Mismagius - Double Team - TM32
  (429, 42900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Mismagius - Shock Wave - TM34
  (429, 42900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 22),
  -- Mismagius - Aerial Ace - TM40
  (429, 42900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 23),
  -- Mismagius - Torment - TM41
  (429, 42900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 24),
  -- Mismagius - Facade - TM42
  (429, 42900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Mismagius - Secret Power - TM43
  (429, 42900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Mismagius - Rest - TM44
  (429, 42900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Mismagius - Attract - TM45
  (429, 42900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Mismagius - Thief - TM46
  (429, 42900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 29),
  -- Mismagius - Skill Swap - TM48
  (429, 42900, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 30),
  -- Mismagius - Snatch - TM49
  (429, 42900, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 31),
  -- Mismagius - Energy Ball - TM53
  (429, 42900, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 32),
  -- Mismagius - Charge Beam - TM57
  (429, 42900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 33),
  -- Mismagius - Endure - TM58
  (429, 42900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Mismagius - Will-O-Wisp - TM61
  (429, 42900, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 35),
  -- Mismagius - Embargo - TM63
  (429, 42900, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 36),
  -- Mismagius - Payback - TM66
  (429, 42900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 37),
  -- Mismagius - Giga Impact - TM68
  (429, 42900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 38),
  -- Mismagius - Flash - TM70
  (429, 42900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 39),
  -- Mismagius - Thunder Wave - TM73
  (429, 42900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 40),
  -- Mismagius - Psych Up - TM77
  (429, 42900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 41),
  -- Mismagius - Captivate - TM78
  (429, 42900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Mismagius - Dark Pulse - TM79
  (429, 42900, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 43),
  -- Mismagius - Sleep Talk - TM82
  (429, 42900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Mismagius - Natural Gift - TM83
  (429, 42900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Mismagius - Dream Eater - TM85
  (429, 42900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 46),
  -- Mismagius - Swagger - TM87
  (429, 42900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Mismagius - Substitute - TM90
  (429, 42900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Mismagius - Trick Room - TM92
  (429, 42900, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 49),
  -- Mismagius - Swift - Tutor
  (429, 42900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Mismagius - Snore - Tutor
  (429, 42900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Mismagius - Spite - Tutor
  (429, 42900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Mismagius - Icy Wind - Tutor
  (429, 42900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Mismagius - Uproar - Tutor
  (429, 42900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Mismagius - Trick - Tutor
  (429, 42900, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Mismagius - Sucker Punch - Tutor
  (429, 42900, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Mismagius - Ominous Wind - Tutor
  (429, 42900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Honchkrow - Wing Attack - Level 1
  (430, 43000, 17, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honchkrow - Haze - Level 1
  (430, 43000, 114, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honchkrow - Pursuit - Level 1
  (430, 43000, 228, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Honchkrow - Astonish - Level 1
  (430, 43000, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Honchkrow - Swagger - Level 25
  (430, 43000, 207, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Honchkrow - Nasty Plot - Level 35
  (430, 43000, 417, 9, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Honchkrow - Night Slash - Level 45
  (430, 43000, 400, 9, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Honchkrow - Dark Pulse - Level 55
  (430, 43000, 399, 9, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Honchkrow - Calm Mind - TM04
  (430, 43000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 9),
  -- Honchkrow - Toxic - TM06
  (430, 43000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 10),
  -- Honchkrow - Hidden Power - TM10
  (430, 43000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 11),
  -- Honchkrow - Sunny Day - TM11
  (430, 43000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 12),
  -- Honchkrow - Taunt - TM12
  (430, 43000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 13),
  -- Honchkrow - Hyper Beam - TM15
  (430, 43000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 14),
  -- Honchkrow - Protect - TM17
  (430, 43000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Honchkrow - Rain Dance - TM18
  (430, 43000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 16),
  -- Honchkrow - Frustration - TM21
  (430, 43000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 17),
  -- Honchkrow - Return - TM27
  (430, 43000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 18),
  -- Honchkrow - Psychic - TM29
  (430, 43000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 19),
  -- Honchkrow - Shadow Ball - TM30
  (430, 43000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 20),
  -- Honchkrow - Double Team - TM32
  (430, 43000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Honchkrow - Aerial Ace - TM40
  (430, 43000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 22),
  -- Honchkrow - Torment - TM41
  (430, 43000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 23),
  -- Honchkrow - Facade - TM42
  (430, 43000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Honchkrow - Secret Power - TM43
  (430, 43000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Honchkrow - Rest - TM44
  (430, 43000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Honchkrow - Attract - TM45
  (430, 43000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Honchkrow - Thief - TM46
  (430, 43000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 28),
  -- Honchkrow - Steel Wing - TM47
  (430, 43000, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 29),
  -- Honchkrow - Snatch - TM49
  (430, 43000, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 30),
  -- Honchkrow - Roost - TM51
  (430, 43000, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 31),
  -- Honchkrow - Endure - TM58
  (430, 43000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Honchkrow - Embargo - TM63
  (430, 43000, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 33),
  -- Honchkrow - Payback - TM66
  (430, 43000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 34),
  -- Honchkrow - Giga Impact - TM68
  (430, 43000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Honchkrow - Thunder Wave - TM73
  (430, 43000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Honchkrow - Psych Up - TM77
  (430, 43000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 37),
  -- Honchkrow - Captivate - TM78
  (430, 43000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Honchkrow - Dark Pulse - TM79
  (430, 43000, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 39),
  -- Honchkrow - Sleep Talk - TM82
  (430, 43000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Honchkrow - Natural Gift - TM83
  (430, 43000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Honchkrow - Dream Eater - TM85
  (430, 43000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 42),
  -- Honchkrow - Swagger - TM87
  (430, 43000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Honchkrow - Pluck - TM88
  (430, 43000, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 44),
  -- Honchkrow - Substitute - TM90
  (430, 43000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Honchkrow - Fly - HM02
  (430, 43000, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 46),
  -- Honchkrow - Defog - HM05
  (430, 43000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Honchkrow - Swift - Tutor
  (430, 43000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Honchkrow - Spite - Tutor
  (430, 43000, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Honchkrow - Mud-Slap - Tutor
  (430, 43000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Honchkrow - Twister - Tutor
  (430, 43000, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Honchkrow - Uproar - Tutor
  (430, 43000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Honchkrow - Heat Wave - Tutor
  (430, 43000, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Honchkrow - Superpower - Tutor
  (430, 43000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Honchkrow - Air Cutter - Tutor
  (430, 43000, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Honchkrow - Sucker Punch - Tutor
  (430, 43000, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Honchkrow - Ominous Wind - Tutor
  (430, 43000, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Glameow - Fake Out - Level 1
  (431, 43100, 252, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glameow - Scratch - Level 5
  (431, 43100, 10, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Glameow - Growl - Level 8
  (431, 43100, 45, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Glameow - Hypnosis - Level 13
  (431, 43100, 95, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Glameow - Feint Attack - Level 17
  (431, 43100, 185, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Glameow - Fury Swipes - Level 20
  (431, 43100, 154, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Glameow - Charm - Level 25
  (431, 43100, 204, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glameow - Assist - Level 29
  (431, 43100, 274, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Glameow - Captivate - Level 32
  (431, 43100, 445, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Glameow - Slash - Level 37
  (431, 43100, 163, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Glameow - Sucker Punch - Level 41
  (431, 43100, 389, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Glameow - Attract - Level 45
  (431, 43100, 213, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Glameow - Water Pulse - TM03
  (431, 43100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Glameow - Toxic - TM06
  (431, 43100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Glameow - Hidden Power - TM10
  (431, 43100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Glameow - Sunny Day - TM11
  (431, 43100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Glameow - Taunt - TM12
  (431, 43100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Glameow - Protect - TM17
  (431, 43100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Glameow - Rain Dance - TM18
  (431, 43100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Glameow - Frustration - TM21
  (431, 43100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Glameow - Iron Tail - TM23
  (431, 43100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Glameow - Thunderbolt - TM24
  (431, 43100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Glameow - Thunder - TM25
  (431, 43100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Glameow - Return - TM27
  (431, 43100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Glameow - Dig - TM28
  (431, 43100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Glameow - Shadow Ball - TM30
  (431, 43100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Glameow - Double Team - TM32
  (431, 43100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Glameow - Shock Wave - TM34
  (431, 43100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Glameow - Aerial Ace - TM40
  (431, 43100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Glameow - Torment - TM41
  (431, 43100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Glameow - Facade - TM42
  (431, 43100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Glameow - Secret Power - TM43
  (431, 43100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Glameow - Rest - TM44
  (431, 43100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Glameow - Attract - TM45
  (431, 43100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Glameow - Thief - TM46
  (431, 43100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Glameow - Snatch - TM49
  (431, 43100, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 36),
  -- Glameow - Endure - TM58
  (431, 43100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Glameow - Shadow Claw - TM65
  (431, 43100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 38),
  -- Glameow - Payback - TM66
  (431, 43100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 39),
  -- Glameow - Flash - TM70
  (431, 43100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Glameow - Psych Up - TM77
  (431, 43100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 41),
  -- Glameow - Captivate - TM78
  (431, 43100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Glameow - Sleep Talk - TM82
  (431, 43100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Glameow - Natural Gift - TM83
  (431, 43100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Glameow - Dream Eater - TM85
  (431, 43100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 45),
  -- Glameow - Swagger - TM87
  (431, 43100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Glameow - U-turn - TM89
  (431, 43100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 47),
  -- Glameow - Substitute - TM90
  (431, 43100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Glameow - Cut - HM01
  (431, 43100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Glameow - Sand Attack - Egg
  (431, 43100, 28, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glameow - Tail Whip - Egg
  (431, 43100, 39, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glameow - Bite - Egg
  (431, 43100, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glameow - Quick Attack - Egg
  (431, 43100, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glameow - Fake Tears - Egg
  (431, 43100, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glameow - Assurance - Egg
  (431, 43100, 372, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Glameow - Swift - Tutor
  (431, 43100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Glameow - Snore - Tutor
  (431, 43100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Glameow - Mud-Slap - Tutor
  (431, 43100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Glameow - Fury Cutter - Tutor
  (431, 43100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Glameow - Knock Off - Tutor
  (431, 43100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Glameow - Last Resort - Tutor
  (431, 43100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Glameow - Sucker Punch - Tutor
  (431, 43100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Purugly - Scratch - Level 1
  (432, 43200, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purugly - Growl - Level 1
  (432, 43200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Purugly - Fake Out - Level 1
  (432, 43200, 252, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Purugly - Scratch - Level 5
  (432, 43200, 10, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Purugly - Growl - Level 8
  (432, 43200, 45, 9, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Purugly - Hypnosis - Level 13
  (432, 43200, 95, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Purugly - Feint Attack - Level 17
  (432, 43200, 185, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Purugly - Fury Swipes - Level 20
  (432, 43200, 154, 9, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Purugly - Charm - Level 25
  (432, 43200, 204, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Purugly - Assist - Level 29
  (432, 43200, 274, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Purugly - Captivate - Level 32
  (432, 43200, 445, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Purugly - Slash - Level 37
  (432, 43200, 163, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Purugly - Swagger - Level 38
  (432, 43200, 207, 9, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Purugly - Body Slam - Level 45
  (432, 43200, 34, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Purugly - Attract - Level 53
  (432, 43200, 213, 9, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Purugly - Water Pulse - TM03
  (432, 43200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Purugly - Roar - TM05
  (432, 43200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Purugly - Toxic - TM06
  (432, 43200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Purugly - Hidden Power - TM10
  (432, 43200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Purugly - Sunny Day - TM11
  (432, 43200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Purugly - Taunt - TM12
  (432, 43200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Purugly - Hyper Beam - TM15
  (432, 43200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Purugly - Protect - TM17
  (432, 43200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Purugly - Rain Dance - TM18
  (432, 43200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Purugly - Frustration - TM21
  (432, 43200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Purugly - Iron Tail - TM23
  (432, 43200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Purugly - Thunderbolt - TM24
  (432, 43200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Purugly - Thunder - TM25
  (432, 43200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Purugly - Return - TM27
  (432, 43200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Purugly - Dig - TM28
  (432, 43200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Purugly - Shadow Ball - TM30
  (432, 43200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Purugly - Double Team - TM32
  (432, 43200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Purugly - Shock Wave - TM34
  (432, 43200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Purugly - Aerial Ace - TM40
  (432, 43200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Purugly - Torment - TM41
  (432, 43200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 35),
  -- Purugly - Facade - TM42
  (432, 43200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Purugly - Secret Power - TM43
  (432, 43200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Purugly - Rest - TM44
  (432, 43200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Purugly - Attract - TM45
  (432, 43200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Purugly - Thief - TM46
  (432, 43200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 40),
  -- Purugly - Snatch - TM49
  (432, 43200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 41),
  -- Purugly - Endure - TM58
  (432, 43200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Purugly - Shadow Claw - TM65
  (432, 43200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 43),
  -- Purugly - Payback - TM66
  (432, 43200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Purugly - Giga Impact - TM68
  (432, 43200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Purugly - Flash - TM70
  (432, 43200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Purugly - Psych Up - TM77
  (432, 43200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 47),
  -- Purugly - Captivate - TM78
  (432, 43200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Purugly - Sleep Talk - TM82
  (432, 43200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Purugly - Natural Gift - TM83
  (432, 43200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Purugly - Dream Eater - TM85
  (432, 43200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 51),
  -- Purugly - Swagger - TM87
  (432, 43200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Purugly - U-turn - TM89
  (432, 43200, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 53),
  -- Purugly - Substitute - TM90
  (432, 43200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Purugly - Cut - HM01
  (432, 43200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 55),
  -- Purugly - Swift - Tutor
  (432, 43200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Purugly - Snore - Tutor
  (432, 43200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Purugly - Mud-Slap - Tutor
  (432, 43200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Purugly - Rollout - Tutor
  (432, 43200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Purugly - Fury Cutter - Tutor
  (432, 43200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Purugly - Knock Off - Tutor
  (432, 43200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Purugly - Last Resort - Tutor
  (432, 43200, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Purugly - Sucker Punch - Tutor
  (432, 43200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Chingling - Wrap - Level 1
  (433, 43300, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 6
  (433, 43300, 45, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chingling - Astonish - Level 9
  (433, 43300, 310, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chingling - Confusion - Level 14
  (433, 43300, 93, 9, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chingling - Uproar - Level 17
  (433, 43300, 253, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chingling - Last Resort - Level 22
  (433, 43300, 387, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chingling - Calm Mind - TM04
  (433, 43300, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 7),
  -- Chingling - Toxic - TM06
  (433, 43300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 8),
  -- Chingling - Hidden Power - TM10
  (433, 43300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 9),
  -- Chingling - Sunny Day - TM11
  (433, 43300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 10),
  -- Chingling - Taunt - TM12
  (433, 43300, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 11),
  -- Chingling - Light Screen - TM16
  (433, 43300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 12),
  -- Chingling - Protect - TM17
  (433, 43300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 13),
  -- Chingling - Rain Dance - TM18
  (433, 43300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 14),
  -- Chingling - Safeguard - TM20
  (433, 43300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 15),
  -- Chingling - Frustration - TM21
  (433, 43300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Chingling - Return - TM27
  (433, 43300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Chingling - Psychic - TM29
  (433, 43300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 18),
  -- Chingling - Shadow Ball - TM30
  (433, 43300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 19),
  -- Chingling - Double Team - TM32
  (433, 43300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 20),
  -- Chingling - Reflect - TM33
  (433, 43300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 21),
  -- Chingling - Shock Wave - TM34
  (433, 43300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 22),
  -- Chingling - Torment - TM41
  (433, 43300, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 23),
  -- Chingling - Facade - TM42
  (433, 43300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Chingling - Secret Power - TM43
  (433, 43300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Chingling - Rest - TM44
  (433, 43300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Chingling - Attract - TM45
  (433, 43300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Chingling - Skill Swap - TM48
  (433, 43300, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 28),
  -- Chingling - Snatch - TM49
  (433, 43300, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 29),
  -- Chingling - Charge Beam - TM57
  (433, 43300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 30),
  -- Chingling - Endure - TM58
  (433, 43300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Chingling - Recycle - TM67
  (433, 43300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 32),
  -- Chingling - Flash - TM70
  (433, 43300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 33),
  -- Chingling - Thunder Wave - TM73
  (433, 43300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 34),
  -- Chingling - Psych Up - TM77
  (433, 43300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 35),
  -- Chingling - Captivate - TM78
  (433, 43300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Chingling - Sleep Talk - TM82
  (433, 43300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Chingling - Natural Gift - TM83
  (433, 43300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Chingling - Dream Eater - TM85
  (433, 43300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 39),
  -- Chingling - Grass Knot - TM86
  (433, 43300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 40),
  -- Chingling - Swagger - TM87
  (433, 43300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Chingling - Substitute - TM90
  (433, 43300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Chingling - Trick Room - TM92
  (433, 43300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 43),
  -- Chingling - Disable - Egg
  (433, 43300, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chingling - Hypnosis - Egg
  (433, 43300, 95, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chingling - Recover - Egg
  (433, 43300, 105, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chingling - Dream Eater - Egg
  (433, 43300, 138, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chingling - Curse - Egg
  (433, 43300, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chingling - Future Sight - Egg
  (433, 43300, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chingling - Wish - Egg
  (433, 43300, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chingling - Swift - Tutor
  (433, 43300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Chingling - Snore - Tutor
  (433, 43300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Chingling - Icy Wind - Tutor
  (433, 43300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Chingling - Rollout - Tutor
  (433, 43300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Chingling - Uproar - Tutor
  (433, 43300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Chingling - Helping Hand - Tutor
  (433, 43300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Chingling - Trick - Tutor
  (433, 43300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Chingling - Knock Off - Tutor
  (433, 43300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Chingling - Signal Beam - Tutor
  (433, 43300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Chingling - Last Resort - Tutor
  (433, 43300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Chingling - Zen Headbutt - Tutor
  (433, 43300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Stunky - Scratch - Level 1
  (434, 43400, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Focus Energy - Level 1
  (434, 43400, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunky - Poison Gas - Level 4
  (434, 43400, 139, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Stunky - Screech - Level 7
  (434, 43400, 103, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Stunky - Fury Swipes - Level 10
  (434, 43400, 154, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Stunky - Smokescreen - Level 14
  (434, 43400, 108, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Stunky - Feint - Level 18
  (434, 43400, 364, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Stunky - Slash - Level 22
  (434, 43400, 163, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stunky - Night Slash - Level 32
  (434, 43400, 400, 9, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Stunky - Memento - Level 38
  (434, 43400, 262, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Stunky - Explosion - Level 44
  (434, 43400, 153, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Stunky - Roar - TM05
  (434, 43400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 13),
  -- Stunky - Toxic - TM06
  (434, 43400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Stunky - Hidden Power - TM10
  (434, 43400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Stunky - Sunny Day - TM11
  (434, 43400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Stunky - Taunt - TM12
  (434, 43400, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Stunky - Protect - TM17
  (434, 43400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Stunky - Rain Dance - TM18
  (434, 43400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Stunky - Frustration - TM21
  (434, 43400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Stunky - Iron Tail - TM23
  (434, 43400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Stunky - Return - TM27
  (434, 43400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Stunky - Dig - TM28
  (434, 43400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 23),
  -- Stunky - Shadow Ball - TM30
  (434, 43400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 24),
  -- Stunky - Double Team - TM32
  (434, 43400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Stunky - Flamethrower - TM35
  (434, 43400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Stunky - Sludge Bomb - TM36
  (434, 43400, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 27),
  -- Stunky - Fire Blast - TM38
  (434, 43400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 28),
  -- Stunky - Torment - TM41
  (434, 43400, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 29),
  -- Stunky - Facade - TM42
  (434, 43400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Stunky - Secret Power - TM43
  (434, 43400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Stunky - Rest - TM44
  (434, 43400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Stunky - Attract - TM45
  (434, 43400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Stunky - Thief - TM46
  (434, 43400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Stunky - Snatch - TM49
  (434, 43400, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 35),
  -- Stunky - Endure - TM58
  (434, 43400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Stunky - Explosion - TM64
  (434, 43400, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 37),
  -- Stunky - Shadow Claw - TM65
  (434, 43400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 38),
  -- Stunky - Payback - TM66
  (434, 43400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 39),
  -- Stunky - Captivate - TM78
  (434, 43400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Stunky - Dark Pulse - TM79
  (434, 43400, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 41),
  -- Stunky - Sleep Talk - TM82
  (434, 43400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Stunky - Natural Gift - TM83
  (434, 43400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Stunky - Swagger - TM87
  (434, 43400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Stunky - Substitute - TM90
  (434, 43400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Stunky - Cut - HM01
  (434, 43400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 46),
  -- Stunky - Defog - HM05
  (434, 43400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 47),
  -- Stunky - Rock Smash - HM06
  (434, 43400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Stunky - Double-Edge - Egg
  (434, 43400, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stunky - Leer - Egg
  (434, 43400, 43, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunky - Smog - Egg
  (434, 43400, 123, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunky - Scary Face - Egg
  (434, 43400, 184, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunky - Pursuit - Egg
  (434, 43400, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunky - Crunch - Egg
  (434, 43400, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunky - Astonish - Egg
  (434, 43400, 310, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Punishment - Egg
  (434, 43400, 386, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Swift - Tutor
  (434, 43400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Stunky - Snore - Tutor
  (434, 43400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Stunky - Mud-Slap - Tutor
  (434, 43400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Stunky - Fury Cutter - Tutor
  (434, 43400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Stunky - Sucker Punch - Tutor
  (434, 43400, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Skuntank - Scratch - Level 1
  (435, 43500, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Focus Energy - Level 1
  (435, 43500, 116, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skuntank - Poison Gas - Level 1
  (435, 43500, 139, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skuntank - Poison Gas - Level 4
  (435, 43500, 139, 9, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Skuntank - Screech - Level 7
  (435, 43500, 103, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Skuntank - Fury Swipes - Level 10
  (435, 43500, 154, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Skuntank - Smokescreen - Level 14
  (435, 43500, 108, 9, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Skuntank - Feint - Level 18
  (435, 43500, 364, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Skuntank - Slash - Level 22
  (435, 43500, 163, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 9, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skuntank - Night Slash - Level 32
  (435, 43500, 400, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Skuntank - Flamethrower - Level 34
  (435, 43500, 53, 9, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skuntank - Memento - Level 42
  (435, 43500, 262, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Skuntank - Explosion - Level 52
  (435, 43500, 153, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Skuntank - Roar - TM05
  (435, 43500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Skuntank - Toxic - TM06
  (435, 43500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Skuntank - Hidden Power - TM10
  (435, 43500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Skuntank - Sunny Day - TM11
  (435, 43500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Skuntank - Taunt - TM12
  (435, 43500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Skuntank - Hyper Beam - TM15
  (435, 43500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Skuntank - Protect - TM17
  (435, 43500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Skuntank - Rain Dance - TM18
  (435, 43500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Skuntank - Frustration - TM21
  (435, 43500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Skuntank - Iron Tail - TM23
  (435, 43500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Skuntank - Return - TM27
  (435, 43500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Skuntank - Dig - TM28
  (435, 43500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Skuntank - Shadow Ball - TM30
  (435, 43500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Skuntank - Double Team - TM32
  (435, 43500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Skuntank - Flamethrower - TM35
  (435, 43500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 29),
  -- Skuntank - Sludge Bomb - TM36
  (435, 43500, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 30),
  -- Skuntank - Fire Blast - TM38
  (435, 43500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 31),
  -- Skuntank - Torment - TM41
  (435, 43500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 32),
  -- Skuntank - Facade - TM42
  (435, 43500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Skuntank - Secret Power - TM43
  (435, 43500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Skuntank - Rest - TM44
  (435, 43500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Skuntank - Attract - TM45
  (435, 43500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Skuntank - Thief - TM46
  (435, 43500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Skuntank - Snatch - TM49
  (435, 43500, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 38),
  -- Skuntank - Endure - TM58
  (435, 43500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Skuntank - Explosion - TM64
  (435, 43500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 40),
  -- Skuntank - Shadow Claw - TM65
  (435, 43500, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 41),
  -- Skuntank - Payback - TM66
  (435, 43500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 42),
  -- Skuntank - Giga Impact - TM68
  (435, 43500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Skuntank - Captivate - TM78
  (435, 43500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Skuntank - Dark Pulse - TM79
  (435, 43500, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 45),
  -- Skuntank - Sleep Talk - TM82
  (435, 43500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Skuntank - Natural Gift - TM83
  (435, 43500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Skuntank - Poison Jab - TM84
  (435, 43500, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 48),
  -- Skuntank - Swagger - TM87
  (435, 43500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Skuntank - Substitute - TM90
  (435, 43500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Skuntank - Cut - HM01
  (435, 43500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 51),
  -- Skuntank - Strength - HM04
  (435, 43500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Skuntank - Defog - HM05
  (435, 43500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 53),
  -- Skuntank - Rock Smash - HM06
  (435, 43500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Skuntank - Swift - Tutor
  (435, 43500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Skuntank - Snore - Tutor
  (435, 43500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Skuntank - Mud-Slap - Tutor
  (435, 43500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Skuntank - Fury Cutter - Tutor
  (435, 43500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Skuntank - Sucker Punch - Tutor
  (435, 43500, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 1
  (436, 43600, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzor - Hypnosis - Level 7
  (436, 43600, 95, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bronzor - Imprison - Level 12
  (436, 43600, 286, 9, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Bronzor - Confuse Ray - Level 14
  (436, 43600, 109, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Bronzor - Extrasensory - Level 19
  (436, 43600, 326, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Bronzor - Iron Defense - Level 26
  (436, 43600, 334, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Bronzor - Safeguard - Level 30
  (436, 43600, 219, 9, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Bronzor - Gyro Ball - Level 35
  (436, 43600, 360, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Bronzor - Future Sight - Level 37
  (436, 43600, 248, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Bronzor - Feint Attack - Level 41
  (436, 43600, 185, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Bronzor - Payback - Level 49
  (436, 43600, 371, 9, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Bronzor - Heal Block - Level 52
  (436, 43600, 377, 9, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Bronzor - Calm Mind - TM04
  (436, 43600, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Bronzor - Toxic - TM06
  (436, 43600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Bronzor - Hidden Power - TM10
  (436, 43600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Bronzor - Sunny Day - TM11
  (436, 43600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Bronzor - Light Screen - TM16
  (436, 43600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Bronzor - Protect - TM17
  (436, 43600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Bronzor - Rain Dance - TM18
  (436, 43600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Bronzor - Safeguard - TM20
  (436, 43600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Bronzor - Frustration - TM21
  (436, 43600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Bronzor - Solar Beam - TM22
  (436, 43600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Bronzor - Earthquake - TM26
  (436, 43600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Bronzor - Return - TM27
  (436, 43600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Bronzor - Psychic - TM29
  (436, 43600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Bronzor - Shadow Ball - TM30
  (436, 43600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Bronzor - Double Team - TM32
  (436, 43600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Bronzor - Reflect - TM33
  (436, 43600, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Bronzor - Sandstorm - TM37
  (436, 43600, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Bronzor - Rock Tomb - TM39
  (436, 43600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Bronzor - Facade - TM42
  (436, 43600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Bronzor - Secret Power - TM43
  (436, 43600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Bronzor - Rest - TM44
  (436, 43600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Bronzor - Skill Swap - TM48
  (436, 43600, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 35),
  -- Bronzor - Charge Beam - TM57
  (436, 43600, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 36),
  -- Bronzor - Endure - TM58
  (436, 43600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Bronzor - Payback - TM66
  (436, 43600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 38),
  -- Bronzor - Recycle - TM67
  (436, 43600, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 39),
  -- Bronzor - Rock Polish - TM69
  (436, 43600, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 40),
  -- Bronzor - Flash - TM70
  (436, 43600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Bronzor - Gyro Ball - TM74
  (436, 43600, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 42),
  -- Bronzor - Stealth Rock - TM76
  (436, 43600, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 43),
  -- Bronzor - Psych Up - TM77
  (436, 43600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 44),
  -- Bronzor - Rock Slide - TM80
  (436, 43600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 45),
  -- Bronzor - Sleep Talk - TM82
  (436, 43600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Bronzor - Natural Gift - TM83
  (436, 43600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Bronzor - Dream Eater - TM85
  (436, 43600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 48),
  -- Bronzor - Grass Knot - TM86
  (436, 43600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 49),
  -- Bronzor - Swagger - TM87
  (436, 43600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Bronzor - Substitute - TM90
  (436, 43600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Bronzor - Flash Cannon - TM91
  (436, 43600, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 52),
  -- Bronzor - Trick Room - TM92
  (436, 43600, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 53),
  -- Bronzor - Snore - Tutor
  (436, 43600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Bronzor - Rollout - Tutor
  (436, 43600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Bronzor - Ancient Power - Tutor
  (436, 43600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Bronzor - Trick - Tutor
  (436, 43600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Bronzor - Signal Beam - Tutor
  (436, 43600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Confusion - Level 1
  (437, 43700, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzong - Hypnosis - Level 1
  (437, 43700, 95, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bronzong - Rain Dance - Level 1
  (437, 43700, 240, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bronzong - Sunny Day - Level 1
  (437, 43700, 241, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bronzong - Imprison - Level 1
  (437, 43700, 286, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bronzong - Hypnosis - Level 7
  (437, 43700, 95, 9, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Bronzong - Imprison - Level 12
  (437, 43700, 286, 9, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Bronzong - Confuse Ray - Level 14
  (437, 43700, 109, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Bronzong - Extrasensory - Level 19
  (437, 43700, 326, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Bronzong - Iron Defense - Level 26
  (437, 43700, 334, 9, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Bronzong - Safeguard - Level 30
  (437, 43700, 219, 9, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Bronzong - Block - Level 33
  (437, 43700, 335, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bronzong - Gyro Ball - Level 38
  (437, 43700, 360, 9, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Bronzong - Future Sight - Level 43
  (437, 43700, 248, 9, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Bronzong - Feint Attack - Level 50
  (437, 43700, 185, 9, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Bronzong - Payback - Level 61
  (437, 43700, 371, 9, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Bronzong - Heal Block - Level 67
  (437, 43700, 377, 9, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Bronzong - Calm Mind - TM04
  (437, 43700, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 19),
  -- Bronzong - Toxic - TM06
  (437, 43700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Bronzong - Hidden Power - TM10
  (437, 43700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Bronzong - Sunny Day - TM11
  (437, 43700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Bronzong - Hyper Beam - TM15
  (437, 43700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Bronzong - Light Screen - TM16
  (437, 43700, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Bronzong - Protect - TM17
  (437, 43700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Bronzong - Rain Dance - TM18
  (437, 43700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Bronzong - Safeguard - TM20
  (437, 43700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Bronzong - Frustration - TM21
  (437, 43700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Bronzong - Solar Beam - TM22
  (437, 43700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Bronzong - Earthquake - TM26
  (437, 43700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Bronzong - Return - TM27
  (437, 43700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Bronzong - Psychic - TM29
  (437, 43700, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 32),
  -- Bronzong - Shadow Ball - TM30
  (437, 43700, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Bronzong - Double Team - TM32
  (437, 43700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Bronzong - Reflect - TM33
  (437, 43700, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 35),
  -- Bronzong - Sandstorm - TM37
  (437, 43700, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 36),
  -- Bronzong - Rock Tomb - TM39
  (437, 43700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 37),
  -- Bronzong - Facade - TM42
  (437, 43700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Bronzong - Secret Power - TM43
  (437, 43700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Bronzong - Rest - TM44
  (437, 43700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Bronzong - Skill Swap - TM48
  (437, 43700, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 41),
  -- Bronzong - Charge Beam - TM57
  (437, 43700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Bronzong - Endure - TM58
  (437, 43700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Bronzong - Explosion - TM64
  (437, 43700, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 44),
  -- Bronzong - Payback - TM66
  (437, 43700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 45),
  -- Bronzong - Recycle - TM67
  (437, 43700, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 46),
  -- Bronzong - Giga Impact - TM68
  (437, 43700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Bronzong - Rock Polish - TM69
  (437, 43700, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 48),
  -- Bronzong - Flash - TM70
  (437, 43700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 49),
  -- Bronzong - Gyro Ball - TM74
  (437, 43700, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 50),
  -- Bronzong - Stealth Rock - TM76
  (437, 43700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 51),
  -- Bronzong - Psych Up - TM77
  (437, 43700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 52),
  -- Bronzong - Rock Slide - TM80
  (437, 43700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 53),
  -- Bronzong - Sleep Talk - TM82
  (437, 43700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Bronzong - Natural Gift - TM83
  (437, 43700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Bronzong - Dream Eater - TM85
  (437, 43700, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 56),
  -- Bronzong - Grass Knot - TM86
  (437, 43700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 57),
  -- Bronzong - Swagger - TM87
  (437, 43700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Bronzong - Substitute - TM90
  (437, 43700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Bronzong - Flash Cannon - TM91
  (437, 43700, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 60),
  -- Bronzong - Trick Room - TM92
  (437, 43700, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 61),
  -- Bronzong - Strength - HM04
  (437, 43700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 62),
  -- Bronzong - Rock Smash - HM06
  (437, 43700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 63),
  -- Bronzong - Snore - Tutor
  (437, 43700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Bronzong - Rollout - Tutor
  (437, 43700, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Bronzong - Ancient Power - Tutor
  (437, 43700, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Bronzong - Trick - Tutor
  (437, 43700, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Bronzong - Signal Beam - Tutor
  (437, 43700, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Bronzong - Zen Headbutt - Tutor
  (437, 43700, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Bronzong - Iron Head - Tutor
  (437, 43700, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Bonsly - Fake Tears - Level 1
  (438, 43800, 313, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Level 1
  (438, 43800, 383, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 6
  (438, 43800, 175, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Bonsly - Low Kick - Level 9
  (438, 43800, 67, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bonsly - Rock Throw - Level 14
  (438, 43800, 88, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 17
  (438, 43800, 102, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bonsly - Block - Level 22
  (438, 43800, 335, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Bonsly - Feint Attack - Level 25
  (438, 43800, 185, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bonsly - Rock Tomb - Level 30
  (438, 43800, 317, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Bonsly - Rock Slide - Level 33
  (438, 43800, 157, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Bonsly - Slam - Level 38
  (438, 43800, 21, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Bonsly - Sucker Punch - Level 41
  (438, 43800, 389, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bonsly - Double-Edge - Level 46
  (438, 43800, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Bonsly - Calm Mind - TM04
  (438, 43800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Bonsly - Toxic - TM06
  (438, 43800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Bonsly - Hidden Power - TM10
  (438, 43800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Bonsly - Sunny Day - TM11
  (438, 43800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Bonsly - Protect - TM17
  (438, 43800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Bonsly - Frustration - TM21
  (438, 43800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Bonsly - Return - TM27
  (438, 43800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Bonsly - Dig - TM28
  (438, 43800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 21),
  -- Bonsly - Brick Break - TM31
  (438, 43800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 22),
  -- Bonsly - Double Team - TM32
  (438, 43800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Bonsly - Sandstorm - TM37
  (438, 43800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 24),
  -- Bonsly - Rock Tomb - TM39
  (438, 43800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 25),
  -- Bonsly - Facade - TM42
  (438, 43800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Bonsly - Secret Power - TM43
  (438, 43800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Bonsly - Rest - TM44
  (438, 43800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Bonsly - Attract - TM45
  (438, 43800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Bonsly - Thief - TM46
  (438, 43800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Bonsly - Endure - TM58
  (438, 43800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Bonsly - Explosion - TM64
  (438, 43800, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 32),
  -- Bonsly - Rock Polish - TM69
  (438, 43800, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 33),
  -- Bonsly - Stealth Rock - TM76
  (438, 43800, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 34),
  -- Bonsly - Psych Up - TM77
  (438, 43800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 35),
  -- Bonsly - Captivate - TM78
  (438, 43800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Bonsly - Rock Slide - TM80
  (438, 43800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 37),
  -- Bonsly - Sleep Talk - TM82
  (438, 43800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Bonsly - Natural Gift - TM83
  (438, 43800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Bonsly - Swagger - TM87
  (438, 43800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Bonsly - Substitute - TM90
  (438, 43800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Bonsly - Headbutt - Egg
  (438, 43800, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bonsly - Harden - Egg
  (438, 43800, 106, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bonsly - Defense Curl - Egg
  (438, 43800, 111, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bonsly - Self-Destruct - Egg
  (438, 43800, 120, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bonsly - Rollout - Egg
  (438, 43800, 205, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bonsly - Sand Tomb - Egg
  (438, 43800, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bonsly - Snore - Tutor
  (438, 43800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Bonsly - Rollout - Tutor
  (438, 43800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Bonsly - Uproar - Tutor
  (438, 43800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Bonsly - Helping Hand - Tutor
  (438, 43800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Bonsly - Sucker Punch - Tutor
  (438, 43800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Bonsly - Earth Power - Tutor
  (438, 43800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Mime Jr. - Confusion - Level 1
  (439, 43900, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Barrier - Level 1
  (439, 43900, 112, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mime Jr. - Tickle - Level 1
  (439, 43900, 321, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mime Jr. - Copycat - Level 4
  (439, 43900, 383, 9, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Mime Jr. - Meditate - Level 8
  (439, 43900, 96, 9, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Mime Jr. - Encore - Level 11
  (439, 43900, 227, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Mime Jr. - Double Slap - Level 15
  (439, 43900, 3, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mime Jr. - Mimic - Level 18
  (439, 43900, 102, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mime Jr. - Light Screen - Level 22
  (439, 43900, 113, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mime Jr. - Reflect - Level 22
  (439, 43900, 115, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Mime Jr. - Psybeam - Level 25
  (439, 43900, 60, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Mime Jr. - Substitute - Level 29
  (439, 43900, 164, 9, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Mime Jr. - Recycle - Level 32
  (439, 43900, 278, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mime Jr. - Trick - Level 36
  (439, 43900, 271, 9, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mime Jr. - Psychic - Level 39
  (439, 43900, 94, 9, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Mime Jr. - Role Play - Level 43
  (439, 43900, 272, 9, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Mime Jr. - Baton Pass - Level 46
  (439, 43900, 226, 9, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Mime Jr. - Safeguard - Level 50
  (439, 43900, 219, 9, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Mime Jr. - Focus Punch - TM01
  (439, 43900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 19),
  -- Mime Jr. - Calm Mind - TM04
  (439, 43900, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 20),
  -- Mime Jr. - Toxic - TM06
  (439, 43900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Mime Jr. - Hidden Power - TM10
  (439, 43900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Mime Jr. - Sunny Day - TM11
  (439, 43900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Mime Jr. - Taunt - TM12
  (439, 43900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 24),
  -- Mime Jr. - Light Screen - TM16
  (439, 43900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Mime Jr. - Protect - TM17
  (439, 43900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Mime Jr. - Rain Dance - TM18
  (439, 43900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Mime Jr. - Safeguard - TM20
  (439, 43900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 28),
  -- Mime Jr. - Frustration - TM21
  (439, 43900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Mime Jr. - Solar Beam - TM22
  (439, 43900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 30),
  -- Mime Jr. - Thunderbolt - TM24
  (439, 43900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 31),
  -- Mime Jr. - Thunder - TM25
  (439, 43900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 32),
  -- Mime Jr. - Return - TM27
  (439, 43900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 33),
  -- Mime Jr. - Psychic - TM29
  (439, 43900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 34),
  -- Mime Jr. - Shadow Ball - TM30
  (439, 43900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 35),
  -- Mime Jr. - Brick Break - TM31
  (439, 43900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 36),
  -- Mime Jr. - Double Team - TM32
  (439, 43900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Mime Jr. - Reflect - TM33
  (439, 43900, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 38),
  -- Mime Jr. - Shock Wave - TM34
  (439, 43900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 39),
  -- Mime Jr. - Torment - TM41
  (439, 43900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 40),
  -- Mime Jr. - Facade - TM42
  (439, 43900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 41),
  -- Mime Jr. - Secret Power - TM43
  (439, 43900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 42),
  -- Mime Jr. - Rest - TM44
  (439, 43900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 43),
  -- Mime Jr. - Attract - TM45
  (439, 43900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 44),
  -- Mime Jr. - Thief - TM46
  (439, 43900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 45),
  -- Mime Jr. - Skill Swap - TM48
  (439, 43900, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 46),
  -- Mime Jr. - Snatch - TM49
  (439, 43900, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 47),
  -- Mime Jr. - Fling - TM56
  (439, 43900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 48),
  -- Mime Jr. - Charge Beam - TM57
  (439, 43900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 49),
  -- Mime Jr. - Endure - TM58
  (439, 43900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 50),
  -- Mime Jr. - Drain Punch - TM60
  (439, 43900, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 51),
  -- Mime Jr. - Recycle - TM67
  (439, 43900, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 52),
  -- Mime Jr. - Flash - TM70
  (439, 43900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 53),
  -- Mime Jr. - Thunder Wave - TM73
  (439, 43900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 54),
  -- Mime Jr. - Psych Up - TM77
  (439, 43900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 55),
  -- Mime Jr. - Captivate - TM78
  (439, 43900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 56),
  -- Mime Jr. - Sleep Talk - TM82
  (439, 43900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 57),
  -- Mime Jr. - Natural Gift - TM83
  (439, 43900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 58),
  -- Mime Jr. - Dream Eater - TM85
  (439, 43900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 59),
  -- Mime Jr. - Grass Knot - TM86
  (439, 43900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 60),
  -- Mime Jr. - Swagger - TM87
  (439, 43900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 61),
  -- Mime Jr. - Substitute - TM90
  (439, 43900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 62),
  -- Mime Jr. - Trick Room - TM92
  (439, 43900, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 63),
  -- Mime Jr. - Hypnosis - Egg
  (439, 43900, 95, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mime Jr. - Mimic - Egg
  (439, 43900, 102, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mime Jr. - Confuse Ray - Egg
  (439, 43900, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mime Jr. - Charm - Egg
  (439, 43900, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mime Jr. - Psych Up - Egg
  (439, 43900, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mime Jr. - Future Sight - Egg
  (439, 43900, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mime Jr. - Fake Out - Egg
  (439, 43900, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mime Jr. - Trick - Egg
  (439, 43900, 271, 9, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mime Jr. - Teeter Dance - Egg
  (439, 43900, 298, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mime Jr. - Wake-Up Slap - Egg
  (439, 43900, 358, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mime Jr. - Healing Wish - Egg
  (439, 43900, 361, 9, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mime Jr. - Snore - Tutor
  (439, 43900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Mime Jr. - Mud-Slap - Tutor
  (439, 43900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Mime Jr. - Uproar - Tutor
  (439, 43900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Mime Jr. - Helping Hand - Tutor
  (439, 43900, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Mime Jr. - Trick - Tutor
  (439, 43900, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Mime Jr. - Signal Beam - Tutor
  (439, 43900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Happiny - Pound - Level 1
  (440, 44000, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Charm - Level 1
  (440, 44000, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Happiny - Copycat - Level 5
  (440, 44000, 383, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Happiny - Refresh - Level 9
  (440, 44000, 287, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Happiny - Sweet Kiss - Level 12
  (440, 44000, 186, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Happiny - Water Pulse - TM03
  (440, 44000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 6),
  -- Happiny - Toxic - TM06
  (440, 44000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 7),
  -- Happiny - Hail - TM07
  (440, 44000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 8),
  -- Happiny - Hidden Power - TM10
  (440, 44000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 9),
  -- Happiny - Sunny Day - TM11
  (440, 44000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 10),
  -- Happiny - Light Screen - TM16
  (440, 44000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 11),
  -- Happiny - Protect - TM17
  (440, 44000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 12),
  -- Happiny - Rain Dance - TM18
  (440, 44000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 13),
  -- Happiny - Safeguard - TM20
  (440, 44000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 14),
  -- Happiny - Frustration - TM21
  (440, 44000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 15),
  -- Happiny - Solar Beam - TM22
  (440, 44000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 16),
  -- Happiny - Return - TM27
  (440, 44000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 17),
  -- Happiny - Psychic - TM29
  (440, 44000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 18),
  -- Happiny - Shadow Ball - TM30
  (440, 44000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 19),
  -- Happiny - Double Team - TM32
  (440, 44000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 20),
  -- Happiny - Shock Wave - TM34
  (440, 44000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 21),
  -- Happiny - Flamethrower - TM35
  (440, 44000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 22),
  -- Happiny - Fire Blast - TM38
  (440, 44000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 23),
  -- Happiny - Facade - TM42
  (440, 44000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Happiny - Secret Power - TM43
  (440, 44000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Happiny - Rest - TM44
  (440, 44000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Happiny - Attract - TM45
  (440, 44000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Happiny - Fling - TM56
  (440, 44000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 28),
  -- Happiny - Endure - TM58
  (440, 44000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Happiny - Drain Punch - TM60
  (440, 44000, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 30),
  -- Happiny - Recycle - TM67
  (440, 44000, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 31),
  -- Happiny - Flash - TM70
  (440, 44000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Happiny - Thunder Wave - TM73
  (440, 44000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 33),
  -- Happiny - Psych Up - TM77
  (440, 44000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 34),
  -- Happiny - Captivate - TM78
  (440, 44000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Happiny - Sleep Talk - TM82
  (440, 44000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Happiny - Natural Gift - TM83
  (440, 44000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Happiny - Dream Eater - TM85
  (440, 44000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 38),
  -- Happiny - Grass Knot - TM86
  (440, 44000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 39),
  -- Happiny - Swagger - TM87
  (440, 44000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Happiny - Substitute - TM90
  (440, 44000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Happiny - Counter - Egg
  (440, 44000, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Happiny - Metronome - Egg
  (440, 44000, 118, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Happiny - Substitute - Egg
  (440, 44000, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Happiny - Heal Bell - Egg
  (440, 44000, 215, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Happiny - Present - Egg
  (440, 44000, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Happiny - Helping Hand - Egg
  (440, 44000, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Happiny - Aromatherapy - Egg
  (440, 44000, 312, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Happiny - Gravity - Egg
  (440, 44000, 356, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Happiny - Last Resort - Egg
  (440, 44000, 387, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Happiny - Snore - Tutor
  (440, 44000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Happiny - Mud-Slap - Tutor
  (440, 44000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Happiny - Icy Wind - Tutor
  (440, 44000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Happiny - Rollout - Tutor
  (440, 44000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Happiny - Uproar - Tutor
  (440, 44000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Happiny - Helping Hand - Tutor
  (440, 44000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Happiny - Endeavor - Tutor
  (440, 44000, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Happiny - Last Resort - Tutor
  (440, 44000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Happiny - Zen Headbutt - Tutor
  (440, 44000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Chatot - Peck - Level 1
  (441, 44100, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chatot - Growl - Level 5
  (441, 44100, 45, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Chatot - Mirror Move - Level 9
  (441, 44100, 119, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chatot - Sing - Level 13
  (441, 44100, 47, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Chatot - Fury Attack - Level 17
  (441, 44100, 31, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chatot - Chatter - Level 21
  (441, 44100, 448, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Chatot - Taunt - Level 25
  (441, 44100, 269, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Chatot - Mimic - Level 29
  (441, 44100, 102, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Chatot - Roost - Level 33
  (441, 44100, 355, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Chatot - Uproar - Level 37
  (441, 44100, 253, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Chatot - Feather Dance - Level 41
  (441, 44100, 297, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Chatot - Hyper Voice - Level 45
  (441, 44100, 304, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Chatot - Toxic - TM06
  (441, 44100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Chatot - Hidden Power - TM10
  (441, 44100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Chatot - Sunny Day - TM11
  (441, 44100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Chatot - Taunt - TM12
  (441, 44100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 16),
  -- Chatot - Protect - TM17
  (441, 44100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Chatot - Rain Dance - TM18
  (441, 44100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Chatot - Frustration - TM21
  (441, 44100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Chatot - Return - TM27
  (441, 44100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Chatot - Double Team - TM32
  (441, 44100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Chatot - Aerial Ace - TM40
  (441, 44100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 22),
  -- Chatot - Torment - TM41
  (441, 44100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 23),
  -- Chatot - Facade - TM42
  (441, 44100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Chatot - Secret Power - TM43
  (441, 44100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Chatot - Rest - TM44
  (441, 44100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Chatot - Attract - TM45
  (441, 44100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Chatot - Thief - TM46
  (441, 44100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 28),
  -- Chatot - Steel Wing - TM47
  (441, 44100, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 29),
  -- Chatot - Roost - TM51
  (441, 44100, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 30),
  -- Chatot - Endure - TM58
  (441, 44100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Chatot - Captivate - TM78
  (441, 44100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Chatot - Sleep Talk - TM82
  (441, 44100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Chatot - Natural Gift - TM83
  (441, 44100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Chatot - Swagger - TM87
  (441, 44100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Chatot - Pluck - TM88
  (441, 44100, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 36),
  -- Chatot - U-turn - TM89
  (441, 44100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 37),
  -- Chatot - Substitute - TM90
  (441, 44100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Chatot - Fly - HM02
  (441, 44100, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 39),
  -- Chatot - Defog - HM05
  (441, 44100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 40),
  -- Chatot - Supersonic - Egg
  (441, 44100, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chatot - Agility - Egg
  (441, 44100, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chatot - Night Shade - Egg
  (441, 44100, 101, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chatot - Encore - Egg
  (441, 44100, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chatot - Nasty Plot - Egg
  (441, 44100, 417, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chatot - Swift - Tutor
  (441, 44100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Chatot - Snore - Tutor
  (441, 44100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Chatot - Mud-Slap - Tutor
  (441, 44100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Chatot - Twister - Tutor
  (441, 44100, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Chatot - Uproar - Tutor
  (441, 44100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Chatot - Heat Wave - Tutor
  (441, 44100, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Chatot - Air Cutter - Tutor
  (441, 44100, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Chatot - Ominous Wind - Tutor
  (441, 44100, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Spiritomb - Confuse Ray - Level 1
  (442, 44200, 109, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Curse - Level 1
  (442, 44200, 174, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spiritomb - Spite - Level 1
  (442, 44200, 180, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spiritomb - Pursuit - Level 1
  (442, 44200, 228, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spiritomb - Shadow Sneak - Level 1
  (442, 44200, 425, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Spiritomb - Feint Attack - Level 7
  (442, 44200, 185, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Spiritomb - Hypnosis - Level 13
  (442, 44200, 95, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Spiritomb - Dream Eater - Level 19
  (442, 44200, 138, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Spiritomb - Ominous Wind - Level 25
  (442, 44200, 466, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Spiritomb - Sucker Punch - Level 31
  (442, 44200, 389, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Spiritomb - Nasty Plot - Level 37
  (442, 44200, 417, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spiritomb - Memento - Level 43
  (442, 44200, 262, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spiritomb - Dark Pulse - Level 49
  (442, 44200, 399, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spiritomb - Water Pulse - TM03
  (442, 44200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Spiritomb - Calm Mind - TM04
  (442, 44200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Spiritomb - Toxic - TM06
  (442, 44200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Spiritomb - Hidden Power - TM10
  (442, 44200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Spiritomb - Sunny Day - TM11
  (442, 44200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Spiritomb - Taunt - TM12
  (442, 44200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Spiritomb - Hyper Beam - TM15
  (442, 44200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Spiritomb - Protect - TM17
  (442, 44200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Spiritomb - Rain Dance - TM18
  (442, 44200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Spiritomb - Frustration - TM21
  (442, 44200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Spiritomb - Return - TM27
  (442, 44200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Spiritomb - Psychic - TM29
  (442, 44200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Spiritomb - Shadow Ball - TM30
  (442, 44200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Spiritomb - Double Team - TM32
  (442, 44200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Spiritomb - Shock Wave - TM34
  (442, 44200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 28),
  -- Spiritomb - Rock Tomb - TM39
  (442, 44200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Spiritomb - Torment - TM41
  (442, 44200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Spiritomb - Facade - TM42
  (442, 44200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Spiritomb - Secret Power - TM43
  (442, 44200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Spiritomb - Rest - TM44
  (442, 44200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Spiritomb - Attract - TM45
  (442, 44200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Spiritomb - Thief - TM46
  (442, 44200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Spiritomb - Snatch - TM49
  (442, 44200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 36),
  -- Spiritomb - Endure - TM58
  (442, 44200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Spiritomb - Will-O-Wisp - TM61
  (442, 44200, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 38),
  -- Spiritomb - Silver Wind - TM62
  (442, 44200, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 39),
  -- Spiritomb - Embargo - TM63
  (442, 44200, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 40),
  -- Spiritomb - Giga Impact - TM68
  (442, 44200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Spiritomb - Flash - TM70
  (442, 44200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Spiritomb - Psych Up - TM77
  (442, 44200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Spiritomb - Captivate - TM78
  (442, 44200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Spiritomb - Dark Pulse - TM79
  (442, 44200, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 45),
  -- Spiritomb - Sleep Talk - TM82
  (442, 44200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Spiritomb - Natural Gift - TM83
  (442, 44200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Spiritomb - Dream Eater - TM85
  (442, 44200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 48),
  -- Spiritomb - Swagger - TM87
  (442, 44200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Spiritomb - Substitute - TM90
  (442, 44200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Spiritomb - Smokescreen - Egg
  (442, 44200, 108, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spiritomb - Destiny Bond - Egg
  (442, 44200, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spiritomb - Pain Split - Egg
  (442, 44200, 220, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spiritomb - Imprison - Egg
  (442, 44200, 286, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spiritomb - Grudge - Egg
  (442, 44200, 288, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spiritomb - Shadow Sneak - Egg
  (442, 44200, 425, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spiritomb - Snore - Tutor
  (442, 44200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Spiritomb - Spite - Tutor
  (442, 44200, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Spiritomb - Icy Wind - Tutor
  (442, 44200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Spiritomb - Uproar - Tutor
  (442, 44200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Spiritomb - Trick - Tutor
  (442, 44200, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Spiritomb - Sucker Punch - Tutor
  (442, 44200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Spiritomb - Ominous Wind - Tutor
  (442, 44200, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Attack - Level 3
  (443, 44300, 28, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gible - Dragon Rage - Level 7
  (443, 44300, 82, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gible - Sandstorm - Level 13
  (443, 44300, 201, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Gible - Take Down - Level 15
  (443, 44300, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gible - Sand Tomb - Level 19
  (443, 44300, 328, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 25
  (443, 44300, 163, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 27
  (443, 44300, 337, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 31
  (443, 44300, 91, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gible - Dragon Rush - Level 37
  (443, 44300, 407, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Gible - Dragon Claw - TM02
  (443, 44300, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 11),
  -- Gible - Roar - TM05
  (443, 44300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 12),
  -- Gible - Toxic - TM06
  (443, 44300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Gible - Hidden Power - TM10
  (443, 44300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Gible - Sunny Day - TM11
  (443, 44300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Gible - Protect - TM17
  (443, 44300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Gible - Rain Dance - TM18
  (443, 44300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Gible - Frustration - TM21
  (443, 44300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Gible - Earthquake - TM26
  (443, 44300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 19),
  -- Gible - Return - TM27
  (443, 44300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Gible - Dig - TM28
  (443, 44300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 21),
  -- Gible - Double Team - TM32
  (443, 44300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Gible - Flamethrower - TM35
  (443, 44300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 23),
  -- Gible - Sandstorm - TM37
  (443, 44300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 24),
  -- Gible - Fire Blast - TM38
  (443, 44300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 25),
  -- Gible - Rock Tomb - TM39
  (443, 44300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 26),
  -- Gible - Aerial Ace - TM40
  (443, 44300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 27),
  -- Gible - Facade - TM42
  (443, 44300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Gible - Secret Power - TM43
  (443, 44300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Gible - Rest - TM44
  (443, 44300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Gible - Attract - TM45
  (443, 44300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Gible - Endure - TM58
  (443, 44300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Gible - Dragon Pulse - TM59
  (443, 44300, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 33),
  -- Gible - Shadow Claw - TM65
  (443, 44300, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 34),
  -- Gible - Stone Edge - TM71
  (443, 44300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 35),
  -- Gible - Stealth Rock - TM76
  (443, 44300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 36),
  -- Gible - Captivate - TM78
  (443, 44300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Gible - Rock Slide - TM80
  (443, 44300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 38),
  -- Gible - Sleep Talk - TM82
  (443, 44300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Gible - Natural Gift - TM83
  (443, 44300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Gible - Swagger - TM87
  (443, 44300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Gible - Substitute - TM90
  (443, 44300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Gible - Cut - HM01
  (443, 44300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 43),
  -- Gible - Strength - HM04
  (443, 44300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 44),
  -- Gible - Rock Smash - HM06
  (443, 44300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Gible - Rock Climb - HM08
  (443, 44300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 46),
  -- Gible - Body Slam - Egg
  (443, 44300, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gible - Thrash - Egg
  (443, 44300, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gible - Double-Edge - Egg
  (443, 44300, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gible - Scary Face - Egg
  (443, 44300, 184, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gible - Outrage - Egg
  (443, 44300, 200, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gible - Dragon Breath - Egg
  (443, 44300, 225, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gible - Metal Claw - Egg
  (443, 44300, 232, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gible - Twister - Egg
  (443, 44300, 239, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gible - Sand Tomb - Egg
  (443, 44300, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gible - Iron Head - Egg
  (443, 44300, 442, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gible - Headbutt - Tutor
  (443, 44300, 29, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Gible - Swift - Tutor
  (443, 44300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Gible - Snore - Tutor
  (443, 44300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Gible - Mud-Slap - Tutor
  (443, 44300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Gible - Outrage - Tutor
  (443, 44300, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Gible - Fury Cutter - Tutor
  (443, 44300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Gible - Twister - Tutor
  (443, 44300, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Gible - Earth Power - Tutor
  (443, 44300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Gible - Draco Meteor - Tutor
  (443, 44300, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Gible - Iron Head - Tutor
  (443, 44300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Gabite - Sand Attack - Level 1
  (444, 44400, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Sand Attack - Level 3
  (444, 44400, 28, 9, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Gabite - Dragon Rage - Level 7
  (444, 44400, 82, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Gabite - Sandstorm - Level 13
  (444, 44400, 201, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gabite - Take Down - Level 15
  (444, 44400, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gabite - Sand Tomb - Level 19
  (444, 44400, 328, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gabite - Slash - Level 28
  (444, 44400, 163, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Gabite - Dragon Claw - Level 33
  (444, 44400, 337, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Gabite - Dig - Level 40
  (444, 44400, 91, 9, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Gabite - Dragon Rush - Level 49
  (444, 44400, 407, 9, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Gabite - Dragon Claw - TM02
  (444, 44400, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 12),
  -- Gabite - Roar - TM05
  (444, 44400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 13),
  -- Gabite - Toxic - TM06
  (444, 44400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Gabite - Hidden Power - TM10
  (444, 44400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Gabite - Sunny Day - TM11
  (444, 44400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Gabite - Protect - TM17
  (444, 44400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Gabite - Rain Dance - TM18
  (444, 44400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Gabite - Frustration - TM21
  (444, 44400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Gabite - Iron Tail - TM23
  (444, 44400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 20),
  -- Gabite - Earthquake - TM26
  (444, 44400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 21),
  -- Gabite - Return - TM27
  (444, 44400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Gabite - Dig - TM28
  (444, 44400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 23),
  -- Gabite - Double Team - TM32
  (444, 44400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Gabite - Flamethrower - TM35
  (444, 44400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 25),
  -- Gabite - Sandstorm - TM37
  (444, 44400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 26),
  -- Gabite - Fire Blast - TM38
  (444, 44400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 27),
  -- Gabite - Rock Tomb - TM39
  (444, 44400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 28),
  -- Gabite - Aerial Ace - TM40
  (444, 44400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Gabite - Facade - TM42
  (444, 44400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Gabite - Secret Power - TM43
  (444, 44400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Gabite - Rest - TM44
  (444, 44400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Gabite - Attract - TM45
  (444, 44400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Gabite - Endure - TM58
  (444, 44400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Gabite - Dragon Pulse - TM59
  (444, 44400, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 35),
  -- Gabite - Shadow Claw - TM65
  (444, 44400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 36),
  -- Gabite - Stone Edge - TM71
  (444, 44400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 37),
  -- Gabite - Stealth Rock - TM76
  (444, 44400, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 38),
  -- Gabite - Captivate - TM78
  (444, 44400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Gabite - Rock Slide - TM80
  (444, 44400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 40),
  -- Gabite - Sleep Talk - TM82
  (444, 44400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Gabite - Natural Gift - TM83
  (444, 44400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Gabite - Swagger - TM87
  (444, 44400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Gabite - Substitute - TM90
  (444, 44400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Gabite - Cut - HM01
  (444, 44400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 45),
  -- Gabite - Strength - HM04
  (444, 44400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Gabite - Rock Smash - HM06
  (444, 44400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Gabite - Rock Climb - HM08
  (444, 44400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 48),
  -- Gabite - Headbutt - Tutor
  (444, 44400, 29, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Gabite - Swift - Tutor
  (444, 44400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Gabite - Snore - Tutor
  (444, 44400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Gabite - Mud-Slap - Tutor
  (444, 44400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Gabite - Outrage - Tutor
  (444, 44400, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Gabite - Fury Cutter - Tutor
  (444, 44400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Gabite - Twister - Tutor
  (444, 44400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Gabite - Earth Power - Tutor
  (444, 44400, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Gabite - Draco Meteor - Tutor
  (444, 44400, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Gabite - Iron Head - Tutor
  (444, 44400, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Garchomp - Sand Attack - Level 1
  (445, 44500, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Dragon Rage - Level 1
  (445, 44500, 82, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garchomp - Sandstorm - Level 1
  (445, 44500, 201, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garchomp - Fire Fang - Level 1
  (445, 44500, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garchomp - Sand Attack - Level 3
  (445, 44500, 28, 9, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Garchomp - Dragon Rage - Level 7
  (445, 44500, 82, 9, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Garchomp - Sandstorm - Level 13
  (445, 44500, 201, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Garchomp - Take Down - Level 15
  (445, 44500, 36, 9, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Garchomp - Sand Tomb - Level 19
  (445, 44500, 328, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Garchomp - Slash - Level 28
  (445, 44500, 163, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Garchomp - Dragon Claw - Level 33
  (445, 44500, 337, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Garchomp - Dig - Level 40
  (445, 44500, 91, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Garchomp - Crunch - Level 48
  (445, 44500, 242, 9, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Garchomp - Dragon Rush - Level 55
  (445, 44500, 407, 9, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Garchomp - Dragon Claw - TM02
  (445, 44500, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 16),
  -- Garchomp - Roar - TM05
  (445, 44500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Garchomp - Toxic - TM06
  (445, 44500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Garchomp - Hidden Power - TM10
  (445, 44500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Garchomp - Sunny Day - TM11
  (445, 44500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Garchomp - Hyper Beam - TM15
  (445, 44500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Garchomp - Protect - TM17
  (445, 44500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Garchomp - Rain Dance - TM18
  (445, 44500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Garchomp - Frustration - TM21
  (445, 44500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Garchomp - Iron Tail - TM23
  (445, 44500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Garchomp - Earthquake - TM26
  (445, 44500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Garchomp - Return - TM27
  (445, 44500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Garchomp - Dig - TM28
  (445, 44500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Garchomp - Brick Break - TM31
  (445, 44500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Garchomp - Double Team - TM32
  (445, 44500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Garchomp - Flamethrower - TM35
  (445, 44500, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 31),
  -- Garchomp - Sandstorm - TM37
  (445, 44500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 32),
  -- Garchomp - Fire Blast - TM38
  (445, 44500, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 33),
  -- Garchomp - Rock Tomb - TM39
  (445, 44500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Garchomp - Aerial Ace - TM40
  (445, 44500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Garchomp - Facade - TM42
  (445, 44500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Garchomp - Secret Power - TM43
  (445, 44500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Garchomp - Rest - TM44
  (445, 44500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Garchomp - Attract - TM45
  (445, 44500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Garchomp - False Swipe - TM54
  (445, 44500, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 40),
  -- Garchomp - Fling - TM56
  (445, 44500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Garchomp - Endure - TM58
  (445, 44500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Garchomp - Dragon Pulse - TM59
  (445, 44500, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 43),
  -- Garchomp - Shadow Claw - TM65
  (445, 44500, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 44),
  -- Garchomp - Giga Impact - TM68
  (445, 44500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Garchomp - Stone Edge - TM71
  (445, 44500, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 46),
  -- Garchomp - Swords Dance - TM75
  (445, 44500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 47),
  -- Garchomp - Stealth Rock - TM76
  (445, 44500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Garchomp - Captivate - TM78
  (445, 44500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Garchomp - Rock Slide - TM80
  (445, 44500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Garchomp - Sleep Talk - TM82
  (445, 44500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Garchomp - Natural Gift - TM83
  (445, 44500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Garchomp - Poison Jab - TM84
  (445, 44500, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 53),
  -- Garchomp - Swagger - TM87
  (445, 44500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Garchomp - Substitute - TM90
  (445, 44500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Garchomp - Cut - HM01
  (445, 44500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 56),
  -- Garchomp - Surf - HM03
  (445, 44500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 57),
  -- Garchomp - Strength - HM04
  (445, 44500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 58),
  -- Garchomp - Defog - HM05
  (445, 44500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 59),
  -- Garchomp - Rock Smash - HM06
  (445, 44500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Garchomp - Rock Climb - HM08
  (445, 44500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 61),
  -- Garchomp - Headbutt - Tutor
  (445, 44500, 29, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Garchomp - Swift - Tutor
  (445, 44500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Garchomp - Snore - Tutor
  (445, 44500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Garchomp - Mud-Slap - Tutor
  (445, 44500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Garchomp - Outrage - Tutor
  (445, 44500, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Garchomp - Fury Cutter - Tutor
  (445, 44500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Garchomp - Twister - Tutor
  (445, 44500, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Garchomp - Aqua Tail - Tutor
  (445, 44500, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Garchomp - Earth Power - Tutor
  (445, 44500, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Garchomp - Draco Meteor - Tutor
  (445, 44500, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Garchomp - Iron Head - Tutor
  (445, 44500, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Munchlax - Tackle - Level 1
  (446, 44600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Metronome - Level 1
  (446, 44600, 118, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munchlax - Odor Sleuth - Level 1
  (446, 44600, 316, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 9, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Munchlax - Amnesia - Level 9
  (446, 44600, 133, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Munchlax - Lick - Level 12
  (446, 44600, 122, 9, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Munchlax - Recycle - Level 17
  (446, 44600, 278, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Munchlax - Screech - Level 20
  (446, 44600, 103, 9, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Munchlax - Stockpile - Level 25
  (446, 44600, 254, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Munchlax - Swallow - Level 28
  (446, 44600, 256, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Munchlax - Body Slam - Level 33
  (446, 44600, 34, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Munchlax - Fling - Level 36
  (446, 44600, 374, 9, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Munchlax - Rollout - Level 41
  (446, 44600, 205, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Munchlax - Natural Gift - Level 44
  (446, 44600, 363, 9, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Munchlax - Last Resort - Level 49
  (446, 44600, 387, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Munchlax - Focus Punch - TM01
  (446, 44600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Munchlax - Water Pulse - TM03
  (446, 44600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Munchlax - Toxic - TM06
  (446, 44600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Munchlax - Hidden Power - TM10
  (446, 44600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Munchlax - Sunny Day - TM11
  (446, 44600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Munchlax - Ice Beam - TM13
  (446, 44600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Munchlax - Blizzard - TM14
  (446, 44600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Munchlax - Protect - TM17
  (446, 44600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Munchlax - Rain Dance - TM18
  (446, 44600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Munchlax - Frustration - TM21
  (446, 44600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Munchlax - Solar Beam - TM22
  (446, 44600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Munchlax - Thunderbolt - TM24
  (446, 44600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Munchlax - Thunder - TM25
  (446, 44600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Munchlax - Earthquake - TM26
  (446, 44600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Munchlax - Return - TM27
  (446, 44600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Munchlax - Psychic - TM29
  (446, 44600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 31),
  -- Munchlax - Shadow Ball - TM30
  (446, 44600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Munchlax - Brick Break - TM31
  (446, 44600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 33),
  -- Munchlax - Double Team - TM32
  (446, 44600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 34),
  -- Munchlax - Shock Wave - TM34
  (446, 44600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Munchlax - Flamethrower - TM35
  (446, 44600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 36),
  -- Munchlax - Sandstorm - TM37
  (446, 44600, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 37),
  -- Munchlax - Fire Blast - TM38
  (446, 44600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 38),
  -- Munchlax - Rock Tomb - TM39
  (446, 44600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Munchlax - Facade - TM42
  (446, 44600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 40),
  -- Munchlax - Secret Power - TM43
  (446, 44600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 41),
  -- Munchlax - Rest - TM44
  (446, 44600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 42),
  -- Munchlax - Attract - TM45
  (446, 44600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 43),
  -- Munchlax - Fling - TM56
  (446, 44600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 44),
  -- Munchlax - Endure - TM58
  (446, 44600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Munchlax - Recycle - TM67
  (446, 44600, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 46),
  -- Munchlax - Captivate - TM78
  (446, 44600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Munchlax - Rock Slide - TM80
  (446, 44600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 48),
  -- Munchlax - Sleep Talk - TM82
  (446, 44600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Munchlax - Natural Gift - TM83
  (446, 44600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Munchlax - Swagger - TM87
  (446, 44600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Munchlax - Substitute - TM90
  (446, 44600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Munchlax - Surf - HM03
  (446, 44600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 53),
  -- Munchlax - Strength - HM04
  (446, 44600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Munchlax - Defog - HM05
  (446, 44600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 55),
  -- Munchlax - Rock Smash - HM06
  (446, 44600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Munchlax - Rock Climb - HM08
  (446, 44600, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 57),
  -- Munchlax - Whirlwind - Egg
  (446, 44600, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Munchlax - Double-Edge - Egg
  (446, 44600, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munchlax - Lick - Egg
  (446, 44600, 122, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munchlax - Substitute - Egg
  (446, 44600, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Munchlax - Curse - Egg
  (446, 44600, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Munchlax - Charm - Egg
  (446, 44600, 204, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Munchlax - Pursuit - Egg
  (446, 44600, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Munchlax - Zen Headbutt - Egg
  (446, 44600, 428, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Munchlax - Fire Punch - Tutor
  (446, 44600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Munchlax - Ice Punch - Tutor
  (446, 44600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Munchlax - Thunder Punch - Tutor
  (446, 44600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Munchlax - Snore - Tutor
  (446, 44600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Munchlax - Mud-Slap - Tutor
  (446, 44600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Munchlax - Icy Wind - Tutor
  (446, 44600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Munchlax - Rollout - Tutor
  (446, 44600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Munchlax - Uproar - Tutor
  (446, 44600, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Munchlax - Superpower - Tutor
  (446, 44600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Munchlax - Last Resort - Tutor
  (446, 44600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Munchlax - Seed Bomb - Tutor
  (446, 44600, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Munchlax - Zen Headbutt - Tutor
  (446, 44600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Munchlax - Gunk Shot - Tutor
  (446, 44600, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Foresight - Level 1
  (447, 44700, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Riolu - Counter - Level 6
  (447, 44700, 68, 9, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Riolu - Force Palm - Level 11
  (447, 44700, 395, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Riolu - Feint - Level 15
  (447, 44700, 364, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Riolu - Reversal - Level 19
  (447, 44700, 179, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Riolu - Screech - Level 24
  (447, 44700, 103, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Copycat - Level 29
  (447, 44700, 383, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Riolu - Focus Punch - TM01
  (447, 44700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 10),
  -- Riolu - Roar - TM05
  (447, 44700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 11),
  -- Riolu - Toxic - TM06
  (447, 44700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Riolu - Bulk Up - TM08
  (447, 44700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 13),
  -- Riolu - Hidden Power - TM10
  (447, 44700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Riolu - Sunny Day - TM11
  (447, 44700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Riolu - Protect - TM17
  (447, 44700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Riolu - Rain Dance - TM18
  (447, 44700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Riolu - Frustration - TM21
  (447, 44700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Riolu - Iron Tail - TM23
  (447, 44700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 19),
  -- Riolu - Earthquake - TM26
  (447, 44700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 20),
  -- Riolu - Return - TM27
  (447, 44700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Riolu - Dig - TM28
  (447, 44700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 22),
  -- Riolu - Brick Break - TM31
  (447, 44700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 23),
  -- Riolu - Double Team - TM32
  (447, 44700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Riolu - Rock Tomb - TM39
  (447, 44700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 25),
  -- Riolu - Facade - TM42
  (447, 44700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Riolu - Secret Power - TM43
  (447, 44700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Riolu - Rest - TM44
  (447, 44700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Riolu - Attract - TM45
  (447, 44700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Riolu - Focus Blast - TM52
  (447, 44700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 30),
  -- Riolu - Fling - TM56
  (447, 44700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 31),
  -- Riolu - Endure - TM58
  (447, 44700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Riolu - Drain Punch - TM60
  (447, 44700, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 33),
  -- Riolu - Shadow Claw - TM65
  (447, 44700, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 34),
  -- Riolu - Payback - TM66
  (447, 44700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 35),
  -- Riolu - Swords Dance - TM75
  (447, 44700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 36),
  -- Riolu - Captivate - TM78
  (447, 44700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Riolu - Rock Slide - TM80
  (447, 44700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 38),
  -- Riolu - Sleep Talk - TM82
  (447, 44700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Riolu - Natural Gift - TM83
  (447, 44700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Riolu - Poison Jab - TM84
  (447, 44700, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 41),
  -- Riolu - Swagger - TM87
  (447, 44700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Riolu - Substitute - TM90
  (447, 44700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Riolu - Strength - HM04
  (447, 44700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 44),
  -- Riolu - Rock Smash - HM06
  (447, 44700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Riolu - Bite - Egg
  (447, 44700, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Riolu - Low Kick - Egg
  (447, 44700, 67, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Riolu - Agility - Egg
  (447, 44700, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Riolu - High Jump Kick - Egg
  (447, 44700, 136, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Riolu - Mind Reader - Egg
  (447, 44700, 170, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Riolu - Detect - Egg
  (447, 44700, 197, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Riolu - Cross Chop - Egg
  (447, 44700, 238, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Riolu - Crunch - Egg
  (447, 44700, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Riolu - Blaze Kick - Egg
  (447, 44700, 299, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Riolu - Sky Uppercut - Egg
  (447, 44700, 327, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Riolu - Iron Defense - Egg
  (447, 44700, 334, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Riolu - Vacuum Wave - Egg
  (447, 44700, 410, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Riolu - Bullet Punch - Egg
  (447, 44700, 418, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Riolu - Ice Punch - Tutor
  (447, 44700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Riolu - Thunder Punch - Tutor
  (447, 44700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Riolu - Swift - Tutor
  (447, 44700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Riolu - Snore - Tutor
  (447, 44700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Riolu - Mud-Slap - Tutor
  (447, 44700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Riolu - Fury Cutter - Tutor
  (447, 44700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Riolu - Helping Hand - Tutor
  (447, 44700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Riolu - Iron Defense - Tutor
  (447, 44700, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Riolu - Magnet Rise - Tutor
  (447, 44700, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Riolu - Vacuum Wave - Tutor
  (447, 44700, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Riolu - Zen Headbutt - Tutor
  (447, 44700, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Foresight - Level 1
  (448, 44800, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Detect - Level 1
  (448, 44800, 197, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Metal Claw - Level 1
  (448, 44800, 232, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Dark Pulse - Level 1
  (448, 44800, 399, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lucario - Counter - Level 6
  (448, 44800, 68, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Lucario - Force Palm - Level 11
  (448, 44800, 395, 9, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Lucario - Feint - Level 15
  (448, 44800, 364, 9, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Lucario - Bone Rush - Level 19
  (448, 44800, 198, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Lucario - Metal Sound - Level 24
  (448, 44800, 319, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Lucario - Me First - Level 29
  (448, 44800, 382, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Lucario - Swords Dance - Level 33
  (448, 44800, 14, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lucario - Aura Sphere - Level 37
  (448, 44800, 396, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Lucario - Close Combat - Level 42
  (448, 44800, 370, 9, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Lucario - Dragon Pulse - Level 47
  (448, 44800, 406, 9, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Lucario - Extreme Speed - Level 51
  (448, 44800, 245, 9, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Lucario - Focus Punch - TM01
  (448, 44800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 17),
  -- Lucario - Water Pulse - TM03
  (448, 44800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Lucario - Calm Mind - TM04
  (448, 44800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 19),
  -- Lucario - Roar - TM05
  (448, 44800, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 20),
  -- Lucario - Toxic - TM06
  (448, 44800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Lucario - Bulk Up - TM08
  (448, 44800, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 22),
  -- Lucario - Hidden Power - TM10
  (448, 44800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Lucario - Sunny Day - TM11
  (448, 44800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Lucario - Hyper Beam - TM15
  (448, 44800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Lucario - Protect - TM17
  (448, 44800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Lucario - Rain Dance - TM18
  (448, 44800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Lucario - Frustration - TM21
  (448, 44800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Lucario - Iron Tail - TM23
  (448, 44800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Lucario - Earthquake - TM26
  (448, 44800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Lucario - Return - TM27
  (448, 44800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Lucario - Dig - TM28
  (448, 44800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Lucario - Psychic - TM29
  (448, 44800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 33),
  -- Lucario - Shadow Ball - TM30
  (448, 44800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Lucario - Brick Break - TM31
  (448, 44800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Lucario - Double Team - TM32
  (448, 44800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Lucario - Rock Tomb - TM39
  (448, 44800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 37),
  -- Lucario - Facade - TM42
  (448, 44800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Lucario - Secret Power - TM43
  (448, 44800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Lucario - Rest - TM44
  (448, 44800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Lucario - Attract - TM45
  (448, 44800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Lucario - Focus Blast - TM52
  (448, 44800, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Lucario - Fling - TM56
  (448, 44800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Lucario - Endure - TM58
  (448, 44800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Lucario - Dragon Pulse - TM59
  (448, 44800, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 45),
  -- Lucario - Drain Punch - TM60
  (448, 44800, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 46),
  -- Lucario - Shadow Claw - TM65
  (448, 44800, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 47),
  -- Lucario - Payback - TM66
  (448, 44800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 48),
  -- Lucario - Giga Impact - TM68
  (448, 44800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Lucario - Stone Edge - TM71
  (448, 44800, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 50),
  -- Lucario - Swords Dance - TM75
  (448, 44800, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 51),
  -- Lucario - Captivate - TM78
  (448, 44800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 52),
  -- Lucario - Dark Pulse - TM79
  (448, 44800, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 53),
  -- Lucario - Rock Slide - TM80
  (448, 44800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 54),
  -- Lucario - Sleep Talk - TM82
  (448, 44800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Lucario - Natural Gift - TM83
  (448, 44800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Lucario - Poison Jab - TM84
  (448, 44800, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 57),
  -- Lucario - Swagger - TM87
  (448, 44800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Lucario - Substitute - TM90
  (448, 44800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Lucario - Flash Cannon - TM91
  (448, 44800, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 60),
  -- Lucario - Strength - HM04
  (448, 44800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 61),
  -- Lucario - Rock Smash - HM06
  (448, 44800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Lucario - Rock Climb - HM08
  (448, 44800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 63),
  -- Lucario - Ice Punch - Tutor
  (448, 44800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Lucario - Thunder Punch - Tutor
  (448, 44800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Lucario - Swift - Tutor
  (448, 44800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Lucario - Snore - Tutor
  (448, 44800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Lucario - Mud-Slap - Tutor
  (448, 44800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Lucario - Fury Cutter - Tutor
  (448, 44800, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Lucario - Helping Hand - Tutor
  (448, 44800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Lucario - Iron Defense - Tutor
  (448, 44800, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Lucario - Magnet Rise - Tutor
  (448, 44800, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Lucario - Vacuum Wave - Tutor
  (448, 44800, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Lucario - Zen Headbutt - Tutor
  (448, 44800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Hippopotas - Sand Attack - Level 1
  (449, 44900, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 7
  (449, 44900, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 13
  (449, 44900, 281, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Hippopotas - Take Down - Level 19
  (449, 44900, 36, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Hippopotas - Sand Tomb - Level 25
  (449, 44900, 328, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Hippopotas - Crunch - Level 31
  (449, 44900, 242, 9, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Hippopotas - Earthquake - Level 37
  (449, 44900, 89, 9, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 9, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Hippopotas - Fissure - Level 50
  (449, 44900, 90, 9, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Hippopotas - Water Pulse - TM03
  (449, 44900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 11),
  -- Hippopotas - Roar - TM05
  (449, 44900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 12),
  -- Hippopotas - Toxic - TM06
  (449, 44900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Hippopotas - Hidden Power - TM10
  (449, 44900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Hippopotas - Sunny Day - TM11
  (449, 44900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Hippopotas - Protect - TM17
  (449, 44900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Hippopotas - Frustration - TM21
  (449, 44900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 17),
  -- Hippopotas - Iron Tail - TM23
  (449, 44900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 18),
  -- Hippopotas - Earthquake - TM26
  (449, 44900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 19),
  -- Hippopotas - Return - TM27
  (449, 44900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Hippopotas - Dig - TM28
  (449, 44900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 21),
  -- Hippopotas - Double Team - TM32
  (449, 44900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 22),
  -- Hippopotas - Sandstorm - TM37
  (449, 44900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 23),
  -- Hippopotas - Rock Tomb - TM39
  (449, 44900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 24),
  -- Hippopotas - Facade - TM42
  (449, 44900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Hippopotas - Secret Power - TM43
  (449, 44900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Hippopotas - Rest - TM44
  (449, 44900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Hippopotas - Attract - TM45
  (449, 44900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Hippopotas - Endure - TM58
  (449, 44900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Hippopotas - Stealth Rock - TM76
  (449, 44900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 30),
  -- Hippopotas - Captivate - TM78
  (449, 44900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 31),
  -- Hippopotas - Rock Slide - TM80
  (449, 44900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 32),
  -- Hippopotas - Sleep Talk - TM82
  (449, 44900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 33),
  -- Hippopotas - Natural Gift - TM83
  (449, 44900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 34),
  -- Hippopotas - Swagger - TM87
  (449, 44900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 35),
  -- Hippopotas - Substitute - TM90
  (449, 44900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Hippopotas - Strength - HM04
  (449, 44900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 37),
  -- Hippopotas - Rock Smash - HM06
  (449, 44900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 38),
  -- Hippopotas - Body Slam - Egg
  (449, 44900, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Hippopotas - Curse - Egg
  (449, 44900, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hippopotas - Stockpile - Egg
  (449, 44900, 254, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Hippopotas - Spit Up - Egg
  (449, 44900, 255, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hippopotas - Swallow - Egg
  (449, 44900, 256, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hippopotas - Slack Off - Egg
  (449, 44900, 303, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hippopotas - Sand Tomb - Egg
  (449, 44900, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hippopotas - Snore - Tutor
  (449, 44900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Hippopotas - Mud-Slap - Tutor
  (449, 44900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Hippopotas - Superpower - Tutor
  (449, 44900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Hippopotas - Earth Power - Tutor
  (449, 44900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Hippowdon - Sand Attack - Level 1
  (450, 45000, 28, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hippowdon - Yawn - Level 1
  (450, 45000, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hippowdon - Thunder Fang - Level 1
  (450, 45000, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hippowdon - Ice Fang - Level 1
  (450, 45000, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hippowdon - Fire Fang - Level 1
  (450, 45000, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hippowdon - Bite - Level 7
  (450, 45000, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Hippowdon - Yawn - Level 13
  (450, 45000, 281, 9, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hippowdon - Take Down - Level 19
  (450, 45000, 36, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Hippowdon - Sand Tomb - Level 25
  (450, 45000, 328, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Hippowdon - Crunch - Level 31
  (450, 45000, 242, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Hippowdon - Earthquake - Level 40
  (450, 45000, 89, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 9, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Hippowdon - Fissure - Level 60
  (450, 45000, 90, 9, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Hippowdon - Water Pulse - TM03
  (450, 45000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Hippowdon - Roar - TM05
  (450, 45000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Hippowdon - Toxic - TM06
  (450, 45000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Hippowdon - Hidden Power - TM10
  (450, 45000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Hippowdon - Sunny Day - TM11
  (450, 45000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Hippowdon - Hyper Beam - TM15
  (450, 45000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Hippowdon - Protect - TM17
  (450, 45000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Hippowdon - Frustration - TM21
  (450, 45000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Hippowdon - Iron Tail - TM23
  (450, 45000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Hippowdon - Earthquake - TM26
  (450, 45000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Hippowdon - Return - TM27
  (450, 45000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Hippowdon - Dig - TM28
  (450, 45000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Hippowdon - Double Team - TM32
  (450, 45000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Hippowdon - Sandstorm - TM37
  (450, 45000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Hippowdon - Rock Tomb - TM39
  (450, 45000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Hippowdon - Facade - TM42
  (450, 45000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Hippowdon - Secret Power - TM43
  (450, 45000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Hippowdon - Rest - TM44
  (450, 45000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Hippowdon - Attract - TM45
  (450, 45000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Hippowdon - Endure - TM58
  (450, 45000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Hippowdon - Giga Impact - TM68
  (450, 45000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 36),
  -- Hippowdon - Stone Edge - TM71
  (450, 45000, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 37),
  -- Hippowdon - Stealth Rock - TM76
  (450, 45000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 38),
  -- Hippowdon - Captivate - TM78
  (450, 45000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Hippowdon - Rock Slide - TM80
  (450, 45000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 40),
  -- Hippowdon - Sleep Talk - TM82
  (450, 45000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Hippowdon - Natural Gift - TM83
  (450, 45000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Hippowdon - Swagger - TM87
  (450, 45000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Hippowdon - Substitute - TM90
  (450, 45000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Hippowdon - Strength - HM04
  (450, 45000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 45),
  -- Hippowdon - Rock Smash - HM06
  (450, 45000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 46),
  -- Hippowdon - Snore - Tutor
  (450, 45000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Hippowdon - Mud-Slap - Tutor
  (450, 45000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Hippowdon - Superpower - Tutor
  (450, 45000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Hippowdon - Earth Power - Tutor
  (450, 45000, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Hippowdon - Iron Head - Tutor
  (450, 45000, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51);
