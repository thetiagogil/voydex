-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 401-450.
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
  -- Kricketot - Growl - Starting Move
  (401, 40100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kricketot - Pound - Starting Move
  (401, 40100, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kricketot - Struggle Bug - Level 6
  (401, 40100, 522, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kricketot - Bug Bite - Level 16
  (401, 40100, 450, 21, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kricketune - Fury Cutter - Starting Move
  (402, 40200, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kricketune - Growl - Starting Move
  (402, 40200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kricketune - Pound - Starting Move
  (402, 40200, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kricketune - Struggle Bug - Starting Move
  (402, 40200, 522, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kricketune - Bug Bite - Starting Move
  (402, 40200, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Kricketune - Fury Cutter - Evolution
  (402, 40200, 210, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Kricketune - Absorb - Level 14
  (402, 40200, 71, 21, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Kricketune - Sing - Level 18
  (402, 40200, 47, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Kricketune - Focus Energy - Level 22
  (402, 40200, 116, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Kricketune - Slash - Level 26
  (402, 40200, 163, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Kricketune - X-Scissor - Level 30
  (402, 40200, 404, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Kricketune - Screech - Level 34
  (402, 40200, 103, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Kricketune - Fell Stinger - Level 36
  (402, 40200, 565, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Kricketune - Taunt - Level 38
  (402, 40200, 269, 21, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Kricketune - Night Slash - Level 42
  (402, 40200, 400, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Kricketune - Sticky Web - Level 44
  (402, 40200, 564, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Kricketune - Bug Buzz - Level 46
  (402, 40200, 405, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Kricketune - Perish Song - Level 50
  (402, 40200, 195, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Kricketune - Sunny Day - TM11
  (402, 40200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Kricketune - Taunt - TM12
  (402, 40200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Kricketune - Hyper Beam - TM15
  (402, 40200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Kricketune - Protect - TM17
  (402, 40200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Kricketune - Rain Dance - TM18
  (402, 40200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Kricketune - Brick Break - TM31
  (402, 40200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Kricketune - Double Team - TM32
  (402, 40200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Kricketune - Aerial Ace - TM40
  (402, 40200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Kricketune - Facade - TM42
  (402, 40200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Kricketune - Rest - TM44
  (402, 40200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Kricketune - Attract - TM45
  (402, 40200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Kricketune - False Swipe - TM54
  (402, 40200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 30),
  -- Kricketune - Endure - TM58
  (402, 40200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Kricketune - Bug Buzz - TM62
  (402, 40200, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 32),
  -- Kricketune - Giga Impact - TM68
  (402, 40200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Kricketune - Flash - TM70
  (402, 40200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 34),
  -- Kricketune - Swords Dance - TM75
  (402, 40200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 35),
  -- Kricketune - X-Scissor - TM81
  (402, 40200, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 36),
  -- Kricketune - Sleep Talk - TM82
  (402, 40200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Kricketune - Swagger - TM87
  (402, 40200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Kricketune - Substitute - TM90
  (402, 40200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Kricketune - Cut - TM93
  (402, 40200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 40),
  -- Kricketune - Strength - TM96
  (402, 40200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 41),
  -- Kricketune - Rock Smash - TM98
  (402, 40200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Shinx - Tackle - Starting Move
  (403, 40300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Starting Move
  (403, 40300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shinx - Thunder Shock - Level 4
  (403, 40300, 84, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shinx - Charge - Level 8
  (403, 40300, 268, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shinx - Bite - Level 12
  (403, 40300, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shinx - Spark - Level 16
  (403, 40300, 209, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shinx - Roar - Level 20
  (403, 40300, 46, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shinx - Volt Switch - Level 24
  (403, 40300, 521, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shinx - Scary Face - Level 28
  (403, 40300, 184, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shinx - Thunder Wave - Level 32
  (403, 40300, 86, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shinx - Crunch - Level 36
  (403, 40300, 242, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shinx - Discharge - Level 40
  (403, 40300, 435, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shinx - Swagger - Level 44
  (403, 40300, 207, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shinx - Wild Charge - Level 48
  (403, 40300, 528, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shinx - Roar - TM05
  (403, 40300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Shinx - Light Screen - TM16
  (403, 40300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Shinx - Protect - TM17
  (403, 40300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Shinx - Rain Dance - TM18
  (403, 40300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Shinx - Iron Tail - TM23
  (403, 40300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 19),
  -- Shinx - Thunderbolt - TM24
  (403, 40300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 20),
  -- Shinx - Thunder - TM25
  (403, 40300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 21),
  -- Shinx - Double Team - TM32
  (403, 40300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Shinx - Shock Wave - TM34
  (403, 40300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 23),
  -- Shinx - Facade - TM42
  (403, 40300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Shinx - Volt Switch - TM43
  (403, 40300, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 25),
  -- Shinx - Rest - TM44
  (403, 40300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Shinx - Attract - TM45
  (403, 40300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Shinx - Thief - TM46
  (403, 40300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Shinx - Charge Beam - TM57
  (403, 40300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 29),
  -- Shinx - Endure - TM58
  (403, 40300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Shinx - Flash - TM70
  (403, 40300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Shinx - Thunder Wave - TM73
  (403, 40300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 32),
  -- Shinx - Snarl - TM78
  (403, 40300, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 33),
  -- Shinx - Sleep Talk - TM82
  (403, 40300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Shinx - Swagger - TM87
  (403, 40300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Shinx - Substitute - TM90
  (403, 40300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Shinx - Strength - TM96
  (403, 40300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 37),
  -- Shinx - Baby-Doll Eyes - Egg
  (403, 40300, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shinx - Double Kick - Egg
  (403, 40300, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shinx - Eerie Impulse - Egg
  (403, 40300, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shinx - Fake Tears - Egg
  (403, 40300, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shinx - Fire Fang - Egg
  (403, 40300, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shinx - Helping Hand - Egg
  (403, 40300, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shinx - Howl - Egg
  (403, 40300, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shinx - Ice Fang - Egg
  (403, 40300, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shinx - Night Slash - Egg
  (403, 40300, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shinx - Quick Attack - Egg
  (403, 40300, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shinx - Swift - Egg
  (403, 40300, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shinx - Take Down - Egg
  (403, 40300, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shinx - Thunder Fang - Egg
  (403, 40300, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Luxio - Tackle - Starting Move
  (404, 40400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Starting Move
  (404, 40400, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Luxio - Thunder Shock - Starting Move
  (404, 40400, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Starting Move
  (404, 40400, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Luxio - Bite - Level 12
  (404, 40400, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Luxio - Spark - Level 18
  (404, 40400, 209, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 24
  (404, 40400, 46, 21, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Luxio - Volt Switch - Level 31
  (404, 40400, 521, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Luxio - Scary Face - Level 36
  (404, 40400, 184, 21, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Luxio - Thunder Wave - Level 42
  (404, 40400, 86, 21, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Luxio - Crunch - Level 48
  (404, 40400, 242, 21, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 54
  (404, 40400, 435, 21, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Luxio - Swagger - Level 60
  (404, 40400, 207, 21, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Luxio - Wild Charge - Level 68
  (404, 40400, 528, 21, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Luxio - Roar - TM05
  (404, 40400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Luxio - Light Screen - TM16
  (404, 40400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Luxio - Protect - TM17
  (404, 40400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Luxio - Rain Dance - TM18
  (404, 40400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Luxio - Iron Tail - TM23
  (404, 40400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 19),
  -- Luxio - Thunderbolt - TM24
  (404, 40400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 20),
  -- Luxio - Thunder - TM25
  (404, 40400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 21),
  -- Luxio - Double Team - TM32
  (404, 40400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Luxio - Shock Wave - TM34
  (404, 40400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 23),
  -- Luxio - Facade - TM42
  (404, 40400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Luxio - Volt Switch - TM43
  (404, 40400, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 25),
  -- Luxio - Rest - TM44
  (404, 40400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Luxio - Attract - TM45
  (404, 40400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Luxio - Thief - TM46
  (404, 40400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Luxio - Charge Beam - TM57
  (404, 40400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 29),
  -- Luxio - Endure - TM58
  (404, 40400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Luxio - Flash - TM70
  (404, 40400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Luxio - Thunder Wave - TM73
  (404, 40400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 32),
  -- Luxio - Snarl - TM78
  (404, 40400, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 33),
  -- Luxio - Sleep Talk - TM82
  (404, 40400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Luxio - Swagger - TM87
  (404, 40400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Luxio - Substitute - TM90
  (404, 40400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Luxio - Strength - TM96
  (404, 40400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 37),
  -- Luxio - Baby-Doll Eyes - Egg
  (404, 40400, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Luxio - Double Kick - Egg
  (404, 40400, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Luxio - Eerie Impulse - Egg
  (404, 40400, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Luxio - Fake Tears - Egg
  (404, 40400, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Luxio - Fire Fang - Egg
  (404, 40400, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Luxio - Helping Hand - Egg
  (404, 40400, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Luxio - Howl - Egg
  (404, 40400, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Luxio - Ice Fang - Egg
  (404, 40400, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Luxio - Night Slash - Egg
  (404, 40400, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Luxio - Quick Attack - Egg
  (404, 40400, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Luxio - Swift - Egg
  (404, 40400, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Luxio - Take Down - Egg
  (404, 40400, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Luxio - Thunder Fang - Egg
  (404, 40400, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Luxray - Electric Terrain - Starting Move
  (405, 40500, 604, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Luxray - Tackle - Starting Move
  (405, 40500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Luxray - Leer - Starting Move
  (405, 40500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Luxray - Thunder Shock - Starting Move
  (405, 40500, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Luxray - Charge - Starting Move
  (405, 40500, 268, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Luxray - Bite - Level 12
  (405, 40500, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Luxray - Spark - Level 18
  (405, 40500, 209, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Luxray - Roar - Level 24
  (405, 40500, 46, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Luxray - Volt Switch - Level 33
  (405, 40500, 521, 21, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxray - Scary Face - Level 40
  (405, 40500, 184, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Luxray - Thunder Wave - Level 48
  (405, 40500, 86, 21, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Luxray - Crunch - Level 56
  (405, 40500, 242, 21, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Luxray - Discharge - Level 64
  (405, 40500, 435, 21, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Luxray - Swagger - Level 72
  (405, 40500, 207, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Luxray - Wild Charge - Level 80
  (405, 40500, 528, 21, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Luxray - Roar - TM05
  (405, 40500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Luxray - Hyper Beam - TM15
  (405, 40500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Luxray - Light Screen - TM16
  (405, 40500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Luxray - Protect - TM17
  (405, 40500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Luxray - Rain Dance - TM18
  (405, 40500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Luxray - Iron Tail - TM23
  (405, 40500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Luxray - Thunderbolt - TM24
  (405, 40500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Luxray - Thunder - TM25
  (405, 40500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Luxray - Double Team - TM32
  (405, 40500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Luxray - Shock Wave - TM34
  (405, 40500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Luxray - Facade - TM42
  (405, 40500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Luxray - Volt Switch - TM43
  (405, 40500, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 27),
  -- Luxray - Rest - TM44
  (405, 40500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Luxray - Attract - TM45
  (405, 40500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Luxray - Thief - TM46
  (405, 40500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Luxray - Charge Beam - TM57
  (405, 40500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Luxray - Endure - TM58
  (405, 40500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Luxray - Giga Impact - TM68
  (405, 40500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Luxray - Flash - TM70
  (405, 40500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 34),
  -- Luxray - Thunder Wave - TM73
  (405, 40500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 35),
  -- Luxray - Snarl - TM78
  (405, 40500, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 36),
  -- Luxray - Sleep Talk - TM82
  (405, 40500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Luxray - Swagger - TM87
  (405, 40500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Luxray - Substitute - TM90
  (405, 40500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Luxray - Strength - TM96
  (405, 40500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Luxray - Baby-Doll Eyes - Egg
  (405, 40500, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Luxray - Double Kick - Egg
  (405, 40500, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Luxray - Eerie Impulse - Egg
  (405, 40500, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Luxray - Fake Tears - Egg
  (405, 40500, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Luxray - Fire Fang - Egg
  (405, 40500, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Luxray - Helping Hand - Egg
  (405, 40500, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Luxray - Howl - Egg
  (405, 40500, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Luxray - Ice Fang - Egg
  (405, 40500, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Luxray - Night Slash - Egg
  (405, 40500, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Luxray - Quick Attack - Egg
  (405, 40500, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Luxray - Swift - Egg
  (405, 40500, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Luxray - Take Down - Egg
  (405, 40500, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Luxray - Thunder Fang - Egg
  (405, 40500, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Budew - Absorb - Starting Move
  (406, 40600, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Budew - Growth - Starting Move
  (406, 40600, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Budew - Stun Spore - Starting Move
  (406, 40600, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Budew - Worry Seed - Starting Move
  (406, 40600, 388, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Budew - Bullet Seed - TM09
  (406, 40600, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 5),
  -- Budew - Sunny Day - TM11
  (406, 40600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 6),
  -- Budew - Protect - TM17
  (406, 40600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 7),
  -- Budew - Rain Dance - TM18
  (406, 40600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 8),
  -- Budew - Giga Drain - TM19
  (406, 40600, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 9),
  -- Budew - Dazzling Gleam - TM21
  (406, 40600, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 10),
  -- Budew - Solar Beam - TM22
  (406, 40600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 11),
  -- Budew - Shadow Ball - TM30
  (406, 40600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 12),
  -- Budew - Double Team - TM32
  (406, 40600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 13),
  -- Budew - Sludge Bomb - TM36
  (406, 40600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 14),
  -- Budew - Facade - TM42
  (406, 40600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 15),
  -- Budew - Rest - TM44
  (406, 40600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 16),
  -- Budew - Attract - TM45
  (406, 40600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 17),
  -- Budew - Energy Ball - TM53
  (406, 40600, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 18),
  -- Budew - Endure - TM58
  (406, 40600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 19),
  -- Budew - Flash - TM70
  (406, 40600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 20),
  -- Budew - Swords Dance - TM75
  (406, 40600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 21),
  -- Budew - Psych Up - TM77
  (406, 40600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 22),
  -- Budew - Sleep Talk - TM82
  (406, 40600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 23),
  -- Budew - Grass Knot - TM86
  (406, 40600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 24),
  -- Budew - Swagger - TM87
  (406, 40600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 25),
  -- Budew - Substitute - TM90
  (406, 40600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 26),
  -- Budew - Cut - TM93
  (406, 40600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 27),
  -- Budew - Cotton Spore - Egg
  (406, 40600, 178, 21, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Budew - Extrasensory - Egg
  (406, 40600, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Budew - Leaf Storm - Egg
  (406, 40600, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Budew - Life Dew - Egg
  (406, 40600, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Budew - Mind Reader - Egg
  (406, 40600, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Budew - Pin Missile - Egg
  (406, 40600, 42, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Budew - Razor Leaf - Egg
  (406, 40600, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Budew - Seed Bomb - Egg
  (406, 40600, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Budew - Sleep Powder - Egg
  (406, 40600, 79, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Budew - Spikes - Egg
  (406, 40600, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Budew - Synthesis - Egg
  (406, 40600, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Roserade - Grassy Terrain - Starting Move
  (407, 40700, 580, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Roserade - Poison Sting - Starting Move
  (407, 40700, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Roserade - Venom Drench - Starting Move
  (407, 40700, 599, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Roserade - Mega Drain - Starting Move
  (407, 40700, 72, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Roserade - Leech Seed - Starting Move
  (407, 40700, 73, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Roserade - Magical Leaf - Starting Move
  (407, 40700, 345, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Roserade - Toxic Spikes - Starting Move
  (407, 40700, 390, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Roserade - Sweet Scent - Starting Move
  (407, 40700, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Roserade - Giga Drain - Starting Move
  (407, 40700, 202, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Roserade - Synthesis - Starting Move
  (407, 40700, 235, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Roserade - Toxic - Starting Move
  (407, 40700, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Roserade - Petal Blizzard - Starting Move
  (407, 40700, 572, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Roserade - Aromatherapy - Starting Move
  (407, 40700, 312, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Roserade - Ingrain - Starting Move
  (407, 40700, 275, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Roserade - Petal Dance - Starting Move
  (407, 40700, 80, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Roserade - Absorb - Starting Move
  (407, 40700, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Roserade - Growth - Starting Move
  (407, 40700, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Roserade - Stun Spore - Starting Move
  (407, 40700, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Roserade - Worry Seed - Starting Move
  (407, 40700, 388, 21, NULL, 8, NULL, NULL, NULL, NULL, 19),
  -- Roserade - Toxic - TM06
  (407, 40700, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 20),
  -- Roserade - Bullet Seed - TM09
  (407, 40700, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Roserade - Sunny Day - TM11
  (407, 40700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Roserade - Hyper Beam - TM15
  (407, 40700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Roserade - Protect - TM17
  (407, 40700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Roserade - Rain Dance - TM18
  (407, 40700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Roserade - Giga Drain - TM19
  (407, 40700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Roserade - Dazzling Gleam - TM21
  (407, 40700, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 27),
  -- Roserade - Solar Beam - TM22
  (407, 40700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Roserade - Shadow Ball - TM30
  (407, 40700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Roserade - Double Team - TM32
  (407, 40700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Roserade - Sludge Bomb - TM36
  (407, 40700, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 31),
  -- Roserade - Facade - TM42
  (407, 40700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Roserade - Rest - TM44
  (407, 40700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Roserade - Attract - TM45
  (407, 40700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Roserade - Energy Ball - TM53
  (407, 40700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Roserade - Endure - TM58
  (407, 40700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Roserade - Giga Impact - TM68
  (407, 40700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Roserade - Flash - TM70
  (407, 40700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Roserade - Swords Dance - TM75
  (407, 40700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Roserade - Psych Up - TM77
  (407, 40700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Roserade - Sleep Talk - TM82
  (407, 40700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Roserade - Poison Jab - TM84
  (407, 40700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 42),
  -- Roserade - Grass Knot - TM86
  (407, 40700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 43),
  -- Roserade - Swagger - TM87
  (407, 40700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Roserade - Substitute - TM90
  (407, 40700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Roserade - Cut - TM93
  (407, 40700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 46),
  -- Roserade - Cotton Spore - Egg
  (407, 40700, 178, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roserade - Extrasensory - Egg
  (407, 40700, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roserade - Leaf Storm - Egg
  (407, 40700, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Roserade - Life Dew - Egg
  (407, 40700, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Roserade - Mind Reader - Egg
  (407, 40700, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Roserade - Pin Missile - Egg
  (407, 40700, 42, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roserade - Power Whip - Egg
  (407, 40700, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roserade - Razor Leaf - Egg
  (407, 40700, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roserade - Seed Bomb - Egg
  (407, 40700, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Roserade - Sleep Powder - Egg
  (407, 40700, 79, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Roserade - Spikes - Egg
  (407, 40700, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Roserade - Synthesis - Egg
  (407, 40700, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cranidos - Headbutt - Starting Move
  (408, 40800, 29, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cranidos - Leer - Starting Move
  (408, 40800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cranidos - Focus Energy - Level 6
  (408, 40800, 116, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cranidos - Rock Polish - Level 10
  (408, 40800, 397, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cranidos - Take Down - Level 15
  (408, 40800, 36, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cranidos - Scary Face - Level 19
  (408, 40800, 184, 21, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cranidos - Assurance - Level 24
  (408, 40800, 372, 21, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cranidos - Swords Dance - Level 28
  (408, 40800, 14, 21, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cranidos - Ancient Power - Level 33
  (408, 40800, 246, 21, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cranidos - Zen Headbutt - Level 37
  (408, 40800, 428, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cranidos - Screech - Level 42
  (408, 40800, 103, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cranidos - Head Smash - Level 46
  (408, 40800, 457, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cranidos - Roar - TM05
  (408, 40800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 13),
  -- Cranidos - Sunny Day - TM11
  (408, 40800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Cranidos - Ice Beam - TM13
  (408, 40800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 15),
  -- Cranidos - Blizzard - TM14
  (408, 40800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 16),
  -- Cranidos - Protect - TM17
  (408, 40800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Cranidos - Rain Dance - TM18
  (408, 40800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Cranidos - Iron Tail - TM23
  (408, 40800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 19),
  -- Cranidos - Thunderbolt - TM24
  (408, 40800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 20),
  -- Cranidos - Thunder - TM25
  (408, 40800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 21),
  -- Cranidos - Earthquake - TM26
  (408, 40800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 22),
  -- Cranidos - Dig - TM28
  (408, 40800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Cranidos - Double Team - TM32
  (408, 40800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Cranidos - Shock Wave - TM34
  (408, 40800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Cranidos - Flamethrower - TM35
  (408, 40800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Cranidos - Sandstorm - TM37
  (408, 40800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 27),
  -- Cranidos - Fire Blast - TM38
  (408, 40800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 28),
  -- Cranidos - Rock Tomb - TM39
  (408, 40800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Cranidos - Facade - TM42
  (408, 40800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Cranidos - Rest - TM44
  (408, 40800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Cranidos - Attract - TM45
  (408, 40800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Cranidos - Thief - TM46
  (408, 40800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Cranidos - Fling - TM56
  (408, 40800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Cranidos - Endure - TM58
  (408, 40800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Cranidos - Dragon Pulse - TM59
  (408, 40800, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Cranidos - Payback - TM66
  (408, 40800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Cranidos - Rock Polish - TM69
  (408, 40800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 38),
  -- Cranidos - Stone Edge - TM71
  (408, 40800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 39),
  -- Cranidos - Swords Dance - TM75
  (408, 40800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 40),
  -- Cranidos - Stealth Rock - TM76
  (408, 40800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 41),
  -- Cranidos - Rock Slide - TM80
  (408, 40800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Cranidos - Sleep Talk - TM82
  (408, 40800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Cranidos - Bulldoze - TM83
  (408, 40800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Cranidos - Swagger - TM87
  (408, 40800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Cranidos - Substitute - TM90
  (408, 40800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Cranidos - Strength - TM96
  (408, 40800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Cranidos - Rock Smash - TM98
  (408, 40800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Cranidos - Rock Climb - TM100
  (408, 40800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 49),
  -- Cranidos - Crunch - Egg
  (408, 40800, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cranidos - Curse - Egg
  (408, 40800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cranidos - Double-Edge - Egg
  (408, 40800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cranidos - Hammer Arm - Egg
  (408, 40800, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cranidos - Iron Head - Egg
  (408, 40800, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cranidos - Leer - Egg
  (408, 40800, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cranidos - Slam - Egg
  (408, 40800, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cranidos - Stomp - Egg
  (408, 40800, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cranidos - Thrash - Egg
  (408, 40800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cranidos - Whirlwind - Egg
  (408, 40800, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Rampardos - Endeavor - Starting Move
  (409, 40900, 283, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rampardos - Headbutt - Starting Move
  (409, 40900, 29, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rampardos - Leer - Starting Move
  (409, 40900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Rampardos - Focus Energy - Starting Move
  (409, 40900, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Rampardos - Endeavor - Evolution
  (409, 40900, 283, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Rampardos - Focus Energy - Level 6
  (409, 40900, 116, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Rampardos - Rock Polish - Level 10
  (409, 40900, 397, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Rampardos - Take Down - Level 15
  (409, 40900, 36, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Rampardos - Scary Face - Level 19
  (409, 40900, 184, 21, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Rampardos - Assurance - Level 24
  (409, 40900, 372, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Rampardos - Swords Dance - Level 28
  (409, 40900, 14, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Rampardos - Ancient Power - Level 36
  (409, 40900, 246, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Rampardos - Zen Headbutt - Level 43
  (409, 40900, 428, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Rampardos - Screech - Level 51
  (409, 40900, 103, 21, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Rampardos - Head Smash - Level 58
  (409, 40900, 457, 21, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Rampardos - Focus Punch - TM01
  (409, 40900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Rampardos - Roar - TM05
  (409, 40900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Rampardos - Sunny Day - TM11
  (409, 40900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Rampardos - Ice Beam - TM13
  (409, 40900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Rampardos - Blizzard - TM14
  (409, 40900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Rampardos - Hyper Beam - TM15
  (409, 40900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Rampardos - Protect - TM17
  (409, 40900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Rampardos - Rain Dance - TM18
  (409, 40900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Rampardos - Iron Tail - TM23
  (409, 40900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Rampardos - Thunderbolt - TM24
  (409, 40900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Rampardos - Thunder - TM25
  (409, 40900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Rampardos - Earthquake - TM26
  (409, 40900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Rampardos - Dig - TM28
  (409, 40900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Rampardos - Brick Break - TM31
  (409, 40900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Rampardos - Double Team - TM32
  (409, 40900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Rampardos - Shock Wave - TM34
  (409, 40900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Rampardos - Flamethrower - TM35
  (409, 40900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Rampardos - Sandstorm - TM37
  (409, 40900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Rampardos - Fire Blast - TM38
  (409, 40900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Rampardos - Rock Tomb - TM39
  (409, 40900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Rampardos - Facade - TM42
  (409, 40900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Rampardos - Rest - TM44
  (409, 40900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Rampardos - Attract - TM45
  (409, 40900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Rampardos - Thief - TM46
  (409, 40900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Rampardos - Focus Blast - TM52
  (409, 40900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Rampardos - Fling - TM56
  (409, 40900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Rampardos - Endure - TM58
  (409, 40900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Rampardos - Dragon Pulse - TM59
  (409, 40900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 43),
  -- Rampardos - Payback - TM66
  (409, 40900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 44),
  -- Rampardos - Giga Impact - TM68
  (409, 40900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 45),
  -- Rampardos - Rock Polish - TM69
  (409, 40900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 46),
  -- Rampardos - Stone Edge - TM71
  (409, 40900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 47),
  -- Rampardos - Avalanche - TM72
  (409, 40900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 48),
  -- Rampardos - Swords Dance - TM75
  (409, 40900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 49),
  -- Rampardos - Stealth Rock - TM76
  (409, 40900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 50),
  -- Rampardos - Rock Slide - TM80
  (409, 40900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Rampardos - Sleep Talk - TM82
  (409, 40900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Rampardos - Bulldoze - TM83
  (409, 40900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Rampardos - Swagger - TM87
  (409, 40900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Rampardos - Substitute - TM90
  (409, 40900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Rampardos - Cut - TM93
  (409, 40900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 56),
  -- Rampardos - Surf - TM95
  (409, 40900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 57),
  -- Rampardos - Strength - TM96
  (409, 40900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 58),
  -- Rampardos - Rock Smash - TM98
  (409, 40900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Rampardos - Rock Climb - TM100
  (409, 40900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 60),
  -- Rampardos - Crunch - Egg
  (409, 40900, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rampardos - Curse - Egg
  (409, 40900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rampardos - Double-Edge - Egg
  (409, 40900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rampardos - Hammer Arm - Egg
  (409, 40900, 359, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rampardos - Iron Head - Egg
  (409, 40900, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rampardos - Leer - Egg
  (409, 40900, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rampardos - Slam - Egg
  (409, 40900, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rampardos - Stomp - Egg
  (409, 40900, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rampardos - Thrash - Egg
  (409, 40900, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Rampardos - Whirlwind - Egg
  (409, 40900, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Shieldon - Tackle - Starting Move
  (410, 41000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shieldon - Protect - Starting Move
  (410, 41000, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shieldon - Taunt - Level 6
  (410, 41000, 269, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Shieldon - Metal Sound - Level 10
  (410, 41000, 319, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shieldon - Take Down - Level 15
  (410, 41000, 36, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shieldon - Iron Defense - Level 19
  (410, 41000, 334, 21, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shieldon - Swagger - Level 24
  (410, 41000, 207, 21, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Shieldon - Ancient Power - Level 28
  (410, 41000, 246, 21, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shieldon - Endure - Level 33
  (410, 41000, 203, 21, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shieldon - Metal Burst - Level 37
  (410, 41000, 368, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shieldon - Iron Head - Level 42
  (410, 41000, 442, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Shieldon - Heavy Slam - Level 46
  (410, 41000, 484, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Shieldon - Roar - TM05
  (410, 41000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 13),
  -- Shieldon - Sunny Day - TM11
  (410, 41000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Shieldon - Taunt - TM12
  (410, 41000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 15),
  -- Shieldon - Ice Beam - TM13
  (410, 41000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 16),
  -- Shieldon - Blizzard - TM14
  (410, 41000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 17),
  -- Shieldon - Protect - TM17
  (410, 41000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Shieldon - Rain Dance - TM18
  (410, 41000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Shieldon - Iron Tail - TM23
  (410, 41000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Shieldon - Thunderbolt - TM24
  (410, 41000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Shieldon - Thunder - TM25
  (410, 41000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Shieldon - Earthquake - TM26
  (410, 41000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Shieldon - Dig - TM28
  (410, 41000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Shieldon - Double Team - TM32
  (410, 41000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Shieldon - Shock Wave - TM34
  (410, 41000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Shieldon - Flamethrower - TM35
  (410, 41000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 27),
  -- Shieldon - Sandstorm - TM37
  (410, 41000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Shieldon - Fire Blast - TM38
  (410, 41000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 29),
  -- Shieldon - Rock Tomb - TM39
  (410, 41000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Shieldon - Torment - TM41
  (410, 41000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Shieldon - Facade - TM42
  (410, 41000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Shieldon - Rest - TM44
  (410, 41000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Shieldon - Attract - TM45
  (410, 41000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Shieldon - Endure - TM58
  (410, 41000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Shieldon - Rock Polish - TM69
  (410, 41000, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 36),
  -- Shieldon - Stone Edge - TM71
  (410, 41000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 37),
  -- Shieldon - Stealth Rock - TM76
  (410, 41000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Shieldon - Rock Slide - TM80
  (410, 41000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Shieldon - Sleep Talk - TM82
  (410, 41000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Shieldon - Bulldoze - TM83
  (410, 41000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Shieldon - Swagger - TM87
  (410, 41000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Shieldon - Substitute - TM90
  (410, 41000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Shieldon - Flash Cannon - TM91
  (410, 41000, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 44),
  -- Shieldon - Strength - TM96
  (410, 41000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Shieldon - Rock Smash - TM98
  (410, 41000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Shieldon - Body Slam - Egg
  (410, 41000, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shieldon - Counter - Egg
  (410, 41000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shieldon - Curse - Egg
  (410, 41000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shieldon - Double-Edge - Egg
  (410, 41000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shieldon - Fissure - Egg
  (410, 41000, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shieldon - Focus Energy - Egg
  (410, 41000, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shieldon - Guard Split - Egg
  (410, 41000, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shieldon - Headbutt - Egg
  (410, 41000, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shieldon - Rock Blast - Egg
  (410, 41000, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shieldon - Scary Face - Egg
  (410, 41000, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shieldon - Screech - Egg
  (410, 41000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shieldon - Wide Guard - Egg
  (410, 41000, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Bastiodon - Block - Starting Move
  (411, 41100, 335, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bastiodon - Tackle - Starting Move
  (411, 41100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bastiodon - Protect - Starting Move
  (411, 41100, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Bastiodon - Taunt - Starting Move
  (411, 41100, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Bastiodon - Metal Sound - Starting Move
  (411, 41100, 319, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Bastiodon - Block - Evolution
  (411, 41100, 335, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Bastiodon - Taunt - Level 6
  (411, 41100, 269, 21, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Bastiodon - Metal Sound - Level 10
  (411, 41100, 319, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Bastiodon - Take Down - Level 15
  (411, 41100, 36, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Bastiodon - Iron Defense - Level 19
  (411, 41100, 334, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Bastiodon - Swagger - Level 24
  (411, 41100, 207, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Bastiodon - Ancient Power - Level 28
  (411, 41100, 246, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Bastiodon - Endure - Level 36
  (411, 41100, 203, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Bastiodon - Metal Burst - Level 43
  (411, 41100, 368, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Bastiodon - Iron Head - Level 51
  (411, 41100, 442, 21, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Bastiodon - Heavy Slam - Level 58
  (411, 41100, 484, 21, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Bastiodon - Roar - TM05
  (411, 41100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Bastiodon - Sunny Day - TM11
  (411, 41100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Bastiodon - Taunt - TM12
  (411, 41100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Bastiodon - Ice Beam - TM13
  (411, 41100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Bastiodon - Blizzard - TM14
  (411, 41100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Bastiodon - Hyper Beam - TM15
  (411, 41100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Bastiodon - Protect - TM17
  (411, 41100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Bastiodon - Rain Dance - TM18
  (411, 41100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Bastiodon - Iron Tail - TM23
  (411, 41100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Bastiodon - Thunderbolt - TM24
  (411, 41100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Bastiodon - Thunder - TM25
  (411, 41100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Bastiodon - Earthquake - TM26
  (411, 41100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Bastiodon - Dig - TM28
  (411, 41100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Bastiodon - Double Team - TM32
  (411, 41100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Bastiodon - Shock Wave - TM34
  (411, 41100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Bastiodon - Flamethrower - TM35
  (411, 41100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Bastiodon - Sandstorm - TM37
  (411, 41100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Bastiodon - Fire Blast - TM38
  (411, 41100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Bastiodon - Rock Tomb - TM39
  (411, 41100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Bastiodon - Torment - TM41
  (411, 41100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Bastiodon - Facade - TM42
  (411, 41100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Bastiodon - Rest - TM44
  (411, 41100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Bastiodon - Attract - TM45
  (411, 41100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Bastiodon - Endure - TM58
  (411, 41100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Bastiodon - Giga Impact - TM68
  (411, 41100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Bastiodon - Rock Polish - TM69
  (411, 41100, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 42),
  -- Bastiodon - Stone Edge - TM71
  (411, 41100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 43),
  -- Bastiodon - Avalanche - TM72
  (411, 41100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 44),
  -- Bastiodon - Stealth Rock - TM76
  (411, 41100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 45),
  -- Bastiodon - Rock Slide - TM80
  (411, 41100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 46),
  -- Bastiodon - Sleep Talk - TM82
  (411, 41100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Bastiodon - Bulldoze - TM83
  (411, 41100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Bastiodon - Swagger - TM87
  (411, 41100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Bastiodon - Substitute - TM90
  (411, 41100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Bastiodon - Flash Cannon - TM91
  (411, 41100, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 51),
  -- Bastiodon - Strength - TM96
  (411, 41100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Bastiodon - Rock Smash - TM98
  (411, 41100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Bastiodon - Body Slam - Egg
  (411, 41100, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bastiodon - Counter - Egg
  (411, 41100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bastiodon - Curse - Egg
  (411, 41100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bastiodon - Double-Edge - Egg
  (411, 41100, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Bastiodon - Fissure - Egg
  (411, 41100, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Bastiodon - Focus Energy - Egg
  (411, 41100, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bastiodon - Guard Split - Egg
  (411, 41100, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bastiodon - Headbutt - Egg
  (411, 41100, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Bastiodon - Rock Blast - Egg
  (411, 41100, 350, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Bastiodon - Scary Face - Egg
  (411, 41100, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Bastiodon - Screech - Egg
  (411, 41100, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bastiodon - Wide Guard - Egg
  (411, 41100, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Burmy - Protect - Starting Move
  (412, 41200, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Burmy - Tackle - Level 10
  (412, 41200, 33, 21, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Burmy - Bug Bite - Level 15
  (412, 41200, 450, 21, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Burmy - String Shot - Level 20
  (412, 41200, 81, 21, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Burmy - Protect - TM17
  (412, 41200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 5),
  -- Wormadam - Quiver Dance - Starting Move
  (413, 41300, 483, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wormadam - Sucker Punch - Starting Move
  (413, 41300, 389, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wormadam - Tackle - Starting Move
  (413, 41300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Wormadam - Protect - Starting Move
  (413, 41300, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Wormadam - Bug Bite - Starting Move
  (413, 41300, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Wormadam - Quiver Dance - Evolution
  (413, 41300, 483, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Wormadam - Protect - Level 10
  (413, 41300, 182, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Wormadam - Bug Bite - Level 15
  (413, 41300, 450, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Wormadam - String Shot - Level 20
  (413, 41300, 81, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Wormadam - Confusion - Level 23
  (413, 41300, 93, 21, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Wormadam - Razor Leaf - Level 26
  (413, 41300, 75, 21, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Wormadam - Growth - Level 29
  (413, 41300, 74, 21, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Wormadam - Psybeam - Level 32
  (413, 41300, 60, 21, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Wormadam - Infestation - Level 35
  (413, 41300, 611, 21, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Wormadam - Flail - Level 38
  (413, 41300, 175, 21, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Wormadam - Attract - Level 41
  (413, 41300, 213, 21, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Wormadam - Psychic - Level 44
  (413, 41300, 94, 21, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Wormadam - Leaf Storm - Level 47
  (413, 41300, 437, 21, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Wormadam - Bug Buzz - Level 50
  (413, 41300, 405, 21, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Wormadam - Bullet Seed - TM09
  (413, 41300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 20),
  -- Wormadam - Sunny Day - TM11
  (413, 41300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Wormadam - Hyper Beam - TM15
  (413, 41300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Wormadam - Protect - TM17
  (413, 41300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Wormadam - Rain Dance - TM18
  (413, 41300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Wormadam - Giga Drain - TM19
  (413, 41300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Wormadam - Safeguard - TM20
  (413, 41300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Wormadam - Solar Beam - TM22
  (413, 41300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Wormadam - Dig - TM28
  (413, 41300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Wormadam - Psychic - TM29
  (413, 41300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Wormadam - Shadow Ball - TM30
  (413, 41300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Wormadam - Double Team - TM32
  (413, 41300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Wormadam - Facade - TM42
  (413, 41300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Wormadam - Rest - TM44
  (413, 41300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Wormadam - Attract - TM45
  (413, 41300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Wormadam - Thief - TM46
  (413, 41300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Wormadam - Skill Swap - TM48
  (413, 41300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Wormadam - Energy Ball - TM53
  (413, 41300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Wormadam - Endure - TM58
  (413, 41300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Wormadam - Bug Buzz - TM62
  (413, 41300, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 39),
  -- Wormadam - Giga Impact - TM68
  (413, 41300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Wormadam - Flash - TM70
  (413, 41300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Wormadam - Psych Up - TM77
  (413, 41300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Wormadam - Sleep Talk - TM82
  (413, 41300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Wormadam - Dream Eater - TM85
  (413, 41300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 44),
  -- Wormadam - Grass Knot - TM86
  (413, 41300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 45),
  -- Wormadam - Swagger - TM87
  (413, 41300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Wormadam - Substitute - TM90
  (413, 41300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Mothim - Quiver Dance - Starting Move
  (414, 41400, 483, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mothim - Tackle - Starting Move
  (414, 41400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mothim - Protect - Starting Move
  (414, 41400, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mothim - Bug Bite - Starting Move
  (414, 41400, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mothim - Quiver Dance - Evolution
  (414, 41400, 483, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Mothim - Protect - Level 10
  (414, 41400, 182, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Mothim - Bug Bite - Level 15
  (414, 41400, 450, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mothim - String Shot - Level 20
  (414, 41400, 81, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Mothim - Confusion - Level 23
  (414, 41400, 93, 21, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Mothim - Gust - Level 26
  (414, 41400, 16, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Mothim - Poison Powder - Level 29
  (414, 41400, 77, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Mothim - Psybeam - Level 32
  (414, 41400, 60, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mothim - Roost - Level 35
  (414, 41400, 355, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Mothim - Struggle Bug - Level 38
  (414, 41400, 522, 21, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Mothim - Air Slash - Level 41
  (414, 41400, 403, 21, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Mothim - Psychic - Level 44
  (414, 41400, 94, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Mothim - Lunge - Level 47
  (414, 41400, 679, 21, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Mothim - Bug Buzz - Level 50
  (414, 41400, 405, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Mothim - Sunny Day - TM11
  (414, 41400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Mothim - Hyper Beam - TM15
  (414, 41400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Mothim - Protect - TM17
  (414, 41400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Mothim - Rain Dance - TM18
  (414, 41400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Mothim - Giga Drain - TM19
  (414, 41400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Mothim - Safeguard - TM20
  (414, 41400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Mothim - Solar Beam - TM22
  (414, 41400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Mothim - Psychic - TM29
  (414, 41400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Mothim - Shadow Ball - TM30
  (414, 41400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Mothim - Double Team - TM32
  (414, 41400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Mothim - Aerial Ace - TM40
  (414, 41400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Mothim - Facade - TM42
  (414, 41400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Mothim - Rest - TM44
  (414, 41400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Mothim - Attract - TM45
  (414, 41400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Mothim - Thief - TM46
  (414, 41400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Mothim - Skill Swap - TM48
  (414, 41400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 34),
  -- Mothim - Roost - TM51
  (414, 41400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 35),
  -- Mothim - Energy Ball - TM53
  (414, 41400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 36),
  -- Mothim - Endure - TM58
  (414, 41400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Mothim - Bug Buzz - TM62
  (414, 41400, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 38),
  -- Mothim - Giga Impact - TM68
  (414, 41400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Mothim - Flash - TM70
  (414, 41400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 40),
  -- Mothim - Psych Up - TM77
  (414, 41400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Mothim - Sleep Talk - TM82
  (414, 41400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Mothim - Dream Eater - TM85
  (414, 41400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 43),
  -- Mothim - Swagger - TM87
  (414, 41400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Mothim - U-turn - TM89
  (414, 41400, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 45),
  -- Mothim - Substitute - TM90
  (414, 41400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Mothim - Defog - TM97
  (414, 41400, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 47),
  -- Combee - Sweet Scent - Starting Move
  (415, 41500, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Combee - Gust - Starting Move
  (415, 41500, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Combee - Struggle Bug - Starting Move
  (415, 41500, 522, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Combee - Bug Bite - Starting Move
  (415, 41500, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Combee - Bug Buzz - TM62
  (415, 41500, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 5),
  -- Vespiquen - Slash - Starting Move
  (416, 41600, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Vespiquen - Struggle Bug - Starting Move
  (416, 41600, 522, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Vespiquen - Bug Bite - Starting Move
  (416, 41600, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Vespiquen - Sweet Scent - Starting Move
  (416, 41600, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Vespiquen - Gust - Starting Move
  (416, 41600, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Vespiquen - Poison Sting - Starting Move
  (416, 41600, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Vespiquen - Confuse Ray - Starting Move
  (416, 41600, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Vespiquen - Slash - Evolution
  (416, 41600, 163, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Vespiquen - Fury Cutter - Level 4
  (416, 41600, 210, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Vespiquen - Aromatic Mist - Level 8
  (416, 41600, 597, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Vespiquen - Fell Stinger - Level 12
  (416, 41600, 565, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Vespiquen - Fury Swipes - Level 16
  (416, 41600, 154, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Vespiquen - Swagger - Level 20
  (416, 41600, 207, 21, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Vespiquen - Aromatherapy - Level 24
  (416, 41600, 312, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Vespiquen - Air Slash - Level 28
  (416, 41600, 403, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Vespiquen - Power Gem - Level 32
  (416, 41600, 408, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Vespiquen - Toxic - Level 36
  (416, 41600, 92, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Vespiquen - Attack Order - Level 40
  (416, 41600, 454, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Vespiquen - Defend Order - Level 40
  (416, 41600, 455, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Vespiquen - Destiny Bond - Level 44
  (416, 41600, 194, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Vespiquen - Toxic - TM06
  (416, 41600, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 21),
  -- Vespiquen - Sunny Day - TM11
  (416, 41600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Vespiquen - Hyper Beam - TM15
  (416, 41600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Vespiquen - Protect - TM17
  (416, 41600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Vespiquen - Rain Dance - TM18
  (416, 41600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Vespiquen - Double Team - TM32
  (416, 41600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Vespiquen - Sludge Bomb - TM36
  (416, 41600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Vespiquen - Aerial Ace - TM40
  (416, 41600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Vespiquen - Facade - TM42
  (416, 41600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Vespiquen - Rest - TM44
  (416, 41600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Vespiquen - Attract - TM45
  (416, 41600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Vespiquen - Thief - TM46
  (416, 41600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Vespiquen - Roost - TM51
  (416, 41600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 33),
  -- Vespiquen - Fling - TM56
  (416, 41600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Vespiquen - Endure - TM58
  (416, 41600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Vespiquen - Bug Buzz - TM62
  (416, 41600, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 36),
  -- Vespiquen - Giga Impact - TM68
  (416, 41600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Vespiquen - Flash - TM70
  (416, 41600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Vespiquen - X-Scissor - TM81
  (416, 41600, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 39),
  -- Vespiquen - Sleep Talk - TM82
  (416, 41600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Vespiquen - Swagger - TM87
  (416, 41600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Vespiquen - U-turn - TM89
  (416, 41600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 42),
  -- Vespiquen - Substitute - TM90
  (416, 41600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Vespiquen - Cut - TM93
  (416, 41600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Vespiquen - Defog - TM97
  (416, 41600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 45),
  -- Pachirisu - Growl - Starting Move
  (417, 41700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pachirisu - Baby-Doll Eyes - Starting Move
  (417, 41700, 608, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pachirisu - Quick Attack - Level 5
  (417, 41700, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pachirisu - Charm - Level 9
  (417, 41700, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pachirisu - Spark - Level 13
  (417, 41700, 209, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pachirisu - Endure - Level 17
  (417, 41700, 203, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pachirisu - Nuzzle - Level 19
  (417, 41700, 609, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Pachirisu - Swift - Level 21
  (417, 41700, 129, 21, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pachirisu - Electro Ball - Level 25
  (417, 41700, 486, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pachirisu - Sweet Kiss - Level 29
  (417, 41700, 186, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Pachirisu - Thunder Wave - Level 33
  (417, 41700, 86, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pachirisu - Super Fang - Level 37
  (417, 41700, 162, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Pachirisu - Discharge - Level 41
  (417, 41700, 435, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Pachirisu - Last Resort - Level 45
  (417, 41700, 387, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pachirisu - Thunder - Level 49
  (417, 41700, 87, 21, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Pachirisu - Light Screen - TM16
  (417, 41700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Pachirisu - Protect - TM17
  (417, 41700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Pachirisu - Rain Dance - TM18
  (417, 41700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Pachirisu - Iron Tail - TM23
  (417, 41700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 19),
  -- Pachirisu - Thunderbolt - TM24
  (417, 41700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 20),
  -- Pachirisu - Thunder - TM25
  (417, 41700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 21),
  -- Pachirisu - Dig - TM28
  (417, 41700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Pachirisu - Double Team - TM32
  (417, 41700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Pachirisu - Shock Wave - TM34
  (417, 41700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 24),
  -- Pachirisu - Facade - TM42
  (417, 41700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Pachirisu - Volt Switch - TM43
  (417, 41700, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 26),
  -- Pachirisu - Rest - TM44
  (417, 41700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Pachirisu - Attract - TM45
  (417, 41700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Pachirisu - Fling - TM56
  (417, 41700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 29),
  -- Pachirisu - Charge Beam - TM57
  (417, 41700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 30),
  -- Pachirisu - Endure - TM58
  (417, 41700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Pachirisu - Flash - TM70
  (417, 41700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Pachirisu - Thunder Wave - TM73
  (417, 41700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 33),
  -- Pachirisu - Sleep Talk - TM82
  (417, 41700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Pachirisu - Grass Knot - TM86
  (417, 41700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 35),
  -- Pachirisu - Swagger - TM87
  (417, 41700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Pachirisu - U-turn - TM89
  (417, 41700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 37),
  -- Pachirisu - Substitute - TM90
  (417, 41700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Pachirisu - Cut - TM93
  (417, 41700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Pachirisu - Baby-Doll Eyes - Egg
  (417, 41700, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pachirisu - Bite - Egg
  (417, 41700, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pachirisu - Charge - Egg
  (417, 41700, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pachirisu - Covet - Egg
  (417, 41700, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pachirisu - Defense Curl - Egg
  (417, 41700, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pachirisu - Fake Tears - Egg
  (417, 41700, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pachirisu - Flail - Egg
  (417, 41700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pachirisu - Flatter - Egg
  (417, 41700, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pachirisu - Follow Me - Egg
  (417, 41700, 266, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pachirisu - Rollout - Egg
  (417, 41700, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pachirisu - Tail Whip - Egg
  (417, 41700, 39, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buizel - Tackle - Starting Move
  (418, 41800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Buizel - Growl - Level 4
  (418, 41800, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Buizel - Tail Whip - Level 7
  (418, 41800, 39, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Buizel - Quick Attack - Level 11
  (418, 41800, 98, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Buizel - Water Gun - Level 15
  (418, 41800, 55, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Buizel - Bite - Level 18
  (418, 41800, 44, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Buizel - Swift - Level 21
  (418, 41800, 129, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Buizel - Aqua Jet - Level 24
  (418, 41800, 453, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buizel - Double Hit - Level 27
  (418, 41800, 458, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Buizel - Whirlpool - Level 31
  (418, 41800, 250, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Buizel - Waterfall - Level 35
  (418, 41800, 127, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Buizel - Aqua Tail - Level 38
  (418, 41800, 401, 21, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Buizel - Agility - Level 41
  (418, 41800, 97, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Buizel - Hydro Pump - Level 45
  (418, 41800, 56, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Buizel - Focus Punch - TM01
  (418, 41800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Buizel - Water Pulse - TM03
  (418, 41800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Buizel - Hail - TM07
  (418, 41800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Buizel - Bulk Up - TM08
  (418, 41800, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 18),
  -- Buizel - Ice Beam - TM13
  (418, 41800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Buizel - Blizzard - TM14
  (418, 41800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Buizel - Protect - TM17
  (418, 41800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Buizel - Rain Dance - TM18
  (418, 41800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Buizel - Iron Tail - TM23
  (418, 41800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Buizel - Dig - TM28
  (418, 41800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Buizel - Brick Break - TM31
  (418, 41800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Buizel - Double Team - TM32
  (418, 41800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Buizel - Rock Tomb - TM39
  (418, 41800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Buizel - Facade - TM42
  (418, 41800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Buizel - Rest - TM44
  (418, 41800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Buizel - Attract - TM45
  (418, 41800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Buizel - Scald - TM49
  (418, 41800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Buizel - Brine - TM55
  (418, 41800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 32),
  -- Buizel - Endure - TM58
  (418, 41800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Buizel - Sleep Talk - TM82
  (418, 41800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Buizel - Swagger - TM87
  (418, 41800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Buizel - Substitute - TM90
  (418, 41800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Buizel - Surf - TM95
  (418, 41800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 37),
  -- Buizel - Strength - TM96
  (418, 41800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Buizel - Rock Smash - TM98
  (418, 41800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Buizel - Waterfall - TM99
  (418, 41800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 40),
  -- Buizel - Aqua Ring - Egg
  (418, 41800, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Buizel - Aqua Tail - Egg
  (418, 41800, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Buizel - Baton Pass - Egg
  (418, 41800, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Buizel - Fury Cutter - Egg
  (418, 41800, 210, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Buizel - Fury Swipes - Egg
  (418, 41800, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buizel - Headbutt - Egg
  (418, 41800, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buizel - Helping Hand - Egg
  (418, 41800, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buizel - Mud-Slap - Egg
  (418, 41800, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buizel - Slash - Egg
  (418, 41800, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buizel - Soak - Egg
  (418, 41800, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buizel - Switcheroo - Egg
  (418, 41800, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Floatzel - Ice Fang - Starting Move
  (419, 41900, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Floatzel - Crunch - Starting Move
  (419, 41900, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Floatzel - Tackle - Starting Move
  (419, 41900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Floatzel - Growl - Starting Move
  (419, 41900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Floatzel - Quick Attack - Starting Move
  (419, 41900, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Floatzel - Growl - Level 4
  (419, 41900, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Floatzel - Tail Whip - Level 7
  (419, 41900, 39, 21, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Floatzel - Quick Attack - Level 11
  (419, 41900, 98, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Floatzel - Water Gun - Level 15
  (419, 41900, 55, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Floatzel - Bite - Level 18
  (419, 41900, 44, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Floatzel - Swift - Level 21
  (419, 41900, 129, 21, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Floatzel - Aqua Jet - Level 24
  (419, 41900, 453, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Floatzel - Double Hit - Level 29
  (419, 41900, 458, 21, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Floatzel - Whirlpool - Level 35
  (419, 41900, 250, 21, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Floatzel - Waterfall - Level 41
  (419, 41900, 127, 21, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Floatzel - Aqua Tail - Level 46
  (419, 41900, 401, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Floatzel - Agility - Level 51
  (419, 41900, 97, 21, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Floatzel - Hydro Pump - Level 57
  (419, 41900, 56, 21, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Floatzel - Focus Punch - TM01
  (419, 41900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Floatzel - Water Pulse - TM03
  (419, 41900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Floatzel - Roar - TM05
  (419, 41900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Floatzel - Hail - TM07
  (419, 41900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Floatzel - Bulk Up - TM08
  (419, 41900, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 23),
  -- Floatzel - Taunt - TM12
  (419, 41900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Floatzel - Ice Beam - TM13
  (419, 41900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Floatzel - Blizzard - TM14
  (419, 41900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Floatzel - Hyper Beam - TM15
  (419, 41900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Floatzel - Protect - TM17
  (419, 41900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Floatzel - Rain Dance - TM18
  (419, 41900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Floatzel - Iron Tail - TM23
  (419, 41900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Floatzel - Dig - TM28
  (419, 41900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Floatzel - Brick Break - TM31
  (419, 41900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Floatzel - Double Team - TM32
  (419, 41900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Floatzel - Rock Tomb - TM39
  (419, 41900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Floatzel - Torment - TM41
  (419, 41900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 35),
  -- Floatzel - Facade - TM42
  (419, 41900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Floatzel - Rest - TM44
  (419, 41900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Floatzel - Attract - TM45
  (419, 41900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Floatzel - Scald - TM49
  (419, 41900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 39),
  -- Floatzel - Focus Blast - TM52
  (419, 41900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Floatzel - Brine - TM55
  (419, 41900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 41),
  -- Floatzel - Endure - TM58
  (419, 41900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Floatzel - Payback - TM66
  (419, 41900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Floatzel - Giga Impact - TM68
  (419, 41900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Floatzel - Sleep Talk - TM82
  (419, 41900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Floatzel - Swagger - TM87
  (419, 41900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Floatzel - Substitute - TM90
  (419, 41900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Floatzel - Surf - TM95
  (419, 41900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 48),
  -- Floatzel - Strength - TM96
  (419, 41900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Floatzel - Rock Smash - TM98
  (419, 41900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Floatzel - Waterfall - TM99
  (419, 41900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 51),
  -- Floatzel - Aqua Ring - Egg
  (419, 41900, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Floatzel - Aqua Tail - Egg
  (419, 41900, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Floatzel - Baton Pass - Egg
  (419, 41900, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Floatzel - Fury Cutter - Egg
  (419, 41900, 210, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Floatzel - Fury Swipes - Egg
  (419, 41900, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Floatzel - Headbutt - Egg
  (419, 41900, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Floatzel - Helping Hand - Egg
  (419, 41900, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Floatzel - Mud-Slap - Egg
  (419, 41900, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Floatzel - Slash - Egg
  (419, 41900, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Floatzel - Soak - Egg
  (419, 41900, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Floatzel - Switcheroo - Egg
  (419, 41900, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cherubi - Morning Sun - Starting Move
  (420, 42000, 234, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cherubi - Tackle - Starting Move
  (420, 42000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cherubi - Leafage - Level 5
  (420, 42000, 670, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cherubi - Growth - Level 10
  (420, 42000, 74, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cherubi - Helping Hand - Level 15
  (420, 42000, 270, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cherubi - Magical Leaf - Level 20
  (420, 42000, 345, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Cherubi - Leech Seed - Level 26
  (420, 42000, 73, 21, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Cherubi - Take Down - Level 30
  (420, 42000, 36, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Cherubi - Petal Blizzard - Level 35
  (420, 42000, 572, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cherubi - Worry Seed - Level 40
  (420, 42000, 388, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cherubi - Solar Beam - Level 45
  (420, 42000, 76, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Cherubi - Bullet Seed - TM09
  (420, 42000, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 12),
  -- Cherubi - Sunny Day - TM11
  (420, 42000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 13),
  -- Cherubi - Protect - TM17
  (420, 42000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 14),
  -- Cherubi - Giga Drain - TM19
  (420, 42000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 15),
  -- Cherubi - Safeguard - TM20
  (420, 42000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 16),
  -- Cherubi - Dazzling Gleam - TM21
  (420, 42000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 17),
  -- Cherubi - Solar Beam - TM22
  (420, 42000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 18),
  -- Cherubi - Double Team - TM32
  (420, 42000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Cherubi - Facade - TM42
  (420, 42000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 20),
  -- Cherubi - Rest - TM44
  (420, 42000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 21),
  -- Cherubi - Attract - TM45
  (420, 42000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 22),
  -- Cherubi - Energy Ball - TM53
  (420, 42000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 23),
  -- Cherubi - Endure - TM58
  (420, 42000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 24),
  -- Cherubi - Flash - TM70
  (420, 42000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 25),
  -- Cherubi - Swords Dance - TM75
  (420, 42000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 26),
  -- Cherubi - Sleep Talk - TM82
  (420, 42000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Cherubi - Grass Knot - TM86
  (420, 42000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 28),
  -- Cherubi - Swagger - TM87
  (420, 42000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Cherubi - Substitute - TM90
  (420, 42000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Cherubi - Aromatherapy - Egg
  (420, 42000, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Cherubi - Defense Curl - Egg
  (420, 42000, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Cherubi - Flower Shield - Egg
  (420, 42000, 579, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Cherubi - Grassy Terrain - Egg
  (420, 42000, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Cherubi - Heal Pulse - Egg
  (420, 42000, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cherubi - Healing Wish - Egg
  (420, 42000, 361, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cherubi - Nature Power - Egg
  (420, 42000, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherubi - Razor Leaf - Egg
  (420, 42000, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherubi - Rollout - Egg
  (420, 42000, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherubi - Seed Bomb - Egg
  (420, 42000, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherubi - Sweet Scent - Egg
  (420, 42000, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherubi - Tickle - Egg
  (420, 42000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cherubi - Weather Ball - Egg
  (420, 42000, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cherrim - Sunny Day - Starting Move
  (421, 42100, 241, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cherrim - Flower Shield - Starting Move
  (421, 42100, 579, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cherrim - Morning Sun - Starting Move
  (421, 42100, 234, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Cherrim - Tackle - Starting Move
  (421, 42100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Cherrim - Leafage - Starting Move
  (421, 42100, 670, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Cherrim - Growth - Starting Move
  (421, 42100, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Cherrim - Sunny Day - Evolution
  (421, 42100, 241, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Cherrim - Helping Hand - Level 15
  (421, 42100, 270, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Cherrim - Magical Leaf - Level 20
  (421, 42100, 345, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Cherrim - Leech Seed - Level 28
  (421, 42100, 73, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Cherrim - Take Down - Level 34
  (421, 42100, 36, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Cherrim - Petal Blizzard - Level 41
  (421, 42100, 572, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Cherrim - Worry Seed - Level 48
  (421, 42100, 388, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Cherrim - Solar Beam - Level 55
  (421, 42100, 76, 21, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cherrim - Petal Dance - Level 62
  (421, 42100, 80, 21, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Cherrim - Bullet Seed - TM09
  (421, 42100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Cherrim - Sunny Day - TM11
  (421, 42100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Cherrim - Hyper Beam - TM15
  (421, 42100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Cherrim - Protect - TM17
  (421, 42100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Cherrim - Giga Drain - TM19
  (421, 42100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Cherrim - Safeguard - TM20
  (421, 42100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Cherrim - Dazzling Gleam - TM21
  (421, 42100, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 22),
  -- Cherrim - Solar Beam - TM22
  (421, 42100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Cherrim - Double Team - TM32
  (421, 42100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Cherrim - Facade - TM42
  (421, 42100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Cherrim - Rest - TM44
  (421, 42100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Cherrim - Attract - TM45
  (421, 42100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Cherrim - Energy Ball - TM53
  (421, 42100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 28),
  -- Cherrim - Endure - TM58
  (421, 42100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Cherrim - Giga Impact - TM68
  (421, 42100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 30),
  -- Cherrim - Flash - TM70
  (421, 42100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Cherrim - Swords Dance - TM75
  (421, 42100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 32),
  -- Cherrim - Sleep Talk - TM82
  (421, 42100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Cherrim - Grass Knot - TM86
  (421, 42100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Cherrim - Swagger - TM87
  (421, 42100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Cherrim - Substitute - TM90
  (421, 42100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Cherrim - Aromatherapy - Egg
  (421, 42100, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherrim - Defense Curl - Egg
  (421, 42100, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherrim - Flower Shield - Egg
  (421, 42100, 579, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherrim - Grassy Terrain - Egg
  (421, 42100, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherrim - Heal Pulse - Egg
  (421, 42100, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherrim - Healing Wish - Egg
  (421, 42100, 361, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cherrim - Nature Power - Egg
  (421, 42100, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cherrim - Razor Leaf - Egg
  (421, 42100, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cherrim - Rollout - Egg
  (421, 42100, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cherrim - Seed Bomb - Egg
  (421, 42100, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cherrim - Sweet Scent - Egg
  (421, 42100, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cherrim - Tickle - Egg
  (421, 42100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cherrim - Weather Ball - Egg
  (421, 42100, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shellos - Water Gun - Starting Move
  (422, 42200, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shellos - Mud-Slap - Starting Move
  (422, 42200, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 5
  (422, 42200, 106, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shellos - Recover - Level 10
  (422, 42200, 105, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shellos - Water Pulse - Level 15
  (422, 42200, 352, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shellos - Ancient Power - Level 20
  (422, 42200, 246, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shellos - Body Slam - Level 25
  (422, 42200, 34, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shellos - Muddy Water - Level 31
  (422, 42200, 330, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shellos - Earth Power - Level 35
  (422, 42200, 414, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Shellos - Rain Dance - Level 40
  (422, 42200, 240, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Shellos - Memento - Level 45
  (422, 42200, 262, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Shellos - Water Pulse - TM03
  (422, 42200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 12),
  -- Shellos - Hail - TM07
  (422, 42200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 13),
  -- Shellos - Ice Beam - TM13
  (422, 42200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 14),
  -- Shellos - Blizzard - TM14
  (422, 42200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 15),
  -- Shellos - Protect - TM17
  (422, 42200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Shellos - Rain Dance - TM18
  (422, 42200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Shellos - Double Team - TM32
  (422, 42200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Shellos - Facade - TM42
  (422, 42200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 19),
  -- Shellos - Rest - TM44
  (422, 42200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 20),
  -- Shellos - Attract - TM45
  (422, 42200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 21),
  -- Shellos - Scald - TM49
  (422, 42200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 22),
  -- Shellos - Brine - TM55
  (422, 42200, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 23),
  -- Shellos - Endure - TM58
  (422, 42200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 24),
  -- Shellos - Sleep Talk - TM82
  (422, 42200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 25),
  -- Shellos - Swagger - TM87
  (422, 42200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 26),
  -- Shellos - Substitute - TM90
  (422, 42200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 27),
  -- Shellos - Surf - TM95
  (422, 42200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 28),
  -- Shellos - Acid Armor - Egg
  (422, 42200, 151, 21, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Shellos - Amnesia - Egg
  (422, 42200, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Shellos - Clear Smog - Egg
  (422, 42200, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Shellos - Counter - Egg
  (422, 42200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Shellos - Curse - Egg
  (422, 42200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Shellos - Fissure - Egg
  (422, 42200, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Shellos - Memento - Egg
  (422, 42200, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shellos - Mirror Coat - Egg
  (422, 42200, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shellos - Mist - Egg
  (422, 42200, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellos - Sludge - Egg
  (422, 42200, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellos - Spit Up - Egg
  (422, 42200, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellos - Stockpile - Egg
  (422, 42200, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellos - Swallow - Egg
  (422, 42200, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellos - Yawn - Egg
  (422, 42200, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gastrodon - Water Gun - Starting Move
  (423, 42300, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gastrodon - Mud-Slap - Starting Move
  (423, 42300, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gastrodon - Harden - Starting Move
  (423, 42300, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gastrodon - Recover - Starting Move
  (423, 42300, 105, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gastrodon - Water Pulse - Level 15
  (423, 42300, 352, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gastrodon - Ancient Power - Level 20
  (423, 42300, 246, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Gastrodon - Body Slam - Level 25
  (423, 42300, 34, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gastrodon - Muddy Water - Level 33
  (423, 42300, 330, 21, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gastrodon - Earth Power - Level 39
  (423, 42300, 414, 21, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 46
  (423, 42300, 240, 21, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Gastrodon - Memento - Level 53
  (423, 42300, 262, 21, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Gastrodon - Water Pulse - TM03
  (423, 42300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 12),
  -- Gastrodon - Hail - TM07
  (423, 42300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 13),
  -- Gastrodon - Ice Beam - TM13
  (423, 42300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 14),
  -- Gastrodon - Blizzard - TM14
  (423, 42300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 15),
  -- Gastrodon - Hyper Beam - TM15
  (423, 42300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 16),
  -- Gastrodon - Protect - TM17
  (423, 42300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Gastrodon - Rain Dance - TM18
  (423, 42300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Gastrodon - Earthquake - TM26
  (423, 42300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 19),
  -- Gastrodon - Dig - TM28
  (423, 42300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 20),
  -- Gastrodon - Double Team - TM32
  (423, 42300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Gastrodon - Sludge Bomb - TM36
  (423, 42300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 22),
  -- Gastrodon - Sandstorm - TM37
  (423, 42300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 23),
  -- Gastrodon - Rock Tomb - TM39
  (423, 42300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Gastrodon - Facade - TM42
  (423, 42300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Gastrodon - Rest - TM44
  (423, 42300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Gastrodon - Attract - TM45
  (423, 42300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Gastrodon - Scald - TM49
  (423, 42300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 28),
  -- Gastrodon - Brine - TM55
  (423, 42300, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 29),
  -- Gastrodon - Endure - TM58
  (423, 42300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Gastrodon - Giga Impact - TM68
  (423, 42300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 31),
  -- Gastrodon - Flash - TM70
  (423, 42300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Gastrodon - Stone Edge - TM71
  (423, 42300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 33),
  -- Gastrodon - Rock Slide - TM80
  (423, 42300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 34),
  -- Gastrodon - Sleep Talk - TM82
  (423, 42300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Gastrodon - Bulldoze - TM83
  (423, 42300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 36),
  -- Gastrodon - Swagger - TM87
  (423, 42300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Gastrodon - Substitute - TM90
  (423, 42300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Gastrodon - Surf - TM95
  (423, 42300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 39),
  -- Gastrodon - Strength - TM96
  (423, 42300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Gastrodon - Rock Smash - TM98
  (423, 42300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Gastrodon - Waterfall - TM99
  (423, 42300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 42),
  -- Gastrodon - Acid Armor - Egg
  (423, 42300, 151, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gastrodon - Amnesia - Egg
  (423, 42300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gastrodon - Clear Smog - Egg
  (423, 42300, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gastrodon - Counter - Egg
  (423, 42300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gastrodon - Curse - Egg
  (423, 42300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gastrodon - Fissure - Egg
  (423, 42300, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gastrodon - Memento - Egg
  (423, 42300, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gastrodon - Mirror Coat - Egg
  (423, 42300, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gastrodon - Mist - Egg
  (423, 42300, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gastrodon - Sludge - Egg
  (423, 42300, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastrodon - Spit Up - Egg
  (423, 42300, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastrodon - Stockpile - Egg
  (423, 42300, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastrodon - Swallow - Egg
  (423, 42300, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastrodon - Yawn - Egg
  (423, 42300, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ambipom - Dual Chop - Starting Move
  (424, 42400, 530, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ambipom - Scratch - Starting Move
  (424, 42400, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ambipom - Tail Whip - Starting Move
  (424, 42400, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ambipom - Sand Attack - Starting Move
  (424, 42400, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ambipom - Astonish - Starting Move
  (424, 42400, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ambipom - Sand Attack - Level 4
  (424, 42400, 28, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Ambipom - Astonish - Level 8
  (424, 42400, 310, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ambipom - Baton Pass - Level 11
  (424, 42400, 226, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Ambipom - Tickle - Level 15
  (424, 42400, 321, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ambipom - Fury Swipes - Level 18
  (424, 42400, 154, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Ambipom - Swift - Level 22
  (424, 42400, 129, 21, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Ambipom - Screech - Level 25
  (424, 42400, 103, 21, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Ambipom - Agility - Level 29
  (424, 42400, 97, 21, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Ambipom - Double Hit - Level 32
  (424, 42400, 458, 21, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Ambipom - Fling - Level 36
  (424, 42400, 374, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Ambipom - Nasty Plot - Level 39
  (424, 42400, 417, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Ambipom - Last Resort - Level 43
  (424, 42400, 387, 21, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Ambipom - Focus Punch - TM01
  (424, 42400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Ambipom - Water Pulse - TM03
  (424, 42400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Ambipom - Work Up - TM10
  (424, 42400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Ambipom - Sunny Day - TM11
  (424, 42400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Ambipom - Taunt - TM12
  (424, 42400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Ambipom - Hyper Beam - TM15
  (424, 42400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Ambipom - Protect - TM17
  (424, 42400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Ambipom - Rain Dance - TM18
  (424, 42400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Ambipom - Solar Beam - TM22
  (424, 42400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Ambipom - Iron Tail - TM23
  (424, 42400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Ambipom - Thunderbolt - TM24
  (424, 42400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 28),
  -- Ambipom - Thunder - TM25
  (424, 42400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 29),
  -- Ambipom - Low Sweep - TM27
  (424, 42400, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 30),
  -- Ambipom - Dig - TM28
  (424, 42400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Ambipom - Shadow Ball - TM30
  (424, 42400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Ambipom - Brick Break - TM31
  (424, 42400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Ambipom - Double Team - TM32
  (424, 42400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Ambipom - Shock Wave - TM34
  (424, 42400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Ambipom - Aerial Ace - TM40
  (424, 42400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 36),
  -- Ambipom - Facade - TM42
  (424, 42400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Ambipom - Rest - TM44
  (424, 42400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Ambipom - Attract - TM45
  (424, 42400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Ambipom - Thief - TM46
  (424, 42400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Ambipom - Fling - TM56
  (424, 42400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Ambipom - Endure - TM58
  (424, 42400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Ambipom - Nasty Plot - TM63
  (424, 42400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 43),
  -- Ambipom - Shadow Claw - TM65
  (424, 42400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 44),
  -- Ambipom - Payback - TM66
  (424, 42400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Ambipom - Giga Impact - TM68
  (424, 42400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Ambipom - Thunder Wave - TM73
  (424, 42400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 47),
  -- Ambipom - Sleep Talk - TM82
  (424, 42400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Ambipom - Dream Eater - TM85
  (424, 42400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 49),
  -- Ambipom - Grass Knot - TM86
  (424, 42400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Ambipom - Swagger - TM87
  (424, 42400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Ambipom - U-turn - TM89
  (424, 42400, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 52),
  -- Ambipom - Substitute - TM90
  (424, 42400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Ambipom - Cut - TM93
  (424, 42400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Ambipom - Strength - TM96
  (424, 42400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Ambipom - Rock Smash - TM98
  (424, 42400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Ambipom - Agility - Egg
  (424, 42400, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ambipom - Beat Up - Egg
  (424, 42400, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ambipom - Bounce - Egg
  (424, 42400, 340, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ambipom - Counter - Egg
  (424, 42400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ambipom - Covet - Egg
  (424, 42400, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ambipom - Fake Out - Egg
  (424, 42400, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ambipom - Quick Guard - Egg
  (424, 42400, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ambipom - Revenge - Egg
  (424, 42400, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ambipom - Screech - Egg
  (424, 42400, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ambipom - Slam - Egg
  (424, 42400, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ambipom - Spite - Egg
  (424, 42400, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ambipom - Switcheroo - Egg
  (424, 42400, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Drifloon - Minimize - Starting Move
  (425, 42500, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Drifloon - Astonish - Starting Move
  (425, 42500, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Drifloon - Gust - Level 4
  (425, 42500, 16, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drifloon - Focus Energy - Level 8
  (425, 42500, 116, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drifloon - Payback - Level 12
  (425, 42500, 371, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drifloon - Hex - Level 16
  (425, 42500, 506, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drifloon - Shadow Ball - Level 20
  (425, 42500, 247, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drifloon - Stockpile - Level 24
  (425, 42500, 254, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Drifloon - Swallow - Level 24
  (425, 42500, 256, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Drifloon - Spit Up - Level 24
  (425, 42500, 255, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Drifloon - Self-Destruct - Level 29
  (425, 42500, 120, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Drifloon - Destiny Bond - Level 32
  (425, 42500, 194, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Drifloon - Baton Pass - Level 36
  (425, 42500, 226, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Drifloon - Tailwind - Level 40
  (425, 42500, 366, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Drifloon - Explosion - Level 44
  (425, 42500, 153, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Drifloon - Calm Mind - TM04
  (425, 42500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Drifloon - Sunny Day - TM11
  (425, 42500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Drifloon - Protect - TM17
  (425, 42500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Drifloon - Rain Dance - TM18
  (425, 42500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Drifloon - Thunderbolt - TM24
  (425, 42500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 20),
  -- Drifloon - Thunder - TM25
  (425, 42500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 21),
  -- Drifloon - Psychic - TM29
  (425, 42500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 22),
  -- Drifloon - Shadow Ball - TM30
  (425, 42500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Drifloon - Double Team - TM32
  (425, 42500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Drifloon - Shock Wave - TM34
  (425, 42500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Drifloon - Facade - TM42
  (425, 42500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Drifloon - Rest - TM44
  (425, 42500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Drifloon - Attract - TM45
  (425, 42500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Drifloon - Thief - TM46
  (425, 42500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Drifloon - Skill Swap - TM48
  (425, 42500, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 30),
  -- Drifloon - Charge Beam - TM57
  (425, 42500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Drifloon - Endure - TM58
  (425, 42500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Drifloon - Will-O-Wisp - TM61
  (425, 42500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 33),
  -- Drifloon - Explosion - TM64
  (425, 42500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 34),
  -- Drifloon - Payback - TM66
  (425, 42500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Drifloon - Recycle - TM67
  (425, 42500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 36),
  -- Drifloon - Flash - TM70
  (425, 42500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Drifloon - Thunder Wave - TM73
  (425, 42500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 38),
  -- Drifloon - Gyro Ball - TM74
  (425, 42500, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 39),
  -- Drifloon - Psych Up - TM77
  (425, 42500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Drifloon - Sleep Talk - TM82
  (425, 42500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Drifloon - Dream Eater - TM85
  (425, 42500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 42),
  -- Drifloon - Swagger - TM87
  (425, 42500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Drifloon - Substitute - TM90
  (425, 42500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Drifloon - Cut - TM93
  (425, 42500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Drifloon - Defog - TM97
  (425, 42500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 46),
  -- Drifloon - Body Slam - Egg
  (425, 42500, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Drifloon - Clear Smog - Egg
  (425, 42500, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Drifloon - Destiny Bond - Egg
  (425, 42500, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Drifloon - Disable - Egg
  (425, 42500, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drifloon - Haze - Egg
  (425, 42500, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Drifloon - Hypnosis - Egg
  (425, 42500, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drifloon - Memento - Egg
  (425, 42500, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifloon - Tailwind - Egg
  (425, 42500, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Weather Ball - Egg
  (425, 42500, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifblim - Phantom Force - Starting Move
  (426, 42600, 566, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Drifblim - Strength Sap - Starting Move
  (426, 42600, 668, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Drifblim - Minimize - Starting Move
  (426, 42600, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Drifblim - Astonish - Starting Move
  (426, 42600, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Drifblim - Gust - Starting Move
  (426, 42600, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Drifblim - Focus Energy - Starting Move
  (426, 42600, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Drifblim - Phantom Force - Evolution
  (426, 42600, 566, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Drifblim - Payback - Level 12
  (426, 42600, 371, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Drifblim - Hex - Level 16
  (426, 42600, 506, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Drifblim - Shadow Ball - Level 20
  (426, 42600, 247, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Drifblim - Stockpile - Level 24
  (426, 42600, 254, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Drifblim - Swallow - Level 24
  (426, 42600, 256, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Drifblim - Spit Up - Level 24
  (426, 42600, 255, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Drifblim - Self-Destruct - Level 31
  (426, 42600, 120, 21, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Drifblim - Destiny Bond - Level 36
  (426, 42600, 194, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Drifblim - Baton Pass - Level 42
  (426, 42600, 226, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Drifblim - Tailwind - Level 48
  (426, 42600, 366, 21, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Drifblim - Explosion - Level 54
  (426, 42600, 153, 21, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Drifblim - Calm Mind - TM04
  (426, 42600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Drifblim - Sunny Day - TM11
  (426, 42600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Drifblim - Hyper Beam - TM15
  (426, 42600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Drifblim - Protect - TM17
  (426, 42600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Drifblim - Rain Dance - TM18
  (426, 42600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Drifblim - Thunderbolt - TM24
  (426, 42600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Drifblim - Thunder - TM25
  (426, 42600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Drifblim - Psychic - TM29
  (426, 42600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Drifblim - Shadow Ball - TM30
  (426, 42600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Drifblim - Double Team - TM32
  (426, 42600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Drifblim - Shock Wave - TM34
  (426, 42600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Drifblim - Facade - TM42
  (426, 42600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Drifblim - Rest - TM44
  (426, 42600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Drifblim - Attract - TM45
  (426, 42600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Drifblim - Thief - TM46
  (426, 42600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Drifblim - Skill Swap - TM48
  (426, 42600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 34),
  -- Drifblim - Charge Beam - TM57
  (426, 42600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Drifblim - Endure - TM58
  (426, 42600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Drifblim - Will-O-Wisp - TM61
  (426, 42600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 37),
  -- Drifblim - Explosion - TM64
  (426, 42600, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 38),
  -- Drifblim - Payback - TM66
  (426, 42600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Drifblim - Recycle - TM67
  (426, 42600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 40),
  -- Drifblim - Giga Impact - TM68
  (426, 42600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Drifblim - Flash - TM70
  (426, 42600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Drifblim - Thunder Wave - TM73
  (426, 42600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Drifblim - Gyro Ball - TM74
  (426, 42600, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 44),
  -- Drifblim - Psych Up - TM77
  (426, 42600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Drifblim - Sleep Talk - TM82
  (426, 42600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Drifblim - Dream Eater - TM85
  (426, 42600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Drifblim - Swagger - TM87
  (426, 42600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Drifblim - Substitute - TM90
  (426, 42600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Drifblim - Cut - TM93
  (426, 42600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Drifblim - Fly - TM94
  (426, 42600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 51),
  -- Drifblim - Defog - TM97
  (426, 42600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 52),
  -- Drifblim - Body Slam - Egg
  (426, 42600, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifblim - Clear Smog - Egg
  (426, 42600, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifblim - Destiny Bond - Egg
  (426, 42600, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifblim - Disable - Egg
  (426, 42600, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifblim - Haze - Egg
  (426, 42600, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drifblim - Hypnosis - Egg
  (426, 42600, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drifblim - Memento - Egg
  (426, 42600, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drifblim - Tailwind - Egg
  (426, 42600, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drifblim - Weather Ball - Egg
  (426, 42600, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Buneary - Splash - Starting Move
  (427, 42700, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Buneary - Pound - Starting Move
  (427, 42700, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Buneary - Defense Curl - Level 4
  (427, 42700, 111, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Buneary - Baby-Doll Eyes - Level 8
  (427, 42700, 608, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Buneary - After You - Level 12
  (427, 42700, 495, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Buneary - Double Kick - Level 20
  (427, 42700, 24, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Buneary - Charm - Level 24
  (427, 42700, 204, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buneary - Baton Pass - Level 28
  (427, 42700, 226, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Buneary - Headbutt - Level 32
  (427, 42700, 29, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Buneary - Agility - Level 36
  (427, 42700, 97, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Buneary - Entrainment - Level 40
  (427, 42700, 494, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Buneary - Flatter - Level 44
  (427, 42700, 260, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Buneary - Bounce - Level 48
  (427, 42700, 340, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Buneary - Healing Wish - Level 52
  (427, 42700, 361, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Buneary - Focus Punch - TM01
  (427, 42700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Buneary - Water Pulse - TM03
  (427, 42700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Buneary - Work Up - TM10
  (427, 42700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Buneary - Sunny Day - TM11
  (427, 42700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Buneary - Ice Beam - TM13
  (427, 42700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Buneary - Protect - TM17
  (427, 42700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Buneary - Rain Dance - TM18
  (427, 42700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Buneary - Solar Beam - TM22
  (427, 42700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Buneary - Iron Tail - TM23
  (427, 42700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Buneary - Thunderbolt - TM24
  (427, 42700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Buneary - Low Sweep - TM27
  (427, 42700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 26),
  -- Buneary - Dig - TM28
  (427, 42700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Buneary - Shadow Ball - TM30
  (427, 42700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Buneary - Double Team - TM32
  (427, 42700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Buneary - Shock Wave - TM34
  (427, 42700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Buneary - Facade - TM42
  (427, 42700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Buneary - Rest - TM44
  (427, 42700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Buneary - Attract - TM45
  (427, 42700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Buneary - Fling - TM56
  (427, 42700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Buneary - Charge Beam - TM57
  (427, 42700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Buneary - Endure - TM58
  (427, 42700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Buneary - Drain Punch - TM60
  (427, 42700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 37),
  -- Buneary - Payback - TM66
  (427, 42700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Buneary - Thunder Wave - TM73
  (427, 42700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Buneary - Sleep Talk - TM82
  (427, 42700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Buneary - Grass Knot - TM86
  (427, 42700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Buneary - Swagger - TM87
  (427, 42700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Buneary - Substitute - TM90
  (427, 42700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Buneary - Cut - TM93
  (427, 42700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Buneary - Rock Smash - TM98
  (427, 42700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Buneary - Circle Throw - Egg
  (427, 42700, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buneary - Copycat - Egg
  (427, 42700, 383, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buneary - Cosmic Power - Egg
  (427, 42700, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buneary - Double Hit - Egg
  (427, 42700, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buneary - Encore - Egg
  (427, 42700, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buneary - Fake Out - Egg
  (427, 42700, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buneary - Fake Tears - Egg
  (427, 42700, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buneary - Fire Punch - Egg
  (427, 42700, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buneary - Flail - Egg
  (427, 42700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buneary - Ice Punch - Egg
  (427, 42700, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buneary - Low Kick - Egg
  (427, 42700, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buneary - Power-Up Punch - Egg
  (427, 42700, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Buneary - Sweet Kiss - Egg
  (427, 42700, 186, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Buneary - Switcheroo - Egg
  (427, 42700, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Buneary - Teeter Dance - Egg
  (427, 42700, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Buneary - Thunder Punch - Egg
  (427, 42700, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lopunny - Mirror Coat - Starting Move
  (428, 42800, 243, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lopunny - Magic Coat - Starting Move
  (428, 42800, 277, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lopunny - Splash - Starting Move
  (428, 42800, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lopunny - Pound - Starting Move
  (428, 42800, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lopunny - Defense Curl - Starting Move
  (428, 42800, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lopunny - Baby-Doll Eyes - Starting Move
  (428, 42800, 608, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Lopunny - After You - Level 12
  (428, 42800, 495, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Lopunny - Double Kick - Level 20
  (428, 42800, 24, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Lopunny - Charm - Level 24
  (428, 42800, 204, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Lopunny - Baton Pass - Level 28
  (428, 42800, 226, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Lopunny - Headbutt - Level 32
  (428, 42800, 29, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Lopunny - Agility - Level 36
  (428, 42800, 97, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lopunny - Entrainment - Level 40
  (428, 42800, 494, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lopunny - Flatter - Level 44
  (428, 42800, 260, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Lopunny - Bounce - Level 48
  (428, 42800, 340, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Lopunny - Healing Wish - Level 52
  (428, 42800, 361, 21, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Lopunny - High Jump Kick - Level 56
  (428, 42800, 136, 21, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Lopunny - Focus Punch - TM01
  (428, 42800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Lopunny - Water Pulse - TM03
  (428, 42800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Lopunny - Work Up - TM10
  (428, 42800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 21),
  -- Lopunny - Sunny Day - TM11
  (428, 42800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Lopunny - Ice Beam - TM13
  (428, 42800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Lopunny - Blizzard - TM14
  (428, 42800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Lopunny - Hyper Beam - TM15
  (428, 42800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Lopunny - Protect - TM17
  (428, 42800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Lopunny - Rain Dance - TM18
  (428, 42800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Lopunny - Solar Beam - TM22
  (428, 42800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Lopunny - Iron Tail - TM23
  (428, 42800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Lopunny - Thunderbolt - TM24
  (428, 42800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Lopunny - Thunder - TM25
  (428, 42800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Lopunny - Low Sweep - TM27
  (428, 42800, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 32),
  -- Lopunny - Dig - TM28
  (428, 42800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 33),
  -- Lopunny - Shadow Ball - TM30
  (428, 42800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Lopunny - Double Team - TM32
  (428, 42800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Lopunny - Shock Wave - TM34
  (428, 42800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Lopunny - Facade - TM42
  (428, 42800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Lopunny - Rest - TM44
  (428, 42800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Lopunny - Attract - TM45
  (428, 42800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Lopunny - Focus Blast - TM52
  (428, 42800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Lopunny - Fling - TM56
  (428, 42800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Lopunny - Charge Beam - TM57
  (428, 42800, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 42),
  -- Lopunny - Endure - TM58
  (428, 42800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Lopunny - Drain Punch - TM60
  (428, 42800, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 44),
  -- Lopunny - Payback - TM66
  (428, 42800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Lopunny - Giga Impact - TM68
  (428, 42800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Lopunny - Thunder Wave - TM73
  (428, 42800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 47),
  -- Lopunny - Sleep Talk - TM82
  (428, 42800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Lopunny - Grass Knot - TM86
  (428, 42800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Lopunny - Swagger - TM87
  (428, 42800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Lopunny - U-turn - TM89
  (428, 42800, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 51),
  -- Lopunny - Substitute - TM90
  (428, 42800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Lopunny - Cut - TM93
  (428, 42800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Lopunny - Strength - TM96
  (428, 42800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Lopunny - Rock Smash - TM98
  (428, 42800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Lopunny - Circle Throw - Egg
  (428, 42800, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lopunny - Copycat - Egg
  (428, 42800, 383, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lopunny - Cosmic Power - Egg
  (428, 42800, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lopunny - Double Hit - Egg
  (428, 42800, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lopunny - Encore - Egg
  (428, 42800, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lopunny - Fake Out - Egg
  (428, 42800, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lopunny - Fake Tears - Egg
  (428, 42800, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lopunny - Fire Punch - Egg
  (428, 42800, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lopunny - Flail - Egg
  (428, 42800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lopunny - Ice Punch - Egg
  (428, 42800, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lopunny - Low Kick - Egg
  (428, 42800, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lopunny - Power-Up Punch - Egg
  (428, 42800, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lopunny - Sweet Kiss - Egg
  (428, 42800, 186, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lopunny - Switcheroo - Egg
  (428, 42800, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Lopunny - Teeter Dance - Egg
  (428, 42800, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Lopunny - Thunder Punch - Egg
  (428, 42800, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mismagius - Mystical Fire - Starting Move
  (429, 42900, 595, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mismagius - Power Gem - Starting Move
  (429, 42900, 408, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mismagius - Phantom Force - Starting Move
  (429, 42900, 566, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Mismagius - Magical Leaf - Starting Move
  (429, 42900, 345, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Mismagius - Growl - Starting Move
  (429, 42900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Mismagius - Spite - Starting Move
  (429, 42900, 180, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Mismagius - Astonish - Starting Move
  (429, 42900, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Mismagius - Confuse Ray - Starting Move
  (429, 42900, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Mismagius - Mean Look - Starting Move
  (429, 42900, 212, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Mismagius - Hex - Starting Move
  (429, 42900, 506, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Mismagius - Psybeam - Starting Move
  (429, 42900, 60, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Mismagius - Pain Split - Starting Move
  (429, 42900, 220, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Mismagius - Payback - Starting Move
  (429, 42900, 371, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Mismagius - Shadow Ball - Starting Move
  (429, 42900, 247, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Mismagius - Perish Song - Starting Move
  (429, 42900, 195, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Mismagius - Grudge - Starting Move
  (429, 42900, 288, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Mismagius - Confusion - Starting Move
  (429, 42900, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Mismagius - Calm Mind - TM04
  (429, 42900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Mismagius - Sunny Day - TM11
  (429, 42900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Mismagius - Taunt - TM12
  (429, 42900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Mismagius - Hyper Beam - TM15
  (429, 42900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Mismagius - Protect - TM17
  (429, 42900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Mismagius - Rain Dance - TM18
  (429, 42900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Mismagius - Dazzling Gleam - TM21
  (429, 42900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Mismagius - Thunderbolt - TM24
  (429, 42900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Mismagius - Thunder - TM25
  (429, 42900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Mismagius - Psychic - TM29
  (429, 42900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Mismagius - Shadow Ball - TM30
  (429, 42900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Mismagius - Double Team - TM32
  (429, 42900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Mismagius - Shock Wave - TM34
  (429, 42900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Mismagius - Aerial Ace - TM40
  (429, 42900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Mismagius - Torment - TM41
  (429, 42900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 32),
  -- Mismagius - Facade - TM42
  (429, 42900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Mismagius - Rest - TM44
  (429, 42900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Mismagius - Attract - TM45
  (429, 42900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Mismagius - Thief - TM46
  (429, 42900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Mismagius - Skill Swap - TM48
  (429, 42900, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 37),
  -- Mismagius - Energy Ball - TM53
  (429, 42900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Mismagius - Charge Beam - TM57
  (429, 42900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Mismagius - Endure - TM58
  (429, 42900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Mismagius - Will-O-Wisp - TM61
  (429, 42900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 41),
  -- Mismagius - Nasty Plot - TM63
  (429, 42900, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 42),
  -- Mismagius - Payback - TM66
  (429, 42900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Mismagius - Giga Impact - TM68
  (429, 42900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Mismagius - Flash - TM70
  (429, 42900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Mismagius - Thunder Wave - TM73
  (429, 42900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 46),
  -- Mismagius - Psych Up - TM77
  (429, 42900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 47),
  -- Mismagius - Dark Pulse - TM79
  (429, 42900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 48),
  -- Mismagius - Sleep Talk - TM82
  (429, 42900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Mismagius - Dream Eater - TM85
  (429, 42900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 50),
  -- Mismagius - Swagger - TM87
  (429, 42900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Mismagius - Substitute - TM90
  (429, 42900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Mismagius - Trick Room - TM92
  (429, 42900, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 53),
  -- Mismagius - Curse - Egg
  (429, 42900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mismagius - Destiny Bond - Egg
  (429, 42900, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mismagius - Imprison - Egg
  (429, 42900, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mismagius - Memento - Egg
  (429, 42900, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mismagius - Screech - Egg
  (429, 42900, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mismagius - Shadow Sneak - Egg
  (429, 42900, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mismagius - Spite - Egg
  (429, 42900, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mismagius - Sucker Punch - Egg
  (429, 42900, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mismagius - Wonder Room - Egg
  (429, 42900, 472, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Honchkrow - Night Slash - Starting Move
  (430, 43000, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Honchkrow - Sucker Punch - Starting Move
  (430, 43000, 389, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Honchkrow - Astonish - Starting Move
  (430, 43000, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Honchkrow - Haze - Starting Move
  (430, 43000, 114, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Honchkrow - Wing Attack - Starting Move
  (430, 43000, 17, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Honchkrow - Gust - Starting Move
  (430, 43000, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Honchkrow - Night Shade - Starting Move
  (430, 43000, 101, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Honchkrow - Assurance - Starting Move
  (430, 43000, 372, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Honchkrow - Taunt - Starting Move
  (430, 43000, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Honchkrow - Air Cutter - Starting Move
  (430, 43000, 314, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Honchkrow - Mean Look - Starting Move
  (430, 43000, 212, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Honchkrow - Tailwind - Starting Move
  (430, 43000, 366, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Honchkrow - Torment - Starting Move
  (430, 43000, 259, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Honchkrow - Peck - Starting Move
  (430, 43000, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Honchkrow - Swagger - Level 25
  (430, 43000, 207, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Honchkrow - Nasty Plot - Level 35
  (430, 43000, 417, 21, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Honchkrow - Foul Play - Level 45
  (430, 43000, 492, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Honchkrow - Night Slash - Level 55
  (430, 43000, 400, 21, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Honchkrow - Quash - Level 65
  (430, 43000, 511, 21, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Honchkrow - Dark Pulse - Level 75
  (430, 43000, 399, 21, NULL, 1, 75, NULL, NULL, NULL, 20),
  -- Honchkrow - Calm Mind - TM04
  (430, 43000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Honchkrow - Sunny Day - TM11
  (430, 43000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Honchkrow - Taunt - TM12
  (430, 43000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Honchkrow - Hyper Beam - TM15
  (430, 43000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Honchkrow - Protect - TM17
  (430, 43000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Honchkrow - Rain Dance - TM18
  (430, 43000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Honchkrow - Psychic - TM29
  (430, 43000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Honchkrow - Shadow Ball - TM30
  (430, 43000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Honchkrow - Double Team - TM32
  (430, 43000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Honchkrow - Aerial Ace - TM40
  (430, 43000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Honchkrow - Torment - TM41
  (430, 43000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Honchkrow - Facade - TM42
  (430, 43000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Honchkrow - Rest - TM44
  (430, 43000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Honchkrow - Attract - TM45
  (430, 43000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Honchkrow - Thief - TM46
  (430, 43000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Honchkrow - Steel Wing - TM47
  (430, 43000, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 36),
  -- Honchkrow - Roost - TM51
  (430, 43000, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 37),
  -- Honchkrow - Endure - TM58
  (430, 43000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Honchkrow - Nasty Plot - TM63
  (430, 43000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 39),
  -- Honchkrow - Payback - TM66
  (430, 43000, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Honchkrow - Giga Impact - TM68
  (430, 43000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Honchkrow - Thunder Wave - TM73
  (430, 43000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 42),
  -- Honchkrow - Psych Up - TM77
  (430, 43000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Honchkrow - Snarl - TM78
  (430, 43000, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 44),
  -- Honchkrow - Dark Pulse - TM79
  (430, 43000, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 45),
  -- Honchkrow - Sleep Talk - TM82
  (430, 43000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Honchkrow - Dream Eater - TM85
  (430, 43000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 47),
  -- Honchkrow - Swagger - TM87
  (430, 43000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Honchkrow - Pluck - TM88
  (430, 43000, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 49),
  -- Honchkrow - Substitute - TM90
  (430, 43000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Honchkrow - Fly - TM94
  (430, 43000, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 51),
  -- Honchkrow - Defog - TM97
  (430, 43000, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 52),
  -- Honchkrow - Assurance - Egg
  (430, 43000, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Honchkrow - Brave Bird - Egg
  (430, 43000, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Honchkrow - Confuse Ray - Egg
  (430, 43000, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Honchkrow - Drill Peck - Egg
  (430, 43000, 65, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Honchkrow - Feather Dance - Egg
  (430, 43000, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Honchkrow - Flatter - Egg
  (430, 43000, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Honchkrow - Perish Song - Egg
  (430, 43000, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Honchkrow - Psycho Shift - Egg
  (430, 43000, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Honchkrow - Screech - Egg
  (430, 43000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Honchkrow - Sky Attack - Egg
  (430, 43000, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Honchkrow - Whirlwind - Egg
  (430, 43000, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Honchkrow - Wing Attack - Egg
  (430, 43000, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Glameow - Fake Out - Starting Move
  (431, 43100, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Glameow - Scratch - Level 5
  (431, 43100, 10, 21, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Glameow - Growl - Level 8
  (431, 43100, 45, 21, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Glameow - Hypnosis - Level 13
  (431, 43100, 95, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Glameow - Aerial Ace - Level 17
  (431, 43100, 332, 21, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Glameow - Fury Swipes - Level 20
  (431, 43100, 154, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Glameow - Charm - Level 25
  (431, 43100, 204, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glameow - Taunt - Level 29
  (431, 43100, 269, 21, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Glameow - Retaliate - Level 32
  (431, 43100, 514, 21, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Glameow - Slash - Level 37
  (431, 43100, 163, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Glameow - Sucker Punch - Level 41
  (431, 43100, 389, 21, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Glameow - Attract - Level 44
  (431, 43100, 213, 21, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Glameow - Hone Claws - Level 48
  (431, 43100, 468, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Glameow - Play Rough - Level 50
  (431, 43100, 583, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Glameow - Water Pulse - TM03
  (431, 43100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Glameow - Work Up - TM10
  (431, 43100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Glameow - Sunny Day - TM11
  (431, 43100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Glameow - Taunt - TM12
  (431, 43100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Glameow - Protect - TM17
  (431, 43100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Glameow - Rain Dance - TM18
  (431, 43100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Glameow - Iron Tail - TM23
  (431, 43100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Glameow - Thunderbolt - TM24
  (431, 43100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Glameow - Thunder - TM25
  (431, 43100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Glameow - Dig - TM28
  (431, 43100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Glameow - Shadow Ball - TM30
  (431, 43100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Glameow - Double Team - TM32
  (431, 43100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Glameow - Shock Wave - TM34
  (431, 43100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Glameow - Aerial Ace - TM40
  (431, 43100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Glameow - Torment - TM41
  (431, 43100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Glameow - Facade - TM42
  (431, 43100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Glameow - Rest - TM44
  (431, 43100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Glameow - Attract - TM45
  (431, 43100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Glameow - Thief - TM46
  (431, 43100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Glameow - Endure - TM58
  (431, 43100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Glameow - Shadow Claw - TM65
  (431, 43100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Glameow - Payback - TM66
  (431, 43100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Glameow - Flash - TM70
  (431, 43100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Glameow - Psych Up - TM77
  (431, 43100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 38),
  -- Glameow - Sleep Talk - TM82
  (431, 43100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Glameow - Dream Eater - TM85
  (431, 43100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 40),
  -- Glameow - Swagger - TM87
  (431, 43100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Glameow - U-turn - TM89
  (431, 43100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 42),
  -- Glameow - Substitute - TM90
  (431, 43100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Glameow - Cut - TM93
  (431, 43100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Glameow - Assurance - Egg
  (431, 43100, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Glameow - Bite - Egg
  (431, 43100, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Glameow - Fake Tears - Egg
  (431, 43100, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Glameow - Flail - Egg
  (431, 43100, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Glameow - Last Resort - Egg
  (431, 43100, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Glameow - Quick Attack - Egg
  (431, 43100, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glameow - Sand Attack - Egg
  (431, 43100, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glameow - Tail Whip - Egg
  (431, 43100, 39, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Purugly - Swagger - Starting Move
  (432, 43200, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Purugly - Fake Out - Starting Move
  (432, 43200, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Purugly - Scratch - Starting Move
  (432, 43200, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Purugly - Growl - Starting Move
  (432, 43200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Purugly - Sucker Punch - Starting Move
  (432, 43200, 389, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Purugly - Play Rough - Starting Move
  (432, 43200, 583, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Purugly - Swagger - Evolution
  (432, 43200, 207, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Purugly - Scratch - Level 5
  (432, 43200, 10, 21, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Purugly - Growl - Level 8
  (432, 43200, 45, 21, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Purugly - Hypnosis - Level 13
  (432, 43200, 95, 21, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Purugly - Aerial Ace - Level 17
  (432, 43200, 332, 21, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Purugly - Fury Swipes - Level 20
  (432, 43200, 154, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Purugly - Charm - Level 25
  (432, 43200, 204, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Purugly - Taunt - Level 29
  (432, 43200, 269, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Purugly - Retaliate - Level 32
  (432, 43200, 514, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Purugly - Slash - Level 37
  (432, 43200, 163, 21, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Purugly - Body Slam - Level 45
  (432, 43200, 34, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Purugly - Attract - Level 52
  (432, 43200, 213, 21, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Purugly - Hone Claws - Level 60
  (432, 43200, 468, 21, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Purugly - Water Pulse - TM03
  (432, 43200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Purugly - Roar - TM05
  (432, 43200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Purugly - Work Up - TM10
  (432, 43200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Purugly - Sunny Day - TM11
  (432, 43200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Purugly - Taunt - TM12
  (432, 43200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Purugly - Hyper Beam - TM15
  (432, 43200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Purugly - Protect - TM17
  (432, 43200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Purugly - Rain Dance - TM18
  (432, 43200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Purugly - Iron Tail - TM23
  (432, 43200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Purugly - Thunderbolt - TM24
  (432, 43200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Purugly - Thunder - TM25
  (432, 43200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Purugly - Dig - TM28
  (432, 43200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Purugly - Shadow Ball - TM30
  (432, 43200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Purugly - Double Team - TM32
  (432, 43200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Purugly - Shock Wave - TM34
  (432, 43200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Purugly - Aerial Ace - TM40
  (432, 43200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 35),
  -- Purugly - Torment - TM41
  (432, 43200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Purugly - Facade - TM42
  (432, 43200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Purugly - Rest - TM44
  (432, 43200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Purugly - Attract - TM45
  (432, 43200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Purugly - Thief - TM46
  (432, 43200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Purugly - Endure - TM58
  (432, 43200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Purugly - Shadow Claw - TM65
  (432, 43200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 42),
  -- Purugly - Payback - TM66
  (432, 43200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Purugly - Giga Impact - TM68
  (432, 43200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Purugly - Flash - TM70
  (432, 43200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Purugly - Psych Up - TM77
  (432, 43200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Purugly - Sleep Talk - TM82
  (432, 43200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Purugly - Bulldoze - TM83
  (432, 43200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Purugly - Dream Eater - TM85
  (432, 43200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 49),
  -- Purugly - Swagger - TM87
  (432, 43200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Purugly - U-turn - TM89
  (432, 43200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 51),
  -- Purugly - Substitute - TM90
  (432, 43200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Purugly - Cut - TM93
  (432, 43200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Purugly - Assurance - Egg
  (432, 43200, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Purugly - Bite - Egg
  (432, 43200, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Purugly - Fake Tears - Egg
  (432, 43200, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Purugly - Flail - Egg
  (432, 43200, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Purugly - Last Resort - Egg
  (432, 43200, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Purugly - Quick Attack - Egg
  (432, 43200, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Purugly - Sand Attack - Egg
  (432, 43200, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Purugly - Tail Whip - Egg
  (432, 43200, 39, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chingling - Wrap - Starting Move
  (433, 43300, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 4
  (433, 43300, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Chingling - Astonish - Level 7
  (433, 43300, 310, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chingling - Confusion - Level 10
  (433, 43300, 93, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Chingling - Yawn - Level 13
  (433, 43300, 281, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Chingling - Last Resort - Level 16
  (433, 43300, 387, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chingling - Entrainment - Level 19
  (433, 43300, 494, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Chingling - Uproar - Level 32
  (433, 43300, 253, 21, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Chingling - Calm Mind - TM04
  (433, 43300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 9),
  -- Chingling - Sunny Day - TM11
  (433, 43300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 10),
  -- Chingling - Taunt - TM12
  (433, 43300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 11),
  -- Chingling - Light Screen - TM16
  (433, 43300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 12),
  -- Chingling - Protect - TM17
  (433, 43300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 13),
  -- Chingling - Rain Dance - TM18
  (433, 43300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 14),
  -- Chingling - Safeguard - TM20
  (433, 43300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 15),
  -- Chingling - Dazzling Gleam - TM21
  (433, 43300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 16),
  -- Chingling - Psychic - TM29
  (433, 43300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 17),
  -- Chingling - Shadow Ball - TM30
  (433, 43300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 18),
  -- Chingling - Double Team - TM32
  (433, 43300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Chingling - Reflect - TM33
  (433, 43300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 20),
  -- Chingling - Shock Wave - TM34
  (433, 43300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 21),
  -- Chingling - Torment - TM41
  (433, 43300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 22),
  -- Chingling - Facade - TM42
  (433, 43300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Chingling - Rest - TM44
  (433, 43300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Chingling - Attract - TM45
  (433, 43300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Chingling - Skill Swap - TM48
  (433, 43300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 26),
  -- Chingling - Charge Beam - TM57
  (433, 43300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 27),
  -- Chingling - Endure - TM58
  (433, 43300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Chingling - Recycle - TM67
  (433, 43300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 29),
  -- Chingling - Flash - TM70
  (433, 43300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Chingling - Thunder Wave - TM73
  (433, 43300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 31),
  -- Chingling - Psych Up - TM77
  (433, 43300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 32),
  -- Chingling - Sleep Talk - TM82
  (433, 43300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Chingling - Dream Eater - TM85
  (433, 43300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 34),
  -- Chingling - Grass Knot - TM86
  (433, 43300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 35),
  -- Chingling - Swagger - TM87
  (433, 43300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Chingling - Substitute - TM90
  (433, 43300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Chingling - Trick Room - TM92
  (433, 43300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 38),
  -- Chingling - Cosmic Power - Egg
  (433, 43300, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Chingling - Curse - Egg
  (433, 43300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chingling - Disable - Egg
  (433, 43300, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chingling - Future Sight - Egg
  (433, 43300, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chingling - Hypnosis - Egg
  (433, 43300, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chingling - Recover - Egg
  (433, 43300, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chingling - Stored Power - Egg
  (433, 43300, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chingling - Wish - Egg
  (433, 43300, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Stunky - Poison Gas - Starting Move
  (434, 43400, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Stunky - Scratch - Starting Move
  (434, 43400, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Stunky - Feint - Level 3
  (434, 43400, 364, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Stunky - Smokescreen - Level 6
  (434, 43400, 108, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Stunky - Acid Spray - Level 9
  (434, 43400, 491, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Stunky - Fury Swipes - Level 12
  (434, 43400, 154, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Stunky - Focus Energy - Level 15
  (434, 43400, 116, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Stunky - Bite - Level 18
  (434, 43400, 44, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Stunky - Venoshock - Level 21
  (434, 43400, 474, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Stunky - Screech - Level 24
  (434, 43400, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Stunky - Sucker Punch - Level 30
  (434, 43400, 389, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Stunky - Memento - Level 33
  (434, 43400, 262, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Stunky - Night Slash - Level 36
  (434, 43400, 400, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Stunky - Belch - Level 39
  (434, 43400, 562, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Stunky - Venom Drench - Level 42
  (434, 43400, 599, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Stunky - Explosion - Level 45
  (434, 43400, 153, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Stunky - Roar - TM05
  (434, 43400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Stunky - Toxic - TM06
  (434, 43400, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 19),
  -- Stunky - Sunny Day - TM11
  (434, 43400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Stunky - Taunt - TM12
  (434, 43400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Stunky - Protect - TM17
  (434, 43400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Stunky - Rain Dance - TM18
  (434, 43400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Stunky - Iron Tail - TM23
  (434, 43400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Stunky - Dig - TM28
  (434, 43400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Stunky - Shadow Ball - TM30
  (434, 43400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Stunky - Double Team - TM32
  (434, 43400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Stunky - Flamethrower - TM35
  (434, 43400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Stunky - Sludge Bomb - TM36
  (434, 43400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Stunky - Fire Blast - TM38
  (434, 43400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Stunky - Torment - TM41
  (434, 43400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Stunky - Facade - TM42
  (434, 43400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Stunky - Rest - TM44
  (434, 43400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Stunky - Attract - TM45
  (434, 43400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Stunky - Thief - TM46
  (434, 43400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Stunky - Endure - TM58
  (434, 43400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Stunky - Nasty Plot - TM63
  (434, 43400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 37),
  -- Stunky - Explosion - TM64
  (434, 43400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 38),
  -- Stunky - Shadow Claw - TM65
  (434, 43400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 39),
  -- Stunky - Payback - TM66
  (434, 43400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Stunky - Snarl - TM78
  (434, 43400, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 41),
  -- Stunky - Dark Pulse - TM79
  (434, 43400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 42),
  -- Stunky - Sleep Talk - TM82
  (434, 43400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Stunky - Swagger - TM87
  (434, 43400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Stunky - Substitute - TM90
  (434, 43400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Stunky - Cut - TM93
  (434, 43400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 46),
  -- Stunky - Defog - TM97
  (434, 43400, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 47),
  -- Stunky - Rock Smash - TM98
  (434, 43400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Stunky - Astonish - Egg
  (434, 43400, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stunky - Crunch - Egg
  (434, 43400, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunky - Double-Edge - Egg
  (434, 43400, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunky - Foul Play - Egg
  (434, 43400, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunky - Haze - Egg
  (434, 43400, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunky - Leer - Egg
  (434, 43400, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunky - Play Rough - Egg
  (434, 43400, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Scary Face - Egg
  (434, 43400, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Slash - Egg
  (434, 43400, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunky - Smog - Egg
  (434, 43400, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skuntank - Flamethrower - Starting Move
  (435, 43500, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Skuntank - Poison Gas - Starting Move
  (435, 43500, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Skuntank - Scratch - Starting Move
  (435, 43500, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Skuntank - Feint - Starting Move
  (435, 43500, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Skuntank - Smokescreen - Starting Move
  (435, 43500, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Skuntank - Flamethrower - Evolution
  (435, 43500, 53, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Skuntank - Acid Spray - Level 9
  (435, 43500, 491, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Skuntank - Fury Swipes - Level 12
  (435, 43500, 154, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Skuntank - Focus Energy - Level 15
  (435, 43500, 116, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Skuntank - Bite - Level 18
  (435, 43500, 44, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Skuntank - Venoshock - Level 21
  (435, 43500, 474, 21, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Skuntank - Screech - Level 24
  (435, 43500, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 21, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Skuntank - Sucker Punch - Level 30
  (435, 43500, 389, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Skuntank - Memento - Level 33
  (435, 43500, 262, 21, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Skuntank - Night Slash - Level 38
  (435, 43500, 400, 21, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Skuntank - Belch - Level 43
  (435, 43500, 562, 21, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Skuntank - Venom Drench - Level 48
  (435, 43500, 599, 21, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Skuntank - Explosion - Level 53
  (435, 43500, 153, 21, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Skuntank - Roar - TM05
  (435, 43500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Skuntank - Toxic - TM06
  (435, 43500, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 21),
  -- Skuntank - Sunny Day - TM11
  (435, 43500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Skuntank - Taunt - TM12
  (435, 43500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Skuntank - Hyper Beam - TM15
  (435, 43500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Skuntank - Protect - TM17
  (435, 43500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Skuntank - Rain Dance - TM18
  (435, 43500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Skuntank - Iron Tail - TM23
  (435, 43500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Skuntank - Dig - TM28
  (435, 43500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Skuntank - Shadow Ball - TM30
  (435, 43500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Skuntank - Double Team - TM32
  (435, 43500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Skuntank - Flamethrower - TM35
  (435, 43500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 31),
  -- Skuntank - Sludge Bomb - TM36
  (435, 43500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 32),
  -- Skuntank - Fire Blast - TM38
  (435, 43500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 33),
  -- Skuntank - Torment - TM41
  (435, 43500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 34),
  -- Skuntank - Facade - TM42
  (435, 43500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Skuntank - Rest - TM44
  (435, 43500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Skuntank - Attract - TM45
  (435, 43500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Skuntank - Thief - TM46
  (435, 43500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Skuntank - Endure - TM58
  (435, 43500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Skuntank - Nasty Plot - TM63
  (435, 43500, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 40),
  -- Skuntank - Explosion - TM64
  (435, 43500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 41),
  -- Skuntank - Shadow Claw - TM65
  (435, 43500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 42),
  -- Skuntank - Payback - TM66
  (435, 43500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Skuntank - Giga Impact - TM68
  (435, 43500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Skuntank - Snarl - TM78
  (435, 43500, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 45),
  -- Skuntank - Dark Pulse - TM79
  (435, 43500, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 46),
  -- Skuntank - Sleep Talk - TM82
  (435, 43500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Skuntank - Poison Jab - TM84
  (435, 43500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 48),
  -- Skuntank - Swagger - TM87
  (435, 43500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Skuntank - Substitute - TM90
  (435, 43500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Skuntank - Cut - TM93
  (435, 43500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 51),
  -- Skuntank - Strength - TM96
  (435, 43500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Skuntank - Defog - TM97
  (435, 43500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 53),
  -- Skuntank - Rock Smash - TM98
  (435, 43500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Skuntank - Astonish - Egg
  (435, 43500, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skuntank - Crunch - Egg
  (435, 43500, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skuntank - Double-Edge - Egg
  (435, 43500, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skuntank - Foul Play - Egg
  (435, 43500, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skuntank - Haze - Egg
  (435, 43500, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skuntank - Leer - Egg
  (435, 43500, 43, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skuntank - Play Rough - Egg
  (435, 43500, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skuntank - Scary Face - Egg
  (435, 43500, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skuntank - Slash - Egg
  (435, 43500, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skuntank - Smog - Egg
  (435, 43500, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bronzor - Tackle - Starting Move
  (436, 43600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Starting Move
  (436, 43600, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bronzor - Confuse Ray - Level 4
  (436, 43600, 109, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Bronzor - Payback - Level 8
  (436, 43600, 371, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bronzor - Imprison - Level 12
  (436, 43600, 286, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bronzor - Gyro Ball - Level 16
  (436, 43600, 360, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Bronzor - Hypnosis - Level 20
  (436, 43600, 95, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bronzor - Safeguard - Level 24
  (436, 43600, 219, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bronzor - Extrasensory - Level 28
  (436, 43600, 326, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bronzor - Heavy Slam - Level 32
  (436, 43600, 484, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bronzor - Iron Defense - Level 36
  (436, 43600, 334, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bronzor - Metal Sound - Level 40
  (436, 43600, 319, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bronzor - Future Sight - Level 44
  (436, 43600, 248, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Bronzor - Calm Mind - TM04
  (436, 43600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Bronzor - Sunny Day - TM11
  (436, 43600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Bronzor - Light Screen - TM16
  (436, 43600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 16),
  -- Bronzor - Protect - TM17
  (436, 43600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Bronzor - Rain Dance - TM18
  (436, 43600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Bronzor - Safeguard - TM20
  (436, 43600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 19),
  -- Bronzor - Solar Beam - TM22
  (436, 43600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Bronzor - Earthquake - TM26
  (436, 43600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Bronzor - Psychic - TM29
  (436, 43600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 22),
  -- Bronzor - Shadow Ball - TM30
  (436, 43600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Bronzor - Double Team - TM32
  (436, 43600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Bronzor - Reflect - TM33
  (436, 43600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 25),
  -- Bronzor - Sandstorm - TM37
  (436, 43600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Bronzor - Rock Tomb - TM39
  (436, 43600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Bronzor - Facade - TM42
  (436, 43600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Bronzor - Rest - TM44
  (436, 43600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Bronzor - Skill Swap - TM48
  (436, 43600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 30),
  -- Bronzor - Charge Beam - TM57
  (436, 43600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Bronzor - Endure - TM58
  (436, 43600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Bronzor - Payback - TM66
  (436, 43600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 33),
  -- Bronzor - Recycle - TM67
  (436, 43600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 34),
  -- Bronzor - Rock Polish - TM69
  (436, 43600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 35),
  -- Bronzor - Flash - TM70
  (436, 43600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 36),
  -- Bronzor - Gyro Ball - TM74
  (436, 43600, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 37),
  -- Bronzor - Stealth Rock - TM76
  (436, 43600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Bronzor - Psych Up - TM77
  (436, 43600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Bronzor - Rock Slide - TM80
  (436, 43600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 40),
  -- Bronzor - Sleep Talk - TM82
  (436, 43600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Bronzor - Bulldoze - TM83
  (436, 43600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Bronzor - Dream Eater - TM85
  (436, 43600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 43),
  -- Bronzor - Grass Knot - TM86
  (436, 43600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 44),
  -- Bronzor - Swagger - TM87
  (436, 43600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Bronzor - Substitute - TM90
  (436, 43600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Bronzor - Flash Cannon - TM91
  (436, 43600, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 47),
  -- Bronzor - Trick Room - TM92
  (436, 43600, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 48),
  -- Bronzong - Block - Starting Move
  (437, 43700, 335, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bronzong - Sunny Day - Starting Move
  (437, 43700, 241, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bronzong - Weather Ball - Starting Move
  (437, 43700, 311, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Bronzong - Tackle - Starting Move
  (437, 43700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Bronzong - Confusion - Starting Move
  (437, 43700, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Bronzong - Confuse Ray - Starting Move
  (437, 43700, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Bronzong - Payback - Starting Move
  (437, 43700, 371, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Bronzong - Block - Evolution
  (437, 43700, 335, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Bronzong - Imprison - Level 12
  (437, 43700, 286, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Bronzong - Gyro Ball - Level 16
  (437, 43700, 360, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Bronzong - Hypnosis - Level 20
  (437, 43700, 95, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Bronzong - Safeguard - Level 24
  (437, 43700, 219, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Bronzong - Extrasensory - Level 28
  (437, 43700, 326, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Bronzong - Heavy Slam - Level 32
  (437, 43700, 484, 21, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Bronzong - Iron Defense - Level 38
  (437, 43700, 334, 21, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Bronzong - Metal Sound - Level 44
  (437, 43700, 319, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Bronzong - Future Sight - Level 50
  (437, 43700, 248, 21, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Bronzong - Rain Dance - Level 56
  (437, 43700, 240, 21, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Bronzong - Calm Mind - TM04
  (437, 43700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Bronzong - Sunny Day - TM11
  (437, 43700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Bronzong - Hyper Beam - TM15
  (437, 43700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Bronzong - Light Screen - TM16
  (437, 43700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Bronzong - Protect - TM17
  (437, 43700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Bronzong - Rain Dance - TM18
  (437, 43700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Bronzong - Safeguard - TM20
  (437, 43700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Bronzong - Solar Beam - TM22
  (437, 43700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Bronzong - Earthquake - TM26
  (437, 43700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Bronzong - Psychic - TM29
  (437, 43700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Bronzong - Shadow Ball - TM30
  (437, 43700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Bronzong - Double Team - TM32
  (437, 43700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Bronzong - Reflect - TM33
  (437, 43700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Bronzong - Sandstorm - TM37
  (437, 43700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Bronzong - Rock Tomb - TM39
  (437, 43700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Bronzong - Facade - TM42
  (437, 43700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Bronzong - Rest - TM44
  (437, 43700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Bronzong - Skill Swap - TM48
  (437, 43700, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Bronzong - Charge Beam - TM57
  (437, 43700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 37),
  -- Bronzong - Endure - TM58
  (437, 43700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Bronzong - Explosion - TM64
  (437, 43700, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Bronzong - Payback - TM66
  (437, 43700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Bronzong - Recycle - TM67
  (437, 43700, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 41),
  -- Bronzong - Giga Impact - TM68
  (437, 43700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Bronzong - Rock Polish - TM69
  (437, 43700, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 43),
  -- Bronzong - Flash - TM70
  (437, 43700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Bronzong - Gyro Ball - TM74
  (437, 43700, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 45),
  -- Bronzong - Stealth Rock - TM76
  (437, 43700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Bronzong - Psych Up - TM77
  (437, 43700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 47),
  -- Bronzong - Rock Slide - TM80
  (437, 43700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Bronzong - Sleep Talk - TM82
  (437, 43700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Bronzong - Bulldoze - TM83
  (437, 43700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Bronzong - Dream Eater - TM85
  (437, 43700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 51),
  -- Bronzong - Grass Knot - TM86
  (437, 43700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 52),
  -- Bronzong - Swagger - TM87
  (437, 43700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Bronzong - Substitute - TM90
  (437, 43700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Bronzong - Flash Cannon - TM91
  (437, 43700, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 55),
  -- Bronzong - Trick Room - TM92
  (437, 43700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 56),
  -- Bronzong - Strength - TM96
  (437, 43700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Bronzong - Rock Smash - TM98
  (437, 43700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Bonsly - Fake Tears - Starting Move
  (438, 43800, 313, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Starting Move
  (438, 43800, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 4
  (438, 43800, 175, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Bonsly - Rock Throw - Level 8
  (438, 43800, 88, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bonsly - Block - Level 12
  (438, 43800, 335, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 16
  (438, 43800, 102, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Bonsly - Rock Tomb - Level 20
  (438, 43800, 317, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bonsly - Tearful Look - Level 24
  (438, 43800, 715, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bonsly - Sucker Punch - Level 28
  (438, 43800, 389, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bonsly - Rock Slide - Level 32
  (438, 43800, 157, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bonsly - Low Kick - Level 36
  (438, 43800, 67, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bonsly - Counter - Level 40
  (438, 43800, 68, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bonsly - Double-Edge - Level 44
  (438, 43800, 38, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Bonsly - Calm Mind - TM04
  (438, 43800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Bonsly - Sunny Day - TM11
  (438, 43800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Bonsly - Protect - TM17
  (438, 43800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Bonsly - Dig - TM28
  (438, 43800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 17),
  -- Bonsly - Brick Break - TM31
  (438, 43800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 18),
  -- Bonsly - Double Team - TM32
  (438, 43800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Bonsly - Sandstorm - TM37
  (438, 43800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 20),
  -- Bonsly - Rock Tomb - TM39
  (438, 43800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 21),
  -- Bonsly - Facade - TM42
  (438, 43800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Bonsly - Rest - TM44
  (438, 43800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Bonsly - Attract - TM45
  (438, 43800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Bonsly - Thief - TM46
  (438, 43800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 25),
  -- Bonsly - Endure - TM58
  (438, 43800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Bonsly - Explosion - TM64
  (438, 43800, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 27),
  -- Bonsly - Rock Polish - TM69
  (438, 43800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 28),
  -- Bonsly - Stealth Rock - TM76
  (438, 43800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 29),
  -- Bonsly - Psych Up - TM77
  (438, 43800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 30),
  -- Bonsly - Rock Slide - TM80
  (438, 43800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 31),
  -- Bonsly - Sleep Talk - TM82
  (438, 43800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Bonsly - Swagger - TM87
  (438, 43800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Bonsly - Substitute - TM90
  (438, 43800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Bonsly - Curse - Egg
  (438, 43800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Bonsly - Defense Curl - Egg
  (438, 43800, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Bonsly - Harden - Egg
  (438, 43800, 106, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bonsly - Headbutt - Egg
  (438, 43800, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bonsly - Rollout - Egg
  (438, 43800, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bonsly - Sand Tomb - Egg
  (438, 43800, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Bonsly - Self-Destruct - Egg
  (438, 43800, 120, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mime Jr. - Pound - Starting Move
  (439, 43900, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mime Jr. - Copycat - Starting Move
  (439, 43900, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mime Jr. - Baton Pass - Level 4
  (439, 43900, 226, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mime Jr. - Encore - Level 8
  (439, 43900, 227, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mime Jr. - Confusion - Level 12
  (439, 43900, 93, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mime Jr. - Role Play - Level 16
  (439, 43900, 272, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mime Jr. - Protect - Level 20
  (439, 43900, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mime Jr. - Recycle - Level 24
  (439, 43900, 278, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mime Jr. - Psybeam - Level 28
  (439, 43900, 60, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mime Jr. - Mimic - Level 32
  (439, 43900, 102, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mime Jr. - Light Screen - Level 36
  (439, 43900, 113, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mime Jr. - Reflect - Level 36
  (439, 43900, 115, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mime Jr. - Safeguard - Level 36
  (439, 43900, 219, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mime Jr. - Sucker Punch - Level 40
  (439, 43900, 389, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Mime Jr. - Dazzling Gleam - Level 44
  (439, 43900, 605, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mime Jr. - Psychic - Level 48
  (439, 43900, 94, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mime Jr. - Teeter Dance - Level 52
  (439, 43900, 298, 21, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Mime Jr. - Focus Punch - TM01
  (439, 43900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Mime Jr. - Calm Mind - TM04
  (439, 43900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Mime Jr. - Sunny Day - TM11
  (439, 43900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Mime Jr. - Taunt - TM12
  (439, 43900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Mime Jr. - Light Screen - TM16
  (439, 43900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Mime Jr. - Protect - TM17
  (439, 43900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Mime Jr. - Rain Dance - TM18
  (439, 43900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Mime Jr. - Safeguard - TM20
  (439, 43900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Mime Jr. - Dazzling Gleam - TM21
  (439, 43900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 26),
  -- Mime Jr. - Solar Beam - TM22
  (439, 43900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Mime Jr. - Thunderbolt - TM24
  (439, 43900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 28),
  -- Mime Jr. - Thunder - TM25
  (439, 43900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 29),
  -- Mime Jr. - Psychic - TM29
  (439, 43900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Mime Jr. - Shadow Ball - TM30
  (439, 43900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Mime Jr. - Brick Break - TM31
  (439, 43900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Mime Jr. - Double Team - TM32
  (439, 43900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Mime Jr. - Reflect - TM33
  (439, 43900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 34),
  -- Mime Jr. - Shock Wave - TM34
  (439, 43900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Mime Jr. - Torment - TM41
  (439, 43900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Mime Jr. - Facade - TM42
  (439, 43900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Mime Jr. - Rest - TM44
  (439, 43900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Mime Jr. - Attract - TM45
  (439, 43900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Mime Jr. - Thief - TM46
  (439, 43900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Mime Jr. - Skill Swap - TM48
  (439, 43900, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Mime Jr. - Fling - TM56
  (439, 43900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Mime Jr. - Charge Beam - TM57
  (439, 43900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 43),
  -- Mime Jr. - Endure - TM58
  (439, 43900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Mime Jr. - Drain Punch - TM60
  (439, 43900, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 45),
  -- Mime Jr. - Nasty Plot - TM63
  (439, 43900, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 46),
  -- Mime Jr. - Recycle - TM67
  (439, 43900, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 47),
  -- Mime Jr. - Flash - TM70
  (439, 43900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Mime Jr. - Thunder Wave - TM73
  (439, 43900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 49),
  -- Mime Jr. - Psych Up - TM77
  (439, 43900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Mime Jr. - Sleep Talk - TM82
  (439, 43900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 51),
  -- Mime Jr. - Dream Eater - TM85
  (439, 43900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 52),
  -- Mime Jr. - Grass Knot - TM86
  (439, 43900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 53),
  -- Mime Jr. - Swagger - TM87
  (439, 43900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Mime Jr. - Substitute - TM90
  (439, 43900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Mime Jr. - Trick Room - TM92
  (439, 43900, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 56),
  -- Mime Jr. - Charm - Egg
  (439, 43900, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mime Jr. - Confuse Ray - Egg
  (439, 43900, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mime Jr. - Fake Out - Egg
  (439, 43900, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mime Jr. - Future Sight - Egg
  (439, 43900, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mime Jr. - Healing Wish - Egg
  (439, 43900, 361, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mime Jr. - Hypnosis - Egg
  (439, 43900, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mime Jr. - Icy Wind - Egg
  (439, 43900, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mime Jr. - Magic Room - Egg
  (439, 43900, 478, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mime Jr. - Mimic - Egg
  (439, 43900, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mime Jr. - Power Split - Egg
  (439, 43900, 471, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mime Jr. - Teeter Dance - Egg
  (439, 43900, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mime Jr. - Tickle - Egg
  (439, 43900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mime Jr. - Trick - Egg
  (439, 43900, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Happiny - Minimize - Starting Move
  (440, 44000, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Happiny - Pound - Starting Move
  (440, 44000, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Happiny - Copycat - Starting Move
  (440, 44000, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Happiny - Defense Curl - Level 4
  (440, 44000, 111, 21, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Happiny - Sweet Kiss - Level 8
  (440, 44000, 186, 21, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Happiny - Disarming Voice - Level 12
  (440, 44000, 574, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Happiny - Covet - Level 16
  (440, 44000, 343, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Happiny - Charm - Level 20
  (440, 44000, 204, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Happiny - Water Pulse - TM03
  (440, 44000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 9),
  -- Happiny - Hail - TM07
  (440, 44000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 10),
  -- Happiny - Work Up - TM10
  (440, 44000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 11),
  -- Happiny - Sunny Day - TM11
  (440, 44000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 12),
  -- Happiny - Light Screen - TM16
  (440, 44000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 13),
  -- Happiny - Protect - TM17
  (440, 44000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 14),
  -- Happiny - Rain Dance - TM18
  (440, 44000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 15),
  -- Happiny - Safeguard - TM20
  (440, 44000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 16),
  -- Happiny - Solar Beam - TM22
  (440, 44000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 17),
  -- Happiny - Psychic - TM29
  (440, 44000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 18),
  -- Happiny - Shadow Ball - TM30
  (440, 44000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 19),
  -- Happiny - Double Team - TM32
  (440, 44000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Happiny - Shock Wave - TM34
  (440, 44000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 21),
  -- Happiny - Flamethrower - TM35
  (440, 44000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 22),
  -- Happiny - Fire Blast - TM38
  (440, 44000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Happiny - Facade - TM42
  (440, 44000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Happiny - Rest - TM44
  (440, 44000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Happiny - Attract - TM45
  (440, 44000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Happiny - Fling - TM56
  (440, 44000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 27),
  -- Happiny - Endure - TM58
  (440, 44000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Happiny - Drain Punch - TM60
  (440, 44000, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 29),
  -- Happiny - Recycle - TM67
  (440, 44000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 30),
  -- Happiny - Flash - TM70
  (440, 44000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Happiny - Thunder Wave - TM73
  (440, 44000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 32),
  -- Happiny - Psych Up - TM77
  (440, 44000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 33),
  -- Happiny - Sleep Talk - TM82
  (440, 44000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Happiny - Dream Eater - TM85
  (440, 44000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 35),
  -- Happiny - Grass Knot - TM86
  (440, 44000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Happiny - Swagger - TM87
  (440, 44000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Happiny - Substitute - TM90
  (440, 44000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Happiny - Aromatherapy - Egg
  (440, 44000, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Happiny - Counter - Egg
  (440, 44000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Happiny - Gravity - Egg
  (440, 44000, 356, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Happiny - Heal Bell - Egg
  (440, 44000, 215, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Happiny - Helping Hand - Egg
  (440, 44000, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Happiny - Last Resort - Egg
  (440, 44000, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Happiny - Metronome - Egg
  (440, 44000, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Happiny - Present - Egg
  (440, 44000, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Happiny - Seismic Toss - Egg
  (440, 44000, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chatot - Hyper Voice - Starting Move
  (441, 44100, 304, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chatot - Chatter - Starting Move
  (441, 44100, 448, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Chatot - Confide - Starting Move
  (441, 44100, 590, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Chatot - Taunt - Starting Move
  (441, 44100, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Chatot - Peck - Level 5
  (441, 44100, 64, 21, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Chatot - Growl - Level 9
  (441, 44100, 45, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Chatot - Sing - Level 13
  (441, 44100, 47, 21, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Chatot - Fury Attack - Level 17
  (441, 44100, 31, 21, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Chatot - Chatter - Level 21
  (441, 44100, 448, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Chatot - Taunt - Level 25
  (441, 44100, 269, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Chatot - Round - Level 29
  (441, 44100, 496, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Chatot - Mimic - Level 33
  (441, 44100, 102, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Chatot - Echoed Voice - Level 37
  (441, 44100, 497, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Chatot - Roost - Level 41
  (441, 44100, 355, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Chatot - Uproar - Level 45
  (441, 44100, 253, 21, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Chatot - Parting Shot - Level 49
  (441, 44100, 575, 21, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Chatot - Feather Dance - Level 50
  (441, 44100, 297, 21, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Chatot - Hyper Voice - Level 57
  (441, 44100, 304, 21, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Chatot - Work Up - TM10
  (441, 44100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Chatot - Sunny Day - TM11
  (441, 44100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Chatot - Taunt - TM12
  (441, 44100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Chatot - Protect - TM17
  (441, 44100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Chatot - Rain Dance - TM18
  (441, 44100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Chatot - Double Team - TM32
  (441, 44100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Chatot - Aerial Ace - TM40
  (441, 44100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Chatot - Torment - TM41
  (441, 44100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 26),
  -- Chatot - Facade - TM42
  (441, 44100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Chatot - Rest - TM44
  (441, 44100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Chatot - Attract - TM45
  (441, 44100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Chatot - Thief - TM46
  (441, 44100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 30),
  -- Chatot - Steel Wing - TM47
  (441, 44100, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 31),
  -- Chatot - Roost - TM51
  (441, 44100, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 32),
  -- Chatot - Endure - TM58
  (441, 44100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Chatot - Nasty Plot - TM63
  (441, 44100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 34),
  -- Chatot - Sleep Talk - TM82
  (441, 44100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Chatot - Swagger - TM87
  (441, 44100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Chatot - Pluck - TM88
  (441, 44100, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 37),
  -- Chatot - U-turn - TM89
  (441, 44100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 38),
  -- Chatot - Substitute - TM90
  (441, 44100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Chatot - Fly - TM94
  (441, 44100, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 40),
  -- Chatot - Defog - TM97
  (441, 44100, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 41),
  -- Chatot - Agility - Egg
  (441, 44100, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chatot - Air Cutter - Egg
  (441, 44100, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chatot - Boomburst - Egg
  (441, 44100, 586, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chatot - Encore - Egg
  (441, 44100, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chatot - Night Shade - Egg
  (441, 44100, 101, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chatot - Supersonic - Egg
  (441, 44100, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spiritomb - Night Shade - Starting Move
  (442, 44200, 101, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Spiritomb - Confuse Ray - Starting Move
  (442, 44200, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Spiritomb - Shadow Sneak - Level 5
  (442, 44200, 425, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spiritomb - Spite - Level 10
  (442, 44200, 180, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Spiritomb - Payback - Level 15
  (442, 44200, 371, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spiritomb - Nasty Plot - Level 20
  (442, 44200, 417, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Spiritomb - Hex - Level 25
  (442, 44200, 506, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Spiritomb - Memento - Level 30
  (442, 44200, 262, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Spiritomb - Sucker Punch - Level 35
  (442, 44200, 389, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Spiritomb - Curse - Level 40
  (442, 44200, 174, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Spiritomb - Shadow Ball - Level 45
  (442, 44200, 247, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Spiritomb - Dark Pulse - Level 50
  (442, 44200, 399, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spiritomb - Hypnosis - Level 55
  (442, 44200, 95, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spiritomb - Dream Eater - Level 60
  (442, 44200, 138, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Spiritomb - Water Pulse - TM03
  (442, 44200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Spiritomb - Calm Mind - TM04
  (442, 44200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Spiritomb - Sunny Day - TM11
  (442, 44200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Spiritomb - Taunt - TM12
  (442, 44200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Spiritomb - Hyper Beam - TM15
  (442, 44200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Spiritomb - Protect - TM17
  (442, 44200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Spiritomb - Rain Dance - TM18
  (442, 44200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Spiritomb - Psychic - TM29
  (442, 44200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 22),
  -- Spiritomb - Shadow Ball - TM30
  (442, 44200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Spiritomb - Double Team - TM32
  (442, 44200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Spiritomb - Shock Wave - TM34
  (442, 44200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Spiritomb - Rock Tomb - TM39
  (442, 44200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Spiritomb - Torment - TM41
  (442, 44200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 27),
  -- Spiritomb - Facade - TM42
  (442, 44200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Spiritomb - Rest - TM44
  (442, 44200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Spiritomb - Attract - TM45
  (442, 44200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Spiritomb - Thief - TM46
  (442, 44200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Spiritomb - Endure - TM58
  (442, 44200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Spiritomb - Will-O-Wisp - TM61
  (442, 44200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 33),
  -- Spiritomb - Nasty Plot - TM63
  (442, 44200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 34),
  -- Spiritomb - Payback - TM66
  (442, 44200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Spiritomb - Giga Impact - TM68
  (442, 44200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Spiritomb - Flash - TM70
  (442, 44200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Spiritomb - Psych Up - TM77
  (442, 44200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 38),
  -- Spiritomb - Snarl - TM78
  (442, 44200, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 39),
  -- Spiritomb - Dark Pulse - TM79
  (442, 44200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 40),
  -- Spiritomb - Sleep Talk - TM82
  (442, 44200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Spiritomb - Dream Eater - TM85
  (442, 44200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 42),
  -- Spiritomb - Swagger - TM87
  (442, 44200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Spiritomb - Substitute - TM90
  (442, 44200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Spiritomb - Destiny Bond - Egg
  (442, 44200, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spiritomb - Disable - Egg
  (442, 44200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spiritomb - Foul Play - Egg
  (442, 44200, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spiritomb - Grudge - Egg
  (442, 44200, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spiritomb - Imprison - Egg
  (442, 44200, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spiritomb - Pain Split - Egg
  (442, 44200, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spiritomb - Shadow Sneak - Egg
  (442, 44200, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spiritomb - Smokescreen - Egg
  (442, 44200, 108, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gible - Sand Tomb - Starting Move
  (443, 44300, 328, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gible - Tackle - Starting Move
  (443, 44300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gible - Sand Attack - Level 6
  (443, 44300, 28, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Gible - Dragon Breath - Level 12
  (443, 44300, 225, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Gible - Bulldoze - Level 18
  (443, 44300, 523, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Gible - Bite - Level 25
  (443, 44300, 44, 21, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 30
  (443, 44300, 163, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 36
  (443, 44300, 337, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 42
  (443, 44300, 91, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Gible - Sandstorm - Level 48
  (443, 44300, 201, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Gible - Take Down - Level 54
  (443, 44300, 36, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Gible - Dragon Rush - Level 60
  (443, 44300, 407, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Gible - Dragon Claw - TM02
  (443, 44300, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 13),
  -- Gible - Roar - TM05
  (443, 44300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 14),
  -- Gible - Sunny Day - TM11
  (443, 44300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Gible - Protect - TM17
  (443, 44300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Gible - Rain Dance - TM18
  (443, 44300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Gible - Iron Tail - TM23
  (443, 44300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 18),
  -- Gible - Earthquake - TM26
  (443, 44300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 19),
  -- Gible - Dig - TM28
  (443, 44300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 20),
  -- Gible - Double Team - TM32
  (443, 44300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Gible - Flamethrower - TM35
  (443, 44300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 22),
  -- Gible - Sandstorm - TM37
  (443, 44300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 23),
  -- Gible - Fire Blast - TM38
  (443, 44300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 24),
  -- Gible - Rock Tomb - TM39
  (443, 44300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Gible - Aerial Ace - TM40
  (443, 44300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Gible - Facade - TM42
  (443, 44300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Gible - Rest - TM44
  (443, 44300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Gible - Attract - TM45
  (443, 44300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Gible - Endure - TM58
  (443, 44300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Gible - Dragon Pulse - TM59
  (443, 44300, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 31),
  -- Gible - Shadow Claw - TM65
  (443, 44300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 32),
  -- Gible - Stone Edge - TM71
  (443, 44300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 33),
  -- Gible - Stealth Rock - TM76
  (443, 44300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 34),
  -- Gible - Rock Slide - TM80
  (443, 44300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 35),
  -- Gible - Sleep Talk - TM82
  (443, 44300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Gible - Bulldoze - TM83
  (443, 44300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 37),
  -- Gible - Swagger - TM87
  (443, 44300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Gible - Substitute - TM90
  (443, 44300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Gible - Cut - TM93
  (443, 44300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 40),
  -- Gible - Strength - TM96
  (443, 44300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 41),
  -- Gible - Rock Smash - TM98
  (443, 44300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Gible - Rock Climb - TM100
  (443, 44300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 43),
  -- Gible - Body Slam - Egg
  (443, 44300, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gible - Double-Edge - Egg
  (443, 44300, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gible - Dragon Breath - Egg
  (443, 44300, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gible - Iron Head - Egg
  (443, 44300, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gible - Metal Claw - Egg
  (443, 44300, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gible - Mud Shot - Egg
  (443, 44300, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gible - Outrage - Egg
  (443, 44300, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gible - Sand Tomb - Egg
  (443, 44300, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gible - Scary Face - Egg
  (443, 44300, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gible - Thrash - Egg
  (443, 44300, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gible - Twister - Egg
  (443, 44300, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gabite - Dual Chop - Starting Move
  (444, 44400, 530, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gabite - Sand Tomb - Starting Move
  (444, 44400, 328, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gabite - Tackle - Starting Move
  (444, 44400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gabite - Sand Attack - Starting Move
  (444, 44400, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gabite - Dragon Breath - Starting Move
  (444, 44400, 225, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gabite - Bulldoze - Level 18
  (444, 44400, 523, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Gabite - Bite - Level 27
  (444, 44400, 44, 21, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Gabite - Slash - Level 34
  (444, 44400, 163, 21, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gabite - Dragon Claw - Level 42
  (444, 44400, 337, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Gabite - Dig - Level 50
  (444, 44400, 91, 21, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Gabite - Sandstorm - Level 58
  (444, 44400, 201, 21, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Gabite - Take Down - Level 66
  (444, 44400, 36, 21, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Gabite - Dragon Rush - Level 74
  (444, 44400, 407, 21, NULL, 1, 74, NULL, NULL, NULL, 13),
  -- Gabite - Dragon Claw - TM02
  (444, 44400, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 14),
  -- Gabite - Roar - TM05
  (444, 44400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Gabite - Sunny Day - TM11
  (444, 44400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Gabite - Protect - TM17
  (444, 44400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Gabite - Rain Dance - TM18
  (444, 44400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Gabite - Iron Tail - TM23
  (444, 44400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 19),
  -- Gabite - Earthquake - TM26
  (444, 44400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 20),
  -- Gabite - Dig - TM28
  (444, 44400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Gabite - Double Team - TM32
  (444, 44400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Gabite - Flamethrower - TM35
  (444, 44400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 23),
  -- Gabite - Sandstorm - TM37
  (444, 44400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 24),
  -- Gabite - Fire Blast - TM38
  (444, 44400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 25),
  -- Gabite - Rock Tomb - TM39
  (444, 44400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Gabite - Aerial Ace - TM40
  (444, 44400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 27),
  -- Gabite - Facade - TM42
  (444, 44400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Gabite - Rest - TM44
  (444, 44400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Gabite - Attract - TM45
  (444, 44400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Gabite - Endure - TM58
  (444, 44400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Gabite - Dragon Pulse - TM59
  (444, 44400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 32),
  -- Gabite - Shadow Claw - TM65
  (444, 44400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 33),
  -- Gabite - Stone Edge - TM71
  (444, 44400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 34),
  -- Gabite - Stealth Rock - TM76
  (444, 44400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 35),
  -- Gabite - Rock Slide - TM80
  (444, 44400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 36),
  -- Gabite - Sleep Talk - TM82
  (444, 44400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Gabite - Bulldoze - TM83
  (444, 44400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 38),
  -- Gabite - Swagger - TM87
  (444, 44400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Gabite - Substitute - TM90
  (444, 44400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Gabite - Cut - TM93
  (444, 44400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 41),
  -- Gabite - Strength - TM96
  (444, 44400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Gabite - Rock Smash - TM98
  (444, 44400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Gabite - Rock Climb - TM100
  (444, 44400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 44),
  -- Gabite - Body Slam - Egg
  (444, 44400, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gabite - Double-Edge - Egg
  (444, 44400, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gabite - Dragon Breath - Egg
  (444, 44400, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gabite - Iron Head - Egg
  (444, 44400, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gabite - Metal Claw - Egg
  (444, 44400, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gabite - Mud Shot - Egg
  (444, 44400, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gabite - Outrage - Egg
  (444, 44400, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gabite - Sand Tomb - Egg
  (444, 44400, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gabite - Scary Face - Egg
  (444, 44400, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gabite - Thrash - Egg
  (444, 44400, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gabite - Twister - Egg
  (444, 44400, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Garchomp - Crunch - Starting Move
  (445, 44500, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Garchomp - Dual Chop - Starting Move
  (445, 44500, 530, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Garchomp - Sand Tomb - Starting Move
  (445, 44500, 328, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Garchomp - Tackle - Starting Move
  (445, 44500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Garchomp - Sand Attack - Starting Move
  (445, 44500, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Garchomp - Dragon Breath - Starting Move
  (445, 44500, 225, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Garchomp - Crunch - Evolution
  (445, 44500, 242, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Garchomp - Bulldoze - Level 18
  (445, 44500, 523, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Garchomp - Bite - Level 27
  (445, 44500, 44, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Garchomp - Slash - Level 34
  (445, 44500, 163, 21, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Garchomp - Dragon Claw - Level 42
  (445, 44500, 337, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Garchomp - Dig - Level 52
  (445, 44500, 91, 21, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Garchomp - Sandstorm - Level 62
  (445, 44500, 201, 21, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Garchomp - Take Down - Level 72
  (445, 44500, 36, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Garchomp - Dragon Rush - Level 82
  (445, 44500, 407, 21, NULL, 1, 82, NULL, NULL, NULL, 15),
  -- Garchomp - Dragon Claw - TM02
  (445, 44500, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 16),
  -- Garchomp - Roar - TM05
  (445, 44500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Garchomp - Sunny Day - TM11
  (445, 44500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Garchomp - Hyper Beam - TM15
  (445, 44500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Garchomp - Protect - TM17
  (445, 44500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Garchomp - Rain Dance - TM18
  (445, 44500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Garchomp - Iron Tail - TM23
  (445, 44500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Garchomp - Earthquake - TM26
  (445, 44500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Garchomp - Dig - TM28
  (445, 44500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Garchomp - Brick Break - TM31
  (445, 44500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Garchomp - Double Team - TM32
  (445, 44500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Garchomp - Flamethrower - TM35
  (445, 44500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 27),
  -- Garchomp - Sandstorm - TM37
  (445, 44500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Garchomp - Fire Blast - TM38
  (445, 44500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 29),
  -- Garchomp - Rock Tomb - TM39
  (445, 44500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Garchomp - Aerial Ace - TM40
  (445, 44500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Garchomp - Facade - TM42
  (445, 44500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Garchomp - Rest - TM44
  (445, 44500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Garchomp - Attract - TM45
  (445, 44500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Garchomp - False Swipe - TM54
  (445, 44500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 35),
  -- Garchomp - Fling - TM56
  (445, 44500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Garchomp - Endure - TM58
  (445, 44500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Garchomp - Dragon Pulse - TM59
  (445, 44500, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 38),
  -- Garchomp - Shadow Claw - TM65
  (445, 44500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 39),
  -- Garchomp - Giga Impact - TM68
  (445, 44500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Garchomp - Stone Edge - TM71
  (445, 44500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 41),
  -- Garchomp - Swords Dance - TM75
  (445, 44500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 42),
  -- Garchomp - Stealth Rock - TM76
  (445, 44500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 43),
  -- Garchomp - Rock Slide - TM80
  (445, 44500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 44),
  -- Garchomp - Sleep Talk - TM82
  (445, 44500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Garchomp - Bulldoze - TM83
  (445, 44500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Garchomp - Poison Jab - TM84
  (445, 44500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 47),
  -- Garchomp - Swagger - TM87
  (445, 44500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Garchomp - Substitute - TM90
  (445, 44500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Garchomp - Cut - TM93
  (445, 44500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Garchomp - Surf - TM95
  (445, 44500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 51),
  -- Garchomp - Strength - TM96
  (445, 44500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Garchomp - Rock Smash - TM98
  (445, 44500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Garchomp - Rock Climb - TM100
  (445, 44500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 54),
  -- Garchomp - Body Slam - Egg
  (445, 44500, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Garchomp - Double-Edge - Egg
  (445, 44500, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Garchomp - Dragon Breath - Egg
  (445, 44500, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Garchomp - Iron Head - Egg
  (445, 44500, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Garchomp - Metal Claw - Egg
  (445, 44500, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Garchomp - Mud Shot - Egg
  (445, 44500, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Garchomp - Outrage - Egg
  (445, 44500, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Garchomp - Sand Tomb - Egg
  (445, 44500, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Garchomp - Scary Face - Egg
  (445, 44500, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Garchomp - Thrash - Egg
  (445, 44500, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Garchomp - Twister - Egg
  (445, 44500, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Munchlax - Lick - Starting Move
  (446, 44600, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Munchlax - Tackle - Starting Move
  (446, 44600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Munchlax - Recycle - Level 8
  (446, 44600, 278, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Munchlax - Covet - Level 12
  (446, 44600, 343, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Munchlax - Bite - Level 16
  (446, 44600, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Munchlax - Stockpile - Level 20
  (446, 44600, 254, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Munchlax - Swallow - Level 20
  (446, 44600, 256, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Munchlax - Screech - Level 24
  (446, 44600, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Munchlax - Body Slam - Level 28
  (446, 44600, 34, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Munchlax - Fling - Level 32
  (446, 44600, 374, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Munchlax - Amnesia - Level 36
  (446, 44600, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Munchlax - Metronome - Level 40
  (446, 44600, 118, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Munchlax - Flail - Level 44
  (446, 44600, 175, 21, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Munchlax - Belly Drum - Level 48
  (446, 44600, 187, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Munchlax - Last Resort - Level 52
  (446, 44600, 387, 21, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Munchlax - Focus Punch - TM01
  (446, 44600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Munchlax - Water Pulse - TM03
  (446, 44600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Munchlax - Work Up - TM10
  (446, 44600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Munchlax - Sunny Day - TM11
  (446, 44600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Munchlax - Ice Beam - TM13
  (446, 44600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Munchlax - Blizzard - TM14
  (446, 44600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Munchlax - Protect - TM17
  (446, 44600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Munchlax - Rain Dance - TM18
  (446, 44600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Munchlax - Solar Beam - TM22
  (446, 44600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Munchlax - Thunderbolt - TM24
  (446, 44600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Munchlax - Thunder - TM25
  (446, 44600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Munchlax - Earthquake - TM26
  (446, 44600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Munchlax - Psychic - TM29
  (446, 44600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Munchlax - Shadow Ball - TM30
  (446, 44600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Munchlax - Brick Break - TM31
  (446, 44600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Munchlax - Double Team - TM32
  (446, 44600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Munchlax - Shock Wave - TM34
  (446, 44600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Munchlax - Flamethrower - TM35
  (446, 44600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 34),
  -- Munchlax - Sandstorm - TM37
  (446, 44600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 35),
  -- Munchlax - Fire Blast - TM38
  (446, 44600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 36),
  -- Munchlax - Rock Tomb - TM39
  (446, 44600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 37),
  -- Munchlax - Facade - TM42
  (446, 44600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Munchlax - Rest - TM44
  (446, 44600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Munchlax - Attract - TM45
  (446, 44600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Munchlax - Fling - TM56
  (446, 44600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Munchlax - Endure - TM58
  (446, 44600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Munchlax - Recycle - TM67
  (446, 44600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Munchlax - Rock Slide - TM80
  (446, 44600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 44),
  -- Munchlax - Sleep Talk - TM82
  (446, 44600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Munchlax - Bulldoze - TM83
  (446, 44600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Munchlax - Swagger - TM87
  (446, 44600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Munchlax - Substitute - TM90
  (446, 44600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Munchlax - Surf - TM95
  (446, 44600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 49),
  -- Munchlax - Strength - TM96
  (446, 44600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Munchlax - Rock Smash - TM98
  (446, 44600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Munchlax - Rock Climb - TM100
  (446, 44600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 52),
  -- Munchlax - After You - Egg
  (446, 44600, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Munchlax - Belch - Egg
  (446, 44600, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Munchlax - Charm - Egg
  (446, 44600, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Munchlax - Counter - Egg
  (446, 44600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Munchlax - Curse - Egg
  (446, 44600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Munchlax - Double-Edge - Egg
  (446, 44600, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Munchlax - Fissure - Egg
  (446, 44600, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munchlax - Lick - Egg
  (446, 44600, 122, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munchlax - Self-Destruct - Egg
  (446, 44600, 120, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Munchlax - Whirlwind - Egg
  (446, 44600, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Munchlax - Zen Headbutt - Egg
  (446, 44600, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Riolu - Quick Attack - Starting Move
  (447, 44700, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Riolu - Endure - Starting Move
  (447, 44700, 203, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Riolu - Feint - Level 4
  (447, 44700, 364, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Riolu - Metal Claw - Level 8
  (447, 44700, 232, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Riolu - Counter - Level 12
  (447, 44700, 68, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Riolu - Work Up - Level 16
  (447, 44700, 526, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Riolu - Rock Smash - Level 20
  (447, 44700, 249, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Riolu - Nasty Plot - Level 24
  (447, 44700, 417, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Screech - Level 28
  (447, 44700, 103, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Riolu - Quick Guard - Level 32
  (447, 44700, 501, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Riolu - Force Palm - Level 36
  (447, 44700, 395, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Riolu - Swords Dance - Level 40
  (447, 44700, 14, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Riolu - Helping Hand - Level 44
  (447, 44700, 270, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Riolu - Copycat - Level 48
  (447, 44700, 383, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Riolu - Final Gambit - Level 52
  (447, 44700, 515, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Riolu - Reversal - Level 56
  (447, 44700, 179, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Riolu - Focus Punch - TM01
  (447, 44700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Riolu - Roar - TM05
  (447, 44700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Riolu - Bulk Up - TM08
  (447, 44700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 19),
  -- Riolu - Work Up - TM10
  (447, 44700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Riolu - Sunny Day - TM11
  (447, 44700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Riolu - Protect - TM17
  (447, 44700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Riolu - Rain Dance - TM18
  (447, 44700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Riolu - Iron Tail - TM23
  (447, 44700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Riolu - Earthquake - TM26
  (447, 44700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Riolu - Low Sweep - TM27
  (447, 44700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 26),
  -- Riolu - Dig - TM28
  (447, 44700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Riolu - Brick Break - TM31
  (447, 44700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Riolu - Double Team - TM32
  (447, 44700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Riolu - Rock Tomb - TM39
  (447, 44700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Riolu - Facade - TM42
  (447, 44700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Riolu - Rest - TM44
  (447, 44700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Riolu - Attract - TM45
  (447, 44700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Riolu - Focus Blast - TM52
  (447, 44700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 34),
  -- Riolu - Fling - TM56
  (447, 44700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Riolu - Endure - TM58
  (447, 44700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Riolu - Drain Punch - TM60
  (447, 44700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 37),
  -- Riolu - Nasty Plot - TM63
  (447, 44700, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 38),
  -- Riolu - Shadow Claw - TM65
  (447, 44700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 39),
  -- Riolu - Payback - TM66
  (447, 44700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Riolu - Swords Dance - TM75
  (447, 44700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Riolu - Rock Slide - TM80
  (447, 44700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Riolu - Sleep Talk - TM82
  (447, 44700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Riolu - Bulldoze - TM83
  (447, 44700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Riolu - Poison Jab - TM84
  (447, 44700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 45),
  -- Riolu - Swagger - TM87
  (447, 44700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Riolu - Substitute - TM90
  (447, 44700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Riolu - Strength - TM96
  (447, 44700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Riolu - Rock Smash - TM98
  (447, 44700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Riolu - Agility - Egg
  (447, 44700, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Riolu - Bite - Egg
  (447, 44700, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Riolu - Blaze Kick - Egg
  (447, 44700, 299, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Riolu - Bullet Punch - Egg
  (447, 44700, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Riolu - Circle Throw - Egg
  (447, 44700, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Riolu - Cross Chop - Egg
  (447, 44700, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Riolu - Crunch - Egg
  (447, 44700, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Riolu - Detect - Egg
  (447, 44700, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Riolu - Follow Me - Egg
  (447, 44700, 266, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Riolu - High Jump Kick - Egg
  (447, 44700, 136, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Riolu - Howl - Egg
  (447, 44700, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Riolu - Iron Defense - Egg
  (447, 44700, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Riolu - Low Kick - Egg
  (447, 44700, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Riolu - Meteor Mash - Egg
  (447, 44700, 309, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Riolu - Mind Reader - Egg
  (447, 44700, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Riolu - Vacuum Wave - Egg
  (447, 44700, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lucario - Aura Sphere - Starting Move
  (448, 44800, 396, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lucario - Life Dew - Starting Move
  (448, 44800, 791, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lucario - Work Up - Starting Move
  (448, 44800, 526, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lucario - Rock Smash - Starting Move
  (448, 44800, 249, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lucario - Nasty Plot - Starting Move
  (448, 44800, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lucario - Screech - Starting Move
  (448, 44800, 103, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Lucario - Force Palm - Starting Move
  (448, 44800, 395, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Lucario - Helping Hand - Starting Move
  (448, 44800, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Lucario - Copycat - Starting Move
  (448, 44800, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Lucario - Final Gambit - Starting Move
  (448, 44800, 515, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Lucario - Reversal - Starting Move
  (448, 44800, 179, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Lucario - Quick Attack - Starting Move
  (448, 44800, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Lucario - Detect - Starting Move
  (448, 44800, 197, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Lucario - Feint - Starting Move
  (448, 44800, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Lucario - Metal Claw - Starting Move
  (448, 44800, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Lucario - Aura Sphere - Evolution
  (448, 44800, 396, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Lucario - Counter - Level 12
  (448, 44800, 68, 21, NULL, 1, 12, NULL, NULL, NULL, 17),
  -- Lucario - Laser Focus - Level 16
  (448, 44800, 673, 21, NULL, 1, 16, NULL, NULL, NULL, 18),
  -- Lucario - Power-Up Punch - Level 20
  (448, 44800, 612, 21, NULL, 1, 20, NULL, NULL, NULL, 19),
  -- Lucario - Calm Mind - Level 24
  (448, 44800, 347, 21, NULL, 1, 24, NULL, NULL, NULL, 20),
  -- Lucario - Metal Sound - Level 28
  (448, 44800, 319, 21, NULL, 1, 28, NULL, NULL, NULL, 21),
  -- Lucario - Quick Guard - Level 32
  (448, 44800, 501, 21, NULL, 1, 32, NULL, NULL, NULL, 22),
  -- Lucario - Bone Rush - Level 36
  (448, 44800, 198, 21, NULL, 1, 36, NULL, NULL, NULL, 23),
  -- Lucario - Swords Dance - Level 40
  (448, 44800, 14, 21, NULL, 1, 40, NULL, NULL, NULL, 24),
  -- Lucario - Heal Pulse - Level 44
  (448, 44800, 505, 21, NULL, 1, 44, NULL, NULL, NULL, 25),
  -- Lucario - Meteor Mash - Level 48
  (448, 44800, 309, 21, NULL, 1, 48, NULL, NULL, NULL, 26),
  -- Lucario - Dragon Pulse - Level 52
  (448, 44800, 406, 21, NULL, 1, 52, NULL, NULL, NULL, 27),
  -- Lucario - Extreme Speed - Level 56
  (448, 44800, 245, 21, NULL, 1, 56, NULL, NULL, NULL, 28),
  -- Lucario - Close Combat - Level 60
  (448, 44800, 370, 21, NULL, 1, 60, NULL, NULL, NULL, 29),
  -- Lucario - Focus Punch - TM01
  (448, 44800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 30),
  -- Lucario - Water Pulse - TM03
  (448, 44800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 31),
  -- Lucario - Calm Mind - TM04
  (448, 44800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 32),
  -- Lucario - Roar - TM05
  (448, 44800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 33),
  -- Lucario - Bulk Up - TM08
  (448, 44800, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 34),
  -- Lucario - Work Up - TM10
  (448, 44800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 35),
  -- Lucario - Sunny Day - TM11
  (448, 44800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 36),
  -- Lucario - Hyper Beam - TM15
  (448, 44800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 37),
  -- Lucario - Protect - TM17
  (448, 44800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 38),
  -- Lucario - Rain Dance - TM18
  (448, 44800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 39),
  -- Lucario - Iron Tail - TM23
  (448, 44800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 40),
  -- Lucario - Earthquake - TM26
  (448, 44800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 41),
  -- Lucario - Low Sweep - TM27
  (448, 44800, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 42),
  -- Lucario - Dig - TM28
  (448, 44800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 43),
  -- Lucario - Psychic - TM29
  (448, 44800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 44),
  -- Lucario - Shadow Ball - TM30
  (448, 44800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 45),
  -- Lucario - Brick Break - TM31
  (448, 44800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 46),
  -- Lucario - Double Team - TM32
  (448, 44800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 47),
  -- Lucario - Rock Tomb - TM39
  (448, 44800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 48),
  -- Lucario - Facade - TM42
  (448, 44800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 49),
  -- Lucario - Rest - TM44
  (448, 44800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 50),
  -- Lucario - Attract - TM45
  (448, 44800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 51),
  -- Lucario - Focus Blast - TM52
  (448, 44800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 52),
  -- Lucario - Fling - TM56
  (448, 44800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 53),
  -- Lucario - Endure - TM58
  (448, 44800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 54),
  -- Lucario - Dragon Pulse - TM59
  (448, 44800, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 55),
  -- Lucario - Drain Punch - TM60
  (448, 44800, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 56),
  -- Lucario - Nasty Plot - TM63
  (448, 44800, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 57),
  -- Lucario - Shadow Claw - TM65
  (448, 44800, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 58),
  -- Lucario - Payback - TM66
  (448, 44800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 59),
  -- Lucario - Giga Impact - TM68
  (448, 44800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 60),
  -- Lucario - Stone Edge - TM71
  (448, 44800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 61),
  -- Lucario - Swords Dance - TM75
  (448, 44800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 62),
  -- Lucario - Dark Pulse - TM79
  (448, 44800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 63),
  -- Lucario - Rock Slide - TM80
  (448, 44800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 64),
  -- Lucario - Sleep Talk - TM82
  (448, 44800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 65),
  -- Lucario - Bulldoze - TM83
  (448, 44800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 66),
  -- Lucario - Poison Jab - TM84
  (448, 44800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 67),
  -- Lucario - Swagger - TM87
  (448, 44800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 68),
  -- Lucario - Substitute - TM90
  (448, 44800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 69),
  -- Lucario - Flash Cannon - TM91
  (448, 44800, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 70),
  -- Lucario - Strength - TM96
  (448, 44800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 71),
  -- Lucario - Rock Smash - TM98
  (448, 44800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 72),
  -- Lucario - Rock Climb - TM100
  (448, 44800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 73),
  -- Lucario - Agility - Egg
  (448, 44800, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Lucario - Bite - Egg
  (448, 44800, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Lucario - Blaze Kick - Egg
  (448, 44800, 299, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Lucario - Bullet Punch - Egg
  (448, 44800, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Lucario - Circle Throw - Egg
  (448, 44800, 509, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Lucario - Cross Chop - Egg
  (448, 44800, 238, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Lucario - Crunch - Egg
  (448, 44800, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Lucario - Detect - Egg
  (448, 44800, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Lucario - Follow Me - Egg
  (448, 44800, 266, 21, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Lucario - High Jump Kick - Egg
  (448, 44800, 136, 21, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Lucario - Howl - Egg
  (448, 44800, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Lucario - Iron Defense - Egg
  (448, 44800, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Lucario - Low Kick - Egg
  (448, 44800, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Lucario - Meteor Mash - Egg
  (448, 44800, 309, 21, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Lucario - Mind Reader - Egg
  (448, 44800, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Lucario - Vacuum Wave - Egg
  (448, 44800, 410, 21, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Hippopotas - Tackle - Starting Move
  (449, 44900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hippopotas - Sand Attack - Starting Move
  (449, 44900, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 4
  (449, 44900, 44, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 8
  (449, 44900, 281, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Hippopotas - Sand Tomb - Level 12
  (449, 44900, 328, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hippopotas - Dig - Level 16
  (449, 44900, 91, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hippopotas - Crunch - Level 20
  (449, 44900, 242, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hippopotas - Sandstorm - Level 24
  (449, 44900, 201, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hippopotas - Take Down - Level 28
  (449, 44900, 36, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Hippopotas - Roar - Level 32
  (449, 44900, 46, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hippopotas - Rest - Level 36
  (449, 44900, 156, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Hippopotas - Earthquake - Level 40
  (449, 44900, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hippopotas - Fissure - Level 48
  (449, 44900, 90, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Hippopotas - Slack Off - Level 52
  (449, 44900, 303, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Hippopotas - Water Pulse - TM03
  (449, 44900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Hippopotas - Roar - TM05
  (449, 44900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Hippopotas - Sunny Day - TM11
  (449, 44900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Hippopotas - Protect - TM17
  (449, 44900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Hippopotas - Iron Tail - TM23
  (449, 44900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 20),
  -- Hippopotas - Earthquake - TM26
  (449, 44900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 21),
  -- Hippopotas - Dig - TM28
  (449, 44900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Hippopotas - Double Team - TM32
  (449, 44900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Hippopotas - Sandstorm - TM37
  (449, 44900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 24),
  -- Hippopotas - Rock Tomb - TM39
  (449, 44900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Hippopotas - Facade - TM42
  (449, 44900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Hippopotas - Rest - TM44
  (449, 44900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Hippopotas - Attract - TM45
  (449, 44900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Hippopotas - Endure - TM58
  (449, 44900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Hippopotas - Stealth Rock - TM76
  (449, 44900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 30),
  -- Hippopotas - Rock Slide - TM80
  (449, 44900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 31),
  -- Hippopotas - Sleep Talk - TM82
  (449, 44900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Hippopotas - Bulldoze - TM83
  (449, 44900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 33),
  -- Hippopotas - Swagger - TM87
  (449, 44900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Hippopotas - Substitute - TM90
  (449, 44900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Hippopotas - Strength - TM96
  (449, 44900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 36),
  -- Hippopotas - Rock Smash - TM98
  (449, 44900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 37),
  -- Hippopotas - Body Slam - Egg
  (449, 44900, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Hippopotas - Curse - Egg
  (449, 44900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Hippopotas - Revenge - Egg
  (449, 44900, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hippopotas - Sand Tomb - Egg
  (449, 44900, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Hippopotas - Slack Off - Egg
  (449, 44900, 303, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hippopotas - Spit Up - Egg
  (449, 44900, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hippopotas - Stockpile - Egg
  (449, 44900, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hippopotas - Swallow - Egg
  (449, 44900, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hippopotas - Whirlwind - Egg
  (449, 44900, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hippowdon - Ice Fang - Starting Move
  (450, 45000, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Hippowdon - Fire Fang - Starting Move
  (450, 45000, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Hippowdon - Thunder Fang - Starting Move
  (450, 45000, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Hippowdon - Tackle - Starting Move
  (450, 45000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Hippowdon - Sand Attack - Starting Move
  (450, 45000, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Hippowdon - Bite - Starting Move
  (450, 45000, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Hippowdon - Yawn - Starting Move
  (450, 45000, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Hippowdon - Sand Tomb - Level 12
  (450, 45000, 328, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Hippowdon - Dig - Level 16
  (450, 45000, 91, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hippowdon - Crunch - Level 20
  (450, 45000, 242, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Hippowdon - Sandstorm - Level 24
  (450, 45000, 201, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Hippowdon - Take Down - Level 28
  (450, 45000, 36, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Hippowdon - Roar - Level 32
  (450, 45000, 46, 21, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Hippowdon - Rest - Level 38
  (450, 45000, 156, 21, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Hippowdon - Earthquake - Level 44
  (450, 45000, 89, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Hippowdon - Fissure - Level 56
  (450, 45000, 90, 21, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Hippowdon - Slack Off - Level 62
  (450, 45000, 303, 21, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Hippowdon - Water Pulse - TM03
  (450, 45000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Hippowdon - Roar - TM05
  (450, 45000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Hippowdon - Sunny Day - TM11
  (450, 45000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Hippowdon - Hyper Beam - TM15
  (450, 45000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Hippowdon - Protect - TM17
  (450, 45000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Hippowdon - Iron Tail - TM23
  (450, 45000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Hippowdon - Earthquake - TM26
  (450, 45000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Hippowdon - Dig - TM28
  (450, 45000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Hippowdon - Double Team - TM32
  (450, 45000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Hippowdon - Sandstorm - TM37
  (450, 45000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Hippowdon - Rock Tomb - TM39
  (450, 45000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Hippowdon - Facade - TM42
  (450, 45000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Hippowdon - Rest - TM44
  (450, 45000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Hippowdon - Attract - TM45
  (450, 45000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Hippowdon - Endure - TM58
  (450, 45000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Hippowdon - Giga Impact - TM68
  (450, 45000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 34),
  -- Hippowdon - Stone Edge - TM71
  (450, 45000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 35),
  -- Hippowdon - Stealth Rock - TM76
  (450, 45000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 36),
  -- Hippowdon - Rock Slide - TM80
  (450, 45000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 37),
  -- Hippowdon - Sleep Talk - TM82
  (450, 45000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Hippowdon - Bulldoze - TM83
  (450, 45000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 39),
  -- Hippowdon - Swagger - TM87
  (450, 45000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Hippowdon - Substitute - TM90
  (450, 45000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Hippowdon - Strength - TM96
  (450, 45000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Hippowdon - Rock Smash - TM98
  (450, 45000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Hippowdon - Body Slam - Egg
  (450, 45000, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hippowdon - Curse - Egg
  (450, 45000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hippowdon - Revenge - Egg
  (450, 45000, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hippowdon - Sand Tomb - Egg
  (450, 45000, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hippowdon - Slack Off - Egg
  (450, 45000, 303, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hippowdon - Spit Up - Egg
  (450, 45000, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hippowdon - Stockpile - Egg
  (450, 45000, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hippowdon - Swallow - Egg
  (450, 45000, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hippowdon - Whirlwind - Egg
  (450, 45000, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 52);
