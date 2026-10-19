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
-- Pokémon: #401-#450
-- Rows: 2879
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
  -- Kricketot - Growl - Level 1
  (401, 40100, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketot - Bide - Level 1
  (401, 40100, 117, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketot - Struggle Bug - Level 6
  (401, 40100, 522, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kricketot - Bug Bite - Level 16
  (401, 40100, 450, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kricketot - Bug Bite - Move Tutor
  (401, 40100, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 5),
  -- Kricketot - Endeavor - Move Tutor
  (401, 40100, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 6),
  -- Kricketot - Snore - Move Tutor
  (401, 40100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 7),
  -- Kricketot - Uproar - Move Tutor
  (401, 40100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 8),
  -- Kricketune - Growl - Level 1
  (402, 40200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketune - Bide - Level 1
  (402, 40200, 117, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketune - Fury Cutter - Level 10
  (402, 40200, 210, 12, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Kricketune - Leech Life - Level 14
  (402, 40200, 141, 12, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Kricketune - Sing - Level 18
  (402, 40200, 47, 12, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kricketune - Focus Energy - Level 22
  (402, 40200, 116, 12, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kricketune - Slash - Level 26
  (402, 40200, 163, 12, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kricketune - X-Scissor - Level 30
  (402, 40200, 404, 12, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kricketune - Screech - Level 34
  (402, 40200, 103, 12, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Kricketune - Taunt - Level 38
  (402, 40200, 269, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Kricketune - Night Slash - Level 42
  (402, 40200, 400, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Kricketune - Bug Buzz - Level 46
  (402, 40200, 405, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Kricketune - Perish Song - Level 50
  (402, 40200, 195, 12, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Kricketune - Hone Claws - TM01
  (402, 40200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Kricketune - Toxic - TM06
  (402, 40200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Kricketune - Hidden Power - TM10
  (402, 40200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Kricketune - Sunny Day - TM11
  (402, 40200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Kricketune - Taunt - TM12
  (402, 40200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Kricketune - Hyper Beam - TM15
  (402, 40200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Kricketune - Protect - TM17
  (402, 40200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Kricketune - Rain Dance - TM18
  (402, 40200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Kricketune - Frustration - TM21
  (402, 40200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Kricketune - Return - TM27
  (402, 40200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Kricketune - Brick Break - TM31
  (402, 40200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 24),
  -- Kricketune - Double Team - TM32
  (402, 40200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Kricketune - Aerial Ace - TM40
  (402, 40200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 26),
  -- Kricketune - Facade - TM42
  (402, 40200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Kricketune - Rest - TM44
  (402, 40200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Kricketune - Attract - TM45
  (402, 40200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Kricketune - Round - TM48
  (402, 40200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Kricketune - Echoed Voice - TM49
  (402, 40200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 31),
  -- Kricketune - False Swipe - TM54
  (402, 40200, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 32),
  -- Kricketune - Giga Impact - TM68
  (402, 40200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 33),
  -- Kricketune - Flash - TM70
  (402, 40200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 34),
  -- Kricketune - Swords Dance - TM75
  (402, 40200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 35),
  -- Kricketune - Struggle Bug - TM76
  (402, 40200, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 36),
  -- Kricketune - X-Scissor - TM81
  (402, 40200, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 37),
  -- Kricketune - Swagger - TM87
  (402, 40200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Kricketune - Substitute - TM90
  (402, 40200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Kricketune - Rock Smash - TM94
  (402, 40200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 40),
  -- Kricketune - Cut - HM01
  (402, 40200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 41),
  -- Kricketune - Strength - HM04
  (402, 40200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 42),
  -- Kricketune - Bug Bite - Move Tutor
  (402, 40200, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Kricketune - Endeavor - Move Tutor
  (402, 40200, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Kricketune - Heal Bell - Move Tutor
  (402, 40200, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Kricketune - Hyper Voice - Move Tutor
  (402, 40200, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Kricketune - Knock Off - Move Tutor
  (402, 40200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Kricketune - Snore - Move Tutor
  (402, 40200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Kricketune - Sleep Talk - Move Tutor
  (402, 40200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Kricketune - Uproar - Move Tutor
  (402, 40200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Shinx - Tackle - Level 1
  (403, 40300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Level 5
  (403, 40300, 43, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shinx - Charge - Level 9
  (403, 40300, 268, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shinx - Spark - Level 13
  (403, 40300, 209, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shinx - Bite - Level 17
  (403, 40300, 44, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Shinx - Roar - Level 21
  (403, 40300, 46, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Shinx - Swagger - Level 25
  (403, 40300, 207, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shinx - Thunder Fang - Level 29
  (403, 40300, 422, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shinx - Crunch - Level 33
  (403, 40300, 242, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shinx - Scary Face - Level 37
  (403, 40300, 184, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shinx - Discharge - Level 41
  (403, 40300, 435, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Shinx - Wild Charge - Level 45
  (403, 40300, 528, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shinx - Roar - TM05
  (403, 40300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 13),
  -- Shinx - Toxic - TM06
  (403, 40300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Shinx - Hidden Power - TM10
  (403, 40300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Shinx - Light Screen - TM16
  (403, 40300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 16),
  -- Shinx - Protect - TM17
  (403, 40300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Shinx - Rain Dance - TM18
  (403, 40300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Shinx - Frustration - TM21
  (403, 40300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Shinx - Thunderbolt - TM24
  (403, 40300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 20),
  -- Shinx - Thunder - TM25
  (403, 40300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 21),
  -- Shinx - Return - TM27
  (403, 40300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Shinx - Double Team - TM32
  (403, 40300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Shinx - Facade - TM42
  (403, 40300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Shinx - Rest - TM44
  (403, 40300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Shinx - Attract - TM45
  (403, 40300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 26),
  -- Shinx - Thief - TM46
  (403, 40300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 27),
  -- Shinx - Round - TM48
  (403, 40300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 28),
  -- Shinx - Charge Beam - TM57
  (403, 40300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 29),
  -- Shinx - Flash - TM70
  (403, 40300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 30),
  -- Shinx - Volt Switch - TM72
  (403, 40300, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 31),
  -- Shinx - Thunder Wave - TM73
  (403, 40300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 32),
  -- Shinx - Swagger - TM87
  (403, 40300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Shinx - Substitute - TM90
  (403, 40300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Shinx - Wild Charge - TM93
  (403, 40300, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 35),
  -- Shinx - Snarl - TM95
  (403, 40300, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 36),
  -- Shinx - Strength - HM04
  (403, 40300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 37),
  -- Shinx - Double Kick - Egg Move
  (403, 40300, 24, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shinx - Fire Fang - Egg Move
  (403, 40300, 424, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shinx - Helping Hand - Egg Move
  (403, 40300, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shinx - Howl - Egg Move
  (403, 40300, 336, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shinx - Ice Fang - Egg Move
  (403, 40300, 423, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shinx - Night Slash - Egg Move
  (403, 40300, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shinx - Quick Attack - Egg Move
  (403, 40300, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shinx - Shock Wave - Egg Move
  (403, 40300, 351, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shinx - Signal Beam - Egg Move
  (403, 40300, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shinx - Swift - Egg Move
  (403, 40300, 129, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shinx - Take Down - Egg Move
  (403, 40300, 36, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shinx - Thunder Fang - Egg Move
  (403, 40300, 422, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shinx - Iron Tail - Move Tutor
  (403, 40300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Shinx - Magnet Rise - Move Tutor
  (403, 40300, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Shinx - Signal Beam - Move Tutor
  (403, 40300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Shinx - Sleep Talk - Move Tutor
  (403, 40300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Shinx - Snore - Move Tutor
  (403, 40300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Luxio - Tackle - Level 1
  (404, 40400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Level 1
  (404, 40400, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxio - Leer - Level 5
  (404, 40400, 43, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Level 9
  (404, 40400, 268, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Luxio - Spark - Level 13
  (404, 40400, 209, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Luxio - Bite - Level 18
  (404, 40400, 44, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 23
  (404, 40400, 46, 12, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Luxio - Swagger - Level 28
  (404, 40400, 207, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Luxio - Thunder Fang - Level 33
  (404, 40400, 422, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxio - Crunch - Level 38
  (404, 40400, 242, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Luxio - Scary Face - Level 43
  (404, 40400, 184, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 48
  (404, 40400, 435, 12, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Luxio - Wild Charge - Level 53
  (404, 40400, 528, 12, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Luxio - Roar - TM05
  (404, 40400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 14),
  -- Luxio - Toxic - TM06
  (404, 40400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Luxio - Hidden Power - TM10
  (404, 40400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Luxio - Light Screen - TM16
  (404, 40400, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 17),
  -- Luxio - Protect - TM17
  (404, 40400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Luxio - Rain Dance - TM18
  (404, 40400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Luxio - Frustration - TM21
  (404, 40400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Luxio - Thunderbolt - TM24
  (404, 40400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 21),
  -- Luxio - Thunder - TM25
  (404, 40400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 22),
  -- Luxio - Return - TM27
  (404, 40400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Luxio - Double Team - TM32
  (404, 40400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Luxio - Facade - TM42
  (404, 40400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Luxio - Rest - TM44
  (404, 40400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Luxio - Attract - TM45
  (404, 40400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Luxio - Thief - TM46
  (404, 40400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 28),
  -- Luxio - Round - TM48
  (404, 40400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Luxio - Charge Beam - TM57
  (404, 40400, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 30),
  -- Luxio - Flash - TM70
  (404, 40400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 31),
  -- Luxio - Volt Switch - TM72
  (404, 40400, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 32),
  -- Luxio - Thunder Wave - TM73
  (404, 40400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 33),
  -- Luxio - Swagger - TM87
  (404, 40400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Luxio - Substitute - TM90
  (404, 40400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Luxio - Wild Charge - TM93
  (404, 40400, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 36),
  -- Luxio - Snarl - TM95
  (404, 40400, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 37),
  -- Luxio - Strength - HM04
  (404, 40400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 38),
  -- Luxio - Iron Tail - Move Tutor
  (404, 40400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Luxio - Magnet Rise - Move Tutor
  (404, 40400, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Luxio - Signal Beam - Move Tutor
  (404, 40400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Luxio - Sleep Talk - Move Tutor
  (404, 40400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Luxio - Snore - Move Tutor
  (404, 40400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Luxray - Tackle - Level 1
  (405, 40500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Leer - Level 1
  (405, 40500, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxray - Charge - Level 1
  (405, 40500, 268, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxray - Leer - Level 5
  (405, 40500, 43, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Luxray - Charge - Level 9
  (405, 40500, 268, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Luxray - Spark - Level 13
  (405, 40500, 209, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Luxray - Bite - Level 18
  (405, 40500, 44, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Luxray - Roar - Level 23
  (405, 40500, 46, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Luxray - Swagger - Level 28
  (405, 40500, 207, 12, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Luxray - Thunder Fang - Level 35
  (405, 40500, 422, 12, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Luxray - Crunch - Level 42
  (405, 40500, 242, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Luxray - Scary Face - Level 49
  (405, 40500, 184, 12, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Luxray - Discharge - Level 56
  (405, 40500, 435, 12, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Luxray - Wild Charge - Level 63
  (405, 40500, 528, 12, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Luxray - Roar - TM05
  (405, 40500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Luxray - Toxic - TM06
  (405, 40500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Luxray - Hidden Power - TM10
  (405, 40500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Luxray - Hyper Beam - TM15
  (405, 40500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Luxray - Light Screen - TM16
  (405, 40500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 19),
  -- Luxray - Protect - TM17
  (405, 40500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Luxray - Rain Dance - TM18
  (405, 40500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Luxray - Frustration - TM21
  (405, 40500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Luxray - Thunderbolt - TM24
  (405, 40500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Luxray - Thunder - TM25
  (405, 40500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Luxray - Return - TM27
  (405, 40500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Luxray - Double Team - TM32
  (405, 40500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Luxray - Facade - TM42
  (405, 40500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Luxray - Rest - TM44
  (405, 40500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Luxray - Attract - TM45
  (405, 40500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Luxray - Thief - TM46
  (405, 40500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Luxray - Round - TM48
  (405, 40500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Luxray - Charge Beam - TM57
  (405, 40500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 32),
  -- Luxray - Giga Impact - TM68
  (405, 40500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 33),
  -- Luxray - Flash - TM70
  (405, 40500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 34),
  -- Luxray - Volt Switch - TM72
  (405, 40500, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 35),
  -- Luxray - Thunder Wave - TM73
  (405, 40500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 36),
  -- Luxray - Swagger - TM87
  (405, 40500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Luxray - Substitute - TM90
  (405, 40500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Luxray - Wild Charge - TM93
  (405, 40500, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 39),
  -- Luxray - Snarl - TM95
  (405, 40500, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 40),
  -- Luxray - Strength - HM04
  (405, 40500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Luxray - Iron Tail - Move Tutor
  (405, 40500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Luxray - Magnet Rise - Move Tutor
  (405, 40500, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Luxray - Signal Beam - Move Tutor
  (405, 40500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Luxray - Sleep Talk - Move Tutor
  (405, 40500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Luxray - Snore - Move Tutor
  (405, 40500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Luxray - Superpower - Move Tutor
  (405, 40500, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Budew - Absorb - Level 1
  (406, 40600, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Growth - Level 4
  (406, 40600, 74, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Budew - Water Sport - Level 7
  (406, 40600, 346, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Budew - Stun Spore - Level 10
  (406, 40600, 78, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Budew - Mega Drain - Level 13
  (406, 40600, 72, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Budew - Worry Seed - Level 16
  (406, 40600, 388, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Budew - Toxic - TM06
  (406, 40600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 7),
  -- Budew - Venoshock - TM09
  (406, 40600, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 8),
  -- Budew - Hidden Power - TM10
  (406, 40600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 9),
  -- Budew - Sunny Day - TM11
  (406, 40600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 10),
  -- Budew - Protect - TM17
  (406, 40600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 11),
  -- Budew - Rain Dance - TM18
  (406, 40600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 12),
  -- Budew - Frustration - TM21
  (406, 40600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 13),
  -- Budew - Solar Beam - TM22
  (406, 40600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 14),
  -- Budew - Return - TM27
  (406, 40600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 15),
  -- Budew - Shadow Ball - TM30
  (406, 40600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 16),
  -- Budew - Double Team - TM32
  (406, 40600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 17),
  -- Budew - Sludge Bomb - TM36
  (406, 40600, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 18),
  -- Budew - Facade - TM42
  (406, 40600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 19),
  -- Budew - Rest - TM44
  (406, 40600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 20),
  -- Budew - Attract - TM45
  (406, 40600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 21),
  -- Budew - Round - TM48
  (406, 40600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 22),
  -- Budew - Energy Ball - TM53
  (406, 40600, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 23),
  -- Budew - Flash - TM70
  (406, 40600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 24),
  -- Budew - Swords Dance - TM75
  (406, 40600, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 25),
  -- Budew - Psych Up - TM77
  (406, 40600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 26),
  -- Budew - Grass Knot - TM86
  (406, 40600, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 27),
  -- Budew - Swagger - TM87
  (406, 40600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 28),
  -- Budew - Substitute - TM90
  (406, 40600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 29),
  -- Budew - Cut - HM01
  (406, 40600, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 30),
  -- Budew - Cotton Spore - Egg Move
  (406, 40600, 178, 12, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Budew - Extrasensory - Egg Move
  (406, 40600, 326, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Budew - Giga Drain - Egg Move
  (406, 40600, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Budew - Grass Whistle - Egg Move
  (406, 40600, 320, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Budew - Leaf Storm - Egg Move
  (406, 40600, 437, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Budew - Mind Reader - Egg Move
  (406, 40600, 170, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Budew - Natural Gift - Egg Move
  (406, 40600, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Budew - Pin Missile - Egg Move
  (406, 40600, 42, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Budew - Razor Leaf - Egg Move
  (406, 40600, 75, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Budew - Seed Bomb - Egg Move
  (406, 40600, 402, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Budew - Sleep Powder - Egg Move
  (406, 40600, 79, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Budew - Spikes - Egg Move
  (406, 40600, 191, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Budew - Synthesis - Egg Move
  (406, 40600, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Budew - Covet - Move Tutor
  (406, 40600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Budew - Giga Drain - Move Tutor
  (406, 40600, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Budew - Seed Bomb - Move Tutor
  (406, 40600, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Budew - Sleep Talk - Move Tutor
  (406, 40600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Budew - Snore - Move Tutor
  (406, 40600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Budew - Synthesis - Move Tutor
  (406, 40600, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Budew - Uproar - Move Tutor
  (406, 40600, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Budew - Worry Seed - Move Tutor
  (406, 40600, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Roserade - Weather Ball - Level 1
  (407, 40700, 311, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Poison Sting - Level 1
  (407, 40700, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roserade - Mega Drain - Level 1
  (407, 40700, 72, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roserade - Magical Leaf - Level 1
  (407, 40700, 345, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roserade - Sweet Scent - Level 1
  (407, 40700, 230, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Roserade - Toxic - TM06
  (407, 40700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 6),
  -- Roserade - Venoshock - TM09
  (407, 40700, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 7),
  -- Roserade - Hidden Power - TM10
  (407, 40700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 8),
  -- Roserade - Sunny Day - TM11
  (407, 40700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 9),
  -- Roserade - Hyper Beam - TM15
  (407, 40700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 10),
  -- Roserade - Protect - TM17
  (407, 40700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 11),
  -- Roserade - Rain Dance - TM18
  (407, 40700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 12),
  -- Roserade - Frustration - TM21
  (407, 40700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 13),
  -- Roserade - Solar Beam - TM22
  (407, 40700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 14),
  -- Roserade - Return - TM27
  (407, 40700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 15),
  -- Roserade - Shadow Ball - TM30
  (407, 40700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 16),
  -- Roserade - Double Team - TM32
  (407, 40700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 17),
  -- Roserade - Sludge Bomb - TM36
  (407, 40700, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 18),
  -- Roserade - Facade - TM42
  (407, 40700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 19),
  -- Roserade - Rest - TM44
  (407, 40700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 20),
  -- Roserade - Attract - TM45
  (407, 40700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 21),
  -- Roserade - Round - TM48
  (407, 40700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 22),
  -- Roserade - Energy Ball - TM53
  (407, 40700, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 23),
  -- Roserade - Giga Impact - TM68
  (407, 40700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 24),
  -- Roserade - Flash - TM70
  (407, 40700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 25),
  -- Roserade - Swords Dance - TM75
  (407, 40700, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 26),
  -- Roserade - Psych Up - TM77
  (407, 40700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 27),
  -- Roserade - Poison Jab - TM84
  (407, 40700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 28),
  -- Roserade - Grass Knot - TM86
  (407, 40700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 29),
  -- Roserade - Swagger - TM87
  (407, 40700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 30),
  -- Roserade - Substitute - TM90
  (407, 40700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 31),
  -- Roserade - Cut - HM01
  (407, 40700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 32),
  -- Roserade - Covet - Move Tutor
  (407, 40700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 33),
  -- Roserade - Giga Drain - Move Tutor
  (407, 40700, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 34),
  -- Roserade - Seed Bomb - Move Tutor
  (407, 40700, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 35),
  -- Roserade - Sleep Talk - Move Tutor
  (407, 40700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 36),
  -- Roserade - Snore - Move Tutor
  (407, 40700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Roserade - Synthesis - Move Tutor
  (407, 40700, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Roserade - Worry Seed - Move Tutor
  (407, 40700, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Cranidos - Headbutt - Level 1
  (408, 40800, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cranidos - Leer - Level 1
  (408, 40800, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cranidos - Focus Energy - Level 6
  (408, 40800, 116, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cranidos - Pursuit - Level 10
  (408, 40800, 228, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cranidos - Take Down - Level 15
  (408, 40800, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cranidos - Scary Face - Level 19
  (408, 40800, 184, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cranidos - Assurance - Level 24
  (408, 40800, 372, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cranidos - Chip Away - Level 28
  (408, 40800, 498, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cranidos - Ancient Power - Level 33
  (408, 40800, 246, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cranidos - Zen Headbutt - Level 37
  (408, 40800, 428, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cranidos - Screech - Level 42
  (408, 40800, 103, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cranidos - Head Smash - Level 46
  (408, 40800, 457, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cranidos - Roar - TM05
  (408, 40800, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 13),
  -- Cranidos - Toxic - TM06
  (408, 40800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Cranidos - Hidden Power - TM10
  (408, 40800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Cranidos - Sunny Day - TM11
  (408, 40800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Cranidos - Ice Beam - TM13
  (408, 40800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Cranidos - Blizzard - TM14
  (408, 40800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Cranidos - Protect - TM17
  (408, 40800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Cranidos - Rain Dance - TM18
  (408, 40800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Cranidos - Frustration - TM21
  (408, 40800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Cranidos - Smack Down - TM23
  (408, 40800, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 22),
  -- Cranidos - Thunderbolt - TM24
  (408, 40800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Cranidos - Thunder - TM25
  (408, 40800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Cranidos - Earthquake - TM26
  (408, 40800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Cranidos - Return - TM27
  (408, 40800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Cranidos - Dig - TM28
  (408, 40800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Cranidos - Double Team - TM32
  (408, 40800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Cranidos - Flamethrower - TM35
  (408, 40800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 29),
  -- Cranidos - Sandstorm - TM37
  (408, 40800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 30),
  -- Cranidos - Fire Blast - TM38
  (408, 40800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 31),
  -- Cranidos - Rock Tomb - TM39
  (408, 40800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 32),
  -- Cranidos - Facade - TM42
  (408, 40800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Cranidos - Rest - TM44
  (408, 40800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Cranidos - Attract - TM45
  (408, 40800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Cranidos - Thief - TM46
  (408, 40800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Cranidos - Round - TM48
  (408, 40800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Cranidos - Fling - TM56
  (408, 40800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Cranidos - Incinerate - TM59
  (408, 40800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 39),
  -- Cranidos - Payback - TM66
  (408, 40800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Cranidos - Rock Polish - TM69
  (408, 40800, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 41),
  -- Cranidos - Stone Edge - TM71
  (408, 40800, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 42),
  -- Cranidos - Swords Dance - TM75
  (408, 40800, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 43),
  -- Cranidos - Bulldoze - TM78
  (408, 40800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Cranidos - Rock Slide - TM80
  (408, 40800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Cranidos - Swagger - TM87
  (408, 40800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Cranidos - Substitute - TM90
  (408, 40800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Cranidos - Rock Smash - TM94
  (408, 40800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Cranidos - Strength - HM04
  (408, 40800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Cranidos - Crunch - Egg Move
  (408, 40800, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cranidos - Curse - Egg Move
  (408, 40800, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cranidos - Double-Edge - Egg Move
  (408, 40800, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cranidos - Hammer Arm - Egg Move
  (408, 40800, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cranidos - Iron Head - Egg Move
  (408, 40800, 442, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cranidos - Iron Tail - Egg Move
  (408, 40800, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cranidos - Leer - Egg Move
  (408, 40800, 43, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cranidos - Slam - Egg Move
  (408, 40800, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cranidos - Stomp - Egg Move
  (408, 40800, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cranidos - Thrash - Egg Move
  (408, 40800, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cranidos - Whirlwind - Egg Move
  (408, 40800, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cranidos - Dragon Pulse - Move Tutor
  (408, 40800, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Cranidos - Earth Power - Move Tutor
  (408, 40800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Cranidos - Endeavor - Move Tutor
  (408, 40800, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Cranidos - Fire Punch - Move Tutor
  (408, 40800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Cranidos - Iron Head - Move Tutor
  (408, 40800, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Cranidos - Iron Tail - Move Tutor
  (408, 40800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Cranidos - Sleep Talk - Move Tutor
  (408, 40800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Cranidos - Snore - Move Tutor
  (408, 40800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Cranidos - Spite - Move Tutor
  (408, 40800, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Cranidos - Stealth Rock - Move Tutor
  (408, 40800, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Cranidos - Superpower - Move Tutor
  (408, 40800, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Cranidos - Thunder Punch - Move Tutor
  (408, 40800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Cranidos - Uproar - Move Tutor
  (408, 40800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Cranidos - Zen Headbutt - Move Tutor
  (408, 40800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Rampardos - Headbutt - Level 1
  (409, 40900, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rampardos - Leer - Level 1
  (409, 40900, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rampardos - Focus Energy - Level 6
  (409, 40900, 116, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rampardos - Pursuit - Level 10
  (409, 40900, 228, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rampardos - Take Down - Level 15
  (409, 40900, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rampardos - Scary Face - Level 19
  (409, 40900, 184, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rampardos - Assurance - Level 24
  (409, 40900, 372, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rampardos - Chip Away - Level 28
  (409, 40900, 498, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Rampardos - Endeavor - Level 30
  (409, 40900, 283, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rampardos - Ancient Power - Level 36
  (409, 40900, 246, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rampardos - Zen Headbutt - Level 43
  (409, 40900, 428, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rampardos - Screech - Level 51
  (409, 40900, 103, 12, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Rampardos - Head Smash - Level 58
  (409, 40900, 457, 12, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Rampardos - Roar - TM05
  (409, 40900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 14),
  -- Rampardos - Toxic - TM06
  (409, 40900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rampardos - Hidden Power - TM10
  (409, 40900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rampardos - Sunny Day - TM11
  (409, 40900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rampardos - Ice Beam - TM13
  (409, 40900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Rampardos - Blizzard - TM14
  (409, 40900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Rampardos - Hyper Beam - TM15
  (409, 40900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Rampardos - Protect - TM17
  (409, 40900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Rampardos - Rain Dance - TM18
  (409, 40900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Rampardos - Frustration - TM21
  (409, 40900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Rampardos - Smack Down - TM23
  (409, 40900, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 24),
  -- Rampardos - Thunderbolt - TM24
  (409, 40900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Rampardos - Thunder - TM25
  (409, 40900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 26),
  -- Rampardos - Earthquake - TM26
  (409, 40900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Rampardos - Return - TM27
  (409, 40900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Rampardos - Dig - TM28
  (409, 40900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 29),
  -- Rampardos - Brick Break - TM31
  (409, 40900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 30),
  -- Rampardos - Double Team - TM32
  (409, 40900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Rampardos - Flamethrower - TM35
  (409, 40900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 32),
  -- Rampardos - Sandstorm - TM37
  (409, 40900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 33),
  -- Rampardos - Fire Blast - TM38
  (409, 40900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 34),
  -- Rampardos - Rock Tomb - TM39
  (409, 40900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Rampardos - Facade - TM42
  (409, 40900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Rampardos - Rest - TM44
  (409, 40900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Rampardos - Attract - TM45
  (409, 40900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Rampardos - Thief - TM46
  (409, 40900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Rampardos - Round - TM48
  (409, 40900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Rampardos - Focus Blast - TM52
  (409, 40900, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 41),
  -- Rampardos - Fling - TM56
  (409, 40900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Rampardos - Incinerate - TM59
  (409, 40900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Rampardos - Payback - TM66
  (409, 40900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 44),
  -- Rampardos - Giga Impact - TM68
  (409, 40900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Rampardos - Rock Polish - TM69
  (409, 40900, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 46),
  -- Rampardos - Stone Edge - TM71
  (409, 40900, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 47),
  -- Rampardos - Swords Dance - TM75
  (409, 40900, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 48),
  -- Rampardos - Bulldoze - TM78
  (409, 40900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Rampardos - Rock Slide - TM80
  (409, 40900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 50),
  -- Rampardos - Dragon Tail - TM82
  (409, 40900, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 51),
  -- Rampardos - Swagger - TM87
  (409, 40900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Rampardos - Substitute - TM90
  (409, 40900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Rampardos - Rock Smash - TM94
  (409, 40900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Rampardos - Cut - HM01
  (409, 40900, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 55),
  -- Rampardos - Surf - HM03
  (409, 40900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 56),
  -- Rampardos - Strength - HM04
  (409, 40900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 57),
  -- Rampardos - Dragon Pulse - Move Tutor
  (409, 40900, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Rampardos - Earth Power - Move Tutor
  (409, 40900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Rampardos - Endeavor - Move Tutor
  (409, 40900, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Rampardos - Fire Punch - Move Tutor
  (409, 40900, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Rampardos - Iron Head - Move Tutor
  (409, 40900, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Rampardos - Iron Tail - Move Tutor
  (409, 40900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Rampardos - Outrage - Move Tutor
  (409, 40900, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Rampardos - Pain Split - Move Tutor
  (409, 40900, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Rampardos - Sleep Talk - Move Tutor
  (409, 40900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Rampardos - Snore - Move Tutor
  (409, 40900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Rampardos - Spite - Move Tutor
  (409, 40900, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Rampardos - Stealth Rock - Move Tutor
  (409, 40900, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Rampardos - Superpower - Move Tutor
  (409, 40900, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Rampardos - Thunder Punch - Move Tutor
  (409, 40900, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Rampardos - Uproar - Move Tutor
  (409, 40900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Rampardos - Zen Headbutt - Move Tutor
  (409, 40900, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Shieldon - Tackle - Level 1
  (410, 41000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shieldon - Protect - Level 1
  (410, 41000, 182, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shieldon - Taunt - Level 6
  (410, 41000, 269, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Shieldon - Metal Sound - Level 10
  (410, 41000, 319, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shieldon - Take Down - Level 15
  (410, 41000, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shieldon - Iron Defense - Level 19
  (410, 41000, 334, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shieldon - Swagger - Level 24
  (410, 41000, 207, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Shieldon - Ancient Power - Level 28
  (410, 41000, 246, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shieldon - Endure - Level 33
  (410, 41000, 203, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shieldon - Metal Burst - Level 37
  (410, 41000, 368, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shieldon - Iron Head - Level 42
  (410, 41000, 442, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Shieldon - Heavy Slam - Level 46
  (410, 41000, 484, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Shieldon - Roar - TM05
  (410, 41000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 13),
  -- Shieldon - Toxic - TM06
  (410, 41000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Shieldon - Hidden Power - TM10
  (410, 41000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Shieldon - Sunny Day - TM11
  (410, 41000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Shieldon - Taunt - TM12
  (410, 41000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 17),
  -- Shieldon - Ice Beam - TM13
  (410, 41000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Shieldon - Blizzard - TM14
  (410, 41000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Shieldon - Protect - TM17
  (410, 41000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Shieldon - Rain Dance - TM18
  (410, 41000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Shieldon - Frustration - TM21
  (410, 41000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Shieldon - Smack Down - TM23
  (410, 41000, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 23),
  -- Shieldon - Thunderbolt - TM24
  (410, 41000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Shieldon - Thunder - TM25
  (410, 41000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Shieldon - Earthquake - TM26
  (410, 41000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Shieldon - Return - TM27
  (410, 41000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Shieldon - Dig - TM28
  (410, 41000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Shieldon - Double Team - TM32
  (410, 41000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Shieldon - Flamethrower - TM35
  (410, 41000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 30),
  -- Shieldon - Sandstorm - TM37
  (410, 41000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Shieldon - Fire Blast - TM38
  (410, 41000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Shieldon - Rock Tomb - TM39
  (410, 41000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Shieldon - Torment - TM41
  (410, 41000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Shieldon - Facade - TM42
  (410, 41000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Shieldon - Rest - TM44
  (410, 41000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Shieldon - Attract - TM45
  (410, 41000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Shieldon - Round - TM48
  (410, 41000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Shieldon - Incinerate - TM59
  (410, 41000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 39),
  -- Shieldon - Rock Polish - TM69
  (410, 41000, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 40),
  -- Shieldon - Stone Edge - TM71
  (410, 41000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 41),
  -- Shieldon - Bulldoze - TM78
  (410, 41000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 42),
  -- Shieldon - Rock Slide - TM80
  (410, 41000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 43),
  -- Shieldon - Swagger - TM87
  (410, 41000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Shieldon - Substitute - TM90
  (410, 41000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Shieldon - Flash Cannon - TM91
  (410, 41000, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 46),
  -- Shieldon - Rock Smash - TM94
  (410, 41000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 47),
  -- Shieldon - Strength - HM04
  (410, 41000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 48),
  -- Shieldon - Body Slam - Egg Move
  (410, 41000, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shieldon - Counter - Egg Move
  (410, 41000, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shieldon - Curse - Egg Move
  (410, 41000, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shieldon - Double-Edge - Egg Move
  (410, 41000, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shieldon - Fissure - Egg Move
  (410, 41000, 90, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shieldon - Focus Energy - Egg Move
  (410, 41000, 116, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shieldon - Headbutt - Egg Move
  (410, 41000, 29, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shieldon - Rock Blast - Egg Move
  (410, 41000, 350, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shieldon - Scary Face - Egg Move
  (410, 41000, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shieldon - Screech - Egg Move
  (410, 41000, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shieldon - Stealth Rock - Egg Move
  (410, 41000, 446, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shieldon - Wide Guard - Egg Move
  (410, 41000, 469, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Shieldon - Earth Power - Move Tutor
  (410, 41000, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Shieldon - Iron Defense - Move Tutor
  (410, 41000, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Shieldon - Iron Head - Move Tutor
  (410, 41000, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Shieldon - Iron Tail - Move Tutor
  (410, 41000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Shieldon - Magnet Rise - Move Tutor
  (410, 41000, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Shieldon - Sleep Talk - Move Tutor
  (410, 41000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Shieldon - Snore - Move Tutor
  (410, 41000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Shieldon - Stealth Rock - Move Tutor
  (410, 41000, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Bastiodon - Tackle - Level 1
  (411, 41100, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bastiodon - Protect - Level 1
  (411, 41100, 182, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bastiodon - Taunt - Level 1
  (411, 41100, 269, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bastiodon - Metal Sound - Level 1
  (411, 41100, 319, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bastiodon - Taunt - Level 6
  (411, 41100, 269, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bastiodon - Metal Sound - Level 10
  (411, 41100, 319, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Bastiodon - Take Down - Level 15
  (411, 41100, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bastiodon - Iron Defense - Level 19
  (411, 41100, 334, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Bastiodon - Swagger - Level 24
  (411, 41100, 207, 12, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Bastiodon - Ancient Power - Level 28
  (411, 41100, 246, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Bastiodon - Block - Level 30
  (411, 41100, 335, 12, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Bastiodon - Endure - Level 36
  (411, 41100, 203, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bastiodon - Metal Burst - Level 43
  (411, 41100, 368, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Bastiodon - Iron Head - Level 51
  (411, 41100, 442, 12, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Bastiodon - Heavy Slam - Level 58
  (411, 41100, 484, 12, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Bastiodon - Roar - TM05
  (411, 41100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 16),
  -- Bastiodon - Toxic - TM06
  (411, 41100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Bastiodon - Hidden Power - TM10
  (411, 41100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Bastiodon - Sunny Day - TM11
  (411, 41100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Bastiodon - Taunt - TM12
  (411, 41100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Bastiodon - Ice Beam - TM13
  (411, 41100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Bastiodon - Blizzard - TM14
  (411, 41100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Bastiodon - Hyper Beam - TM15
  (411, 41100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Bastiodon - Protect - TM17
  (411, 41100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Bastiodon - Rain Dance - TM18
  (411, 41100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Bastiodon - Frustration - TM21
  (411, 41100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Bastiodon - Smack Down - TM23
  (411, 41100, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 27),
  -- Bastiodon - Thunderbolt - TM24
  (411, 41100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 28),
  -- Bastiodon - Thunder - TM25
  (411, 41100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 29),
  -- Bastiodon - Earthquake - TM26
  (411, 41100, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Bastiodon - Return - TM27
  (411, 41100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Bastiodon - Dig - TM28
  (411, 41100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 32),
  -- Bastiodon - Double Team - TM32
  (411, 41100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Bastiodon - Flamethrower - TM35
  (411, 41100, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 34),
  -- Bastiodon - Sandstorm - TM37
  (411, 41100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 35),
  -- Bastiodon - Fire Blast - TM38
  (411, 41100, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 36),
  -- Bastiodon - Rock Tomb - TM39
  (411, 41100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Bastiodon - Torment - TM41
  (411, 41100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 38),
  -- Bastiodon - Facade - TM42
  (411, 41100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Bastiodon - Rest - TM44
  (411, 41100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Bastiodon - Attract - TM45
  (411, 41100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Bastiodon - Round - TM48
  (411, 41100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Bastiodon - Incinerate - TM59
  (411, 41100, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Bastiodon - Giga Impact - TM68
  (411, 41100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Bastiodon - Rock Polish - TM69
  (411, 41100, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 45),
  -- Bastiodon - Stone Edge - TM71
  (411, 41100, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 46),
  -- Bastiodon - Bulldoze - TM78
  (411, 41100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 47),
  -- Bastiodon - Rock Slide - TM80
  (411, 41100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Bastiodon - Swagger - TM87
  (411, 41100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Bastiodon - Substitute - TM90
  (411, 41100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Bastiodon - Flash Cannon - TM91
  (411, 41100, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 51),
  -- Bastiodon - Rock Smash - TM94
  (411, 41100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 52),
  -- Bastiodon - Strength - HM04
  (411, 41100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 53),
  -- Bastiodon - Block - Move Tutor
  (411, 41100, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Bastiodon - Earth Power - Move Tutor
  (411, 41100, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Bastiodon - Iron Defense - Move Tutor
  (411, 41100, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Bastiodon - Iron Head - Move Tutor
  (411, 41100, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Bastiodon - Iron Tail - Move Tutor
  (411, 41100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Bastiodon - Magic Coat - Move Tutor
  (411, 41100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Bastiodon - Magnet Rise - Move Tutor
  (411, 41100, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Bastiodon - Outrage - Move Tutor
  (411, 41100, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Bastiodon - Sleep Talk - Move Tutor
  (411, 41100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Bastiodon - Snore - Move Tutor
  (411, 41100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Bastiodon - Stealth Rock - Move Tutor
  (411, 41100, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Burmy - Protect - Level 1
  (412, 41200, 182, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Burmy - Tackle - Level 10
  (412, 41200, 33, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Burmy - Bug Bite - Level 15
  (412, 41200, 450, 12, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Burmy - Hidden Power - Level 20
  (412, 41200, 237, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Burmy - Bug Bite - Move Tutor
  (412, 41200, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 5),
  -- Burmy - Electroweb - Move Tutor
  (412, 41200, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 6),
  -- Burmy - Snore - Move Tutor
  (412, 41200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 7),
  -- Wormadam - Tackle - Level 1
  (413, 41300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam - Protect - Level 10
  (413, 41300, 182, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam - Bug Bite - Level 15
  (413, 41300, 450, 12, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam - Hidden Power - Level 20
  (413, 41300, 237, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam - Confusion - Level 23
  (413, 41300, 93, 12, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam - Razor Leaf - Level 26
  (413, 41300, 75, 12, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam - Growth - Level 29
  (413, 41300, 74, 12, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam - Psybeam - Level 32
  (413, 41300, 60, 12, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam - Captivate - Level 35
  (413, 41300, 445, 12, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam - Flail - Level 38
  (413, 41300, 175, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam - Attract - Level 41
  (413, 41300, 213, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam - Psychic - Level 44
  (413, 41300, 94, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam - Leaf Storm - Level 47
  (413, 41300, 437, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam - Toxic - TM06
  (413, 41300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Wormadam - Venoshock - TM09
  (413, 41300, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 15),
  -- Wormadam - Hidden Power - TM10
  (413, 41300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Wormadam - Sunny Day - TM11
  (413, 41300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Wormadam - Hyper Beam - TM15
  (413, 41300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Wormadam - Protect - TM17
  (413, 41300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Wormadam - Rain Dance - TM18
  (413, 41300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Wormadam - Safeguard - TM20
  (413, 41300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 21),
  -- Wormadam - Frustration - TM21
  (413, 41300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Wormadam - Solar Beam - TM22
  (413, 41300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 23),
  -- Wormadam - Return - TM27
  (413, 41300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Wormadam - Psychic - TM29
  (413, 41300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 25),
  -- Wormadam - Shadow Ball - TM30
  (413, 41300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Wormadam - Double Team - TM32
  (413, 41300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Wormadam - Facade - TM42
  (413, 41300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Wormadam - Rest - TM44
  (413, 41300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Wormadam - Attract - TM45
  (413, 41300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Wormadam - Thief - TM46
  (413, 41300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Wormadam - Round - TM48
  (413, 41300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Wormadam - Energy Ball - TM53
  (413, 41300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 33),
  -- Wormadam - Giga Impact - TM68
  (413, 41300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 34),
  -- Wormadam - Flash - TM70
  (413, 41300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Wormadam - Struggle Bug - TM76
  (413, 41300, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 36),
  -- Wormadam - Psych Up - TM77
  (413, 41300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 37),
  -- Wormadam - Dream Eater - TM85
  (413, 41300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 38),
  -- Wormadam - Grass Knot - TM86
  (413, 41300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 39),
  -- Wormadam - Swagger - TM87
  (413, 41300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Wormadam - Substitute - TM90
  (413, 41300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Wormadam - Bug Bite - Move Tutor
  (413, 41300, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Wormadam - Electroweb - Move Tutor
  (413, 41300, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Wormadam - Endeavor - Move Tutor
  (413, 41300, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Wormadam - Giga Drain - Move Tutor
  (413, 41300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Wormadam - Seed Bomb - Move Tutor
  (413, 41300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Wormadam - Signal Beam - Move Tutor
  (413, 41300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Wormadam - Skill Swap - Move Tutor
  (413, 41300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Wormadam - Sleep Talk - Move Tutor
  (413, 41300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Wormadam - Snore - Move Tutor
  (413, 41300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Wormadam - Synthesis - Move Tutor
  (413, 41300, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Wormadam - Uproar - Move Tutor
  (413, 41300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Wormadam - Worry Seed - Move Tutor
  (413, 41300, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Mothim - Tackle - Level 1
  (414, 41400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mothim - Protect - Level 10
  (414, 41400, 182, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Mothim - Bug Bite - Level 15
  (414, 41400, 450, 12, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Mothim - Hidden Power - Level 20
  (414, 41400, 237, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mothim - Confusion - Level 23
  (414, 41400, 93, 12, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Mothim - Gust - Level 26
  (414, 41400, 16, 12, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mothim - Poison Powder - Level 29
  (414, 41400, 77, 12, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Mothim - Psybeam - Level 32
  (414, 41400, 60, 12, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Mothim - Camouflage - Level 35
  (414, 41400, 293, 12, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mothim - Silver Wind - Level 38
  (414, 41400, 318, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Mothim - Air Slash - Level 41
  (414, 41400, 403, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mothim - Psychic - Level 44
  (414, 41400, 94, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Mothim - Bug Buzz - Level 47
  (414, 41400, 405, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Mothim - Quiver Dance - Level 50
  (414, 41400, 483, 12, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Mothim - Toxic - TM06
  (414, 41400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Mothim - Venoshock - TM09
  (414, 41400, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 16),
  -- Mothim - Hidden Power - TM10
  (414, 41400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Mothim - Sunny Day - TM11
  (414, 41400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Mothim - Hyper Beam - TM15
  (414, 41400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Mothim - Protect - TM17
  (414, 41400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Mothim - Rain Dance - TM18
  (414, 41400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Mothim - Safeguard - TM20
  (414, 41400, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 22),
  -- Mothim - Frustration - TM21
  (414, 41400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Mothim - Solar Beam - TM22
  (414, 41400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Mothim - Return - TM27
  (414, 41400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Mothim - Psychic - TM29
  (414, 41400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 26),
  -- Mothim - Shadow Ball - TM30
  (414, 41400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 27),
  -- Mothim - Double Team - TM32
  (414, 41400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Mothim - Aerial Ace - TM40
  (414, 41400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 29),
  -- Mothim - Facade - TM42
  (414, 41400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Mothim - Rest - TM44
  (414, 41400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Mothim - Attract - TM45
  (414, 41400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Mothim - Thief - TM46
  (414, 41400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Mothim - Round - TM48
  (414, 41400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Mothim - Energy Ball - TM53
  (414, 41400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 35),
  -- Mothim - Acrobatics - TM62
  (414, 41400, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 36),
  -- Mothim - Giga Impact - TM68
  (414, 41400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 37),
  -- Mothim - Flash - TM70
  (414, 41400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 38),
  -- Mothim - Struggle Bug - TM76
  (414, 41400, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 39),
  -- Mothim - Psych Up - TM77
  (414, 41400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 40),
  -- Mothim - Dream Eater - TM85
  (414, 41400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 41),
  -- Mothim - Swagger - TM87
  (414, 41400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Mothim - U-turn - TM89
  (414, 41400, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 43),
  -- Mothim - Substitute - TM90
  (414, 41400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Mothim - Bug Bite - Move Tutor
  (414, 41400, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Mothim - Electroweb - Move Tutor
  (414, 41400, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Mothim - Giga Drain - Move Tutor
  (414, 41400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Mothim - Roost - Move Tutor
  (414, 41400, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Mothim - Signal Beam - Move Tutor
  (414, 41400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Mothim - Skill Swap - Move Tutor
  (414, 41400, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Mothim - Sleep Talk - Move Tutor
  (414, 41400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Mothim - Snore - Move Tutor
  (414, 41400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mothim - Tailwind - Move Tutor
  (414, 41400, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Combee - Sweet Scent - Level 1
  (415, 41500, 230, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Gust - Level 1
  (415, 41500, 16, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combee - Bug Bite - Level 13
  (415, 41500, 450, 12, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Combee - Bug Buzz - Level 29
  (415, 41500, 405, 12, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Combee - Bug Bite - Move Tutor
  (415, 41500, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 5),
  -- Combee - Endeavor - Move Tutor
  (415, 41500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 6),
  -- Combee - Snore - Move Tutor
  (415, 41500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 7),
  -- Combee - Tailwind - Move Tutor
  (415, 41500, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 8),
  -- Vespiquen - Sweet Scent - Level 1
  (416, 41600, 230, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vespiquen - Poison Sting - Level 1
  (416, 41600, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vespiquen - Confuse Ray - Level 1
  (416, 41600, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vespiquen - Fury Cutter - Level 5
  (416, 41600, 210, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Vespiquen - Pursuit - Level 9
  (416, 41600, 228, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Vespiquen - Fury Swipes - Level 13
  (416, 41600, 154, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Vespiquen - Defend Order - Level 17
  (416, 41600, 455, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Vespiquen - Slash - Level 21
  (416, 41600, 163, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Vespiquen - Power Gem - Level 25
  (416, 41600, 408, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Vespiquen - Heal Order - Level 29
  (416, 41600, 456, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Vespiquen - Toxic - Level 33
  (416, 41600, 92, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Vespiquen - Air Slash - Level 37
  (416, 41600, 403, 12, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Vespiquen - Captivate - Level 41
  (416, 41600, 445, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Vespiquen - Attack Order - Level 45
  (416, 41600, 454, 12, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Vespiquen - Swagger - Level 49
  (416, 41600, 207, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Vespiquen - Destiny Bond - Level 53
  (416, 41600, 194, 12, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Vespiquen - Hone Claws - TM01
  (416, 41600, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Vespiquen - Toxic - TM06
  (416, 41600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Vespiquen - Venoshock - TM09
  (416, 41600, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 20),
  -- Vespiquen - Hidden Power - TM10
  (416, 41600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Vespiquen - Sunny Day - TM11
  (416, 41600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Vespiquen - Hyper Beam - TM15
  (416, 41600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Vespiquen - Protect - TM17
  (416, 41600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Vespiquen - Rain Dance - TM18
  (416, 41600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Vespiquen - Frustration - TM21
  (416, 41600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Vespiquen - Return - TM27
  (416, 41600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Vespiquen - Double Team - TM32
  (416, 41600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Vespiquen - Sludge Bomb - TM36
  (416, 41600, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 29),
  -- Vespiquen - Aerial Ace - TM40
  (416, 41600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Vespiquen - Facade - TM42
  (416, 41600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Vespiquen - Rest - TM44
  (416, 41600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Vespiquen - Attract - TM45
  (416, 41600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Vespiquen - Thief - TM46
  (416, 41600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Vespiquen - Round - TM48
  (416, 41600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Vespiquen - Fling - TM56
  (416, 41600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Vespiquen - Quash - TM60
  (416, 41600, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 37),
  -- Vespiquen - Acrobatics - TM62
  (416, 41600, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 38),
  -- Vespiquen - Giga Impact - TM68
  (416, 41600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Vespiquen - Flash - TM70
  (416, 41600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 40),
  -- Vespiquen - Struggle Bug - TM76
  (416, 41600, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 41),
  -- Vespiquen - X-Scissor - TM81
  (416, 41600, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 42),
  -- Vespiquen - Swagger - TM87
  (416, 41600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Vespiquen - U-turn - TM89
  (416, 41600, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 44),
  -- Vespiquen - Substitute - TM90
  (416, 41600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Vespiquen - Cut - HM01
  (416, 41600, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Vespiquen - Bug Bite - Move Tutor
  (416, 41600, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Vespiquen - Endeavor - Move Tutor
  (416, 41600, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Vespiquen - Roost - Move Tutor
  (416, 41600, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Vespiquen - Signal Beam - Move Tutor
  (416, 41600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Vespiquen - Sleep Talk - Move Tutor
  (416, 41600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Vespiquen - Snore - Move Tutor
  (416, 41600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Vespiquen - Tailwind - Move Tutor
  (416, 41600, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Pachirisu - Growl - Level 1
  (417, 41700, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pachirisu - Bide - Level 1
  (417, 41700, 117, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pachirisu - Quick Attack - Level 5
  (417, 41700, 98, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pachirisu - Charm - Level 9
  (417, 41700, 204, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pachirisu - Spark - Level 13
  (417, 41700, 209, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pachirisu - Endure - Level 17
  (417, 41700, 203, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pachirisu - Swift - Level 21
  (417, 41700, 129, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Pachirisu - Electro Ball - Level 25
  (417, 41700, 486, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Pachirisu - Sweet Kiss - Level 29
  (417, 41700, 186, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Pachirisu - Thunder Wave - Level 33
  (417, 41700, 86, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Pachirisu - Super Fang - Level 37
  (417, 41700, 162, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Pachirisu - Discharge - Level 41
  (417, 41700, 435, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Pachirisu - Last Resort - Level 45
  (417, 41700, 387, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Pachirisu - Hyper Fang - Level 49
  (417, 41700, 158, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Pachirisu - Toxic - TM06
  (417, 41700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Pachirisu - Hidden Power - TM10
  (417, 41700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Pachirisu - Light Screen - TM16
  (417, 41700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 17),
  -- Pachirisu - Protect - TM17
  (417, 41700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Pachirisu - Rain Dance - TM18
  (417, 41700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Pachirisu - Frustration - TM21
  (417, 41700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Pachirisu - Thunderbolt - TM24
  (417, 41700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 21),
  -- Pachirisu - Thunder - TM25
  (417, 41700, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 22),
  -- Pachirisu - Return - TM27
  (417, 41700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Pachirisu - Dig - TM28
  (417, 41700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Pachirisu - Double Team - TM32
  (417, 41700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Pachirisu - Facade - TM42
  (417, 41700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Pachirisu - Rest - TM44
  (417, 41700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Pachirisu - Attract - TM45
  (417, 41700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Pachirisu - Round - TM48
  (417, 41700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Pachirisu - Echoed Voice - TM49
  (417, 41700, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Pachirisu - Fling - TM56
  (417, 41700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 31),
  -- Pachirisu - Charge Beam - TM57
  (417, 41700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 32),
  -- Pachirisu - Flash - TM70
  (417, 41700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 33),
  -- Pachirisu - Volt Switch - TM72
  (417, 41700, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 34),
  -- Pachirisu - Thunder Wave - TM73
  (417, 41700, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 35),
  -- Pachirisu - Grass Knot - TM86
  (417, 41700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 36),
  -- Pachirisu - Swagger - TM87
  (417, 41700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Pachirisu - U-turn - TM89
  (417, 41700, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 38),
  -- Pachirisu - Substitute - TM90
  (417, 41700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Pachirisu - Cut - HM01
  (417, 41700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 40),
  -- Pachirisu - Bestow - Egg Move
  (417, 41700, 516, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pachirisu - Bite - Egg Move
  (417, 41700, 44, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pachirisu - Charge - Egg Move
  (417, 41700, 268, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pachirisu - Covet - Egg Move
  (417, 41700, 343, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pachirisu - Defense Curl - Egg Move
  (417, 41700, 111, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pachirisu - Fake Tears - Egg Move
  (417, 41700, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pachirisu - Flail - Egg Move
  (417, 41700, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pachirisu - Flatter - Egg Move
  (417, 41700, 260, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pachirisu - Follow Me - Egg Move
  (417, 41700, 266, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pachirisu - Iron Tail - Egg Move
  (417, 41700, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pachirisu - Rollout - Egg Move
  (417, 41700, 205, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pachirisu - Tail Whip - Egg Move
  (417, 41700, 39, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pachirisu - Covet - Move Tutor
  (417, 41700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Pachirisu - Gunk Shot - Move Tutor
  (417, 41700, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Pachirisu - Helping Hand - Move Tutor
  (417, 41700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Pachirisu - Iron Tail - Move Tutor
  (417, 41700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Pachirisu - Last Resort - Move Tutor
  (417, 41700, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Pachirisu - Magnet Rise - Move Tutor
  (417, 41700, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Pachirisu - Seed Bomb - Move Tutor
  (417, 41700, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Pachirisu - Sleep Talk - Move Tutor
  (417, 41700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Pachirisu - Snore - Move Tutor
  (417, 41700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Pachirisu - Super Fang - Move Tutor
  (417, 41700, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Pachirisu - Thunder Punch - Move Tutor
  (417, 41700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Pachirisu - Uproar - Move Tutor
  (417, 41700, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Buizel - Sonic Boom - Level 1
  (418, 41800, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buizel - Growl - Level 4
  (418, 41800, 45, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Buizel - Water Sport - Level 7
  (418, 41800, 346, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Buizel - Quick Attack - Level 11
  (418, 41800, 98, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Buizel - Water Gun - Level 15
  (418, 41800, 55, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Buizel - Pursuit - Level 18
  (418, 41800, 228, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Buizel - Swift - Level 21
  (418, 41800, 129, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Buizel - Aqua Jet - Level 24
  (418, 41800, 453, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buizel - Double Hit - Level 27
  (418, 41800, 458, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Buizel - Whirlpool - Level 31
  (418, 41800, 250, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Buizel - Razor Wind - Level 35
  (418, 41800, 13, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Buizel - Aqua Tail - Level 38
  (418, 41800, 401, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Buizel - Agility - Level 41
  (418, 41800, 97, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Buizel - Hydro Pump - Level 45
  (418, 41800, 56, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Buizel - Toxic - TM06
  (418, 41800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Buizel - Hail - TM07
  (418, 41800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Buizel - Bulk Up - TM08
  (418, 41800, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 17),
  -- Buizel - Hidden Power - TM10
  (418, 41800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Buizel - Ice Beam - TM13
  (418, 41800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Buizel - Blizzard - TM14
  (418, 41800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Buizel - Protect - TM17
  (418, 41800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Buizel - Rain Dance - TM18
  (418, 41800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Buizel - Frustration - TM21
  (418, 41800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Buizel - Return - TM27
  (418, 41800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Buizel - Dig - TM28
  (418, 41800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Buizel - Brick Break - TM31
  (418, 41800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Buizel - Double Team - TM32
  (418, 41800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Buizel - Rock Tomb - TM39
  (418, 41800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 28),
  -- Buizel - Facade - TM42
  (418, 41800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Buizel - Rest - TM44
  (418, 41800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Buizel - Attract - TM45
  (418, 41800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Buizel - Round - TM48
  (418, 41800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Buizel - Echoed Voice - TM49
  (418, 41800, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 33),
  -- Buizel - Scald - TM55
  (418, 41800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 34),
  -- Buizel - Swagger - TM87
  (418, 41800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 35),
  -- Buizel - Substitute - TM90
  (418, 41800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Buizel - Rock Smash - TM94
  (418, 41800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 37),
  -- Buizel - Surf - HM03
  (418, 41800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 38),
  -- Buizel - Strength - HM04
  (418, 41800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 39),
  -- Buizel - Waterfall - HM05
  (418, 41800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 40),
  -- Buizel - Dive - HM06
  (418, 41800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 41),
  -- Buizel - Aqua Ring - Egg Move
  (418, 41800, 392, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Buizel - Aqua Tail - Egg Move
  (418, 41800, 401, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Buizel - Baton Pass - Egg Move
  (418, 41800, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Buizel - Double Slap - Egg Move
  (418, 41800, 3, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buizel - Fury Cutter - Egg Move
  (418, 41800, 210, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buizel - Fury Swipes - Egg Move
  (418, 41800, 154, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buizel - Headbutt - Egg Move
  (418, 41800, 29, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buizel - Me First - Egg Move
  (418, 41800, 382, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buizel - Mud-Slap - Egg Move
  (418, 41800, 189, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buizel - Odor Sleuth - Egg Move
  (418, 41800, 316, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buizel - Slash - Egg Move
  (418, 41800, 163, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buizel - Switcheroo - Egg Move
  (418, 41800, 415, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buizel - Tail Slap - Egg Move
  (418, 41800, 541, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buizel - Aqua Tail - Move Tutor
  (418, 41800, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Buizel - Ice Punch - Move Tutor
  (418, 41800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Buizel - Icy Wind - Move Tutor
  (418, 41800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Buizel - Iron Tail - Move Tutor
  (418, 41800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Buizel - Sleep Talk - Move Tutor
  (418, 41800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Buizel - Snore - Move Tutor
  (418, 41800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Floatzel - Ice Fang - Level 1
  (419, 41900, 423, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floatzel - Crunch - Level 1
  (419, 41900, 242, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floatzel - Sonic Boom - Level 1
  (419, 41900, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floatzel - Growl - Level 1
  (419, 41900, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Floatzel - Water Sport - Level 1
  (419, 41900, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Floatzel - Quick Attack - Level 1
  (419, 41900, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Floatzel - Growl - Level 4
  (419, 41900, 45, 12, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Floatzel - Water Sport - Level 7
  (419, 41900, 346, 12, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Floatzel - Quick Attack - Level 11
  (419, 41900, 98, 12, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Floatzel - Water Gun - Level 15
  (419, 41900, 55, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Floatzel - Pursuit - Level 18
  (419, 41900, 228, 12, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Floatzel - Swift - Level 21
  (419, 41900, 129, 12, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Floatzel - Aqua Jet - Level 24
  (419, 41900, 453, 12, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Floatzel - Double Hit - Level 29
  (419, 41900, 458, 12, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Floatzel - Whirlpool - Level 35
  (419, 41900, 250, 12, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Floatzel - Razor Wind - Level 41
  (419, 41900, 13, 12, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Floatzel - Aqua Tail - Level 46
  (419, 41900, 401, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Floatzel - Agility - Level 51
  (419, 41900, 97, 12, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Floatzel - Hydro Pump - Level 57
  (419, 41900, 56, 12, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Floatzel - Roar - TM05
  (419, 41900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Floatzel - Toxic - TM06
  (419, 41900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Floatzel - Hail - TM07
  (419, 41900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Floatzel - Bulk Up - TM08
  (419, 41900, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 23),
  -- Floatzel - Hidden Power - TM10
  (419, 41900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Floatzel - Taunt - TM12
  (419, 41900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Floatzel - Ice Beam - TM13
  (419, 41900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 26),
  -- Floatzel - Blizzard - TM14
  (419, 41900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 27),
  -- Floatzel - Hyper Beam - TM15
  (419, 41900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Floatzel - Protect - TM17
  (419, 41900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Floatzel - Rain Dance - TM18
  (419, 41900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Floatzel - Frustration - TM21
  (419, 41900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Floatzel - Return - TM27
  (419, 41900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Floatzel - Dig - TM28
  (419, 41900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Floatzel - Brick Break - TM31
  (419, 41900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 34),
  -- Floatzel - Double Team - TM32
  (419, 41900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Floatzel - Rock Tomb - TM39
  (419, 41900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Floatzel - Torment - TM41
  (419, 41900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Floatzel - Facade - TM42
  (419, 41900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Floatzel - Rest - TM44
  (419, 41900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Floatzel - Attract - TM45
  (419, 41900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Floatzel - Round - TM48
  (419, 41900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Floatzel - Echoed Voice - TM49
  (419, 41900, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 42),
  -- Floatzel - Focus Blast - TM52
  (419, 41900, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 43),
  -- Floatzel - Scald - TM55
  (419, 41900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 44),
  -- Floatzel - Payback - TM66
  (419, 41900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 45),
  -- Floatzel - Giga Impact - TM68
  (419, 41900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Floatzel - Swagger - TM87
  (419, 41900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Floatzel - Substitute - TM90
  (419, 41900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Floatzel - Rock Smash - TM94
  (419, 41900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Floatzel - Surf - HM03
  (419, 41900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 50),
  -- Floatzel - Strength - HM04
  (419, 41900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 51),
  -- Floatzel - Waterfall - HM05
  (419, 41900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 52),
  -- Floatzel - Dive - HM06
  (419, 41900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 53),
  -- Floatzel - Aqua Tail - Move Tutor
  (419, 41900, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Floatzel - Ice Punch - Move Tutor
  (419, 41900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Floatzel - Icy Wind - Move Tutor
  (419, 41900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Floatzel - Iron Tail - Move Tutor
  (419, 41900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Floatzel - Low Kick - Move Tutor
  (419, 41900, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Floatzel - Sleep Talk - Move Tutor
  (419, 41900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Floatzel - Snore - Move Tutor
  (419, 41900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Cherubi - Morning Sun - Level 1
  (420, 42000, 234, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherubi - Tackle - Level 1
  (420, 42000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherubi - Growth - Level 7
  (420, 42000, 74, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cherubi - Leech Seed - Level 10
  (420, 42000, 73, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cherubi - Helping Hand - Level 13
  (420, 42000, 270, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cherubi - Magical Leaf - Level 19
  (420, 42000, 345, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cherubi - Sunny Day - Level 22
  (420, 42000, 241, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cherubi - Worry Seed - Level 28
  (420, 42000, 388, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cherubi - Take Down - Level 31
  (420, 42000, 36, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cherubi - Solar Beam - Level 37
  (420, 42000, 76, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cherubi - Lucky Chant - Level 40
  (420, 42000, 381, 12, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cherubi - Toxic - TM06
  (420, 42000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Cherubi - Hidden Power - TM10
  (420, 42000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Cherubi - Sunny Day - TM11
  (420, 42000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 14),
  -- Cherubi - Protect - TM17
  (420, 42000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 15),
  -- Cherubi - Safeguard - TM20
  (420, 42000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 16),
  -- Cherubi - Frustration - TM21
  (420, 42000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Cherubi - Solar Beam - TM22
  (420, 42000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 18),
  -- Cherubi - Return - TM27
  (420, 42000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Cherubi - Double Team - TM32
  (420, 42000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 20),
  -- Cherubi - Facade - TM42
  (420, 42000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 21),
  -- Cherubi - Rest - TM44
  (420, 42000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 22),
  -- Cherubi - Attract - TM45
  (420, 42000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 23),
  -- Cherubi - Round - TM48
  (420, 42000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 24),
  -- Cherubi - Energy Ball - TM53
  (420, 42000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 25),
  -- Cherubi - Flash - TM70
  (420, 42000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 26),
  -- Cherubi - Swords Dance - TM75
  (420, 42000, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 27),
  -- Cherubi - Grass Knot - TM86
  (420, 42000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 28),
  -- Cherubi - Swagger - TM87
  (420, 42000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 29),
  -- Cherubi - Substitute - TM90
  (420, 42000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 30),
  -- Cherubi - Aromatherapy - Egg Move
  (420, 42000, 312, 12, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Cherubi - Defense Curl - Egg Move
  (420, 42000, 111, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Cherubi - Grass Whistle - Egg Move
  (420, 42000, 320, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Cherubi - Heal Pulse - Egg Move
  (420, 42000, 505, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Cherubi - Healing Wish - Egg Move
  (420, 42000, 361, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cherubi - Natural Gift - Egg Move
  (420, 42000, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cherubi - Nature Power - Egg Move
  (420, 42000, 267, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherubi - Razor Leaf - Egg Move
  (420, 42000, 75, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherubi - Rollout - Egg Move
  (420, 42000, 205, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherubi - Seed Bomb - Egg Move
  (420, 42000, 402, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherubi - Sweet Scent - Egg Move
  (420, 42000, 230, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherubi - Tickle - Egg Move
  (420, 42000, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cherubi - Weather Ball - Egg Move
  (420, 42000, 311, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cherubi - Giga Drain - Move Tutor
  (420, 42000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Cherubi - Helping Hand - Move Tutor
  (420, 42000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Cherubi - Seed Bomb - Move Tutor
  (420, 42000, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Cherubi - Sleep Talk - Move Tutor
  (420, 42000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Cherubi - Snore - Move Tutor
  (420, 42000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Cherubi - Synthesis - Move Tutor
  (420, 42000, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Cherubi - Worry Seed - Move Tutor
  (420, 42000, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Cherrim - Morning Sun - Level 1
  (421, 42100, 234, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherrim - Tackle - Level 1
  (421, 42100, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherrim - Growth - Level 1
  (421, 42100, 74, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cherrim - Growth - Level 7
  (421, 42100, 74, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cherrim - Leech Seed - Level 10
  (421, 42100, 73, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cherrim - Helping Hand - Level 13
  (421, 42100, 270, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cherrim - Magical Leaf - Level 19
  (421, 42100, 345, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Cherrim - Sunny Day - Level 22
  (421, 42100, 241, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Cherrim - Petal Dance - Level 25
  (421, 42100, 80, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Cherrim - Worry Seed - Level 30
  (421, 42100, 388, 12, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Cherrim - Take Down - Level 35
  (421, 42100, 36, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Cherrim - Solar Beam - Level 43
  (421, 42100, 76, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Cherrim - Lucky Chant - Level 48
  (421, 42100, 381, 12, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Cherrim - Toxic - TM06
  (421, 42100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Cherrim - Hidden Power - TM10
  (421, 42100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Cherrim - Sunny Day - TM11
  (421, 42100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Cherrim - Hyper Beam - TM15
  (421, 42100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 17),
  -- Cherrim - Protect - TM17
  (421, 42100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Cherrim - Safeguard - TM20
  (421, 42100, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 19),
  -- Cherrim - Frustration - TM21
  (421, 42100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Cherrim - Solar Beam - TM22
  (421, 42100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Cherrim - Return - TM27
  (421, 42100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Cherrim - Double Team - TM32
  (421, 42100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Cherrim - Facade - TM42
  (421, 42100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Cherrim - Rest - TM44
  (421, 42100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Cherrim - Attract - TM45
  (421, 42100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 26),
  -- Cherrim - Round - TM48
  (421, 42100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 27),
  -- Cherrim - Energy Ball - TM53
  (421, 42100, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 28),
  -- Cherrim - Giga Impact - TM68
  (421, 42100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 29),
  -- Cherrim - Flash - TM70
  (421, 42100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 30),
  -- Cherrim - Swords Dance - TM75
  (421, 42100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 31),
  -- Cherrim - Grass Knot - TM86
  (421, 42100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 32),
  -- Cherrim - Swagger - TM87
  (421, 42100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Cherrim - Substitute - TM90
  (421, 42100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Cherrim - Giga Drain - Move Tutor
  (421, 42100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 35),
  -- Cherrim - Helping Hand - Move Tutor
  (421, 42100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 36),
  -- Cherrim - Seed Bomb - Move Tutor
  (421, 42100, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Cherrim - Sleep Talk - Move Tutor
  (421, 42100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Cherrim - Snore - Move Tutor
  (421, 42100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Cherrim - Synthesis - Move Tutor
  (421, 42100, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Cherrim - Worry Seed - Move Tutor
  (421, 42100, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Mud Sport - Level 2
  (422, 42200, 300, 12, NULL, 1, 2, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 4
  (422, 42200, 106, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellos - Water Pulse - Level 7
  (422, 42200, 352, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Shellos - Mud Bomb - Level 11
  (422, 42200, 426, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Shellos - Hidden Power - Level 16
  (422, 42200, 237, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellos - Rain Dance - Level 22
  (422, 42200, 240, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Shellos - Body Slam - Level 29
  (422, 42200, 34, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Shellos - Muddy Water - Level 37
  (422, 42200, 330, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Shellos - Recover - Level 46
  (422, 42200, 105, 12, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Shellos - Toxic - TM06
  (422, 42200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 11),
  -- Shellos - Hail - TM07
  (422, 42200, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 12),
  -- Shellos - Hidden Power - TM10
  (422, 42200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Shellos - Ice Beam - TM13
  (422, 42200, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 14),
  -- Shellos - Blizzard - TM14
  (422, 42200, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 15),
  -- Shellos - Protect - TM17
  (422, 42200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Shellos - Rain Dance - TM18
  (422, 42200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 17),
  -- Shellos - Frustration - TM21
  (422, 42200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 18),
  -- Shellos - Return - TM27
  (422, 42200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Shellos - Double Team - TM32
  (422, 42200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 20),
  -- Shellos - Facade - TM42
  (422, 42200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 21),
  -- Shellos - Rest - TM44
  (422, 42200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 22),
  -- Shellos - Attract - TM45
  (422, 42200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 23),
  -- Shellos - Round - TM48
  (422, 42200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 24),
  -- Shellos - Scald - TM55
  (422, 42200, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 25),
  -- Shellos - Swagger - TM87
  (422, 42200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 26),
  -- Shellos - Substitute - TM90
  (422, 42200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 27),
  -- Shellos - Surf - HM03
  (422, 42200, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 28),
  -- Shellos - Dive - HM06
  (422, 42200, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 29),
  -- Shellos - Amnesia - Egg Move
  (422, 42200, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Shellos - Brine - Egg Move
  (422, 42200, 362, 12, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Shellos - Clear Smog - Egg Move
  (422, 42200, 499, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Shellos - Counter - Egg Move
  (422, 42200, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Shellos - Curse - Egg Move
  (422, 42200, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Shellos - Fissure - Egg Move
  (422, 42200, 90, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Shellos - Memento - Egg Move
  (422, 42200, 262, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Shellos - Mirror Coat - Egg Move
  (422, 42200, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellos - Mist - Egg Move
  (422, 42200, 54, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellos - Sludge - Egg Move
  (422, 42200, 124, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellos - Spit Up - Egg Move
  (422, 42200, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellos - Stockpile - Egg Move
  (422, 42200, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellos - Swallow - Egg Move
  (422, 42200, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellos - Trump Card - Egg Move
  (422, 42200, 376, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellos - Yawn - Egg Move
  (422, 42200, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellos - Earth Power - Move Tutor
  (422, 42200, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Shellos - Icy Wind - Move Tutor
  (422, 42200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Shellos - Pain Split - Move Tutor
  (422, 42200, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Shellos - Sleep Talk - Move Tutor
  (422, 42200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Shellos - Snore - Move Tutor
  (422, 42200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Mud Sport - Level 1
  (423, 42300, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastrodon - Harden - Level 1
  (423, 42300, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastrodon - Water Pulse - Level 1
  (423, 42300, 352, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gastrodon - Mud Sport - Level 2
  (423, 42300, 300, 12, NULL, 1, 2, NULL, NULL, NULL, 5),
  -- Gastrodon - Harden - Level 4
  (423, 42300, 106, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gastrodon - Water Pulse - Level 7
  (423, 42300, 352, 12, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Gastrodon - Mud Bomb - Level 11
  (423, 42300, 426, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gastrodon - Hidden Power - Level 16
  (423, 42300, 237, 12, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 22
  (423, 42300, 240, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Gastrodon - Body Slam - Level 29
  (423, 42300, 34, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gastrodon - Muddy Water - Level 41
  (423, 42300, 330, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Gastrodon - Recover - Level 54
  (423, 42300, 105, 12, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Gastrodon - Toxic - TM06
  (423, 42300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Gastrodon - Hail - TM07
  (423, 42300, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 15),
  -- Gastrodon - Hidden Power - TM10
  (423, 42300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Gastrodon - Ice Beam - TM13
  (423, 42300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Gastrodon - Blizzard - TM14
  (423, 42300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Gastrodon - Hyper Beam - TM15
  (423, 42300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Gastrodon - Protect - TM17
  (423, 42300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Gastrodon - Rain Dance - TM18
  (423, 42300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Gastrodon - Frustration - TM21
  (423, 42300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Gastrodon - Earthquake - TM26
  (423, 42300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 23),
  -- Gastrodon - Return - TM27
  (423, 42300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Gastrodon - Dig - TM28
  (423, 42300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Gastrodon - Double Team - TM32
  (423, 42300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Gastrodon - Sludge Wave - TM34
  (423, 42300, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 27),
  -- Gastrodon - Sludge Bomb - TM36
  (423, 42300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 28),
  -- Gastrodon - Sandstorm - TM37
  (423, 42300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Gastrodon - Rock Tomb - TM39
  (423, 42300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Gastrodon - Facade - TM42
  (423, 42300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Gastrodon - Rest - TM44
  (423, 42300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Gastrodon - Attract - TM45
  (423, 42300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Gastrodon - Round - TM48
  (423, 42300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Gastrodon - Scald - TM55
  (423, 42300, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 35),
  -- Gastrodon - Giga Impact - TM68
  (423, 42300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Gastrodon - Flash - TM70
  (423, 42300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Gastrodon - Stone Edge - TM71
  (423, 42300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 38),
  -- Gastrodon - Bulldoze - TM78
  (423, 42300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 39),
  -- Gastrodon - Rock Slide - TM80
  (423, 42300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 40),
  -- Gastrodon - Swagger - TM87
  (423, 42300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Gastrodon - Substitute - TM90
  (423, 42300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Gastrodon - Rock Smash - TM94
  (423, 42300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Gastrodon - Surf - HM03
  (423, 42300, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 44),
  -- Gastrodon - Strength - HM04
  (423, 42300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 45),
  -- Gastrodon - Waterfall - HM05
  (423, 42300, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 46),
  -- Gastrodon - Dive - HM06
  (423, 42300, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 47),
  -- Gastrodon - Block - Move Tutor
  (423, 42300, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Gastrodon - Earth Power - Move Tutor
  (423, 42300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Gastrodon - Icy Wind - Move Tutor
  (423, 42300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Gastrodon - Pain Split - Move Tutor
  (423, 42300, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Gastrodon - Sleep Talk - Move Tutor
  (423, 42300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Gastrodon - Snore - Move Tutor
  (423, 42300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Ambipom - Scratch - Level 1
  (424, 42400, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ambipom - Tail Whip - Level 1
  (424, 42400, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ambipom - Sand Attack - Level 1
  (424, 42400, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ambipom - Astonish - Level 1
  (424, 42400, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ambipom - Sand Attack - Level 4
  (424, 42400, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Ambipom - Astonish - Level 8
  (424, 42400, 310, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Ambipom - Baton Pass - Level 11
  (424, 42400, 226, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Ambipom - Tickle - Level 15
  (424, 42400, 321, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ambipom - Fury Swipes - Level 18
  (424, 42400, 154, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Ambipom - Swift - Level 22
  (424, 42400, 129, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Ambipom - Screech - Level 25
  (424, 42400, 103, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Ambipom - Agility - Level 29
  (424, 42400, 97, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Ambipom - Double Hit - Level 32
  (424, 42400, 458, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Ambipom - Fling - Level 36
  (424, 42400, 374, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ambipom - Nasty Plot - Level 39
  (424, 42400, 417, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ambipom - Last Resort - Level 43
  (424, 42400, 387, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Ambipom - Hone Claws - TM01
  (424, 42400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Ambipom - Toxic - TM06
  (424, 42400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Ambipom - Hidden Power - TM10
  (424, 42400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Ambipom - Sunny Day - TM11
  (424, 42400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Ambipom - Taunt - TM12
  (424, 42400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Ambipom - Hyper Beam - TM15
  (424, 42400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Ambipom - Protect - TM17
  (424, 42400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Ambipom - Rain Dance - TM18
  (424, 42400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Ambipom - Frustration - TM21
  (424, 42400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Ambipom - Solar Beam - TM22
  (424, 42400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Ambipom - Thunderbolt - TM24
  (424, 42400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Ambipom - Thunder - TM25
  (424, 42400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Ambipom - Return - TM27
  (424, 42400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Ambipom - Dig - TM28
  (424, 42400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Ambipom - Shadow Ball - TM30
  (424, 42400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Ambipom - Brick Break - TM31
  (424, 42400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Ambipom - Double Team - TM32
  (424, 42400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Ambipom - Aerial Ace - TM40
  (424, 42400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 34),
  -- Ambipom - Facade - TM42
  (424, 42400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Ambipom - Rest - TM44
  (424, 42400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Ambipom - Attract - TM45
  (424, 42400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Ambipom - Thief - TM46
  (424, 42400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Ambipom - Low Sweep - TM47
  (424, 42400, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 39),
  -- Ambipom - Round - TM48
  (424, 42400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Ambipom - Fling - TM56
  (424, 42400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Ambipom - Acrobatics - TM62
  (424, 42400, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 42),
  -- Ambipom - Shadow Claw - TM65
  (424, 42400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 43),
  -- Ambipom - Payback - TM66
  (424, 42400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 44),
  -- Ambipom - Retaliate - TM67
  (424, 42400, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 45),
  -- Ambipom - Giga Impact - TM68
  (424, 42400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Ambipom - Thunder Wave - TM73
  (424, 42400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 47),
  -- Ambipom - Work Up - TM83
  (424, 42400, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 48),
  -- Ambipom - Dream Eater - TM85
  (424, 42400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 49),
  -- Ambipom - Grass Knot - TM86
  (424, 42400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 50),
  -- Ambipom - Swagger - TM87
  (424, 42400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Ambipom - U-turn - TM89
  (424, 42400, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 52),
  -- Ambipom - Substitute - TM90
  (424, 42400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Ambipom - Rock Smash - TM94
  (424, 42400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Ambipom - Cut - HM01
  (424, 42400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 55),
  -- Ambipom - Strength - HM04
  (424, 42400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Ambipom - Bounce - Move Tutor
  (424, 42400, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Ambipom - Covet - Move Tutor
  (424, 42400, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Ambipom - Fire Punch - Move Tutor
  (424, 42400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Ambipom - Foul Play - Move Tutor
  (424, 42400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Ambipom - Gunk Shot - Move Tutor
  (424, 42400, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Ambipom - Ice Punch - Move Tutor
  (424, 42400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Ambipom - Iron Tail - Move Tutor
  (424, 42400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Ambipom - Knock Off - Move Tutor
  (424, 42400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Ambipom - Last Resort - Move Tutor
  (424, 42400, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Ambipom - Low Kick - Move Tutor
  (424, 42400, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Ambipom - Role Play - Move Tutor
  (424, 42400, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Ambipom - Seed Bomb - Move Tutor
  (424, 42400, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Ambipom - Sleep Talk - Move Tutor
  (424, 42400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Ambipom - Snatch - Move Tutor
  (424, 42400, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Ambipom - Snore - Move Tutor
  (424, 42400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Ambipom - Spite - Move Tutor
  (424, 42400, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Ambipom - Thunder Punch - Move Tutor
  (424, 42400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Ambipom - Uproar - Move Tutor
  (424, 42400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Drifloon - Constrict - Level 1
  (425, 42500, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Minimize - Level 1
  (425, 42500, 107, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifloon - Astonish - Level 4
  (425, 42500, 310, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drifloon - Gust - Level 8
  (425, 42500, 16, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drifloon - Focus Energy - Level 13
  (425, 42500, 116, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drifloon - Payback - Level 16
  (425, 42500, 371, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drifloon - Ominous Wind - Level 20
  (425, 42500, 466, 12, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drifloon - Stockpile - Level 25
  (425, 42500, 254, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drifloon - Hex - Level 27
  (425, 42500, 506, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Drifloon - Swallow - Level 32
  (425, 42500, 256, 12, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Drifloon - Spit Up - Level 32
  (425, 42500, 255, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Drifloon - Shadow Ball - Level 36
  (425, 42500, 247, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Drifloon - Amnesia - Level 40
  (425, 42500, 133, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Drifloon - Baton Pass - Level 44
  (425, 42500, 226, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Drifloon - Explosion - Level 50
  (425, 42500, 153, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Drifloon - Calm Mind - TM04
  (425, 42500, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 16),
  -- Drifloon - Toxic - TM06
  (425, 42500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Drifloon - Hidden Power - TM10
  (425, 42500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Drifloon - Sunny Day - TM11
  (425, 42500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Drifloon - Protect - TM17
  (425, 42500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Drifloon - Rain Dance - TM18
  (425, 42500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Drifloon - Telekinesis - TM19
  (425, 42500, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 22),
  -- Drifloon - Frustration - TM21
  (425, 42500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Drifloon - Thunderbolt - TM24
  (425, 42500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Drifloon - Thunder - TM25
  (425, 42500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Drifloon - Return - TM27
  (425, 42500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Drifloon - Psychic - TM29
  (425, 42500, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 27),
  -- Drifloon - Shadow Ball - TM30
  (425, 42500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Drifloon - Double Team - TM32
  (425, 42500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Drifloon - Facade - TM42
  (425, 42500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Drifloon - Rest - TM44
  (425, 42500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Drifloon - Attract - TM45
  (425, 42500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Drifloon - Thief - TM46
  (425, 42500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Drifloon - Round - TM48
  (425, 42500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Drifloon - Charge Beam - TM57
  (425, 42500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 35),
  -- Drifloon - Will-O-Wisp - TM61
  (425, 42500, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 36),
  -- Drifloon - Acrobatics - TM62
  (425, 42500, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 37),
  -- Drifloon - Embargo - TM63
  (425, 42500, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 38),
  -- Drifloon - Explosion - TM64
  (425, 42500, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 39),
  -- Drifloon - Payback - TM66
  (425, 42500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Drifloon - Flash - TM70
  (425, 42500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 41),
  -- Drifloon - Thunder Wave - TM73
  (425, 42500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 42),
  -- Drifloon - Gyro Ball - TM74
  (425, 42500, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 43),
  -- Drifloon - Psych Up - TM77
  (425, 42500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 44),
  -- Drifloon - Dream Eater - TM85
  (425, 42500, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 45),
  -- Drifloon - Swagger - TM87
  (425, 42500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Drifloon - Substitute - TM90
  (425, 42500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Drifloon - Cut - HM01
  (425, 42500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 48),
  -- Drifloon - Body Slam - Egg Move
  (425, 42500, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Drifloon - Clear Smog - Egg Move
  (425, 42500, 499, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drifloon - Defog - Egg Move
  (425, 42500, 432, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Drifloon - Destiny Bond - Egg Move
  (425, 42500, 194, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drifloon - Disable - Egg Move
  (425, 42500, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifloon - Haze - Egg Move
  (425, 42500, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Hypnosis - Egg Move
  (425, 42500, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifloon - Memento - Egg Move
  (425, 42500, 262, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifloon - Weather Ball - Egg Move
  (425, 42500, 311, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drifloon - Bind - Move Tutor
  (425, 42500, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Drifloon - Icy Wind - Move Tutor
  (425, 42500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Drifloon - Knock Off - Move Tutor
  (425, 42500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Drifloon - Magic Coat - Move Tutor
  (425, 42500, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Drifloon - Pain Split - Move Tutor
  (425, 42500, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Drifloon - Recycle - Move Tutor
  (425, 42500, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Drifloon - Skill Swap - Move Tutor
  (425, 42500, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Drifloon - Sleep Talk - Move Tutor
  (425, 42500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Drifloon - Snore - Move Tutor
  (425, 42500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Drifloon - Spite - Move Tutor
  (425, 42500, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Drifloon - Tailwind - Move Tutor
  (425, 42500, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Drifloon - Trick - Move Tutor
  (425, 42500, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Drifblim - Constrict - Level 1
  (426, 42600, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Minimize - Level 1
  (426, 42600, 107, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifblim - Astonish - Level 1
  (426, 42600, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drifblim - Gust - Level 1
  (426, 42600, 16, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drifblim - Astonish - Level 4
  (426, 42600, 310, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Drifblim - Gust - Level 8
  (426, 42600, 16, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Drifblim - Focus Energy - Level 13
  (426, 42600, 116, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Drifblim - Payback - Level 16
  (426, 42600, 371, 12, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Drifblim - Ominous Wind - Level 20
  (426, 42600, 466, 12, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Drifblim - Stockpile - Level 25
  (426, 42600, 254, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Drifblim - Hex - Level 27
  (426, 42600, 506, 12, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Drifblim - Swallow - Level 34
  (426, 42600, 256, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Drifblim - Spit Up - Level 34
  (426, 42600, 255, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Drifblim - Shadow Ball - Level 40
  (426, 42600, 247, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Drifblim - Amnesia - Level 46
  (426, 42600, 133, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Drifblim - Baton Pass - Level 52
  (426, 42600, 226, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Drifblim - Explosion - Level 60
  (426, 42600, 153, 12, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Drifblim - Calm Mind - TM04
  (426, 42600, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Drifblim - Toxic - TM06
  (426, 42600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Drifblim - Hidden Power - TM10
  (426, 42600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Drifblim - Sunny Day - TM11
  (426, 42600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Drifblim - Hyper Beam - TM15
  (426, 42600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Drifblim - Protect - TM17
  (426, 42600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Drifblim - Rain Dance - TM18
  (426, 42600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Drifblim - Telekinesis - TM19
  (426, 42600, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Drifblim - Frustration - TM21
  (426, 42600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Drifblim - Thunderbolt - TM24
  (426, 42600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Drifblim - Thunder - TM25
  (426, 42600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Drifblim - Return - TM27
  (426, 42600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Drifblim - Psychic - TM29
  (426, 42600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Drifblim - Shadow Ball - TM30
  (426, 42600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Drifblim - Double Team - TM32
  (426, 42600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Drifblim - Facade - TM42
  (426, 42600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Drifblim - Rest - TM44
  (426, 42600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Drifblim - Attract - TM45
  (426, 42600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Drifblim - Thief - TM46
  (426, 42600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Drifblim - Round - TM48
  (426, 42600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Drifblim - Charge Beam - TM57
  (426, 42600, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 38),
  -- Drifblim - Will-O-Wisp - TM61
  (426, 42600, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 39),
  -- Drifblim - Acrobatics - TM62
  (426, 42600, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 40),
  -- Drifblim - Embargo - TM63
  (426, 42600, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 41),
  -- Drifblim - Explosion - TM64
  (426, 42600, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 42),
  -- Drifblim - Payback - TM66
  (426, 42600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Drifblim - Giga Impact - TM68
  (426, 42600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Drifblim - Flash - TM70
  (426, 42600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 45),
  -- Drifblim - Thunder Wave - TM73
  (426, 42600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 46),
  -- Drifblim - Gyro Ball - TM74
  (426, 42600, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 47),
  -- Drifblim - Psych Up - TM77
  (426, 42600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 48),
  -- Drifblim - Dream Eater - TM85
  (426, 42600, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 49),
  -- Drifblim - Swagger - TM87
  (426, 42600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Drifblim - Substitute - TM90
  (426, 42600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Drifblim - Cut - HM01
  (426, 42600, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 52),
  -- Drifblim - Fly - HM02
  (426, 42600, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 53),
  -- Drifblim - Bind - Move Tutor
  (426, 42600, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Drifblim - Icy Wind - Move Tutor
  (426, 42600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Drifblim - Knock Off - Move Tutor
  (426, 42600, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Drifblim - Magic Coat - Move Tutor
  (426, 42600, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Drifblim - Pain Split - Move Tutor
  (426, 42600, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Drifblim - Recycle - Move Tutor
  (426, 42600, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Drifblim - Skill Swap - Move Tutor
  (426, 42600, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Drifblim - Sleep Talk - Move Tutor
  (426, 42600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Drifblim - Snore - Move Tutor
  (426, 42600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Drifblim - Spite - Move Tutor
  (426, 42600, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Drifblim - Tailwind - Move Tutor
  (426, 42600, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Drifblim - Trick - Move Tutor
  (426, 42600, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Buneary - Splash - Level 1
  (427, 42700, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Pound - Level 1
  (427, 42700, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buneary - Defense Curl - Level 1
  (427, 42700, 111, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Buneary - Foresight - Level 1
  (427, 42700, 193, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Buneary - Endure - Level 6
  (427, 42700, 203, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Buneary - Frustration - Level 13
  (427, 42700, 218, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Buneary - Jump Kick - Level 23
  (427, 42700, 26, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Buneary - Baton Pass - Level 26
  (427, 42700, 226, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Buneary - Agility - Level 33
  (427, 42700, 97, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Buneary - Dizzy Punch - Level 36
  (427, 42700, 146, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Buneary - After You - Level 43
  (427, 42700, 495, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Buneary - Charm - Level 46
  (427, 42700, 204, 12, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Buneary - Entrainment - Level 53
  (427, 42700, 494, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Buneary - Bounce - Level 56
  (427, 42700, 340, 12, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Buneary - Healing Wish - Level 63
  (427, 42700, 361, 12, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Buneary - Toxic - TM06
  (427, 42700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Buneary - Hidden Power - TM10
  (427, 42700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Buneary - Sunny Day - TM11
  (427, 42700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Buneary - Ice Beam - TM13
  (427, 42700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Buneary - Protect - TM17
  (427, 42700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Buneary - Rain Dance - TM18
  (427, 42700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Buneary - Frustration - TM21
  (427, 42700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Buneary - Solar Beam - TM22
  (427, 42700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Buneary - Thunderbolt - TM24
  (427, 42700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Buneary - Return - TM27
  (427, 42700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Buneary - Dig - TM28
  (427, 42700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Buneary - Shadow Ball - TM30
  (427, 42700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Buneary - Double Team - TM32
  (427, 42700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Buneary - Facade - TM42
  (427, 42700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Buneary - Rest - TM44
  (427, 42700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Buneary - Attract - TM45
  (427, 42700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Buneary - Round - TM48
  (427, 42700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Buneary - Fling - TM56
  (427, 42700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Buneary - Charge Beam - TM57
  (427, 42700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 35),
  -- Buneary - Retaliate - TM67
  (427, 42700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 36),
  -- Buneary - Thunder Wave - TM73
  (427, 42700, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Buneary - Work Up - TM83
  (427, 42700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 38),
  -- Buneary - Grass Knot - TM86
  (427, 42700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 39),
  -- Buneary - Swagger - TM87
  (427, 42700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Buneary - Substitute - TM90
  (427, 42700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Buneary - Rock Smash - TM94
  (427, 42700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Buneary - Cut - HM01
  (427, 42700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 43),
  -- Buneary - Circle Throw - Egg Move
  (427, 42700, 509, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Buneary - Copycat - Egg Move
  (427, 42700, 383, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Buneary - Double Hit - Egg Move
  (427, 42700, 458, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Buneary - Encore - Egg Move
  (427, 42700, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Buneary - Fake Out - Egg Move
  (427, 42700, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Buneary - Fake Tears - Egg Move
  (427, 42700, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Buneary - Fire Punch - Egg Move
  (427, 42700, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Buneary - Flail - Egg Move
  (427, 42700, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Buneary - Focus Punch - Egg Move
  (427, 42700, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buneary - Ice Punch - Egg Move
  (427, 42700, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buneary - Low Kick - Egg Move
  (427, 42700, 67, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buneary - Sky Uppercut - Egg Move
  (427, 42700, 327, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buneary - Sweet Kiss - Egg Move
  (427, 42700, 186, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buneary - Switcheroo - Egg Move
  (427, 42700, 415, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Buneary - Thunder Punch - Egg Move
  (427, 42700, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Buneary - After You - Move Tutor
  (427, 42700, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Buneary - Bounce - Move Tutor
  (427, 42700, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Buneary - Covet - Move Tutor
  (427, 42700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Buneary - Drain Punch - Move Tutor
  (427, 42700, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Buneary - Endeavor - Move Tutor
  (427, 42700, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Buneary - Fire Punch - Move Tutor
  (427, 42700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Buneary - Heal Bell - Move Tutor
  (427, 42700, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Buneary - Helping Hand - Move Tutor
  (427, 42700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Buneary - Hyper Voice - Move Tutor
  (427, 42700, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Buneary - Ice Punch - Move Tutor
  (427, 42700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Buneary - Iron Tail - Move Tutor
  (427, 42700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Buneary - Last Resort - Move Tutor
  (427, 42700, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Buneary - Low Kick - Move Tutor
  (427, 42700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Buneary - Magic Coat - Move Tutor
  (427, 42700, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Buneary - Sleep Talk - Move Tutor
  (427, 42700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Buneary - Snore - Move Tutor
  (427, 42700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Buneary - Thunder Punch - Move Tutor
  (427, 42700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Buneary - Uproar - Move Tutor
  (427, 42700, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Lopunny - Mirror Coat - Level 1
  (428, 42800, 243, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Magic Coat - Level 1
  (428, 42800, 277, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Splash - Level 1
  (428, 42800, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lopunny - Pound - Level 1
  (428, 42800, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lopunny - Defense Curl - Level 1
  (428, 42800, 111, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lopunny - Foresight - Level 1
  (428, 42800, 193, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lopunny - Endure - Level 6
  (428, 42800, 203, 12, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Lopunny - Return - Level 13
  (428, 42800, 216, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 12, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Lopunny - Jump Kick - Level 23
  (428, 42800, 26, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Lopunny - Baton Pass - Level 26
  (428, 42800, 226, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Lopunny - Agility - Level 33
  (428, 42800, 97, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lopunny - Dizzy Punch - Level 36
  (428, 42800, 146, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lopunny - After You - Level 43
  (428, 42800, 495, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Lopunny - Charm - Level 46
  (428, 42800, 204, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Lopunny - Entrainment - Level 53
  (428, 42800, 494, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lopunny - Bounce - Level 56
  (428, 42800, 340, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Lopunny - Healing Wish - Level 63
  (428, 42800, 361, 12, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Lopunny - Toxic - TM06
  (428, 42800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Lopunny - Hidden Power - TM10
  (428, 42800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Lopunny - Sunny Day - TM11
  (428, 42800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Lopunny - Ice Beam - TM13
  (428, 42800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Lopunny - Blizzard - TM14
  (428, 42800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Lopunny - Hyper Beam - TM15
  (428, 42800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Lopunny - Protect - TM17
  (428, 42800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Lopunny - Rain Dance - TM18
  (428, 42800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Lopunny - Frustration - TM21
  (428, 42800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Lopunny - Solar Beam - TM22
  (428, 42800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Lopunny - Thunderbolt - TM24
  (428, 42800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Lopunny - Thunder - TM25
  (428, 42800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Lopunny - Return - TM27
  (428, 42800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Lopunny - Dig - TM28
  (428, 42800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 32),
  -- Lopunny - Shadow Ball - TM30
  (428, 42800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Lopunny - Double Team - TM32
  (428, 42800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Lopunny - Facade - TM42
  (428, 42800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Lopunny - Rest - TM44
  (428, 42800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Lopunny - Attract - TM45
  (428, 42800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Lopunny - Low Sweep - TM47
  (428, 42800, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 38),
  -- Lopunny - Round - TM48
  (428, 42800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Lopunny - Focus Blast - TM52
  (428, 42800, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 40),
  -- Lopunny - Fling - TM56
  (428, 42800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Lopunny - Charge Beam - TM57
  (428, 42800, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 42),
  -- Lopunny - Retaliate - TM67
  (428, 42800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 43),
  -- Lopunny - Giga Impact - TM68
  (428, 42800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Lopunny - Thunder Wave - TM73
  (428, 42800, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 45),
  -- Lopunny - Work Up - TM83
  (428, 42800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 46),
  -- Lopunny - Grass Knot - TM86
  (428, 42800, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 47),
  -- Lopunny - Swagger - TM87
  (428, 42800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 48),
  -- Lopunny - Substitute - TM90
  (428, 42800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 49),
  -- Lopunny - Rock Smash - TM94
  (428, 42800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 50),
  -- Lopunny - Cut - HM01
  (428, 42800, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 51),
  -- Lopunny - Strength - HM04
  (428, 42800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Lopunny - After You - Move Tutor
  (428, 42800, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Lopunny - Bounce - Move Tutor
  (428, 42800, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Lopunny - Covet - Move Tutor
  (428, 42800, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Lopunny - Drain Punch - Move Tutor
  (428, 42800, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Lopunny - Endeavor - Move Tutor
  (428, 42800, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Lopunny - Fire Punch - Move Tutor
  (428, 42800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Lopunny - Heal Bell - Move Tutor
  (428, 42800, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Lopunny - Helping Hand - Move Tutor
  (428, 42800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Lopunny - Hyper Voice - Move Tutor
  (428, 42800, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Lopunny - Ice Punch - Move Tutor
  (428, 42800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Lopunny - Iron Tail - Move Tutor
  (428, 42800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Lopunny - Last Resort - Move Tutor
  (428, 42800, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Lopunny - Low Kick - Move Tutor
  (428, 42800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Lopunny - Magic Coat - Move Tutor
  (428, 42800, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Lopunny - Sleep Talk - Move Tutor
  (428, 42800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Lopunny - Snore - Move Tutor
  (428, 42800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Lopunny - Thunder Punch - Move Tutor
  (428, 42800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Lopunny - Uproar - Move Tutor
  (428, 42800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Mismagius - Lucky Chant - Level 1
  (429, 42900, 381, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mismagius - Magical Leaf - Level 1
  (429, 42900, 345, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mismagius - Growl - Level 1
  (429, 42900, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mismagius - Psywave - Level 1
  (429, 42900, 149, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mismagius - Spite - Level 1
  (429, 42900, 180, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mismagius - Astonish - Level 1
  (429, 42900, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mismagius - Calm Mind - TM04
  (429, 42900, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 7),
  -- Mismagius - Toxic - TM06
  (429, 42900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 8),
  -- Mismagius - Hidden Power - TM10
  (429, 42900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 9),
  -- Mismagius - Sunny Day - TM11
  (429, 42900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 10),
  -- Mismagius - Taunt - TM12
  (429, 42900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 11),
  -- Mismagius - Hyper Beam - TM15
  (429, 42900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 12),
  -- Mismagius - Protect - TM17
  (429, 42900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 13),
  -- Mismagius - Rain Dance - TM18
  (429, 42900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 14),
  -- Mismagius - Telekinesis - TM19
  (429, 42900, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 15),
  -- Mismagius - Frustration - TM21
  (429, 42900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 16),
  -- Mismagius - Thunderbolt - TM24
  (429, 42900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 17),
  -- Mismagius - Thunder - TM25
  (429, 42900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 18),
  -- Mismagius - Return - TM27
  (429, 42900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Mismagius - Psychic - TM29
  (429, 42900, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 20),
  -- Mismagius - Shadow Ball - TM30
  (429, 42900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 21),
  -- Mismagius - Double Team - TM32
  (429, 42900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Mismagius - Aerial Ace - TM40
  (429, 42900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 23),
  -- Mismagius - Torment - TM41
  (429, 42900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 24),
  -- Mismagius - Facade - TM42
  (429, 42900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Mismagius - Rest - TM44
  (429, 42900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Mismagius - Attract - TM45
  (429, 42900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Mismagius - Thief - TM46
  (429, 42900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 28),
  -- Mismagius - Round - TM48
  (429, 42900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Mismagius - Echoed Voice - TM49
  (429, 42900, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Mismagius - Energy Ball - TM53
  (429, 42900, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 31),
  -- Mismagius - Charge Beam - TM57
  (429, 42900, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 32),
  -- Mismagius - Will-O-Wisp - TM61
  (429, 42900, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 33),
  -- Mismagius - Embargo - TM63
  (429, 42900, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 34),
  -- Mismagius - Payback - TM66
  (429, 42900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 35),
  -- Mismagius - Giga Impact - TM68
  (429, 42900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Mismagius - Flash - TM70
  (429, 42900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Mismagius - Thunder Wave - TM73
  (429, 42900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 38),
  -- Mismagius - Psych Up - TM77
  (429, 42900, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Mismagius - Dream Eater - TM85
  (429, 42900, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 40),
  -- Mismagius - Swagger - TM87
  (429, 42900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Mismagius - Substitute - TM90
  (429, 42900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Mismagius - Trick Room - TM92
  (429, 42900, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 43),
  -- Mismagius - Dark Pulse - Move Tutor
  (429, 42900, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Mismagius - Foul Play - Move Tutor
  (429, 42900, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Mismagius - Heal Bell - Move Tutor
  (429, 42900, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Mismagius - Hyper Voice - Move Tutor
  (429, 42900, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Mismagius - Icy Wind - Move Tutor
  (429, 42900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Mismagius - Magic Coat - Move Tutor
  (429, 42900, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Mismagius - Magic Room - Move Tutor
  (429, 42900, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Mismagius - Pain Split - Move Tutor
  (429, 42900, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Mismagius - Skill Swap - Move Tutor
  (429, 42900, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Mismagius - Sleep Talk - Move Tutor
  (429, 42900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Mismagius - Snatch - Move Tutor
  (429, 42900, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Mismagius - Snore - Move Tutor
  (429, 42900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Mismagius - Spite - Move Tutor
  (429, 42900, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Mismagius - Trick - Move Tutor
  (429, 42900, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Mismagius - Uproar - Move Tutor
  (429, 42900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Mismagius - Wonder Room - Move Tutor
  (429, 42900, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Honchkrow - Astonish - Level 1
  (430, 43000, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honchkrow - Pursuit - Level 1
  (430, 43000, 228, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honchkrow - Haze - Level 1
  (430, 43000, 114, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Honchkrow - Wing Attack - Level 1
  (430, 43000, 17, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Honchkrow - Swagger - Level 25
  (430, 43000, 207, 12, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Honchkrow - Nasty Plot - Level 35
  (430, 43000, 417, 12, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Honchkrow - Foul Play - Level 45
  (430, 43000, 492, 12, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Honchkrow - Night Slash - Level 55
  (430, 43000, 400, 12, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Honchkrow - Quash - Level 65
  (430, 43000, 511, 12, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Honchkrow - Dark Pulse - Level 75
  (430, 43000, 399, 12, NULL, 1, 75, NULL, NULL, NULL, 10),
  -- Honchkrow - Calm Mind - TM04
  (430, 43000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 11),
  -- Honchkrow - Toxic - TM06
  (430, 43000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 12),
  -- Honchkrow - Hidden Power - TM10
  (430, 43000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Honchkrow - Sunny Day - TM11
  (430, 43000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 14),
  -- Honchkrow - Taunt - TM12
  (430, 43000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 15),
  -- Honchkrow - Hyper Beam - TM15
  (430, 43000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 16),
  -- Honchkrow - Protect - TM17
  (430, 43000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Honchkrow - Rain Dance - TM18
  (430, 43000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Honchkrow - Frustration - TM21
  (430, 43000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Honchkrow - Return - TM27
  (430, 43000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Honchkrow - Psychic - TM29
  (430, 43000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 21),
  -- Honchkrow - Shadow Ball - TM30
  (430, 43000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 22),
  -- Honchkrow - Double Team - TM32
  (430, 43000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Honchkrow - Aerial Ace - TM40
  (430, 43000, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 24),
  -- Honchkrow - Torment - TM41
  (430, 43000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 25),
  -- Honchkrow - Facade - TM42
  (430, 43000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Honchkrow - Rest - TM44
  (430, 43000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Honchkrow - Attract - TM45
  (430, 43000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Honchkrow - Thief - TM46
  (430, 43000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 29),
  -- Honchkrow - Round - TM48
  (430, 43000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Honchkrow - Incinerate - TM59
  (430, 43000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 31),
  -- Honchkrow - Quash - TM60
  (430, 43000, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 32),
  -- Honchkrow - Embargo - TM63
  (430, 43000, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 33),
  -- Honchkrow - Payback - TM66
  (430, 43000, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Honchkrow - Retaliate - TM67
  (430, 43000, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Honchkrow - Giga Impact - TM68
  (430, 43000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Honchkrow - Thunder Wave - TM73
  (430, 43000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Honchkrow - Psych Up - TM77
  (430, 43000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Honchkrow - Dream Eater - TM85
  (430, 43000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Honchkrow - Swagger - TM87
  (430, 43000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Honchkrow - Pluck - TM88
  (430, 43000, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 41),
  -- Honchkrow - Substitute - TM90
  (430, 43000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Honchkrow - Snarl - TM95
  (430, 43000, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 43),
  -- Honchkrow - Fly - HM02
  (430, 43000, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 44),
  -- Honchkrow - Dark Pulse - Move Tutor
  (430, 43000, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Honchkrow - Foul Play - Move Tutor
  (430, 43000, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Honchkrow - Heat Wave - Move Tutor
  (430, 43000, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Honchkrow - Icy Wind - Move Tutor
  (430, 43000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Honchkrow - Roost - Move Tutor
  (430, 43000, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Honchkrow - Sky Attack - Move Tutor
  (430, 43000, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Honchkrow - Sleep Talk - Move Tutor
  (430, 43000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Honchkrow - Snatch - Move Tutor
  (430, 43000, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Honchkrow - Spite - Move Tutor
  (430, 43000, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Honchkrow - Superpower - Move Tutor
  (430, 43000, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Honchkrow - Tailwind - Move Tutor
  (430, 43000, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Honchkrow - Uproar - Move Tutor
  (430, 43000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Glameow - Fake Out - Level 1
  (431, 43100, 252, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glameow - Scratch - Level 5
  (431, 43100, 10, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Glameow - Growl - Level 8
  (431, 43100, 45, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Glameow - Hypnosis - Level 13
  (431, 43100, 95, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Glameow - Feint Attack - Level 17
  (431, 43100, 185, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Glameow - Fury Swipes - Level 20
  (431, 43100, 154, 12, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Glameow - Charm - Level 25
  (431, 43100, 204, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glameow - Assist - Level 29
  (431, 43100, 274, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Glameow - Captivate - Level 32
  (431, 43100, 445, 12, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Glameow - Slash - Level 37
  (431, 43100, 163, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Glameow - Sucker Punch - Level 41
  (431, 43100, 389, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Glameow - Attract - Level 44
  (431, 43100, 213, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Glameow - Hone Claws - Level 48
  (431, 43100, 468, 12, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Glameow - Hone Claws - TM01
  (431, 43100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Glameow - Toxic - TM06
  (431, 43100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Glameow - Hidden Power - TM10
  (431, 43100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Glameow - Sunny Day - TM11
  (431, 43100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Glameow - Taunt - TM12
  (431, 43100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Glameow - Protect - TM17
  (431, 43100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Glameow - Rain Dance - TM18
  (431, 43100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Glameow - Frustration - TM21
  (431, 43100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Glameow - Thunderbolt - TM24
  (431, 43100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 22),
  -- Glameow - Thunder - TM25
  (431, 43100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 23),
  -- Glameow - Return - TM27
  (431, 43100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Glameow - Dig - TM28
  (431, 43100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Glameow - Shadow Ball - TM30
  (431, 43100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Glameow - Double Team - TM32
  (431, 43100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Glameow - Aerial Ace - TM40
  (431, 43100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 28),
  -- Glameow - Torment - TM41
  (431, 43100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 29),
  -- Glameow - Facade - TM42
  (431, 43100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Glameow - Rest - TM44
  (431, 43100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Glameow - Attract - TM45
  (431, 43100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Glameow - Thief - TM46
  (431, 43100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Glameow - Round - TM48
  (431, 43100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Glameow - Echoed Voice - TM49
  (431, 43100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 35),
  -- Glameow - Shadow Claw - TM65
  (431, 43100, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 36),
  -- Glameow - Payback - TM66
  (431, 43100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 37),
  -- Glameow - Retaliate - TM67
  (431, 43100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Glameow - Flash - TM70
  (431, 43100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 39),
  -- Glameow - Psych Up - TM77
  (431, 43100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 40),
  -- Glameow - Work Up - TM83
  (431, 43100, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 41),
  -- Glameow - Dream Eater - TM85
  (431, 43100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 42),
  -- Glameow - Swagger - TM87
  (431, 43100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Glameow - U-turn - TM89
  (431, 43100, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 44),
  -- Glameow - Substitute - TM90
  (431, 43100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Glameow - Cut - HM01
  (431, 43100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Glameow - Assurance - Egg Move
  (431, 43100, 372, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Glameow - Bite - Egg Move
  (431, 43100, 44, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Glameow - Fake Tears - Egg Move
  (431, 43100, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Glameow - Flail - Egg Move
  (431, 43100, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glameow - Last Resort - Egg Move
  (431, 43100, 387, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glameow - Quick Attack - Egg Move
  (431, 43100, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glameow - Sand Attack - Egg Move
  (431, 43100, 28, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glameow - Snatch - Egg Move
  (431, 43100, 289, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glameow - Tail Whip - Egg Move
  (431, 43100, 39, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Glameow - Wake-Up Slap - Egg Move
  (431, 43100, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Glameow - Covet - Move Tutor
  (431, 43100, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Glameow - Foul Play - Move Tutor
  (431, 43100, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Glameow - Hyper Voice - Move Tutor
  (431, 43100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Glameow - Iron Tail - Move Tutor
  (431, 43100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Glameow - Knock Off - Move Tutor
  (431, 43100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Glameow - Last Resort - Move Tutor
  (431, 43100, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Glameow - Sleep Talk - Move Tutor
  (431, 43100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Glameow - Snatch - Move Tutor
  (431, 43100, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Glameow - Snore - Move Tutor
  (431, 43100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Glameow - Super Fang - Move Tutor
  (431, 43100, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Purugly - Fake Out - Level 1
  (432, 43200, 252, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purugly - Scratch - Level 1
  (432, 43200, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Purugly - Growl - Level 1
  (432, 43200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Purugly - Scratch - Level 5
  (432, 43200, 10, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Purugly - Growl - Level 8
  (432, 43200, 45, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Purugly - Hypnosis - Level 13
  (432, 43200, 95, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Purugly - Feint Attack - Level 17
  (432, 43200, 185, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Purugly - Fury Swipes - Level 20
  (432, 43200, 154, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Purugly - Charm - Level 25
  (432, 43200, 204, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Purugly - Assist - Level 29
  (432, 43200, 274, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Purugly - Captivate - Level 32
  (432, 43200, 445, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Purugly - Slash - Level 37
  (432, 43200, 163, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Purugly - Swagger - Level 38
  (432, 43200, 207, 12, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Purugly - Body Slam - Level 45
  (432, 43200, 34, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Purugly - Attract - Level 52
  (432, 43200, 213, 12, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Purugly - Hone Claws - Level 60
  (432, 43200, 468, 12, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Purugly - Hone Claws - TM01
  (432, 43200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Purugly - Roar - TM05
  (432, 43200, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 18),
  -- Purugly - Toxic - TM06
  (432, 43200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Purugly - Hidden Power - TM10
  (432, 43200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Purugly - Sunny Day - TM11
  (432, 43200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Purugly - Taunt - TM12
  (432, 43200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Purugly - Hyper Beam - TM15
  (432, 43200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Purugly - Protect - TM17
  (432, 43200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Purugly - Rain Dance - TM18
  (432, 43200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Purugly - Frustration - TM21
  (432, 43200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Purugly - Thunderbolt - TM24
  (432, 43200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Purugly - Thunder - TM25
  (432, 43200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Purugly - Return - TM27
  (432, 43200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Purugly - Dig - TM28
  (432, 43200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Purugly - Shadow Ball - TM30
  (432, 43200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Purugly - Double Team - TM32
  (432, 43200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Purugly - Aerial Ace - TM40
  (432, 43200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Purugly - Torment - TM41
  (432, 43200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Purugly - Facade - TM42
  (432, 43200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Purugly - Rest - TM44
  (432, 43200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Purugly - Attract - TM45
  (432, 43200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Purugly - Thief - TM46
  (432, 43200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Purugly - Round - TM48
  (432, 43200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Purugly - Echoed Voice - TM49
  (432, 43200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 40),
  -- Purugly - Shadow Claw - TM65
  (432, 43200, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 41),
  -- Purugly - Payback - TM66
  (432, 43200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 42),
  -- Purugly - Retaliate - TM67
  (432, 43200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 43),
  -- Purugly - Giga Impact - TM68
  (432, 43200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Purugly - Flash - TM70
  (432, 43200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 45),
  -- Purugly - Psych Up - TM77
  (432, 43200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 46),
  -- Purugly - Bulldoze - TM78
  (432, 43200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 47),
  -- Purugly - Work Up - TM83
  (432, 43200, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 48),
  -- Purugly - Dream Eater - TM85
  (432, 43200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 49),
  -- Purugly - Swagger - TM87
  (432, 43200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Purugly - U-turn - TM89
  (432, 43200, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 51),
  -- Purugly - Substitute - TM90
  (432, 43200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Purugly - Cut - HM01
  (432, 43200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 53),
  -- Purugly - Covet - Move Tutor
  (432, 43200, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Purugly - Foul Play - Move Tutor
  (432, 43200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Purugly - Hyper Voice - Move Tutor
  (432, 43200, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Purugly - Iron Tail - Move Tutor
  (432, 43200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Purugly - Knock Off - Move Tutor
  (432, 43200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Purugly - Last Resort - Move Tutor
  (432, 43200, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Purugly - Sleep Talk - Move Tutor
  (432, 43200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Purugly - Snatch - Move Tutor
  (432, 43200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Purugly - Snore - Move Tutor
  (432, 43200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Purugly - Super Fang - Move Tutor
  (432, 43200, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Chingling - Wrap - Level 1
  (433, 43300, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 6
  (433, 43300, 45, 12, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chingling - Astonish - Level 9
  (433, 43300, 310, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chingling - Confusion - Level 14
  (433, 43300, 93, 12, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chingling - Uproar - Level 17
  (433, 43300, 253, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chingling - Last Resort - Level 22
  (433, 43300, 387, 12, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chingling - Entrainment - Level 25
  (433, 43300, 494, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Chingling - Psyshock - TM03
  (433, 43300, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 8),
  -- Chingling - Calm Mind - TM04
  (433, 43300, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 9),
  -- Chingling - Toxic - TM06
  (433, 43300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 10),
  -- Chingling - Hidden Power - TM10
  (433, 43300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 11),
  -- Chingling - Sunny Day - TM11
  (433, 43300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 12),
  -- Chingling - Taunt - TM12
  (433, 43300, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 13),
  -- Chingling - Light Screen - TM16
  (433, 43300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 14),
  -- Chingling - Protect - TM17
  (433, 43300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 15),
  -- Chingling - Rain Dance - TM18
  (433, 43300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 16),
  -- Chingling - Telekinesis - TM19
  (433, 43300, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 17),
  -- Chingling - Safeguard - TM20
  (433, 43300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 18),
  -- Chingling - Frustration - TM21
  (433, 43300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Chingling - Return - TM27
  (433, 43300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Chingling - Psychic - TM29
  (433, 43300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 21),
  -- Chingling - Shadow Ball - TM30
  (433, 43300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 22),
  -- Chingling - Double Team - TM32
  (433, 43300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Chingling - Reflect - TM33
  (433, 43300, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 24),
  -- Chingling - Torment - TM41
  (433, 43300, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 25),
  -- Chingling - Facade - TM42
  (433, 43300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Chingling - Rest - TM44
  (433, 43300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Chingling - Attract - TM45
  (433, 43300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Chingling - Round - TM48
  (433, 43300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Chingling - Echoed Voice - TM49
  (433, 43300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Chingling - Charge Beam - TM57
  (433, 43300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 31),
  -- Chingling - Flash - TM70
  (433, 43300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Chingling - Thunder Wave - TM73
  (433, 43300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 33),
  -- Chingling - Psych Up - TM77
  (433, 43300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 34),
  -- Chingling - Dream Eater - TM85
  (433, 43300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 35),
  -- Chingling - Grass Knot - TM86
  (433, 43300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 36),
  -- Chingling - Swagger - TM87
  (433, 43300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Chingling - Substitute - TM90
  (433, 43300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Chingling - Trick Room - TM92
  (433, 43300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 39),
  -- Chingling - Curse - Egg Move
  (433, 43300, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chingling - Disable - Egg Move
  (433, 43300, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chingling - Future Sight - Egg Move
  (433, 43300, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chingling - Hypnosis - Egg Move
  (433, 43300, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chingling - Recover - Egg Move
  (433, 43300, 105, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chingling - Skill Swap - Egg Move
  (433, 43300, 285, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chingling - Stored Power - Egg Move
  (433, 43300, 500, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chingling - Wish - Egg Move
  (433, 43300, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chingling - Bind - Move Tutor
  (433, 43300, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Chingling - Gravity - Move Tutor
  (433, 43300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Chingling - Heal Bell - Move Tutor
  (433, 43300, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Chingling - Helping Hand - Move Tutor
  (433, 43300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Chingling - Hyper Voice - Move Tutor
  (433, 43300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Chingling - Icy Wind - Move Tutor
  (433, 43300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Chingling - Knock Off - Move Tutor
  (433, 43300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Chingling - Last Resort - Move Tutor
  (433, 43300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Chingling - Magic Coat - Move Tutor
  (433, 43300, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Chingling - Recycle - Move Tutor
  (433, 43300, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Chingling - Signal Beam - Move Tutor
  (433, 43300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Chingling - Skill Swap - Move Tutor
  (433, 43300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Chingling - Sleep Talk - Move Tutor
  (433, 43300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Chingling - Snatch - Move Tutor
  (433, 43300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Chingling - Snore - Move Tutor
  (433, 43300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Chingling - Trick - Move Tutor
  (433, 43300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Chingling - Uproar - Move Tutor
  (433, 43300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Chingling - Zen Headbutt - Move Tutor
  (433, 43300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Stunky - Scratch - Level 1
  (434, 43400, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Focus Energy - Level 1
  (434, 43400, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunky - Poison Gas - Level 4
  (434, 43400, 139, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Stunky - Screech - Level 7
  (434, 43400, 103, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Stunky - Fury Swipes - Level 10
  (434, 43400, 154, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Stunky - Smokescreen - Level 14
  (434, 43400, 108, 12, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Stunky - Feint - Level 18
  (434, 43400, 364, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Stunky - Slash - Level 22
  (434, 43400, 163, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stunky - Acid Spray - Level 32
  (434, 43400, 491, 12, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Stunky - Night Slash - Level 37
  (434, 43400, 400, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Stunky - Memento - Level 43
  (434, 43400, 262, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Stunky - Explosion - Level 49
  (434, 43400, 153, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Stunky - Hone Claws - TM01
  (434, 43400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Stunky - Roar - TM05
  (434, 43400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Stunky - Toxic - TM06
  (434, 43400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Stunky - Venoshock - TM09
  (434, 43400, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 17),
  -- Stunky - Hidden Power - TM10
  (434, 43400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Stunky - Sunny Day - TM11
  (434, 43400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Stunky - Taunt - TM12
  (434, 43400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Stunky - Protect - TM17
  (434, 43400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Stunky - Rain Dance - TM18
  (434, 43400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Stunky - Frustration - TM21
  (434, 43400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Stunky - Return - TM27
  (434, 43400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Stunky - Dig - TM28
  (434, 43400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Stunky - Shadow Ball - TM30
  (434, 43400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Stunky - Double Team - TM32
  (434, 43400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Stunky - Flamethrower - TM35
  (434, 43400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Stunky - Sludge Bomb - TM36
  (434, 43400, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 29),
  -- Stunky - Fire Blast - TM38
  (434, 43400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Stunky - Torment - TM41
  (434, 43400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Stunky - Facade - TM42
  (434, 43400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Stunky - Rest - TM44
  (434, 43400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Stunky - Attract - TM45
  (434, 43400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Stunky - Thief - TM46
  (434, 43400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Stunky - Round - TM48
  (434, 43400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Stunky - Incinerate - TM59
  (434, 43400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Stunky - Explosion - TM64
  (434, 43400, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 38),
  -- Stunky - Shadow Claw - TM65
  (434, 43400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 39),
  -- Stunky - Payback - TM66
  (434, 43400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Stunky - Swagger - TM87
  (434, 43400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Stunky - Substitute - TM90
  (434, 43400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Stunky - Rock Smash - TM94
  (434, 43400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Stunky - Snarl - TM95
  (434, 43400, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 44),
  -- Stunky - Cut - HM01
  (434, 43400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 45),
  -- Stunky - Astonish - Egg Move
  (434, 43400, 310, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Stunky - Crunch - Egg Move
  (434, 43400, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Stunky - Double-Edge - Egg Move
  (434, 43400, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Stunky - Flame Burst - Egg Move
  (434, 43400, 481, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Stunky - Foul Play - Egg Move
  (434, 43400, 492, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Stunky - Haze - Egg Move
  (434, 43400, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Stunky - Iron Tail - Egg Move
  (434, 43400, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Stunky - Leer - Egg Move
  (434, 43400, 43, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunky - Punishment - Egg Move
  (434, 43400, 386, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunky - Pursuit - Egg Move
  (434, 43400, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Scary Face - Egg Move
  (434, 43400, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Smog - Egg Move
  (434, 43400, 123, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunky - Dark Pulse - Move Tutor
  (434, 43400, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Stunky - Foul Play - Move Tutor
  (434, 43400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Stunky - Iron Tail - Move Tutor
  (434, 43400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Stunky - Sleep Talk - Move Tutor
  (434, 43400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Stunky - Snatch - Move Tutor
  (434, 43400, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Stunky - Snore - Move Tutor
  (434, 43400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Skuntank - Scratch - Level 1
  (435, 43500, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Focus Energy - Level 1
  (435, 43500, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skuntank - Poison Gas - Level 1
  (435, 43500, 139, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skuntank - Poison Gas - Level 4
  (435, 43500, 139, 12, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Skuntank - Screech - Level 7
  (435, 43500, 103, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Skuntank - Fury Swipes - Level 10
  (435, 43500, 154, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Skuntank - Smokescreen - Level 14
  (435, 43500, 108, 12, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Skuntank - Feint - Level 18
  (435, 43500, 364, 12, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Skuntank - Slash - Level 22
  (435, 43500, 163, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skuntank - Acid Spray - Level 32
  (435, 43500, 491, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Skuntank - Flamethrower - Level 34
  (435, 43500, 53, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Skuntank - Night Slash - Level 41
  (435, 43500, 400, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Skuntank - Memento - Level 51
  (435, 43500, 262, 12, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Skuntank - Explosion - Level 61
  (435, 43500, 153, 12, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Skuntank - Hone Claws - TM01
  (435, 43500, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 16),
  -- Skuntank - Roar - TM05
  (435, 43500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Skuntank - Toxic - TM06
  (435, 43500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Skuntank - Venoshock - TM09
  (435, 43500, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Skuntank - Hidden Power - TM10
  (435, 43500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Skuntank - Sunny Day - TM11
  (435, 43500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Skuntank - Taunt - TM12
  (435, 43500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Skuntank - Hyper Beam - TM15
  (435, 43500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Skuntank - Protect - TM17
  (435, 43500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Skuntank - Rain Dance - TM18
  (435, 43500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Skuntank - Frustration - TM21
  (435, 43500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Skuntank - Return - TM27
  (435, 43500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Skuntank - Dig - TM28
  (435, 43500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Skuntank - Shadow Ball - TM30
  (435, 43500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 29),
  -- Skuntank - Double Team - TM32
  (435, 43500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Skuntank - Flamethrower - TM35
  (435, 43500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Skuntank - Sludge Bomb - TM36
  (435, 43500, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Skuntank - Fire Blast - TM38
  (435, 43500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 33),
  -- Skuntank - Torment - TM41
  (435, 43500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Skuntank - Facade - TM42
  (435, 43500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Skuntank - Rest - TM44
  (435, 43500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Skuntank - Attract - TM45
  (435, 43500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Skuntank - Thief - TM46
  (435, 43500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Skuntank - Round - TM48
  (435, 43500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Skuntank - Incinerate - TM59
  (435, 43500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 40),
  -- Skuntank - Explosion - TM64
  (435, 43500, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 41),
  -- Skuntank - Shadow Claw - TM65
  (435, 43500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 42),
  -- Skuntank - Payback - TM66
  (435, 43500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Skuntank - Giga Impact - TM68
  (435, 43500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Skuntank - Poison Jab - TM84
  (435, 43500, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 45),
  -- Skuntank - Swagger - TM87
  (435, 43500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Skuntank - Substitute - TM90
  (435, 43500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Skuntank - Rock Smash - TM94
  (435, 43500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Skuntank - Snarl - TM95
  (435, 43500, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 49),
  -- Skuntank - Cut - HM01
  (435, 43500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 50),
  -- Skuntank - Strength - HM04
  (435, 43500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 51),
  -- Skuntank - Dark Pulse - Move Tutor
  (435, 43500, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Skuntank - Foul Play - Move Tutor
  (435, 43500, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Skuntank - Iron Tail - Move Tutor
  (435, 43500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Skuntank - Sleep Talk - Move Tutor
  (435, 43500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Skuntank - Snatch - Move Tutor
  (435, 43500, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Skuntank - Snore - Move Tutor
  (435, 43500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 1
  (436, 43600, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzor - Hypnosis - Level 5
  (436, 43600, 95, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bronzor - Imprison - Level 9
  (436, 43600, 286, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bronzor - Confuse Ray - Level 11
  (436, 43600, 109, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Bronzor - Psywave - Level 15
  (436, 43600, 149, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bronzor - Iron Defense - Level 19
  (436, 43600, 334, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Bronzor - Feint Attack - Level 21
  (436, 43600, 185, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Bronzor - Safeguard - Level 25
  (436, 43600, 219, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Bronzor - Future Sight - Level 29
  (436, 43600, 248, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bronzor - Metal Sound - Level 31
  (436, 43600, 319, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Bronzor - Gyro Ball - Level 35
  (436, 43600, 360, 12, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Bronzor - Extrasensory - Level 39
  (436, 43600, 326, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Bronzor - Payback - Level 41
  (436, 43600, 371, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Bronzor - Heal Block - Level 45
  (436, 43600, 377, 12, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Bronzor - Heavy Slam - Level 49
  (436, 43600, 484, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Bronzor - Psyshock - TM03
  (436, 43600, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Bronzor - Calm Mind - TM04
  (436, 43600, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Bronzor - Toxic - TM06
  (436, 43600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Bronzor - Hidden Power - TM10
  (436, 43600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Bronzor - Sunny Day - TM11
  (436, 43600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Bronzor - Light Screen - TM16
  (436, 43600, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Bronzor - Protect - TM17
  (436, 43600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Bronzor - Rain Dance - TM18
  (436, 43600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Bronzor - Telekinesis - TM19
  (436, 43600, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Bronzor - Safeguard - TM20
  (436, 43600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Bronzor - Frustration - TM21
  (436, 43600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Bronzor - Solar Beam - TM22
  (436, 43600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Bronzor - Earthquake - TM26
  (436, 43600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Bronzor - Return - TM27
  (436, 43600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Bronzor - Psychic - TM29
  (436, 43600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Bronzor - Shadow Ball - TM30
  (436, 43600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Bronzor - Double Team - TM32
  (436, 43600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Bronzor - Reflect - TM33
  (436, 43600, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 34),
  -- Bronzor - Sandstorm - TM37
  (436, 43600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 35),
  -- Bronzor - Rock Tomb - TM39
  (436, 43600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Bronzor - Facade - TM42
  (436, 43600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Bronzor - Rest - TM44
  (436, 43600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Bronzor - Round - TM48
  (436, 43600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Bronzor - Charge Beam - TM57
  (436, 43600, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 40),
  -- Bronzor - Payback - TM66
  (436, 43600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 41),
  -- Bronzor - Rock Polish - TM69
  (436, 43600, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 42),
  -- Bronzor - Flash - TM70
  (436, 43600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Bronzor - Gyro Ball - TM74
  (436, 43600, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 44),
  -- Bronzor - Psych Up - TM77
  (436, 43600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 45),
  -- Bronzor - Bulldoze - TM78
  (436, 43600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 46),
  -- Bronzor - Rock Slide - TM80
  (436, 43600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 47),
  -- Bronzor - Dream Eater - TM85
  (436, 43600, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 48),
  -- Bronzor - Grass Knot - TM86
  (436, 43600, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 49),
  -- Bronzor - Swagger - TM87
  (436, 43600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Bronzor - Substitute - TM90
  (436, 43600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Bronzor - Flash Cannon - TM91
  (436, 43600, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 52),
  -- Bronzor - Trick Room - TM92
  (436, 43600, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 53),
  -- Bronzor - Gravity - Move Tutor
  (436, 43600, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Bronzor - Iron Defense - Move Tutor
  (436, 43600, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Bronzor - Recycle - Move Tutor
  (436, 43600, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Bronzor - Signal Beam - Move Tutor
  (436, 43600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Bronzor - Skill Swap - Move Tutor
  (436, 43600, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Bronzor - Sleep Talk - Move Tutor
  (436, 43600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Bronzor - Snore - Move Tutor
  (436, 43600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Bronzor - Stealth Rock - Move Tutor
  (436, 43600, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Bronzor - Trick - Move Tutor
  (436, 43600, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Bronzor - Wonder Room - Move Tutor
  (436, 43600, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Bronzong - Sunny Day - Level 1
  (437, 43700, 241, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Rain Dance - Level 1
  (437, 43700, 240, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bronzong - Confusion - Level 1
  (437, 43700, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bronzong - Hypnosis - Level 1
  (437, 43700, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bronzong - Imprison - Level 1
  (437, 43700, 286, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bronzong - Hypnosis - Level 5
  (437, 43700, 95, 12, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Bronzong - Imprison - Level 9
  (437, 43700, 286, 12, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Bronzong - Confuse Ray - Level 11
  (437, 43700, 109, 12, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Bronzong - Psywave - Level 15
  (437, 43700, 149, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Bronzong - Iron Defense - Level 19
  (437, 43700, 334, 12, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Bronzong - Feint Attack - Level 21
  (437, 43700, 185, 12, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Bronzong - Safeguard - Level 25
  (437, 43700, 219, 12, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Bronzong - Future Sight - Level 29
  (437, 43700, 248, 12, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Bronzong - Metal Sound - Level 31
  (437, 43700, 319, 12, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Bronzong - Block - Level 33
  (437, 43700, 335, 12, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Bronzong - Gyro Ball - Level 36
  (437, 43700, 360, 12, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Bronzong - Extrasensory - Level 42
  (437, 43700, 326, 12, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Bronzong - Payback - Level 46
  (437, 43700, 371, 12, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Bronzong - Heal Block - Level 52
  (437, 43700, 377, 12, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Bronzong - Heavy Slam - Level 58
  (437, 43700, 484, 12, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Bronzong - Psyshock - TM03
  (437, 43700, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 22),
  -- Bronzong - Calm Mind - TM04
  (437, 43700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 23),
  -- Bronzong - Toxic - TM06
  (437, 43700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 24),
  -- Bronzong - Hidden Power - TM10
  (437, 43700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Bronzong - Sunny Day - TM11
  (437, 43700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Bronzong - Hyper Beam - TM15
  (437, 43700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Bronzong - Light Screen - TM16
  (437, 43700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 28),
  -- Bronzong - Protect - TM17
  (437, 43700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Bronzong - Rain Dance - TM18
  (437, 43700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Bronzong - Telekinesis - TM19
  (437, 43700, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 31),
  -- Bronzong - Safeguard - TM20
  (437, 43700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 32),
  -- Bronzong - Frustration - TM21
  (437, 43700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Bronzong - Solar Beam - TM22
  (437, 43700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 34),
  -- Bronzong - Earthquake - TM26
  (437, 43700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 35),
  -- Bronzong - Return - TM27
  (437, 43700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 36),
  -- Bronzong - Psychic - TM29
  (437, 43700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 37),
  -- Bronzong - Shadow Ball - TM30
  (437, 43700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 38),
  -- Bronzong - Double Team - TM32
  (437, 43700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 39),
  -- Bronzong - Reflect - TM33
  (437, 43700, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 40),
  -- Bronzong - Sandstorm - TM37
  (437, 43700, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 41),
  -- Bronzong - Rock Tomb - TM39
  (437, 43700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 42),
  -- Bronzong - Facade - TM42
  (437, 43700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 43),
  -- Bronzong - Rest - TM44
  (437, 43700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 44),
  -- Bronzong - Round - TM48
  (437, 43700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 45),
  -- Bronzong - Charge Beam - TM57
  (437, 43700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 46),
  -- Bronzong - Explosion - TM64
  (437, 43700, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 47),
  -- Bronzong - Payback - TM66
  (437, 43700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 48),
  -- Bronzong - Giga Impact - TM68
  (437, 43700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Bronzong - Rock Polish - TM69
  (437, 43700, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 50),
  -- Bronzong - Flash - TM70
  (437, 43700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 51),
  -- Bronzong - Gyro Ball - TM74
  (437, 43700, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 52),
  -- Bronzong - Psych Up - TM77
  (437, 43700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 53),
  -- Bronzong - Bulldoze - TM78
  (437, 43700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 54),
  -- Bronzong - Rock Slide - TM80
  (437, 43700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 55),
  -- Bronzong - Dream Eater - TM85
  (437, 43700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 56),
  -- Bronzong - Grass Knot - TM86
  (437, 43700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 57),
  -- Bronzong - Swagger - TM87
  (437, 43700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Bronzong - Substitute - TM90
  (437, 43700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Bronzong - Flash Cannon - TM91
  (437, 43700, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 60),
  -- Bronzong - Trick Room - TM92
  (437, 43700, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 61),
  -- Bronzong - Rock Smash - TM94
  (437, 43700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 62),
  -- Bronzong - Strength - HM04
  (437, 43700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 63),
  -- Bronzong - Block - Move Tutor
  (437, 43700, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Bronzong - Gravity - Move Tutor
  (437, 43700, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Bronzong - Iron Defense - Move Tutor
  (437, 43700, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Bronzong - Iron Head - Move Tutor
  (437, 43700, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Bronzong - Recycle - Move Tutor
  (437, 43700, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Bronzong - Signal Beam - Move Tutor
  (437, 43700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Bronzong - Skill Swap - Move Tutor
  (437, 43700, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Bronzong - Sleep Talk - Move Tutor
  (437, 43700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Bronzong - Snore - Move Tutor
  (437, 43700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Bronzong - Stealth Rock - Move Tutor
  (437, 43700, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Bronzong - Trick - Move Tutor
  (437, 43700, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Bronzong - Wonder Room - Move Tutor
  (437, 43700, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Bronzong - Zen Headbutt - Move Tutor
  (437, 43700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Bonsly - Fake Tears - Level 1
  (438, 43800, 313, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Level 1
  (438, 43800, 383, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 5
  (438, 43800, 175, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bonsly - Low Kick - Level 8
  (438, 43800, 67, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bonsly - Rock Throw - Level 12
  (438, 43800, 88, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bonsly - Slam - Level 15
  (438, 43800, 21, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bonsly - Feint Attack - Level 19
  (438, 43800, 185, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Bonsly - Rock Tomb - Level 22
  (438, 43800, 317, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Bonsly - Block - Level 26
  (438, 43800, 335, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Bonsly - Rock Slide - Level 29
  (438, 43800, 157, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bonsly - Mimic - Level 33
  (438, 43800, 102, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Bonsly - Sucker Punch - Level 36
  (438, 43800, 389, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bonsly - Double-Edge - Level 40
  (438, 43800, 38, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bonsly - Calm Mind - TM04
  (438, 43800, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Bonsly - Toxic - TM06
  (438, 43800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Bonsly - Hidden Power - TM10
  (438, 43800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Bonsly - Sunny Day - TM11
  (438, 43800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Bonsly - Protect - TM17
  (438, 43800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Bonsly - Frustration - TM21
  (438, 43800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Bonsly - Smack Down - TM23
  (438, 43800, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 20),
  -- Bonsly - Return - TM27
  (438, 43800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Bonsly - Dig - TM28
  (438, 43800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 22),
  -- Bonsly - Brick Break - TM31
  (438, 43800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 23),
  -- Bonsly - Double Team - TM32
  (438, 43800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Bonsly - Sandstorm - TM37
  (438, 43800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 25),
  -- Bonsly - Rock Tomb - TM39
  (438, 43800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 26),
  -- Bonsly - Facade - TM42
  (438, 43800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Bonsly - Rest - TM44
  (438, 43800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Bonsly - Attract - TM45
  (438, 43800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Bonsly - Thief - TM46
  (438, 43800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Bonsly - Round - TM48
  (438, 43800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Bonsly - Explosion - TM64
  (438, 43800, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 32),
  -- Bonsly - Rock Polish - TM69
  (438, 43800, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 33),
  -- Bonsly - Psych Up - TM77
  (438, 43800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 34),
  -- Bonsly - Rock Slide - TM80
  (438, 43800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 35),
  -- Bonsly - Swagger - TM87
  (438, 43800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Bonsly - Substitute - TM90
  (438, 43800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Bonsly - Curse - Egg Move
  (438, 43800, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bonsly - Defense Curl - Egg Move
  (438, 43800, 111, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bonsly - Endure - Egg Move
  (438, 43800, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Bonsly - Harden - Egg Move
  (438, 43800, 106, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bonsly - Headbutt - Egg Move
  (438, 43800, 29, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bonsly - Rollout - Egg Move
  (438, 43800, 205, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bonsly - Sand Tomb - Egg Move
  (438, 43800, 328, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bonsly - Self-Destruct - Egg Move
  (438, 43800, 120, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bonsly - Stealth Rock - Egg Move
  (438, 43800, 446, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bonsly - After You - Move Tutor
  (438, 43800, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Bonsly - Block - Move Tutor
  (438, 43800, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Bonsly - Covet - Move Tutor
  (438, 43800, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Bonsly - Earth Power - Move Tutor
  (438, 43800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Bonsly - Foul Play - Move Tutor
  (438, 43800, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Bonsly - Helping Hand - Move Tutor
  (438, 43800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Bonsly - Low Kick - Move Tutor
  (438, 43800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Bonsly - Role Play - Move Tutor
  (438, 43800, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Bonsly - Sleep Talk - Move Tutor
  (438, 43800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Bonsly - Snore - Move Tutor
  (438, 43800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Bonsly - Stealth Rock - Move Tutor
  (438, 43800, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Bonsly - Uproar - Move Tutor
  (438, 43800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Mime Jr. - Tickle - Level 1
  (439, 43900, 321, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Barrier - Level 1
  (439, 43900, 112, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mime Jr. - Confusion - Level 1
  (439, 43900, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mime Jr. - Copycat - Level 4
  (439, 43900, 383, 12, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Mime Jr. - Meditate - Level 8
  (439, 43900, 96, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Mime Jr. - Double Slap - Level 11
  (439, 43900, 3, 12, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Mime Jr. - Mimic - Level 15
  (439, 43900, 102, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mime Jr. - Encore - Level 18
  (439, 43900, 227, 12, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mime Jr. - Light Screen - Level 22
  (439, 43900, 113, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mime Jr. - Reflect - Level 22
  (439, 43900, 115, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Mime Jr. - Psybeam - Level 25
  (439, 43900, 60, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Mime Jr. - Substitute - Level 29
  (439, 43900, 164, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Mime Jr. - Recycle - Level 32
  (439, 43900, 278, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mime Jr. - Trick - Level 36
  (439, 43900, 271, 12, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mime Jr. - Psychic - Level 39
  (439, 43900, 94, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Mime Jr. - Role Play - Level 43
  (439, 43900, 272, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Mime Jr. - Baton Pass - Level 46
  (439, 43900, 226, 12, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Mime Jr. - Safeguard - Level 50
  (439, 43900, 219, 12, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Mime Jr. - Psyshock - TM03
  (439, 43900, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Mime Jr. - Calm Mind - TM04
  (439, 43900, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Mime Jr. - Toxic - TM06
  (439, 43900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Mime Jr. - Hidden Power - TM10
  (439, 43900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Mime Jr. - Sunny Day - TM11
  (439, 43900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Mime Jr. - Taunt - TM12
  (439, 43900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Mime Jr. - Light Screen - TM16
  (439, 43900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 25),
  -- Mime Jr. - Protect - TM17
  (439, 43900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Mime Jr. - Rain Dance - TM18
  (439, 43900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Mime Jr. - Telekinesis - TM19
  (439, 43900, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 28),
  -- Mime Jr. - Safeguard - TM20
  (439, 43900, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 29),
  -- Mime Jr. - Frustration - TM21
  (439, 43900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Mime Jr. - Solar Beam - TM22
  (439, 43900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 31),
  -- Mime Jr. - Thunderbolt - TM24
  (439, 43900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 32),
  -- Mime Jr. - Thunder - TM25
  (439, 43900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 33),
  -- Mime Jr. - Return - TM27
  (439, 43900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 34),
  -- Mime Jr. - Psychic - TM29
  (439, 43900, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 35),
  -- Mime Jr. - Shadow Ball - TM30
  (439, 43900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 36),
  -- Mime Jr. - Brick Break - TM31
  (439, 43900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 37),
  -- Mime Jr. - Double Team - TM32
  (439, 43900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 38),
  -- Mime Jr. - Reflect - TM33
  (439, 43900, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 39),
  -- Mime Jr. - Torment - TM41
  (439, 43900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 40),
  -- Mime Jr. - Facade - TM42
  (439, 43900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 41),
  -- Mime Jr. - Rest - TM44
  (439, 43900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 42),
  -- Mime Jr. - Attract - TM45
  (439, 43900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 43),
  -- Mime Jr. - Thief - TM46
  (439, 43900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 44),
  -- Mime Jr. - Round - TM48
  (439, 43900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 45),
  -- Mime Jr. - Fling - TM56
  (439, 43900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Mime Jr. - Charge Beam - TM57
  (439, 43900, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 47),
  -- Mime Jr. - Flash - TM70
  (439, 43900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Mime Jr. - Thunder Wave - TM73
  (439, 43900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 49),
  -- Mime Jr. - Psych Up - TM77
  (439, 43900, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Mime Jr. - Dream Eater - TM85
  (439, 43900, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 51),
  -- Mime Jr. - Grass Knot - TM86
  (439, 43900, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 52),
  -- Mime Jr. - Swagger - TM87
  (439, 43900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Mime Jr. - Substitute - TM90
  (439, 43900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Mime Jr. - Trick Room - TM92
  (439, 43900, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 55),
  -- Mime Jr. - Charm - Egg Move
  (439, 43900, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mime Jr. - Confuse Ray - Egg Move
  (439, 43900, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mime Jr. - Fake Out - Egg Move
  (439, 43900, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mime Jr. - Future Sight - Egg Move
  (439, 43900, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mime Jr. - Healing Wish - Egg Move
  (439, 43900, 361, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mime Jr. - Hypnosis - Egg Move
  (439, 43900, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mime Jr. - Icy Wind - Egg Move
  (439, 43900, 196, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mime Jr. - Magic Room - Egg Move
  (439, 43900, 478, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mime Jr. - Mimic - Egg Move
  (439, 43900, 102, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mime Jr. - Nasty Plot - Egg Move
  (439, 43900, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mime Jr. - Power Split - Egg Move
  (439, 43900, 471, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mime Jr. - Teeter Dance - Egg Move
  (439, 43900, 298, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mime Jr. - Trick - Egg Move
  (439, 43900, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mime Jr. - Wake-Up Slap - Egg Move
  (439, 43900, 358, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mime Jr. - Covet - Move Tutor
  (439, 43900, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Mime Jr. - Drain Punch - Move Tutor
  (439, 43900, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Mime Jr. - Helping Hand - Move Tutor
  (439, 43900, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Mime Jr. - Icy Wind - Move Tutor
  (439, 43900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Mime Jr. - Magic Coat - Move Tutor
  (439, 43900, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Mime Jr. - Magic Room - Move Tutor
  (439, 43900, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Mime Jr. - Recycle - Move Tutor
  (439, 43900, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Mime Jr. - Role Play - Move Tutor
  (439, 43900, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Mime Jr. - Signal Beam - Move Tutor
  (439, 43900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Mime Jr. - Skill Swap - Move Tutor
  (439, 43900, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Mime Jr. - Sleep Talk - Move Tutor
  (439, 43900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Mime Jr. - Snatch - Move Tutor
  (439, 43900, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Mime Jr. - Snore - Move Tutor
  (439, 43900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Mime Jr. - Trick - Move Tutor
  (439, 43900, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Mime Jr. - Uproar - Move Tutor
  (439, 43900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Mime Jr. - Wonder Room - Move Tutor
  (439, 43900, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Happiny - Pound - Level 1
  (440, 44000, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Charm - Level 1
  (440, 44000, 204, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Happiny - Copycat - Level 5
  (440, 44000, 383, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Happiny - Refresh - Level 9
  (440, 44000, 287, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Happiny - Sweet Kiss - Level 12
  (440, 44000, 186, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Happiny - Toxic - TM06
  (440, 44000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 6),
  -- Happiny - Hail - TM07
  (440, 44000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 7),
  -- Happiny - Hidden Power - TM10
  (440, 44000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 8),
  -- Happiny - Sunny Day - TM11
  (440, 44000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 9),
  -- Happiny - Light Screen - TM16
  (440, 44000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 10),
  -- Happiny - Protect - TM17
  (440, 44000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 11),
  -- Happiny - Rain Dance - TM18
  (440, 44000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 12),
  -- Happiny - Safeguard - TM20
  (440, 44000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 13),
  -- Happiny - Frustration - TM21
  (440, 44000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 14),
  -- Happiny - Solar Beam - TM22
  (440, 44000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 15),
  -- Happiny - Return - TM27
  (440, 44000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 16),
  -- Happiny - Psychic - TM29
  (440, 44000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 17),
  -- Happiny - Shadow Ball - TM30
  (440, 44000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 18),
  -- Happiny - Double Team - TM32
  (440, 44000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 19),
  -- Happiny - Flamethrower - TM35
  (440, 44000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 20),
  -- Happiny - Fire Blast - TM38
  (440, 44000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 21),
  -- Happiny - Facade - TM42
  (440, 44000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 22),
  -- Happiny - Rest - TM44
  (440, 44000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 23),
  -- Happiny - Attract - TM45
  (440, 44000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 24),
  -- Happiny - Round - TM48
  (440, 44000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 25),
  -- Happiny - Echoed Voice - TM49
  (440, 44000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 26),
  -- Happiny - Fling - TM56
  (440, 44000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 27),
  -- Happiny - Incinerate - TM59
  (440, 44000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 28),
  -- Happiny - Flash - TM70
  (440, 44000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 29),
  -- Happiny - Thunder Wave - TM73
  (440, 44000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 30),
  -- Happiny - Psych Up - TM77
  (440, 44000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 31),
  -- Happiny - Work Up - TM83
  (440, 44000, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 32),
  -- Happiny - Dream Eater - TM85
  (440, 44000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 33),
  -- Happiny - Grass Knot - TM86
  (440, 44000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 34),
  -- Happiny - Swagger - TM87
  (440, 44000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 35),
  -- Happiny - Substitute - TM90
  (440, 44000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Happiny - Aromatherapy - Egg Move
  (440, 44000, 312, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Happiny - Counter - Egg Move
  (440, 44000, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Happiny - Endure - Egg Move
  (440, 44000, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Happiny - Gravity - Egg Move
  (440, 44000, 356, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Happiny - Heal Bell - Egg Move
  (440, 44000, 215, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Happiny - Helping Hand - Egg Move
  (440, 44000, 270, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Happiny - Last Resort - Egg Move
  (440, 44000, 387, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Happiny - Metronome - Egg Move
  (440, 44000, 118, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Happiny - Mud Bomb - Egg Move
  (440, 44000, 426, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Happiny - Natural Gift - Egg Move
  (440, 44000, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Happiny - Present - Egg Move
  (440, 44000, 217, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Happiny - Covet - Move Tutor
  (440, 44000, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Happiny - Drain Punch - Move Tutor
  (440, 44000, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Happiny - Endeavor - Move Tutor
  (440, 44000, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Happiny - Gravity - Move Tutor
  (440, 44000, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Happiny - Heal Bell - Move Tutor
  (440, 44000, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Happiny - Helping Hand - Move Tutor
  (440, 44000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Happiny - Hyper Voice - Move Tutor
  (440, 44000, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Happiny - Icy Wind - Move Tutor
  (440, 44000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Happiny - Last Resort - Move Tutor
  (440, 44000, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Happiny - Recycle - Move Tutor
  (440, 44000, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Happiny - Sleep Talk - Move Tutor
  (440, 44000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Happiny - Snore - Move Tutor
  (440, 44000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Happiny - Uproar - Move Tutor
  (440, 44000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Happiny - Zen Headbutt - Move Tutor
  (440, 44000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Chatot - Peck - Level 1
  (441, 44100, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chatot - Growl - Level 5
  (441, 44100, 45, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Chatot - Mirror Move - Level 9
  (441, 44100, 119, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chatot - Sing - Level 13
  (441, 44100, 47, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Chatot - Fury Attack - Level 17
  (441, 44100, 31, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chatot - Chatter - Level 21
  (441, 44100, 448, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Chatot - Taunt - Level 25
  (441, 44100, 269, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Chatot - Round - Level 29
  (441, 44100, 496, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Chatot - Mimic - Level 33
  (441, 44100, 102, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Chatot - Echoed Voice - Level 37
  (441, 44100, 497, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Chatot - Roost - Level 41
  (441, 44100, 355, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Chatot - Uproar - Level 45
  (441, 44100, 253, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Chatot - Synchronoise - Level 49
  (441, 44100, 485, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Chatot - Feather Dance - Level 53
  (441, 44100, 297, 12, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Chatot - Hyper Voice - Level 57
  (441, 44100, 304, 12, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Chatot - Toxic - TM06
  (441, 44100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Chatot - Hidden Power - TM10
  (441, 44100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Chatot - Sunny Day - TM11
  (441, 44100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Chatot - Taunt - TM12
  (441, 44100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 19),
  -- Chatot - Protect - TM17
  (441, 44100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Chatot - Rain Dance - TM18
  (441, 44100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Chatot - Frustration - TM21
  (441, 44100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Chatot - Return - TM27
  (441, 44100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Chatot - Double Team - TM32
  (441, 44100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Chatot - Aerial Ace - TM40
  (441, 44100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 25),
  -- Chatot - Torment - TM41
  (441, 44100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 26),
  -- Chatot - Facade - TM42
  (441, 44100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Chatot - Rest - TM44
  (441, 44100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Chatot - Attract - TM45
  (441, 44100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Chatot - Thief - TM46
  (441, 44100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Chatot - Round - TM48
  (441, 44100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Chatot - Echoed Voice - TM49
  (441, 44100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 32),
  -- Chatot - Work Up - TM83
  (441, 44100, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 33),
  -- Chatot - Swagger - TM87
  (441, 44100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Chatot - Pluck - TM88
  (441, 44100, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 35),
  -- Chatot - U-turn - TM89
  (441, 44100, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 36),
  -- Chatot - Substitute - TM90
  (441, 44100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Chatot - Fly - HM02
  (441, 44100, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 38),
  -- Chatot - Agility - Egg Move
  (441, 44100, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Chatot - Air Cutter - Egg Move
  (441, 44100, 314, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chatot - Defog - Egg Move
  (441, 44100, 432, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chatot - Encore - Egg Move
  (441, 44100, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chatot - Nasty Plot - Egg Move
  (441, 44100, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chatot - Night Shade - Egg Move
  (441, 44100, 101, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chatot - Sleep Talk - Egg Move
  (441, 44100, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chatot - Steel Wing - Egg Move
  (441, 44100, 211, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chatot - Supersonic - Egg Move
  (441, 44100, 48, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chatot - Heat Wave - Move Tutor
  (441, 44100, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Chatot - Hyper Voice - Move Tutor
  (441, 44100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Chatot - Role Play - Move Tutor
  (441, 44100, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Chatot - Roost - Move Tutor
  (441, 44100, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Chatot - Sky Attack - Move Tutor
  (441, 44100, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Chatot - Sleep Talk - Move Tutor
  (441, 44100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Chatot - Snore - Move Tutor
  (441, 44100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Chatot - Tailwind - Move Tutor
  (441, 44100, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Chatot - Uproar - Move Tutor
  (441, 44100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Spiritomb - Curse - Level 1
  (442, 44200, 174, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Pursuit - Level 1
  (442, 44200, 228, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spiritomb - Confuse Ray - Level 1
  (442, 44200, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spiritomb - Spite - Level 1
  (442, 44200, 180, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spiritomb - Shadow Sneak - Level 1
  (442, 44200, 425, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Spiritomb - Feint Attack - Level 7
  (442, 44200, 185, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Spiritomb - Hypnosis - Level 13
  (442, 44200, 95, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Spiritomb - Dream Eater - Level 19
  (442, 44200, 138, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Spiritomb - Ominous Wind - Level 25
  (442, 44200, 466, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Spiritomb - Sucker Punch - Level 31
  (442, 44200, 389, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Spiritomb - Nasty Plot - Level 37
  (442, 44200, 417, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spiritomb - Memento - Level 43
  (442, 44200, 262, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spiritomb - Dark Pulse - Level 49
  (442, 44200, 399, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spiritomb - Calm Mind - TM04
  (442, 44200, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Spiritomb - Toxic - TM06
  (442, 44200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Spiritomb - Hidden Power - TM10
  (442, 44200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Spiritomb - Sunny Day - TM11
  (442, 44200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Spiritomb - Taunt - TM12
  (442, 44200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Spiritomb - Hyper Beam - TM15
  (442, 44200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Spiritomb - Protect - TM17
  (442, 44200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Spiritomb - Rain Dance - TM18
  (442, 44200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Spiritomb - Telekinesis - TM19
  (442, 44200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 22),
  -- Spiritomb - Frustration - TM21
  (442, 44200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Spiritomb - Return - TM27
  (442, 44200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Spiritomb - Psychic - TM29
  (442, 44200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 25),
  -- Spiritomb - Shadow Ball - TM30
  (442, 44200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Spiritomb - Double Team - TM32
  (442, 44200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Spiritomb - Rock Tomb - TM39
  (442, 44200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 28),
  -- Spiritomb - Torment - TM41
  (442, 44200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 29),
  -- Spiritomb - Facade - TM42
  (442, 44200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Spiritomb - Rest - TM44
  (442, 44200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Spiritomb - Attract - TM45
  (442, 44200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Spiritomb - Thief - TM46
  (442, 44200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Spiritomb - Round - TM48
  (442, 44200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Spiritomb - Quash - TM60
  (442, 44200, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 35),
  -- Spiritomb - Will-O-Wisp - TM61
  (442, 44200, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 36),
  -- Spiritomb - Embargo - TM63
  (442, 44200, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 37),
  -- Spiritomb - Retaliate - TM67
  (442, 44200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Spiritomb - Giga Impact - TM68
  (442, 44200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Spiritomb - Flash - TM70
  (442, 44200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 40),
  -- Spiritomb - Psych Up - TM77
  (442, 44200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 41),
  -- Spiritomb - Dream Eater - TM85
  (442, 44200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 42),
  -- Spiritomb - Swagger - TM87
  (442, 44200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Spiritomb - Substitute - TM90
  (442, 44200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Spiritomb - Snarl - TM95
  (442, 44200, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 45),
  -- Spiritomb - Captivate - Egg Move
  (442, 44200, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spiritomb - Destiny Bond - Egg Move
  (442, 44200, 194, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spiritomb - Grudge - Egg Move
  (442, 44200, 288, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spiritomb - Imprison - Egg Move
  (442, 44200, 286, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spiritomb - Nightmare - Egg Move
  (442, 44200, 171, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spiritomb - Pain Split - Egg Move
  (442, 44200, 220, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spiritomb - Shadow Sneak - Egg Move
  (442, 44200, 425, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spiritomb - Smokescreen - Egg Move
  (442, 44200, 108, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spiritomb - Dark Pulse - Move Tutor
  (442, 44200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Spiritomb - Foul Play - Move Tutor
  (442, 44200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Spiritomb - Icy Wind - Move Tutor
  (442, 44200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Spiritomb - Pain Split - Move Tutor
  (442, 44200, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Spiritomb - Sleep Talk - Move Tutor
  (442, 44200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Spiritomb - Snatch - Move Tutor
  (442, 44200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Spiritomb - Snore - Move Tutor
  (442, 44200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Spiritomb - Spite - Move Tutor
  (442, 44200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Spiritomb - Trick - Move Tutor
  (442, 44200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Spiritomb - Uproar - Move Tutor
  (442, 44200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Spiritomb - Wonder Room - Move Tutor
  (442, 44200, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Attack - Level 3
  (443, 44300, 28, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gible - Dragon Rage - Level 7
  (443, 44300, 82, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gible - Sandstorm - Level 13
  (443, 44300, 201, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Gible - Take Down - Level 15
  (443, 44300, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gible - Sand Tomb - Level 19
  (443, 44300, 328, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 25
  (443, 44300, 163, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 27
  (443, 44300, 337, 12, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 31
  (443, 44300, 91, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gible - Dragon Rush - Level 37
  (443, 44300, 407, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Gible - Hone Claws - TM01
  (443, 44300, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 11),
  -- Gible - Dragon Claw - TM02
  (443, 44300, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 12),
  -- Gible - Roar - TM05
  (443, 44300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 13),
  -- Gible - Toxic - TM06
  (443, 44300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Gible - Hidden Power - TM10
  (443, 44300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Gible - Sunny Day - TM11
  (443, 44300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Gible - Protect - TM17
  (443, 44300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Gible - Rain Dance - TM18
  (443, 44300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Gible - Frustration - TM21
  (443, 44300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Gible - Earthquake - TM26
  (443, 44300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 20),
  -- Gible - Return - TM27
  (443, 44300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Gible - Dig - TM28
  (443, 44300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 22),
  -- Gible - Double Team - TM32
  (443, 44300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Gible - Flamethrower - TM35
  (443, 44300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 24),
  -- Gible - Sandstorm - TM37
  (443, 44300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 25),
  -- Gible - Fire Blast - TM38
  (443, 44300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 26),
  -- Gible - Rock Tomb - TM39
  (443, 44300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 27),
  -- Gible - Aerial Ace - TM40
  (443, 44300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 28),
  -- Gible - Facade - TM42
  (443, 44300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Gible - Rest - TM44
  (443, 44300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Gible - Attract - TM45
  (443, 44300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Gible - Round - TM48
  (443, 44300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Gible - Incinerate - TM59
  (443, 44300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 33),
  -- Gible - Shadow Claw - TM65
  (443, 44300, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 34),
  -- Gible - Stone Edge - TM71
  (443, 44300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 35),
  -- Gible - Bulldoze - TM78
  (443, 44300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 36),
  -- Gible - Rock Slide - TM80
  (443, 44300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 37),
  -- Gible - Swagger - TM87
  (443, 44300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Gible - Substitute - TM90
  (443, 44300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Gible - Rock Smash - TM94
  (443, 44300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 40),
  -- Gible - Cut - HM01
  (443, 44300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 41),
  -- Gible - Strength - HM04
  (443, 44300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 42),
  -- Gible - Body Slam - Egg Move
  (443, 44300, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gible - Double-Edge - Egg Move
  (443, 44300, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gible - Dragon Breath - Egg Move
  (443, 44300, 225, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gible - Iron Head - Egg Move
  (443, 44300, 442, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gible - Iron Tail - Egg Move
  (443, 44300, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gible - Metal Claw - Egg Move
  (443, 44300, 232, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gible - Mud Shot - Egg Move
  (443, 44300, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gible - Outrage - Egg Move
  (443, 44300, 200, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gible - Rock Climb - Egg Move
  (443, 44300, 431, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gible - Sand Tomb - Egg Move
  (443, 44300, 328, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gible - Scary Face - Egg Move
  (443, 44300, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gible - Thrash - Egg Move
  (443, 44300, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gible - Twister - Egg Move
  (443, 44300, 239, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gible - Draco Meteor - Move Tutor
  (443, 44300, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Gible - Dragon Pulse - Move Tutor
  (443, 44300, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Gible - Earth Power - Move Tutor
  (443, 44300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Gible - Iron Head - Move Tutor
  (443, 44300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Gible - Iron Tail - Move Tutor
  (443, 44300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Gible - Outrage - Move Tutor
  (443, 44300, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Gible - Sleep Talk - Move Tutor
  (443, 44300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Gible - Snore - Move Tutor
  (443, 44300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Gible - Stealth Rock - Move Tutor
  (443, 44300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Sand Attack - Level 1
  (444, 44400, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Sand Attack - Level 3
  (444, 44400, 28, 12, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Gabite - Dragon Rage - Level 7
  (444, 44400, 82, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Gabite - Sandstorm - Level 13
  (444, 44400, 201, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gabite - Take Down - Level 15
  (444, 44400, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gabite - Sand Tomb - Level 19
  (444, 44400, 328, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gabite - Dual Chop - Level 24
  (444, 44400, 530, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gabite - Slash - Level 28
  (444, 44400, 163, 12, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gabite - Dragon Claw - Level 33
  (444, 44400, 337, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Gabite - Dig - Level 40
  (444, 44400, 91, 12, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gabite - Dragon Rush - Level 49
  (444, 44400, 407, 12, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Gabite - Hone Claws - TM01
  (444, 44400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 13),
  -- Gabite - Dragon Claw - TM02
  (444, 44400, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 14),
  -- Gabite - Roar - TM05
  (444, 44400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Gabite - Toxic - TM06
  (444, 44400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Gabite - Hidden Power - TM10
  (444, 44400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Gabite - Sunny Day - TM11
  (444, 44400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Gabite - Protect - TM17
  (444, 44400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Gabite - Rain Dance - TM18
  (444, 44400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Gabite - Frustration - TM21
  (444, 44400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Gabite - Earthquake - TM26
  (444, 44400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 22),
  -- Gabite - Return - TM27
  (444, 44400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Gabite - Dig - TM28
  (444, 44400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 24),
  -- Gabite - Double Team - TM32
  (444, 44400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Gabite - Flamethrower - TM35
  (444, 44400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 26),
  -- Gabite - Sandstorm - TM37
  (444, 44400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 27),
  -- Gabite - Fire Blast - TM38
  (444, 44400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 28),
  -- Gabite - Rock Tomb - TM39
  (444, 44400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Gabite - Aerial Ace - TM40
  (444, 44400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Gabite - Facade - TM42
  (444, 44400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Gabite - Rest - TM44
  (444, 44400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Gabite - Attract - TM45
  (444, 44400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Gabite - Round - TM48
  (444, 44400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Gabite - Incinerate - TM59
  (444, 44400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 35),
  -- Gabite - Shadow Claw - TM65
  (444, 44400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 36),
  -- Gabite - Stone Edge - TM71
  (444, 44400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 37),
  -- Gabite - Bulldoze - TM78
  (444, 44400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 38),
  -- Gabite - Rock Slide - TM80
  (444, 44400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 39),
  -- Gabite - Swagger - TM87
  (444, 44400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Gabite - Substitute - TM90
  (444, 44400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Gabite - Rock Smash - TM94
  (444, 44400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Gabite - Cut - HM01
  (444, 44400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 43),
  -- Gabite - Strength - HM04
  (444, 44400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Gabite - Draco Meteor - Move Tutor
  (444, 44400, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Gabite - Dragon Pulse - Move Tutor
  (444, 44400, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Gabite - Dual Chop - Move Tutor
  (444, 44400, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Gabite - Earth Power - Move Tutor
  (444, 44400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Gabite - Iron Head - Move Tutor
  (444, 44400, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Gabite - Iron Tail - Move Tutor
  (444, 44400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Gabite - Outrage - Move Tutor
  (444, 44400, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Gabite - Sleep Talk - Move Tutor
  (444, 44400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Gabite - Snore - Move Tutor
  (444, 44400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Gabite - Stealth Rock - Move Tutor
  (444, 44400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Garchomp - Fire Fang - Level 1
  (445, 44500, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Sand Attack - Level 1
  (445, 44500, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garchomp - Dragon Rage - Level 1
  (445, 44500, 82, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garchomp - Sandstorm - Level 1
  (445, 44500, 201, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garchomp - Sand Attack - Level 3
  (445, 44500, 28, 12, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Garchomp - Dragon Rage - Level 7
  (445, 44500, 82, 12, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Garchomp - Sandstorm - Level 13
  (445, 44500, 201, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Garchomp - Take Down - Level 15
  (445, 44500, 36, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Garchomp - Sand Tomb - Level 19
  (445, 44500, 328, 12, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Garchomp - Dual Chop - Level 24
  (445, 44500, 530, 12, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Garchomp - Slash - Level 28
  (445, 44500, 163, 12, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Garchomp - Dragon Claw - Level 33
  (445, 44500, 337, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Garchomp - Dig - Level 40
  (445, 44500, 91, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Garchomp - Crunch - Level 48
  (445, 44500, 242, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Garchomp - Dragon Rush - Level 55
  (445, 44500, 407, 12, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Garchomp - Hone Claws - TM01
  (445, 44500, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Garchomp - Dragon Claw - TM02
  (445, 44500, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 18),
  -- Garchomp - Roar - TM05
  (445, 44500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Garchomp - Toxic - TM06
  (445, 44500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Garchomp - Hidden Power - TM10
  (445, 44500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Garchomp - Sunny Day - TM11
  (445, 44500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Garchomp - Hyper Beam - TM15
  (445, 44500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Garchomp - Protect - TM17
  (445, 44500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Garchomp - Rain Dance - TM18
  (445, 44500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Garchomp - Frustration - TM21
  (445, 44500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Garchomp - Earthquake - TM26
  (445, 44500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Garchomp - Return - TM27
  (445, 44500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Garchomp - Dig - TM28
  (445, 44500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 29),
  -- Garchomp - Brick Break - TM31
  (445, 44500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 30),
  -- Garchomp - Double Team - TM32
  (445, 44500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Garchomp - Flamethrower - TM35
  (445, 44500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 32),
  -- Garchomp - Sandstorm - TM37
  (445, 44500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 33),
  -- Garchomp - Fire Blast - TM38
  (445, 44500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 34),
  -- Garchomp - Rock Tomb - TM39
  (445, 44500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Garchomp - Aerial Ace - TM40
  (445, 44500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 36),
  -- Garchomp - Facade - TM42
  (445, 44500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Garchomp - Rest - TM44
  (445, 44500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Garchomp - Attract - TM45
  (445, 44500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 39),
  -- Garchomp - Round - TM48
  (445, 44500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Garchomp - False Swipe - TM54
  (445, 44500, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 41),
  -- Garchomp - Fling - TM56
  (445, 44500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Garchomp - Incinerate - TM59
  (445, 44500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Garchomp - Shadow Claw - TM65
  (445, 44500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 44),
  -- Garchomp - Giga Impact - TM68
  (445, 44500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Garchomp - Stone Edge - TM71
  (445, 44500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 46),
  -- Garchomp - Swords Dance - TM75
  (445, 44500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 47),
  -- Garchomp - Bulldoze - TM78
  (445, 44500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Garchomp - Rock Slide - TM80
  (445, 44500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Garchomp - Dragon Tail - TM82
  (445, 44500, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 50),
  -- Garchomp - Poison Jab - TM84
  (445, 44500, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 51),
  -- Garchomp - Swagger - TM87
  (445, 44500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Garchomp - Substitute - TM90
  (445, 44500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Garchomp - Rock Smash - TM94
  (445, 44500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Garchomp - Cut - HM01
  (445, 44500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 55),
  -- Garchomp - Surf - HM03
  (445, 44500, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 56),
  -- Garchomp - Strength - HM04
  (445, 44500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 57),
  -- Garchomp - Aqua Tail - Move Tutor
  (445, 44500, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Garchomp - Draco Meteor - Move Tutor
  (445, 44500, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Garchomp - Dragon Pulse - Move Tutor
  (445, 44500, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Garchomp - Dual Chop - Move Tutor
  (445, 44500, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Garchomp - Earth Power - Move Tutor
  (445, 44500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Garchomp - Iron Head - Move Tutor
  (445, 44500, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Garchomp - Iron Tail - Move Tutor
  (445, 44500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Garchomp - Outrage - Move Tutor
  (445, 44500, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Garchomp - Sleep Talk - Move Tutor
  (445, 44500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Garchomp - Snore - Move Tutor
  (445, 44500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Garchomp - Stealth Rock - Move Tutor
  (445, 44500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Munchlax - Metronome - Level 1
  (446, 44600, 118, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Odor Sleuth - Level 1
  (446, 44600, 316, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munchlax - Tackle - Level 1
  (446, 44600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 12, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Munchlax - Amnesia - Level 9
  (446, 44600, 133, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Munchlax - Lick - Level 12
  (446, 44600, 122, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Munchlax - Recycle - Level 17
  (446, 44600, 278, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Munchlax - Screech - Level 20
  (446, 44600, 103, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Munchlax - Chip Away - Level 25
  (446, 44600, 498, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Munchlax - Stockpile - Level 28
  (446, 44600, 254, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Munchlax - Swallow - Level 33
  (446, 44600, 256, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Munchlax - Body Slam - Level 36
  (446, 44600, 34, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Munchlax - Fling - Level 41
  (446, 44600, 374, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Munchlax - Rollout - Level 44
  (446, 44600, 205, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Munchlax - Natural Gift - Level 49
  (446, 44600, 363, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Munchlax - Snatch - Level 52
  (446, 44600, 289, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Munchlax - Last Resort - Level 57
  (446, 44600, 387, 12, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Munchlax - Toxic - TM06
  (446, 44600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Munchlax - Hidden Power - TM10
  (446, 44600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Munchlax - Sunny Day - TM11
  (446, 44600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Munchlax - Ice Beam - TM13
  (446, 44600, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Munchlax - Blizzard - TM14
  (446, 44600, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Munchlax - Protect - TM17
  (446, 44600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Munchlax - Rain Dance - TM18
  (446, 44600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Munchlax - Frustration - TM21
  (446, 44600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Munchlax - Solar Beam - TM22
  (446, 44600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Munchlax - Thunderbolt - TM24
  (446, 44600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Munchlax - Thunder - TM25
  (446, 44600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Munchlax - Earthquake - TM26
  (446, 44600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Munchlax - Return - TM27
  (446, 44600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Munchlax - Psychic - TM29
  (446, 44600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Munchlax - Shadow Ball - TM30
  (446, 44600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Munchlax - Brick Break - TM31
  (446, 44600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Munchlax - Double Team - TM32
  (446, 44600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Munchlax - Flamethrower - TM35
  (446, 44600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 35),
  -- Munchlax - Sandstorm - TM37
  (446, 44600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 36),
  -- Munchlax - Fire Blast - TM38
  (446, 44600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 37),
  -- Munchlax - Rock Tomb - TM39
  (446, 44600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 38),
  -- Munchlax - Facade - TM42
  (446, 44600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Munchlax - Rest - TM44
  (446, 44600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Munchlax - Attract - TM45
  (446, 44600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Munchlax - Round - TM48
  (446, 44600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Munchlax - Fling - TM56
  (446, 44600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Munchlax - Incinerate - TM59
  (446, 44600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 44),
  -- Munchlax - Retaliate - TM67
  (446, 44600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 45),
  -- Munchlax - Bulldoze - TM78
  (446, 44600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 46),
  -- Munchlax - Rock Slide - TM80
  (446, 44600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 47),
  -- Munchlax - Work Up - TM83
  (446, 44600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 48),
  -- Munchlax - Swagger - TM87
  (446, 44600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Munchlax - Substitute - TM90
  (446, 44600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Munchlax - Rock Smash - TM94
  (446, 44600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 51),
  -- Munchlax - Surf - HM03
  (446, 44600, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 52),
  -- Munchlax - Strength - HM04
  (446, 44600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 53),
  -- Munchlax - After You - Egg Move
  (446, 44600, 495, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Munchlax - Charm - Egg Move
  (446, 44600, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Munchlax - Counter - Egg Move
  (446, 44600, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Munchlax - Curse - Egg Move
  (446, 44600, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Munchlax - Double-Edge - Egg Move
  (446, 44600, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Munchlax - Lick - Egg Move
  (446, 44600, 122, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munchlax - Natural Gift - Egg Move
  (446, 44600, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munchlax - Pursuit - Egg Move
  (446, 44600, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Munchlax - Self-Destruct - Egg Move
  (446, 44600, 120, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Munchlax - Whirlwind - Egg Move
  (446, 44600, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Munchlax - Zen Headbutt - Egg Move
  (446, 44600, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Munchlax - After You - Move Tutor
  (446, 44600, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Munchlax - Covet - Move Tutor
  (446, 44600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Munchlax - Fire Punch - Move Tutor
  (446, 44600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Munchlax - Gunk Shot - Move Tutor
  (446, 44600, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Munchlax - Hyper Voice - Move Tutor
  (446, 44600, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Munchlax - Ice Punch - Move Tutor
  (446, 44600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Munchlax - Icy Wind - Move Tutor
  (446, 44600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Munchlax - Last Resort - Move Tutor
  (446, 44600, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Munchlax - Recycle - Move Tutor
  (446, 44600, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Munchlax - Seed Bomb - Move Tutor
  (446, 44600, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Munchlax - Sleep Talk - Move Tutor
  (446, 44600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Munchlax - Snatch - Move Tutor
  (446, 44600, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Munchlax - Snore - Move Tutor
  (446, 44600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Munchlax - Superpower - Move Tutor
  (446, 44600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Munchlax - Thunder Punch - Move Tutor
  (446, 44600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Munchlax - Uproar - Move Tutor
  (446, 44600, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Munchlax - Zen Headbutt - Move Tutor
  (446, 44600, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Riolu - Foresight - Level 1
  (447, 44700, 193, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Riolu - Counter - Level 6
  (447, 44700, 68, 12, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Riolu - Feint - Level 11
  (447, 44700, 364, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Riolu - Force Palm - Level 15
  (447, 44700, 395, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Riolu - Copycat - Level 19
  (447, 44700, 383, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Riolu - Screech - Level 24
  (447, 44700, 103, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Reversal - Level 29
  (447, 44700, 179, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Riolu - Nasty Plot - Level 47
  (447, 44700, 417, 12, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Riolu - Final Gambit - Level 55
  (447, 44700, 515, 12, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Riolu - Roar - TM05
  (447, 44700, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 12),
  -- Riolu - Toxic - TM06
  (447, 44700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Riolu - Bulk Up - TM08
  (447, 44700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 14),
  -- Riolu - Hidden Power - TM10
  (447, 44700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Riolu - Sunny Day - TM11
  (447, 44700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Riolu - Protect - TM17
  (447, 44700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Riolu - Rain Dance - TM18
  (447, 44700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Riolu - Frustration - TM21
  (447, 44700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Riolu - Earthquake - TM26
  (447, 44700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 20),
  -- Riolu - Return - TM27
  (447, 44700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Riolu - Dig - TM28
  (447, 44700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 22),
  -- Riolu - Brick Break - TM31
  (447, 44700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 23),
  -- Riolu - Double Team - TM32
  (447, 44700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Riolu - Rock Tomb - TM39
  (447, 44700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 25),
  -- Riolu - Facade - TM42
  (447, 44700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Riolu - Rest - TM44
  (447, 44700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Riolu - Attract - TM45
  (447, 44700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Riolu - Low Sweep - TM47
  (447, 44700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 29),
  -- Riolu - Round - TM48
  (447, 44700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Riolu - Focus Blast - TM52
  (447, 44700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 31),
  -- Riolu - Fling - TM56
  (447, 44700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 32),
  -- Riolu - Shadow Claw - TM65
  (447, 44700, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 33),
  -- Riolu - Payback - TM66
  (447, 44700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Riolu - Retaliate - TM67
  (447, 44700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Riolu - Swords Dance - TM75
  (447, 44700, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 36),
  -- Riolu - Bulldoze - TM78
  (447, 44700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 37),
  -- Riolu - Rock Slide - TM80
  (447, 44700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 38),
  -- Riolu - Work Up - TM83
  (447, 44700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 39),
  -- Riolu - Poison Jab - TM84
  (447, 44700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 40),
  -- Riolu - Swagger - TM87
  (447, 44700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Riolu - Substitute - TM90
  (447, 44700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Riolu - Rock Smash - TM94
  (447, 44700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Riolu - Strength - HM04
  (447, 44700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Riolu - Agility - Egg Move
  (447, 44700, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Riolu - Bite - Egg Move
  (447, 44700, 44, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Riolu - Blaze Kick - Egg Move
  (447, 44700, 299, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Riolu - Bullet Punch - Egg Move
  (447, 44700, 418, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Riolu - Circle Throw - Egg Move
  (447, 44700, 509, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Riolu - Cross Chop - Egg Move
  (447, 44700, 238, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Riolu - Crunch - Egg Move
  (447, 44700, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Riolu - Detect - Egg Move
  (447, 44700, 197, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Riolu - Follow Me - Egg Move
  (447, 44700, 266, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Riolu - High Jump Kick - Egg Move
  (447, 44700, 136, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Riolu - Iron Defense - Egg Move
  (447, 44700, 334, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Riolu - Low Kick - Egg Move
  (447, 44700, 67, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Riolu - Mind Reader - Egg Move
  (447, 44700, 170, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Riolu - Sky Uppercut - Egg Move
  (447, 44700, 327, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Riolu - Vacuum Wave - Egg Move
  (447, 44700, 410, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Riolu - Drain Punch - Move Tutor
  (447, 44700, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Riolu - Dual Chop - Move Tutor
  (447, 44700, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Riolu - Helping Hand - Move Tutor
  (447, 44700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Riolu - Ice Punch - Move Tutor
  (447, 44700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Riolu - Iron Defense - Move Tutor
  (447, 44700, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Riolu - Iron Tail - Move Tutor
  (447, 44700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Riolu - Low Kick - Move Tutor
  (447, 44700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Riolu - Magnet Rise - Move Tutor
  (447, 44700, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Riolu - Role Play - Move Tutor
  (447, 44700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Riolu - Sleep Talk - Move Tutor
  (447, 44700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Riolu - Snore - Move Tutor
  (447, 44700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Riolu - Thunder Punch - Move Tutor
  (447, 44700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Riolu - Zen Headbutt - Move Tutor
  (447, 44700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Lucario - Dark Pulse - Level 1
  (448, 44800, 399, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Foresight - Level 1
  (448, 44800, 193, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Detect - Level 1
  (448, 44800, 197, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Metal Claw - Level 1
  (448, 44800, 232, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lucario - Counter - Level 6
  (448, 44800, 68, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Lucario - Feint - Level 11
  (448, 44800, 364, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Lucario - Force Palm - Level 15
  (448, 44800, 395, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Lucario - Me First - Level 19
  (448, 44800, 382, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Lucario - Metal Sound - Level 24
  (448, 44800, 319, 12, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Lucario - Bone Rush - Level 29
  (448, 44800, 198, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Lucario - Quick Guard - Level 33
  (448, 44800, 501, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lucario - Swords Dance - Level 37
  (448, 44800, 14, 12, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Lucario - Heal Pulse - Level 42
  (448, 44800, 505, 12, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Lucario - Calm Mind - Level 47
  (448, 44800, 347, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Lucario - Aura Sphere - Level 51
  (448, 44800, 396, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Lucario - Close Combat - Level 55
  (448, 44800, 370, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Lucario - Dragon Pulse - Level 60
  (448, 44800, 406, 12, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Lucario - Extreme Speed - Level 65
  (448, 44800, 245, 12, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Lucario - Hone Claws - TM01
  (448, 44800, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 20),
  -- Lucario - Calm Mind - TM04
  (448, 44800, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 21),
  -- Lucario - Roar - TM05
  (448, 44800, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 22),
  -- Lucario - Toxic - TM06
  (448, 44800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Lucario - Bulk Up - TM08
  (448, 44800, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 24),
  -- Lucario - Hidden Power - TM10
  (448, 44800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Lucario - Sunny Day - TM11
  (448, 44800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Lucario - Hyper Beam - TM15
  (448, 44800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Lucario - Protect - TM17
  (448, 44800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Lucario - Rain Dance - TM18
  (448, 44800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Lucario - Frustration - TM21
  (448, 44800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Lucario - Earthquake - TM26
  (448, 44800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Lucario - Return - TM27
  (448, 44800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Lucario - Dig - TM28
  (448, 44800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Lucario - Psychic - TM29
  (448, 44800, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 34),
  -- Lucario - Shadow Ball - TM30
  (448, 44800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 35),
  -- Lucario - Brick Break - TM31
  (448, 44800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 36),
  -- Lucario - Double Team - TM32
  (448, 44800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 37),
  -- Lucario - Rock Tomb - TM39
  (448, 44800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 38),
  -- Lucario - Facade - TM42
  (448, 44800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Lucario - Rest - TM44
  (448, 44800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Lucario - Attract - TM45
  (448, 44800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Lucario - Low Sweep - TM47
  (448, 44800, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 42),
  -- Lucario - Round - TM48
  (448, 44800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Lucario - Focus Blast - TM52
  (448, 44800, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Lucario - Fling - TM56
  (448, 44800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Lucario - Shadow Claw - TM65
  (448, 44800, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 46),
  -- Lucario - Payback - TM66
  (448, 44800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 47),
  -- Lucario - Retaliate - TM67
  (448, 44800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 48),
  -- Lucario - Giga Impact - TM68
  (448, 44800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Lucario - Stone Edge - TM71
  (448, 44800, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 50),
  -- Lucario - Swords Dance - TM75
  (448, 44800, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 51),
  -- Lucario - Bulldoze - TM78
  (448, 44800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Lucario - Rock Slide - TM80
  (448, 44800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Lucario - Work Up - TM83
  (448, 44800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 54),
  -- Lucario - Poison Jab - TM84
  (448, 44800, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 55),
  -- Lucario - Swagger - TM87
  (448, 44800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Lucario - Substitute - TM90
  (448, 44800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 57),
  -- Lucario - Flash Cannon - TM91
  (448, 44800, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 58),
  -- Lucario - Rock Smash - TM94
  (448, 44800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 59),
  -- Lucario - Strength - HM04
  (448, 44800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 60),
  -- Lucario - Dark Pulse - Move Tutor
  (448, 44800, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Lucario - Dragon Pulse - Move Tutor
  (448, 44800, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Lucario - Drain Punch - Move Tutor
  (448, 44800, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Lucario - Dual Chop - Move Tutor
  (448, 44800, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Lucario - Helping Hand - Move Tutor
  (448, 44800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Lucario - Ice Punch - Move Tutor
  (448, 44800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Lucario - Iron Defense - Move Tutor
  (448, 44800, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Lucario - Iron Tail - Move Tutor
  (448, 44800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Lucario - Low Kick - Move Tutor
  (448, 44800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Lucario - Magnet Rise - Move Tutor
  (448, 44800, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Lucario - Role Play - Move Tutor
  (448, 44800, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Lucario - Sleep Talk - Move Tutor
  (448, 44800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Lucario - Snore - Move Tutor
  (448, 44800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Lucario - Thunder Punch - Move Tutor
  (448, 44800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Lucario - Zen Headbutt - Move Tutor
  (448, 44800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Sand Attack - Level 1
  (449, 44900, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 7
  (449, 44900, 44, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 13
  (449, 44900, 281, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Hippopotas - Take Down - Level 19
  (449, 44900, 36, 12, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Hippopotas - Dig - Level 19
  (449, 44900, 91, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Hippopotas - Sand Tomb - Level 25
  (449, 44900, 328, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hippopotas - Crunch - Level 31
  (449, 44900, 242, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Hippopotas - Earthquake - Level 37
  (449, 44900, 89, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 12, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Hippopotas - Fissure - Level 50
  (449, 44900, 90, 12, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Hippopotas - Roar - TM05
  (449, 44900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 12),
  -- Hippopotas - Toxic - TM06
  (449, 44900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Hippopotas - Hidden Power - TM10
  (449, 44900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Hippopotas - Sunny Day - TM11
  (449, 44900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Hippopotas - Protect - TM17
  (449, 44900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Hippopotas - Frustration - TM21
  (449, 44900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Hippopotas - Earthquake - TM26
  (449, 44900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 18),
  -- Hippopotas - Return - TM27
  (449, 44900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Hippopotas - Dig - TM28
  (449, 44900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 20),
  -- Hippopotas - Double Team - TM32
  (449, 44900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 21),
  -- Hippopotas - Sandstorm - TM37
  (449, 44900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 22),
  -- Hippopotas - Rock Tomb - TM39
  (449, 44900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 23),
  -- Hippopotas - Facade - TM42
  (449, 44900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 24),
  -- Hippopotas - Rest - TM44
  (449, 44900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 25),
  -- Hippopotas - Attract - TM45
  (449, 44900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 26),
  -- Hippopotas - Round - TM48
  (449, 44900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 27),
  -- Hippopotas - Bulldoze - TM78
  (449, 44900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 28),
  -- Hippopotas - Rock Slide - TM80
  (449, 44900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 29),
  -- Hippopotas - Swagger - TM87
  (449, 44900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 30),
  -- Hippopotas - Substitute - TM90
  (449, 44900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 31),
  -- Hippopotas - Rock Smash - TM94
  (449, 44900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 32),
  -- Hippopotas - Strength - HM04
  (449, 44900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 33),
  -- Hippopotas - Body Slam - Egg Move
  (449, 44900, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Hippopotas - Curse - Egg Move
  (449, 44900, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Hippopotas - Revenge - Egg Move
  (449, 44900, 279, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Hippopotas - Sand Tomb - Egg Move
  (449, 44900, 328, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Hippopotas - Slack Off - Egg Move
  (449, 44900, 303, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Hippopotas - Sleep Talk - Egg Move
  (449, 44900, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Hippopotas - Spit Up - Egg Move
  (449, 44900, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hippopotas - Stockpile - Egg Move
  (449, 44900, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Hippopotas - Swallow - Egg Move
  (449, 44900, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hippopotas - Whirlwind - Egg Move
  (449, 44900, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hippopotas - Earth Power - Move Tutor
  (449, 44900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Hippopotas - Iron Tail - Move Tutor
  (449, 44900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Hippopotas - Sleep Talk - Move Tutor
  (449, 44900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Hippopotas - Snore - Move Tutor
  (449, 44900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Hippopotas - Stealth Rock - Move Tutor
  (449, 44900, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Hippopotas - Superpower - Move Tutor
  (449, 44900, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Hippowdon - Ice Fang - Level 1
  (450, 45000, 423, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Fire Fang - Level 1
  (450, 45000, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Thunder Fang - Level 1
  (450, 45000, 422, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hippowdon - Sand Attack - Level 1
  (450, 45000, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hippowdon - Yawn - Level 1
  (450, 45000, 281, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hippowdon - Bite - Level 7
  (450, 45000, 44, 12, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Hippowdon - Yawn - Level 13
  (450, 45000, 281, 12, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hippowdon - Take Down - Level 19
  (450, 45000, 36, 12, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Hippowdon - Dig - Level 19
  (450, 45000, 91, 12, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hippowdon - Sand Tomb - Level 25
  (450, 45000, 328, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hippowdon - Crunch - Level 31
  (450, 45000, 242, 12, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Hippowdon - Earthquake - Level 40
  (450, 45000, 89, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Hippowdon - Fissure - Level 60
  (450, 45000, 90, 12, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Hippowdon - Roar - TM05
  (450, 45000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Hippowdon - Toxic - TM06
  (450, 45000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Hippowdon - Hidden Power - TM10
  (450, 45000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Hippowdon - Sunny Day - TM11
  (450, 45000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Hippowdon - Hyper Beam - TM15
  (450, 45000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Hippowdon - Protect - TM17
  (450, 45000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Hippowdon - Frustration - TM21
  (450, 45000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Hippowdon - Earthquake - TM26
  (450, 45000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Hippowdon - Return - TM27
  (450, 45000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Hippowdon - Dig - TM28
  (450, 45000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 26),
  -- Hippowdon - Double Team - TM32
  (450, 45000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Hippowdon - Sandstorm - TM37
  (450, 45000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 28),
  -- Hippowdon - Rock Tomb - TM39
  (450, 45000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Hippowdon - Facade - TM42
  (450, 45000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Hippowdon - Rest - TM44
  (450, 45000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Hippowdon - Attract - TM45
  (450, 45000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Hippowdon - Round - TM48
  (450, 45000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Hippowdon - Giga Impact - TM68
  (450, 45000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 34),
  -- Hippowdon - Stone Edge - TM71
  (450, 45000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 35),
  -- Hippowdon - Bulldoze - TM78
  (450, 45000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 36),
  -- Hippowdon - Rock Slide - TM80
  (450, 45000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 37),
  -- Hippowdon - Swagger - TM87
  (450, 45000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Hippowdon - Substitute - TM90
  (450, 45000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Hippowdon - Rock Smash - TM94
  (450, 45000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 40),
  -- Hippowdon - Strength - HM04
  (450, 45000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Hippowdon - Earth Power - Move Tutor
  (450, 45000, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Hippowdon - Iron Head - Move Tutor
  (450, 45000, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Hippowdon - Iron Tail - Move Tutor
  (450, 45000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Hippowdon - Sleep Talk - Move Tutor
  (450, 45000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Hippowdon - Snore - Move Tutor
  (450, 45000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Hippowdon - Stealth Rock - Move Tutor
  (450, 45000, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Hippowdon - Superpower - Move Tutor
  (450, 45000, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48);
