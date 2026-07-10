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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 401-450.
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
  (401, 40100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketot - Bide - Level 1
  (401, 40100, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketot - Struggle Bug - Level 6
  (401, 40100, 522, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kricketot - Bug Bite - Level 16
  (401, 40100, 450, 16, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kricketot - Snore - Tutor
  (401, 40100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 5),
  -- Kricketot - Uproar - Tutor
  (401, 40100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 6),
  -- Kricketot - Endeavor - Tutor
  (401, 40100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 7),
  -- Kricketot - Bug Bite - Tutor
  (401, 40100, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 8),

  -- Kricketune - Growl - Level 1
  (402, 40200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketune - Bide - Level 1
  (402, 40200, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketune - Fury Cutter - Level 1
  (402, 40200, 210, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kricketune - Absorb - Level 14
  (402, 40200, 71, 16, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Kricketune - Sing - Level 18
  (402, 40200, 47, 16, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kricketune - Focus Energy - Level 22
  (402, 40200, 116, 16, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kricketune - Slash - Level 26
  (402, 40200, 163, 16, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kricketune - X-Scissor - Level 30
  (402, 40200, 404, 16, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kricketune - Screech - Level 34
  (402, 40200, 103, 16, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Kricketune - Fell Stinger - Level 36
  (402, 40200, 565, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Kricketune - Taunt - Level 38
  (402, 40200, 269, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Kricketune - Night Slash - Level 42
  (402, 40200, 400, 16, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Kricketune - Sticky Web - Level 44
  (402, 40200, 564, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kricketune - Bug Buzz - Level 46
  (402, 40200, 405, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Kricketune - Perish Song - Level 50
  (402, 40200, 195, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Kricketune - Toxic - TM06
  (402, 40200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Kricketune - Hidden Power - TM10
  (402, 40200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Kricketune - Sunny Day - TM11
  (402, 40200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Kricketune - Taunt - TM12
  (402, 40200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Kricketune - Hyper Beam - TM15
  (402, 40200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Kricketune - Protect - TM17
  (402, 40200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Kricketune - Rain Dance - TM18
  (402, 40200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Kricketune - Frustration - TM21
  (402, 40200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Kricketune - Return - TM27
  (402, 40200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Kricketune - Leech Life - TM28
  (402, 40200, 141, 16, NULL, 2, NULL, NULL, 16002028, NULL, 25),
  -- Kricketune - Brick Break - TM31
  (402, 40200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Kricketune - Double Team - TM32
  (402, 40200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Kricketune - Aerial Ace - TM40
  (402, 40200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Kricketune - Facade - TM42
  (402, 40200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Kricketune - Rest - TM44
  (402, 40200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Kricketune - Attract - TM45
  (402, 40200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Kricketune - Round - TM48
  (402, 40200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Kricketune - Echoed Voice - TM49
  (402, 40200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Kricketune - False Swipe - TM54
  (402, 40200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 34),
  -- Kricketune - Giga Impact - TM68
  (402, 40200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Kricketune - Swords Dance - TM75
  (402, 40200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Kricketune - X-Scissor - TM81
  (402, 40200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 37),
  -- Kricketune - Infestation - TM83
  (402, 40200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 38),
  -- Kricketune - Swagger - TM87
  (402, 40200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Kricketune - Sleep Talk - TM88
  (402, 40200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Kricketune - Substitute - TM90
  (402, 40200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Kricketune - Confide - TM100
  (402, 40200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Kricketune - Snore - Tutor
  (402, 40200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Kricketune - Heal Bell - Tutor
  (402, 40200, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Kricketune - Uproar - Tutor
  (402, 40200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Kricketune - Knock Off - Tutor
  (402, 40200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Kricketune - Endeavor - Tutor
  (402, 40200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Kricketune - Hyper Voice - Tutor
  (402, 40200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Kricketune - Bug Bite - Tutor
  (402, 40200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Kricketune - Laser Focus - Tutor
  (402, 40200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Kricketune - Throat Chop - Tutor
  (402, 40200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Kricketune - Fury Cutter - Evolution
  (402, 40200, 210, 16, NULL, 7, NULL, NULL, NULL, NULL, 52),

  -- Shinx - Tackle - Level 1
  (403, 40300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Level 5
  (403, 40300, 43, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shinx - Charge - Level 9
  (403, 40300, 268, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shinx - Baby-Doll Eyes - Level 11
  (403, 40300, 608, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Shinx - Spark - Level 13
  (403, 40300, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shinx - Bite - Level 17
  (403, 40300, 44, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Shinx - Roar - Level 21
  (403, 40300, 46, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Shinx - Swagger - Level 25
  (403, 40300, 207, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Shinx - Thunder Fang - Level 29
  (403, 40300, 422, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Shinx - Crunch - Level 33
  (403, 40300, 242, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Shinx - Scary Face - Level 37
  (403, 40300, 184, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Shinx - Discharge - Level 41
  (403, 40300, 435, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Shinx - Wild Charge - Level 45
  (403, 40300, 528, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Shinx - Roar - TM05
  (403, 40300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 14),
  -- Shinx - Toxic - TM06
  (403, 40300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Shinx - Hidden Power - TM10
  (403, 40300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Shinx - Light Screen - TM16
  (403, 40300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 17),
  -- Shinx - Protect - TM17
  (403, 40300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Shinx - Rain Dance - TM18
  (403, 40300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Shinx - Frustration - TM21
  (403, 40300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Shinx - Thunderbolt - TM24
  (403, 40300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 21),
  -- Shinx - Thunder - TM25
  (403, 40300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 22),
  -- Shinx - Return - TM27
  (403, 40300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Shinx - Double Team - TM32
  (403, 40300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Shinx - Facade - TM42
  (403, 40300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Shinx - Rest - TM44
  (403, 40300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Shinx - Attract - TM45
  (403, 40300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Shinx - Thief - TM46
  (403, 40300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 28),
  -- Shinx - Round - TM48
  (403, 40300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Shinx - Charge Beam - TM57
  (403, 40300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 30),
  -- Shinx - Volt Switch - TM72
  (403, 40300, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 31),
  -- Shinx - Thunder Wave - TM73
  (403, 40300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 32),
  -- Shinx - Swagger - TM87
  (403, 40300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Shinx - Sleep Talk - TM88
  (403, 40300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Shinx - Substitute - TM90
  (403, 40300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Shinx - Wild Charge - TM93
  (403, 40300, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 36),
  -- Shinx - Snarl - TM95
  (403, 40300, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 37),
  -- Shinx - Confide - TM100
  (403, 40300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Shinx - Double Kick - Egg
  (403, 40300, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shinx - Take Down - Egg
  (403, 40300, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shinx - Quick Attack - Egg
  (403, 40300, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shinx - Swift - Egg
  (403, 40300, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shinx - Helping Hand - Egg
  (403, 40300, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shinx - Fake Tears - Egg
  (403, 40300, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shinx - Signal Beam - Egg
  (403, 40300, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shinx - Howl - Egg
  (403, 40300, 336, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shinx - Shock Wave - Egg
  (403, 40300, 351, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shinx - Night Slash - Egg
  (403, 40300, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shinx - Thunder Fang - Egg
  (403, 40300, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shinx - Ice Fang - Egg
  (403, 40300, 423, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shinx - Fire Fang - Egg
  (403, 40300, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shinx - Eerie Impulse - Egg
  (403, 40300, 598, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shinx - Snore - Tutor
  (403, 40300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Shinx - Iron Tail - Tutor
  (403, 40300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Shinx - Helping Hand - Tutor
  (403, 40300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Shinx - Signal Beam - Tutor
  (403, 40300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Shinx - Shock Wave - Tutor
  (403, 40300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Shinx - Magnet Rise - Tutor
  (403, 40300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Luxio - Tackle - Level 1
  (404, 40400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Level 1
  (404, 40400, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxio - Leer - Level 5
  (404, 40400, 43, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Level 9
  (404, 40400, 268, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Luxio - Spark - Level 13
  (404, 40400, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Luxio - Bite - Level 18
  (404, 40400, 44, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 23
  (404, 40400, 46, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Luxio - Swagger - Level 28
  (404, 40400, 207, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Luxio - Thunder Fang - Level 33
  (404, 40400, 422, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxio - Crunch - Level 38
  (404, 40400, 242, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Luxio - Scary Face - Level 43
  (404, 40400, 184, 16, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 48
  (404, 40400, 435, 16, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Luxio - Wild Charge - Level 53
  (404, 40400, 528, 16, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Luxio - Roar - TM05
  (404, 40400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 14),
  -- Luxio - Toxic - TM06
  (404, 40400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Luxio - Hidden Power - TM10
  (404, 40400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Luxio - Light Screen - TM16
  (404, 40400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 17),
  -- Luxio - Protect - TM17
  (404, 40400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Luxio - Rain Dance - TM18
  (404, 40400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Luxio - Frustration - TM21
  (404, 40400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Luxio - Thunderbolt - TM24
  (404, 40400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 21),
  -- Luxio - Thunder - TM25
  (404, 40400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 22),
  -- Luxio - Return - TM27
  (404, 40400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Luxio - Double Team - TM32
  (404, 40400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Luxio - Facade - TM42
  (404, 40400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Luxio - Rest - TM44
  (404, 40400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Luxio - Attract - TM45
  (404, 40400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Luxio - Thief - TM46
  (404, 40400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 28),
  -- Luxio - Round - TM48
  (404, 40400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Luxio - Charge Beam - TM57
  (404, 40400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 30),
  -- Luxio - Volt Switch - TM72
  (404, 40400, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 31),
  -- Luxio - Thunder Wave - TM73
  (404, 40400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 32),
  -- Luxio - Swagger - TM87
  (404, 40400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Luxio - Sleep Talk - TM88
  (404, 40400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Luxio - Substitute - TM90
  (404, 40400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Luxio - Wild Charge - TM93
  (404, 40400, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 36),
  -- Luxio - Snarl - TM95
  (404, 40400, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 37),
  -- Luxio - Confide - TM100
  (404, 40400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Luxio - Snore - Tutor
  (404, 40400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Luxio - Iron Tail - Tutor
  (404, 40400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Luxio - Helping Hand - Tutor
  (404, 40400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Luxio - Signal Beam - Tutor
  (404, 40400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Luxio - Shock Wave - Tutor
  (404, 40400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Luxio - Magnet Rise - Tutor
  (404, 40400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),

  -- Luxray - Tackle - Level 1
  (405, 40500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Leer - Level 1
  (405, 40500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxray - Charge - Level 1
  (405, 40500, 268, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxray - Electric Terrain - Level 1
  (405, 40500, 604, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Luxray - Leer - Level 5
  (405, 40500, 43, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Luxray - Charge - Level 9
  (405, 40500, 268, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Luxray - Spark - Level 13
  (405, 40500, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Luxray - Bite - Level 18
  (405, 40500, 44, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Luxray - Roar - Level 23
  (405, 40500, 46, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Luxray - Swagger - Level 28
  (405, 40500, 207, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Luxray - Thunder Fang - Level 35
  (405, 40500, 422, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Luxray - Crunch - Level 42
  (405, 40500, 242, 16, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Luxray - Scary Face - Level 49
  (405, 40500, 184, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Luxray - Discharge - Level 56
  (405, 40500, 435, 16, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Luxray - Wild Charge - Level 63
  (405, 40500, 528, 16, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Luxray - Electric Terrain - Level 67
  (405, 40500, 604, 16, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Luxray - Roar - TM05
  (405, 40500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Luxray - Toxic - TM06
  (405, 40500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Luxray - Hidden Power - TM10
  (405, 40500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Luxray - Hyper Beam - TM15
  (405, 40500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Luxray - Light Screen - TM16
  (405, 40500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Luxray - Protect - TM17
  (405, 40500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Luxray - Rain Dance - TM18
  (405, 40500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Luxray - Frustration - TM21
  (405, 40500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Luxray - Thunderbolt - TM24
  (405, 40500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Luxray - Thunder - TM25
  (405, 40500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Luxray - Return - TM27
  (405, 40500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Luxray - Double Team - TM32
  (405, 40500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Luxray - Facade - TM42
  (405, 40500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Luxray - Rest - TM44
  (405, 40500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Luxray - Attract - TM45
  (405, 40500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Luxray - Thief - TM46
  (405, 40500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Luxray - Round - TM48
  (405, 40500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Luxray - Charge Beam - TM57
  (405, 40500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Luxray - Giga Impact - TM68
  (405, 40500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Luxray - Volt Switch - TM72
  (405, 40500, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 36),
  -- Luxray - Thunder Wave - TM73
  (405, 40500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Luxray - Swagger - TM87
  (405, 40500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Luxray - Sleep Talk - TM88
  (405, 40500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Luxray - Substitute - TM90
  (405, 40500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Luxray - Wild Charge - TM93
  (405, 40500, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 41),
  -- Luxray - Snarl - TM95
  (405, 40500, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 42),
  -- Luxray - Confide - TM100
  (405, 40500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Luxray - Snore - Tutor
  (405, 40500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Luxray - Iron Tail - Tutor
  (405, 40500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Luxray - Helping Hand - Tutor
  (405, 40500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Luxray - Superpower - Tutor
  (405, 40500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Luxray - Signal Beam - Tutor
  (405, 40500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Luxray - Shock Wave - Tutor
  (405, 40500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Luxray - Magnet Rise - Tutor
  (405, 40500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Luxray - Laser Focus - Tutor
  (405, 40500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Luxray - Throat Chop - Tutor
  (405, 40500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Budew - Absorb - Level 1
  (406, 40600, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Growth - Level 4
  (406, 40600, 74, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Budew - Water Sport - Level 7
  (406, 40600, 346, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Budew - Stun Spore - Level 10
  (406, 40600, 78, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Budew - Mega Drain - Level 13
  (406, 40600, 72, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Budew - Worry Seed - Level 16
  (406, 40600, 388, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Budew - Toxic - TM06
  (406, 40600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 7),
  -- Budew - Venoshock - TM09
  (406, 40600, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 8),
  -- Budew - Hidden Power - TM10
  (406, 40600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Budew - Sunny Day - TM11
  (406, 40600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Budew - Protect - TM17
  (406, 40600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 11),
  -- Budew - Rain Dance - TM18
  (406, 40600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 12),
  -- Budew - Frustration - TM21
  (406, 40600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 13),
  -- Budew - Solar Beam - TM22
  (406, 40600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 14),
  -- Budew - Return - TM27
  (406, 40600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 15),
  -- Budew - Shadow Ball - TM30
  (406, 40600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 16),
  -- Budew - Double Team - TM32
  (406, 40600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 17),
  -- Budew - Sludge Bomb - TM36
  (406, 40600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 18),
  -- Budew - Facade - TM42
  (406, 40600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 19),
  -- Budew - Rest - TM44
  (406, 40600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 20),
  -- Budew - Attract - TM45
  (406, 40600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 21),
  -- Budew - Round - TM48
  (406, 40600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 22),
  -- Budew - Energy Ball - TM53
  (406, 40600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 23),
  -- Budew - Swords Dance - TM75
  (406, 40600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 24),
  -- Budew - Psych Up - TM77
  (406, 40600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 25),
  -- Budew - Grass Knot - TM86
  (406, 40600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 26),
  -- Budew - Swagger - TM87
  (406, 40600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 27),
  -- Budew - Sleep Talk - TM88
  (406, 40600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 28),
  -- Budew - Substitute - TM90
  (406, 40600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 29),
  -- Budew - Nature Power - TM96
  (406, 40600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 30),
  -- Budew - Dazzling Gleam - TM99
  (406, 40600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 31),
  -- Budew - Confide - TM100
  (406, 40600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 32),
  -- Budew - Pin Missile - Egg
  (406, 40600, 42, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Budew - Razor Leaf - Egg
  (406, 40600, 75, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Budew - Sleep Powder - Egg
  (406, 40600, 79, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Budew - Mind Reader - Egg
  (406, 40600, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Budew - Cotton Spore - Egg
  (406, 40600, 178, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Budew - Spikes - Egg
  (406, 40600, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Budew - Giga Drain - Egg
  (406, 40600, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Budew - Synthesis - Egg
  (406, 40600, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Budew - Grass Whistle - Egg
  (406, 40600, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Budew - Extrasensory - Egg
  (406, 40600, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Budew - Natural Gift - Egg
  (406, 40600, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Budew - Seed Bomb - Egg
  (406, 40600, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Budew - Leaf Storm - Egg
  (406, 40600, 437, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Budew - Snore - Tutor
  (406, 40600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Budew - Giga Drain - Tutor
  (406, 40600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Budew - Synthesis - Tutor
  (406, 40600, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Budew - Uproar - Tutor
  (406, 40600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Budew - Covet - Tutor
  (406, 40600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Budew - Worry Seed - Tutor
  (406, 40600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Budew - Seed Bomb - Tutor
  (406, 40600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Roserade - Poison Sting - Level 1
  (407, 40700, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Mega Drain - Level 1
  (407, 40700, 72, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roserade - Sweet Scent - Level 1
  (407, 40700, 230, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roserade - Weather Ball - Level 1
  (407, 40700, 311, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roserade - Magical Leaf - Level 1
  (407, 40700, 345, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Roserade - Grassy Terrain - Level 1
  (407, 40700, 580, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Roserade - Venom Drench - Level 1
  (407, 40700, 599, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Roserade - Toxic - TM06
  (407, 40700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Roserade - Venoshock - TM09
  (407, 40700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 9),
  -- Roserade - Hidden Power - TM10
  (407, 40700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 10),
  -- Roserade - Sunny Day - TM11
  (407, 40700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 11),
  -- Roserade - Hyper Beam - TM15
  (407, 40700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 12),
  -- Roserade - Protect - TM17
  (407, 40700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 13),
  -- Roserade - Rain Dance - TM18
  (407, 40700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 14),
  -- Roserade - Frustration - TM21
  (407, 40700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 15),
  -- Roserade - Solar Beam - TM22
  (407, 40700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 16),
  -- Roserade - Return - TM27
  (407, 40700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 17),
  -- Roserade - Shadow Ball - TM30
  (407, 40700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 18),
  -- Roserade - Double Team - TM32
  (407, 40700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 19),
  -- Roserade - Sludge Bomb - TM36
  (407, 40700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 20),
  -- Roserade - Facade - TM42
  (407, 40700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 21),
  -- Roserade - Rest - TM44
  (407, 40700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 22),
  -- Roserade - Attract - TM45
  (407, 40700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 23),
  -- Roserade - Round - TM48
  (407, 40700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 24),
  -- Roserade - Energy Ball - TM53
  (407, 40700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 25),
  -- Roserade - Giga Impact - TM68
  (407, 40700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 26),
  -- Roserade - Swords Dance - TM75
  (407, 40700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 27),
  -- Roserade - Psych Up - TM77
  (407, 40700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 28),
  -- Roserade - Poison Jab - TM84
  (407, 40700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 29),
  -- Roserade - Grass Knot - TM86
  (407, 40700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 30),
  -- Roserade - Swagger - TM87
  (407, 40700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 31),
  -- Roserade - Sleep Talk - TM88
  (407, 40700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 32),
  -- Roserade - Substitute - TM90
  (407, 40700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 33),
  -- Roserade - Nature Power - TM96
  (407, 40700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 34),
  -- Roserade - Dazzling Gleam - TM99
  (407, 40700, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 35),
  -- Roserade - Confide - TM100
  (407, 40700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Roserade - Snore - Tutor
  (407, 40700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Roserade - Giga Drain - Tutor
  (407, 40700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Roserade - Synthesis - Tutor
  (407, 40700, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Roserade - Covet - Tutor
  (407, 40700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Roserade - Worry Seed - Tutor
  (407, 40700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Roserade - Seed Bomb - Tutor
  (407, 40700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Roserade - Laser Focus - Tutor
  (407, 40700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),

  -- Cranidos - Headbutt - Level 1
  (408, 40800, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cranidos - Leer - Level 1
  (408, 40800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cranidos - Focus Energy - Level 6
  (408, 40800, 116, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cranidos - Pursuit - Level 10
  (408, 40800, 228, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cranidos - Take Down - Level 15
  (408, 40800, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cranidos - Scary Face - Level 19
  (408, 40800, 184, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cranidos - Assurance - Level 24
  (408, 40800, 372, 16, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cranidos - Chip Away - Level 28
  (408, 40800, 498, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cranidos - Ancient Power - Level 33
  (408, 40800, 246, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cranidos - Zen Headbutt - Level 37
  (408, 40800, 428, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cranidos - Screech - Level 42
  (408, 40800, 103, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cranidos - Head Smash - Level 46
  (408, 40800, 457, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cranidos - Roar - TM05
  (408, 40800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 13),
  -- Cranidos - Toxic - TM06
  (408, 40800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Cranidos - Hidden Power - TM10
  (408, 40800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Cranidos - Sunny Day - TM11
  (408, 40800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Cranidos - Ice Beam - TM13
  (408, 40800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 17),
  -- Cranidos - Blizzard - TM14
  (408, 40800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 18),
  -- Cranidos - Protect - TM17
  (408, 40800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Cranidos - Rain Dance - TM18
  (408, 40800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Cranidos - Frustration - TM21
  (408, 40800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Cranidos - Smack Down - TM23
  (408, 40800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 22),
  -- Cranidos - Thunderbolt - TM24
  (408, 40800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Cranidos - Thunder - TM25
  (408, 40800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Cranidos - Earthquake - TM26
  (408, 40800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Cranidos - Return - TM27
  (408, 40800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Cranidos - Double Team - TM32
  (408, 40800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Cranidos - Flamethrower - TM35
  (408, 40800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 28),
  -- Cranidos - Sandstorm - TM37
  (408, 40800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 29),
  -- Cranidos - Fire Blast - TM38
  (408, 40800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 30),
  -- Cranidos - Rock Tomb - TM39
  (408, 40800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Cranidos - Facade - TM42
  (408, 40800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Cranidos - Rest - TM44
  (408, 40800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Cranidos - Attract - TM45
  (408, 40800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Cranidos - Thief - TM46
  (408, 40800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Cranidos - Round - TM48
  (408, 40800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Cranidos - Fling - TM56
  (408, 40800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Cranidos - Payback - TM66
  (408, 40800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Cranidos - Rock Polish - TM69
  (408, 40800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 39),
  -- Cranidos - Stone Edge - TM71
  (408, 40800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Cranidos - Swords Dance - TM75
  (408, 40800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Cranidos - Bulldoze - TM78
  (408, 40800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Cranidos - Rock Slide - TM80
  (408, 40800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Cranidos - Swagger - TM87
  (408, 40800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Cranidos - Sleep Talk - TM88
  (408, 40800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Cranidos - Substitute - TM90
  (408, 40800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Cranidos - Confide - TM100
  (408, 40800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Cranidos - Whirlwind - Egg
  (408, 40800, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cranidos - Slam - Egg
  (408, 40800, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cranidos - Stomp - Egg
  (408, 40800, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cranidos - Thrash - Egg
  (408, 40800, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cranidos - Double-Edge - Egg
  (408, 40800, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cranidos - Leer - Egg
  (408, 40800, 43, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cranidos - Curse - Egg
  (408, 40800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cranidos - Iron Tail - Egg
  (408, 40800, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cranidos - Crunch - Egg
  (408, 40800, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cranidos - Hammer Arm - Egg
  (408, 40800, 359, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cranidos - Iron Head - Egg
  (408, 40800, 442, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cranidos - Fire Punch - Tutor
  (408, 40800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cranidos - Thunder Punch - Tutor
  (408, 40800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cranidos - Snore - Tutor
  (408, 40800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Cranidos - Spite - Tutor
  (408, 40800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Cranidos - Iron Tail - Tutor
  (408, 40800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Cranidos - Uproar - Tutor
  (408, 40800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Cranidos - Superpower - Tutor
  (408, 40800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Cranidos - Endeavor - Tutor
  (408, 40800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Cranidos - Shock Wave - Tutor
  (408, 40800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Cranidos - Dragon Pulse - Tutor
  (408, 40800, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Cranidos - Earth Power - Tutor
  (408, 40800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Cranidos - Zen Headbutt - Tutor
  (408, 40800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Cranidos - Iron Head - Tutor
  (408, 40800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Cranidos - Stealth Rock - Tutor
  (408, 40800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Rampardos - Headbutt - Level 1
  (409, 40900, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rampardos - Leer - Level 1
  (409, 40900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rampardos - Focus Energy - Level 1
  (409, 40900, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rampardos - Pursuit - Level 1
  (409, 40900, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rampardos - Endeavor - Level 1
  (409, 40900, 283, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rampardos - Focus Energy - Level 6
  (409, 40900, 116, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Rampardos - Pursuit - Level 10
  (409, 40900, 228, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Rampardos - Take Down - Level 15
  (409, 40900, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Rampardos - Scary Face - Level 19
  (409, 40900, 184, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Rampardos - Assurance - Level 24
  (409, 40900, 372, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Rampardos - Chip Away - Level 28
  (409, 40900, 498, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Rampardos - Ancient Power - Level 36
  (409, 40900, 246, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rampardos - Zen Headbutt - Level 43
  (409, 40900, 428, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rampardos - Screech - Level 51
  (409, 40900, 103, 16, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Rampardos - Head Smash - Level 58
  (409, 40900, 457, 16, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Rampardos - Roar - TM05
  (409, 40900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 16),
  -- Rampardos - Toxic - TM06
  (409, 40900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Rampardos - Hidden Power - TM10
  (409, 40900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Rampardos - Sunny Day - TM11
  (409, 40900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Rampardos - Ice Beam - TM13
  (409, 40900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Rampardos - Blizzard - TM14
  (409, 40900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Rampardos - Hyper Beam - TM15
  (409, 40900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Rampardos - Protect - TM17
  (409, 40900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Rampardos - Rain Dance - TM18
  (409, 40900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Rampardos - Frustration - TM21
  (409, 40900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Rampardos - Smack Down - TM23
  (409, 40900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 26),
  -- Rampardos - Thunderbolt - TM24
  (409, 40900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Rampardos - Thunder - TM25
  (409, 40900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Rampardos - Earthquake - TM26
  (409, 40900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Rampardos - Return - TM27
  (409, 40900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Rampardos - Brick Break - TM31
  (409, 40900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Rampardos - Double Team - TM32
  (409, 40900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Rampardos - Flamethrower - TM35
  (409, 40900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Rampardos - Sandstorm - TM37
  (409, 40900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Rampardos - Fire Blast - TM38
  (409, 40900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Rampardos - Rock Tomb - TM39
  (409, 40900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Rampardos - Facade - TM42
  (409, 40900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Rampardos - Rest - TM44
  (409, 40900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Rampardos - Attract - TM45
  (409, 40900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Rampardos - Thief - TM46
  (409, 40900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Rampardos - Round - TM48
  (409, 40900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Rampardos - Focus Blast - TM52
  (409, 40900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Rampardos - Fling - TM56
  (409, 40900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Rampardos - Payback - TM66
  (409, 40900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Rampardos - Giga Impact - TM68
  (409, 40900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Rampardos - Rock Polish - TM69
  (409, 40900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 46),
  -- Rampardos - Stone Edge - TM71
  (409, 40900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Rampardos - Swords Dance - TM75
  (409, 40900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 48),
  -- Rampardos - Bulldoze - TM78
  (409, 40900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Rampardos - Rock Slide - TM80
  (409, 40900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Rampardos - Dragon Tail - TM82
  (409, 40900, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 51),
  -- Rampardos - Swagger - TM87
  (409, 40900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Rampardos - Sleep Talk - TM88
  (409, 40900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Rampardos - Substitute - TM90
  (409, 40900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Rampardos - Surf - TM94
  (409, 40900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 55),
  -- Rampardos - Confide - TM100
  (409, 40900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Rampardos - Fire Punch - Tutor
  (409, 40900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Rampardos - Thunder Punch - Tutor
  (409, 40900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Rampardos - Snore - Tutor
  (409, 40900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Rampardos - Spite - Tutor
  (409, 40900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Rampardos - Outrage - Tutor
  (409, 40900, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Rampardos - Pain Split - Tutor
  (409, 40900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Rampardos - Iron Tail - Tutor
  (409, 40900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Rampardos - Uproar - Tutor
  (409, 40900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Rampardos - Focus Punch - Tutor
  (409, 40900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Rampardos - Superpower - Tutor
  (409, 40900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Rampardos - Endeavor - Tutor
  (409, 40900, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Rampardos - Shock Wave - Tutor
  (409, 40900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Rampardos - Dragon Pulse - Tutor
  (409, 40900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Rampardos - Earth Power - Tutor
  (409, 40900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Rampardos - Zen Headbutt - Tutor
  (409, 40900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Rampardos - Iron Head - Tutor
  (409, 40900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Rampardos - Stealth Rock - Tutor
  (409, 40900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Rampardos - Laser Focus - Tutor
  (409, 40900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Rampardos - Stomping Tantrum - Tutor
  (409, 40900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Rampardos - Endeavor - Evolution
  (409, 40900, 283, 16, NULL, 7, NULL, NULL, NULL, NULL, 76),

  -- Shieldon - Tackle - Level 1
  (410, 41000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shieldon - Protect - Level 1
  (410, 41000, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shieldon - Taunt - Level 6
  (410, 41000, 269, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Shieldon - Metal Sound - Level 10
  (410, 41000, 319, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shieldon - Take Down - Level 15
  (410, 41000, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shieldon - Iron Defense - Level 19
  (410, 41000, 334, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shieldon - Swagger - Level 24
  (410, 41000, 207, 16, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Shieldon - Ancient Power - Level 28
  (410, 41000, 246, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shieldon - Endure - Level 33
  (410, 41000, 203, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shieldon - Metal Burst - Level 37
  (410, 41000, 368, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shieldon - Iron Head - Level 42
  (410, 41000, 442, 16, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Shieldon - Heavy Slam - Level 46
  (410, 41000, 484, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Shieldon - Roar - TM05
  (410, 41000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 13),
  -- Shieldon - Toxic - TM06
  (410, 41000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Shieldon - Hidden Power - TM10
  (410, 41000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Shieldon - Sunny Day - TM11
  (410, 41000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Shieldon - Taunt - TM12
  (410, 41000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 17),
  -- Shieldon - Ice Beam - TM13
  (410, 41000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Shieldon - Blizzard - TM14
  (410, 41000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Shieldon - Protect - TM17
  (410, 41000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Shieldon - Rain Dance - TM18
  (410, 41000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Shieldon - Frustration - TM21
  (410, 41000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Shieldon - Smack Down - TM23
  (410, 41000, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 23),
  -- Shieldon - Thunderbolt - TM24
  (410, 41000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Shieldon - Thunder - TM25
  (410, 41000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 25),
  -- Shieldon - Earthquake - TM26
  (410, 41000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Shieldon - Return - TM27
  (410, 41000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Shieldon - Double Team - TM32
  (410, 41000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Shieldon - Flamethrower - TM35
  (410, 41000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Shieldon - Sandstorm - TM37
  (410, 41000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Shieldon - Fire Blast - TM38
  (410, 41000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 31),
  -- Shieldon - Rock Tomb - TM39
  (410, 41000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Shieldon - Torment - TM41
  (410, 41000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Shieldon - Facade - TM42
  (410, 41000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Shieldon - Rest - TM44
  (410, 41000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Shieldon - Attract - TM45
  (410, 41000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Shieldon - Round - TM48
  (410, 41000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Shieldon - Rock Polish - TM69
  (410, 41000, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 38),
  -- Shieldon - Stone Edge - TM71
  (410, 41000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 39),
  -- Shieldon - Bulldoze - TM78
  (410, 41000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 40),
  -- Shieldon - Rock Slide - TM80
  (410, 41000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Shieldon - Swagger - TM87
  (410, 41000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Shieldon - Sleep Talk - TM88
  (410, 41000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Shieldon - Substitute - TM90
  (410, 41000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Shieldon - Flash Cannon - TM91
  (410, 41000, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 45),
  -- Shieldon - Confide - TM100
  (410, 41000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Shieldon - Headbutt - Egg
  (410, 41000, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shieldon - Body Slam - Egg
  (410, 41000, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shieldon - Double-Edge - Egg
  (410, 41000, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shieldon - Counter - Egg
  (410, 41000, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shieldon - Fissure - Egg
  (410, 41000, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shieldon - Screech - Egg
  (410, 41000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shieldon - Focus Energy - Egg
  (410, 41000, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shieldon - Curse - Egg
  (410, 41000, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shieldon - Scary Face - Egg
  (410, 41000, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shieldon - Rock Blast - Egg
  (410, 41000, 350, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shieldon - Stealth Rock - Egg
  (410, 41000, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shieldon - Wide Guard - Egg
  (410, 41000, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shieldon - Guard Split - Egg
  (410, 41000, 470, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shieldon - Snore - Tutor
  (410, 41000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Shieldon - Iron Tail - Tutor
  (410, 41000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Shieldon - Iron Defense - Tutor
  (410, 41000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Shieldon - Shock Wave - Tutor
  (410, 41000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Shieldon - Magnet Rise - Tutor
  (410, 41000, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Shieldon - Earth Power - Tutor
  (410, 41000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Shieldon - Iron Head - Tutor
  (410, 41000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Shieldon - Stealth Rock - Tutor
  (410, 41000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Bastiodon - Tackle - Level 1
  (411, 41100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bastiodon - Protect - Level 1
  (411, 41100, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bastiodon - Taunt - Level 1
  (411, 41100, 269, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bastiodon - Metal Sound - Level 1
  (411, 41100, 319, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bastiodon - Block - Level 1
  (411, 41100, 335, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bastiodon - Taunt - Level 6
  (411, 41100, 269, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Bastiodon - Metal Sound - Level 10
  (411, 41100, 319, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Bastiodon - Take Down - Level 15
  (411, 41100, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Bastiodon - Iron Defense - Level 19
  (411, 41100, 334, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Bastiodon - Swagger - Level 24
  (411, 41100, 207, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Bastiodon - Ancient Power - Level 28
  (411, 41100, 246, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Bastiodon - Endure - Level 36
  (411, 41100, 203, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bastiodon - Metal Burst - Level 43
  (411, 41100, 368, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Bastiodon - Iron Head - Level 51
  (411, 41100, 442, 16, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Bastiodon - Heavy Slam - Level 58
  (411, 41100, 484, 16, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Bastiodon - Roar - TM05
  (411, 41100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 16),
  -- Bastiodon - Toxic - TM06
  (411, 41100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Bastiodon - Hidden Power - TM10
  (411, 41100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Bastiodon - Sunny Day - TM11
  (411, 41100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Bastiodon - Taunt - TM12
  (411, 41100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Bastiodon - Ice Beam - TM13
  (411, 41100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Bastiodon - Blizzard - TM14
  (411, 41100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Bastiodon - Hyper Beam - TM15
  (411, 41100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Bastiodon - Protect - TM17
  (411, 41100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Bastiodon - Rain Dance - TM18
  (411, 41100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Bastiodon - Frustration - TM21
  (411, 41100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Bastiodon - Smack Down - TM23
  (411, 41100, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 27),
  -- Bastiodon - Thunderbolt - TM24
  (411, 41100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Bastiodon - Thunder - TM25
  (411, 41100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Bastiodon - Earthquake - TM26
  (411, 41100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Bastiodon - Return - TM27
  (411, 41100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Bastiodon - Double Team - TM32
  (411, 41100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Bastiodon - Flamethrower - TM35
  (411, 41100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Bastiodon - Sandstorm - TM37
  (411, 41100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Bastiodon - Fire Blast - TM38
  (411, 41100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Bastiodon - Rock Tomb - TM39
  (411, 41100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Bastiodon - Torment - TM41
  (411, 41100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Bastiodon - Facade - TM42
  (411, 41100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Bastiodon - Rest - TM44
  (411, 41100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Bastiodon - Attract - TM45
  (411, 41100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Bastiodon - Round - TM48
  (411, 41100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Bastiodon - Giga Impact - TM68
  (411, 41100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Bastiodon - Rock Polish - TM69
  (411, 41100, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 43),
  -- Bastiodon - Stone Edge - TM71
  (411, 41100, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 44),
  -- Bastiodon - Bulldoze - TM78
  (411, 41100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 45),
  -- Bastiodon - Rock Slide - TM80
  (411, 41100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 46),
  -- Bastiodon - Swagger - TM87
  (411, 41100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Bastiodon - Sleep Talk - TM88
  (411, 41100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Bastiodon - Substitute - TM90
  (411, 41100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Bastiodon - Flash Cannon - TM91
  (411, 41100, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 50),
  -- Bastiodon - Confide - TM100
  (411, 41100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Bastiodon - Snore - Tutor
  (411, 41100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Bastiodon - Outrage - Tutor
  (411, 41100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Bastiodon - Iron Tail - Tutor
  (411, 41100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Bastiodon - Magic Coat - Tutor
  (411, 41100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Bastiodon - Iron Defense - Tutor
  (411, 41100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Bastiodon - Block - Tutor
  (411, 41100, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bastiodon - Shock Wave - Tutor
  (411, 41100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bastiodon - Magnet Rise - Tutor
  (411, 41100, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bastiodon - Earth Power - Tutor
  (411, 41100, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bastiodon - Iron Head - Tutor
  (411, 41100, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bastiodon - Stealth Rock - Tutor
  (411, 41100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bastiodon - Stomping Tantrum - Tutor
  (411, 41100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bastiodon - Block - Evolution
  (411, 41100, 335, 16, NULL, 7, NULL, NULL, NULL, NULL, 64),

  -- Burmy - Protect - Level 1
  (412, 41200, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Burmy - Tackle - Level 10
  (412, 41200, 33, 16, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Burmy - Bug Bite - Level 15
  (412, 41200, 450, 16, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Burmy - Hidden Power - Level 20
  (412, 41200, 237, 16, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Burmy - Hidden Power - TM10
  (412, 41200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 5),
  -- Burmy - Protect - TM17
  (412, 41200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 6),
  -- Burmy - Snore - Tutor
  (412, 41200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 7),
  -- Burmy - Bug Bite - Tutor
  (412, 41200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 8),
  -- Burmy - Electroweb - Tutor
  (412, 41200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 9),

  -- Wormadam - Tackle - Level 1
  (413, 41300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam - Protect - Level 1
  (413, 41300, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wormadam - Sucker Punch - Level 1
  (413, 41300, 389, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wormadam - Bug Bite - Level 1
  (413, 41300, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wormadam - Quiver Dance - Level 1
  (413, 41300, 483, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wormadam - Protect - Level 10
  (413, 41300, 182, 16, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Wormadam - Bug Bite - Level 15
  (413, 41300, 450, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wormadam - Hidden Power - Level 20
  (413, 41300, 237, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wormadam - Confusion - Level 23
  (413, 41300, 93, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Wormadam - Razor Leaf - Level 26
  (413, 41300, 75, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Wormadam - Growth - Level 29
  (413, 41300, 74, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Wormadam - Psybeam - Level 32
  (413, 41300, 60, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Wormadam - Captivate - Level 35
  (413, 41300, 445, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Wormadam - Flail - Level 38
  (413, 41300, 175, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Wormadam - Attract - Level 41
  (413, 41300, 213, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Wormadam - Psychic - Level 44
  (413, 41300, 94, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Wormadam - Leaf Storm - Level 47
  (413, 41300, 437, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Wormadam - Bug Buzz - Level 50
  (413, 41300, 405, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Wormadam - Toxic - TM06
  (413, 41300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Wormadam - Venoshock - TM09
  (413, 41300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Wormadam - Hidden Power - TM10
  (413, 41300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Wormadam - Sunny Day - TM11
  (413, 41300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Wormadam - Hyper Beam - TM15
  (413, 41300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Wormadam - Protect - TM17
  (413, 41300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Wormadam - Rain Dance - TM18
  (413, 41300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Wormadam - Safeguard - TM20
  (413, 41300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Wormadam - Frustration - TM21
  (413, 41300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Wormadam - Solar Beam - TM22
  (413, 41300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Wormadam - Return - TM27
  (413, 41300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Wormadam - Psychic - TM29
  (413, 41300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Wormadam - Shadow Ball - TM30
  (413, 41300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Wormadam - Double Team - TM32
  (413, 41300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Wormadam - Facade - TM42
  (413, 41300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Wormadam - Rest - TM44
  (413, 41300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Wormadam - Attract - TM45
  (413, 41300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Wormadam - Thief - TM46
  (413, 41300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Wormadam - Round - TM48
  (413, 41300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Wormadam - Energy Ball - TM53
  (413, 41300, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Wormadam - Giga Impact - TM68
  (413, 41300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Wormadam - Psych Up - TM77
  (413, 41300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Wormadam - Infestation - TM83
  (413, 41300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 41),
  -- Wormadam - Dream Eater - TM85
  (413, 41300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Wormadam - Grass Knot - TM86
  (413, 41300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Wormadam - Swagger - TM87
  (413, 41300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Wormadam - Sleep Talk - TM88
  (413, 41300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Wormadam - Substitute - TM90
  (413, 41300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Wormadam - Confide - TM100
  (413, 41300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Wormadam - Snore - Tutor
  (413, 41300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Wormadam - Giga Drain - Tutor
  (413, 41300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Wormadam - Synthesis - Tutor
  (413, 41300, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Wormadam - Uproar - Tutor
  (413, 41300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Wormadam - Endeavor - Tutor
  (413, 41300, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Wormadam - Skill Swap - Tutor
  (413, 41300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Wormadam - Signal Beam - Tutor
  (413, 41300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Wormadam - Worry Seed - Tutor
  (413, 41300, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Wormadam - Seed Bomb - Tutor
  (413, 41300, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Wormadam - Bug Bite - Tutor
  (413, 41300, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Wormadam - Telekinesis - Tutor
  (413, 41300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Wormadam - Ally Switch - Tutor
  (413, 41300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Wormadam - Electroweb - Tutor
  (413, 41300, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Wormadam - Quiver Dance - Evolution
  (413, 41300, 483, 16, NULL, 7, NULL, NULL, NULL, NULL, 61),

  -- Mothim - Tackle - Level 1
  (414, 41400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mothim - Protect - Level 1
  (414, 41400, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mothim - Bug Bite - Level 1
  (414, 41400, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mothim - Quiver Dance - Level 1
  (414, 41400, 483, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mothim - Protect - Level 10
  (414, 41400, 182, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Mothim - Bug Bite - Level 15
  (414, 41400, 450, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mothim - Hidden Power - Level 20
  (414, 41400, 237, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mothim - Confusion - Level 23
  (414, 41400, 93, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Mothim - Gust - Level 26
  (414, 41400, 16, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Mothim - Poison Powder - Level 29
  (414, 41400, 77, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Mothim - Psybeam - Level 32
  (414, 41400, 60, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mothim - Camouflage - Level 35
  (414, 41400, 293, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Mothim - Silver Wind - Level 38
  (414, 41400, 318, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Mothim - Air Slash - Level 41
  (414, 41400, 403, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Mothim - Psychic - Level 44
  (414, 41400, 94, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mothim - Lunge - Level 47
  (414, 41400, 679, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Mothim - Bug Buzz - Level 50
  (414, 41400, 405, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Mothim - Toxic - TM06
  (414, 41400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Mothim - Venoshock - TM09
  (414, 41400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Mothim - Hidden Power - TM10
  (414, 41400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Mothim - Sunny Day - TM11
  (414, 41400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Mothim - Hyper Beam - TM15
  (414, 41400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Mothim - Protect - TM17
  (414, 41400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Mothim - Rain Dance - TM18
  (414, 41400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Mothim - Roost - TM19
  (414, 41400, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 25),
  -- Mothim - Safeguard - TM20
  (414, 41400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Mothim - Frustration - TM21
  (414, 41400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Mothim - Solar Beam - TM22
  (414, 41400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Mothim - Return - TM27
  (414, 41400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Mothim - Psychic - TM29
  (414, 41400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Mothim - Shadow Ball - TM30
  (414, 41400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Mothim - Double Team - TM32
  (414, 41400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Mothim - Aerial Ace - TM40
  (414, 41400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Mothim - Facade - TM42
  (414, 41400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Mothim - Rest - TM44
  (414, 41400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Mothim - Attract - TM45
  (414, 41400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Mothim - Thief - TM46
  (414, 41400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Mothim - Round - TM48
  (414, 41400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Mothim - Energy Ball - TM53
  (414, 41400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Mothim - Acrobatics - TM62
  (414, 41400, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Mothim - Giga Impact - TM68
  (414, 41400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Mothim - Psych Up - TM77
  (414, 41400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Mothim - Infestation - TM83
  (414, 41400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 43),
  -- Mothim - Dream Eater - TM85
  (414, 41400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 44),
  -- Mothim - Swagger - TM87
  (414, 41400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Mothim - Sleep Talk - TM88
  (414, 41400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Mothim - U-turn - TM89
  (414, 41400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 47),
  -- Mothim - Substitute - TM90
  (414, 41400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Mothim - Confide - TM100
  (414, 41400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Mothim - Snore - Tutor
  (414, 41400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Mothim - Giga Drain - Tutor
  (414, 41400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Mothim - Skill Swap - Tutor
  (414, 41400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Mothim - Signal Beam - Tutor
  (414, 41400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Mothim - Tailwind - Tutor
  (414, 41400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Mothim - Defog - Tutor
  (414, 41400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Mothim - Bug Bite - Tutor
  (414, 41400, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mothim - Electroweb - Tutor
  (414, 41400, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mothim - Quiver Dance - Evolution
  (414, 41400, 483, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Combee - Gust - Level 1
  (415, 41500, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Sweet Scent - Level 1
  (415, 41500, 230, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combee - Bug Bite - Level 13
  (415, 41500, 450, 16, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Combee - Bug Buzz - Level 29
  (415, 41500, 405, 16, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Combee - Snore - Tutor
  (415, 41500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 5),
  -- Combee - Endeavor - Tutor
  (415, 41500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 6),
  -- Combee - Tailwind - Tutor
  (415, 41500, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 7),
  -- Combee - Bug Bite - Tutor
  (415, 41500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 8),

  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Poison Sting - Level 1
  (416, 41600, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vespiquen - Confuse Ray - Level 1
  (416, 41600, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vespiquen - Slash - Level 1
  (416, 41600, 163, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vespiquen - Destiny Bond - Level 1
  (416, 41600, 194, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vespiquen - Sweet Scent - Level 1
  (416, 41600, 230, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vespiquen - Fell Stinger - Level 1
  (416, 41600, 565, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vespiquen - Fury Cutter - Level 5
  (416, 41600, 210, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Vespiquen - Pursuit - Level 9
  (416, 41600, 228, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Vespiquen - Fury Swipes - Level 13
  (416, 41600, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Vespiquen - Defend Order - Level 17
  (416, 41600, 455, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Vespiquen - Power Gem - Level 25
  (416, 41600, 408, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Vespiquen - Heal Order - Level 29
  (416, 41600, 456, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Vespiquen - Toxic - Level 33
  (416, 41600, 92, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Vespiquen - Air Slash - Level 37
  (416, 41600, 403, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Vespiquen - Captivate - Level 41
  (416, 41600, 445, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Vespiquen - Attack Order - Level 45
  (416, 41600, 454, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Vespiquen - Swagger - Level 49
  (416, 41600, 207, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Vespiquen - Destiny Bond - Level 53
  (416, 41600, 194, 16, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Vespiquen - Fell Stinger - Level 57
  (416, 41600, 565, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Vespiquen - Toxic - TM06
  (416, 41600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Vespiquen - Venoshock - TM09
  (416, 41600, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 22),
  -- Vespiquen - Hidden Power - TM10
  (416, 41600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Vespiquen - Sunny Day - TM11
  (416, 41600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Vespiquen - Hyper Beam - TM15
  (416, 41600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Vespiquen - Protect - TM17
  (416, 41600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Vespiquen - Rain Dance - TM18
  (416, 41600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Vespiquen - Roost - TM19
  (416, 41600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 28),
  -- Vespiquen - Frustration - TM21
  (416, 41600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Vespiquen - Return - TM27
  (416, 41600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Vespiquen - Double Team - TM32
  (416, 41600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Vespiquen - Sludge Bomb - TM36
  (416, 41600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Vespiquen - Aerial Ace - TM40
  (416, 41600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Vespiquen - Facade - TM42
  (416, 41600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Vespiquen - Rest - TM44
  (416, 41600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Vespiquen - Attract - TM45
  (416, 41600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Vespiquen - Thief - TM46
  (416, 41600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Vespiquen - Round - TM48
  (416, 41600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Vespiquen - Fling - TM56
  (416, 41600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Vespiquen - Quash - TM60
  (416, 41600, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 40),
  -- Vespiquen - Acrobatics - TM62
  (416, 41600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 41),
  -- Vespiquen - Giga Impact - TM68
  (416, 41600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Vespiquen - X-Scissor - TM81
  (416, 41600, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 43),
  -- Vespiquen - Infestation - TM83
  (416, 41600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 44),
  -- Vespiquen - Swagger - TM87
  (416, 41600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Vespiquen - Sleep Talk - TM88
  (416, 41600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Vespiquen - U-turn - TM89
  (416, 41600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 47),
  -- Vespiquen - Substitute - TM90
  (416, 41600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Vespiquen - Confide - TM100
  (416, 41600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Vespiquen - Snore - Tutor
  (416, 41600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Vespiquen - Endeavor - Tutor
  (416, 41600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Vespiquen - Signal Beam - Tutor
  (416, 41600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Vespiquen - Tailwind - Tutor
  (416, 41600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Vespiquen - Defog - Tutor
  (416, 41600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Vespiquen - Bug Bite - Tutor
  (416, 41600, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Vespiquen - Laser Focus - Tutor
  (416, 41600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Vespiquen - Slash - Evolution
  (416, 41600, 163, 16, NULL, 7, NULL, NULL, NULL, NULL, 57),

  -- Pachirisu - Growl - Level 1
  (417, 41700, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pachirisu - Bide - Level 1
  (417, 41700, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pachirisu - Quick Attack - Level 5
  (417, 41700, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pachirisu - Charm - Level 9
  (417, 41700, 204, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pachirisu - Spark - Level 13
  (417, 41700, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pachirisu - Endure - Level 17
  (417, 41700, 203, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pachirisu - Nuzzle - Level 19
  (417, 41700, 609, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Pachirisu - Swift - Level 21
  (417, 41700, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pachirisu - Electro Ball - Level 25
  (417, 41700, 486, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pachirisu - Sweet Kiss - Level 29
  (417, 41700, 186, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Pachirisu - Thunder Wave - Level 33
  (417, 41700, 86, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pachirisu - Super Fang - Level 37
  (417, 41700, 162, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Pachirisu - Discharge - Level 41
  (417, 41700, 435, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Pachirisu - Last Resort - Level 45
  (417, 41700, 387, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pachirisu - Hyper Fang - Level 49
  (417, 41700, 158, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Pachirisu - Toxic - TM06
  (417, 41700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Pachirisu - Hidden Power - TM10
  (417, 41700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Pachirisu - Light Screen - TM16
  (417, 41700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 18),
  -- Pachirisu - Protect - TM17
  (417, 41700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Pachirisu - Rain Dance - TM18
  (417, 41700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Pachirisu - Frustration - TM21
  (417, 41700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Pachirisu - Thunderbolt - TM24
  (417, 41700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 22),
  -- Pachirisu - Thunder - TM25
  (417, 41700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 23),
  -- Pachirisu - Return - TM27
  (417, 41700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Pachirisu - Double Team - TM32
  (417, 41700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Pachirisu - Facade - TM42
  (417, 41700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Pachirisu - Rest - TM44
  (417, 41700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Pachirisu - Attract - TM45
  (417, 41700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Pachirisu - Round - TM48
  (417, 41700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Pachirisu - Echoed Voice - TM49
  (417, 41700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 30),
  -- Pachirisu - Fling - TM56
  (417, 41700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 31),
  -- Pachirisu - Charge Beam - TM57
  (417, 41700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 32),
  -- Pachirisu - Volt Switch - TM72
  (417, 41700, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 33),
  -- Pachirisu - Thunder Wave - TM73
  (417, 41700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 34),
  -- Pachirisu - Grass Knot - TM86
  (417, 41700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Pachirisu - Swagger - TM87
  (417, 41700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Pachirisu - Sleep Talk - TM88
  (417, 41700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Pachirisu - U-turn - TM89
  (417, 41700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 38),
  -- Pachirisu - Substitute - TM90
  (417, 41700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Pachirisu - Confide - TM100
  (417, 41700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Pachirisu - Tail Whip - Egg
  (417, 41700, 39, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pachirisu - Bite - Egg
  (417, 41700, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pachirisu - Defense Curl - Egg
  (417, 41700, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pachirisu - Flail - Egg
  (417, 41700, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pachirisu - Rollout - Egg
  (417, 41700, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pachirisu - Iron Tail - Egg
  (417, 41700, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pachirisu - Flatter - Egg
  (417, 41700, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pachirisu - Follow Me - Egg
  (417, 41700, 266, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pachirisu - Charge - Egg
  (417, 41700, 268, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pachirisu - Fake Tears - Egg
  (417, 41700, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pachirisu - Covet - Egg
  (417, 41700, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pachirisu - Bestow - Egg
  (417, 41700, 516, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pachirisu - Ion Deluge - Egg
  (417, 41700, 569, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pachirisu - Baby-Doll Eyes - Egg
  (417, 41700, 608, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pachirisu - Thunder Punch - Tutor
  (417, 41700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Pachirisu - Super Fang - Tutor
  (417, 41700, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Pachirisu - Snore - Tutor
  (417, 41700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Pachirisu - Iron Tail - Tutor
  (417, 41700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Pachirisu - Uproar - Tutor
  (417, 41700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Pachirisu - Helping Hand - Tutor
  (417, 41700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Pachirisu - Covet - Tutor
  (417, 41700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Pachirisu - Shock Wave - Tutor
  (417, 41700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Pachirisu - Last Resort - Tutor
  (417, 41700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Pachirisu - Magnet Rise - Tutor
  (417, 41700, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Pachirisu - Seed Bomb - Tutor
  (417, 41700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Pachirisu - Gunk Shot - Tutor
  (417, 41700, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Pachirisu - Electroweb - Tutor
  (417, 41700, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Pachirisu - Laser Focus - Tutor
  (417, 41700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Buizel - Sonic Boom - Level 1
  (418, 41800, 49, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buizel - Growl - Level 4
  (418, 41800, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Buizel - Water Sport - Level 7
  (418, 41800, 346, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Buizel - Quick Attack - Level 11
  (418, 41800, 98, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Buizel - Water Gun - Level 15
  (418, 41800, 55, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Buizel - Pursuit - Level 18
  (418, 41800, 228, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Buizel - Swift - Level 21
  (418, 41800, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Buizel - Aqua Jet - Level 24
  (418, 41800, 453, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buizel - Double Hit - Level 27
  (418, 41800, 458, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Buizel - Whirlpool - Level 31
  (418, 41800, 250, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Buizel - Razor Wind - Level 35
  (418, 41800, 13, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Buizel - Aqua Tail - Level 38
  (418, 41800, 401, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Buizel - Agility - Level 41
  (418, 41800, 97, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Buizel - Hydro Pump - Level 45
  (418, 41800, 56, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Buizel - Toxic - TM06
  (418, 41800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Buizel - Hail - TM07
  (418, 41800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Buizel - Bulk Up - TM08
  (418, 41800, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 17),
  -- Buizel - Hidden Power - TM10
  (418, 41800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Buizel - Ice Beam - TM13
  (418, 41800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Buizel - Blizzard - TM14
  (418, 41800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Buizel - Protect - TM17
  (418, 41800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Buizel - Rain Dance - TM18
  (418, 41800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Buizel - Frustration - TM21
  (418, 41800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Buizel - Return - TM27
  (418, 41800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Buizel - Brick Break - TM31
  (418, 41800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Buizel - Double Team - TM32
  (418, 41800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Buizel - Rock Tomb - TM39
  (418, 41800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Buizel - Facade - TM42
  (418, 41800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Buizel - Rest - TM44
  (418, 41800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Buizel - Attract - TM45
  (418, 41800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Buizel - Round - TM48
  (418, 41800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Buizel - Echoed Voice - TM49
  (418, 41800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Buizel - Scald - TM55
  (418, 41800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Buizel - Swagger - TM87
  (418, 41800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Buizel - Sleep Talk - TM88
  (418, 41800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Buizel - Substitute - TM90
  (418, 41800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Buizel - Surf - TM94
  (418, 41800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Buizel - Waterfall - TM98
  (418, 41800, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 38),
  -- Buizel - Confide - TM100
  (418, 41800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Buizel - Double Slap - Egg
  (418, 41800, 3, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Buizel - Headbutt - Egg
  (418, 41800, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Buizel - Fury Swipes - Egg
  (418, 41800, 154, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Buizel - Slash - Egg
  (418, 41800, 163, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Buizel - Mud-Slap - Egg
  (418, 41800, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Buizel - Fury Cutter - Egg
  (418, 41800, 210, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buizel - Baton Pass - Egg
  (418, 41800, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buizel - Helping Hand - Egg
  (418, 41800, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buizel - Odor Sleuth - Egg
  (418, 41800, 316, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buizel - Me First - Egg
  (418, 41800, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buizel - Aqua Ring - Egg
  (418, 41800, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buizel - Aqua Tail - Egg
  (418, 41800, 401, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buizel - Switcheroo - Egg
  (418, 41800, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buizel - Soak - Egg
  (418, 41800, 487, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buizel - Tail Slap - Egg
  (418, 41800, 541, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buizel - Ice Punch - Tutor
  (418, 41800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Buizel - Snore - Tutor
  (418, 41800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Buizel - Icy Wind - Tutor
  (418, 41800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Buizel - Iron Tail - Tutor
  (418, 41800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Buizel - Focus Punch - Tutor
  (418, 41800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Buizel - Helping Hand - Tutor
  (418, 41800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Buizel - Water Pulse - Tutor
  (418, 41800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Buizel - Aqua Tail - Tutor
  (418, 41800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Floatzel - Growl - Level 1
  (419, 41900, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floatzel - Sonic Boom - Level 1
  (419, 41900, 49, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floatzel - Quick Attack - Level 1
  (419, 41900, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floatzel - Crunch - Level 1
  (419, 41900, 242, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Floatzel - Water Sport - Level 1
  (419, 41900, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Floatzel - Ice Fang - Level 1
  (419, 41900, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Floatzel - Growl - Level 4
  (419, 41900, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Floatzel - Water Sport - Level 7
  (419, 41900, 346, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Floatzel - Quick Attack - Level 11
  (419, 41900, 98, 16, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Floatzel - Water Gun - Level 15
  (419, 41900, 55, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Floatzel - Pursuit - Level 18
  (419, 41900, 228, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Floatzel - Swift - Level 21
  (419, 41900, 129, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Floatzel - Aqua Jet - Level 24
  (419, 41900, 453, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Floatzel - Double Hit - Level 29
  (419, 41900, 458, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Floatzel - Whirlpool - Level 35
  (419, 41900, 250, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Floatzel - Razor Wind - Level 41
  (419, 41900, 13, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Floatzel - Aqua Tail - Level 46
  (419, 41900, 401, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Floatzel - Agility - Level 51
  (419, 41900, 97, 16, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Floatzel - Hydro Pump - Level 57
  (419, 41900, 56, 16, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Floatzel - Roar - TM05
  (419, 41900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Floatzel - Toxic - TM06
  (419, 41900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Floatzel - Hail - TM07
  (419, 41900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 22),
  -- Floatzel - Bulk Up - TM08
  (419, 41900, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 23),
  -- Floatzel - Hidden Power - TM10
  (419, 41900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Floatzel - Taunt - TM12
  (419, 41900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Floatzel - Ice Beam - TM13
  (419, 41900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Floatzel - Blizzard - TM14
  (419, 41900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Floatzel - Hyper Beam - TM15
  (419, 41900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Floatzel - Protect - TM17
  (419, 41900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Floatzel - Rain Dance - TM18
  (419, 41900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Floatzel - Frustration - TM21
  (419, 41900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Floatzel - Return - TM27
  (419, 41900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Floatzel - Brick Break - TM31
  (419, 41900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Floatzel - Double Team - TM32
  (419, 41900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Floatzel - Rock Tomb - TM39
  (419, 41900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Floatzel - Torment - TM41
  (419, 41900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Floatzel - Facade - TM42
  (419, 41900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Floatzel - Rest - TM44
  (419, 41900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Floatzel - Attract - TM45
  (419, 41900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Floatzel - Round - TM48
  (419, 41900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Floatzel - Echoed Voice - TM49
  (419, 41900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Floatzel - Focus Blast - TM52
  (419, 41900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Floatzel - Scald - TM55
  (419, 41900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Floatzel - Payback - TM66
  (419, 41900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Floatzel - Giga Impact - TM68
  (419, 41900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Floatzel - Swagger - TM87
  (419, 41900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Floatzel - Sleep Talk - TM88
  (419, 41900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Floatzel - Substitute - TM90
  (419, 41900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Floatzel - Surf - TM94
  (419, 41900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 49),
  -- Floatzel - Waterfall - TM98
  (419, 41900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 50),
  -- Floatzel - Confide - TM100
  (419, 41900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Floatzel - Ice Punch - Tutor
  (419, 41900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Floatzel - Low Kick - Tutor
  (419, 41900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Floatzel - Snore - Tutor
  (419, 41900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Floatzel - Icy Wind - Tutor
  (419, 41900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Floatzel - Iron Tail - Tutor
  (419, 41900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Floatzel - Focus Punch - Tutor
  (419, 41900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Floatzel - Helping Hand - Tutor
  (419, 41900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Floatzel - Water Pulse - Tutor
  (419, 41900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Floatzel - Aqua Tail - Tutor
  (419, 41900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Floatzel - Liquidation - Tutor
  (419, 41900, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Cherubi - Tackle - Level 1
  (420, 42000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherubi - Morning Sun - Level 1
  (420, 42000, 234, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherubi - Growth - Level 7
  (420, 42000, 74, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cherubi - Leech Seed - Level 10
  (420, 42000, 73, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cherubi - Helping Hand - Level 13
  (420, 42000, 270, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cherubi - Magical Leaf - Level 19
  (420, 42000, 345, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cherubi - Sunny Day - Level 22
  (420, 42000, 241, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cherubi - Worry Seed - Level 28
  (420, 42000, 388, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cherubi - Take Down - Level 31
  (420, 42000, 36, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cherubi - Solar Beam - Level 37
  (420, 42000, 76, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cherubi - Lucky Chant - Level 40
  (420, 42000, 381, 16, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cherubi - Petal Blizzard - Level 47
  (420, 42000, 572, 16, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Cherubi - Toxic - TM06
  (420, 42000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Cherubi - Hidden Power - TM10
  (420, 42000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Cherubi - Sunny Day - TM11
  (420, 42000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 15),
  -- Cherubi - Protect - TM17
  (420, 42000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Cherubi - Safeguard - TM20
  (420, 42000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 17),
  -- Cherubi - Frustration - TM21
  (420, 42000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 18),
  -- Cherubi - Solar Beam - TM22
  (420, 42000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 19),
  -- Cherubi - Return - TM27
  (420, 42000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Cherubi - Double Team - TM32
  (420, 42000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 21),
  -- Cherubi - Facade - TM42
  (420, 42000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 22),
  -- Cherubi - Rest - TM44
  (420, 42000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 23),
  -- Cherubi - Attract - TM45
  (420, 42000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 24),
  -- Cherubi - Round - TM48
  (420, 42000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 25),
  -- Cherubi - Energy Ball - TM53
  (420, 42000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 26),
  -- Cherubi - Swords Dance - TM75
  (420, 42000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 27),
  -- Cherubi - Grass Knot - TM86
  (420, 42000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 28),
  -- Cherubi - Swagger - TM87
  (420, 42000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 29),
  -- Cherubi - Sleep Talk - TM88
  (420, 42000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 30),
  -- Cherubi - Substitute - TM90
  (420, 42000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 31),
  -- Cherubi - Nature Power - TM96
  (420, 42000, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 32),
  -- Cherubi - Dazzling Gleam - TM99
  (420, 42000, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 33),
  -- Cherubi - Confide - TM100
  (420, 42000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 34),
  -- Cherubi - Razor Leaf - Egg
  (420, 42000, 75, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cherubi - Defense Curl - Egg
  (420, 42000, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cherubi - Rollout - Egg
  (420, 42000, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherubi - Sweet Scent - Egg
  (420, 42000, 230, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherubi - Nature Power - Egg
  (420, 42000, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherubi - Weather Ball - Egg
  (420, 42000, 311, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherubi - Aromatherapy - Egg
  (420, 42000, 312, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherubi - Grass Whistle - Egg
  (420, 42000, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cherubi - Tickle - Egg
  (420, 42000, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cherubi - Healing Wish - Egg
  (420, 42000, 361, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cherubi - Natural Gift - Egg
  (420, 42000, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cherubi - Seed Bomb - Egg
  (420, 42000, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cherubi - Heal Pulse - Egg
  (420, 42000, 505, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cherubi - Flower Shield - Egg
  (420, 42000, 579, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cherubi - Grassy Terrain - Egg
  (420, 42000, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cherubi - Snore - Tutor
  (420, 42000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Cherubi - Giga Drain - Tutor
  (420, 42000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Cherubi - Synthesis - Tutor
  (420, 42000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cherubi - Helping Hand - Tutor
  (420, 42000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cherubi - Worry Seed - Tutor
  (420, 42000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cherubi - Seed Bomb - Tutor
  (420, 42000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Cherrim - Tackle - Level 1
  (421, 42100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherrim - Leech Seed - Level 1
  (421, 42100, 73, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherrim - Growth - Level 1
  (421, 42100, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cherrim - Petal Dance - Level 1
  (421, 42100, 80, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cherrim - Morning Sun - Level 1
  (421, 42100, 234, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cherrim - Growth - Level 7
  (421, 42100, 74, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Cherrim - Leech Seed - Level 10
  (421, 42100, 73, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Cherrim - Helping Hand - Level 13
  (421, 42100, 270, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cherrim - Magical Leaf - Level 19
  (421, 42100, 345, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Cherrim - Sunny Day - Level 22
  (421, 42100, 241, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Cherrim - Worry Seed - Level 30
  (421, 42100, 388, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Cherrim - Take Down - Level 35
  (421, 42100, 36, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Cherrim - Solar Beam - Level 43
  (421, 42100, 76, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Cherrim - Lucky Chant - Level 48
  (421, 42100, 381, 16, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Cherrim - Petal Blizzard - Level 50
  (421, 42100, 572, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Cherrim - Toxic - TM06
  (421, 42100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Cherrim - Hidden Power - TM10
  (421, 42100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Cherrim - Sunny Day - TM11
  (421, 42100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Cherrim - Hyper Beam - TM15
  (421, 42100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Cherrim - Protect - TM17
  (421, 42100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Cherrim - Safeguard - TM20
  (421, 42100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Cherrim - Frustration - TM21
  (421, 42100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Cherrim - Solar Beam - TM22
  (421, 42100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Cherrim - Return - TM27
  (421, 42100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Cherrim - Double Team - TM32
  (421, 42100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Cherrim - Facade - TM42
  (421, 42100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Cherrim - Rest - TM44
  (421, 42100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Cherrim - Attract - TM45
  (421, 42100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Cherrim - Round - TM48
  (421, 42100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Cherrim - Energy Ball - TM53
  (421, 42100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 30),
  -- Cherrim - Giga Impact - TM68
  (421, 42100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 31),
  -- Cherrim - Swords Dance - TM75
  (421, 42100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 32),
  -- Cherrim - Grass Knot - TM86
  (421, 42100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Cherrim - Swagger - TM87
  (421, 42100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Cherrim - Sleep Talk - TM88
  (421, 42100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Cherrim - Substitute - TM90
  (421, 42100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Cherrim - Nature Power - TM96
  (421, 42100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Cherrim - Dazzling Gleam - TM99
  (421, 42100, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 38),
  -- Cherrim - Confide - TM100
  (421, 42100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Cherrim - Snore - Tutor
  (421, 42100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Cherrim - Giga Drain - Tutor
  (421, 42100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Cherrim - Synthesis - Tutor
  (421, 42100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Cherrim - Helping Hand - Tutor
  (421, 42100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Cherrim - Worry Seed - Tutor
  (421, 42100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Cherrim - Seed Bomb - Tutor
  (421, 42100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Cherrim - Laser Focus - Tutor
  (421, 42100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Cherrim - Petal Dance - Evolution
  (421, 42100, 80, 16, NULL, 7, NULL, NULL, NULL, NULL, 47),

  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Mud Sport - Level 2
  (422, 42200, 300, 16, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 4
  (422, 42200, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellos - Water Pulse - Level 7
  (422, 42200, 352, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Shellos - Mud Bomb - Level 11
  (422, 42200, 426, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Shellos - Hidden Power - Level 16
  (422, 42200, 237, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellos - Rain Dance - Level 22
  (422, 42200, 240, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Shellos - Body Slam - Level 29
  (422, 42200, 34, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shellos - Muddy Water - Level 37
  (422, 42200, 330, 16, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Shellos - Recover - Level 46
  (422, 42200, 105, 16, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Shellos - Toxic - TM06
  (422, 42200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Shellos - Hail - TM07
  (422, 42200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 12),
  -- Shellos - Hidden Power - TM10
  (422, 42200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 13),
  -- Shellos - Ice Beam - TM13
  (422, 42200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 14),
  -- Shellos - Blizzard - TM14
  (422, 42200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 15),
  -- Shellos - Protect - TM17
  (422, 42200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Shellos - Rain Dance - TM18
  (422, 42200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 17),
  -- Shellos - Frustration - TM21
  (422, 42200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 18),
  -- Shellos - Return - TM27
  (422, 42200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Shellos - Double Team - TM32
  (422, 42200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 20),
  -- Shellos - Facade - TM42
  (422, 42200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 21),
  -- Shellos - Rest - TM44
  (422, 42200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 22),
  -- Shellos - Attract - TM45
  (422, 42200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 23),
  -- Shellos - Round - TM48
  (422, 42200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 24),
  -- Shellos - Scald - TM55
  (422, 42200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 25),
  -- Shellos - Infestation - TM83
  (422, 42200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 26),
  -- Shellos - Swagger - TM87
  (422, 42200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 27),
  -- Shellos - Sleep Talk - TM88
  (422, 42200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 28),
  -- Shellos - Substitute - TM90
  (422, 42200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 29),
  -- Shellos - Surf - TM94
  (422, 42200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 30),
  -- Shellos - Confide - TM100
  (422, 42200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 31),
  -- Shellos - Mist - Egg
  (422, 42200, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Shellos - Counter - Egg
  (422, 42200, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Shellos - Fissure - Egg
  (422, 42200, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Shellos - Sludge - Egg
  (422, 42200, 124, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shellos - Amnesia - Egg
  (422, 42200, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shellos - Acid Armor - Egg
  (422, 42200, 151, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellos - Curse - Egg
  (422, 42200, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellos - Mirror Coat - Egg
  (422, 42200, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellos - Stockpile - Egg
  (422, 42200, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellos - Spit Up - Egg
  (422, 42200, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellos - Swallow - Egg
  (422, 42200, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellos - Memento - Egg
  (422, 42200, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellos - Yawn - Egg
  (422, 42200, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellos - Brine - Egg
  (422, 42200, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellos - Trump Card - Egg
  (422, 42200, 376, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellos - Clear Smog - Egg
  (422, 42200, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellos - Snore - Tutor
  (422, 42200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Shellos - Icy Wind - Tutor
  (422, 42200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Shellos - Pain Split - Tutor
  (422, 42200, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Shellos - Water Pulse - Tutor
  (422, 42200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Shellos - Earth Power - Tutor
  (422, 42200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Gastrodon - Harden - Level 1
  (423, 42300, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastrodon - Mud Sport - Level 1
  (423, 42300, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastrodon - Water Pulse - Level 1
  (423, 42300, 352, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gastrodon - Mud Sport - Level 2
  (423, 42300, 300, 16, NULL, 1, 2, NULL, NULL, NULL, 5),
  -- Gastrodon - Harden - Level 4
  (423, 42300, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gastrodon - Water Pulse - Level 7
  (423, 42300, 352, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Gastrodon - Mud Bomb - Level 11
  (423, 42300, 426, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gastrodon - Hidden Power - Level 16
  (423, 42300, 237, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 22
  (423, 42300, 240, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gastrodon - Body Slam - Level 29
  (423, 42300, 34, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gastrodon - Muddy Water - Level 41
  (423, 42300, 330, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Gastrodon - Recover - Level 54
  (423, 42300, 105, 16, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Gastrodon - Toxic - TM06
  (423, 42300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Gastrodon - Hail - TM07
  (423, 42300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 15),
  -- Gastrodon - Hidden Power - TM10
  (423, 42300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Gastrodon - Ice Beam - TM13
  (423, 42300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 17),
  -- Gastrodon - Blizzard - TM14
  (423, 42300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 18),
  -- Gastrodon - Hyper Beam - TM15
  (423, 42300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Gastrodon - Protect - TM17
  (423, 42300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Gastrodon - Rain Dance - TM18
  (423, 42300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Gastrodon - Frustration - TM21
  (423, 42300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Gastrodon - Earthquake - TM26
  (423, 42300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 23),
  -- Gastrodon - Return - TM27
  (423, 42300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Gastrodon - Double Team - TM32
  (423, 42300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Gastrodon - Sludge Wave - TM34
  (423, 42300, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 26),
  -- Gastrodon - Sludge Bomb - TM36
  (423, 42300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 27),
  -- Gastrodon - Sandstorm - TM37
  (423, 42300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Gastrodon - Rock Tomb - TM39
  (423, 42300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Gastrodon - Facade - TM42
  (423, 42300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Gastrodon - Rest - TM44
  (423, 42300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Gastrodon - Attract - TM45
  (423, 42300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Gastrodon - Round - TM48
  (423, 42300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Gastrodon - Scald - TM55
  (423, 42300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Gastrodon - Giga Impact - TM68
  (423, 42300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Gastrodon - Stone Edge - TM71
  (423, 42300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 36),
  -- Gastrodon - Bulldoze - TM78
  (423, 42300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 37),
  -- Gastrodon - Rock Slide - TM80
  (423, 42300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 38),
  -- Gastrodon - Infestation - TM83
  (423, 42300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 39),
  -- Gastrodon - Swagger - TM87
  (423, 42300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Gastrodon - Sleep Talk - TM88
  (423, 42300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Gastrodon - Substitute - TM90
  (423, 42300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Gastrodon - Surf - TM94
  (423, 42300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 43),
  -- Gastrodon - Waterfall - TM98
  (423, 42300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 44),
  -- Gastrodon - Confide - TM100
  (423, 42300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Gastrodon - Snore - Tutor
  (423, 42300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Gastrodon - Icy Wind - Tutor
  (423, 42300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Gastrodon - Pain Split - Tutor
  (423, 42300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Gastrodon - Block - Tutor
  (423, 42300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Gastrodon - Water Pulse - Tutor
  (423, 42300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Gastrodon - Earth Power - Tutor
  (423, 42300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Gastrodon - Stomping Tantrum - Tutor
  (423, 42300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Ambipom - Scratch - Level 1
  (424, 42400, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ambipom - Sand Attack - Level 1
  (424, 42400, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ambipom - Tail Whip - Level 1
  (424, 42400, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ambipom - Astonish - Level 1
  (424, 42400, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ambipom - Dual Chop - Level 1
  (424, 42400, 530, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ambipom - Sand Attack - Level 4
  (424, 42400, 28, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Ambipom - Astonish - Level 8
  (424, 42400, 310, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ambipom - Baton Pass - Level 11
  (424, 42400, 226, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Ambipom - Tickle - Level 15
  (424, 42400, 321, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ambipom - Fury Swipes - Level 18
  (424, 42400, 154, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Ambipom - Swift - Level 22
  (424, 42400, 129, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Ambipom - Screech - Level 25
  (424, 42400, 103, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Ambipom - Agility - Level 29
  (424, 42400, 97, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Ambipom - Double Hit - Level 32
  (424, 42400, 458, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Ambipom - Fling - Level 36
  (424, 42400, 374, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Ambipom - Nasty Plot - Level 39
  (424, 42400, 417, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Ambipom - Last Resort - Level 43
  (424, 42400, 387, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Ambipom - Work Up - TM01
  (424, 42400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Ambipom - Toxic - TM06
  (424, 42400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Ambipom - Hidden Power - TM10
  (424, 42400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Ambipom - Sunny Day - TM11
  (424, 42400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Ambipom - Taunt - TM12
  (424, 42400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Ambipom - Hyper Beam - TM15
  (424, 42400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Ambipom - Protect - TM17
  (424, 42400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Ambipom - Rain Dance - TM18
  (424, 42400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Ambipom - Frustration - TM21
  (424, 42400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Ambipom - Solar Beam - TM22
  (424, 42400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Ambipom - Thunderbolt - TM24
  (424, 42400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Ambipom - Thunder - TM25
  (424, 42400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Ambipom - Return - TM27
  (424, 42400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Ambipom - Shadow Ball - TM30
  (424, 42400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Ambipom - Brick Break - TM31
  (424, 42400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Ambipom - Double Team - TM32
  (424, 42400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Ambipom - Aerial Ace - TM40
  (424, 42400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Ambipom - Facade - TM42
  (424, 42400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Ambipom - Rest - TM44
  (424, 42400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Ambipom - Attract - TM45
  (424, 42400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Ambipom - Thief - TM46
  (424, 42400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Ambipom - Low Sweep - TM47
  (424, 42400, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 39),
  -- Ambipom - Round - TM48
  (424, 42400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Ambipom - Fling - TM56
  (424, 42400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Ambipom - Acrobatics - TM62
  (424, 42400, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 42),
  -- Ambipom - Shadow Claw - TM65
  (424, 42400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Ambipom - Payback - TM66
  (424, 42400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Ambipom - Giga Impact - TM68
  (424, 42400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Ambipom - Thunder Wave - TM73
  (424, 42400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Ambipom - Dream Eater - TM85
  (424, 42400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Ambipom - Grass Knot - TM86
  (424, 42400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 48),
  -- Ambipom - Swagger - TM87
  (424, 42400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Ambipom - Sleep Talk - TM88
  (424, 42400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Ambipom - U-turn - TM89
  (424, 42400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 51),
  -- Ambipom - Substitute - TM90
  (424, 42400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Ambipom - Confide - TM100
  (424, 42400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Ambipom - Fire Punch - Tutor
  (424, 42400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Ambipom - Ice Punch - Tutor
  (424, 42400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Ambipom - Thunder Punch - Tutor
  (424, 42400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Ambipom - Low Kick - Tutor
  (424, 42400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Ambipom - Snore - Tutor
  (424, 42400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Ambipom - Spite - Tutor
  (424, 42400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Ambipom - Iron Tail - Tutor
  (424, 42400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Ambipom - Uproar - Tutor
  (424, 42400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Ambipom - Focus Punch - Tutor
  (424, 42400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Ambipom - Role Play - Tutor
  (424, 42400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Ambipom - Knock Off - Tutor
  (424, 42400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Ambipom - Snatch - Tutor
  (424, 42400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Ambipom - Bounce - Tutor
  (424, 42400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Ambipom - Covet - Tutor
  (424, 42400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Ambipom - Shock Wave - Tutor
  (424, 42400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Ambipom - Water Pulse - Tutor
  (424, 42400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Ambipom - Last Resort - Tutor
  (424, 42400, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Ambipom - Seed Bomb - Tutor
  (424, 42400, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Ambipom - Gunk Shot - Tutor
  (424, 42400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Ambipom - Foul Play - Tutor
  (424, 42400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Ambipom - Laser Focus - Tutor
  (424, 42400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Drifloon - Minimize - Level 1
  (425, 42500, 107, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Constrict - Level 1
  (425, 42500, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifloon - Astonish - Level 4
  (425, 42500, 310, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drifloon - Gust - Level 8
  (425, 42500, 16, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drifloon - Focus Energy - Level 13
  (425, 42500, 116, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drifloon - Payback - Level 16
  (425, 42500, 371, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drifloon - Ominous Wind - Level 20
  (425, 42500, 466, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drifloon - Stockpile - Level 25
  (425, 42500, 254, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drifloon - Hex - Level 27
  (425, 42500, 506, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Drifloon - Spit Up - Level 32
  (425, 42500, 255, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Drifloon - Swallow - Level 32
  (425, 42500, 256, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Drifloon - Shadow Ball - Level 36
  (425, 42500, 247, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Drifloon - Amnesia - Level 40
  (425, 42500, 133, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Drifloon - Baton Pass - Level 44
  (425, 42500, 226, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Drifloon - Explosion - Level 50
  (425, 42500, 153, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Drifloon - Calm Mind - TM04
  (425, 42500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Drifloon - Toxic - TM06
  (425, 42500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Drifloon - Hidden Power - TM10
  (425, 42500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Drifloon - Sunny Day - TM11
  (425, 42500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Drifloon - Protect - TM17
  (425, 42500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Drifloon - Rain Dance - TM18
  (425, 42500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Drifloon - Frustration - TM21
  (425, 42500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Drifloon - Thunderbolt - TM24
  (425, 42500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Drifloon - Thunder - TM25
  (425, 42500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Drifloon - Return - TM27
  (425, 42500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Drifloon - Psychic - TM29
  (425, 42500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Drifloon - Shadow Ball - TM30
  (425, 42500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Drifloon - Double Team - TM32
  (425, 42500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Drifloon - Facade - TM42
  (425, 42500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Drifloon - Rest - TM44
  (425, 42500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Drifloon - Attract - TM45
  (425, 42500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Drifloon - Thief - TM46
  (425, 42500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Drifloon - Round - TM48
  (425, 42500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Drifloon - Charge Beam - TM57
  (425, 42500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Drifloon - Will-O-Wisp - TM61
  (425, 42500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Drifloon - Acrobatics - TM62
  (425, 42500, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 36),
  -- Drifloon - Embargo - TM63
  (425, 42500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 37),
  -- Drifloon - Explosion - TM64
  (425, 42500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 38),
  -- Drifloon - Payback - TM66
  (425, 42500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Drifloon - Thunder Wave - TM73
  (425, 42500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Drifloon - Gyro Ball - TM74
  (425, 42500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 41),
  -- Drifloon - Psych Up - TM77
  (425, 42500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Drifloon - Dream Eater - TM85
  (425, 42500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Drifloon - Swagger - TM87
  (425, 42500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Drifloon - Sleep Talk - TM88
  (425, 42500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Drifloon - Substitute - TM90
  (425, 42500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Drifloon - Confide - TM100
  (425, 42500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Drifloon - Body Slam - Egg
  (425, 42500, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Drifloon - Disable - Egg
  (425, 42500, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Drifloon - Hypnosis - Egg
  (425, 42500, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drifloon - Haze - Egg
  (425, 42500, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Drifloon - Destiny Bond - Egg
  (425, 42500, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drifloon - Memento - Egg
  (425, 42500, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifloon - Weather Ball - Egg
  (425, 42500, 311, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Tailwind - Egg
  (425, 42500, 366, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifloon - Defog - Egg
  (425, 42500, 432, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifloon - Clear Smog - Egg
  (425, 42500, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drifloon - Bind - Tutor
  (425, 42500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Drifloon - Snore - Tutor
  (425, 42500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Drifloon - Spite - Tutor
  (425, 42500, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Drifloon - Icy Wind - Tutor
  (425, 42500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Drifloon - Pain Split - Tutor
  (425, 42500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Drifloon - Trick - Tutor
  (425, 42500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Drifloon - Magic Coat - Tutor
  (425, 42500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Drifloon - Recycle - Tutor
  (425, 42500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Drifloon - Knock Off - Tutor
  (425, 42500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Drifloon - Skill Swap - Tutor
  (425, 42500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Drifloon - Shock Wave - Tutor
  (425, 42500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Drifloon - Tailwind - Tutor
  (425, 42500, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Drifloon - Defog - Tutor
  (425, 42500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Drifloon - Telekinesis - Tutor
  (425, 42500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Drifloon - Ally Switch - Tutor
  (425, 42500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Drifblim - Gust - Level 1
  (426, 42600, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Minimize - Level 1
  (426, 42600, 107, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifblim - Constrict - Level 1
  (426, 42600, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drifblim - Astonish - Level 1
  (426, 42600, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drifblim - Phantom Force - Level 1
  (426, 42600, 566, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drifblim - Astonish - Level 4
  (426, 42600, 310, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Drifblim - Gust - Level 8
  (426, 42600, 16, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Drifblim - Focus Energy - Level 13
  (426, 42600, 116, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Drifblim - Payback - Level 16
  (426, 42600, 371, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Drifblim - Ominous Wind - Level 20
  (426, 42600, 466, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Drifblim - Stockpile - Level 25
  (426, 42600, 254, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Drifblim - Hex - Level 27
  (426, 42600, 506, 16, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Drifblim - Spit Up - Level 34
  (426, 42600, 255, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Drifblim - Swallow - Level 34
  (426, 42600, 256, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Drifblim - Shadow Ball - Level 40
  (426, 42600, 247, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Drifblim - Amnesia - Level 46
  (426, 42600, 133, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Drifblim - Baton Pass - Level 52
  (426, 42600, 226, 16, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Drifblim - Explosion - Level 60
  (426, 42600, 153, 16, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Drifblim - Phantom Force - Level 65
  (426, 42600, 566, 16, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Drifblim - Calm Mind - TM04
  (426, 42600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Drifblim - Toxic - TM06
  (426, 42600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Drifblim - Hidden Power - TM10
  (426, 42600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Drifblim - Sunny Day - TM11
  (426, 42600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Drifblim - Hyper Beam - TM15
  (426, 42600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Drifblim - Protect - TM17
  (426, 42600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Drifblim - Rain Dance - TM18
  (426, 42600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Drifblim - Frustration - TM21
  (426, 42600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Drifblim - Thunderbolt - TM24
  (426, 42600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Drifblim - Thunder - TM25
  (426, 42600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Drifblim - Return - TM27
  (426, 42600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Drifblim - Psychic - TM29
  (426, 42600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Drifblim - Shadow Ball - TM30
  (426, 42600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Drifblim - Double Team - TM32
  (426, 42600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Drifblim - Facade - TM42
  (426, 42600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Drifblim - Rest - TM44
  (426, 42600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Drifblim - Attract - TM45
  (426, 42600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Drifblim - Thief - TM46
  (426, 42600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Drifblim - Round - TM48
  (426, 42600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Drifblim - Charge Beam - TM57
  (426, 42600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Drifblim - Will-O-Wisp - TM61
  (426, 42600, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 40),
  -- Drifblim - Acrobatics - TM62
  (426, 42600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 41),
  -- Drifblim - Embargo - TM63
  (426, 42600, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 42),
  -- Drifblim - Explosion - TM64
  (426, 42600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 43),
  -- Drifblim - Payback - TM66
  (426, 42600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Drifblim - Giga Impact - TM68
  (426, 42600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Drifblim - Thunder Wave - TM73
  (426, 42600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 46),
  -- Drifblim - Gyro Ball - TM74
  (426, 42600, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 47),
  -- Drifblim - Fly - TM76
  (426, 42600, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 48),
  -- Drifblim - Psych Up - TM77
  (426, 42600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Drifblim - Dream Eater - TM85
  (426, 42600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 50),
  -- Drifblim - Swagger - TM87
  (426, 42600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Drifblim - Sleep Talk - TM88
  (426, 42600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Drifblim - Substitute - TM90
  (426, 42600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Drifblim - Confide - TM100
  (426, 42600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Drifblim - Bind - Tutor
  (426, 42600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Drifblim - Snore - Tutor
  (426, 42600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Drifblim - Spite - Tutor
  (426, 42600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Drifblim - Icy Wind - Tutor
  (426, 42600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Drifblim - Pain Split - Tutor
  (426, 42600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Drifblim - Trick - Tutor
  (426, 42600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Drifblim - Magic Coat - Tutor
  (426, 42600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Drifblim - Recycle - Tutor
  (426, 42600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Drifblim - Knock Off - Tutor
  (426, 42600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Drifblim - Skill Swap - Tutor
  (426, 42600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Drifblim - Shock Wave - Tutor
  (426, 42600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Drifblim - Tailwind - Tutor
  (426, 42600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Drifblim - Defog - Tutor
  (426, 42600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Drifblim - Telekinesis - Tutor
  (426, 42600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Drifblim - Ally Switch - Tutor
  (426, 42600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Buneary - Pound - Level 1
  (427, 42700, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Defense Curl - Level 1
  (427, 42700, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buneary - Splash - Level 1
  (427, 42700, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Buneary - Foresight - Level 1
  (427, 42700, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Buneary - Frustration - Level 1
  (427, 42700, 218, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Buneary - Endure - Level 6
  (427, 42700, 203, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Buneary - Baby-Doll Eyes - Level 13
  (427, 42700, 608, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Buneary - Jump Kick - Level 23
  (427, 42700, 26, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Buneary - Baton Pass - Level 26
  (427, 42700, 226, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Buneary - Agility - Level 33
  (427, 42700, 97, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Buneary - Dizzy Punch - Level 36
  (427, 42700, 146, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Buneary - After You - Level 43
  (427, 42700, 495, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Buneary - Charm - Level 46
  (427, 42700, 204, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Buneary - Entrainment - Level 50
  (427, 42700, 494, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Buneary - Bounce - Level 56
  (427, 42700, 340, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Buneary - Healing Wish - Level 63
  (427, 42700, 361, 16, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Buneary - Work Up - TM01
  (427, 42700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Buneary - Toxic - TM06
  (427, 42700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Buneary - Hidden Power - TM10
  (427, 42700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Buneary - Sunny Day - TM11
  (427, 42700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Buneary - Ice Beam - TM13
  (427, 42700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Buneary - Protect - TM17
  (427, 42700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Buneary - Rain Dance - TM18
  (427, 42700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Buneary - Frustration - TM21
  (427, 42700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Buneary - Solar Beam - TM22
  (427, 42700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Buneary - Thunderbolt - TM24
  (427, 42700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Buneary - Return - TM27
  (427, 42700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Buneary - Shadow Ball - TM30
  (427, 42700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Buneary - Double Team - TM32
  (427, 42700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Buneary - Facade - TM42
  (427, 42700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Buneary - Rest - TM44
  (427, 42700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Buneary - Attract - TM45
  (427, 42700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Buneary - Round - TM48
  (427, 42700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Buneary - Fling - TM56
  (427, 42700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Buneary - Charge Beam - TM57
  (427, 42700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 36),
  -- Buneary - Thunder Wave - TM73
  (427, 42700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Buneary - Grass Knot - TM86
  (427, 42700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Buneary - Swagger - TM87
  (427, 42700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Buneary - Sleep Talk - TM88
  (427, 42700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Buneary - Substitute - TM90
  (427, 42700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Buneary - Confide - TM100
  (427, 42700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Buneary - Fire Punch - Egg
  (427, 42700, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Buneary - Ice Punch - Egg
  (427, 42700, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Buneary - Thunder Punch - Egg
  (427, 42700, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buneary - Low Kick - Egg
  (427, 42700, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buneary - Flail - Egg
  (427, 42700, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buneary - Sweet Kiss - Egg
  (427, 42700, 186, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buneary - Encore - Egg
  (427, 42700, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buneary - Fake Out - Egg
  (427, 42700, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buneary - Focus Punch - Egg
  (427, 42700, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buneary - Teeter Dance - Egg
  (427, 42700, 298, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buneary - Mud Sport - Egg
  (427, 42700, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buneary - Fake Tears - Egg
  (427, 42700, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buneary - Cosmic Power - Egg
  (427, 42700, 322, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buneary - Sky Uppercut - Egg
  (427, 42700, 327, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buneary - Copycat - Egg
  (427, 42700, 383, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Buneary - Switcheroo - Egg
  (427, 42700, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Buneary - Double Hit - Egg
  (427, 42700, 458, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Buneary - Circle Throw - Egg
  (427, 42700, 509, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Buneary - Power-Up Punch - Egg
  (427, 42700, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Buneary - Fire Punch - Tutor
  (427, 42700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Buneary - Ice Punch - Tutor
  (427, 42700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Buneary - Thunder Punch - Tutor
  (427, 42700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Buneary - Low Kick - Tutor
  (427, 42700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Buneary - Snore - Tutor
  (427, 42700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Buneary - Heal Bell - Tutor
  (427, 42700, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Buneary - Iron Tail - Tutor
  (427, 42700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Buneary - Uproar - Tutor
  (427, 42700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Buneary - Focus Punch - Tutor
  (427, 42700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Buneary - Helping Hand - Tutor
  (427, 42700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Buneary - Magic Coat - Tutor
  (427, 42700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Buneary - Endeavor - Tutor
  (427, 42700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Buneary - Hyper Voice - Tutor
  (427, 42700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Buneary - Bounce - Tutor
  (427, 42700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Buneary - Covet - Tutor
  (427, 42700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Buneary - Shock Wave - Tutor
  (427, 42700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Buneary - Water Pulse - Tutor
  (427, 42700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Buneary - Last Resort - Tutor
  (427, 42700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Buneary - Drain Punch - Tutor
  (427, 42700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Buneary - After You - Tutor
  (427, 42700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),

  -- Lopunny - Pound - Level 1
  (428, 42800, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Defense Curl - Level 1
  (428, 42800, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Splash - Level 1
  (428, 42800, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lopunny - Foresight - Level 1
  (428, 42800, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lopunny - Return - Level 1
  (428, 42800, 216, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lopunny - Mirror Coat - Level 1
  (428, 42800, 243, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lopunny - Magic Coat - Level 1
  (428, 42800, 277, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lopunny - Bounce - Level 1
  (428, 42800, 340, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lopunny - Healing Wish - Level 1
  (428, 42800, 361, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lopunny - Rototiller - Level 1
  (428, 42800, 563, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lopunny - Endure - Level 6
  (428, 42800, 203, 16, NULL, 1, 6, NULL, NULL, NULL, 11),
  -- Lopunny - Baby-Doll Eyes - Level 13
  (428, 42800, 608, 16, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 16, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Lopunny - Jump Kick - Level 23
  (428, 42800, 26, 16, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Lopunny - Baton Pass - Level 26
  (428, 42800, 226, 16, NULL, 1, 26, NULL, NULL, NULL, 15),
  -- Lopunny - Agility - Level 33
  (428, 42800, 97, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Lopunny - Dizzy Punch - Level 36
  (428, 42800, 146, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Lopunny - After You - Level 43
  (428, 42800, 495, 16, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Lopunny - Charm - Level 46
  (428, 42800, 204, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Lopunny - Entrainment - Level 53
  (428, 42800, 494, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Lopunny - Bounce - Level 56
  (428, 42800, 340, 16, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Lopunny - Healing Wish - Level 63
  (428, 42800, 361, 16, NULL, 1, 63, NULL, NULL, NULL, 22),
  -- Lopunny - High Jump Kick - Level 66
  (428, 42800, 136, 16, NULL, 1, 66, NULL, NULL, NULL, 23),
  -- Lopunny - Work Up - TM01
  (428, 42800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 24),
  -- Lopunny - Toxic - TM06
  (428, 42800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Lopunny - Hidden Power - TM10
  (428, 42800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Lopunny - Sunny Day - TM11
  (428, 42800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Lopunny - Ice Beam - TM13
  (428, 42800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 28),
  -- Lopunny - Blizzard - TM14
  (428, 42800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 29),
  -- Lopunny - Hyper Beam - TM15
  (428, 42800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 30),
  -- Lopunny - Protect - TM17
  (428, 42800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Lopunny - Rain Dance - TM18
  (428, 42800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Lopunny - Frustration - TM21
  (428, 42800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Lopunny - Solar Beam - TM22
  (428, 42800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 34),
  -- Lopunny - Thunderbolt - TM24
  (428, 42800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 35),
  -- Lopunny - Thunder - TM25
  (428, 42800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 36),
  -- Lopunny - Return - TM27
  (428, 42800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Lopunny - Shadow Ball - TM30
  (428, 42800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Lopunny - Double Team - TM32
  (428, 42800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Lopunny - Facade - TM42
  (428, 42800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Lopunny - Rest - TM44
  (428, 42800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Lopunny - Attract - TM45
  (428, 42800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Lopunny - Low Sweep - TM47
  (428, 42800, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 43),
  -- Lopunny - Round - TM48
  (428, 42800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Lopunny - Focus Blast - TM52
  (428, 42800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Lopunny - Fling - TM56
  (428, 42800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Lopunny - Charge Beam - TM57
  (428, 42800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 47),
  -- Lopunny - Brutal Swing - TM59
  (428, 42800, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 48),
  -- Lopunny - Giga Impact - TM68
  (428, 42800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Lopunny - Thunder Wave - TM73
  (428, 42800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 50),
  -- Lopunny - Grass Knot - TM86
  (428, 42800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 51),
  -- Lopunny - Swagger - TM87
  (428, 42800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Lopunny - Sleep Talk - TM88
  (428, 42800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Lopunny - Substitute - TM90
  (428, 42800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Lopunny - Confide - TM100
  (428, 42800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Lopunny - Fire Punch - Tutor
  (428, 42800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Lopunny - Ice Punch - Tutor
  (428, 42800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Lopunny - Thunder Punch - Tutor
  (428, 42800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Lopunny - Low Kick - Tutor
  (428, 42800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Lopunny - Snore - Tutor
  (428, 42800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Lopunny - Heal Bell - Tutor
  (428, 42800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Lopunny - Iron Tail - Tutor
  (428, 42800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Lopunny - Uproar - Tutor
  (428, 42800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Lopunny - Focus Punch - Tutor
  (428, 42800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Lopunny - Helping Hand - Tutor
  (428, 42800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Lopunny - Magic Coat - Tutor
  (428, 42800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Lopunny - Endeavor - Tutor
  (428, 42800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Lopunny - Hyper Voice - Tutor
  (428, 42800, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Lopunny - Bounce - Tutor
  (428, 42800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Lopunny - Covet - Tutor
  (428, 42800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Lopunny - Shock Wave - Tutor
  (428, 42800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Lopunny - Water Pulse - Tutor
  (428, 42800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Lopunny - Last Resort - Tutor
  (428, 42800, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Lopunny - Drain Punch - Tutor
  (428, 42800, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Lopunny - After You - Tutor
  (428, 42800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Lopunny - Laser Focus - Tutor
  (428, 42800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Lopunny - Return - Evolution
  (428, 42800, 216, 16, NULL, 7, NULL, NULL, NULL, NULL, 77),

  -- Mismagius - Growl - Level 1
  (429, 42900, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mismagius - Psywave - Level 1
  (429, 42900, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mismagius - Spite - Level 1
  (429, 42900, 180, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mismagius - Astonish - Level 1
  (429, 42900, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mismagius - Magical Leaf - Level 1
  (429, 42900, 345, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mismagius - Lucky Chant - Level 1
  (429, 42900, 381, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mismagius - Power Gem - Level 1
  (429, 42900, 408, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mismagius - Phantom Force - Level 1
  (429, 42900, 566, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mismagius - Mystical Fire - Level 1
  (429, 42900, 595, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Mismagius - Calm Mind - TM04
  (429, 42900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 10),
  -- Mismagius - Toxic - TM06
  (429, 42900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Mismagius - Hidden Power - TM10
  (429, 42900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 12),
  -- Mismagius - Sunny Day - TM11
  (429, 42900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 13),
  -- Mismagius - Taunt - TM12
  (429, 42900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 14),
  -- Mismagius - Hyper Beam - TM15
  (429, 42900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 15),
  -- Mismagius - Protect - TM17
  (429, 42900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Mismagius - Rain Dance - TM18
  (429, 42900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 17),
  -- Mismagius - Frustration - TM21
  (429, 42900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 18),
  -- Mismagius - Thunderbolt - TM24
  (429, 42900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 19),
  -- Mismagius - Thunder - TM25
  (429, 42900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 20),
  -- Mismagius - Return - TM27
  (429, 42900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Mismagius - Psychic - TM29
  (429, 42900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 22),
  -- Mismagius - Shadow Ball - TM30
  (429, 42900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 23),
  -- Mismagius - Double Team - TM32
  (429, 42900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Mismagius - Aerial Ace - TM40
  (429, 42900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 25),
  -- Mismagius - Torment - TM41
  (429, 42900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 26),
  -- Mismagius - Facade - TM42
  (429, 42900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Mismagius - Rest - TM44
  (429, 42900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Mismagius - Attract - TM45
  (429, 42900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Mismagius - Thief - TM46
  (429, 42900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Mismagius - Round - TM48
  (429, 42900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Mismagius - Echoed Voice - TM49
  (429, 42900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Mismagius - Energy Ball - TM53
  (429, 42900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 33),
  -- Mismagius - Charge Beam - TM57
  (429, 42900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 34),
  -- Mismagius - Will-O-Wisp - TM61
  (429, 42900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Mismagius - Embargo - TM63
  (429, 42900, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 36),
  -- Mismagius - Payback - TM66
  (429, 42900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Mismagius - Giga Impact - TM68
  (429, 42900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Mismagius - Thunder Wave - TM73
  (429, 42900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Mismagius - Psych Up - TM77
  (429, 42900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Mismagius - Dream Eater - TM85
  (429, 42900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 41),
  -- Mismagius - Swagger - TM87
  (429, 42900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Mismagius - Sleep Talk - TM88
  (429, 42900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Mismagius - Substitute - TM90
  (429, 42900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Mismagius - Trick Room - TM92
  (429, 42900, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 45),
  -- Mismagius - Dark Pulse - TM97
  (429, 42900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 46),
  -- Mismagius - Dazzling Gleam - TM99
  (429, 42900, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 47),
  -- Mismagius - Confide - TM100
  (429, 42900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Mismagius - Snore - Tutor
  (429, 42900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Mismagius - Spite - Tutor
  (429, 42900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Mismagius - Icy Wind - Tutor
  (429, 42900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Mismagius - Heal Bell - Tutor
  (429, 42900, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Mismagius - Pain Split - Tutor
  (429, 42900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Mismagius - Uproar - Tutor
  (429, 42900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Mismagius - Trick - Tutor
  (429, 42900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Mismagius - Magic Coat - Tutor
  (429, 42900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Mismagius - Skill Swap - Tutor
  (429, 42900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Mismagius - Snatch - Tutor
  (429, 42900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Mismagius - Hyper Voice - Tutor
  (429, 42900, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Mismagius - Shock Wave - Tutor
  (429, 42900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Mismagius - Wonder Room - Tutor
  (429, 42900, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Mismagius - Telekinesis - Tutor
  (429, 42900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Mismagius - Magic Room - Tutor
  (429, 42900, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Mismagius - Foul Play - Tutor
  (429, 42900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Mismagius - Ally Switch - Tutor
  (429, 42900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Mismagius - Laser Focus - Tutor
  (429, 42900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Honchkrow - Wing Attack - Level 1
  (430, 43000, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honchkrow - Haze - Level 1
  (430, 43000, 114, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honchkrow - Pursuit - Level 1
  (430, 43000, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Honchkrow - Astonish - Level 1
  (430, 43000, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Honchkrow - Sucker Punch - Level 1
  (430, 43000, 389, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Honchkrow - Night Slash - Level 1
  (430, 43000, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Honchkrow - Swagger - Level 25
  (430, 43000, 207, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Honchkrow - Nasty Plot - Level 35
  (430, 43000, 417, 16, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Honchkrow - Foul Play - Level 45
  (430, 43000, 492, 16, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Honchkrow - Night Slash - Level 55
  (430, 43000, 400, 16, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Honchkrow - Quash - Level 65
  (430, 43000, 511, 16, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Honchkrow - Dark Pulse - Level 75
  (430, 43000, 399, 16, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Honchkrow - Calm Mind - TM04
  (430, 43000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 13),
  -- Honchkrow - Toxic - TM06
  (430, 43000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Honchkrow - Hidden Power - TM10
  (430, 43000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Honchkrow - Sunny Day - TM11
  (430, 43000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Honchkrow - Taunt - TM12
  (430, 43000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 17),
  -- Honchkrow - Hyper Beam - TM15
  (430, 43000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 18),
  -- Honchkrow - Protect - TM17
  (430, 43000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Honchkrow - Rain Dance - TM18
  (430, 43000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Honchkrow - Roost - TM19
  (430, 43000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 21),
  -- Honchkrow - Frustration - TM21
  (430, 43000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Honchkrow - Return - TM27
  (430, 43000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Honchkrow - Psychic - TM29
  (430, 43000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Honchkrow - Shadow Ball - TM30
  (430, 43000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 25),
  -- Honchkrow - Double Team - TM32
  (430, 43000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Honchkrow - Aerial Ace - TM40
  (430, 43000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Honchkrow - Torment - TM41
  (430, 43000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 28),
  -- Honchkrow - Facade - TM42
  (430, 43000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Honchkrow - Rest - TM44
  (430, 43000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Honchkrow - Attract - TM45
  (430, 43000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Honchkrow - Thief - TM46
  (430, 43000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Honchkrow - Round - TM48
  (430, 43000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Honchkrow - Steel Wing - TM51
  (430, 43000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 34),
  -- Honchkrow - Quash - TM60
  (430, 43000, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 35),
  -- Honchkrow - Embargo - TM63
  (430, 43000, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 36),
  -- Honchkrow - Payback - TM66
  (430, 43000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Honchkrow - Giga Impact - TM68
  (430, 43000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Honchkrow - Thunder Wave - TM73
  (430, 43000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Honchkrow - Fly - TM76
  (430, 43000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 40),
  -- Honchkrow - Psych Up - TM77
  (430, 43000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Honchkrow - Dream Eater - TM85
  (430, 43000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 42),
  -- Honchkrow - Swagger - TM87
  (430, 43000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Honchkrow - Sleep Talk - TM88
  (430, 43000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Honchkrow - Substitute - TM90
  (430, 43000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Honchkrow - Snarl - TM95
  (430, 43000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 46),
  -- Honchkrow - Dark Pulse - TM97
  (430, 43000, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 47),
  -- Honchkrow - Confide - TM100
  (430, 43000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Honchkrow - Sky Attack - Tutor
  (430, 43000, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Honchkrow - Snore - Tutor
  (430, 43000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Honchkrow - Spite - Tutor
  (430, 43000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Honchkrow - Icy Wind - Tutor
  (430, 43000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Honchkrow - Uproar - Tutor
  (430, 43000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Honchkrow - Heat Wave - Tutor
  (430, 43000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Honchkrow - Superpower - Tutor
  (430, 43000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Honchkrow - Snatch - Tutor
  (430, 43000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Honchkrow - Tailwind - Tutor
  (430, 43000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Honchkrow - Defog - Tutor
  (430, 43000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Honchkrow - Foul Play - Tutor
  (430, 43000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Glameow - Fake Out - Level 1
  (431, 43100, 252, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glameow - Scratch - Level 5
  (431, 43100, 10, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Glameow - Growl - Level 8
  (431, 43100, 45, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Glameow - Hypnosis - Level 13
  (431, 43100, 95, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Glameow - Feint Attack - Level 17
  (431, 43100, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Glameow - Fury Swipes - Level 20
  (431, 43100, 154, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Glameow - Charm - Level 25
  (431, 43100, 204, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glameow - Assist - Level 29
  (431, 43100, 274, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Glameow - Captivate - Level 32
  (431, 43100, 445, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Glameow - Slash - Level 37
  (431, 43100, 163, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Glameow - Sucker Punch - Level 41
  (431, 43100, 389, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Glameow - Attract - Level 44
  (431, 43100, 213, 16, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Glameow - Hone Claws - Level 48
  (431, 43100, 468, 16, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Glameow - Play Rough - Level 50
  (431, 43100, 583, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Glameow - Work Up - TM01
  (431, 43100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Glameow - Toxic - TM06
  (431, 43100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Glameow - Hidden Power - TM10
  (431, 43100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Glameow - Sunny Day - TM11
  (431, 43100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Glameow - Taunt - TM12
  (431, 43100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Glameow - Protect - TM17
  (431, 43100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Glameow - Rain Dance - TM18
  (431, 43100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Glameow - Frustration - TM21
  (431, 43100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Glameow - Thunderbolt - TM24
  (431, 43100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 23),
  -- Glameow - Thunder - TM25
  (431, 43100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 24),
  -- Glameow - Return - TM27
  (431, 43100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Glameow - Shadow Ball - TM30
  (431, 43100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Glameow - Double Team - TM32
  (431, 43100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Glameow - Aerial Ace - TM40
  (431, 43100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Glameow - Torment - TM41
  (431, 43100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 29),
  -- Glameow - Facade - TM42
  (431, 43100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Glameow - Rest - TM44
  (431, 43100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Glameow - Attract - TM45
  (431, 43100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Glameow - Thief - TM46
  (431, 43100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Glameow - Round - TM48
  (431, 43100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Glameow - Echoed Voice - TM49
  (431, 43100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Glameow - Shadow Claw - TM65
  (431, 43100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 36),
  -- Glameow - Payback - TM66
  (431, 43100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Glameow - Psych Up - TM77
  (431, 43100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Glameow - Dream Eater - TM85
  (431, 43100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 39),
  -- Glameow - Swagger - TM87
  (431, 43100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Glameow - Sleep Talk - TM88
  (431, 43100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Glameow - U-turn - TM89
  (431, 43100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 42),
  -- Glameow - Substitute - TM90
  (431, 43100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Glameow - Confide - TM100
  (431, 43100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Glameow - Sand Attack - Egg
  (431, 43100, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Glameow - Tail Whip - Egg
  (431, 43100, 39, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Glameow - Bite - Egg
  (431, 43100, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Glameow - Quick Attack - Egg
  (431, 43100, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Glameow - Flail - Egg
  (431, 43100, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Glameow - Snatch - Egg
  (431, 43100, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glameow - Fake Tears - Egg
  (431, 43100, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glameow - Wake-Up Slap - Egg
  (431, 43100, 358, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glameow - Assurance - Egg
  (431, 43100, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glameow - Last Resort - Egg
  (431, 43100, 387, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glameow - Super Fang - Tutor
  (431, 43100, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Glameow - Snore - Tutor
  (431, 43100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Glameow - Iron Tail - Tutor
  (431, 43100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Glameow - Knock Off - Tutor
  (431, 43100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Glameow - Snatch - Tutor
  (431, 43100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Glameow - Hyper Voice - Tutor
  (431, 43100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Glameow - Covet - Tutor
  (431, 43100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Glameow - Shock Wave - Tutor
  (431, 43100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Glameow - Water Pulse - Tutor
  (431, 43100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Glameow - Last Resort - Tutor
  (431, 43100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Glameow - Foul Play - Tutor
  (431, 43100, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Purugly - Scratch - Level 1
  (432, 43200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purugly - Growl - Level 1
  (432, 43200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Purugly - Swagger - Level 1
  (432, 43200, 207, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Purugly - Fake Out - Level 1
  (432, 43200, 252, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Purugly - Scratch - Level 5
  (432, 43200, 10, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Purugly - Growl - Level 8
  (432, 43200, 45, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Purugly - Hypnosis - Level 13
  (432, 43200, 95, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Purugly - Feint Attack - Level 17
  (432, 43200, 185, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Purugly - Fury Swipes - Level 20
  (432, 43200, 154, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Purugly - Charm - Level 25
  (432, 43200, 204, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Purugly - Assist - Level 29
  (432, 43200, 274, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Purugly - Captivate - Level 32
  (432, 43200, 445, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Purugly - Slash - Level 37
  (432, 43200, 163, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Purugly - Body Slam - Level 45
  (432, 43200, 34, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Purugly - Attract - Level 52
  (432, 43200, 213, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Purugly - Hone Claws - Level 60
  (432, 43200, 468, 16, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Purugly - Work Up - TM01
  (432, 43200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Purugly - Roar - TM05
  (432, 43200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Purugly - Toxic - TM06
  (432, 43200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Purugly - Hidden Power - TM10
  (432, 43200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Purugly - Sunny Day - TM11
  (432, 43200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Purugly - Taunt - TM12
  (432, 43200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Purugly - Hyper Beam - TM15
  (432, 43200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Purugly - Protect - TM17
  (432, 43200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Purugly - Rain Dance - TM18
  (432, 43200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Purugly - Frustration - TM21
  (432, 43200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Purugly - Thunderbolt - TM24
  (432, 43200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Purugly - Thunder - TM25
  (432, 43200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Purugly - Return - TM27
  (432, 43200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Purugly - Shadow Ball - TM30
  (432, 43200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Purugly - Double Team - TM32
  (432, 43200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Purugly - Aerial Ace - TM40
  (432, 43200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Purugly - Torment - TM41
  (432, 43200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Purugly - Facade - TM42
  (432, 43200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Purugly - Rest - TM44
  (432, 43200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Purugly - Attract - TM45
  (432, 43200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Purugly - Thief - TM46
  (432, 43200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Purugly - Round - TM48
  (432, 43200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Purugly - Echoed Voice - TM49
  (432, 43200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Purugly - Shadow Claw - TM65
  (432, 43200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Purugly - Payback - TM66
  (432, 43200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Purugly - Giga Impact - TM68
  (432, 43200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Purugly - Psych Up - TM77
  (432, 43200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Purugly - Bulldoze - TM78
  (432, 43200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Purugly - Dream Eater - TM85
  (432, 43200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 45),
  -- Purugly - Swagger - TM87
  (432, 43200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Purugly - Sleep Talk - TM88
  (432, 43200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Purugly - U-turn - TM89
  (432, 43200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 48),
  -- Purugly - Substitute - TM90
  (432, 43200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Purugly - Confide - TM100
  (432, 43200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Purugly - Super Fang - Tutor
  (432, 43200, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Purugly - Snore - Tutor
  (432, 43200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Purugly - Iron Tail - Tutor
  (432, 43200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Purugly - Knock Off - Tutor
  (432, 43200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Purugly - Snatch - Tutor
  (432, 43200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Purugly - Hyper Voice - Tutor
  (432, 43200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Purugly - Covet - Tutor
  (432, 43200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Purugly - Shock Wave - Tutor
  (432, 43200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Purugly - Water Pulse - Tutor
  (432, 43200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Purugly - Last Resort - Tutor
  (432, 43200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Purugly - Foul Play - Tutor
  (432, 43200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Purugly - Throat Chop - Tutor
  (432, 43200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Purugly - Stomping Tantrum - Tutor
  (432, 43200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Purugly - Swagger - Evolution
  (432, 43200, 207, 16, NULL, 7, NULL, NULL, NULL, NULL, 64),

  -- Chingling - Wrap - Level 1
  (433, 43300, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 4
  (433, 43300, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Chingling - Astonish - Level 7
  (433, 43300, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chingling - Confusion - Level 10
  (433, 43300, 93, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Chingling - Yawn - Level 13
  (433, 43300, 281, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Chingling - Last Resort - Level 16
  (433, 43300, 387, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chingling - Entrainment - Level 19
  (433, 43300, 494, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Chingling - Uproar - Level 32
  (433, 43300, 253, 16, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Chingling - Psyshock - TM03
  (433, 43300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 9),
  -- Chingling - Calm Mind - TM04
  (433, 43300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 10),
  -- Chingling - Toxic - TM06
  (433, 43300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Chingling - Hidden Power - TM10
  (433, 43300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 12),
  -- Chingling - Sunny Day - TM11
  (433, 43300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 13),
  -- Chingling - Taunt - TM12
  (433, 43300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 14),
  -- Chingling - Light Screen - TM16
  (433, 43300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 15),
  -- Chingling - Protect - TM17
  (433, 43300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Chingling - Rain Dance - TM18
  (433, 43300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 17),
  -- Chingling - Safeguard - TM20
  (433, 43300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 18),
  -- Chingling - Frustration - TM21
  (433, 43300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Chingling - Return - TM27
  (433, 43300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Chingling - Psychic - TM29
  (433, 43300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 21),
  -- Chingling - Shadow Ball - TM30
  (433, 43300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 22),
  -- Chingling - Double Team - TM32
  (433, 43300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Chingling - Reflect - TM33
  (433, 43300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 24),
  -- Chingling - Torment - TM41
  (433, 43300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 25),
  -- Chingling - Facade - TM42
  (433, 43300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Chingling - Rest - TM44
  (433, 43300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Chingling - Attract - TM45
  (433, 43300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Chingling - Round - TM48
  (433, 43300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Chingling - Echoed Voice - TM49
  (433, 43300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 30),
  -- Chingling - Charge Beam - TM57
  (433, 43300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 31),
  -- Chingling - Thunder Wave - TM73
  (433, 43300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 32),
  -- Chingling - Psych Up - TM77
  (433, 43300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 33),
  -- Chingling - Dream Eater - TM85
  (433, 43300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 34),
  -- Chingling - Grass Knot - TM86
  (433, 43300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Chingling - Swagger - TM87
  (433, 43300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Chingling - Sleep Talk - TM88
  (433, 43300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Chingling - Substitute - TM90
  (433, 43300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Chingling - Trick Room - TM92
  (433, 43300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 39),
  -- Chingling - Dazzling Gleam - TM99
  (433, 43300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 40),
  -- Chingling - Confide - TM100
  (433, 43300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Chingling - Disable - Egg
  (433, 43300, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chingling - Hypnosis - Egg
  (433, 43300, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chingling - Recover - Egg
  (433, 43300, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chingling - Curse - Egg
  (433, 43300, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chingling - Future Sight - Egg
  (433, 43300, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chingling - Wish - Egg
  (433, 43300, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chingling - Skill Swap - Egg
  (433, 43300, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chingling - Cosmic Power - Egg
  (433, 43300, 322, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chingling - Stored Power - Egg
  (433, 43300, 500, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chingling - Bind - Tutor
  (433, 43300, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Chingling - Snore - Tutor
  (433, 43300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Chingling - Icy Wind - Tutor
  (433, 43300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Chingling - Heal Bell - Tutor
  (433, 43300, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Chingling - Uproar - Tutor
  (433, 43300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Chingling - Helping Hand - Tutor
  (433, 43300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Chingling - Trick - Tutor
  (433, 43300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Chingling - Magic Coat - Tutor
  (433, 43300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Chingling - Recycle - Tutor
  (433, 43300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Chingling - Knock Off - Tutor
  (433, 43300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Chingling - Skill Swap - Tutor
  (433, 43300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Chingling - Snatch - Tutor
  (433, 43300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Chingling - Hyper Voice - Tutor
  (433, 43300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Chingling - Signal Beam - Tutor
  (433, 43300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Chingling - Shock Wave - Tutor
  (433, 43300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Chingling - Gravity - Tutor
  (433, 43300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Chingling - Last Resort - Tutor
  (433, 43300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Chingling - Zen Headbutt - Tutor
  (433, 43300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Chingling - Telekinesis - Tutor
  (433, 43300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Chingling - Ally Switch - Tutor
  (433, 43300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Stunky - Scratch - Level 1
  (434, 43400, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Focus Energy - Level 1
  (434, 43400, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunky - Poison Gas - Level 3
  (434, 43400, 139, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Stunky - Screech - Level 7
  (434, 43400, 103, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Stunky - Fury Swipes - Level 9
  (434, 43400, 154, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Stunky - Smokescreen - Level 13
  (434, 43400, 108, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Stunky - Feint - Level 15
  (434, 43400, 364, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Stunky - Acid Spray - Level 19
  (434, 43400, 491, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Stunky - Bite - Level 21
  (434, 43400, 44, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Stunky - Slash - Level 25
  (434, 43400, 163, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Stunky - Night Slash - Level 31
  (434, 43400, 400, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Stunky - Memento - Level 33
  (434, 43400, 262, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Stunky - Venom Drench - Level 37
  (434, 43400, 599, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Stunky - Sucker Punch - Level 39
  (434, 43400, 389, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Stunky - Belch - Level 43
  (434, 43400, 562, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Stunky - Explosion - Level 45
  (434, 43400, 153, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Stunky - Roar - TM05
  (434, 43400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Stunky - Toxic - TM06
  (434, 43400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Stunky - Venoshock - TM09
  (434, 43400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Stunky - Hidden Power - TM10
  (434, 43400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Stunky - Sunny Day - TM11
  (434, 43400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Stunky - Taunt - TM12
  (434, 43400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Stunky - Protect - TM17
  (434, 43400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Stunky - Rain Dance - TM18
  (434, 43400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Stunky - Frustration - TM21
  (434, 43400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Stunky - Return - TM27
  (434, 43400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Stunky - Shadow Ball - TM30
  (434, 43400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Stunky - Double Team - TM32
  (434, 43400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Stunky - Flamethrower - TM35
  (434, 43400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 30),
  -- Stunky - Sludge Bomb - TM36
  (434, 43400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Stunky - Fire Blast - TM38
  (434, 43400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 32),
  -- Stunky - Torment - TM41
  (434, 43400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Stunky - Facade - TM42
  (434, 43400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Stunky - Rest - TM44
  (434, 43400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Stunky - Attract - TM45
  (434, 43400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Stunky - Thief - TM46
  (434, 43400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Stunky - Round - TM48
  (434, 43400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Stunky - Explosion - TM64
  (434, 43400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 39),
  -- Stunky - Shadow Claw - TM65
  (434, 43400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Stunky - Payback - TM66
  (434, 43400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Stunky - Swagger - TM87
  (434, 43400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Stunky - Sleep Talk - TM88
  (434, 43400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Stunky - Substitute - TM90
  (434, 43400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Stunky - Snarl - TM95
  (434, 43400, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 45),
  -- Stunky - Dark Pulse - TM97
  (434, 43400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 46),
  -- Stunky - Confide - TM100
  (434, 43400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Stunky - Double-Edge - Egg
  (434, 43400, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Stunky - Leer - Egg
  (434, 43400, 43, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stunky - Haze - Egg
  (434, 43400, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunky - Smog - Egg
  (434, 43400, 123, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunky - Scary Face - Egg
  (434, 43400, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunky - Pursuit - Egg
  (434, 43400, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunky - Iron Tail - Egg
  (434, 43400, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunky - Crunch - Egg
  (434, 43400, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Astonish - Egg
  (434, 43400, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Punishment - Egg
  (434, 43400, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunky - Flame Burst - Egg
  (434, 43400, 481, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stunky - Foul Play - Egg
  (434, 43400, 492, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stunky - Play Rough - Egg
  (434, 43400, 583, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stunky - Snore - Tutor
  (434, 43400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Stunky - Iron Tail - Tutor
  (434, 43400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Stunky - Snatch - Tutor
  (434, 43400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Stunky - Defog - Tutor
  (434, 43400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Stunky - Foul Play - Tutor
  (434, 43400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Stunky - Throat Chop - Tutor
  (434, 43400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Skuntank - Scratch - Level 1
  (435, 43500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Flamethrower - Level 1
  (435, 43500, 53, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skuntank - Screech - Level 1
  (435, 43500, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skuntank - Focus Energy - Level 1
  (435, 43500, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skuntank - Poison Gas - Level 1
  (435, 43500, 139, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Skuntank - Poison Gas - Level 3
  (435, 43500, 139, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Skuntank - Screech - Level 7
  (435, 43500, 103, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Skuntank - Fury Swipes - Level 9
  (435, 43500, 154, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Skuntank - Smokescreen - Level 13
  (435, 43500, 108, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Skuntank - Feint - Level 15
  (435, 43500, 364, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Skuntank - Acid Spray - Level 19
  (435, 43500, 491, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Skuntank - Bite - Level 21
  (435, 43500, 44, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Skuntank - Slash - Level 25
  (435, 43500, 163, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Skuntank - Night Slash - Level 31
  (435, 43500, 400, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Skuntank - Memento - Level 33
  (435, 43500, 262, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Skuntank - Venom Drench - Level 37
  (435, 43500, 599, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Skuntank - Sucker Punch - Level 39
  (435, 43500, 389, 16, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Skuntank - Belch - Level 43
  (435, 43500, 562, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Skuntank - Explosion - Level 45
  (435, 43500, 153, 16, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Skuntank - Roar - TM05
  (435, 43500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Skuntank - Toxic - TM06
  (435, 43500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Skuntank - Venoshock - TM09
  (435, 43500, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 23),
  -- Skuntank - Hidden Power - TM10
  (435, 43500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Skuntank - Sunny Day - TM11
  (435, 43500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Skuntank - Taunt - TM12
  (435, 43500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Skuntank - Hyper Beam - TM15
  (435, 43500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Skuntank - Protect - TM17
  (435, 43500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Skuntank - Rain Dance - TM18
  (435, 43500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Skuntank - Frustration - TM21
  (435, 43500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Skuntank - Return - TM27
  (435, 43500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Skuntank - Shadow Ball - TM30
  (435, 43500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Skuntank - Double Team - TM32
  (435, 43500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Skuntank - Flamethrower - TM35
  (435, 43500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Skuntank - Sludge Bomb - TM36
  (435, 43500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 35),
  -- Skuntank - Fire Blast - TM38
  (435, 43500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Skuntank - Torment - TM41
  (435, 43500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Skuntank - Facade - TM42
  (435, 43500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Skuntank - Rest - TM44
  (435, 43500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Skuntank - Attract - TM45
  (435, 43500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Skuntank - Thief - TM46
  (435, 43500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Skuntank - Round - TM48
  (435, 43500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Skuntank - Explosion - TM64
  (435, 43500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 43),
  -- Skuntank - Shadow Claw - TM65
  (435, 43500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Skuntank - Payback - TM66
  (435, 43500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 45),
  -- Skuntank - Giga Impact - TM68
  (435, 43500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Skuntank - Poison Jab - TM84
  (435, 43500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Skuntank - Swagger - TM87
  (435, 43500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Skuntank - Sleep Talk - TM88
  (435, 43500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Skuntank - Substitute - TM90
  (435, 43500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Skuntank - Snarl - TM95
  (435, 43500, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 51),
  -- Skuntank - Dark Pulse - TM97
  (435, 43500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 52),
  -- Skuntank - Confide - TM100
  (435, 43500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Skuntank - Snore - Tutor
  (435, 43500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Skuntank - Iron Tail - Tutor
  (435, 43500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Skuntank - Snatch - Tutor
  (435, 43500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Skuntank - Defog - Tutor
  (435, 43500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Skuntank - Foul Play - Tutor
  (435, 43500, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Skuntank - Throat Chop - Tutor
  (435, 43500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Skuntank - Flamethrower - Evolution
  (435, 43500, 53, 16, NULL, 7, NULL, NULL, NULL, NULL, 60),

  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 1
  (436, 43600, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzor - Hypnosis - Level 5
  (436, 43600, 95, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bronzor - Imprison - Level 9
  (436, 43600, 286, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bronzor - Confuse Ray - Level 11
  (436, 43600, 109, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Bronzor - Psywave - Level 15
  (436, 43600, 149, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bronzor - Iron Defense - Level 19
  (436, 43600, 334, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Bronzor - Feint Attack - Level 21
  (436, 43600, 185, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Bronzor - Safeguard - Level 25
  (436, 43600, 219, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Bronzor - Future Sight - Level 29
  (436, 43600, 248, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bronzor - Metal Sound - Level 31
  (436, 43600, 319, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Bronzor - Gyro Ball - Level 35
  (436, 43600, 360, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Bronzor - Extrasensory - Level 39
  (436, 43600, 326, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Bronzor - Payback - Level 41
  (436, 43600, 371, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Bronzor - Heal Block - Level 45
  (436, 43600, 377, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Bronzor - Heavy Slam - Level 49
  (436, 43600, 484, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Bronzor - Psyshock - TM03
  (436, 43600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Bronzor - Calm Mind - TM04
  (436, 43600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Bronzor - Toxic - TM06
  (436, 43600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Bronzor - Hidden Power - TM10
  (436, 43600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Bronzor - Sunny Day - TM11
  (436, 43600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Bronzor - Light Screen - TM16
  (436, 43600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Bronzor - Protect - TM17
  (436, 43600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Bronzor - Rain Dance - TM18
  (436, 43600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Bronzor - Safeguard - TM20
  (436, 43600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Bronzor - Frustration - TM21
  (436, 43600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Bronzor - Solar Beam - TM22
  (436, 43600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Bronzor - Earthquake - TM26
  (436, 43600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Bronzor - Return - TM27
  (436, 43600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Bronzor - Psychic - TM29
  (436, 43600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Bronzor - Shadow Ball - TM30
  (436, 43600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Bronzor - Double Team - TM32
  (436, 43600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Bronzor - Reflect - TM33
  (436, 43600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Bronzor - Sandstorm - TM37
  (436, 43600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Bronzor - Rock Tomb - TM39
  (436, 43600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Bronzor - Facade - TM42
  (436, 43600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Bronzor - Rest - TM44
  (436, 43600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Bronzor - Round - TM48
  (436, 43600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Bronzor - Charge Beam - TM57
  (436, 43600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Bronzor - Payback - TM66
  (436, 43600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Bronzor - Rock Polish - TM69
  (436, 43600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Bronzor - Gyro Ball - TM74
  (436, 43600, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 42),
  -- Bronzor - Psych Up - TM77
  (436, 43600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Bronzor - Bulldoze - TM78
  (436, 43600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Bronzor - Rock Slide - TM80
  (436, 43600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Bronzor - Dream Eater - TM85
  (436, 43600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 46),
  -- Bronzor - Grass Knot - TM86
  (436, 43600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Bronzor - Swagger - TM87
  (436, 43600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Bronzor - Sleep Talk - TM88
  (436, 43600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Bronzor - Substitute - TM90
  (436, 43600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Bronzor - Flash Cannon - TM91
  (436, 43600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 51),
  -- Bronzor - Trick Room - TM92
  (436, 43600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Bronzor - Confide - TM100
  (436, 43600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Bronzor - Snore - Tutor
  (436, 43600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Bronzor - Trick - Tutor
  (436, 43600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Bronzor - Recycle - Tutor
  (436, 43600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Bronzor - Skill Swap - Tutor
  (436, 43600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bronzor - Signal Beam - Tutor
  (436, 43600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bronzor - Iron Defense - Tutor
  (436, 43600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bronzor - Gravity - Tutor
  (436, 43600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bronzor - Stealth Rock - Tutor
  (436, 43600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bronzor - Wonder Room - Tutor
  (436, 43600, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bronzor - Telekinesis - Tutor
  (436, 43600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bronzor - Ally Switch - Tutor
  (436, 43600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Confusion - Level 1
  (437, 43700, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzong - Hypnosis - Level 1
  (437, 43700, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bronzong - Rain Dance - Level 1
  (437, 43700, 240, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bronzong - Sunny Day - Level 1
  (437, 43700, 241, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bronzong - Imprison - Level 1
  (437, 43700, 286, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bronzong - Block - Level 1
  (437, 43700, 335, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Bronzong - Hypnosis - Level 5
  (437, 43700, 95, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Bronzong - Imprison - Level 9
  (437, 43700, 286, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Bronzong - Confuse Ray - Level 11
  (437, 43700, 109, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Bronzong - Psywave - Level 15
  (437, 43700, 149, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Bronzong - Iron Defense - Level 19
  (437, 43700, 334, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Bronzong - Feint Attack - Level 21
  (437, 43700, 185, 16, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Bronzong - Safeguard - Level 25
  (437, 43700, 219, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Bronzong - Future Sight - Level 29
  (437, 43700, 248, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Bronzong - Metal Sound - Level 31
  (437, 43700, 319, 16, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Bronzong - Gyro Ball - Level 36
  (437, 43700, 360, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Bronzong - Extrasensory - Level 42
  (437, 43700, 326, 16, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Bronzong - Payback - Level 46
  (437, 43700, 371, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Bronzong - Heal Block - Level 52
  (437, 43700, 377, 16, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Bronzong - Heavy Slam - Level 58
  (437, 43700, 484, 16, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Bronzong - Psyshock - TM03
  (437, 43700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 22),
  -- Bronzong - Calm Mind - TM04
  (437, 43700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Bronzong - Toxic - TM06
  (437, 43700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Bronzong - Hidden Power - TM10
  (437, 43700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Bronzong - Sunny Day - TM11
  (437, 43700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Bronzong - Hyper Beam - TM15
  (437, 43700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Bronzong - Light Screen - TM16
  (437, 43700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Bronzong - Protect - TM17
  (437, 43700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Bronzong - Rain Dance - TM18
  (437, 43700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Bronzong - Safeguard - TM20
  (437, 43700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 31),
  -- Bronzong - Frustration - TM21
  (437, 43700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Bronzong - Solar Beam - TM22
  (437, 43700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 33),
  -- Bronzong - Earthquake - TM26
  (437, 43700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 34),
  -- Bronzong - Return - TM27
  (437, 43700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Bronzong - Psychic - TM29
  (437, 43700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 36),
  -- Bronzong - Shadow Ball - TM30
  (437, 43700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 37),
  -- Bronzong - Double Team - TM32
  (437, 43700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Bronzong - Reflect - TM33
  (437, 43700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 39),
  -- Bronzong - Sandstorm - TM37
  (437, 43700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 40),
  -- Bronzong - Rock Tomb - TM39
  (437, 43700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 41),
  -- Bronzong - Facade - TM42
  (437, 43700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 42),
  -- Bronzong - Rest - TM44
  (437, 43700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 43),
  -- Bronzong - Round - TM48
  (437, 43700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Bronzong - Charge Beam - TM57
  (437, 43700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 45),
  -- Bronzong - Explosion - TM64
  (437, 43700, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 46),
  -- Bronzong - Payback - TM66
  (437, 43700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Bronzong - Giga Impact - TM68
  (437, 43700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Bronzong - Rock Polish - TM69
  (437, 43700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 49),
  -- Bronzong - Gyro Ball - TM74
  (437, 43700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 50),
  -- Bronzong - Psych Up - TM77
  (437, 43700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Bronzong - Bulldoze - TM78
  (437, 43700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Bronzong - Rock Slide - TM80
  (437, 43700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Bronzong - Dream Eater - TM85
  (437, 43700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 54),
  -- Bronzong - Grass Knot - TM86
  (437, 43700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 55),
  -- Bronzong - Swagger - TM87
  (437, 43700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Bronzong - Sleep Talk - TM88
  (437, 43700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Bronzong - Substitute - TM90
  (437, 43700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Bronzong - Flash Cannon - TM91
  (437, 43700, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 59),
  -- Bronzong - Trick Room - TM92
  (437, 43700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Bronzong - Confide - TM100
  (437, 43700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Bronzong - Snore - Tutor
  (437, 43700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bronzong - Trick - Tutor
  (437, 43700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bronzong - Recycle - Tutor
  (437, 43700, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Bronzong - Skill Swap - Tutor
  (437, 43700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Bronzong - Signal Beam - Tutor
  (437, 43700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Bronzong - Iron Defense - Tutor
  (437, 43700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Bronzong - Block - Tutor
  (437, 43700, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Bronzong - Gravity - Tutor
  (437, 43700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Bronzong - Zen Headbutt - Tutor
  (437, 43700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Bronzong - Iron Head - Tutor
  (437, 43700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Bronzong - Stealth Rock - Tutor
  (437, 43700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Bronzong - Wonder Room - Tutor
  (437, 43700, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Bronzong - Telekinesis - Tutor
  (437, 43700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Bronzong - Ally Switch - Tutor
  (437, 43700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Bronzong - Block - Evolution
  (437, 43700, 335, 16, NULL, 7, NULL, NULL, NULL, NULL, 76),

  -- Bonsly - Fake Tears - Level 1
  (438, 43800, 313, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Level 1
  (438, 43800, 383, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 5
  (438, 43800, 175, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bonsly - Low Kick - Level 8
  (438, 43800, 67, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bonsly - Rock Throw - Level 12
  (438, 43800, 88, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 15
  (438, 43800, 102, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bonsly - Feint Attack - Level 19
  (438, 43800, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Bonsly - Tearful Look - Level 22
  (438, 43800, 715, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Bonsly - Rock Tomb - Level 26
  (438, 43800, 317, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Bonsly - Block - Level 29
  (438, 43800, 335, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bonsly - Rock Slide - Level 33
  (438, 43800, 157, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Bonsly - Counter - Level 36
  (438, 43800, 68, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bonsly - Sucker Punch - Level 40
  (438, 43800, 389, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bonsly - Double-Edge - Level 43
  (438, 43800, 38, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Bonsly - Calm Mind - TM04
  (438, 43800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 15),
  -- Bonsly - Toxic - TM06
  (438, 43800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Bonsly - Hidden Power - TM10
  (438, 43800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Bonsly - Sunny Day - TM11
  (438, 43800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Bonsly - Protect - TM17
  (438, 43800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Bonsly - Frustration - TM21
  (438, 43800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Bonsly - Smack Down - TM23
  (438, 43800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 21),
  -- Bonsly - Return - TM27
  (438, 43800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Bonsly - Brick Break - TM31
  (438, 43800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Bonsly - Double Team - TM32
  (438, 43800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Bonsly - Sandstorm - TM37
  (438, 43800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 25),
  -- Bonsly - Rock Tomb - TM39
  (438, 43800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Bonsly - Facade - TM42
  (438, 43800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Bonsly - Rest - TM44
  (438, 43800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Bonsly - Attract - TM45
  (438, 43800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Bonsly - Thief - TM46
  (438, 43800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Bonsly - Round - TM48
  (438, 43800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Bonsly - Explosion - TM64
  (438, 43800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 32),
  -- Bonsly - Rock Polish - TM69
  (438, 43800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 33),
  -- Bonsly - Psych Up - TM77
  (438, 43800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 34),
  -- Bonsly - Rock Slide - TM80
  (438, 43800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Bonsly - Swagger - TM87
  (438, 43800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Bonsly - Sleep Talk - TM88
  (438, 43800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Bonsly - Substitute - TM90
  (438, 43800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Bonsly - Nature Power - TM96
  (438, 43800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 39),
  -- Bonsly - Confide - TM100
  (438, 43800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Bonsly - Headbutt - Egg
  (438, 43800, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bonsly - Harden - Egg
  (438, 43800, 106, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bonsly - Defense Curl - Egg
  (438, 43800, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bonsly - Self-Destruct - Egg
  (438, 43800, 120, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bonsly - Curse - Egg
  (438, 43800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bonsly - Endure - Egg
  (438, 43800, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bonsly - Rollout - Egg
  (438, 43800, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bonsly - Sand Tomb - Egg
  (438, 43800, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bonsly - Stealth Rock - Egg
  (438, 43800, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bonsly - Low Kick - Tutor
  (438, 43800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Bonsly - Snore - Tutor
  (438, 43800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Bonsly - Uproar - Tutor
  (438, 43800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Bonsly - Helping Hand - Tutor
  (438, 43800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Bonsly - Role Play - Tutor
  (438, 43800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Bonsly - Block - Tutor
  (438, 43800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Bonsly - Covet - Tutor
  (438, 43800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Bonsly - Earth Power - Tutor
  (438, 43800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bonsly - Stealth Rock - Tutor
  (438, 43800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bonsly - Foul Play - Tutor
  (438, 43800, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bonsly - After You - Tutor
  (438, 43800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bonsly - Stomping Tantrum - Tutor
  (438, 43800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Mime Jr. - Pound - Level 1
  (439, 43900, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Confusion - Level 1
  (439, 43900, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mime Jr. - Barrier - Level 1
  (439, 43900, 112, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mime Jr. - Tickle - Level 1
  (439, 43900, 321, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mime Jr. - Copycat - Level 4
  (439, 43900, 383, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Mime Jr. - Meditate - Level 8
  (439, 43900, 96, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Mime Jr. - Double Slap - Level 11
  (439, 43900, 3, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Mime Jr. - Mimic - Level 15
  (439, 43900, 102, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Mime Jr. - Encore - Level 18
  (439, 43900, 227, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Mime Jr. - Light Screen - Level 22
  (439, 43900, 113, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Mime Jr. - Reflect - Level 22
  (439, 43900, 115, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Mime Jr. - Psybeam - Level 25
  (439, 43900, 60, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Mime Jr. - Substitute - Level 29
  (439, 43900, 164, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Mime Jr. - Recycle - Level 32
  (439, 43900, 278, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Mime Jr. - Trick - Level 36
  (439, 43900, 271, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mime Jr. - Psychic - Level 39
  (439, 43900, 94, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Mime Jr. - Role Play - Level 43
  (439, 43900, 272, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Mime Jr. - Baton Pass - Level 46
  (439, 43900, 226, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Mime Jr. - Safeguard - Level 50
  (439, 43900, 219, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Mime Jr. - Psyshock - TM03
  (439, 43900, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Mime Jr. - Calm Mind - TM04
  (439, 43900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Mime Jr. - Toxic - TM06
  (439, 43900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Mime Jr. - Hidden Power - TM10
  (439, 43900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Mime Jr. - Sunny Day - TM11
  (439, 43900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Mime Jr. - Taunt - TM12
  (439, 43900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Mime Jr. - Light Screen - TM16
  (439, 43900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Mime Jr. - Protect - TM17
  (439, 43900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Mime Jr. - Rain Dance - TM18
  (439, 43900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Mime Jr. - Safeguard - TM20
  (439, 43900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Mime Jr. - Frustration - TM21
  (439, 43900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Mime Jr. - Solar Beam - TM22
  (439, 43900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 31),
  -- Mime Jr. - Thunderbolt - TM24
  (439, 43900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 32),
  -- Mime Jr. - Thunder - TM25
  (439, 43900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 33),
  -- Mime Jr. - Return - TM27
  (439, 43900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Mime Jr. - Psychic - TM29
  (439, 43900, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Mime Jr. - Shadow Ball - TM30
  (439, 43900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 36),
  -- Mime Jr. - Brick Break - TM31
  (439, 43900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 37),
  -- Mime Jr. - Double Team - TM32
  (439, 43900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Mime Jr. - Reflect - TM33
  (439, 43900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 39),
  -- Mime Jr. - Torment - TM41
  (439, 43900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 40),
  -- Mime Jr. - Facade - TM42
  (439, 43900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Mime Jr. - Rest - TM44
  (439, 43900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Mime Jr. - Attract - TM45
  (439, 43900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Mime Jr. - Thief - TM46
  (439, 43900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 44),
  -- Mime Jr. - Round - TM48
  (439, 43900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Mime Jr. - Fling - TM56
  (439, 43900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Mime Jr. - Charge Beam - TM57
  (439, 43900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 47),
  -- Mime Jr. - Thunder Wave - TM73
  (439, 43900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Mime Jr. - Psych Up - TM77
  (439, 43900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Mime Jr. - Infestation - TM83
  (439, 43900, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 50),
  -- Mime Jr. - Dream Eater - TM85
  (439, 43900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 51),
  -- Mime Jr. - Grass Knot - TM86
  (439, 43900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 52),
  -- Mime Jr. - Swagger - TM87
  (439, 43900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Mime Jr. - Sleep Talk - TM88
  (439, 43900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Mime Jr. - Substitute - TM90
  (439, 43900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Mime Jr. - Trick Room - TM92
  (439, 43900, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 56),
  -- Mime Jr. - Confide - TM100
  (439, 43900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Mime Jr. - Hypnosis - Egg
  (439, 43900, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mime Jr. - Mimic - Egg
  (439, 43900, 102, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mime Jr. - Confuse Ray - Egg
  (439, 43900, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mime Jr. - Icy Wind - Egg
  (439, 43900, 196, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mime Jr. - Charm - Egg
  (439, 43900, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mime Jr. - Future Sight - Egg
  (439, 43900, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mime Jr. - Fake Out - Egg
  (439, 43900, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mime Jr. - Trick - Egg
  (439, 43900, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mime Jr. - Teeter Dance - Egg
  (439, 43900, 298, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mime Jr. - Wake-Up Slap - Egg
  (439, 43900, 358, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mime Jr. - Healing Wish - Egg
  (439, 43900, 361, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mime Jr. - Nasty Plot - Egg
  (439, 43900, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mime Jr. - Power Split - Egg
  (439, 43900, 471, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mime Jr. - Magic Room - Egg
  (439, 43900, 478, 16, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mime Jr. - Psychic Terrain - Egg
  (439, 43900, 678, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mime Jr. - Snore - Tutor
  (439, 43900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Mime Jr. - Icy Wind - Tutor
  (439, 43900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Mime Jr. - Uproar - Tutor
  (439, 43900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Mime Jr. - Focus Punch - Tutor
  (439, 43900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Mime Jr. - Helping Hand - Tutor
  (439, 43900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Mime Jr. - Trick - Tutor
  (439, 43900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Mime Jr. - Role Play - Tutor
  (439, 43900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Mime Jr. - Magic Coat - Tutor
  (439, 43900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Mime Jr. - Recycle - Tutor
  (439, 43900, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Mime Jr. - Skill Swap - Tutor
  (439, 43900, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Mime Jr. - Snatch - Tutor
  (439, 43900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Mime Jr. - Signal Beam - Tutor
  (439, 43900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Mime Jr. - Covet - Tutor
  (439, 43900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Mime Jr. - Shock Wave - Tutor
  (439, 43900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Mime Jr. - Drain Punch - Tutor
  (439, 43900, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Mime Jr. - Wonder Room - Tutor
  (439, 43900, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Mime Jr. - Telekinesis - Tutor
  (439, 43900, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Mime Jr. - Magic Room - Tutor
  (439, 43900, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Mime Jr. - Ally Switch - Tutor
  (439, 43900, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),

  -- Happiny - Pound - Level 1
  (440, 44000, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Charm - Level 1
  (440, 44000, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Happiny - Copycat - Level 5
  (440, 44000, 383, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Happiny - Refresh - Level 9
  (440, 44000, 287, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Happiny - Sweet Kiss - Level 12
  (440, 44000, 186, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Happiny - Work Up - TM01
  (440, 44000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 6),
  -- Happiny - Toxic - TM06
  (440, 44000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 7),
  -- Happiny - Hail - TM07
  (440, 44000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 8),
  -- Happiny - Hidden Power - TM10
  (440, 44000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Happiny - Sunny Day - TM11
  (440, 44000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Happiny - Light Screen - TM16
  (440, 44000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 11),
  -- Happiny - Protect - TM17
  (440, 44000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 12),
  -- Happiny - Rain Dance - TM18
  (440, 44000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 13),
  -- Happiny - Safeguard - TM20
  (440, 44000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 14),
  -- Happiny - Frustration - TM21
  (440, 44000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 15),
  -- Happiny - Solar Beam - TM22
  (440, 44000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 16),
  -- Happiny - Return - TM27
  (440, 44000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 17),
  -- Happiny - Psychic - TM29
  (440, 44000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 18),
  -- Happiny - Shadow Ball - TM30
  (440, 44000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 19),
  -- Happiny - Double Team - TM32
  (440, 44000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 20),
  -- Happiny - Flamethrower - TM35
  (440, 44000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 21),
  -- Happiny - Fire Blast - TM38
  (440, 44000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 22),
  -- Happiny - Facade - TM42
  (440, 44000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Happiny - Rest - TM44
  (440, 44000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Happiny - Attract - TM45
  (440, 44000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Happiny - Round - TM48
  (440, 44000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Happiny - Echoed Voice - TM49
  (440, 44000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 27),
  -- Happiny - Fling - TM56
  (440, 44000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 28),
  -- Happiny - Thunder Wave - TM73
  (440, 44000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 29),
  -- Happiny - Psych Up - TM77
  (440, 44000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 30),
  -- Happiny - Dream Eater - TM85
  (440, 44000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 31),
  -- Happiny - Grass Knot - TM86
  (440, 44000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 32),
  -- Happiny - Swagger - TM87
  (440, 44000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Happiny - Sleep Talk - TM88
  (440, 44000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Happiny - Substitute - TM90
  (440, 44000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Happiny - Confide - TM100
  (440, 44000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Happiny - Counter - Egg
  (440, 44000, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Happiny - Metronome - Egg
  (440, 44000, 118, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Happiny - Endure - Egg
  (440, 44000, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Happiny - Heal Bell - Egg
  (440, 44000, 215, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Happiny - Present - Egg
  (440, 44000, 217, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Happiny - Helping Hand - Egg
  (440, 44000, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Happiny - Aromatherapy - Egg
  (440, 44000, 312, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Happiny - Gravity - Egg
  (440, 44000, 356, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Happiny - Natural Gift - Egg
  (440, 44000, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Happiny - Last Resort - Egg
  (440, 44000, 387, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Happiny - Mud Bomb - Egg
  (440, 44000, 426, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Happiny - Snore - Tutor
  (440, 44000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Happiny - Icy Wind - Tutor
  (440, 44000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Happiny - Heal Bell - Tutor
  (440, 44000, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Happiny - Uproar - Tutor
  (440, 44000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Happiny - Helping Hand - Tutor
  (440, 44000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Happiny - Recycle - Tutor
  (440, 44000, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Happiny - Endeavor - Tutor
  (440, 44000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Happiny - Hyper Voice - Tutor
  (440, 44000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Happiny - Covet - Tutor
  (440, 44000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Happiny - Shock Wave - Tutor
  (440, 44000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Happiny - Water Pulse - Tutor
  (440, 44000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Happiny - Gravity - Tutor
  (440, 44000, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Happiny - Last Resort - Tutor
  (440, 44000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Happiny - Drain Punch - Tutor
  (440, 44000, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Happiny - Zen Headbutt - Tutor
  (440, 44000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Chatot - Peck - Level 1
  (441, 44100, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chatot - Taunt - Level 1
  (441, 44100, 269, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chatot - Hyper Voice - Level 1
  (441, 44100, 304, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chatot - Chatter - Level 1
  (441, 44100, 448, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chatot - Confide - Level 1
  (441, 44100, 590, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chatot - Growl - Level 5
  (441, 44100, 45, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Chatot - Mirror Move - Level 9
  (441, 44100, 119, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Chatot - Sing - Level 13
  (441, 44100, 47, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Chatot - Fury Attack - Level 17
  (441, 44100, 31, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Chatot - Chatter - Level 21
  (441, 44100, 448, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Chatot - Taunt - Level 25
  (441, 44100, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Chatot - Round - Level 29
  (441, 44100, 496, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Chatot - Mimic - Level 33
  (441, 44100, 102, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Chatot - Echoed Voice - Level 37
  (441, 44100, 497, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Chatot - Roost - Level 41
  (441, 44100, 355, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Chatot - Uproar - Level 45
  (441, 44100, 253, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Chatot - Synchronoise - Level 49
  (441, 44100, 485, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Chatot - Feather Dance - Level 50
  (441, 44100, 297, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Chatot - Hyper Voice - Level 57
  (441, 44100, 304, 16, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Chatot - Work Up - TM01
  (441, 44100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Chatot - Toxic - TM06
  (441, 44100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Chatot - Hidden Power - TM10
  (441, 44100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Chatot - Sunny Day - TM11
  (441, 44100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Chatot - Taunt - TM12
  (441, 44100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Chatot - Protect - TM17
  (441, 44100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Chatot - Rain Dance - TM18
  (441, 44100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Chatot - Roost - TM19
  (441, 44100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Chatot - Frustration - TM21
  (441, 44100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Chatot - Return - TM27
  (441, 44100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Chatot - Double Team - TM32
  (441, 44100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Chatot - Aerial Ace - TM40
  (441, 44100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Chatot - Torment - TM41
  (441, 44100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 32),
  -- Chatot - Facade - TM42
  (441, 44100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Chatot - Rest - TM44
  (441, 44100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Chatot - Attract - TM45
  (441, 44100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Chatot - Thief - TM46
  (441, 44100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Chatot - Round - TM48
  (441, 44100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Chatot - Echoed Voice - TM49
  (441, 44100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Chatot - Steel Wing - TM51
  (441, 44100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 39),
  -- Chatot - Fly - TM76
  (441, 44100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 40),
  -- Chatot - Swagger - TM87
  (441, 44100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Chatot - Sleep Talk - TM88
  (441, 44100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Chatot - U-turn - TM89
  (441, 44100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Chatot - Substitute - TM90
  (441, 44100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Chatot - Confide - TM100
  (441, 44100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Chatot - Supersonic - Egg
  (441, 44100, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chatot - Agility - Egg
  (441, 44100, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chatot - Night Shade - Egg
  (441, 44100, 101, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chatot - Steel Wing - Egg
  (441, 44100, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chatot - Sleep Talk - Egg
  (441, 44100, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chatot - Encore - Egg
  (441, 44100, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chatot - Air Cutter - Egg
  (441, 44100, 314, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chatot - Nasty Plot - Egg
  (441, 44100, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chatot - Defog - Egg
  (441, 44100, 432, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chatot - Boomburst - Egg
  (441, 44100, 586, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chatot - Sky Attack - Tutor
  (441, 44100, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Chatot - Snore - Tutor
  (441, 44100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Chatot - Uproar - Tutor
  (441, 44100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Chatot - Heat Wave - Tutor
  (441, 44100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Chatot - Role Play - Tutor
  (441, 44100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Chatot - Hyper Voice - Tutor
  (441, 44100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Chatot - Tailwind - Tutor
  (441, 44100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Chatot - Defog - Tutor
  (441, 44100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Spiritomb - Confuse Ray - Level 1
  (442, 44200, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Curse - Level 1
  (442, 44200, 174, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spiritomb - Spite - Level 1
  (442, 44200, 180, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spiritomb - Pursuit - Level 1
  (442, 44200, 228, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spiritomb - Shadow Sneak - Level 1
  (442, 44200, 425, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Spiritomb - Feint Attack - Level 7
  (442, 44200, 185, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Spiritomb - Hypnosis - Level 13
  (442, 44200, 95, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Spiritomb - Dream Eater - Level 19
  (442, 44200, 138, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Spiritomb - Ominous Wind - Level 25
  (442, 44200, 466, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Spiritomb - Sucker Punch - Level 31
  (442, 44200, 389, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Spiritomb - Nasty Plot - Level 37
  (442, 44200, 417, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spiritomb - Memento - Level 43
  (442, 44200, 262, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spiritomb - Dark Pulse - Level 49
  (442, 44200, 399, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spiritomb - Calm Mind - TM04
  (442, 44200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 14),
  -- Spiritomb - Toxic - TM06
  (442, 44200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Spiritomb - Hidden Power - TM10
  (442, 44200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Spiritomb - Sunny Day - TM11
  (442, 44200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Spiritomb - Taunt - TM12
  (442, 44200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 18),
  -- Spiritomb - Hyper Beam - TM15
  (442, 44200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Spiritomb - Protect - TM17
  (442, 44200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Spiritomb - Rain Dance - TM18
  (442, 44200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Spiritomb - Frustration - TM21
  (442, 44200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Spiritomb - Return - TM27
  (442, 44200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Spiritomb - Psychic - TM29
  (442, 44200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Spiritomb - Shadow Ball - TM30
  (442, 44200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 25),
  -- Spiritomb - Double Team - TM32
  (442, 44200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Spiritomb - Rock Tomb - TM39
  (442, 44200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Spiritomb - Torment - TM41
  (442, 44200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 28),
  -- Spiritomb - Facade - TM42
  (442, 44200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Spiritomb - Rest - TM44
  (442, 44200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Spiritomb - Attract - TM45
  (442, 44200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Spiritomb - Thief - TM46
  (442, 44200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Spiritomb - Round - TM48
  (442, 44200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Spiritomb - Quash - TM60
  (442, 44200, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 34),
  -- Spiritomb - Will-O-Wisp - TM61
  (442, 44200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Spiritomb - Embargo - TM63
  (442, 44200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 36),
  -- Spiritomb - Giga Impact - TM68
  (442, 44200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Spiritomb - Psych Up - TM77
  (442, 44200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 38),
  -- Spiritomb - Infestation - TM83
  (442, 44200, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 39),
  -- Spiritomb - Dream Eater - TM85
  (442, 44200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 40),
  -- Spiritomb - Swagger - TM87
  (442, 44200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Spiritomb - Sleep Talk - TM88
  (442, 44200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Spiritomb - Substitute - TM90
  (442, 44200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Spiritomb - Snarl - TM95
  (442, 44200, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 44),
  -- Spiritomb - Dark Pulse - TM97
  (442, 44200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 45),
  -- Spiritomb - Confide - TM100
  (442, 44200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Spiritomb - Disable - Egg
  (442, 44200, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spiritomb - Smokescreen - Egg
  (442, 44200, 108, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spiritomb - Nightmare - Egg
  (442, 44200, 171, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spiritomb - Destiny Bond - Egg
  (442, 44200, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spiritomb - Pain Split - Egg
  (442, 44200, 220, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spiritomb - Imprison - Egg
  (442, 44200, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spiritomb - Grudge - Egg
  (442, 44200, 288, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spiritomb - Shadow Sneak - Egg
  (442, 44200, 425, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spiritomb - Captivate - Egg
  (442, 44200, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spiritomb - Foul Play - Egg
  (442, 44200, 492, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spiritomb - Snore - Tutor
  (442, 44200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Spiritomb - Spite - Tutor
  (442, 44200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Spiritomb - Icy Wind - Tutor
  (442, 44200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Spiritomb - Pain Split - Tutor
  (442, 44200, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Spiritomb - Uproar - Tutor
  (442, 44200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Spiritomb - Trick - Tutor
  (442, 44200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Spiritomb - Snatch - Tutor
  (442, 44200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Spiritomb - Shock Wave - Tutor
  (442, 44200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Spiritomb - Water Pulse - Tutor
  (442, 44200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Spiritomb - Wonder Room - Tutor
  (442, 44200, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Spiritomb - Telekinesis - Tutor
  (442, 44200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Spiritomb - Foul Play - Tutor
  (442, 44200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Spiritomb - Ally Switch - Tutor
  (442, 44200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),

  -- Gible - Tackle - Level 1
  (443, 44300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Attack - Level 3
  (443, 44300, 28, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gible - Dragon Rage - Level 7
  (443, 44300, 82, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gible - Sandstorm - Level 13
  (443, 44300, 201, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Gible - Take Down - Level 15
  (443, 44300, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gible - Sand Tomb - Level 19
  (443, 44300, 328, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 25
  (443, 44300, 163, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 27
  (443, 44300, 337, 16, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 31
  (443, 44300, 91, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gible - Dragon Rush - Level 37
  (443, 44300, 407, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Gible - Dragon Claw - TM02
  (443, 44300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 11),
  -- Gible - Roar - TM05
  (443, 44300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 12),
  -- Gible - Toxic - TM06
  (443, 44300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Gible - Hidden Power - TM10
  (443, 44300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Gible - Sunny Day - TM11
  (443, 44300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 15),
  -- Gible - Protect - TM17
  (443, 44300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Gible - Rain Dance - TM18
  (443, 44300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 17),
  -- Gible - Frustration - TM21
  (443, 44300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 18),
  -- Gible - Earthquake - TM26
  (443, 44300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 19),
  -- Gible - Return - TM27
  (443, 44300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Gible - Double Team - TM32
  (443, 44300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 21),
  -- Gible - Flamethrower - TM35
  (443, 44300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 22),
  -- Gible - Sandstorm - TM37
  (443, 44300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 23),
  -- Gible - Fire Blast - TM38
  (443, 44300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 24),
  -- Gible - Rock Tomb - TM39
  (443, 44300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Gible - Aerial Ace - TM40
  (443, 44300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 26),
  -- Gible - Facade - TM42
  (443, 44300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Gible - Rest - TM44
  (443, 44300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Gible - Attract - TM45
  (443, 44300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Gible - Round - TM48
  (443, 44300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Gible - Shadow Claw - TM65
  (443, 44300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 31),
  -- Gible - Stone Edge - TM71
  (443, 44300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 32),
  -- Gible - Bulldoze - TM78
  (443, 44300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 33),
  -- Gible - Rock Slide - TM80
  (443, 44300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 34),
  -- Gible - Swagger - TM87
  (443, 44300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Gible - Sleep Talk - TM88
  (443, 44300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Gible - Substitute - TM90
  (443, 44300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Gible - Confide - TM100
  (443, 44300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Gible - Body Slam - Egg
  (443, 44300, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Gible - Thrash - Egg
  (443, 44300, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gible - Double-Edge - Egg
  (443, 44300, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Gible - Scary Face - Egg
  (443, 44300, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gible - Outrage - Egg
  (443, 44300, 200, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gible - Dragon Breath - Egg
  (443, 44300, 225, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gible - Iron Tail - Egg
  (443, 44300, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gible - Metal Claw - Egg
  (443, 44300, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gible - Twister - Egg
  (443, 44300, 239, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gible - Sand Tomb - Egg
  (443, 44300, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gible - Mud Shot - Egg
  (443, 44300, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gible - Rock Climb - Egg
  (443, 44300, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gible - Iron Head - Egg
  (443, 44300, 442, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gible - Snore - Tutor
  (443, 44300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Gible - Outrage - Tutor
  (443, 44300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Gible - Iron Tail - Tutor
  (443, 44300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Gible - Dragon Pulse - Tutor
  (443, 44300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Gible - Earth Power - Tutor
  (443, 44300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Gible - Draco Meteor - Tutor
  (443, 44300, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Gible - Iron Head - Tutor
  (443, 44300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Gible - Stealth Rock - Tutor
  (443, 44300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Gabite - Sand Attack - Level 1
  (444, 44400, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Dragon Rage - Level 1
  (444, 44400, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gabite - Dual Chop - Level 1
  (444, 44400, 530, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gabite - Sand Attack - Level 3
  (444, 44400, 28, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gabite - Dragon Rage - Level 7
  (444, 44400, 82, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gabite - Sandstorm - Level 13
  (444, 44400, 201, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Gabite - Take Down - Level 15
  (444, 44400, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Gabite - Sand Tomb - Level 19
  (444, 44400, 328, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Gabite - Slash - Level 28
  (444, 44400, 163, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Gabite - Dragon Claw - Level 33
  (444, 44400, 337, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Gabite - Dig - Level 40
  (444, 44400, 91, 16, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gabite - Dragon Rush - Level 49
  (444, 44400, 407, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Gabite - Dragon Claw - TM02
  (444, 44400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Gabite - Roar - TM05
  (444, 44400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 15),
  -- Gabite - Toxic - TM06
  (444, 44400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Gabite - Hidden Power - TM10
  (444, 44400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Gabite - Sunny Day - TM11
  (444, 44400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Gabite - Protect - TM17
  (444, 44400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Gabite - Rain Dance - TM18
  (444, 44400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Gabite - Frustration - TM21
  (444, 44400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Gabite - Earthquake - TM26
  (444, 44400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 22),
  -- Gabite - Return - TM27
  (444, 44400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Gabite - Double Team - TM32
  (444, 44400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Gabite - Flamethrower - TM35
  (444, 44400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 25),
  -- Gabite - Sandstorm - TM37
  (444, 44400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 26),
  -- Gabite - Fire Blast - TM38
  (444, 44400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 27),
  -- Gabite - Rock Tomb - TM39
  (444, 44400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Gabite - Aerial Ace - TM40
  (444, 44400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Gabite - Facade - TM42
  (444, 44400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Gabite - Rest - TM44
  (444, 44400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Gabite - Attract - TM45
  (444, 44400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Gabite - Round - TM48
  (444, 44400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Gabite - Shadow Claw - TM65
  (444, 44400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 34),
  -- Gabite - Stone Edge - TM71
  (444, 44400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 35),
  -- Gabite - Bulldoze - TM78
  (444, 44400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Gabite - Rock Slide - TM80
  (444, 44400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Gabite - Swagger - TM87
  (444, 44400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Gabite - Sleep Talk - TM88
  (444, 44400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Gabite - Substitute - TM90
  (444, 44400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Gabite - Confide - TM100
  (444, 44400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Gabite - Snore - Tutor
  (444, 44400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Gabite - Outrage - Tutor
  (444, 44400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Gabite - Iron Tail - Tutor
  (444, 44400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Gabite - Dragon Pulse - Tutor
  (444, 44400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Gabite - Earth Power - Tutor
  (444, 44400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Gabite - Draco Meteor - Tutor
  (444, 44400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Gabite - Iron Head - Tutor
  (444, 44400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Gabite - Stealth Rock - Tutor
  (444, 44400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Gabite - Dual Chop - Tutor
  (444, 44400, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Gabite - Laser Focus - Tutor
  (444, 44400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Gabite - Dual Chop - Evolution
  (444, 44400, 530, 16, NULL, 7, NULL, NULL, NULL, NULL, 52),

  -- Garchomp - Sand Attack - Level 1
  (445, 44500, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Dragon Rage - Level 1
  (445, 44500, 82, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garchomp - Sandstorm - Level 1
  (445, 44500, 201, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garchomp - Crunch - Level 1
  (445, 44500, 242, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garchomp - Fire Fang - Level 1
  (445, 44500, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Garchomp - Dual Chop - Level 1
  (445, 44500, 530, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Garchomp - Sand Attack - Level 3
  (445, 44500, 28, 16, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Garchomp - Dragon Rage - Level 7
  (445, 44500, 82, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Garchomp - Sandstorm - Level 13
  (445, 44500, 201, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Garchomp - Take Down - Level 15
  (445, 44500, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Garchomp - Sand Tomb - Level 19
  (445, 44500, 328, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Garchomp - Slash - Level 28
  (445, 44500, 163, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Garchomp - Dragon Claw - Level 33
  (445, 44500, 337, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Garchomp - Dig - Level 40
  (445, 44500, 91, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Garchomp - Dragon Rush - Level 55
  (445, 44500, 407, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Garchomp - Dragon Claw - TM02
  (445, 44500, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 17),
  -- Garchomp - Roar - TM05
  (445, 44500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Garchomp - Toxic - TM06
  (445, 44500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Garchomp - Hidden Power - TM10
  (445, 44500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Garchomp - Sunny Day - TM11
  (445, 44500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Garchomp - Hyper Beam - TM15
  (445, 44500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Garchomp - Protect - TM17
  (445, 44500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Garchomp - Rain Dance - TM18
  (445, 44500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Garchomp - Frustration - TM21
  (445, 44500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Garchomp - Earthquake - TM26
  (445, 44500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Garchomp - Return - TM27
  (445, 44500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Garchomp - Brick Break - TM31
  (445, 44500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Garchomp - Double Team - TM32
  (445, 44500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Garchomp - Flamethrower - TM35
  (445, 44500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 30),
  -- Garchomp - Sandstorm - TM37
  (445, 44500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Garchomp - Fire Blast - TM38
  (445, 44500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 32),
  -- Garchomp - Rock Tomb - TM39
  (445, 44500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Garchomp - Aerial Ace - TM40
  (445, 44500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Garchomp - Facade - TM42
  (445, 44500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Garchomp - Rest - TM44
  (445, 44500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Garchomp - Attract - TM45
  (445, 44500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Garchomp - Round - TM48
  (445, 44500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Garchomp - False Swipe - TM54
  (445, 44500, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 39),
  -- Garchomp - Fling - TM56
  (445, 44500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Garchomp - Brutal Swing - TM59
  (445, 44500, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 41),
  -- Garchomp - Shadow Claw - TM65
  (445, 44500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 42),
  -- Garchomp - Giga Impact - TM68
  (445, 44500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Garchomp - Stone Edge - TM71
  (445, 44500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 44),
  -- Garchomp - Swords Dance - TM75
  (445, 44500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 45),
  -- Garchomp - Bulldoze - TM78
  (445, 44500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Garchomp - Rock Slide - TM80
  (445, 44500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Garchomp - Dragon Tail - TM82
  (445, 44500, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 48),
  -- Garchomp - Poison Jab - TM84
  (445, 44500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 49),
  -- Garchomp - Swagger - TM87
  (445, 44500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Garchomp - Sleep Talk - TM88
  (445, 44500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Garchomp - Substitute - TM90
  (445, 44500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Garchomp - Surf - TM94
  (445, 44500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 53),
  -- Garchomp - Confide - TM100
  (445, 44500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Garchomp - Snore - Tutor
  (445, 44500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Garchomp - Outrage - Tutor
  (445, 44500, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Garchomp - Iron Tail - Tutor
  (445, 44500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Garchomp - Aqua Tail - Tutor
  (445, 44500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Garchomp - Dragon Pulse - Tutor
  (445, 44500, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Garchomp - Earth Power - Tutor
  (445, 44500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Garchomp - Draco Meteor - Tutor
  (445, 44500, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Garchomp - Iron Head - Tutor
  (445, 44500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Garchomp - Stealth Rock - Tutor
  (445, 44500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Garchomp - Dual Chop - Tutor
  (445, 44500, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Garchomp - Laser Focus - Tutor
  (445, 44500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Garchomp - Stomping Tantrum - Tutor
  (445, 44500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Garchomp - Crunch - Evolution
  (445, 44500, 242, 16, NULL, 7, NULL, NULL, NULL, NULL, 67),

  -- Munchlax - Tackle - Level 1
  (446, 44600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Metronome - Level 1
  (446, 44600, 118, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munchlax - Lick - Level 1
  (446, 44600, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Munchlax - Recycle - Level 1
  (446, 44600, 278, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Munchlax - Odor Sleuth - Level 1
  (446, 44600, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Munchlax - Last Resort - Level 1
  (446, 44600, 387, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Munchlax - Amnesia - Level 9
  (446, 44600, 133, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Munchlax - Lick - Level 12
  (446, 44600, 122, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Munchlax - Chip Away - Level 17
  (446, 44600, 498, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Munchlax - Screech - Level 20
  (446, 44600, 103, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Munchlax - Body Slam - Level 25
  (446, 44600, 34, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Munchlax - Stockpile - Level 28
  (446, 44600, 254, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Munchlax - Swallow - Level 33
  (446, 44600, 256, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Munchlax - Rollout - Level 36
  (446, 44600, 205, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Munchlax - Fling - Level 41
  (446, 44600, 374, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Munchlax - Belly Drum - Level 44
  (446, 44600, 187, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Munchlax - Natural Gift - Level 49
  (446, 44600, 363, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Munchlax - Snatch - Level 50
  (446, 44600, 289, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Munchlax - Last Resort - Level 57
  (446, 44600, 387, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Munchlax - Work Up - TM01
  (446, 44600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Munchlax - Toxic - TM06
  (446, 44600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Munchlax - Hidden Power - TM10
  (446, 44600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Munchlax - Sunny Day - TM11
  (446, 44600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Munchlax - Ice Beam - TM13
  (446, 44600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 25),
  -- Munchlax - Blizzard - TM14
  (446, 44600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 26),
  -- Munchlax - Protect - TM17
  (446, 44600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Munchlax - Rain Dance - TM18
  (446, 44600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Munchlax - Frustration - TM21
  (446, 44600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Munchlax - Solar Beam - TM22
  (446, 44600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Munchlax - Thunderbolt - TM24
  (446, 44600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 31),
  -- Munchlax - Thunder - TM25
  (446, 44600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 32),
  -- Munchlax - Earthquake - TM26
  (446, 44600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Munchlax - Return - TM27
  (446, 44600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Munchlax - Psychic - TM29
  (446, 44600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Munchlax - Shadow Ball - TM30
  (446, 44600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 36),
  -- Munchlax - Brick Break - TM31
  (446, 44600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 37),
  -- Munchlax - Double Team - TM32
  (446, 44600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 38),
  -- Munchlax - Flamethrower - TM35
  (446, 44600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 39),
  -- Munchlax - Sandstorm - TM37
  (446, 44600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 40),
  -- Munchlax - Fire Blast - TM38
  (446, 44600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Munchlax - Rock Tomb - TM39
  (446, 44600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 42),
  -- Munchlax - Facade - TM42
  (446, 44600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Munchlax - Rest - TM44
  (446, 44600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Munchlax - Attract - TM45
  (446, 44600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Munchlax - Round - TM48
  (446, 44600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Munchlax - Fling - TM56
  (446, 44600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Munchlax - Bulldoze - TM78
  (446, 44600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Munchlax - Rock Slide - TM80
  (446, 44600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Munchlax - Swagger - TM87
  (446, 44600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Munchlax - Sleep Talk - TM88
  (446, 44600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Munchlax - Substitute - TM90
  (446, 44600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Munchlax - Surf - TM94
  (446, 44600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 53),
  -- Munchlax - Confide - TM100
  (446, 44600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Munchlax - Whirlwind - Egg
  (446, 44600, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Munchlax - Double-Edge - Egg
  (446, 44600, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Munchlax - Counter - Egg
  (446, 44600, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Munchlax - Self-Destruct - Egg
  (446, 44600, 120, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Munchlax - Lick - Egg
  (446, 44600, 122, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munchlax - Curse - Egg
  (446, 44600, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munchlax - Charm - Egg
  (446, 44600, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Munchlax - Pursuit - Egg
  (446, 44600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Munchlax - Natural Gift - Egg
  (446, 44600, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Munchlax - Zen Headbutt - Egg
  (446, 44600, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Munchlax - After You - Egg
  (446, 44600, 495, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Munchlax - Belch - Egg
  (446, 44600, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Munchlax - Power-Up Punch - Egg
  (446, 44600, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Munchlax - Fire Punch - Tutor
  (446, 44600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Munchlax - Ice Punch - Tutor
  (446, 44600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Munchlax - Thunder Punch - Tutor
  (446, 44600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Munchlax - Snore - Tutor
  (446, 44600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Munchlax - Icy Wind - Tutor
  (446, 44600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Munchlax - Uproar - Tutor
  (446, 44600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Munchlax - Focus Punch - Tutor
  (446, 44600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Munchlax - Superpower - Tutor
  (446, 44600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Munchlax - Recycle - Tutor
  (446, 44600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Munchlax - Snatch - Tutor
  (446, 44600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Munchlax - Hyper Voice - Tutor
  (446, 44600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Munchlax - Covet - Tutor
  (446, 44600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Munchlax - Shock Wave - Tutor
  (446, 44600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Munchlax - Water Pulse - Tutor
  (446, 44600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Munchlax - Last Resort - Tutor
  (446, 44600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Munchlax - Seed Bomb - Tutor
  (446, 44600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Munchlax - Zen Headbutt - Tutor
  (446, 44600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Munchlax - Gunk Shot - Tutor
  (446, 44600, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Munchlax - After You - Tutor
  (446, 44600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Munchlax - Stomping Tantrum - Tutor
  (446, 44600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),

  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Foresight - Level 1
  (447, 44700, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Riolu - Counter - Level 6
  (447, 44700, 68, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Riolu - Feint - Level 11
  (447, 44700, 364, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Riolu - Force Palm - Level 15
  (447, 44700, 395, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Riolu - Copycat - Level 19
  (447, 44700, 383, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Riolu - Screech - Level 24
  (447, 44700, 103, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Reversal - Level 29
  (447, 44700, 179, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Riolu - Nasty Plot - Level 47
  (447, 44700, 417, 16, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Riolu - Final Gambit - Level 50
  (447, 44700, 515, 16, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Riolu - Work Up - TM01
  (447, 44700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 12),
  -- Riolu - Roar - TM05
  (447, 44700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 13),
  -- Riolu - Toxic - TM06
  (447, 44700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Riolu - Bulk Up - TM08
  (447, 44700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 15),
  -- Riolu - Hidden Power - TM10
  (447, 44700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Riolu - Sunny Day - TM11
  (447, 44700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Riolu - Protect - TM17
  (447, 44700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Riolu - Rain Dance - TM18
  (447, 44700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Riolu - Frustration - TM21
  (447, 44700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Riolu - Earthquake - TM26
  (447, 44700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 21),
  -- Riolu - Return - TM27
  (447, 44700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Riolu - Brick Break - TM31
  (447, 44700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Riolu - Double Team - TM32
  (447, 44700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Riolu - Rock Tomb - TM39
  (447, 44700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 25),
  -- Riolu - Facade - TM42
  (447, 44700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Riolu - Rest - TM44
  (447, 44700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Riolu - Attract - TM45
  (447, 44700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Riolu - Low Sweep - TM47
  (447, 44700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 29),
  -- Riolu - Round - TM48
  (447, 44700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Riolu - Focus Blast - TM52
  (447, 44700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 31),
  -- Riolu - Fling - TM56
  (447, 44700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 32),
  -- Riolu - Shadow Claw - TM65
  (447, 44700, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 33),
  -- Riolu - Payback - TM66
  (447, 44700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 34),
  -- Riolu - Swords Dance - TM75
  (447, 44700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 35),
  -- Riolu - Bulldoze - TM78
  (447, 44700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Riolu - Rock Slide - TM80
  (447, 44700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Riolu - Poison Jab - TM84
  (447, 44700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 38),
  -- Riolu - Swagger - TM87
  (447, 44700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Riolu - Sleep Talk - TM88
  (447, 44700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Riolu - Substitute - TM90
  (447, 44700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Riolu - Confide - TM100
  (447, 44700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Riolu - Bite - Egg
  (447, 44700, 44, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Riolu - Low Kick - Egg
  (447, 44700, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Riolu - Agility - Egg
  (447, 44700, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Riolu - High Jump Kick - Egg
  (447, 44700, 136, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Riolu - Mind Reader - Egg
  (447, 44700, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Riolu - Detect - Egg
  (447, 44700, 197, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Riolu - Cross Chop - Egg
  (447, 44700, 238, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Riolu - Crunch - Egg
  (447, 44700, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Riolu - Follow Me - Egg
  (447, 44700, 266, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Riolu - Blaze Kick - Egg
  (447, 44700, 299, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Riolu - Meteor Mash - Egg
  (447, 44700, 309, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Riolu - Sky Uppercut - Egg
  (447, 44700, 327, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Riolu - Iron Defense - Egg
  (447, 44700, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Riolu - Vacuum Wave - Egg
  (447, 44700, 410, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Riolu - Bullet Punch - Egg
  (447, 44700, 418, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Riolu - Circle Throw - Egg
  (447, 44700, 509, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Riolu - Ice Punch - Tutor
  (447, 44700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Riolu - Thunder Punch - Tutor
  (447, 44700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Riolu - Low Kick - Tutor
  (447, 44700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Riolu - Snore - Tutor
  (447, 44700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Riolu - Iron Tail - Tutor
  (447, 44700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Riolu - Focus Punch - Tutor
  (447, 44700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Riolu - Helping Hand - Tutor
  (447, 44700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Riolu - Role Play - Tutor
  (447, 44700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Riolu - Iron Defense - Tutor
  (447, 44700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Riolu - Magnet Rise - Tutor
  (447, 44700, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Riolu - Drain Punch - Tutor
  (447, 44700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Riolu - Zen Headbutt - Tutor
  (447, 44700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Riolu - Dual Chop - Tutor
  (447, 44700, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Riolu - Laser Focus - Tutor
  (447, 44700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Foresight - Level 1
  (448, 44800, 193, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Detect - Level 1
  (448, 44800, 197, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Metal Claw - Level 1
  (448, 44800, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Aura Sphere - Level 1
  (448, 44800, 396, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lucario - Laser Focus - Level 1
  (448, 44800, 673, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lucario - Counter - Level 6
  (448, 44800, 68, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Lucario - Feint - Level 11
  (448, 44800, 364, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Lucario - Power-Up Punch - Level 15
  (448, 44800, 612, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Lucario - Swords Dance - Level 19
  (448, 44800, 14, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Lucario - Metal Sound - Level 24
  (448, 44800, 319, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Lucario - Bone Rush - Level 29
  (448, 44800, 198, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lucario - Quick Guard - Level 33
  (448, 44800, 501, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Lucario - Me First - Level 37
  (448, 44800, 382, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Lucario - Work Up - Level 42
  (448, 44800, 526, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Lucario - Calm Mind - Level 47
  (448, 44800, 347, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Lucario - Heal Pulse - Level 51
  (448, 44800, 505, 16, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Lucario - Close Combat - Level 55
  (448, 44800, 370, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Lucario - Dragon Pulse - Level 60
  (448, 44800, 406, 16, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Lucario - Extreme Speed - Level 65
  (448, 44800, 245, 16, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Lucario - Work Up - TM01
  (448, 44800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Lucario - Calm Mind - TM04
  (448, 44800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Lucario - Roar - TM05
  (448, 44800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 23),
  -- Lucario - Toxic - TM06
  (448, 44800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Lucario - Bulk Up - TM08
  (448, 44800, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 25),
  -- Lucario - Hidden Power - TM10
  (448, 44800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Lucario - Sunny Day - TM11
  (448, 44800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Lucario - Hyper Beam - TM15
  (448, 44800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Lucario - Protect - TM17
  (448, 44800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Lucario - Rain Dance - TM18
  (448, 44800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Lucario - Frustration - TM21
  (448, 44800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Lucario - Earthquake - TM26
  (448, 44800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Lucario - Return - TM27
  (448, 44800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Lucario - Psychic - TM29
  (448, 44800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Lucario - Shadow Ball - TM30
  (448, 44800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Lucario - Brick Break - TM31
  (448, 44800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 36),
  -- Lucario - Double Team - TM32
  (448, 44800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Lucario - Rock Tomb - TM39
  (448, 44800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Lucario - Facade - TM42
  (448, 44800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Lucario - Rest - TM44
  (448, 44800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Lucario - Attract - TM45
  (448, 44800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Lucario - Low Sweep - TM47
  (448, 44800, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 42),
  -- Lucario - Round - TM48
  (448, 44800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Lucario - Focus Blast - TM52
  (448, 44800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Lucario - Fling - TM56
  (448, 44800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Lucario - Shadow Claw - TM65
  (448, 44800, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 46),
  -- Lucario - Payback - TM66
  (448, 44800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Lucario - Giga Impact - TM68
  (448, 44800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Lucario - Stone Edge - TM71
  (448, 44800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 49),
  -- Lucario - Swords Dance - TM75
  (448, 44800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 50),
  -- Lucario - Bulldoze - TM78
  (448, 44800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 51),
  -- Lucario - Rock Slide - TM80
  (448, 44800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Lucario - Poison Jab - TM84
  (448, 44800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Lucario - Swagger - TM87
  (448, 44800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Lucario - Sleep Talk - TM88
  (448, 44800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Lucario - Substitute - TM90
  (448, 44800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Lucario - Flash Cannon - TM91
  (448, 44800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 57),
  -- Lucario - Dark Pulse - TM97
  (448, 44800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 58),
  -- Lucario - Confide - TM100
  (448, 44800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Lucario - Ice Punch - Tutor
  (448, 44800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Lucario - Thunder Punch - Tutor
  (448, 44800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Lucario - Low Kick - Tutor
  (448, 44800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Lucario - Snore - Tutor
  (448, 44800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Lucario - Iron Tail - Tutor
  (448, 44800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Lucario - Focus Punch - Tutor
  (448, 44800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Lucario - Helping Hand - Tutor
  (448, 44800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Lucario - Role Play - Tutor
  (448, 44800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Lucario - Iron Defense - Tutor
  (448, 44800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Lucario - Water Pulse - Tutor
  (448, 44800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Lucario - Magnet Rise - Tutor
  (448, 44800, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Lucario - Dragon Pulse - Tutor
  (448, 44800, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Lucario - Drain Punch - Tutor
  (448, 44800, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Lucario - Zen Headbutt - Tutor
  (448, 44800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Lucario - Dual Chop - Tutor
  (448, 44800, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Lucario - Laser Focus - Tutor
  (448, 44800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Lucario - Aura Sphere - Evolution
  (448, 44800, 396, 16, NULL, 7, NULL, NULL, NULL, NULL, 76),

  -- Hippopotas - Sand Attack - Level 1
  (449, 44900, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 7
  (449, 44900, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 13
  (449, 44900, 281, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Hippopotas - Take Down - Level 19
  (449, 44900, 36, 16, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Hippopotas - Dig - Level 19
  (449, 44900, 91, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Hippopotas - Sand Tomb - Level 25
  (449, 44900, 328, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hippopotas - Crunch - Level 31
  (449, 44900, 242, 16, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Hippopotas - Earthquake - Level 37
  (449, 44900, 89, 16, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 16, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Hippopotas - Fissure - Level 50
  (449, 44900, 90, 16, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Hippopotas - Roar - TM05
  (449, 44900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 12),
  -- Hippopotas - Toxic - TM06
  (449, 44900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 13),
  -- Hippopotas - Hidden Power - TM10
  (449, 44900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 14),
  -- Hippopotas - Sunny Day - TM11
  (449, 44900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 15),
  -- Hippopotas - Protect - TM17
  (449, 44900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Hippopotas - Frustration - TM21
  (449, 44900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Hippopotas - Earthquake - TM26
  (449, 44900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 18),
  -- Hippopotas - Return - TM27
  (449, 44900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Hippopotas - Double Team - TM32
  (449, 44900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 20),
  -- Hippopotas - Sandstorm - TM37
  (449, 44900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 21),
  -- Hippopotas - Rock Tomb - TM39
  (449, 44900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 22),
  -- Hippopotas - Facade - TM42
  (449, 44900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Hippopotas - Rest - TM44
  (449, 44900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Hippopotas - Attract - TM45
  (449, 44900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Hippopotas - Round - TM48
  (449, 44900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Hippopotas - Bulldoze - TM78
  (449, 44900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 27),
  -- Hippopotas - Rock Slide - TM80
  (449, 44900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 28),
  -- Hippopotas - Swagger - TM87
  (449, 44900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 29),
  -- Hippopotas - Sleep Talk - TM88
  (449, 44900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 30),
  -- Hippopotas - Substitute - TM90
  (449, 44900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 31),
  -- Hippopotas - Confide - TM100
  (449, 44900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 32),
  -- Hippopotas - Whirlwind - Egg
  (449, 44900, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Hippopotas - Body Slam - Egg
  (449, 44900, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Hippopotas - Curse - Egg
  (449, 44900, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Hippopotas - Sleep Talk - Egg
  (449, 44900, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Hippopotas - Stockpile - Egg
  (449, 44900, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Hippopotas - Spit Up - Egg
  (449, 44900, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Hippopotas - Swallow - Egg
  (449, 44900, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Hippopotas - Revenge - Egg
  (449, 44900, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hippopotas - Slack Off - Egg
  (449, 44900, 303, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Hippopotas - Sand Tomb - Egg
  (449, 44900, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hippopotas - Snore - Tutor
  (449, 44900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Hippopotas - Iron Tail - Tutor
  (449, 44900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Hippopotas - Superpower - Tutor
  (449, 44900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Hippopotas - Water Pulse - Tutor
  (449, 44900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Hippopotas - Earth Power - Tutor
  (449, 44900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Hippopotas - Stealth Rock - Tutor
  (449, 44900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Hippopotas - Stomping Tantrum - Tutor
  (449, 44900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),

  -- Hippowdon - Sand Attack - Level 1
  (450, 45000, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hippowdon - Yawn - Level 1
  (450, 45000, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hippowdon - Thunder Fang - Level 1
  (450, 45000, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hippowdon - Ice Fang - Level 1
  (450, 45000, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hippowdon - Fire Fang - Level 1
  (450, 45000, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hippowdon - Bite - Level 7
  (450, 45000, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Hippowdon - Yawn - Level 13
  (450, 45000, 281, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hippowdon - Take Down - Level 19
  (450, 45000, 36, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Hippowdon - Dig - Level 19
  (450, 45000, 91, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hippowdon - Sand Tomb - Level 25
  (450, 45000, 328, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hippowdon - Crunch - Level 31
  (450, 45000, 242, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Hippowdon - Earthquake - Level 40
  (450, 45000, 89, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Hippowdon - Fissure - Level 60
  (450, 45000, 90, 16, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Hippowdon - Roar - TM05
  (450, 45000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Hippowdon - Toxic - TM06
  (450, 45000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Hippowdon - Hidden Power - TM10
  (450, 45000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Hippowdon - Sunny Day - TM11
  (450, 45000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Hippowdon - Hyper Beam - TM15
  (450, 45000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Hippowdon - Protect - TM17
  (450, 45000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Hippowdon - Frustration - TM21
  (450, 45000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Hippowdon - Earthquake - TM26
  (450, 45000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Hippowdon - Return - TM27
  (450, 45000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Hippowdon - Double Team - TM32
  (450, 45000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Hippowdon - Sandstorm - TM37
  (450, 45000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 27),
  -- Hippowdon - Rock Tomb - TM39
  (450, 45000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Hippowdon - Facade - TM42
  (450, 45000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Hippowdon - Rest - TM44
  (450, 45000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Hippowdon - Attract - TM45
  (450, 45000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Hippowdon - Round - TM48
  (450, 45000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Hippowdon - Giga Impact - TM68
  (450, 45000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Hippowdon - Stone Edge - TM71
  (450, 45000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 34),
  -- Hippowdon - Bulldoze - TM78
  (450, 45000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 35),
  -- Hippowdon - Rock Slide - TM80
  (450, 45000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Hippowdon - Swagger - TM87
  (450, 45000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Hippowdon - Sleep Talk - TM88
  (450, 45000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Hippowdon - Substitute - TM90
  (450, 45000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Hippowdon - Confide - TM100
  (450, 45000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Hippowdon - Snore - Tutor
  (450, 45000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Hippowdon - Iron Tail - Tutor
  (450, 45000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Hippowdon - Superpower - Tutor
  (450, 45000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Hippowdon - Water Pulse - Tutor
  (450, 45000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Hippowdon - Earth Power - Tutor
  (450, 45000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Hippowdon - Iron Head - Tutor
  (450, 45000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Hippowdon - Stealth Rock - Tutor
  (450, 45000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Hippowdon - Stomping Tantrum - Tutor
  (450, 45000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48);
