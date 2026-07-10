-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 401-450.
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
  -- Kricketot - Growl - Level 1
  (401, 40100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketot - Bide - Level 1
  (401, 40100, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketot - Struggle Bug - Level 6
  (401, 40100, 522, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kricketot - Bug Bite - Level 16
  (401, 40100, 450, 13, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kricketot - Struggle Bug - TM76
  (401, 40100, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 5),
  -- Kricketune - Growl - Level 1
  (402, 40200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketune - Bide - Level 1
  (402, 40200, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketune - Fury Cutter - Level 10
  (402, 40200, 210, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Kricketune - Leech Life - Level 14
  (402, 40200, 141, 13, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Kricketune - Sing - Level 18
  (402, 40200, 47, 13, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kricketune - Focus Energy - Level 22
  (402, 40200, 116, 13, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kricketune - Slash - Level 26
  (402, 40200, 163, 13, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kricketune - X-Scissor - Level 30
  (402, 40200, 404, 13, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kricketune - Screech - Level 34
  (402, 40200, 103, 13, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Kricketune - Fell Stinger - Level 36
  (402, 40200, 565, 13, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Kricketune - Taunt - Level 38
  (402, 40200, 269, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Kricketune - Night Slash - Level 42
  (402, 40200, 400, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Kricketune - Sticky Web - Level 44
  (402, 40200, 564, 13, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kricketune - Bug Buzz - Level 46
  (402, 40200, 405, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Kricketune - Perish Song - Level 50
  (402, 40200, 195, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kricketune - Hone Claws - TM01
  (402, 40200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Kricketune - Toxic - TM06
  (402, 40200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Kricketune - Hidden Power - TM10
  (402, 40200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Kricketune - Sunny Day - TM11
  (402, 40200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Kricketune - Taunt - TM12
  (402, 40200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Kricketune - Hyper Beam - TM15
  (402, 40200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Kricketune - Protect - TM17
  (402, 40200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Kricketune - Rain Dance - TM18
  (402, 40200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Kricketune - Frustration - TM21
  (402, 40200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Kricketune - Return - TM27
  (402, 40200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Kricketune - Brick Break - TM31
  (402, 40200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Kricketune - Double Team - TM32
  (402, 40200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Kricketune - Aerial Ace - TM40
  (402, 40200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Kricketune - Facade - TM42
  (402, 40200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Kricketune - Rest - TM44
  (402, 40200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Kricketune - Attract - TM45
  (402, 40200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Kricketune - Round - TM48
  (402, 40200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Kricketune - Echoed Voice - TM49
  (402, 40200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 33),
  -- Kricketune - False Swipe - TM54
  (402, 40200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 34),
  -- Kricketune - Giga Impact - TM68
  (402, 40200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Kricketune - Flash - TM70
  (402, 40200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Kricketune - Swords Dance - TM75
  (402, 40200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 37),
  -- Kricketune - Struggle Bug - TM76
  (402, 40200, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 38),
  -- Kricketune - X-Scissor - TM81
  (402, 40200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 39),
  -- Kricketune - Infestation - TM83
  (402, 40200, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 40),
  -- Kricketune - Swagger - TM87
  (402, 40200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Kricketune - Sleep Talk - TM88
  (402, 40200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Kricketune - Substitute - TM90
  (402, 40200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Kricketune - Rock Smash - TM94
  (402, 40200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Kricketune - Power-Up Punch - TM98
  (402, 40200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 45),
  -- Kricketune - Confide - TM100
  (402, 40200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Kricketune - Cut - HM01
  (402, 40200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Kricketune - Strength - HM04
  (402, 40200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Shinx - Tackle - Level 1
  (403, 40300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Level 5
  (403, 40300, 43, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shinx - Charge - Level 9
  (403, 40300, 268, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shinx - Baby-Doll Eyes - Level 11
  (403, 40300, 608, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Shinx - Spark - Level 13
  (403, 40300, 209, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shinx - Bite - Level 17
  (403, 40300, 44, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Shinx - Roar - Level 21
  (403, 40300, 46, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Shinx - Swagger - Level 25
  (403, 40300, 207, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Shinx - Thunder Fang - Level 29
  (403, 40300, 422, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Shinx - Crunch - Level 33
  (403, 40300, 242, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Shinx - Scary Face - Level 37
  (403, 40300, 184, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Shinx - Discharge - Level 41
  (403, 40300, 435, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Shinx - Wild Charge - Level 45
  (403, 40300, 528, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Shinx - Roar - TM05
  (403, 40300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 14),
  -- Shinx - Toxic - TM06
  (403, 40300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Shinx - Hidden Power - TM10
  (403, 40300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Shinx - Light Screen - TM16
  (403, 40300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 17),
  -- Shinx - Protect - TM17
  (403, 40300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Shinx - Rain Dance - TM18
  (403, 40300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Shinx - Frustration - TM21
  (403, 40300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Shinx - Thunderbolt - TM24
  (403, 40300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 21),
  -- Shinx - Thunder - TM25
  (403, 40300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 22),
  -- Shinx - Return - TM27
  (403, 40300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Shinx - Double Team - TM32
  (403, 40300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Shinx - Facade - TM42
  (403, 40300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Shinx - Rest - TM44
  (403, 40300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Shinx - Attract - TM45
  (403, 40300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Shinx - Thief - TM46
  (403, 40300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 28),
  -- Shinx - Round - TM48
  (403, 40300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Shinx - Charge Beam - TM57
  (403, 40300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 30),
  -- Shinx - Flash - TM70
  (403, 40300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Shinx - Volt Switch - TM72
  (403, 40300, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 32),
  -- Shinx - Thunder Wave - TM73
  (403, 40300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 33),
  -- Shinx - Swagger - TM87
  (403, 40300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Shinx - Sleep Talk - TM88
  (403, 40300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Shinx - Substitute - TM90
  (403, 40300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Shinx - Wild Charge - TM93
  (403, 40300, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 37),
  -- Shinx - Snarl - TM95
  (403, 40300, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 38),
  -- Shinx - Confide - TM100
  (403, 40300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Shinx - Strength - HM04
  (403, 40300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 40),
  -- Shinx - Double Kick - Egg
  (403, 40300, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shinx - Take Down - Egg
  (403, 40300, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shinx - Quick Attack - Egg
  (403, 40300, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shinx - Swift - Egg
  (403, 40300, 129, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shinx - Helping Hand - Egg
  (403, 40300, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shinx - Fake Tears - Egg
  (403, 40300, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shinx - Signal Beam - Egg
  (403, 40300, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shinx - Howl - Egg
  (403, 40300, 336, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shinx - Shock Wave - Egg
  (403, 40300, 351, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shinx - Night Slash - Egg
  (403, 40300, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shinx - Thunder Fang - Egg
  (403, 40300, 422, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shinx - Ice Fang - Egg
  (403, 40300, 423, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shinx - Fire Fang - Egg
  (403, 40300, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shinx - Eerie Impulse - Egg
  (403, 40300, 598, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Luxio - Tackle - Level 1
  (404, 40400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Level 1
  (404, 40400, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxio - Leer - Level 5
  (404, 40400, 43, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Level 9
  (404, 40400, 268, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Luxio - Spark - Level 13
  (404, 40400, 209, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Luxio - Bite - Level 18
  (404, 40400, 44, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 23
  (404, 40400, 46, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Luxio - Swagger - Level 28
  (404, 40400, 207, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Luxio - Thunder Fang - Level 33
  (404, 40400, 422, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxio - Crunch - Level 38
  (404, 40400, 242, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Luxio - Scary Face - Level 43
  (404, 40400, 184, 13, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 48
  (404, 40400, 435, 13, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Luxio - Wild Charge - Level 53
  (404, 40400, 528, 13, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Luxio - Roar - TM05
  (404, 40400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 14),
  -- Luxio - Toxic - TM06
  (404, 40400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Luxio - Hidden Power - TM10
  (404, 40400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Luxio - Light Screen - TM16
  (404, 40400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 17),
  -- Luxio - Protect - TM17
  (404, 40400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Luxio - Rain Dance - TM18
  (404, 40400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Luxio - Frustration - TM21
  (404, 40400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Luxio - Thunderbolt - TM24
  (404, 40400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 21),
  -- Luxio - Thunder - TM25
  (404, 40400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 22),
  -- Luxio - Return - TM27
  (404, 40400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Luxio - Double Team - TM32
  (404, 40400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Luxio - Facade - TM42
  (404, 40400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Luxio - Rest - TM44
  (404, 40400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Luxio - Attract - TM45
  (404, 40400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Luxio - Thief - TM46
  (404, 40400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 28),
  -- Luxio - Round - TM48
  (404, 40400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Luxio - Charge Beam - TM57
  (404, 40400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 30),
  -- Luxio - Flash - TM70
  (404, 40400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Luxio - Volt Switch - TM72
  (404, 40400, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 32),
  -- Luxio - Thunder Wave - TM73
  (404, 40400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 33),
  -- Luxio - Swagger - TM87
  (404, 40400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Luxio - Sleep Talk - TM88
  (404, 40400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Luxio - Substitute - TM90
  (404, 40400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Luxio - Wild Charge - TM93
  (404, 40400, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 37),
  -- Luxio - Snarl - TM95
  (404, 40400, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 38),
  -- Luxio - Confide - TM100
  (404, 40400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Luxio - Strength - HM04
  (404, 40400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 40),
  -- Luxray - Tackle - Level 1
  (405, 40500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Leer - Level 1
  (405, 40500, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxray - Charge - Level 1
  (405, 40500, 268, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxray - Electric Terrain - Level 1
  (405, 40500, 604, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Luxray - Leer - Level 5
  (405, 40500, 43, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Luxray - Charge - Level 9
  (405, 40500, 268, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Luxray - Spark - Level 13
  (405, 40500, 209, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Luxray - Bite - Level 18
  (405, 40500, 44, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Luxray - Roar - Level 23
  (405, 40500, 46, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Luxray - Swagger - Level 28
  (405, 40500, 207, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Luxray - Thunder Fang - Level 35
  (405, 40500, 422, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Luxray - Crunch - Level 42
  (405, 40500, 242, 13, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Luxray - Scary Face - Level 49
  (405, 40500, 184, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Luxray - Discharge - Level 56
  (405, 40500, 435, 13, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Luxray - Wild Charge - Level 63
  (405, 40500, 528, 13, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Luxray - Electric Terrain - Level 67
  (405, 40500, 604, 13, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Luxray - Roar - TM05
  (405, 40500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Luxray - Toxic - TM06
  (405, 40500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Luxray - Hidden Power - TM10
  (405, 40500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Luxray - Hyper Beam - TM15
  (405, 40500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Luxray - Light Screen - TM16
  (405, 40500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Luxray - Protect - TM17
  (405, 40500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Luxray - Rain Dance - TM18
  (405, 40500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Luxray - Frustration - TM21
  (405, 40500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Luxray - Thunderbolt - TM24
  (405, 40500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Luxray - Thunder - TM25
  (405, 40500, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Luxray - Return - TM27
  (405, 40500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Luxray - Double Team - TM32
  (405, 40500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Luxray - Facade - TM42
  (405, 40500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Luxray - Rest - TM44
  (405, 40500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Luxray - Attract - TM45
  (405, 40500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Luxray - Thief - TM46
  (405, 40500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Luxray - Round - TM48
  (405, 40500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Luxray - Charge Beam - TM57
  (405, 40500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 34),
  -- Luxray - Giga Impact - TM68
  (405, 40500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Luxray - Flash - TM70
  (405, 40500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Luxray - Volt Switch - TM72
  (405, 40500, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 37),
  -- Luxray - Thunder Wave - TM73
  (405, 40500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Luxray - Swagger - TM87
  (405, 40500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Luxray - Sleep Talk - TM88
  (405, 40500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Luxray - Substitute - TM90
  (405, 40500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Luxray - Wild Charge - TM93
  (405, 40500, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 42),
  -- Luxray - Snarl - TM95
  (405, 40500, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 43),
  -- Luxray - Confide - TM100
  (405, 40500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Luxray - Strength - HM04
  (405, 40500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 45),
  -- Budew - Absorb - Level 1
  (406, 40600, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Growth - Level 4
  (406, 40600, 74, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Budew - Water Sport - Level 7
  (406, 40600, 346, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Budew - Stun Spore - Level 10
  (406, 40600, 78, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Budew - Mega Drain - Level 13
  (406, 40600, 72, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Budew - Worry Seed - Level 16
  (406, 40600, 388, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Budew - Toxic - TM06
  (406, 40600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 7),
  -- Budew - Venoshock - TM09
  (406, 40600, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 8),
  -- Budew - Hidden Power - TM10
  (406, 40600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 9),
  -- Budew - Sunny Day - TM11
  (406, 40600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 10),
  -- Budew - Protect - TM17
  (406, 40600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Budew - Rain Dance - TM18
  (406, 40600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 12),
  -- Budew - Frustration - TM21
  (406, 40600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 13),
  -- Budew - Solar Beam - TM22
  (406, 40600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 14),
  -- Budew - Return - TM27
  (406, 40600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 15),
  -- Budew - Shadow Ball - TM30
  (406, 40600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 16),
  -- Budew - Double Team - TM32
  (406, 40600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 17),
  -- Budew - Sludge Bomb - TM36
  (406, 40600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 18),
  -- Budew - Facade - TM42
  (406, 40600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 19),
  -- Budew - Rest - TM44
  (406, 40600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 20),
  -- Budew - Attract - TM45
  (406, 40600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 21),
  -- Budew - Round - TM48
  (406, 40600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 22),
  -- Budew - Energy Ball - TM53
  (406, 40600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 23),
  -- Budew - Flash - TM70
  (406, 40600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 24),
  -- Budew - Swords Dance - TM75
  (406, 40600, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 25),
  -- Budew - Psych Up - TM77
  (406, 40600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 26),
  -- Budew - Grass Knot - TM86
  (406, 40600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 27),
  -- Budew - Swagger - TM87
  (406, 40600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 28),
  -- Budew - Sleep Talk - TM88
  (406, 40600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 29),
  -- Budew - Substitute - TM90
  (406, 40600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 30),
  -- Budew - Nature Power - TM96
  (406, 40600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 31),
  -- Budew - Dazzling Gleam - TM99
  (406, 40600, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 32),
  -- Budew - Confide - TM100
  (406, 40600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 33),
  -- Budew - Cut - HM01
  (406, 40600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 34),
  -- Budew - Pin Missile - Egg
  (406, 40600, 42, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Budew - Razor Leaf - Egg
  (406, 40600, 75, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Budew - Sleep Powder - Egg
  (406, 40600, 79, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Budew - Mind Reader - Egg
  (406, 40600, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Budew - Cotton Spore - Egg
  (406, 40600, 178, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Budew - Spikes - Egg
  (406, 40600, 191, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Budew - Giga Drain - Egg
  (406, 40600, 202, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Budew - Synthesis - Egg
  (406, 40600, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Budew - Grass Whistle - Egg
  (406, 40600, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Budew - Extrasensory - Egg
  (406, 40600, 326, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Budew - Natural Gift - Egg
  (406, 40600, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Budew - Seed Bomb - Egg
  (406, 40600, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Budew - Leaf Storm - Egg
  (406, 40600, 437, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roserade - Poison Sting - Level 1
  (407, 40700, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Mega Drain - Level 1
  (407, 40700, 72, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roserade - Sweet Scent - Level 1
  (407, 40700, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roserade - Weather Ball - Level 1
  (407, 40700, 311, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roserade - Magical Leaf - Level 1
  (407, 40700, 345, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Roserade - Grassy Terrain - Level 1
  (407, 40700, 580, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Roserade - Venom Drench - Level 1
  (407, 40700, 599, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Roserade - Toxic - TM06
  (407, 40700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 8),
  -- Roserade - Venoshock - TM09
  (407, 40700, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 9),
  -- Roserade - Hidden Power - TM10
  (407, 40700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 10),
  -- Roserade - Sunny Day - TM11
  (407, 40700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 11),
  -- Roserade - Hyper Beam - TM15
  (407, 40700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 12),
  -- Roserade - Protect - TM17
  (407, 40700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 13),
  -- Roserade - Rain Dance - TM18
  (407, 40700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 14),
  -- Roserade - Frustration - TM21
  (407, 40700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 15),
  -- Roserade - Solar Beam - TM22
  (407, 40700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 16),
  -- Roserade - Return - TM27
  (407, 40700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 17),
  -- Roserade - Shadow Ball - TM30
  (407, 40700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 18),
  -- Roserade - Double Team - TM32
  (407, 40700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Roserade - Sludge Bomb - TM36
  (407, 40700, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 20),
  -- Roserade - Facade - TM42
  (407, 40700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 21),
  -- Roserade - Rest - TM44
  (407, 40700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 22),
  -- Roserade - Attract - TM45
  (407, 40700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 23),
  -- Roserade - Round - TM48
  (407, 40700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 24),
  -- Roserade - Energy Ball - TM53
  (407, 40700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 25),
  -- Roserade - Giga Impact - TM68
  (407, 40700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 26),
  -- Roserade - Flash - TM70
  (407, 40700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 27),
  -- Roserade - Swords Dance - TM75
  (407, 40700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 28),
  -- Roserade - Psych Up - TM77
  (407, 40700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 29),
  -- Roserade - Poison Jab - TM84
  (407, 40700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 30),
  -- Roserade - Grass Knot - TM86
  (407, 40700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 31),
  -- Roserade - Swagger - TM87
  (407, 40700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Roserade - Sleep Talk - TM88
  (407, 40700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Roserade - Substitute - TM90
  (407, 40700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Roserade - Nature Power - TM96
  (407, 40700, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 35),
  -- Roserade - Dazzling Gleam - TM99
  (407, 40700, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 36),
  -- Roserade - Confide - TM100
  (407, 40700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Roserade - Cut - HM01
  (407, 40700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 38),
  -- Cranidos - Headbutt - Level 1
  (408, 40800, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cranidos - Leer - Level 1
  (408, 40800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cranidos - Focus Energy - Level 6
  (408, 40800, 116, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cranidos - Pursuit - Level 10
  (408, 40800, 228, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cranidos - Take Down - Level 15
  (408, 40800, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cranidos - Scary Face - Level 19
  (408, 40800, 184, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cranidos - Assurance - Level 24
  (408, 40800, 372, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cranidos - Chip Away - Level 28
  (408, 40800, 498, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cranidos - Ancient Power - Level 33
  (408, 40800, 246, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cranidos - Zen Headbutt - Level 37
  (408, 40800, 428, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cranidos - Screech - Level 42
  (408, 40800, 103, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cranidos - Head Smash - Level 46
  (408, 40800, 457, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cranidos - Roar - TM05
  (408, 40800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 13),
  -- Cranidos - Toxic - TM06
  (408, 40800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Cranidos - Hidden Power - TM10
  (408, 40800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Cranidos - Sunny Day - TM11
  (408, 40800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Cranidos - Ice Beam - TM13
  (408, 40800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Cranidos - Blizzard - TM14
  (408, 40800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Cranidos - Protect - TM17
  (408, 40800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Cranidos - Rain Dance - TM18
  (408, 40800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Cranidos - Frustration - TM21
  (408, 40800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Cranidos - Smack Down - TM23
  (408, 40800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 22),
  -- Cranidos - Thunderbolt - TM24
  (408, 40800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Cranidos - Thunder - TM25
  (408, 40800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 24),
  -- Cranidos - Earthquake - TM26
  (408, 40800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 25),
  -- Cranidos - Return - TM27
  (408, 40800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Cranidos - Dig - TM28
  (408, 40800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Cranidos - Double Team - TM32
  (408, 40800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Cranidos - Flamethrower - TM35
  (408, 40800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 29),
  -- Cranidos - Sandstorm - TM37
  (408, 40800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 30),
  -- Cranidos - Fire Blast - TM38
  (408, 40800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 31),
  -- Cranidos - Rock Tomb - TM39
  (408, 40800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Cranidos - Facade - TM42
  (408, 40800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Cranidos - Rest - TM44
  (408, 40800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Cranidos - Attract - TM45
  (408, 40800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Cranidos - Thief - TM46
  (408, 40800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Cranidos - Round - TM48
  (408, 40800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Cranidos - Fling - TM56
  (408, 40800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Cranidos - Incinerate - TM59
  (408, 40800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 39),
  -- Cranidos - Payback - TM66
  (408, 40800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Cranidos - Rock Polish - TM69
  (408, 40800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Cranidos - Stone Edge - TM71
  (408, 40800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 42),
  -- Cranidos - Swords Dance - TM75
  (408, 40800, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 43),
  -- Cranidos - Bulldoze - TM78
  (408, 40800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Cranidos - Rock Slide - TM80
  (408, 40800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Cranidos - Swagger - TM87
  (408, 40800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Cranidos - Sleep Talk - TM88
  (408, 40800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Cranidos - Substitute - TM90
  (408, 40800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Cranidos - Rock Smash - TM94
  (408, 40800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Cranidos - Power-Up Punch - TM98
  (408, 40800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 50),
  -- Cranidos - Confide - TM100
  (408, 40800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Cranidos - Strength - HM04
  (408, 40800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Cranidos - Whirlwind - Egg
  (408, 40800, 18, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cranidos - Slam - Egg
  (408, 40800, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cranidos - Stomp - Egg
  (408, 40800, 23, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cranidos - Thrash - Egg
  (408, 40800, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cranidos - Double-Edge - Egg
  (408, 40800, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cranidos - Leer - Egg
  (408, 40800, 43, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cranidos - Curse - Egg
  (408, 40800, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cranidos - Iron Tail - Egg
  (408, 40800, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cranidos - Crunch - Egg
  (408, 40800, 242, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cranidos - Hammer Arm - Egg
  (408, 40800, 359, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cranidos - Iron Head - Egg
  (408, 40800, 442, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rampardos - Headbutt - Level 1
  (409, 40900, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rampardos - Leer - Level 1
  (409, 40900, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rampardos - Focus Energy - Level 6
  (409, 40900, 116, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rampardos - Pursuit - Level 10
  (409, 40900, 228, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rampardos - Take Down - Level 15
  (409, 40900, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rampardos - Scary Face - Level 19
  (409, 40900, 184, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rampardos - Assurance - Level 24
  (409, 40900, 372, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rampardos - Chip Away - Level 28
  (409, 40900, 498, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Rampardos - Endeavor - Level 30
  (409, 40900, 283, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rampardos - Ancient Power - Level 36
  (409, 40900, 246, 13, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rampardos - Zen Headbutt - Level 43
  (409, 40900, 428, 13, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rampardos - Screech - Level 51
  (409, 40900, 103, 13, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Rampardos - Head Smash - Level 58
  (409, 40900, 457, 13, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Rampardos - Roar - TM05
  (409, 40900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 14),
  -- Rampardos - Toxic - TM06
  (409, 40900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Rampardos - Hidden Power - TM10
  (409, 40900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Rampardos - Sunny Day - TM11
  (409, 40900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Rampardos - Ice Beam - TM13
  (409, 40900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Rampardos - Blizzard - TM14
  (409, 40900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Rampardos - Hyper Beam - TM15
  (409, 40900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Rampardos - Protect - TM17
  (409, 40900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Rampardos - Rain Dance - TM18
  (409, 40900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Rampardos - Frustration - TM21
  (409, 40900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Rampardos - Smack Down - TM23
  (409, 40900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 24),
  -- Rampardos - Thunderbolt - TM24
  (409, 40900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Rampardos - Thunder - TM25
  (409, 40900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Rampardos - Earthquake - TM26
  (409, 40900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Rampardos - Return - TM27
  (409, 40900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Rampardos - Dig - TM28
  (409, 40900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Rampardos - Brick Break - TM31
  (409, 40900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Rampardos - Double Team - TM32
  (409, 40900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Rampardos - Flamethrower - TM35
  (409, 40900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Rampardos - Sandstorm - TM37
  (409, 40900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 33),
  -- Rampardos - Fire Blast - TM38
  (409, 40900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Rampardos - Rock Tomb - TM39
  (409, 40900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Rampardos - Facade - TM42
  (409, 40900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Rampardos - Rest - TM44
  (409, 40900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Rampardos - Attract - TM45
  (409, 40900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Rampardos - Thief - TM46
  (409, 40900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Rampardos - Round - TM48
  (409, 40900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Rampardos - Focus Blast - TM52
  (409, 40900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Rampardos - Fling - TM56
  (409, 40900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Rampardos - Incinerate - TM59
  (409, 40900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Rampardos - Payback - TM66
  (409, 40900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 44),
  -- Rampardos - Giga Impact - TM68
  (409, 40900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Rampardos - Rock Polish - TM69
  (409, 40900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 46),
  -- Rampardos - Stone Edge - TM71
  (409, 40900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 47),
  -- Rampardos - Swords Dance - TM75
  (409, 40900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 48),
  -- Rampardos - Bulldoze - TM78
  (409, 40900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Rampardos - Rock Slide - TM80
  (409, 40900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Rampardos - Dragon Tail - TM82
  (409, 40900, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 51),
  -- Rampardos - Swagger - TM87
  (409, 40900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Rampardos - Sleep Talk - TM88
  (409, 40900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Rampardos - Substitute - TM90
  (409, 40900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Rampardos - Rock Smash - TM94
  (409, 40900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Rampardos - Power-Up Punch - TM98
  (409, 40900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Rampardos - Confide - TM100
  (409, 40900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Rampardos - Cut - HM01
  (409, 40900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 58),
  -- Rampardos - Surf - HM03
  (409, 40900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 59),
  -- Rampardos - Strength - HM04
  (409, 40900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 60),
  -- Shieldon - Tackle - Level 1
  (410, 41000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shieldon - Protect - Level 1
  (410, 41000, 182, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shieldon - Taunt - Level 6
  (410, 41000, 269, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Shieldon - Metal Sound - Level 10
  (410, 41000, 319, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shieldon - Take Down - Level 15
  (410, 41000, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shieldon - Iron Defense - Level 19
  (410, 41000, 334, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shieldon - Swagger - Level 24
  (410, 41000, 207, 13, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Shieldon - Ancient Power - Level 28
  (410, 41000, 246, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shieldon - Endure - Level 33
  (410, 41000, 203, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shieldon - Metal Burst - Level 37
  (410, 41000, 368, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shieldon - Iron Head - Level 42
  (410, 41000, 442, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Shieldon - Heavy Slam - Level 46
  (410, 41000, 484, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Shieldon - Roar - TM05
  (410, 41000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 13),
  -- Shieldon - Toxic - TM06
  (410, 41000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Shieldon - Hidden Power - TM10
  (410, 41000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Shieldon - Sunny Day - TM11
  (410, 41000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Shieldon - Taunt - TM12
  (410, 41000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 17),
  -- Shieldon - Ice Beam - TM13
  (410, 41000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Shieldon - Blizzard - TM14
  (410, 41000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Shieldon - Protect - TM17
  (410, 41000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Shieldon - Rain Dance - TM18
  (410, 41000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Shieldon - Frustration - TM21
  (410, 41000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Shieldon - Smack Down - TM23
  (410, 41000, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 23),
  -- Shieldon - Thunderbolt - TM24
  (410, 41000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Shieldon - Thunder - TM25
  (410, 41000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Shieldon - Earthquake - TM26
  (410, 41000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Shieldon - Return - TM27
  (410, 41000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Shieldon - Dig - TM28
  (410, 41000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Shieldon - Double Team - TM32
  (410, 41000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Shieldon - Flamethrower - TM35
  (410, 41000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 30),
  -- Shieldon - Sandstorm - TM37
  (410, 41000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 31),
  -- Shieldon - Fire Blast - TM38
  (410, 41000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 32),
  -- Shieldon - Rock Tomb - TM39
  (410, 41000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Shieldon - Torment - TM41
  (410, 41000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Shieldon - Facade - TM42
  (410, 41000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Shieldon - Rest - TM44
  (410, 41000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Shieldon - Attract - TM45
  (410, 41000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Shieldon - Round - TM48
  (410, 41000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Shieldon - Incinerate - TM59
  (410, 41000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 39),
  -- Shieldon - Rock Polish - TM69
  (410, 41000, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 40),
  -- Shieldon - Stone Edge - TM71
  (410, 41000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 41),
  -- Shieldon - Bulldoze - TM78
  (410, 41000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 42),
  -- Shieldon - Rock Slide - TM80
  (410, 41000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 43),
  -- Shieldon - Swagger - TM87
  (410, 41000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Shieldon - Sleep Talk - TM88
  (410, 41000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Shieldon - Substitute - TM90
  (410, 41000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Shieldon - Flash Cannon - TM91
  (410, 41000, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 47),
  -- Shieldon - Rock Smash - TM94
  (410, 41000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Shieldon - Confide - TM100
  (410, 41000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Shieldon - Strength - HM04
  (410, 41000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 50),
  -- Shieldon - Headbutt - Egg
  (410, 41000, 29, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shieldon - Body Slam - Egg
  (410, 41000, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shieldon - Double-Edge - Egg
  (410, 41000, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shieldon - Counter - Egg
  (410, 41000, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shieldon - Fissure - Egg
  (410, 41000, 90, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shieldon - Screech - Egg
  (410, 41000, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shieldon - Focus Energy - Egg
  (410, 41000, 116, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shieldon - Curse - Egg
  (410, 41000, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shieldon - Scary Face - Egg
  (410, 41000, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shieldon - Rock Blast - Egg
  (410, 41000, 350, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Shieldon - Stealth Rock - Egg
  (410, 41000, 446, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Shieldon - Wide Guard - Egg
  (410, 41000, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Shieldon - Guard Split - Egg
  (410, 41000, 470, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Bastiodon - Tackle - Level 1
  (411, 41100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bastiodon - Protect - Level 1
  (411, 41100, 182, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bastiodon - Taunt - Level 1
  (411, 41100, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bastiodon - Metal Sound - Level 1
  (411, 41100, 319, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bastiodon - Taunt - Level 6
  (411, 41100, 269, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bastiodon - Metal Sound - Level 10
  (411, 41100, 319, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Bastiodon - Take Down - Level 15
  (411, 41100, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bastiodon - Iron Defense - Level 19
  (411, 41100, 334, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Bastiodon - Swagger - Level 24
  (411, 41100, 207, 13, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Bastiodon - Ancient Power - Level 28
  (411, 41100, 246, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Bastiodon - Block - Level 30
  (411, 41100, 335, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Bastiodon - Endure - Level 36
  (411, 41100, 203, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bastiodon - Metal Burst - Level 43
  (411, 41100, 368, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Bastiodon - Iron Head - Level 51
  (411, 41100, 442, 13, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Bastiodon - Heavy Slam - Level 58
  (411, 41100, 484, 13, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Bastiodon - Roar - TM05
  (411, 41100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Bastiodon - Toxic - TM06
  (411, 41100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Bastiodon - Hidden Power - TM10
  (411, 41100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Bastiodon - Sunny Day - TM11
  (411, 41100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Bastiodon - Taunt - TM12
  (411, 41100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Bastiodon - Ice Beam - TM13
  (411, 41100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Bastiodon - Blizzard - TM14
  (411, 41100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Bastiodon - Hyper Beam - TM15
  (411, 41100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Bastiodon - Protect - TM17
  (411, 41100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Bastiodon - Rain Dance - TM18
  (411, 41100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Bastiodon - Frustration - TM21
  (411, 41100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Bastiodon - Smack Down - TM23
  (411, 41100, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 27),
  -- Bastiodon - Thunderbolt - TM24
  (411, 41100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Bastiodon - Thunder - TM25
  (411, 41100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Bastiodon - Earthquake - TM26
  (411, 41100, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Bastiodon - Return - TM27
  (411, 41100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Bastiodon - Dig - TM28
  (411, 41100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Bastiodon - Double Team - TM32
  (411, 41100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Bastiodon - Flamethrower - TM35
  (411, 41100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Bastiodon - Sandstorm - TM37
  (411, 41100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Bastiodon - Fire Blast - TM38
  (411, 41100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Bastiodon - Rock Tomb - TM39
  (411, 41100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Bastiodon - Torment - TM41
  (411, 41100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 38),
  -- Bastiodon - Facade - TM42
  (411, 41100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Bastiodon - Rest - TM44
  (411, 41100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Bastiodon - Attract - TM45
  (411, 41100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Bastiodon - Round - TM48
  (411, 41100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Bastiodon - Incinerate - TM59
  (411, 41100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Bastiodon - Giga Impact - TM68
  (411, 41100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Bastiodon - Rock Polish - TM69
  (411, 41100, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 45),
  -- Bastiodon - Stone Edge - TM71
  (411, 41100, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 46),
  -- Bastiodon - Bulldoze - TM78
  (411, 41100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Bastiodon - Rock Slide - TM80
  (411, 41100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Bastiodon - Swagger - TM87
  (411, 41100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Bastiodon - Sleep Talk - TM88
  (411, 41100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Bastiodon - Substitute - TM90
  (411, 41100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Bastiodon - Flash Cannon - TM91
  (411, 41100, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 52),
  -- Bastiodon - Rock Smash - TM94
  (411, 41100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Bastiodon - Confide - TM100
  (411, 41100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Bastiodon - Strength - HM04
  (411, 41100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Burmy - Protect - Level 1
  (412, 41200, 182, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Burmy - Tackle - Level 10
  (412, 41200, 33, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Burmy - Bug Bite - Level 15
  (412, 41200, 450, 13, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Burmy - Hidden Power - Level 20
  (412, 41200, 237, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Burmy - Hidden Power - TM10
  (412, 41200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 5),
  -- Burmy - Protect - TM17
  (412, 41200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 6),
  -- Wormadam - Tackle - Level 1
  (413, 41300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam - Protect - Level 10
  (413, 41300, 182, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam - Bug Bite - Level 15
  (413, 41300, 450, 13, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam - Hidden Power - Level 20
  (413, 41300, 237, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam - Confusion - Level 23
  (413, 41300, 93, 13, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam - Razor Leaf - Level 26
  (413, 41300, 75, 13, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam - Growth - Level 29
  (413, 41300, 74, 13, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam - Psybeam - Level 32
  (413, 41300, 60, 13, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam - Captivate - Level 35
  (413, 41300, 445, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam - Flail - Level 38
  (413, 41300, 175, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam - Attract - Level 41
  (413, 41300, 213, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam - Psychic - Level 44
  (413, 41300, 94, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam - Leaf Storm - Level 47
  (413, 41300, 437, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam - Toxic - TM06
  (413, 41300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Wormadam - Venoshock - TM09
  (413, 41300, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 15),
  -- Wormadam - Hidden Power - TM10
  (413, 41300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Wormadam - Sunny Day - TM11
  (413, 41300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Wormadam - Hyper Beam - TM15
  (413, 41300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Wormadam - Protect - TM17
  (413, 41300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Wormadam - Rain Dance - TM18
  (413, 41300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Wormadam - Safeguard - TM20
  (413, 41300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Wormadam - Frustration - TM21
  (413, 41300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Wormadam - Solar Beam - TM22
  (413, 41300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Wormadam - Return - TM27
  (413, 41300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Wormadam - Psychic - TM29
  (413, 41300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 25),
  -- Wormadam - Shadow Ball - TM30
  (413, 41300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Wormadam - Double Team - TM32
  (413, 41300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Wormadam - Facade - TM42
  (413, 41300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Wormadam - Rest - TM44
  (413, 41300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Wormadam - Attract - TM45
  (413, 41300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Wormadam - Thief - TM46
  (413, 41300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 31),
  -- Wormadam - Round - TM48
  (413, 41300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Wormadam - Energy Ball - TM53
  (413, 41300, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 33),
  -- Wormadam - Giga Impact - TM68
  (413, 41300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 34),
  -- Wormadam - Flash - TM70
  (413, 41300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 35),
  -- Wormadam - Struggle Bug - TM76
  (413, 41300, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 36),
  -- Wormadam - Psych Up - TM77
  (413, 41300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 37),
  -- Wormadam - Infestation - TM83
  (413, 41300, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 38),
  -- Wormadam - Dream Eater - TM85
  (413, 41300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 39),
  -- Wormadam - Grass Knot - TM86
  (413, 41300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 40),
  -- Wormadam - Swagger - TM87
  (413, 41300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Wormadam - Sleep Talk - TM88
  (413, 41300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Wormadam - Substitute - TM90
  (413, 41300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Wormadam - Confide - TM100
  (413, 41300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Mothim - Tackle - Level 1
  (414, 41400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mothim - Protect - Level 10
  (414, 41400, 182, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Mothim - Bug Bite - Level 15
  (414, 41400, 450, 13, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Mothim - Hidden Power - Level 20
  (414, 41400, 237, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mothim - Confusion - Level 23
  (414, 41400, 93, 13, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Mothim - Gust - Level 26
  (414, 41400, 16, 13, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mothim - Poison Powder - Level 29
  (414, 41400, 77, 13, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Mothim - Psybeam - Level 32
  (414, 41400, 60, 13, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Mothim - Camouflage - Level 35
  (414, 41400, 293, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mothim - Silver Wind - Level 38
  (414, 41400, 318, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Mothim - Air Slash - Level 41
  (414, 41400, 403, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mothim - Psychic - Level 44
  (414, 41400, 94, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Mothim - Bug Buzz - Level 47
  (414, 41400, 405, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Mothim - Quiver Dance - Level 50
  (414, 41400, 483, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Mothim - Toxic - TM06
  (414, 41400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Mothim - Venoshock - TM09
  (414, 41400, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 16),
  -- Mothim - Hidden Power - TM10
  (414, 41400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Mothim - Sunny Day - TM11
  (414, 41400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Mothim - Hyper Beam - TM15
  (414, 41400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 19),
  -- Mothim - Protect - TM17
  (414, 41400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Mothim - Rain Dance - TM18
  (414, 41400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Mothim - Roost - TM19
  (414, 41400, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 22),
  -- Mothim - Safeguard - TM20
  (414, 41400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 23),
  -- Mothim - Frustration - TM21
  (414, 41400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Mothim - Solar Beam - TM22
  (414, 41400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Mothim - Return - TM27
  (414, 41400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Mothim - Psychic - TM29
  (414, 41400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Mothim - Shadow Ball - TM30
  (414, 41400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Mothim - Double Team - TM32
  (414, 41400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Mothim - Aerial Ace - TM40
  (414, 41400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Mothim - Facade - TM42
  (414, 41400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Mothim - Rest - TM44
  (414, 41400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Mothim - Attract - TM45
  (414, 41400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Mothim - Thief - TM46
  (414, 41400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Mothim - Round - TM48
  (414, 41400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Mothim - Energy Ball - TM53
  (414, 41400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 36),
  -- Mothim - Acrobatics - TM62
  (414, 41400, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 37),
  -- Mothim - Giga Impact - TM68
  (414, 41400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 38),
  -- Mothim - Flash - TM70
  (414, 41400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Mothim - Struggle Bug - TM76
  (414, 41400, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 40),
  -- Mothim - Psych Up - TM77
  (414, 41400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Mothim - Infestation - TM83
  (414, 41400, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 42),
  -- Mothim - Dream Eater - TM85
  (414, 41400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 43),
  -- Mothim - Swagger - TM87
  (414, 41400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Mothim - Sleep Talk - TM88
  (414, 41400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Mothim - U-turn - TM89
  (414, 41400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 46),
  -- Mothim - Substitute - TM90
  (414, 41400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Mothim - Confide - TM100
  (414, 41400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Combee - Gust - Level 1
  (415, 41500, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Sweet Scent - Level 1
  (415, 41500, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combee - Bug Bite - Level 13
  (415, 41500, 450, 13, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Combee - Bug Buzz - Level 29
  (415, 41500, 405, 13, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Poison Sting - Level 1
  (416, 41600, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vespiquen - Confuse Ray - Level 1
  (416, 41600, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vespiquen - Destiny Bond - Level 1
  (416, 41600, 194, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vespiquen - Sweet Scent - Level 1
  (416, 41600, 230, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vespiquen - Fell Stinger - Level 1
  (416, 41600, 565, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vespiquen - Fury Cutter - Level 5
  (416, 41600, 210, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Vespiquen - Pursuit - Level 9
  (416, 41600, 228, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Vespiquen - Fury Swipes - Level 13
  (416, 41600, 154, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Vespiquen - Defend Order - Level 17
  (416, 41600, 455, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Vespiquen - Slash - Level 21
  (416, 41600, 163, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Vespiquen - Power Gem - Level 25
  (416, 41600, 408, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Vespiquen - Heal Order - Level 29
  (416, 41600, 456, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Vespiquen - Toxic - Level 33
  (416, 41600, 92, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Vespiquen - Air Slash - Level 37
  (416, 41600, 403, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Vespiquen - Captivate - Level 41
  (416, 41600, 445, 13, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Vespiquen - Attack Order - Level 45
  (416, 41600, 454, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Vespiquen - Swagger - Level 49
  (416, 41600, 207, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Vespiquen - Destiny Bond - Level 53
  (416, 41600, 194, 13, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Vespiquen - Fell Stinger - Level 57
  (416, 41600, 565, 13, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Vespiquen - Hone Claws - TM01
  (416, 41600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 21),
  -- Vespiquen - Toxic - TM06
  (416, 41600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Vespiquen - Venoshock - TM09
  (416, 41600, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 23),
  -- Vespiquen - Hidden Power - TM10
  (416, 41600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Vespiquen - Sunny Day - TM11
  (416, 41600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Vespiquen - Hyper Beam - TM15
  (416, 41600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Vespiquen - Protect - TM17
  (416, 41600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Vespiquen - Rain Dance - TM18
  (416, 41600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Vespiquen - Roost - TM19
  (416, 41600, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 29),
  -- Vespiquen - Frustration - TM21
  (416, 41600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Vespiquen - Return - TM27
  (416, 41600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Vespiquen - Double Team - TM32
  (416, 41600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Vespiquen - Sludge Bomb - TM36
  (416, 41600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Vespiquen - Aerial Ace - TM40
  (416, 41600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Vespiquen - Facade - TM42
  (416, 41600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Vespiquen - Rest - TM44
  (416, 41600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Vespiquen - Attract - TM45
  (416, 41600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Vespiquen - Thief - TM46
  (416, 41600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Vespiquen - Round - TM48
  (416, 41600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Vespiquen - Fling - TM56
  (416, 41600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Vespiquen - Quash - TM60
  (416, 41600, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 41),
  -- Vespiquen - Acrobatics - TM62
  (416, 41600, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 42),
  -- Vespiquen - Giga Impact - TM68
  (416, 41600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Vespiquen - Flash - TM70
  (416, 41600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Vespiquen - Struggle Bug - TM76
  (416, 41600, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 45),
  -- Vespiquen - X-Scissor - TM81
  (416, 41600, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 46),
  -- Vespiquen - Infestation - TM83
  (416, 41600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 47),
  -- Vespiquen - Swagger - TM87
  (416, 41600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Vespiquen - Sleep Talk - TM88
  (416, 41600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Vespiquen - U-turn - TM89
  (416, 41600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 50),
  -- Vespiquen - Substitute - TM90
  (416, 41600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Vespiquen - Confide - TM100
  (416, 41600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Vespiquen - Cut - HM01
  (416, 41600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 53),
  -- Pachirisu - Growl - Level 1
  (417, 41700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pachirisu - Bide - Level 1
  (417, 41700, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pachirisu - Quick Attack - Level 5
  (417, 41700, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pachirisu - Charm - Level 9
  (417, 41700, 204, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pachirisu - Spark - Level 13
  (417, 41700, 209, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pachirisu - Endure - Level 17
  (417, 41700, 203, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pachirisu - Nuzzle - Level 19
  (417, 41700, 609, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Pachirisu - Swift - Level 21
  (417, 41700, 129, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pachirisu - Electro Ball - Level 25
  (417, 41700, 486, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pachirisu - Sweet Kiss - Level 29
  (417, 41700, 186, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Pachirisu - Thunder Wave - Level 33
  (417, 41700, 86, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pachirisu - Super Fang - Level 37
  (417, 41700, 162, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Pachirisu - Discharge - Level 41
  (417, 41700, 435, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Pachirisu - Last Resort - Level 45
  (417, 41700, 387, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pachirisu - Hyper Fang - Level 49
  (417, 41700, 158, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Pachirisu - Toxic - TM06
  (417, 41700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Pachirisu - Hidden Power - TM10
  (417, 41700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Pachirisu - Light Screen - TM16
  (417, 41700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 18),
  -- Pachirisu - Protect - TM17
  (417, 41700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Pachirisu - Rain Dance - TM18
  (417, 41700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Pachirisu - Frustration - TM21
  (417, 41700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Pachirisu - Thunderbolt - TM24
  (417, 41700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 22),
  -- Pachirisu - Thunder - TM25
  (417, 41700, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 23),
  -- Pachirisu - Return - TM27
  (417, 41700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Pachirisu - Dig - TM28
  (417, 41700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Pachirisu - Double Team - TM32
  (417, 41700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Pachirisu - Facade - TM42
  (417, 41700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Pachirisu - Rest - TM44
  (417, 41700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Pachirisu - Attract - TM45
  (417, 41700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Pachirisu - Round - TM48
  (417, 41700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Pachirisu - Echoed Voice - TM49
  (417, 41700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Pachirisu - Fling - TM56
  (417, 41700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 32),
  -- Pachirisu - Charge Beam - TM57
  (417, 41700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 33),
  -- Pachirisu - Flash - TM70
  (417, 41700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 34),
  -- Pachirisu - Volt Switch - TM72
  (417, 41700, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 35),
  -- Pachirisu - Thunder Wave - TM73
  (417, 41700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 36),
  -- Pachirisu - Grass Knot - TM86
  (417, 41700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 37),
  -- Pachirisu - Swagger - TM87
  (417, 41700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Pachirisu - Sleep Talk - TM88
  (417, 41700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Pachirisu - U-turn - TM89
  (417, 41700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 40),
  -- Pachirisu - Substitute - TM90
  (417, 41700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Pachirisu - Confide - TM100
  (417, 41700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Pachirisu - Cut - HM01
  (417, 41700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 43),
  -- Pachirisu - Tail Whip - Egg
  (417, 41700, 39, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pachirisu - Bite - Egg
  (417, 41700, 44, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pachirisu - Defense Curl - Egg
  (417, 41700, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pachirisu - Flail - Egg
  (417, 41700, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pachirisu - Rollout - Egg
  (417, 41700, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pachirisu - Iron Tail - Egg
  (417, 41700, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pachirisu - Flatter - Egg
  (417, 41700, 260, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pachirisu - Follow Me - Egg
  (417, 41700, 266, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pachirisu - Charge - Egg
  (417, 41700, 268, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pachirisu - Fake Tears - Egg
  (417, 41700, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pachirisu - Covet - Egg
  (417, 41700, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pachirisu - Bestow - Egg
  (417, 41700, 516, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pachirisu - Ion Deluge - Egg
  (417, 41700, 569, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buizel - Sonic Boom - Level 1
  (418, 41800, 49, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buizel - Growl - Level 4
  (418, 41800, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Buizel - Water Sport - Level 7
  (418, 41800, 346, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Buizel - Quick Attack - Level 11
  (418, 41800, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Buizel - Water Gun - Level 15
  (418, 41800, 55, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Buizel - Pursuit - Level 18
  (418, 41800, 228, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Buizel - Swift - Level 21
  (418, 41800, 129, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Buizel - Aqua Jet - Level 24
  (418, 41800, 453, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buizel - Double Hit - Level 27
  (418, 41800, 458, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Buizel - Whirlpool - Level 31
  (418, 41800, 250, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Buizel - Razor Wind - Level 35
  (418, 41800, 13, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Buizel - Aqua Tail - Level 38
  (418, 41800, 401, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Buizel - Agility - Level 41
  (418, 41800, 97, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Buizel - Hydro Pump - Level 45
  (418, 41800, 56, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Buizel - Toxic - TM06
  (418, 41800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Buizel - Hail - TM07
  (418, 41800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Buizel - Bulk Up - TM08
  (418, 41800, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 17),
  -- Buizel - Hidden Power - TM10
  (418, 41800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Buizel - Ice Beam - TM13
  (418, 41800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Buizel - Blizzard - TM14
  (418, 41800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Buizel - Protect - TM17
  (418, 41800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Buizel - Rain Dance - TM18
  (418, 41800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Buizel - Frustration - TM21
  (418, 41800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Buizel - Return - TM27
  (418, 41800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Buizel - Dig - TM28
  (418, 41800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Buizel - Brick Break - TM31
  (418, 41800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Buizel - Double Team - TM32
  (418, 41800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Buizel - Rock Tomb - TM39
  (418, 41800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Buizel - Facade - TM42
  (418, 41800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Buizel - Rest - TM44
  (418, 41800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Buizel - Attract - TM45
  (418, 41800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Buizel - Round - TM48
  (418, 41800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Buizel - Echoed Voice - TM49
  (418, 41800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 33),
  -- Buizel - Scald - TM55
  (418, 41800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 34),
  -- Buizel - Swagger - TM87
  (418, 41800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Buizel - Sleep Talk - TM88
  (418, 41800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Buizel - Substitute - TM90
  (418, 41800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Buizel - Rock Smash - TM94
  (418, 41800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 38),
  -- Buizel - Power-Up Punch - TM98
  (418, 41800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 39),
  -- Buizel - Confide - TM100
  (418, 41800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Buizel - Surf - HM03
  (418, 41800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 41),
  -- Buizel - Strength - HM04
  (418, 41800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 42),
  -- Buizel - Waterfall - HM05
  (418, 41800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 43),
  -- Buizel - Double Slap - Egg
  (418, 41800, 3, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Buizel - Headbutt - Egg
  (418, 41800, 29, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buizel - Fury Swipes - Egg
  (418, 41800, 154, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buizel - Slash - Egg
  (418, 41800, 163, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buizel - Mud-Slap - Egg
  (418, 41800, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buizel - Fury Cutter - Egg
  (418, 41800, 210, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buizel - Baton Pass - Egg
  (418, 41800, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buizel - Odor Sleuth - Egg
  (418, 41800, 316, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buizel - Me First - Egg
  (418, 41800, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buizel - Aqua Ring - Egg
  (418, 41800, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buizel - Aqua Tail - Egg
  (418, 41800, 401, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buizel - Switcheroo - Egg
  (418, 41800, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buizel - Soak - Egg
  (418, 41800, 487, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buizel - Tail Slap - Egg
  (418, 41800, 541, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Floatzel - Growl - Level 1
  (419, 41900, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floatzel - Sonic Boom - Level 1
  (419, 41900, 49, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floatzel - Quick Attack - Level 1
  (419, 41900, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floatzel - Crunch - Level 1
  (419, 41900, 242, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Floatzel - Water Sport - Level 1
  (419, 41900, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Floatzel - Ice Fang - Level 1
  (419, 41900, 423, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Floatzel - Growl - Level 4
  (419, 41900, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Floatzel - Water Sport - Level 7
  (419, 41900, 346, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Floatzel - Quick Attack - Level 11
  (419, 41900, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Floatzel - Water Gun - Level 15
  (419, 41900, 55, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Floatzel - Pursuit - Level 18
  (419, 41900, 228, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Floatzel - Swift - Level 21
  (419, 41900, 129, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Floatzel - Aqua Jet - Level 24
  (419, 41900, 453, 13, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Floatzel - Double Hit - Level 29
  (419, 41900, 458, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Floatzel - Whirlpool - Level 35
  (419, 41900, 250, 13, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Floatzel - Razor Wind - Level 41
  (419, 41900, 13, 13, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Floatzel - Aqua Tail - Level 46
  (419, 41900, 401, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Floatzel - Agility - Level 51
  (419, 41900, 97, 13, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Floatzel - Hydro Pump - Level 57
  (419, 41900, 56, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Floatzel - Roar - TM05
  (419, 41900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Floatzel - Toxic - TM06
  (419, 41900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Floatzel - Hail - TM07
  (419, 41900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 22),
  -- Floatzel - Bulk Up - TM08
  (419, 41900, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 23),
  -- Floatzel - Hidden Power - TM10
  (419, 41900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Floatzel - Taunt - TM12
  (419, 41900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 25),
  -- Floatzel - Ice Beam - TM13
  (419, 41900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Floatzel - Blizzard - TM14
  (419, 41900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Floatzel - Hyper Beam - TM15
  (419, 41900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Floatzel - Protect - TM17
  (419, 41900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Floatzel - Rain Dance - TM18
  (419, 41900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Floatzel - Frustration - TM21
  (419, 41900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Floatzel - Return - TM27
  (419, 41900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Floatzel - Dig - TM28
  (419, 41900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 33),
  -- Floatzel - Brick Break - TM31
  (419, 41900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 34),
  -- Floatzel - Double Team - TM32
  (419, 41900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Floatzel - Rock Tomb - TM39
  (419, 41900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Floatzel - Torment - TM41
  (419, 41900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 37),
  -- Floatzel - Facade - TM42
  (419, 41900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Floatzel - Rest - TM44
  (419, 41900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Floatzel - Attract - TM45
  (419, 41900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Floatzel - Round - TM48
  (419, 41900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Floatzel - Echoed Voice - TM49
  (419, 41900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Floatzel - Focus Blast - TM52
  (419, 41900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 43),
  -- Floatzel - Scald - TM55
  (419, 41900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 44),
  -- Floatzel - Payback - TM66
  (419, 41900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Floatzel - Giga Impact - TM68
  (419, 41900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Floatzel - Swagger - TM87
  (419, 41900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Floatzel - Sleep Talk - TM88
  (419, 41900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Floatzel - Substitute - TM90
  (419, 41900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Floatzel - Rock Smash - TM94
  (419, 41900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Floatzel - Power-Up Punch - TM98
  (419, 41900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Floatzel - Confide - TM100
  (419, 41900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Floatzel - Surf - HM03
  (419, 41900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 53),
  -- Floatzel - Strength - HM04
  (419, 41900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Floatzel - Waterfall - HM05
  (419, 41900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 55),
  -- Cherubi - Tackle - Level 1
  (420, 42000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherubi - Morning Sun - Level 1
  (420, 42000, 234, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherubi - Growth - Level 7
  (420, 42000, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cherubi - Leech Seed - Level 10
  (420, 42000, 73, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cherubi - Helping Hand - Level 13
  (420, 42000, 270, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cherubi - Magical Leaf - Level 19
  (420, 42000, 345, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cherubi - Sunny Day - Level 22
  (420, 42000, 241, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cherubi - Worry Seed - Level 28
  (420, 42000, 388, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cherubi - Take Down - Level 31
  (420, 42000, 36, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cherubi - Solar Beam - Level 37
  (420, 42000, 76, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cherubi - Lucky Chant - Level 40
  (420, 42000, 381, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cherubi - Petal Blizzard - Level 47
  (420, 42000, 572, 13, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Cherubi - Toxic - TM06
  (420, 42000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Cherubi - Hidden Power - TM10
  (420, 42000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Cherubi - Sunny Day - TM11
  (420, 42000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Cherubi - Protect - TM17
  (420, 42000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Cherubi - Safeguard - TM20
  (420, 42000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 17),
  -- Cherubi - Frustration - TM21
  (420, 42000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Cherubi - Solar Beam - TM22
  (420, 42000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 19),
  -- Cherubi - Return - TM27
  (420, 42000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Cherubi - Double Team - TM32
  (420, 42000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Cherubi - Facade - TM42
  (420, 42000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Cherubi - Rest - TM44
  (420, 42000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Cherubi - Attract - TM45
  (420, 42000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Cherubi - Round - TM48
  (420, 42000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Cherubi - Energy Ball - TM53
  (420, 42000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 26),
  -- Cherubi - Flash - TM70
  (420, 42000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 27),
  -- Cherubi - Swords Dance - TM75
  (420, 42000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 28),
  -- Cherubi - Grass Knot - TM86
  (420, 42000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 29),
  -- Cherubi - Swagger - TM87
  (420, 42000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 30),
  -- Cherubi - Sleep Talk - TM88
  (420, 42000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 31),
  -- Cherubi - Substitute - TM90
  (420, 42000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 32),
  -- Cherubi - Nature Power - TM96
  (420, 42000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 33),
  -- Cherubi - Dazzling Gleam - TM99
  (420, 42000, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 34),
  -- Cherubi - Confide - TM100
  (420, 42000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Cherubi - Razor Leaf - Egg
  (420, 42000, 75, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cherubi - Defense Curl - Egg
  (420, 42000, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherubi - Rollout - Egg
  (420, 42000, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherubi - Sweet Scent - Egg
  (420, 42000, 230, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherubi - Nature Power - Egg
  (420, 42000, 267, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherubi - Weather Ball - Egg
  (420, 42000, 311, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherubi - Aromatherapy - Egg
  (420, 42000, 312, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cherubi - Grass Whistle - Egg
  (420, 42000, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cherubi - Tickle - Egg
  (420, 42000, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cherubi - Healing Wish - Egg
  (420, 42000, 361, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cherubi - Natural Gift - Egg
  (420, 42000, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cherubi - Seed Bomb - Egg
  (420, 42000, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cherubi - Heal Pulse - Egg
  (420, 42000, 505, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cherubi - Flower Shield - Egg
  (420, 42000, 579, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cherrim - Tackle - Level 1
  (421, 42100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherrim - Growth - Level 1
  (421, 42100, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherrim - Morning Sun - Level 1
  (421, 42100, 234, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cherrim - Growth - Level 7
  (421, 42100, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cherrim - Leech Seed - Level 10
  (421, 42100, 73, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cherrim - Helping Hand - Level 13
  (421, 42100, 270, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cherrim - Magical Leaf - Level 19
  (421, 42100, 345, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Cherrim - Sunny Day - Level 22
  (421, 42100, 241, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Cherrim - Petal Dance - Level 25
  (421, 42100, 80, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Cherrim - Worry Seed - Level 30
  (421, 42100, 388, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Cherrim - Take Down - Level 35
  (421, 42100, 36, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Cherrim - Solar Beam - Level 43
  (421, 42100, 76, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Cherrim - Lucky Chant - Level 48
  (421, 42100, 381, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Cherrim - Petal Blizzard - Level 50
  (421, 42100, 572, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Cherrim - Toxic - TM06
  (421, 42100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Cherrim - Hidden Power - TM10
  (421, 42100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Cherrim - Sunny Day - TM11
  (421, 42100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Cherrim - Hyper Beam - TM15
  (421, 42100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Cherrim - Protect - TM17
  (421, 42100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Cherrim - Safeguard - TM20
  (421, 42100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 20),
  -- Cherrim - Frustration - TM21
  (421, 42100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Cherrim - Solar Beam - TM22
  (421, 42100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Cherrim - Return - TM27
  (421, 42100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Cherrim - Double Team - TM32
  (421, 42100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Cherrim - Facade - TM42
  (421, 42100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Cherrim - Rest - TM44
  (421, 42100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Cherrim - Attract - TM45
  (421, 42100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Cherrim - Round - TM48
  (421, 42100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Cherrim - Energy Ball - TM53
  (421, 42100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 29),
  -- Cherrim - Giga Impact - TM68
  (421, 42100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 30),
  -- Cherrim - Flash - TM70
  (421, 42100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Cherrim - Swords Dance - TM75
  (421, 42100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 32),
  -- Cherrim - Grass Knot - TM86
  (421, 42100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 33),
  -- Cherrim - Swagger - TM87
  (421, 42100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Cherrim - Sleep Talk - TM88
  (421, 42100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Cherrim - Substitute - TM90
  (421, 42100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Cherrim - Nature Power - TM96
  (421, 42100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 37),
  -- Cherrim - Dazzling Gleam - TM99
  (421, 42100, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 38),
  -- Cherrim - Confide - TM100
  (421, 42100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Mud Sport - Level 2
  (422, 42200, 300, 13, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 4
  (422, 42200, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellos - Water Pulse - Level 7
  (422, 42200, 352, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Shellos - Mud Bomb - Level 11
  (422, 42200, 426, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Shellos - Hidden Power - Level 16
  (422, 42200, 237, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellos - Rain Dance - Level 22
  (422, 42200, 240, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Shellos - Body Slam - Level 29
  (422, 42200, 34, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shellos - Muddy Water - Level 37
  (422, 42200, 330, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Shellos - Recover - Level 46
  (422, 42200, 105, 13, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Shellos - Toxic - TM06
  (422, 42200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Shellos - Hail - TM07
  (422, 42200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 12),
  -- Shellos - Hidden Power - TM10
  (422, 42200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 13),
  -- Shellos - Ice Beam - TM13
  (422, 42200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 14),
  -- Shellos - Blizzard - TM14
  (422, 42200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 15),
  -- Shellos - Protect - TM17
  (422, 42200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Shellos - Rain Dance - TM18
  (422, 42200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 17),
  -- Shellos - Frustration - TM21
  (422, 42200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Shellos - Return - TM27
  (422, 42200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Shellos - Double Team - TM32
  (422, 42200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 20),
  -- Shellos - Facade - TM42
  (422, 42200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 21),
  -- Shellos - Rest - TM44
  (422, 42200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 22),
  -- Shellos - Attract - TM45
  (422, 42200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 23),
  -- Shellos - Round - TM48
  (422, 42200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 24),
  -- Shellos - Scald - TM55
  (422, 42200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 25),
  -- Shellos - Infestation - TM83
  (422, 42200, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 26),
  -- Shellos - Swagger - TM87
  (422, 42200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 27),
  -- Shellos - Sleep Talk - TM88
  (422, 42200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 28),
  -- Shellos - Substitute - TM90
  (422, 42200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 29),
  -- Shellos - Confide - TM100
  (422, 42200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 30),
  -- Shellos - Surf - HM03
  (422, 42200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 31),
  -- Shellos - Mist - Egg
  (422, 42200, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Shellos - Counter - Egg
  (422, 42200, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Shellos - Fissure - Egg
  (422, 42200, 90, 13, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Shellos - Sludge - Egg
  (422, 42200, 124, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shellos - Amnesia - Egg
  (422, 42200, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shellos - Acid Armor - Egg
  (422, 42200, 151, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellos - Curse - Egg
  (422, 42200, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellos - Mirror Coat - Egg
  (422, 42200, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellos - Stockpile - Egg
  (422, 42200, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellos - Spit Up - Egg
  (422, 42200, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellos - Swallow - Egg
  (422, 42200, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellos - Memento - Egg
  (422, 42200, 262, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellos - Yawn - Egg
  (422, 42200, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellos - Brine - Egg
  (422, 42200, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellos - Trump Card - Egg
  (422, 42200, 376, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellos - Clear Smog - Egg
  (422, 42200, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gastrodon - Harden - Level 1
  (423, 42300, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastrodon - Mud Sport - Level 1
  (423, 42300, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastrodon - Water Pulse - Level 1
  (423, 42300, 352, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gastrodon - Mud Sport - Level 2
  (423, 42300, 300, 13, NULL, 1, 2, NULL, NULL, NULL, 5),
  -- Gastrodon - Harden - Level 4
  (423, 42300, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gastrodon - Water Pulse - Level 7
  (423, 42300, 352, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Gastrodon - Mud Bomb - Level 11
  (423, 42300, 426, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gastrodon - Hidden Power - Level 16
  (423, 42300, 237, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 22
  (423, 42300, 240, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gastrodon - Body Slam - Level 29
  (423, 42300, 34, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gastrodon - Muddy Water - Level 41
  (423, 42300, 330, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Gastrodon - Recover - Level 54
  (423, 42300, 105, 13, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Gastrodon - Toxic - TM06
  (423, 42300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Gastrodon - Hail - TM07
  (423, 42300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 15),
  -- Gastrodon - Hidden Power - TM10
  (423, 42300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Gastrodon - Ice Beam - TM13
  (423, 42300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Gastrodon - Blizzard - TM14
  (423, 42300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Gastrodon - Hyper Beam - TM15
  (423, 42300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 19),
  -- Gastrodon - Protect - TM17
  (423, 42300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Gastrodon - Rain Dance - TM18
  (423, 42300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Gastrodon - Frustration - TM21
  (423, 42300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Gastrodon - Earthquake - TM26
  (423, 42300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 23),
  -- Gastrodon - Return - TM27
  (423, 42300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Gastrodon - Dig - TM28
  (423, 42300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Gastrodon - Double Team - TM32
  (423, 42300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Gastrodon - Sludge Wave - TM34
  (423, 42300, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 27),
  -- Gastrodon - Sludge Bomb - TM36
  (423, 42300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 28),
  -- Gastrodon - Sandstorm - TM37
  (423, 42300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Gastrodon - Rock Tomb - TM39
  (423, 42300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Gastrodon - Facade - TM42
  (423, 42300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Gastrodon - Rest - TM44
  (423, 42300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Gastrodon - Attract - TM45
  (423, 42300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Gastrodon - Round - TM48
  (423, 42300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Gastrodon - Scald - TM55
  (423, 42300, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Gastrodon - Giga Impact - TM68
  (423, 42300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Gastrodon - Flash - TM70
  (423, 42300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Gastrodon - Stone Edge - TM71
  (423, 42300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 38),
  -- Gastrodon - Bulldoze - TM78
  (423, 42300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 39),
  -- Gastrodon - Rock Slide - TM80
  (423, 42300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Gastrodon - Infestation - TM83
  (423, 42300, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 41),
  -- Gastrodon - Swagger - TM87
  (423, 42300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Gastrodon - Sleep Talk - TM88
  (423, 42300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Gastrodon - Substitute - TM90
  (423, 42300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Gastrodon - Rock Smash - TM94
  (423, 42300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Gastrodon - Confide - TM100
  (423, 42300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Gastrodon - Surf - HM03
  (423, 42300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Gastrodon - Strength - HM04
  (423, 42300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Gastrodon - Waterfall - HM05
  (423, 42300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 49),
  -- Ambipom - Scratch - Level 1
  (424, 42400, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ambipom - Sand Attack - Level 1
  (424, 42400, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ambipom - Tail Whip - Level 1
  (424, 42400, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ambipom - Astonish - Level 1
  (424, 42400, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ambipom - Sand Attack - Level 4
  (424, 42400, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Ambipom - Astonish - Level 8
  (424, 42400, 310, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Ambipom - Baton Pass - Level 11
  (424, 42400, 226, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Ambipom - Tickle - Level 15
  (424, 42400, 321, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ambipom - Fury Swipes - Level 18
  (424, 42400, 154, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Ambipom - Swift - Level 22
  (424, 42400, 129, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Ambipom - Screech - Level 25
  (424, 42400, 103, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Ambipom - Agility - Level 29
  (424, 42400, 97, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Ambipom - Double Hit - Level 32
  (424, 42400, 458, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Ambipom - Fling - Level 36
  (424, 42400, 374, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ambipom - Nasty Plot - Level 39
  (424, 42400, 417, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ambipom - Last Resort - Level 43
  (424, 42400, 387, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Ambipom - Hone Claws - TM01
  (424, 42400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Ambipom - Toxic - TM06
  (424, 42400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Ambipom - Hidden Power - TM10
  (424, 42400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Ambipom - Sunny Day - TM11
  (424, 42400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Ambipom - Taunt - TM12
  (424, 42400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Ambipom - Hyper Beam - TM15
  (424, 42400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Ambipom - Protect - TM17
  (424, 42400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Ambipom - Rain Dance - TM18
  (424, 42400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Ambipom - Frustration - TM21
  (424, 42400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Ambipom - Solar Beam - TM22
  (424, 42400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Ambipom - Thunderbolt - TM24
  (424, 42400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Ambipom - Thunder - TM25
  (424, 42400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Ambipom - Return - TM27
  (424, 42400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Ambipom - Dig - TM28
  (424, 42400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Ambipom - Shadow Ball - TM30
  (424, 42400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Ambipom - Brick Break - TM31
  (424, 42400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Ambipom - Double Team - TM32
  (424, 42400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Ambipom - Aerial Ace - TM40
  (424, 42400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Ambipom - Facade - TM42
  (424, 42400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Ambipom - Rest - TM44
  (424, 42400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Ambipom - Attract - TM45
  (424, 42400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Ambipom - Thief - TM46
  (424, 42400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Ambipom - Low Sweep - TM47
  (424, 42400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 39),
  -- Ambipom - Round - TM48
  (424, 42400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Ambipom - Fling - TM56
  (424, 42400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Ambipom - Acrobatics - TM62
  (424, 42400, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 42),
  -- Ambipom - Shadow Claw - TM65
  (424, 42400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 43),
  -- Ambipom - Payback - TM66
  (424, 42400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 44),
  -- Ambipom - Retaliate - TM67
  (424, 42400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 45),
  -- Ambipom - Giga Impact - TM68
  (424, 42400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Ambipom - Thunder Wave - TM73
  (424, 42400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 47),
  -- Ambipom - Dream Eater - TM85
  (424, 42400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Ambipom - Grass Knot - TM86
  (424, 42400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Ambipom - Swagger - TM87
  (424, 42400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Ambipom - Sleep Talk - TM88
  (424, 42400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Ambipom - U-turn - TM89
  (424, 42400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 52),
  -- Ambipom - Substitute - TM90
  (424, 42400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Ambipom - Rock Smash - TM94
  (424, 42400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Ambipom - Power-Up Punch - TM98
  (424, 42400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Ambipom - Confide - TM100
  (424, 42400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Ambipom - Cut - HM01
  (424, 42400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Ambipom - Strength - HM04
  (424, 42400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Drifloon - Minimize - Level 1
  (425, 42500, 107, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Constrict - Level 1
  (425, 42500, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifloon - Astonish - Level 4
  (425, 42500, 310, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drifloon - Gust - Level 8
  (425, 42500, 16, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drifloon - Focus Energy - Level 13
  (425, 42500, 116, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drifloon - Payback - Level 16
  (425, 42500, 371, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drifloon - Ominous Wind - Level 20
  (425, 42500, 466, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drifloon - Stockpile - Level 25
  (425, 42500, 254, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drifloon - Hex - Level 27
  (425, 42500, 506, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Drifloon - Spit Up - Level 32
  (425, 42500, 255, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Drifloon - Swallow - Level 32
  (425, 42500, 256, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Drifloon - Shadow Ball - Level 36
  (425, 42500, 247, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Drifloon - Amnesia - Level 40
  (425, 42500, 133, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Drifloon - Baton Pass - Level 44
  (425, 42500, 226, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Drifloon - Explosion - Level 50
  (425, 42500, 153, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Drifloon - Calm Mind - TM04
  (425, 42500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Drifloon - Toxic - TM06
  (425, 42500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Drifloon - Hidden Power - TM10
  (425, 42500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Drifloon - Sunny Day - TM11
  (425, 42500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Drifloon - Protect - TM17
  (425, 42500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Drifloon - Rain Dance - TM18
  (425, 42500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Drifloon - Frustration - TM21
  (425, 42500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Drifloon - Thunderbolt - TM24
  (425, 42500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Drifloon - Thunder - TM25
  (425, 42500, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 24),
  -- Drifloon - Return - TM27
  (425, 42500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Drifloon - Psychic - TM29
  (425, 42500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 26),
  -- Drifloon - Shadow Ball - TM30
  (425, 42500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Drifloon - Double Team - TM32
  (425, 42500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Drifloon - Facade - TM42
  (425, 42500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Drifloon - Rest - TM44
  (425, 42500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Drifloon - Attract - TM45
  (425, 42500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Drifloon - Thief - TM46
  (425, 42500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Drifloon - Round - TM48
  (425, 42500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Drifloon - Charge Beam - TM57
  (425, 42500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 34),
  -- Drifloon - Will-O-Wisp - TM61
  (425, 42500, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 35),
  -- Drifloon - Acrobatics - TM62
  (425, 42500, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 36),
  -- Drifloon - Embargo - TM63
  (425, 42500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 37),
  -- Drifloon - Explosion - TM64
  (425, 42500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 38),
  -- Drifloon - Payback - TM66
  (425, 42500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Drifloon - Flash - TM70
  (425, 42500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Drifloon - Thunder Wave - TM73
  (425, 42500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 41),
  -- Drifloon - Gyro Ball - TM74
  (425, 42500, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 42),
  -- Drifloon - Psych Up - TM77
  (425, 42500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Drifloon - Dream Eater - TM85
  (425, 42500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 44),
  -- Drifloon - Swagger - TM87
  (425, 42500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Drifloon - Sleep Talk - TM88
  (425, 42500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Drifloon - Substitute - TM90
  (425, 42500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Drifloon - Confide - TM100
  (425, 42500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Drifloon - Cut - HM01
  (425, 42500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 49),
  -- Drifloon - Body Slam - Egg
  (425, 42500, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drifloon - Disable - Egg
  (425, 42500, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Drifloon - Hypnosis - Egg
  (425, 42500, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drifloon - Haze - Egg
  (425, 42500, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifloon - Destiny Bond - Egg
  (425, 42500, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Memento - Egg
  (425, 42500, 262, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifloon - Weather Ball - Egg
  (425, 42500, 311, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifloon - Tailwind - Egg
  (425, 42500, 366, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drifloon - Defog - Egg
  (425, 42500, 432, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drifloon - Clear Smog - Egg
  (425, 42500, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drifblim - Gust - Level 1
  (426, 42600, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Minimize - Level 1
  (426, 42600, 107, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifblim - Constrict - Level 1
  (426, 42600, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drifblim - Astonish - Level 1
  (426, 42600, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drifblim - Phantom Force - Level 1
  (426, 42600, 566, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drifblim - Astonish - Level 4
  (426, 42600, 310, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Drifblim - Gust - Level 8
  (426, 42600, 16, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Drifblim - Focus Energy - Level 13
  (426, 42600, 116, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Drifblim - Payback - Level 16
  (426, 42600, 371, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Drifblim - Ominous Wind - Level 20
  (426, 42600, 466, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Drifblim - Stockpile - Level 25
  (426, 42600, 254, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Drifblim - Hex - Level 27
  (426, 42600, 506, 13, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Drifblim - Spit Up - Level 34
  (426, 42600, 255, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Drifblim - Swallow - Level 34
  (426, 42600, 256, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Drifblim - Shadow Ball - Level 40
  (426, 42600, 247, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Drifblim - Amnesia - Level 46
  (426, 42600, 133, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Drifblim - Baton Pass - Level 52
  (426, 42600, 226, 13, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Drifblim - Explosion - Level 60
  (426, 42600, 153, 13, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Drifblim - Phantom Force - Level 65
  (426, 42600, 566, 13, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Drifblim - Calm Mind - TM04
  (426, 42600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Drifblim - Toxic - TM06
  (426, 42600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Drifblim - Hidden Power - TM10
  (426, 42600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Drifblim - Sunny Day - TM11
  (426, 42600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Drifblim - Hyper Beam - TM15
  (426, 42600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Drifblim - Protect - TM17
  (426, 42600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Drifblim - Rain Dance - TM18
  (426, 42600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Drifblim - Frustration - TM21
  (426, 42600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Drifblim - Thunderbolt - TM24
  (426, 42600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Drifblim - Thunder - TM25
  (426, 42600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Drifblim - Return - TM27
  (426, 42600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Drifblim - Psychic - TM29
  (426, 42600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Drifblim - Shadow Ball - TM30
  (426, 42600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Drifblim - Double Team - TM32
  (426, 42600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Drifblim - Facade - TM42
  (426, 42600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Drifblim - Rest - TM44
  (426, 42600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Drifblim - Attract - TM45
  (426, 42600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Drifblim - Thief - TM46
  (426, 42600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Drifblim - Round - TM48
  (426, 42600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Drifblim - Charge Beam - TM57
  (426, 42600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Drifblim - Will-O-Wisp - TM61
  (426, 42600, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 40),
  -- Drifblim - Acrobatics - TM62
  (426, 42600, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 41),
  -- Drifblim - Embargo - TM63
  (426, 42600, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 42),
  -- Drifblim - Explosion - TM64
  (426, 42600, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 43),
  -- Drifblim - Payback - TM66
  (426, 42600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 44),
  -- Drifblim - Giga Impact - TM68
  (426, 42600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Drifblim - Flash - TM70
  (426, 42600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 46),
  -- Drifblim - Thunder Wave - TM73
  (426, 42600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 47),
  -- Drifblim - Gyro Ball - TM74
  (426, 42600, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 48),
  -- Drifblim - Psych Up - TM77
  (426, 42600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 49),
  -- Drifblim - Dream Eater - TM85
  (426, 42600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 50),
  -- Drifblim - Swagger - TM87
  (426, 42600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Drifblim - Sleep Talk - TM88
  (426, 42600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Drifblim - Substitute - TM90
  (426, 42600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Drifblim - Confide - TM100
  (426, 42600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Drifblim - Cut - HM01
  (426, 42600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 55),
  -- Drifblim - Fly - HM02
  (426, 42600, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 56),
  -- Buneary - Pound - Level 1
  (427, 42700, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Defense Curl - Level 1
  (427, 42700, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buneary - Splash - Level 1
  (427, 42700, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Buneary - Foresight - Level 1
  (427, 42700, 193, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Buneary - Endure - Level 6
  (427, 42700, 203, 13, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Buneary - Baby-Doll Eyes - Level 10
  (427, 42700, 608, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Buneary - Frustration - Level 13
  (427, 42700, 218, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Buneary - Jump Kick - Level 23
  (427, 42700, 26, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Buneary - Baton Pass - Level 26
  (427, 42700, 226, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Buneary - Agility - Level 33
  (427, 42700, 97, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Buneary - Dizzy Punch - Level 36
  (427, 42700, 146, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Buneary - After You - Level 43
  (427, 42700, 495, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Buneary - Charm - Level 46
  (427, 42700, 204, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Buneary - Entrainment - Level 50
  (427, 42700, 494, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Buneary - Bounce - Level 56
  (427, 42700, 340, 13, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Buneary - Healing Wish - Level 63
  (427, 42700, 361, 13, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Buneary - Toxic - TM06
  (427, 42700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Buneary - Hidden Power - TM10
  (427, 42700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Buneary - Sunny Day - TM11
  (427, 42700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Buneary - Ice Beam - TM13
  (427, 42700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Buneary - Protect - TM17
  (427, 42700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Buneary - Rain Dance - TM18
  (427, 42700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Buneary - Frustration - TM21
  (427, 42700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Buneary - Solar Beam - TM22
  (427, 42700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Buneary - Thunderbolt - TM24
  (427, 42700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Buneary - Return - TM27
  (427, 42700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Buneary - Dig - TM28
  (427, 42700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Buneary - Shadow Ball - TM30
  (427, 42700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Buneary - Double Team - TM32
  (427, 42700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Buneary - Facade - TM42
  (427, 42700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Buneary - Rest - TM44
  (427, 42700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Buneary - Attract - TM45
  (427, 42700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Buneary - Round - TM48
  (427, 42700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Buneary - Fling - TM56
  (427, 42700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 35),
  -- Buneary - Charge Beam - TM57
  (427, 42700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 36),
  -- Buneary - Retaliate - TM67
  (427, 42700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 37),
  -- Buneary - Thunder Wave - TM73
  (427, 42700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Buneary - Grass Knot - TM86
  (427, 42700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Buneary - Swagger - TM87
  (427, 42700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Buneary - Sleep Talk - TM88
  (427, 42700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Buneary - Substitute - TM90
  (427, 42700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Buneary - Rock Smash - TM94
  (427, 42700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Buneary - Power-Up Punch - TM98
  (427, 42700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 44),
  -- Buneary - Confide - TM100
  (427, 42700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Buneary - Cut - HM01
  (427, 42700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Buneary - Fire Punch - Egg
  (427, 42700, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buneary - Ice Punch - Egg
  (427, 42700, 8, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buneary - Thunder Punch - Egg
  (427, 42700, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buneary - Low Kick - Egg
  (427, 42700, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buneary - Flail - Egg
  (427, 42700, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buneary - Sweet Kiss - Egg
  (427, 42700, 186, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buneary - Encore - Egg
  (427, 42700, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buneary - Fake Out - Egg
  (427, 42700, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buneary - Focus Punch - Egg
  (427, 42700, 264, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buneary - Teeter Dance - Egg
  (427, 42700, 298, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buneary - Mud Sport - Egg
  (427, 42700, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Buneary - Fake Tears - Egg
  (427, 42700, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Buneary - Cosmic Power - Egg
  (427, 42700, 322, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Buneary - Sky Uppercut - Egg
  (427, 42700, 327, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Buneary - Copycat - Egg
  (427, 42700, 383, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Buneary - Switcheroo - Egg
  (427, 42700, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Buneary - Double Hit - Egg
  (427, 42700, 458, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Buneary - Circle Throw - Egg
  (427, 42700, 509, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lopunny - Pound - Level 1
  (428, 42800, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Defense Curl - Level 1
  (428, 42800, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Splash - Level 1
  (428, 42800, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lopunny - Foresight - Level 1
  (428, 42800, 193, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lopunny - Mirror Coat - Level 1
  (428, 42800, 243, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lopunny - Magic Coat - Level 1
  (428, 42800, 277, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lopunny - Bounce - Level 1
  (428, 42800, 340, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lopunny - Healing Wish - Level 1
  (428, 42800, 361, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lopunny - Rototiller - Level 1
  (428, 42800, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lopunny - Endure - Level 6
  (428, 42800, 203, 13, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Lopunny - Return - Level 13
  (428, 42800, 216, 13, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 13, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Lopunny - Jump Kick - Level 23
  (428, 42800, 26, 13, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Lopunny - Baton Pass - Level 26
  (428, 42800, 226, 13, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Lopunny - Agility - Level 33
  (428, 42800, 97, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Lopunny - Dizzy Punch - Level 36
  (428, 42800, 146, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Lopunny - After You - Level 43
  (428, 42800, 495, 13, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Lopunny - Charm - Level 46
  (428, 42800, 204, 13, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Lopunny - Entrainment - Level 53
  (428, 42800, 494, 13, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Lopunny - Bounce - Level 56
  (428, 42800, 340, 13, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Lopunny - Healing Wish - Level 63
  (428, 42800, 361, 13, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Lopunny - Toxic - TM06
  (428, 42800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Lopunny - Hidden Power - TM10
  (428, 42800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Lopunny - Sunny Day - TM11
  (428, 42800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Lopunny - Ice Beam - TM13
  (428, 42800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Lopunny - Blizzard - TM14
  (428, 42800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Lopunny - Hyper Beam - TM15
  (428, 42800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Lopunny - Protect - TM17
  (428, 42800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Lopunny - Rain Dance - TM18
  (428, 42800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Lopunny - Frustration - TM21
  (428, 42800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Lopunny - Solar Beam - TM22
  (428, 42800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 31),
  -- Lopunny - Thunderbolt - TM24
  (428, 42800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 32),
  -- Lopunny - Thunder - TM25
  (428, 42800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 33),
  -- Lopunny - Return - TM27
  (428, 42800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Lopunny - Dig - TM28
  (428, 42800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 35),
  -- Lopunny - Shadow Ball - TM30
  (428, 42800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Lopunny - Double Team - TM32
  (428, 42800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Lopunny - Facade - TM42
  (428, 42800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Lopunny - Rest - TM44
  (428, 42800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Lopunny - Attract - TM45
  (428, 42800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Lopunny - Low Sweep - TM47
  (428, 42800, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 41),
  -- Lopunny - Round - TM48
  (428, 42800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Lopunny - Focus Blast - TM52
  (428, 42800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 43),
  -- Lopunny - Fling - TM56
  (428, 42800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Lopunny - Charge Beam - TM57
  (428, 42800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 45),
  -- Lopunny - Retaliate - TM67
  (428, 42800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Lopunny - Giga Impact - TM68
  (428, 42800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Lopunny - Thunder Wave - TM73
  (428, 42800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 48),
  -- Lopunny - Grass Knot - TM86
  (428, 42800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Lopunny - Swagger - TM87
  (428, 42800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Lopunny - Sleep Talk - TM88
  (428, 42800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Lopunny - Substitute - TM90
  (428, 42800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Lopunny - Rock Smash - TM94
  (428, 42800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Lopunny - Power-Up Punch - TM98
  (428, 42800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Lopunny - Confide - TM100
  (428, 42800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Lopunny - Cut - HM01
  (428, 42800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 56),
  -- Lopunny - Strength - HM04
  (428, 42800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Mismagius - Growl - Level 1
  (429, 42900, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mismagius - Psywave - Level 1
  (429, 42900, 149, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mismagius - Spite - Level 1
  (429, 42900, 180, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mismagius - Astonish - Level 1
  (429, 42900, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mismagius - Magical Leaf - Level 1
  (429, 42900, 345, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mismagius - Lucky Chant - Level 1
  (429, 42900, 381, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mismagius - Power Gem - Level 1
  (429, 42900, 408, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mismagius - Phantom Force - Level 1
  (429, 42900, 566, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mismagius - Calm Mind - TM04
  (429, 42900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 9),
  -- Mismagius - Toxic - TM06
  (429, 42900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 10),
  -- Mismagius - Hidden Power - TM10
  (429, 42900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 11),
  -- Mismagius - Sunny Day - TM11
  (429, 42900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 12),
  -- Mismagius - Taunt - TM12
  (429, 42900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 13),
  -- Mismagius - Hyper Beam - TM15
  (429, 42900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 14),
  -- Mismagius - Protect - TM17
  (429, 42900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 15),
  -- Mismagius - Rain Dance - TM18
  (429, 42900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 16),
  -- Mismagius - Frustration - TM21
  (429, 42900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Mismagius - Thunderbolt - TM24
  (429, 42900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 18),
  -- Mismagius - Thunder - TM25
  (429, 42900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 19),
  -- Mismagius - Return - TM27
  (429, 42900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Mismagius - Psychic - TM29
  (429, 42900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 21),
  -- Mismagius - Shadow Ball - TM30
  (429, 42900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 22),
  -- Mismagius - Double Team - TM32
  (429, 42900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Mismagius - Aerial Ace - TM40
  (429, 42900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 24),
  -- Mismagius - Torment - TM41
  (429, 42900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 25),
  -- Mismagius - Facade - TM42
  (429, 42900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Mismagius - Rest - TM44
  (429, 42900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Mismagius - Attract - TM45
  (429, 42900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Mismagius - Thief - TM46
  (429, 42900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Mismagius - Round - TM48
  (429, 42900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Mismagius - Echoed Voice - TM49
  (429, 42900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Mismagius - Energy Ball - TM53
  (429, 42900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Mismagius - Charge Beam - TM57
  (429, 42900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 33),
  -- Mismagius - Will-O-Wisp - TM61
  (429, 42900, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 34),
  -- Mismagius - Embargo - TM63
  (429, 42900, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 35),
  -- Mismagius - Payback - TM66
  (429, 42900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 36),
  -- Mismagius - Giga Impact - TM68
  (429, 42900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Mismagius - Flash - TM70
  (429, 42900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Mismagius - Thunder Wave - TM73
  (429, 42900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 39),
  -- Mismagius - Psych Up - TM77
  (429, 42900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Mismagius - Dream Eater - TM85
  (429, 42900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 41),
  -- Mismagius - Swagger - TM87
  (429, 42900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Mismagius - Sleep Talk - TM88
  (429, 42900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Mismagius - Substitute - TM90
  (429, 42900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Mismagius - Trick Room - TM92
  (429, 42900, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 45),
  -- Mismagius - Dark Pulse - TM97
  (429, 42900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 46),
  -- Mismagius - Dazzling Gleam - TM99
  (429, 42900, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 47),
  -- Mismagius - Confide - TM100
  (429, 42900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Honchkrow - Wing Attack - Level 1
  (430, 43000, 17, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honchkrow - Haze - Level 1
  (430, 43000, 114, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honchkrow - Pursuit - Level 1
  (430, 43000, 228, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Honchkrow - Astonish - Level 1
  (430, 43000, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Honchkrow - Sucker Punch - Level 1
  (430, 43000, 389, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Honchkrow - Night Slash - Level 1
  (430, 43000, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Honchkrow - Swagger - Level 25
  (430, 43000, 207, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Honchkrow - Nasty Plot - Level 35
  (430, 43000, 417, 13, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Honchkrow - Foul Play - Level 45
  (430, 43000, 492, 13, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Honchkrow - Night Slash - Level 55
  (430, 43000, 400, 13, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Honchkrow - Quash - Level 65
  (430, 43000, 511, 13, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Honchkrow - Dark Pulse - Level 75
  (430, 43000, 399, 13, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Honchkrow - Calm Mind - TM04
  (430, 43000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 13),
  -- Honchkrow - Toxic - TM06
  (430, 43000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Honchkrow - Hidden Power - TM10
  (430, 43000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Honchkrow - Sunny Day - TM11
  (430, 43000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Honchkrow - Taunt - TM12
  (430, 43000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 17),
  -- Honchkrow - Hyper Beam - TM15
  (430, 43000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Honchkrow - Protect - TM17
  (430, 43000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Honchkrow - Rain Dance - TM18
  (430, 43000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Honchkrow - Roost - TM19
  (430, 43000, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 21),
  -- Honchkrow - Frustration - TM21
  (430, 43000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Honchkrow - Return - TM27
  (430, 43000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Honchkrow - Psychic - TM29
  (430, 43000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Honchkrow - Shadow Ball - TM30
  (430, 43000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Honchkrow - Double Team - TM32
  (430, 43000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Honchkrow - Aerial Ace - TM40
  (430, 43000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Honchkrow - Torment - TM41
  (430, 43000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 28),
  -- Honchkrow - Facade - TM42
  (430, 43000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Honchkrow - Rest - TM44
  (430, 43000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Honchkrow - Attract - TM45
  (430, 43000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Honchkrow - Thief - TM46
  (430, 43000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Honchkrow - Round - TM48
  (430, 43000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Honchkrow - Steel Wing - TM51
  (430, 43000, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 34),
  -- Honchkrow - Incinerate - TM59
  (430, 43000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 35),
  -- Honchkrow - Quash - TM60
  (430, 43000, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 36),
  -- Honchkrow - Embargo - TM63
  (430, 43000, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 37),
  -- Honchkrow - Payback - TM66
  (430, 43000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 38),
  -- Honchkrow - Retaliate - TM67
  (430, 43000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Honchkrow - Giga Impact - TM68
  (430, 43000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Honchkrow - Thunder Wave - TM73
  (430, 43000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 41),
  -- Honchkrow - Psych Up - TM77
  (430, 43000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 42),
  -- Honchkrow - Dream Eater - TM85
  (430, 43000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 43),
  -- Honchkrow - Swagger - TM87
  (430, 43000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Honchkrow - Sleep Talk - TM88
  (430, 43000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Honchkrow - Substitute - TM90
  (430, 43000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Honchkrow - Snarl - TM95
  (430, 43000, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 47),
  -- Honchkrow - Dark Pulse - TM97
  (430, 43000, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Honchkrow - Confide - TM100
  (430, 43000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Honchkrow - Fly - HM02
  (430, 43000, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 50),
  -- Glameow - Fake Out - Level 1
  (431, 43100, 252, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glameow - Scratch - Level 5
  (431, 43100, 10, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Glameow - Growl - Level 8
  (431, 43100, 45, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Glameow - Hypnosis - Level 13
  (431, 43100, 95, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Glameow - Feint Attack - Level 17
  (431, 43100, 185, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Glameow - Fury Swipes - Level 20
  (431, 43100, 154, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Glameow - Charm - Level 25
  (431, 43100, 204, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glameow - Assist - Level 29
  (431, 43100, 274, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Glameow - Captivate - Level 32
  (431, 43100, 445, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Glameow - Slash - Level 37
  (431, 43100, 163, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Glameow - Sucker Punch - Level 41
  (431, 43100, 389, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Glameow - Attract - Level 44
  (431, 43100, 213, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Glameow - Hone Claws - Level 48
  (431, 43100, 468, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Glameow - Play Rough - Level 50
  (431, 43100, 583, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Glameow - Hone Claws - TM01
  (431, 43100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 15),
  -- Glameow - Toxic - TM06
  (431, 43100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Glameow - Hidden Power - TM10
  (431, 43100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Glameow - Sunny Day - TM11
  (431, 43100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Glameow - Taunt - TM12
  (431, 43100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Glameow - Protect - TM17
  (431, 43100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Glameow - Rain Dance - TM18
  (431, 43100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Glameow - Frustration - TM21
  (431, 43100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Glameow - Thunderbolt - TM24
  (431, 43100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Glameow - Thunder - TM25
  (431, 43100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 24),
  -- Glameow - Return - TM27
  (431, 43100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Glameow - Dig - TM28
  (431, 43100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Glameow - Shadow Ball - TM30
  (431, 43100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Glameow - Double Team - TM32
  (431, 43100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Glameow - Aerial Ace - TM40
  (431, 43100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Glameow - Torment - TM41
  (431, 43100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Glameow - Facade - TM42
  (431, 43100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Glameow - Rest - TM44
  (431, 43100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Glameow - Attract - TM45
  (431, 43100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Glameow - Thief - TM46
  (431, 43100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Glameow - Round - TM48
  (431, 43100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Glameow - Echoed Voice - TM49
  (431, 43100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Glameow - Shadow Claw - TM65
  (431, 43100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 37),
  -- Glameow - Payback - TM66
  (431, 43100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 38),
  -- Glameow - Retaliate - TM67
  (431, 43100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Glameow - Flash - TM70
  (431, 43100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Glameow - Psych Up - TM77
  (431, 43100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Glameow - Dream Eater - TM85
  (431, 43100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 42),
  -- Glameow - Swagger - TM87
  (431, 43100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Glameow - Sleep Talk - TM88
  (431, 43100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Glameow - U-turn - TM89
  (431, 43100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 45),
  -- Glameow - Substitute - TM90
  (431, 43100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Glameow - Confide - TM100
  (431, 43100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Glameow - Cut - HM01
  (431, 43100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 48),
  -- Glameow - Sand Attack - Egg
  (431, 43100, 28, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Glameow - Tail Whip - Egg
  (431, 43100, 39, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glameow - Bite - Egg
  (431, 43100, 44, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glameow - Quick Attack - Egg
  (431, 43100, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glameow - Flail - Egg
  (431, 43100, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glameow - Snatch - Egg
  (431, 43100, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glameow - Fake Tears - Egg
  (431, 43100, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Glameow - Wake-Up Slap - Egg
  (431, 43100, 358, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Glameow - Assurance - Egg
  (431, 43100, 372, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Glameow - Last Resort - Egg
  (431, 43100, 387, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Purugly - Scratch - Level 1
  (432, 43200, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purugly - Growl - Level 1
  (432, 43200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Purugly - Fake Out - Level 1
  (432, 43200, 252, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Purugly - Scratch - Level 5
  (432, 43200, 10, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Purugly - Growl - Level 8
  (432, 43200, 45, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Purugly - Hypnosis - Level 13
  (432, 43200, 95, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Purugly - Feint Attack - Level 17
  (432, 43200, 185, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Purugly - Fury Swipes - Level 20
  (432, 43200, 154, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Purugly - Charm - Level 25
  (432, 43200, 204, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Purugly - Assist - Level 29
  (432, 43200, 274, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Purugly - Captivate - Level 32
  (432, 43200, 445, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Purugly - Slash - Level 37
  (432, 43200, 163, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Purugly - Swagger - Level 38
  (432, 43200, 207, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Purugly - Body Slam - Level 45
  (432, 43200, 34, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Purugly - Attract - Level 52
  (432, 43200, 213, 13, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Purugly - Hone Claws - Level 60
  (432, 43200, 468, 13, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Purugly - Hone Claws - TM01
  (432, 43200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Purugly - Roar - TM05
  (432, 43200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 18),
  -- Purugly - Toxic - TM06
  (432, 43200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Purugly - Hidden Power - TM10
  (432, 43200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Purugly - Sunny Day - TM11
  (432, 43200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Purugly - Taunt - TM12
  (432, 43200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Purugly - Hyper Beam - TM15
  (432, 43200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Purugly - Protect - TM17
  (432, 43200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Purugly - Rain Dance - TM18
  (432, 43200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Purugly - Frustration - TM21
  (432, 43200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Purugly - Thunderbolt - TM24
  (432, 43200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Purugly - Thunder - TM25
  (432, 43200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Purugly - Return - TM27
  (432, 43200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Purugly - Dig - TM28
  (432, 43200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Purugly - Shadow Ball - TM30
  (432, 43200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Purugly - Double Team - TM32
  (432, 43200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Purugly - Aerial Ace - TM40
  (432, 43200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Purugly - Torment - TM41
  (432, 43200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Purugly - Facade - TM42
  (432, 43200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Purugly - Rest - TM44
  (432, 43200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Purugly - Attract - TM45
  (432, 43200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Purugly - Thief - TM46
  (432, 43200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Purugly - Round - TM48
  (432, 43200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Purugly - Echoed Voice - TM49
  (432, 43200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 40),
  -- Purugly - Shadow Claw - TM65
  (432, 43200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 41),
  -- Purugly - Payback - TM66
  (432, 43200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Purugly - Retaliate - TM67
  (432, 43200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 43),
  -- Purugly - Giga Impact - TM68
  (432, 43200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Purugly - Flash - TM70
  (432, 43200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Purugly - Psych Up - TM77
  (432, 43200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Purugly - Bulldoze - TM78
  (432, 43200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Purugly - Dream Eater - TM85
  (432, 43200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Purugly - Swagger - TM87
  (432, 43200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Purugly - Sleep Talk - TM88
  (432, 43200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Purugly - U-turn - TM89
  (432, 43200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 51),
  -- Purugly - Substitute - TM90
  (432, 43200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Purugly - Confide - TM100
  (432, 43200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Purugly - Cut - HM01
  (432, 43200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 54),
  -- Chingling - Wrap - Level 1
  (433, 43300, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 6
  (433, 43300, 45, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chingling - Astonish - Level 9
  (433, 43300, 310, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chingling - Confusion - Level 14
  (433, 43300, 93, 13, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chingling - Uproar - Level 17
  (433, 43300, 253, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chingling - Last Resort - Level 22
  (433, 43300, 387, 13, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chingling - Entrainment - Level 25
  (433, 43300, 494, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Chingling - Psyshock - TM03
  (433, 43300, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 8),
  -- Chingling - Calm Mind - TM04
  (433, 43300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 9),
  -- Chingling - Toxic - TM06
  (433, 43300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 10),
  -- Chingling - Hidden Power - TM10
  (433, 43300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 11),
  -- Chingling - Sunny Day - TM11
  (433, 43300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 12),
  -- Chingling - Taunt - TM12
  (433, 43300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 13),
  -- Chingling - Light Screen - TM16
  (433, 43300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 14),
  -- Chingling - Protect - TM17
  (433, 43300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 15),
  -- Chingling - Rain Dance - TM18
  (433, 43300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 16),
  -- Chingling - Safeguard - TM20
  (433, 43300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 17),
  -- Chingling - Frustration - TM21
  (433, 43300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Chingling - Return - TM27
  (433, 43300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Chingling - Psychic - TM29
  (433, 43300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 20),
  -- Chingling - Shadow Ball - TM30
  (433, 43300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 21),
  -- Chingling - Double Team - TM32
  (433, 43300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Chingling - Reflect - TM33
  (433, 43300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 23),
  -- Chingling - Torment - TM41
  (433, 43300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 24),
  -- Chingling - Facade - TM42
  (433, 43300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Chingling - Rest - TM44
  (433, 43300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Chingling - Attract - TM45
  (433, 43300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Chingling - Round - TM48
  (433, 43300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Chingling - Echoed Voice - TM49
  (433, 43300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 29),
  -- Chingling - Charge Beam - TM57
  (433, 43300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 30),
  -- Chingling - Flash - TM70
  (433, 43300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Chingling - Thunder Wave - TM73
  (433, 43300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 32),
  -- Chingling - Psych Up - TM77
  (433, 43300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 33),
  -- Chingling - Dream Eater - TM85
  (433, 43300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 34),
  -- Chingling - Grass Knot - TM86
  (433, 43300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 35),
  -- Chingling - Swagger - TM87
  (433, 43300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Chingling - Sleep Talk - TM88
  (433, 43300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Chingling - Substitute - TM90
  (433, 43300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Chingling - Trick Room - TM92
  (433, 43300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 39),
  -- Chingling - Dazzling Gleam - TM99
  (433, 43300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 40),
  -- Chingling - Confide - TM100
  (433, 43300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Chingling - Disable - Egg
  (433, 43300, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chingling - Hypnosis - Egg
  (433, 43300, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chingling - Recover - Egg
  (433, 43300, 105, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chingling - Curse - Egg
  (433, 43300, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chingling - Future Sight - Egg
  (433, 43300, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chingling - Wish - Egg
  (433, 43300, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chingling - Skill Swap - Egg
  (433, 43300, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chingling - Cosmic Power - Egg
  (433, 43300, 322, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chingling - Stored Power - Egg
  (433, 43300, 500, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunky - Scratch - Level 1
  (434, 43400, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Focus Energy - Level 1
  (434, 43400, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunky - Poison Gas - Level 4
  (434, 43400, 139, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Stunky - Screech - Level 7
  (434, 43400, 103, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Stunky - Fury Swipes - Level 10
  (434, 43400, 154, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Stunky - Smokescreen - Level 14
  (434, 43400, 108, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Stunky - Feint - Level 18
  (434, 43400, 364, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Stunky - Slash - Level 22
  (434, 43400, 163, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stunky - Acid Spray - Level 32
  (434, 43400, 491, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Stunky - Night Slash - Level 37
  (434, 43400, 400, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Stunky - Memento - Level 43
  (434, 43400, 262, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Stunky - Belch - Level 46
  (434, 43400, 562, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Stunky - Explosion - Level 49
  (434, 43400, 153, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Stunky - Hone Claws - TM01
  (434, 43400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 15),
  -- Stunky - Roar - TM05
  (434, 43400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Stunky - Toxic - TM06
  (434, 43400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Stunky - Venoshock - TM09
  (434, 43400, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 18),
  -- Stunky - Hidden Power - TM10
  (434, 43400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Stunky - Sunny Day - TM11
  (434, 43400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Stunky - Taunt - TM12
  (434, 43400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Stunky - Protect - TM17
  (434, 43400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Stunky - Rain Dance - TM18
  (434, 43400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Stunky - Frustration - TM21
  (434, 43400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Stunky - Return - TM27
  (434, 43400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Stunky - Dig - TM28
  (434, 43400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Stunky - Shadow Ball - TM30
  (434, 43400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Stunky - Double Team - TM32
  (434, 43400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Stunky - Flamethrower - TM35
  (434, 43400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 29),
  -- Stunky - Sludge Bomb - TM36
  (434, 43400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 30),
  -- Stunky - Fire Blast - TM38
  (434, 43400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 31),
  -- Stunky - Torment - TM41
  (434, 43400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 32),
  -- Stunky - Facade - TM42
  (434, 43400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Stunky - Rest - TM44
  (434, 43400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Stunky - Attract - TM45
  (434, 43400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Stunky - Thief - TM46
  (434, 43400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Stunky - Round - TM48
  (434, 43400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Stunky - Incinerate - TM59
  (434, 43400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 38),
  -- Stunky - Explosion - TM64
  (434, 43400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 39),
  -- Stunky - Shadow Claw - TM65
  (434, 43400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 40),
  -- Stunky - Payback - TM66
  (434, 43400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 41),
  -- Stunky - Swagger - TM87
  (434, 43400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Stunky - Sleep Talk - TM88
  (434, 43400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Stunky - Substitute - TM90
  (434, 43400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Stunky - Rock Smash - TM94
  (434, 43400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Stunky - Snarl - TM95
  (434, 43400, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 46),
  -- Stunky - Dark Pulse - TM97
  (434, 43400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 47),
  -- Stunky - Confide - TM100
  (434, 43400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Stunky - Cut - HM01
  (434, 43400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 49),
  -- Stunky - Double-Edge - Egg
  (434, 43400, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunky - Leer - Egg
  (434, 43400, 43, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunky - Haze - Egg
  (434, 43400, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunky - Smog - Egg
  (434, 43400, 123, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunky - Scary Face - Egg
  (434, 43400, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunky - Pursuit - Egg
  (434, 43400, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Iron Tail - Egg
  (434, 43400, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Crunch - Egg
  (434, 43400, 242, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunky - Astonish - Egg
  (434, 43400, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stunky - Punishment - Egg
  (434, 43400, 386, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stunky - Flame Burst - Egg
  (434, 43400, 481, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stunky - Foul Play - Egg
  (434, 43400, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stunky - Play Rough - Egg
  (434, 43400, 583, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skuntank - Scratch - Level 1
  (435, 43500, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Focus Energy - Level 1
  (435, 43500, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skuntank - Poison Gas - Level 1
  (435, 43500, 139, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skuntank - Poison Gas - Level 4
  (435, 43500, 139, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Skuntank - Screech - Level 7
  (435, 43500, 103, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Skuntank - Fury Swipes - Level 10
  (435, 43500, 154, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Skuntank - Smokescreen - Level 14
  (435, 43500, 108, 13, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Skuntank - Feint - Level 18
  (435, 43500, 364, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Skuntank - Slash - Level 22
  (435, 43500, 163, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skuntank - Acid Spray - Level 32
  (435, 43500, 491, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Skuntank - Flamethrower - Level 34
  (435, 43500, 53, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skuntank - Night Slash - Level 41
  (435, 43500, 400, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Skuntank - Memento - Level 51
  (435, 43500, 262, 13, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Skuntank - Belch - Level 56
  (435, 43500, 562, 13, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Skuntank - Explosion - Level 61
  (435, 43500, 153, 13, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Skuntank - Hone Claws - TM01
  (435, 43500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Skuntank - Roar - TM05
  (435, 43500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 18),
  -- Skuntank - Toxic - TM06
  (435, 43500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Skuntank - Venoshock - TM09
  (435, 43500, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 20),
  -- Skuntank - Hidden Power - TM10
  (435, 43500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Skuntank - Sunny Day - TM11
  (435, 43500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Skuntank - Taunt - TM12
  (435, 43500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Skuntank - Hyper Beam - TM15
  (435, 43500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Skuntank - Protect - TM17
  (435, 43500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Skuntank - Rain Dance - TM18
  (435, 43500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Skuntank - Frustration - TM21
  (435, 43500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Skuntank - Return - TM27
  (435, 43500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Skuntank - Dig - TM28
  (435, 43500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Skuntank - Shadow Ball - TM30
  (435, 43500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 30),
  -- Skuntank - Double Team - TM32
  (435, 43500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Skuntank - Flamethrower - TM35
  (435, 43500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Skuntank - Sludge Bomb - TM36
  (435, 43500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Skuntank - Fire Blast - TM38
  (435, 43500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Skuntank - Torment - TM41
  (435, 43500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 35),
  -- Skuntank - Facade - TM42
  (435, 43500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Skuntank - Rest - TM44
  (435, 43500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Skuntank - Attract - TM45
  (435, 43500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Skuntank - Thief - TM46
  (435, 43500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 39),
  -- Skuntank - Round - TM48
  (435, 43500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Skuntank - Incinerate - TM59
  (435, 43500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 41),
  -- Skuntank - Explosion - TM64
  (435, 43500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 42),
  -- Skuntank - Shadow Claw - TM65
  (435, 43500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 43),
  -- Skuntank - Payback - TM66
  (435, 43500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 44),
  -- Skuntank - Giga Impact - TM68
  (435, 43500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Skuntank - Poison Jab - TM84
  (435, 43500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 46),
  -- Skuntank - Swagger - TM87
  (435, 43500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Skuntank - Sleep Talk - TM88
  (435, 43500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Skuntank - Substitute - TM90
  (435, 43500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Skuntank - Rock Smash - TM94
  (435, 43500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Skuntank - Snarl - TM95
  (435, 43500, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 51),
  -- Skuntank - Dark Pulse - TM97
  (435, 43500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 52),
  -- Skuntank - Confide - TM100
  (435, 43500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Skuntank - Cut - HM01
  (435, 43500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 54),
  -- Skuntank - Strength - HM04
  (435, 43500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 1
  (436, 43600, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzor - Hypnosis - Level 5
  (436, 43600, 95, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bronzor - Imprison - Level 9
  (436, 43600, 286, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bronzor - Confuse Ray - Level 11
  (436, 43600, 109, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Bronzor - Psywave - Level 15
  (436, 43600, 149, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bronzor - Iron Defense - Level 19
  (436, 43600, 334, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Bronzor - Feint Attack - Level 21
  (436, 43600, 185, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Bronzor - Safeguard - Level 25
  (436, 43600, 219, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Bronzor - Future Sight - Level 29
  (436, 43600, 248, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bronzor - Metal Sound - Level 31
  (436, 43600, 319, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Bronzor - Gyro Ball - Level 35
  (436, 43600, 360, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Bronzor - Extrasensory - Level 39
  (436, 43600, 326, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Bronzor - Payback - Level 41
  (436, 43600, 371, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Bronzor - Heal Block - Level 45
  (436, 43600, 377, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Bronzor - Heavy Slam - Level 49
  (436, 43600, 484, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Bronzor - Psyshock - TM03
  (436, 43600, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Bronzor - Calm Mind - TM04
  (436, 43600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Bronzor - Toxic - TM06
  (436, 43600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Bronzor - Hidden Power - TM10
  (436, 43600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Bronzor - Sunny Day - TM11
  (436, 43600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Bronzor - Light Screen - TM16
  (436, 43600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Bronzor - Protect - TM17
  (436, 43600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Bronzor - Rain Dance - TM18
  (436, 43600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Bronzor - Safeguard - TM20
  (436, 43600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Bronzor - Frustration - TM21
  (436, 43600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Bronzor - Solar Beam - TM22
  (436, 43600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Bronzor - Earthquake - TM26
  (436, 43600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Bronzor - Return - TM27
  (436, 43600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Bronzor - Psychic - TM29
  (436, 43600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Bronzor - Shadow Ball - TM30
  (436, 43600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Bronzor - Double Team - TM32
  (436, 43600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Bronzor - Reflect - TM33
  (436, 43600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Bronzor - Sandstorm - TM37
  (436, 43600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 34),
  -- Bronzor - Rock Tomb - TM39
  (436, 43600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Bronzor - Facade - TM42
  (436, 43600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Bronzor - Rest - TM44
  (436, 43600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Bronzor - Round - TM48
  (436, 43600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Bronzor - Charge Beam - TM57
  (436, 43600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Bronzor - Payback - TM66
  (436, 43600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Bronzor - Rock Polish - TM69
  (436, 43600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Bronzor - Flash - TM70
  (436, 43600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Bronzor - Gyro Ball - TM74
  (436, 43600, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 43),
  -- Bronzor - Psych Up - TM77
  (436, 43600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 44),
  -- Bronzor - Bulldoze - TM78
  (436, 43600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Bronzor - Rock Slide - TM80
  (436, 43600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Bronzor - Dream Eater - TM85
  (436, 43600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Bronzor - Grass Knot - TM86
  (436, 43600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Bronzor - Swagger - TM87
  (436, 43600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Bronzor - Sleep Talk - TM88
  (436, 43600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Bronzor - Substitute - TM90
  (436, 43600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Bronzor - Flash Cannon - TM91
  (436, 43600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 52),
  -- Bronzor - Trick Room - TM92
  (436, 43600, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 53),
  -- Bronzor - Confide - TM100
  (436, 43600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Confusion - Level 1
  (437, 43700, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzong - Hypnosis - Level 1
  (437, 43700, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bronzong - Rain Dance - Level 1
  (437, 43700, 240, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bronzong - Sunny Day - Level 1
  (437, 43700, 241, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bronzong - Imprison - Level 1
  (437, 43700, 286, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bronzong - Hypnosis - Level 5
  (437, 43700, 95, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Bronzong - Imprison - Level 9
  (437, 43700, 286, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Bronzong - Confuse Ray - Level 11
  (437, 43700, 109, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Bronzong - Psywave - Level 15
  (437, 43700, 149, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Bronzong - Iron Defense - Level 19
  (437, 43700, 334, 13, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Bronzong - Feint Attack - Level 21
  (437, 43700, 185, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Bronzong - Safeguard - Level 25
  (437, 43700, 219, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Bronzong - Future Sight - Level 29
  (437, 43700, 248, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Bronzong - Metal Sound - Level 31
  (437, 43700, 319, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Bronzong - Block - Level 33
  (437, 43700, 335, 13, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Bronzong - Gyro Ball - Level 36
  (437, 43700, 360, 13, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Bronzong - Extrasensory - Level 42
  (437, 43700, 326, 13, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Bronzong - Payback - Level 46
  (437, 43700, 371, 13, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Bronzong - Heal Block - Level 52
  (437, 43700, 377, 13, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Bronzong - Heavy Slam - Level 58
  (437, 43700, 484, 13, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Bronzong - Psyshock - TM03
  (437, 43700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 22),
  -- Bronzong - Calm Mind - TM04
  (437, 43700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 23),
  -- Bronzong - Toxic - TM06
  (437, 43700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Bronzong - Hidden Power - TM10
  (437, 43700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Bronzong - Sunny Day - TM11
  (437, 43700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Bronzong - Hyper Beam - TM15
  (437, 43700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Bronzong - Light Screen - TM16
  (437, 43700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 28),
  -- Bronzong - Protect - TM17
  (437, 43700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Bronzong - Rain Dance - TM18
  (437, 43700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Bronzong - Safeguard - TM20
  (437, 43700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 31),
  -- Bronzong - Frustration - TM21
  (437, 43700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Bronzong - Solar Beam - TM22
  (437, 43700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 33),
  -- Bronzong - Earthquake - TM26
  (437, 43700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 34),
  -- Bronzong - Return - TM27
  (437, 43700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 35),
  -- Bronzong - Psychic - TM29
  (437, 43700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 36),
  -- Bronzong - Shadow Ball - TM30
  (437, 43700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 37),
  -- Bronzong - Double Team - TM32
  (437, 43700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Bronzong - Reflect - TM33
  (437, 43700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 39),
  -- Bronzong - Sandstorm - TM37
  (437, 43700, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 40),
  -- Bronzong - Rock Tomb - TM39
  (437, 43700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 41),
  -- Bronzong - Facade - TM42
  (437, 43700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Bronzong - Rest - TM44
  (437, 43700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 43),
  -- Bronzong - Round - TM48
  (437, 43700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Bronzong - Charge Beam - TM57
  (437, 43700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 45),
  -- Bronzong - Explosion - TM64
  (437, 43700, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 46),
  -- Bronzong - Payback - TM66
  (437, 43700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 47),
  -- Bronzong - Giga Impact - TM68
  (437, 43700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Bronzong - Rock Polish - TM69
  (437, 43700, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 49),
  -- Bronzong - Flash - TM70
  (437, 43700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Bronzong - Gyro Ball - TM74
  (437, 43700, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 51),
  -- Bronzong - Psych Up - TM77
  (437, 43700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Bronzong - Bulldoze - TM78
  (437, 43700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 53),
  -- Bronzong - Rock Slide - TM80
  (437, 43700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 54),
  -- Bronzong - Dream Eater - TM85
  (437, 43700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 55),
  -- Bronzong - Grass Knot - TM86
  (437, 43700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 56),
  -- Bronzong - Swagger - TM87
  (437, 43700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Bronzong - Sleep Talk - TM88
  (437, 43700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Bronzong - Substitute - TM90
  (437, 43700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Bronzong - Flash Cannon - TM91
  (437, 43700, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 60),
  -- Bronzong - Trick Room - TM92
  (437, 43700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 61),
  -- Bronzong - Rock Smash - TM94
  (437, 43700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Bronzong - Confide - TM100
  (437, 43700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 63),
  -- Bronzong - Strength - HM04
  (437, 43700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 64),
  -- Bonsly - Fake Tears - Level 1
  (438, 43800, 313, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Level 1
  (438, 43800, 383, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 5
  (438, 43800, 175, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bonsly - Low Kick - Level 8
  (438, 43800, 67, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bonsly - Rock Throw - Level 12
  (438, 43800, 88, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 15
  (438, 43800, 102, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bonsly - Feint Attack - Level 19
  (438, 43800, 185, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Bonsly - Rock Tomb - Level 22
  (438, 43800, 317, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Bonsly - Block - Level 26
  (438, 43800, 335, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Bonsly - Rock Slide - Level 29
  (438, 43800, 157, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bonsly - Counter - Level 33
  (438, 43800, 68, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Bonsly - Sucker Punch - Level 36
  (438, 43800, 389, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bonsly - Double-Edge - Level 40
  (438, 43800, 38, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bonsly - Calm Mind - TM04
  (438, 43800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 14),
  -- Bonsly - Toxic - TM06
  (438, 43800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Bonsly - Hidden Power - TM10
  (438, 43800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Bonsly - Sunny Day - TM11
  (438, 43800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Bonsly - Protect - TM17
  (438, 43800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Bonsly - Frustration - TM21
  (438, 43800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Bonsly - Smack Down - TM23
  (438, 43800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 20),
  -- Bonsly - Return - TM27
  (438, 43800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Bonsly - Dig - TM28
  (438, 43800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 22),
  -- Bonsly - Brick Break - TM31
  (438, 43800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 23),
  -- Bonsly - Double Team - TM32
  (438, 43800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Bonsly - Sandstorm - TM37
  (438, 43800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 25),
  -- Bonsly - Rock Tomb - TM39
  (438, 43800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 26),
  -- Bonsly - Facade - TM42
  (438, 43800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Bonsly - Rest - TM44
  (438, 43800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Bonsly - Attract - TM45
  (438, 43800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Bonsly - Thief - TM46
  (438, 43800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 30),
  -- Bonsly - Round - TM48
  (438, 43800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Bonsly - Explosion - TM64
  (438, 43800, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 32),
  -- Bonsly - Rock Polish - TM69
  (438, 43800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 33),
  -- Bonsly - Psych Up - TM77
  (438, 43800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 34),
  -- Bonsly - Rock Slide - TM80
  (438, 43800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Bonsly - Swagger - TM87
  (438, 43800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Bonsly - Sleep Talk - TM88
  (438, 43800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Bonsly - Substitute - TM90
  (438, 43800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Bonsly - Nature Power - TM96
  (438, 43800, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 39),
  -- Bonsly - Confide - TM100
  (438, 43800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Bonsly - Headbutt - Egg
  (438, 43800, 29, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bonsly - Harden - Egg
  (438, 43800, 106, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bonsly - Defense Curl - Egg
  (438, 43800, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bonsly - Self-Destruct - Egg
  (438, 43800, 120, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bonsly - Curse - Egg
  (438, 43800, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bonsly - Endure - Egg
  (438, 43800, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bonsly - Rollout - Egg
  (438, 43800, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bonsly - Sand Tomb - Egg
  (438, 43800, 328, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bonsly - Stealth Rock - Egg
  (438, 43800, 446, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mime Jr. - Confusion - Level 1
  (439, 43900, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Barrier - Level 1
  (439, 43900, 112, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mime Jr. - Tickle - Level 1
  (439, 43900, 321, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mime Jr. - Copycat - Level 4
  (439, 43900, 383, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Mime Jr. - Meditate - Level 8
  (439, 43900, 96, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Mime Jr. - Double Slap - Level 11
  (439, 43900, 3, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Mime Jr. - Mimic - Level 15
  (439, 43900, 102, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mime Jr. - Encore - Level 18
  (439, 43900, 227, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mime Jr. - Light Screen - Level 22
  (439, 43900, 113, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mime Jr. - Reflect - Level 22
  (439, 43900, 115, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Mime Jr. - Psybeam - Level 25
  (439, 43900, 60, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Mime Jr. - Substitute - Level 29
  (439, 43900, 164, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Mime Jr. - Recycle - Level 32
  (439, 43900, 278, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mime Jr. - Trick - Level 36
  (439, 43900, 271, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mime Jr. - Psychic - Level 39
  (439, 43900, 94, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Mime Jr. - Role Play - Level 43
  (439, 43900, 272, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Mime Jr. - Baton Pass - Level 46
  (439, 43900, 226, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Mime Jr. - Safeguard - Level 50
  (439, 43900, 219, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Mime Jr. - Psyshock - TM03
  (439, 43900, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Mime Jr. - Calm Mind - TM04
  (439, 43900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Mime Jr. - Toxic - TM06
  (439, 43900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Mime Jr. - Hidden Power - TM10
  (439, 43900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Mime Jr. - Sunny Day - TM11
  (439, 43900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Mime Jr. - Taunt - TM12
  (439, 43900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Mime Jr. - Light Screen - TM16
  (439, 43900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Mime Jr. - Protect - TM17
  (439, 43900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Mime Jr. - Rain Dance - TM18
  (439, 43900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Mime Jr. - Safeguard - TM20
  (439, 43900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Mime Jr. - Frustration - TM21
  (439, 43900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Mime Jr. - Solar Beam - TM22
  (439, 43900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Mime Jr. - Thunderbolt - TM24
  (439, 43900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Mime Jr. - Thunder - TM25
  (439, 43900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Mime Jr. - Return - TM27
  (439, 43900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Mime Jr. - Psychic - TM29
  (439, 43900, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Mime Jr. - Shadow Ball - TM30
  (439, 43900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Mime Jr. - Brick Break - TM31
  (439, 43900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 36),
  -- Mime Jr. - Double Team - TM32
  (439, 43900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Mime Jr. - Reflect - TM33
  (439, 43900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 38),
  -- Mime Jr. - Torment - TM41
  (439, 43900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 39),
  -- Mime Jr. - Facade - TM42
  (439, 43900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Mime Jr. - Rest - TM44
  (439, 43900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Mime Jr. - Attract - TM45
  (439, 43900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 42),
  -- Mime Jr. - Thief - TM46
  (439, 43900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 43),
  -- Mime Jr. - Round - TM48
  (439, 43900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Mime Jr. - Fling - TM56
  (439, 43900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 45),
  -- Mime Jr. - Charge Beam - TM57
  (439, 43900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 46),
  -- Mime Jr. - Flash - TM70
  (439, 43900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 47),
  -- Mime Jr. - Thunder Wave - TM73
  (439, 43900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 48),
  -- Mime Jr. - Psych Up - TM77
  (439, 43900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 49),
  -- Mime Jr. - Infestation - TM83
  (439, 43900, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 50),
  -- Mime Jr. - Dream Eater - TM85
  (439, 43900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 51),
  -- Mime Jr. - Grass Knot - TM86
  (439, 43900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 52),
  -- Mime Jr. - Swagger - TM87
  (439, 43900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Mime Jr. - Sleep Talk - TM88
  (439, 43900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Mime Jr. - Substitute - TM90
  (439, 43900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 55),
  -- Mime Jr. - Trick Room - TM92
  (439, 43900, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 56),
  -- Mime Jr. - Confide - TM100
  (439, 43900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Mime Jr. - Hypnosis - Egg
  (439, 43900, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mime Jr. - Mimic - Egg
  (439, 43900, 102, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mime Jr. - Confuse Ray - Egg
  (439, 43900, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mime Jr. - Icy Wind - Egg
  (439, 43900, 196, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mime Jr. - Charm - Egg
  (439, 43900, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mime Jr. - Future Sight - Egg
  (439, 43900, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mime Jr. - Fake Out - Egg
  (439, 43900, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mime Jr. - Trick - Egg
  (439, 43900, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mime Jr. - Teeter Dance - Egg
  (439, 43900, 298, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mime Jr. - Wake-Up Slap - Egg
  (439, 43900, 358, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mime Jr. - Healing Wish - Egg
  (439, 43900, 361, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mime Jr. - Nasty Plot - Egg
  (439, 43900, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mime Jr. - Power Split - Egg
  (439, 43900, 471, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mime Jr. - Magic Room - Egg
  (439, 43900, 478, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Happiny - Pound - Level 1
  (440, 44000, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Charm - Level 1
  (440, 44000, 204, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Happiny - Copycat - Level 5
  (440, 44000, 383, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Happiny - Refresh - Level 9
  (440, 44000, 287, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Happiny - Sweet Kiss - Level 12
  (440, 44000, 186, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Happiny - Toxic - TM06
  (440, 44000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 6),
  -- Happiny - Hail - TM07
  (440, 44000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 7),
  -- Happiny - Hidden Power - TM10
  (440, 44000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Happiny - Sunny Day - TM11
  (440, 44000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 9),
  -- Happiny - Light Screen - TM16
  (440, 44000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 10),
  -- Happiny - Protect - TM17
  (440, 44000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Happiny - Rain Dance - TM18
  (440, 44000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 12),
  -- Happiny - Safeguard - TM20
  (440, 44000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 13),
  -- Happiny - Frustration - TM21
  (440, 44000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 14),
  -- Happiny - Solar Beam - TM22
  (440, 44000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 15),
  -- Happiny - Return - TM27
  (440, 44000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 16),
  -- Happiny - Psychic - TM29
  (440, 44000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 17),
  -- Happiny - Shadow Ball - TM30
  (440, 44000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 18),
  -- Happiny - Double Team - TM32
  (440, 44000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Happiny - Flamethrower - TM35
  (440, 44000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 20),
  -- Happiny - Fire Blast - TM38
  (440, 44000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 21),
  -- Happiny - Facade - TM42
  (440, 44000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Happiny - Rest - TM44
  (440, 44000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Happiny - Attract - TM45
  (440, 44000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Happiny - Round - TM48
  (440, 44000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Happiny - Echoed Voice - TM49
  (440, 44000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 26),
  -- Happiny - Fling - TM56
  (440, 44000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 27),
  -- Happiny - Incinerate - TM59
  (440, 44000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 28),
  -- Happiny - Flash - TM70
  (440, 44000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 29),
  -- Happiny - Thunder Wave - TM73
  (440, 44000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 30),
  -- Happiny - Psych Up - TM77
  (440, 44000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 31),
  -- Happiny - Dream Eater - TM85
  (440, 44000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 32),
  -- Happiny - Grass Knot - TM86
  (440, 44000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 33),
  -- Happiny - Swagger - TM87
  (440, 44000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Happiny - Sleep Talk - TM88
  (440, 44000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Happiny - Substitute - TM90
  (440, 44000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Happiny - Confide - TM100
  (440, 44000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Happiny - Counter - Egg
  (440, 44000, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Happiny - Metronome - Egg
  (440, 44000, 118, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Happiny - Endure - Egg
  (440, 44000, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Happiny - Heal Bell - Egg
  (440, 44000, 215, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Happiny - Present - Egg
  (440, 44000, 217, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Happiny - Helping Hand - Egg
  (440, 44000, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Happiny - Aromatherapy - Egg
  (440, 44000, 312, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Happiny - Gravity - Egg
  (440, 44000, 356, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Happiny - Natural Gift - Egg
  (440, 44000, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Happiny - Last Resort - Egg
  (440, 44000, 387, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Happiny - Mud Bomb - Egg
  (440, 44000, 426, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chatot - Peck - Level 1
  (441, 44100, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chatot - Taunt - Level 1
  (441, 44100, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chatot - Hyper Voice - Level 1
  (441, 44100, 304, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chatot - Chatter - Level 1
  (441, 44100, 448, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chatot - Confide - Level 1
  (441, 44100, 590, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chatot - Growl - Level 5
  (441, 44100, 45, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Chatot - Mirror Move - Level 9
  (441, 44100, 119, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Chatot - Sing - Level 13
  (441, 44100, 47, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Chatot - Fury Attack - Level 17
  (441, 44100, 31, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Chatot - Chatter - Level 21
  (441, 44100, 448, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Chatot - Taunt - Level 25
  (441, 44100, 269, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Chatot - Round - Level 29
  (441, 44100, 496, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Chatot - Mimic - Level 33
  (441, 44100, 102, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Chatot - Echoed Voice - Level 37
  (441, 44100, 497, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Chatot - Roost - Level 41
  (441, 44100, 355, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Chatot - Uproar - Level 45
  (441, 44100, 253, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Chatot - Synchronoise - Level 49
  (441, 44100, 485, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Chatot - Feather Dance - Level 50
  (441, 44100, 297, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Chatot - Hyper Voice - Level 57
  (441, 44100, 304, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Chatot - Toxic - TM06
  (441, 44100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Chatot - Hidden Power - TM10
  (441, 44100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Chatot - Sunny Day - TM11
  (441, 44100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Chatot - Taunt - TM12
  (441, 44100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Chatot - Protect - TM17
  (441, 44100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Chatot - Rain Dance - TM18
  (441, 44100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Chatot - Roost - TM19
  (441, 44100, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 26),
  -- Chatot - Frustration - TM21
  (441, 44100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Chatot - Return - TM27
  (441, 44100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Chatot - Double Team - TM32
  (441, 44100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Chatot - Aerial Ace - TM40
  (441, 44100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Chatot - Torment - TM41
  (441, 44100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Chatot - Facade - TM42
  (441, 44100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Chatot - Rest - TM44
  (441, 44100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Chatot - Attract - TM45
  (441, 44100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Chatot - Thief - TM46
  (441, 44100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Chatot - Round - TM48
  (441, 44100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Chatot - Echoed Voice - TM49
  (441, 44100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Chatot - Steel Wing - TM51
  (441, 44100, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 38),
  -- Chatot - Swagger - TM87
  (441, 44100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Chatot - Sleep Talk - TM88
  (441, 44100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Chatot - U-turn - TM89
  (441, 44100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 41),
  -- Chatot - Substitute - TM90
  (441, 44100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Chatot - Confide - TM100
  (441, 44100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Chatot - Fly - HM02
  (441, 44100, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 44),
  -- Chatot - Supersonic - Egg
  (441, 44100, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chatot - Agility - Egg
  (441, 44100, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chatot - Night Shade - Egg
  (441, 44100, 101, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chatot - Steel Wing - Egg
  (441, 44100, 211, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chatot - Sleep Talk - Egg
  (441, 44100, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chatot - Encore - Egg
  (441, 44100, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chatot - Air Cutter - Egg
  (441, 44100, 314, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chatot - Nasty Plot - Egg
  (441, 44100, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chatot - Defog - Egg
  (441, 44100, 432, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chatot - Boomburst - Egg
  (441, 44100, 586, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spiritomb - Confuse Ray - Level 1
  (442, 44200, 109, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Curse - Level 1
  (442, 44200, 174, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spiritomb - Spite - Level 1
  (442, 44200, 180, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spiritomb - Pursuit - Level 1
  (442, 44200, 228, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spiritomb - Shadow Sneak - Level 1
  (442, 44200, 425, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Spiritomb - Feint Attack - Level 7
  (442, 44200, 185, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Spiritomb - Hypnosis - Level 13
  (442, 44200, 95, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Spiritomb - Dream Eater - Level 19
  (442, 44200, 138, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Spiritomb - Ominous Wind - Level 25
  (442, 44200, 466, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Spiritomb - Sucker Punch - Level 31
  (442, 44200, 389, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Spiritomb - Nasty Plot - Level 37
  (442, 44200, 417, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spiritomb - Memento - Level 43
  (442, 44200, 262, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spiritomb - Dark Pulse - Level 49
  (442, 44200, 399, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spiritomb - Calm Mind - TM04
  (442, 44200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 14),
  -- Spiritomb - Toxic - TM06
  (442, 44200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Spiritomb - Hidden Power - TM10
  (442, 44200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Spiritomb - Sunny Day - TM11
  (442, 44200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Spiritomb - Taunt - TM12
  (442, 44200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 18),
  -- Spiritomb - Hyper Beam - TM15
  (442, 44200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 19),
  -- Spiritomb - Protect - TM17
  (442, 44200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Spiritomb - Rain Dance - TM18
  (442, 44200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Spiritomb - Frustration - TM21
  (442, 44200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Spiritomb - Return - TM27
  (442, 44200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Spiritomb - Psychic - TM29
  (442, 44200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Spiritomb - Shadow Ball - TM30
  (442, 44200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Spiritomb - Double Team - TM32
  (442, 44200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Spiritomb - Rock Tomb - TM39
  (442, 44200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Spiritomb - Torment - TM41
  (442, 44200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 28),
  -- Spiritomb - Facade - TM42
  (442, 44200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Spiritomb - Rest - TM44
  (442, 44200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Spiritomb - Attract - TM45
  (442, 44200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Spiritomb - Thief - TM46
  (442, 44200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Spiritomb - Round - TM48
  (442, 44200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Spiritomb - Quash - TM60
  (442, 44200, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 34),
  -- Spiritomb - Will-O-Wisp - TM61
  (442, 44200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 35),
  -- Spiritomb - Embargo - TM63
  (442, 44200, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 36),
  -- Spiritomb - Retaliate - TM67
  (442, 44200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 37),
  -- Spiritomb - Giga Impact - TM68
  (442, 44200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 38),
  -- Spiritomb - Flash - TM70
  (442, 44200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Spiritomb - Psych Up - TM77
  (442, 44200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Spiritomb - Infestation - TM83
  (442, 44200, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 41),
  -- Spiritomb - Dream Eater - TM85
  (442, 44200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 42),
  -- Spiritomb - Swagger - TM87
  (442, 44200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Spiritomb - Sleep Talk - TM88
  (442, 44200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Spiritomb - Substitute - TM90
  (442, 44200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Spiritomb - Snarl - TM95
  (442, 44200, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 46),
  -- Spiritomb - Dark Pulse - TM97
  (442, 44200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 47),
  -- Spiritomb - Confide - TM100
  (442, 44200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Spiritomb - Smokescreen - Egg
  (442, 44200, 108, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spiritomb - Nightmare - Egg
  (442, 44200, 171, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spiritomb - Destiny Bond - Egg
  (442, 44200, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spiritomb - Pain Split - Egg
  (442, 44200, 220, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spiritomb - Imprison - Egg
  (442, 44200, 286, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spiritomb - Grudge - Egg
  (442, 44200, 288, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spiritomb - Shadow Sneak - Egg
  (442, 44200, 425, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spiritomb - Captivate - Egg
  (442, 44200, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spiritomb - Foul Play - Egg
  (442, 44200, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Attack - Level 3
  (443, 44300, 28, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gible - Dragon Rage - Level 7
  (443, 44300, 82, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gible - Sandstorm - Level 13
  (443, 44300, 201, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Gible - Take Down - Level 15
  (443, 44300, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gible - Sand Tomb - Level 19
  (443, 44300, 328, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 25
  (443, 44300, 163, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 27
  (443, 44300, 337, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 31
  (443, 44300, 91, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gible - Dragon Rush - Level 37
  (443, 44300, 407, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Gible - Hone Claws - TM01
  (443, 44300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 11),
  -- Gible - Dragon Claw - TM02
  (443, 44300, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 12),
  -- Gible - Roar - TM05
  (443, 44300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 13),
  -- Gible - Toxic - TM06
  (443, 44300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Gible - Hidden Power - TM10
  (443, 44300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Gible - Sunny Day - TM11
  (443, 44300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Gible - Protect - TM17
  (443, 44300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Gible - Rain Dance - TM18
  (443, 44300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Gible - Frustration - TM21
  (443, 44300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Gible - Earthquake - TM26
  (443, 44300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 20),
  -- Gible - Return - TM27
  (443, 44300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Gible - Dig - TM28
  (443, 44300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 22),
  -- Gible - Double Team - TM32
  (443, 44300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Gible - Flamethrower - TM35
  (443, 44300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 24),
  -- Gible - Sandstorm - TM37
  (443, 44300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 25),
  -- Gible - Fire Blast - TM38
  (443, 44300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 26),
  -- Gible - Rock Tomb - TM39
  (443, 44300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Gible - Aerial Ace - TM40
  (443, 44300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Gible - Facade - TM42
  (443, 44300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Gible - Rest - TM44
  (443, 44300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Gible - Attract - TM45
  (443, 44300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Gible - Round - TM48
  (443, 44300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Gible - Incinerate - TM59
  (443, 44300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 33),
  -- Gible - Shadow Claw - TM65
  (443, 44300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 34),
  -- Gible - Stone Edge - TM71
  (443, 44300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 35),
  -- Gible - Bulldoze - TM78
  (443, 44300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 36),
  -- Gible - Rock Slide - TM80
  (443, 44300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 37),
  -- Gible - Swagger - TM87
  (443, 44300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Gible - Sleep Talk - TM88
  (443, 44300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Gible - Substitute - TM90
  (443, 44300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Gible - Rock Smash - TM94
  (443, 44300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Gible - Confide - TM100
  (443, 44300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Gible - Cut - HM01
  (443, 44300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 43),
  -- Gible - Strength - HM04
  (443, 44300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 44),
  -- Gible - Body Slam - Egg
  (443, 44300, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gible - Thrash - Egg
  (443, 44300, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gible - Double-Edge - Egg
  (443, 44300, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gible - Scary Face - Egg
  (443, 44300, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gible - Outrage - Egg
  (443, 44300, 200, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gible - Dragon Breath - Egg
  (443, 44300, 225, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gible - Iron Tail - Egg
  (443, 44300, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gible - Metal Claw - Egg
  (443, 44300, 232, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gible - Twister - Egg
  (443, 44300, 239, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gible - Sand Tomb - Egg
  (443, 44300, 328, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gible - Mud Shot - Egg
  (443, 44300, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gible - Rock Climb - Egg
  (443, 44300, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gible - Iron Head - Egg
  (443, 44300, 442, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gible - Draco Meteor - Tutor
  (443, 44300, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 58),
  -- Gabite - Sand Attack - Level 1
  (444, 44400, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Sand Attack - Level 3
  (444, 44400, 28, 13, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Gabite - Dragon Rage - Level 7
  (444, 44400, 82, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Gabite - Sandstorm - Level 13
  (444, 44400, 201, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gabite - Take Down - Level 15
  (444, 44400, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gabite - Sand Tomb - Level 19
  (444, 44400, 328, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gabite - Dual Chop - Level 24
  (444, 44400, 530, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gabite - Slash - Level 28
  (444, 44400, 163, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gabite - Dragon Claw - Level 33
  (444, 44400, 337, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Gabite - Dig - Level 40
  (444, 44400, 91, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gabite - Dragon Rush - Level 49
  (444, 44400, 407, 13, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Gabite - Hone Claws - TM01
  (444, 44400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 13),
  -- Gabite - Dragon Claw - TM02
  (444, 44400, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 14),
  -- Gabite - Roar - TM05
  (444, 44400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Gabite - Toxic - TM06
  (444, 44400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Gabite - Hidden Power - TM10
  (444, 44400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Gabite - Sunny Day - TM11
  (444, 44400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Gabite - Protect - TM17
  (444, 44400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Gabite - Rain Dance - TM18
  (444, 44400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Gabite - Frustration - TM21
  (444, 44400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Gabite - Earthquake - TM26
  (444, 44400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 22),
  -- Gabite - Return - TM27
  (444, 44400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Gabite - Dig - TM28
  (444, 44400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 24),
  -- Gabite - Double Team - TM32
  (444, 44400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Gabite - Flamethrower - TM35
  (444, 44400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 26),
  -- Gabite - Sandstorm - TM37
  (444, 44400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 27),
  -- Gabite - Fire Blast - TM38
  (444, 44400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 28),
  -- Gabite - Rock Tomb - TM39
  (444, 44400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Gabite - Aerial Ace - TM40
  (444, 44400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Gabite - Facade - TM42
  (444, 44400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Gabite - Rest - TM44
  (444, 44400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Gabite - Attract - TM45
  (444, 44400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Gabite - Round - TM48
  (444, 44400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Gabite - Incinerate - TM59
  (444, 44400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 35),
  -- Gabite - Shadow Claw - TM65
  (444, 44400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 36),
  -- Gabite - Stone Edge - TM71
  (444, 44400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 37),
  -- Gabite - Bulldoze - TM78
  (444, 44400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 38),
  -- Gabite - Rock Slide - TM80
  (444, 44400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Gabite - Swagger - TM87
  (444, 44400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Gabite - Sleep Talk - TM88
  (444, 44400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Gabite - Substitute - TM90
  (444, 44400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Gabite - Rock Smash - TM94
  (444, 44400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Gabite - Confide - TM100
  (444, 44400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Gabite - Cut - HM01
  (444, 44400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 45),
  -- Gabite - Strength - HM04
  (444, 44400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Gabite - Draco Meteor - Tutor
  (444, 44400, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 47),
  -- Garchomp - Sand Attack - Level 1
  (445, 44500, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Dragon Rage - Level 1
  (445, 44500, 82, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garchomp - Sandstorm - Level 1
  (445, 44500, 201, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garchomp - Fire Fang - Level 1
  (445, 44500, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garchomp - Sand Attack - Level 3
  (445, 44500, 28, 13, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Garchomp - Dragon Rage - Level 7
  (445, 44500, 82, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Garchomp - Sandstorm - Level 13
  (445, 44500, 201, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Garchomp - Take Down - Level 15
  (445, 44500, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Garchomp - Sand Tomb - Level 19
  (445, 44500, 328, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Garchomp - Dual Chop - Level 24
  (445, 44500, 530, 13, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Garchomp - Slash - Level 28
  (445, 44500, 163, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Garchomp - Dragon Claw - Level 33
  (445, 44500, 337, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Garchomp - Dig - Level 40
  (445, 44500, 91, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Garchomp - Crunch - Level 48
  (445, 44500, 242, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Garchomp - Dragon Rush - Level 55
  (445, 44500, 407, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Garchomp - Hone Claws - TM01
  (445, 44500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Garchomp - Dragon Claw - TM02
  (445, 44500, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 18),
  -- Garchomp - Roar - TM05
  (445, 44500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 19),
  -- Garchomp - Toxic - TM06
  (445, 44500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Garchomp - Hidden Power - TM10
  (445, 44500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Garchomp - Sunny Day - TM11
  (445, 44500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Garchomp - Hyper Beam - TM15
  (445, 44500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Garchomp - Protect - TM17
  (445, 44500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Garchomp - Rain Dance - TM18
  (445, 44500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Garchomp - Frustration - TM21
  (445, 44500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Garchomp - Earthquake - TM26
  (445, 44500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Garchomp - Return - TM27
  (445, 44500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Garchomp - Dig - TM28
  (445, 44500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Garchomp - Brick Break - TM31
  (445, 44500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Garchomp - Double Team - TM32
  (445, 44500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Garchomp - Flamethrower - TM35
  (445, 44500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Garchomp - Sandstorm - TM37
  (445, 44500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 33),
  -- Garchomp - Fire Blast - TM38
  (445, 44500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 34),
  -- Garchomp - Rock Tomb - TM39
  (445, 44500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Garchomp - Aerial Ace - TM40
  (445, 44500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 36),
  -- Garchomp - Facade - TM42
  (445, 44500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Garchomp - Rest - TM44
  (445, 44500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Garchomp - Attract - TM45
  (445, 44500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Garchomp - Round - TM48
  (445, 44500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Garchomp - False Swipe - TM54
  (445, 44500, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 41),
  -- Garchomp - Fling - TM56
  (445, 44500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Garchomp - Incinerate - TM59
  (445, 44500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Garchomp - Shadow Claw - TM65
  (445, 44500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 44),
  -- Garchomp - Giga Impact - TM68
  (445, 44500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Garchomp - Stone Edge - TM71
  (445, 44500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 46),
  -- Garchomp - Swords Dance - TM75
  (445, 44500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 47),
  -- Garchomp - Bulldoze - TM78
  (445, 44500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Garchomp - Rock Slide - TM80
  (445, 44500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Garchomp - Dragon Tail - TM82
  (445, 44500, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 50),
  -- Garchomp - Poison Jab - TM84
  (445, 44500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 51),
  -- Garchomp - Swagger - TM87
  (445, 44500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Garchomp - Sleep Talk - TM88
  (445, 44500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Garchomp - Substitute - TM90
  (445, 44500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Garchomp - Rock Smash - TM94
  (445, 44500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Garchomp - Confide - TM100
  (445, 44500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Garchomp - Cut - HM01
  (445, 44500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Garchomp - Surf - HM03
  (445, 44500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 58),
  -- Garchomp - Strength - HM04
  (445, 44500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Garchomp - Draco Meteor - Tutor
  (445, 44500, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 60),
  -- Munchlax - Tackle - Level 1
  (446, 44600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Metronome - Level 1
  (446, 44600, 118, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munchlax - Lick - Level 1
  (446, 44600, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Munchlax - Snatch - Level 1
  (446, 44600, 289, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Munchlax - Odor Sleuth - Level 1
  (446, 44600, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Munchlax - Last Resort - Level 1
  (446, 44600, 387, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Munchlax - Amnesia - Level 9
  (446, 44600, 133, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Munchlax - Lick - Level 12
  (446, 44600, 122, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Munchlax - Chip Away - Level 17
  (446, 44600, 498, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Munchlax - Screech - Level 20
  (446, 44600, 103, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Munchlax - Body Slam - Level 25
  (446, 44600, 34, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Munchlax - Stockpile - Level 28
  (446, 44600, 254, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Munchlax - Swallow - Level 33
  (446, 44600, 256, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Munchlax - Rollout - Level 36
  (446, 44600, 205, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Munchlax - Fling - Level 41
  (446, 44600, 374, 13, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Munchlax - Belly Drum - Level 44
  (446, 44600, 187, 13, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Munchlax - Natural Gift - Level 49
  (446, 44600, 363, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Munchlax - Snatch - Level 52
  (446, 44600, 289, 13, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Munchlax - Last Resort - Level 57
  (446, 44600, 387, 13, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Munchlax - Toxic - TM06
  (446, 44600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Munchlax - Hidden Power - TM10
  (446, 44600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Munchlax - Sunny Day - TM11
  (446, 44600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Munchlax - Ice Beam - TM13
  (446, 44600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Munchlax - Blizzard - TM14
  (446, 44600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Munchlax - Protect - TM17
  (446, 44600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Munchlax - Rain Dance - TM18
  (446, 44600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Munchlax - Frustration - TM21
  (446, 44600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Munchlax - Solar Beam - TM22
  (446, 44600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Munchlax - Thunderbolt - TM24
  (446, 44600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 30),
  -- Munchlax - Thunder - TM25
  (446, 44600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 31),
  -- Munchlax - Earthquake - TM26
  (446, 44600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Munchlax - Return - TM27
  (446, 44600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Munchlax - Psychic - TM29
  (446, 44600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Munchlax - Shadow Ball - TM30
  (446, 44600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Munchlax - Brick Break - TM31
  (446, 44600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 36),
  -- Munchlax - Double Team - TM32
  (446, 44600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Munchlax - Flamethrower - TM35
  (446, 44600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 38),
  -- Munchlax - Sandstorm - TM37
  (446, 44600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 39),
  -- Munchlax - Fire Blast - TM38
  (446, 44600, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 40),
  -- Munchlax - Rock Tomb - TM39
  (446, 44600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 41),
  -- Munchlax - Facade - TM42
  (446, 44600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Munchlax - Rest - TM44
  (446, 44600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 43),
  -- Munchlax - Attract - TM45
  (446, 44600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 44),
  -- Munchlax - Round - TM48
  (446, 44600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Munchlax - Fling - TM56
  (446, 44600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Munchlax - Incinerate - TM59
  (446, 44600, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 47),
  -- Munchlax - Retaliate - TM67
  (446, 44600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 48),
  -- Munchlax - Bulldoze - TM78
  (446, 44600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Munchlax - Rock Slide - TM80
  (446, 44600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Munchlax - Swagger - TM87
  (446, 44600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Munchlax - Sleep Talk - TM88
  (446, 44600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Munchlax - Substitute - TM90
  (446, 44600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Munchlax - Rock Smash - TM94
  (446, 44600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Munchlax - Power-Up Punch - TM98
  (446, 44600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Munchlax - Confide - TM100
  (446, 44600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Munchlax - Surf - HM03
  (446, 44600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 57),
  -- Munchlax - Strength - HM04
  (446, 44600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Munchlax - Whirlwind - Egg
  (446, 44600, 18, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munchlax - Double-Edge - Egg
  (446, 44600, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munchlax - Counter - Egg
  (446, 44600, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Munchlax - Self-Destruct - Egg
  (446, 44600, 120, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Munchlax - Lick - Egg
  (446, 44600, 122, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Munchlax - Curse - Egg
  (446, 44600, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Munchlax - Charm - Egg
  (446, 44600, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Munchlax - Pursuit - Egg
  (446, 44600, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Munchlax - Natural Gift - Egg
  (446, 44600, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Munchlax - Zen Headbutt - Egg
  (446, 44600, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Munchlax - After You - Egg
  (446, 44600, 495, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Munchlax - Belch - Egg
  (446, 44600, 562, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Foresight - Level 1
  (447, 44700, 193, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Riolu - Counter - Level 6
  (447, 44700, 68, 13, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Riolu - Feint - Level 11
  (447, 44700, 364, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Riolu - Force Palm - Level 15
  (447, 44700, 395, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Riolu - Copycat - Level 19
  (447, 44700, 383, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Riolu - Screech - Level 24
  (447, 44700, 103, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Reversal - Level 29
  (447, 44700, 179, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Riolu - Nasty Plot - Level 47
  (447, 44700, 417, 13, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Riolu - Final Gambit - Level 50
  (447, 44700, 515, 13, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Riolu - Roar - TM05
  (447, 44700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 12),
  -- Riolu - Toxic - TM06
  (447, 44700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Riolu - Bulk Up - TM08
  (447, 44700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 14),
  -- Riolu - Hidden Power - TM10
  (447, 44700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Riolu - Sunny Day - TM11
  (447, 44700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Riolu - Protect - TM17
  (447, 44700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Riolu - Rain Dance - TM18
  (447, 44700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Riolu - Frustration - TM21
  (447, 44700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Riolu - Earthquake - TM26
  (447, 44700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 20),
  -- Riolu - Return - TM27
  (447, 44700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Riolu - Dig - TM28
  (447, 44700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 22),
  -- Riolu - Brick Break - TM31
  (447, 44700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 23),
  -- Riolu - Double Team - TM32
  (447, 44700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Riolu - Rock Tomb - TM39
  (447, 44700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 25),
  -- Riolu - Facade - TM42
  (447, 44700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Riolu - Rest - TM44
  (447, 44700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Riolu - Attract - TM45
  (447, 44700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Riolu - Low Sweep - TM47
  (447, 44700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 29),
  -- Riolu - Round - TM48
  (447, 44700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Riolu - Focus Blast - TM52
  (447, 44700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 31),
  -- Riolu - Fling - TM56
  (447, 44700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 32),
  -- Riolu - Shadow Claw - TM65
  (447, 44700, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 33),
  -- Riolu - Payback - TM66
  (447, 44700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 34),
  -- Riolu - Retaliate - TM67
  (447, 44700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Riolu - Swords Dance - TM75
  (447, 44700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 36),
  -- Riolu - Bulldoze - TM78
  (447, 44700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Riolu - Rock Slide - TM80
  (447, 44700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Riolu - Poison Jab - TM84
  (447, 44700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 39),
  -- Riolu - Swagger - TM87
  (447, 44700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Riolu - Sleep Talk - TM88
  (447, 44700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Riolu - Substitute - TM90
  (447, 44700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Riolu - Rock Smash - TM94
  (447, 44700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Riolu - Power-Up Punch - TM98
  (447, 44700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 44),
  -- Riolu - Confide - TM100
  (447, 44700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Riolu - Strength - HM04
  (447, 44700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Riolu - Bite - Egg
  (447, 44700, 44, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Riolu - Low Kick - Egg
  (447, 44700, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Riolu - Agility - Egg
  (447, 44700, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Riolu - High Jump Kick - Egg
  (447, 44700, 136, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Riolu - Mind Reader - Egg
  (447, 44700, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Riolu - Detect - Egg
  (447, 44700, 197, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Riolu - Cross Chop - Egg
  (447, 44700, 238, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Riolu - Crunch - Egg
  (447, 44700, 242, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Riolu - Follow Me - Egg
  (447, 44700, 266, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Riolu - Blaze Kick - Egg
  (447, 44700, 299, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Riolu - Sky Uppercut - Egg
  (447, 44700, 327, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Riolu - Iron Defense - Egg
  (447, 44700, 334, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Riolu - Vacuum Wave - Egg
  (447, 44700, 410, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Riolu - Bullet Punch - Egg
  (447, 44700, 418, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Riolu - Circle Throw - Egg
  (447, 44700, 509, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Foresight - Level 1
  (448, 44800, 193, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Detect - Level 1
  (448, 44800, 197, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Metal Claw - Level 1
  (448, 44800, 232, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Extreme Speed - Level 1
  (448, 44800, 245, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lucario - Close Combat - Level 1
  (448, 44800, 370, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lucario - Aura Sphere - Level 1
  (448, 44800, 396, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lucario - Dragon Pulse - Level 1
  (448, 44800, 406, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lucario - Counter - Level 6
  (448, 44800, 68, 13, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Lucario - Feint - Level 11
  (448, 44800, 364, 13, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Lucario - Power-Up Punch - Level 15
  (448, 44800, 612, 13, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Lucario - Swords Dance - Level 19
  (448, 44800, 14, 13, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Lucario - Metal Sound - Level 24
  (448, 44800, 319, 13, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Lucario - Bone Rush - Level 29
  (448, 44800, 198, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Lucario - Quick Guard - Level 33
  (448, 44800, 501, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Lucario - Me First - Level 37
  (448, 44800, 382, 13, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Lucario - Aura Sphere - Level 42
  (448, 44800, 396, 13, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Lucario - Calm Mind - Level 47
  (448, 44800, 347, 13, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Lucario - Heal Pulse - Level 51
  (448, 44800, 505, 13, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Lucario - Close Combat - Level 55
  (448, 44800, 370, 13, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Lucario - Dragon Pulse - Level 60
  (448, 44800, 406, 13, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Lucario - Extreme Speed - Level 65
  (448, 44800, 245, 13, NULL, 1, 65, NULL, NULL, NULL, 22),
  -- Lucario - Hone Claws - TM01
  (448, 44800, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 23),
  -- Lucario - Calm Mind - TM04
  (448, 44800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 24),
  -- Lucario - Roar - TM05
  (448, 44800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 25),
  -- Lucario - Toxic - TM06
  (448, 44800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Lucario - Bulk Up - TM08
  (448, 44800, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 27),
  -- Lucario - Hidden Power - TM10
  (448, 44800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 28),
  -- Lucario - Sunny Day - TM11
  (448, 44800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 29),
  -- Lucario - Hyper Beam - TM15
  (448, 44800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 30),
  -- Lucario - Protect - TM17
  (448, 44800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 31),
  -- Lucario - Rain Dance - TM18
  (448, 44800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 32),
  -- Lucario - Frustration - TM21
  (448, 44800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Lucario - Earthquake - TM26
  (448, 44800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 34),
  -- Lucario - Return - TM27
  (448, 44800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 35),
  -- Lucario - Dig - TM28
  (448, 44800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 36),
  -- Lucario - Psychic - TM29
  (448, 44800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 37),
  -- Lucario - Shadow Ball - TM30
  (448, 44800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 38),
  -- Lucario - Brick Break - TM31
  (448, 44800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 39),
  -- Lucario - Double Team - TM32
  (448, 44800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Lucario - Rock Tomb - TM39
  (448, 44800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 41),
  -- Lucario - Facade - TM42
  (448, 44800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Lucario - Rest - TM44
  (448, 44800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 43),
  -- Lucario - Attract - TM45
  (448, 44800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 44),
  -- Lucario - Low Sweep - TM47
  (448, 44800, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 45),
  -- Lucario - Round - TM48
  (448, 44800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Lucario - Focus Blast - TM52
  (448, 44800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 47),
  -- Lucario - Fling - TM56
  (448, 44800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 48),
  -- Lucario - Shadow Claw - TM65
  (448, 44800, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 49),
  -- Lucario - Payback - TM66
  (448, 44800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 50),
  -- Lucario - Retaliate - TM67
  (448, 44800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 51),
  -- Lucario - Giga Impact - TM68
  (448, 44800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 52),
  -- Lucario - Stone Edge - TM71
  (448, 44800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 53),
  -- Lucario - Swords Dance - TM75
  (448, 44800, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 54),
  -- Lucario - Bulldoze - TM78
  (448, 44800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 55),
  -- Lucario - Rock Slide - TM80
  (448, 44800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 56),
  -- Lucario - Poison Jab - TM84
  (448, 44800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 57),
  -- Lucario - Swagger - TM87
  (448, 44800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 58),
  -- Lucario - Sleep Talk - TM88
  (448, 44800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 59),
  -- Lucario - Substitute - TM90
  (448, 44800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 60),
  -- Lucario - Flash Cannon - TM91
  (448, 44800, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 61),
  -- Lucario - Rock Smash - TM94
  (448, 44800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Lucario - Dark Pulse - TM97
  (448, 44800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 63),
  -- Lucario - Power-Up Punch - TM98
  (448, 44800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 64),
  -- Lucario - Confide - TM100
  (448, 44800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Lucario - Strength - HM04
  (448, 44800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Hippopotas - Sand Attack - Level 1
  (449, 44900, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 7
  (449, 44900, 44, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 13
  (449, 44900, 281, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Hippopotas - Take Down - Level 19
  (449, 44900, 36, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Hippopotas - Dig - Level 19
  (449, 44900, 91, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Hippopotas - Sand Tomb - Level 25
  (449, 44900, 328, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hippopotas - Crunch - Level 31
  (449, 44900, 242, 13, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Hippopotas - Earthquake - Level 37
  (449, 44900, 89, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 13, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Hippopotas - Fissure - Level 50
  (449, 44900, 90, 13, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Hippopotas - Roar - TM05
  (449, 44900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 12),
  -- Hippopotas - Toxic - TM06
  (449, 44900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Hippopotas - Hidden Power - TM10
  (449, 44900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Hippopotas - Sunny Day - TM11
  (449, 44900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Hippopotas - Protect - TM17
  (449, 44900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Hippopotas - Frustration - TM21
  (449, 44900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Hippopotas - Earthquake - TM26
  (449, 44900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 18),
  -- Hippopotas - Return - TM27
  (449, 44900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Hippopotas - Dig - TM28
  (449, 44900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 20),
  -- Hippopotas - Double Team - TM32
  (449, 44900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Hippopotas - Sandstorm - TM37
  (449, 44900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 22),
  -- Hippopotas - Rock Tomb - TM39
  (449, 44900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 23),
  -- Hippopotas - Facade - TM42
  (449, 44900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Hippopotas - Rest - TM44
  (449, 44900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Hippopotas - Attract - TM45
  (449, 44900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Hippopotas - Round - TM48
  (449, 44900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Hippopotas - Bulldoze - TM78
  (449, 44900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 28),
  -- Hippopotas - Rock Slide - TM80
  (449, 44900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 29),
  -- Hippopotas - Swagger - TM87
  (449, 44900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 30),
  -- Hippopotas - Sleep Talk - TM88
  (449, 44900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 31),
  -- Hippopotas - Substitute - TM90
  (449, 44900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 32),
  -- Hippopotas - Rock Smash - TM94
  (449, 44900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 33),
  -- Hippopotas - Confide - TM100
  (449, 44900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 34),
  -- Hippopotas - Strength - HM04
  (449, 44900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 35),
  -- Hippopotas - Whirlwind - Egg
  (449, 44900, 18, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Hippopotas - Body Slam - Egg
  (449, 44900, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Hippopotas - Curse - Egg
  (449, 44900, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Hippopotas - Sleep Talk - Egg
  (449, 44900, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Hippopotas - Stockpile - Egg
  (449, 44900, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hippopotas - Spit Up - Egg
  (449, 44900, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Hippopotas - Swallow - Egg
  (449, 44900, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hippopotas - Revenge - Egg
  (449, 44900, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hippopotas - Slack Off - Egg
  (449, 44900, 303, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hippopotas - Sand Tomb - Egg
  (449, 44900, 328, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hippowdon - Sand Attack - Level 1
  (450, 45000, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hippowdon - Yawn - Level 1
  (450, 45000, 281, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hippowdon - Thunder Fang - Level 1
  (450, 45000, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hippowdon - Ice Fang - Level 1
  (450, 45000, 423, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hippowdon - Fire Fang - Level 1
  (450, 45000, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hippowdon - Bite - Level 7
  (450, 45000, 44, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Hippowdon - Yawn - Level 13
  (450, 45000, 281, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hippowdon - Take Down - Level 19
  (450, 45000, 36, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Hippowdon - Dig - Level 19
  (450, 45000, 91, 13, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hippowdon - Sand Tomb - Level 25
  (450, 45000, 328, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hippowdon - Crunch - Level 31
  (450, 45000, 242, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Hippowdon - Earthquake - Level 40
  (450, 45000, 89, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Hippowdon - Fissure - Level 60
  (450, 45000, 90, 13, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Hippowdon - Roar - TM05
  (450, 45000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Hippowdon - Toxic - TM06
  (450, 45000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Hippowdon - Hidden Power - TM10
  (450, 45000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Hippowdon - Sunny Day - TM11
  (450, 45000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Hippowdon - Hyper Beam - TM15
  (450, 45000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Hippowdon - Protect - TM17
  (450, 45000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Hippowdon - Frustration - TM21
  (450, 45000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Hippowdon - Earthquake - TM26
  (450, 45000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Hippowdon - Return - TM27
  (450, 45000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Hippowdon - Dig - TM28
  (450, 45000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Hippowdon - Double Team - TM32
  (450, 45000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Hippowdon - Sandstorm - TM37
  (450, 45000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 28),
  -- Hippowdon - Rock Tomb - TM39
  (450, 45000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Hippowdon - Facade - TM42
  (450, 45000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Hippowdon - Rest - TM44
  (450, 45000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Hippowdon - Attract - TM45
  (450, 45000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Hippowdon - Round - TM48
  (450, 45000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Hippowdon - Giga Impact - TM68
  (450, 45000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 34),
  -- Hippowdon - Stone Edge - TM71
  (450, 45000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 35),
  -- Hippowdon - Bulldoze - TM78
  (450, 45000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 36),
  -- Hippowdon - Rock Slide - TM80
  (450, 45000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 37),
  -- Hippowdon - Swagger - TM87
  (450, 45000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Hippowdon - Sleep Talk - TM88
  (450, 45000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Hippowdon - Substitute - TM90
  (450, 45000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Hippowdon - Rock Smash - TM94
  (450, 45000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Hippowdon - Confide - TM100
  (450, 45000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Hippowdon - Strength - HM04
  (450, 45000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 43);
