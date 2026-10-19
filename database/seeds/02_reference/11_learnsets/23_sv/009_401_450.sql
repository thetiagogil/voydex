-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 401-450.
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
  -- Kricketot - Tackle - Level 1
  (401, 40100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketot - Growl - Level 1
  (401, 40100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketot - Struggle Bug - Level 6
  (401, 40100, 522, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kricketot - Bug Bite - Level 16
  (401, 40100, 450, 23, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kricketot - Struggle Bug - TM015
  (401, 40100, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 5),
  -- Kricketot - Tera Blast - TM171
  (401, 40100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 6),
  -- Kricketune - Tackle - Level 1
  (402, 40200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kricketune - Growl - Level 1
  (402, 40200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kricketune - Absorb - Level 14
  (402, 40200, 71, 23, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Kricketune - Sing - Level 18
  (402, 40200, 47, 23, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Kricketune - Focus Energy - Level 22
  (402, 40200, 116, 23, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kricketune - Slash - Level 26
  (402, 40200, 163, 23, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Kricketune - X-Scissor - Level 30
  (402, 40200, 404, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Kricketune - Screech - Level 34
  (402, 40200, 103, 23, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Kricketune - Fell Stinger - Level 36
  (402, 40200, 565, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Kricketune - Taunt - Level 38
  (402, 40200, 269, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Kricketune - Night Slash - Level 42
  (402, 40200, 400, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Kricketune - Sticky Web - Level 44
  (402, 40200, 564, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Kricketune - Bug Buzz - Level 46
  (402, 40200, 405, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Kricketune - Perish Song - Level 50
  (402, 40200, 195, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Kricketune - Take Down - TM001
  (402, 40200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Kricketune - Protect - TM007
  (402, 40200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Kricketune - Struggle Bug - TM015
  (402, 40200, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Kricketune - Trailblaze - TM020
  (402, 40200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Kricketune - Pounce - TM021
  (402, 40200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Kricketune - Facade - TM025
  (402, 40200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Kricketune - Aerial Ace - TM027
  (402, 40200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Kricketune - Endure - TM047
  (402, 40200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Kricketune - Sunny Day - TM049
  (402, 40200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Kricketune - Rain Dance - TM050
  (402, 40200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Kricketune - False Swipe - TM057
  (402, 40200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 25),
  -- Kricketune - Brick Break - TM058
  (402, 40200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 26),
  -- Kricketune - Sleep Talk - TM070
  (402, 40200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Kricketune - Rest - TM085
  (402, 40200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Kricketune - Taunt - TM087
  (402, 40200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 29),
  -- Kricketune - Swords Dance - TM088
  (402, 40200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 30),
  -- Kricketune - Leech Life - TM095
  (402, 40200, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 31),
  -- Kricketune - Substitute - TM103
  (402, 40200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Kricketune - X-Scissor - TM105
  (402, 40200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 33),
  -- Kricketune - Giga Drain - TM111
  (402, 40200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Kricketune - Hyper Voice - TM117
  (402, 40200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 35),
  -- Kricketune - Helping Hand - TM130
  (402, 40200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Kricketune - Baton Pass - TM132
  (402, 40200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 37),
  -- Kricketune - Giga Impact - TM152
  (402, 40200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 38),
  -- Kricketune - Bug Buzz - TM162
  (402, 40200, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 39),
  -- Kricketune - Hyper Beam - TM163
  (402, 40200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 40),
  -- Kricketune - Tera Blast - TM171
  (402, 40200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Kricketune - Fury Cutter - Evolution
  (402, 40200, 210, 23, NULL, 7, NULL, NULL, NULL, NULL, 42),
  -- Shinx - Tackle - Level 1
  (403, 40300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Level 1
  (403, 40300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shinx - Thunder Shock - Level 4
  (403, 40300, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shinx - Charge - Level 8
  (403, 40300, 268, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shinx - Bite - Level 12
  (403, 40300, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shinx - Spark - Level 16
  (403, 40300, 209, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shinx - Roar - Level 20
  (403, 40300, 46, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shinx - Volt Switch - Level 24
  (403, 40300, 521, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shinx - Scary Face - Level 28
  (403, 40300, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shinx - Thunder Wave - Level 32
  (403, 40300, 86, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shinx - Crunch - Level 36
  (403, 40300, 242, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shinx - Discharge - Level 40
  (403, 40300, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shinx - Swagger - Level 44
  (403, 40300, 207, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shinx - Wild Charge - Level 48
  (403, 40300, 528, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shinx - Take Down - TM001
  (403, 40300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Shinx - Fake Tears - TM003
  (403, 40300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Shinx - Scary Face - TM006
  (403, 40300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Shinx - Protect - TM007
  (403, 40300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Shinx - Fire Fang - TM008
  (403, 40300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Shinx - Thunder Fang - TM009
  (403, 40300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Shinx - Ice Fang - TM010
  (403, 40300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Shinx - Confuse Ray - TM017
  (403, 40300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Shinx - Thief - TM018
  (403, 40300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Shinx - Trailblaze - TM020
  (403, 40300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Shinx - Charge Beam - TM023
  (403, 40300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 25),
  -- Shinx - Facade - TM025
  (403, 40300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Shinx - Snarl - TM030
  (403, 40300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Shinx - Swift - TM032
  (403, 40300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Shinx - Endure - TM047
  (403, 40300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Shinx - Volt Switch - TM048
  (403, 40300, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 30),
  -- Shinx - Sunny Day - TM049
  (403, 40300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Shinx - Rain Dance - TM050
  (403, 40300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Shinx - Psychic Fangs - TM063
  (403, 40300, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Shinx - Sleep Talk - TM070
  (403, 40300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Shinx - Electro Ball - TM072
  (403, 40300, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 35),
  -- Shinx - Light Screen - TM075
  (403, 40300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Shinx - Thunder Wave - TM082
  (403, 40300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Shinx - Rest - TM085
  (403, 40300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Shinx - Eerie Impulse - TM096
  (403, 40300, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 39),
  -- Shinx - Substitute - TM103
  (403, 40300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Shinx - Crunch - TM108
  (403, 40300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Shinx - Thunderbolt - TM126
  (403, 40300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Shinx - Play Rough - TM127
  (403, 40300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Shinx - Helping Hand - TM130
  (403, 40300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Shinx - Electric Terrain - TM136
  (403, 40300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 45),
  -- Shinx - Wild Charge - TM147
  (403, 40300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Shinx - Thunder - TM166
  (403, 40300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 47),
  -- Shinx - Tera Blast - TM171
  (403, 40300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Shinx - Double Kick - Egg
  (403, 40300, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shinx - Take Down - Egg
  (403, 40300, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shinx - Quick Attack - Egg
  (403, 40300, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shinx - Howl - Egg
  (403, 40300, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shinx - Shock Wave - Egg
  (403, 40300, 351, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shinx - Baby-Doll Eyes - Egg
  (403, 40300, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Luxio - Tackle - Level 1
  (404, 40400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Level 1
  (404, 40400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxio - Thunder Shock - Level 1
  (404, 40400, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Level 1
  (404, 40400, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Luxio - Bite - Level 12
  (404, 40400, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Luxio - Spark - Level 18
  (404, 40400, 209, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 24
  (404, 40400, 46, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Luxio - Volt Switch - Level 31
  (404, 40400, 521, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Luxio - Scary Face - Level 36
  (404, 40400, 184, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Luxio - Thunder Wave - Level 42
  (404, 40400, 86, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Luxio - Crunch - Level 48
  (404, 40400, 242, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 54
  (404, 40400, 435, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Luxio - Swagger - Level 60
  (404, 40400, 207, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Luxio - Wild Charge - Level 68
  (404, 40400, 528, 23, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Luxio - Take Down - TM001
  (404, 40400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Luxio - Fake Tears - TM003
  (404, 40400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Luxio - Scary Face - TM006
  (404, 40400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Luxio - Protect - TM007
  (404, 40400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Luxio - Fire Fang - TM008
  (404, 40400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Luxio - Thunder Fang - TM009
  (404, 40400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Luxio - Ice Fang - TM010
  (404, 40400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Luxio - Confuse Ray - TM017
  (404, 40400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Luxio - Thief - TM018
  (404, 40400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Luxio - Trailblaze - TM020
  (404, 40400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Luxio - Charge Beam - TM023
  (404, 40400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 25),
  -- Luxio - Facade - TM025
  (404, 40400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Luxio - Snarl - TM030
  (404, 40400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Luxio - Swift - TM032
  (404, 40400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Luxio - Endure - TM047
  (404, 40400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Luxio - Volt Switch - TM048
  (404, 40400, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 30),
  -- Luxio - Sunny Day - TM049
  (404, 40400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Luxio - Rain Dance - TM050
  (404, 40400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Luxio - Psychic Fangs - TM063
  (404, 40400, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Luxio - Sleep Talk - TM070
  (404, 40400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Luxio - Electro Ball - TM072
  (404, 40400, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 35),
  -- Luxio - Light Screen - TM075
  (404, 40400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Luxio - Thunder Wave - TM082
  (404, 40400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Luxio - Rest - TM085
  (404, 40400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Luxio - Eerie Impulse - TM096
  (404, 40400, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 39),
  -- Luxio - Substitute - TM103
  (404, 40400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Luxio - Crunch - TM108
  (404, 40400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Luxio - Thunderbolt - TM126
  (404, 40400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Luxio - Play Rough - TM127
  (404, 40400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Luxio - Helping Hand - TM130
  (404, 40400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Luxio - Electric Terrain - TM136
  (404, 40400, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 45),
  -- Luxio - Wild Charge - TM147
  (404, 40400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Luxio - Thunder - TM166
  (404, 40400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 47),
  -- Luxio - Tera Blast - TM171
  (404, 40400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Luxio - Double Kick - Egg
  (404, 40400, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Luxio - Take Down - Egg
  (404, 40400, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Luxio - Quick Attack - Egg
  (404, 40400, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Luxio - Howl - Egg
  (404, 40400, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Luxio - Shock Wave - Egg
  (404, 40400, 351, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Luxio - Baby-Doll Eyes - Egg
  (404, 40400, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Luxray - Tackle - Level 1
  (405, 40500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Leer - Level 1
  (405, 40500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxray - Thunder Shock - Level 1
  (405, 40500, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxray - Charge - Level 1
  (405, 40500, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Luxray - Electric Terrain - Level 1
  (405, 40500, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Luxray - Bite - Level 12
  (405, 40500, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Luxray - Spark - Level 18
  (405, 40500, 209, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Luxray - Roar - Level 24
  (405, 40500, 46, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Luxray - Volt Switch - Level 33
  (405, 40500, 521, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxray - Scary Face - Level 40
  (405, 40500, 184, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Luxray - Thunder Wave - Level 48
  (405, 40500, 86, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Luxray - Crunch - Level 56
  (405, 40500, 242, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Luxray - Discharge - Level 64
  (405, 40500, 435, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Luxray - Swagger - Level 72
  (405, 40500, 207, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Luxray - Wild Charge - Level 80
  (405, 40500, 528, 23, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Luxray - Take Down - TM001
  (405, 40500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Luxray - Fake Tears - TM003
  (405, 40500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Luxray - Agility - TM004
  (405, 40500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Luxray - Scary Face - TM006
  (405, 40500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Luxray - Protect - TM007
  (405, 40500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Luxray - Fire Fang - TM008
  (405, 40500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Luxray - Thunder Fang - TM009
  (405, 40500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Luxray - Ice Fang - TM010
  (405, 40500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Luxray - Confuse Ray - TM017
  (405, 40500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Luxray - Thief - TM018
  (405, 40500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Luxray - Trailblaze - TM020
  (405, 40500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Luxray - Charge Beam - TM023
  (405, 40500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 27),
  -- Luxray - Facade - TM025
  (405, 40500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Luxray - Snarl - TM030
  (405, 40500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 29),
  -- Luxray - Swift - TM032
  (405, 40500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 30),
  -- Luxray - Endure - TM047
  (405, 40500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Luxray - Volt Switch - TM048
  (405, 40500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 32),
  -- Luxray - Sunny Day - TM049
  (405, 40500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Luxray - Rain Dance - TM050
  (405, 40500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Luxray - Psychic Fangs - TM063
  (405, 40500, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 35),
  -- Luxray - Body Slam - TM066
  (405, 40500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Luxray - Sleep Talk - TM070
  (405, 40500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Luxray - Electro Ball - TM072
  (405, 40500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 38),
  -- Luxray - Light Screen - TM075
  (405, 40500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Luxray - Thunder Wave - TM082
  (405, 40500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Luxray - Rest - TM085
  (405, 40500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Luxray - Eerie Impulse - TM096
  (405, 40500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 42),
  -- Luxray - Substitute - TM103
  (405, 40500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Luxray - Crunch - TM108
  (405, 40500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Luxray - Thunderbolt - TM126
  (405, 40500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Luxray - Play Rough - TM127
  (405, 40500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 46),
  -- Luxray - Helping Hand - TM130
  (405, 40500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Luxray - Electric Terrain - TM136
  (405, 40500, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 48),
  -- Luxray - Wild Charge - TM147
  (405, 40500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Luxray - Giga Impact - TM152
  (405, 40500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Luxray - Hyper Beam - TM163
  (405, 40500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Luxray - Thunder - TM166
  (405, 40500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 52),
  -- Luxray - Tera Blast - TM171
  (405, 40500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Luxray - Double Kick - Egg
  (405, 40500, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Luxray - Take Down - Egg
  (405, 40500, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Luxray - Quick Attack - Egg
  (405, 40500, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Luxray - Howl - Egg
  (405, 40500, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Luxray - Shock Wave - Egg
  (405, 40500, 351, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Luxray - Baby-Doll Eyes - Egg
  (405, 40500, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cranidos - Headbutt - Level 1
  (408, 40800, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cranidos - Leer - Level 1
  (408, 40800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cranidos - Focus Energy - Level 6
  (408, 40800, 116, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cranidos - Rock Smash - Level 10
  (408, 40800, 249, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cranidos - Take Down - Level 15
  (408, 40800, 36, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cranidos - Scary Face - Level 19
  (408, 40800, 184, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cranidos - Assurance - Level 24
  (408, 40800, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Cranidos - Slam - Level 28
  (408, 40800, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cranidos - Ancient Power - Level 33
  (408, 40800, 246, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cranidos - Zen Headbutt - Level 37
  (408, 40800, 428, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cranidos - Screech - Level 42
  (408, 40800, 103, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cranidos - Head Smash - Level 46
  (408, 40800, 457, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cranidos - Take Down - TM001
  (408, 40800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Cranidos - Mud-Slap - TM005
  (408, 40800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Cranidos - Scary Face - TM006
  (408, 40800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Cranidos - Protect - TM007
  (408, 40800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Cranidos - Thief - TM018
  (408, 40800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Cranidos - Trailblaze - TM020
  (408, 40800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Cranidos - Facade - TM025
  (408, 40800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Cranidos - Bulldoze - TM028
  (408, 40800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Cranidos - Rock Tomb - TM036
  (408, 40800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Cranidos - Fling - TM043
  (408, 40800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Cranidos - Endure - TM047
  (408, 40800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Cranidos - Sunny Day - TM049
  (408, 40800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Cranidos - Rain Dance - TM050
  (408, 40800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Cranidos - Sandstorm - TM051
  (408, 40800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Cranidos - Dig - TM055
  (408, 40800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Cranidos - Zen Headbutt - TM059
  (408, 40800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Cranidos - Body Slam - TM066
  (408, 40800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Cranidos - Fire Punch - TM067
  (408, 40800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Cranidos - Thunder Punch - TM068
  (408, 40800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Cranidos - Sleep Talk - TM070
  (408, 40800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Cranidos - Rock Blast - TM076
  (408, 40800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Cranidos - Stomping Tantrum - TM084
  (408, 40800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Cranidos - Rest - TM085
  (408, 40800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Cranidos - Rock Slide - TM086
  (408, 40800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Cranidos - Swords Dance - TM088
  (408, 40800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Cranidos - Iron Head - TM099
  (408, 40800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Cranidos - Substitute - TM103
  (408, 40800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Cranidos - Crunch - TM108
  (408, 40800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 40),
  -- Cranidos - Dragon Pulse - TM115
  (408, 40800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Cranidos - Stealth Rock - TM116
  (408, 40800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Cranidos - Flamethrower - TM125
  (408, 40800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Cranidos - Thunderbolt - TM126
  (408, 40800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Cranidos - Earth Power - TM133
  (408, 40800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Cranidos - Ice Beam - TM135
  (408, 40800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 46),
  -- Cranidos - Fire Blast - TM141
  (408, 40800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 47),
  -- Cranidos - Blizzard - TM143
  (408, 40800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Cranidos - Earthquake - TM149
  (408, 40800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Cranidos - Stone Edge - TM150
  (408, 40800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Cranidos - Thunder - TM166
  (408, 40800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 51),
  -- Cranidos - Tera Blast - TM171
  (408, 40800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Cranidos - Whirlwind - Egg
  (408, 40800, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cranidos - Stomp - Egg
  (408, 40800, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cranidos - Thrash - Egg
  (408, 40800, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cranidos - Hammer Arm - Egg
  (408, 40800, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Rampardos - Headbutt - Level 1
  (409, 40900, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rampardos - Leer - Level 1
  (409, 40900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rampardos - Focus Energy - Level 1
  (409, 40900, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rampardos - Rock Smash - Level 10
  (409, 40900, 249, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rampardos - Take Down - Level 15
  (409, 40900, 36, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rampardos - Scary Face - Level 19
  (409, 40900, 184, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rampardos - Assurance - Level 24
  (409, 40900, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rampardos - Slam - Level 28
  (409, 40900, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Rampardos - Ancient Power - Level 36
  (409, 40900, 246, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Rampardos - Zen Headbutt - Level 43
  (409, 40900, 428, 23, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Rampardos - Screech - Level 51
  (409, 40900, 103, 23, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Rampardos - Head Smash - Level 58
  (409, 40900, 457, 23, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Rampardos - Take Down - TM001
  (409, 40900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Rampardos - Mud-Slap - TM005
  (409, 40900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Rampardos - Scary Face - TM006
  (409, 40900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Rampardos - Protect - TM007
  (409, 40900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Rampardos - Thief - TM018
  (409, 40900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Rampardos - Trailblaze - TM020
  (409, 40900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Rampardos - Facade - TM025
  (409, 40900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Rampardos - Bulldoze - TM028
  (409, 40900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Rampardos - Rock Tomb - TM036
  (409, 40900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Rampardos - Fling - TM043
  (409, 40900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Rampardos - Dragon Tail - TM044
  (409, 40900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 23),
  -- Rampardos - Avalanche - TM046
  (409, 40900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 24),
  -- Rampardos - Endure - TM047
  (409, 40900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Rampardos - Sunny Day - TM049
  (409, 40900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Rampardos - Rain Dance - TM050
  (409, 40900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Rampardos - Sandstorm - TM051
  (409, 40900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Rampardos - Dig - TM055
  (409, 40900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Rampardos - Brick Break - TM058
  (409, 40900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Rampardos - Zen Headbutt - TM059
  (409, 40900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Rampardos - Body Slam - TM066
  (409, 40900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Rampardos - Fire Punch - TM067
  (409, 40900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Rampardos - Thunder Punch - TM068
  (409, 40900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Rampardos - Sleep Talk - TM070
  (409, 40900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Rampardos - Rock Blast - TM076
  (409, 40900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 36),
  -- Rampardos - Dragon Claw - TM078
  (409, 40900, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 37),
  -- Rampardos - Stomping Tantrum - TM084
  (409, 40900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Rampardos - Rest - TM085
  (409, 40900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Rampardos - Rock Slide - TM086
  (409, 40900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Rampardos - Swords Dance - TM088
  (409, 40900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Rampardos - Body Press - TM089
  (409, 40900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 42),
  -- Rampardos - Iron Head - TM099
  (409, 40900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 43),
  -- Rampardos - Substitute - TM103
  (409, 40900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Rampardos - Crunch - TM108
  (409, 40900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Rampardos - Dragon Pulse - TM115
  (409, 40900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Rampardos - Stealth Rock - TM116
  (409, 40900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Rampardos - Heavy Slam - TM121
  (409, 40900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Rampardos - Surf - TM123
  (409, 40900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 49),
  -- Rampardos - Flamethrower - TM125
  (409, 40900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 50),
  -- Rampardos - Thunderbolt - TM126
  (409, 40900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 51),
  -- Rampardos - Earth Power - TM133
  (409, 40900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Rampardos - Ice Beam - TM135
  (409, 40900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 53),
  -- Rampardos - Fire Blast - TM141
  (409, 40900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Rampardos - Blizzard - TM143
  (409, 40900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 55),
  -- Rampardos - Earthquake - TM149
  (409, 40900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Rampardos - Stone Edge - TM150
  (409, 40900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Rampardos - Giga Impact - TM152
  (409, 40900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Rampardos - Outrage - TM156
  (409, 40900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Rampardos - Focus Blast - TM158
  (409, 40900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Rampardos - Hyper Beam - TM163
  (409, 40900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Rampardos - Thunder - TM166
  (409, 40900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Rampardos - Tera Blast - TM171
  (409, 40900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Rampardos - Whirlwind - Egg
  (409, 40900, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rampardos - Stomp - Egg
  (409, 40900, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rampardos - Thrash - Egg
  (409, 40900, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rampardos - Hammer Arm - Egg
  (409, 40900, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rampardos - Endeavor - Evolution
  (409, 40900, 283, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Shieldon - Tackle - Level 1
  (410, 41000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shieldon - Protect - Level 1
  (410, 41000, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shieldon - Taunt - Level 6
  (410, 41000, 269, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Shieldon - Metal Sound - Level 10
  (410, 41000, 319, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shieldon - Take Down - Level 15
  (410, 41000, 36, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shieldon - Iron Defense - Level 19
  (410, 41000, 334, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shieldon - Swagger - Level 24
  (410, 41000, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Shieldon - Ancient Power - Level 28
  (410, 41000, 246, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shieldon - Endure - Level 33
  (410, 41000, 203, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shieldon - Metal Burst - Level 37
  (410, 41000, 368, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shieldon - Iron Head - Level 42
  (410, 41000, 442, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Shieldon - Heavy Slam - Level 46
  (410, 41000, 484, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Shieldon - Take Down - TM001
  (410, 41000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Shieldon - Mud-Slap - TM005
  (410, 41000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Shieldon - Scary Face - TM006
  (410, 41000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Shieldon - Protect - TM007
  (410, 41000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Shieldon - Trailblaze - TM020
  (410, 41000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Shieldon - Facade - TM025
  (410, 41000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Shieldon - Bulldoze - TM028
  (410, 41000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Shieldon - Rock Tomb - TM036
  (410, 41000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Shieldon - Endure - TM047
  (410, 41000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Shieldon - Sunny Day - TM049
  (410, 41000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Shieldon - Rain Dance - TM050
  (410, 41000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Shieldon - Sandstorm - TM051
  (410, 41000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Shieldon - Dig - TM055
  (410, 41000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Shieldon - Body Slam - TM066
  (410, 41000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Shieldon - Sleep Talk - TM070
  (410, 41000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Shieldon - Rock Blast - TM076
  (410, 41000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 28),
  -- Shieldon - Stomping Tantrum - TM084
  (410, 41000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 29),
  -- Shieldon - Rest - TM085
  (410, 41000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Shieldon - Rock Slide - TM086
  (410, 41000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 31),
  -- Shieldon - Taunt - TM087
  (410, 41000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 32),
  -- Shieldon - Flash Cannon - TM093
  (410, 41000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Shieldon - Iron Head - TM099
  (410, 41000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Shieldon - Power Gem - TM101
  (410, 41000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 35),
  -- Shieldon - Substitute - TM103
  (410, 41000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Shieldon - Iron Defense - TM104
  (410, 41000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Shieldon - Stealth Rock - TM116
  (410, 41000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 38),
  -- Shieldon - Heavy Slam - TM121
  (410, 41000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Shieldon - Flamethrower - TM125
  (410, 41000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 40),
  -- Shieldon - Thunderbolt - TM126
  (410, 41000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Shieldon - Earth Power - TM133
  (410, 41000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 42),
  -- Shieldon - Ice Beam - TM135
  (410, 41000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Shieldon - Fire Blast - TM141
  (410, 41000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Shieldon - Blizzard - TM143
  (410, 41000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Shieldon - Earthquake - TM149
  (410, 41000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Shieldon - Stone Edge - TM150
  (410, 41000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Shieldon - Thunder - TM166
  (410, 41000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 48),
  -- Shieldon - Steel Beam - TM170
  (410, 41000, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 49),
  -- Shieldon - Tera Blast - TM171
  (410, 41000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Shieldon - Headbutt - Egg
  (410, 41000, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shieldon - Counter - Egg
  (410, 41000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shieldon - Fissure - Egg
  (410, 41000, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shieldon - Screech - Egg
  (410, 41000, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shieldon - Focus Energy - Egg
  (410, 41000, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shieldon - Guard Split - Egg
  (410, 41000, 470, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bastiodon - Tackle - Level 1
  (411, 41100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bastiodon - Protect - Level 1
  (411, 41100, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bastiodon - Taunt - Level 1
  (411, 41100, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bastiodon - Metal Sound - Level 1
  (411, 41100, 319, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bastiodon - Take Down - Level 15
  (411, 41100, 36, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bastiodon - Iron Defense - Level 19
  (411, 41100, 334, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Bastiodon - Swagger - Level 24
  (411, 41100, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Bastiodon - Ancient Power - Level 28
  (411, 41100, 246, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Bastiodon - Endure - Level 36
  (411, 41100, 203, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Bastiodon - Metal Burst - Level 43
  (411, 41100, 368, 23, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Bastiodon - Iron Head - Level 51
  (411, 41100, 442, 23, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Bastiodon - Heavy Slam - Level 58
  (411, 41100, 484, 23, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Bastiodon - Take Down - TM001
  (411, 41100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Bastiodon - Mud-Slap - TM005
  (411, 41100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Bastiodon - Scary Face - TM006
  (411, 41100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Bastiodon - Protect - TM007
  (411, 41100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Bastiodon - Trailblaze - TM020
  (411, 41100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Bastiodon - Facade - TM025
  (411, 41100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Bastiodon - Bulldoze - TM028
  (411, 41100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Bastiodon - Rock Tomb - TM036
  (411, 41100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Bastiodon - Avalanche - TM046
  (411, 41100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 21),
  -- Bastiodon - Endure - TM047
  (411, 41100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Bastiodon - Sunny Day - TM049
  (411, 41100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Bastiodon - Rain Dance - TM050
  (411, 41100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Bastiodon - Sandstorm - TM051
  (411, 41100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 25),
  -- Bastiodon - Dig - TM055
  (411, 41100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Bastiodon - Foul Play - TM062
  (411, 41100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Bastiodon - Body Slam - TM066
  (411, 41100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Bastiodon - Sleep Talk - TM070
  (411, 41100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Bastiodon - Reflect - TM074
  (411, 41100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Bastiodon - Rock Blast - TM076
  (411, 41100, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 31),
  -- Bastiodon - Stomping Tantrum - TM084
  (411, 41100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Bastiodon - Rest - TM085
  (411, 41100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Bastiodon - Rock Slide - TM086
  (411, 41100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Bastiodon - Taunt - TM087
  (411, 41100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Bastiodon - Body Press - TM089
  (411, 41100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Bastiodon - Flash Cannon - TM093
  (411, 41100, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Bastiodon - Iron Head - TM099
  (411, 41100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Bastiodon - Power Gem - TM101
  (411, 41100, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 39),
  -- Bastiodon - Substitute - TM103
  (411, 41100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Bastiodon - Iron Defense - TM104
  (411, 41100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Bastiodon - Stealth Rock - TM116
  (411, 41100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Bastiodon - Heavy Slam - TM121
  (411, 41100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Bastiodon - Flamethrower - TM125
  (411, 41100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Bastiodon - Thunderbolt - TM126
  (411, 41100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Bastiodon - Earth Power - TM133
  (411, 41100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 46),
  -- Bastiodon - Reversal - TM134
  (411, 41100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Bastiodon - Ice Beam - TM135
  (411, 41100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Bastiodon - Fire Blast - TM141
  (411, 41100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Bastiodon - Blizzard - TM143
  (411, 41100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Bastiodon - Earthquake - TM149
  (411, 41100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Bastiodon - Stone Edge - TM150
  (411, 41100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Bastiodon - Giga Impact - TM152
  (411, 41100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Bastiodon - Outrage - TM156
  (411, 41100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 54),
  -- Bastiodon - Hyper Beam - TM163
  (411, 41100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Bastiodon - Thunder - TM166
  (411, 41100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Bastiodon - Steel Beam - TM170
  (411, 41100, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Bastiodon - Tera Blast - TM171
  (411, 41100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Bastiodon - Headbutt - Egg
  (411, 41100, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bastiodon - Counter - Egg
  (411, 41100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bastiodon - Fissure - Egg
  (411, 41100, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Bastiodon - Screech - Egg
  (411, 41100, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Bastiodon - Focus Energy - Egg
  (411, 41100, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Bastiodon - Guard Split - Egg
  (411, 41100, 470, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bastiodon - Block - Evolution
  (411, 41100, 335, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Bastiodon - Wide Guard - Reminder
  (411, 41100, 469, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Combee - Gust - Level 1
  (415, 41500, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Sweet Scent - Level 1
  (415, 41500, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combee - Bug Bite - Level 1
  (415, 41500, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combee - Struggle Bug - Level 1
  (415, 41500, 522, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combee - Struggle Bug - TM015
  (415, 41500, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 5),
  -- Combee - Sleep Talk - TM070
  (415, 41500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 6),
  -- Combee - Bug Buzz - TM162
  (415, 41500, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 7),
  -- Combee - Tera Blast - TM171
  (415, 41500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 8),
  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Poison Sting - Level 1
  (416, 41600, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vespiquen - Confuse Ray - Level 1
  (416, 41600, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vespiquen - Sweet Scent - Level 1
  (416, 41600, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vespiquen - Bug Bite - Level 1
  (416, 41600, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vespiquen - Struggle Bug - Level 1
  (416, 41600, 522, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vespiquen - Fury Cutter - Level 4
  (416, 41600, 210, 23, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Vespiquen - Aromatic Mist - Level 8
  (416, 41600, 597, 23, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Vespiquen - Fell Stinger - Level 12
  (416, 41600, 565, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Vespiquen - Fury Swipes - Level 16
  (416, 41600, 154, 23, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Vespiquen - Swagger - Level 20
  (416, 41600, 207, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Vespiquen - Roost - Level 24
  (416, 41600, 355, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Vespiquen - Air Slash - Level 28
  (416, 41600, 403, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Vespiquen - Power Gem - Level 32
  (416, 41600, 408, 23, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Vespiquen - Toxic - Level 36
  (416, 41600, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Vespiquen - Attack Order - Level 40
  (416, 41600, 454, 23, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Vespiquen - Defend Order - Level 40
  (416, 41600, 455, 23, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Vespiquen - Destiny Bond - Level 44
  (416, 41600, 194, 23, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Vespiquen - Take Down - TM001
  (416, 41600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Vespiquen - Agility - TM004
  (416, 41600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Vespiquen - Scary Face - TM006
  (416, 41600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Vespiquen - Protect - TM007
  (416, 41600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Vespiquen - Acrobatics - TM014
  (416, 41600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 23),
  -- Vespiquen - Struggle Bug - TM015
  (416, 41600, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 24),
  -- Vespiquen - Confuse Ray - TM017
  (416, 41600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 25),
  -- Vespiquen - Thief - TM018
  (416, 41600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Vespiquen - Pounce - TM021
  (416, 41600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 27),
  -- Vespiquen - Facade - TM025
  (416, 41600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Vespiquen - Aerial Ace - TM027
  (416, 41600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 29),
  -- Vespiquen - Hex - TM029
  (416, 41600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 30),
  -- Vespiquen - Swift - TM032
  (416, 41600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Vespiquen - Fling - TM043
  (416, 41600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Vespiquen - Venoshock - TM045
  (416, 41600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 33),
  -- Vespiquen - Endure - TM047
  (416, 41600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Vespiquen - Sunny Day - TM049
  (416, 41600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Vespiquen - Rain Dance - TM050
  (416, 41600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Vespiquen - U-turn - TM060
  (416, 41600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Vespiquen - Air Slash - TM065
  (416, 41600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Vespiquen - Sleep Talk - TM070
  (416, 41600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Vespiquen - Rest - TM085
  (416, 41600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Vespiquen - Taunt - TM087
  (416, 41600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Vespiquen - Spikes - TM090
  (416, 41600, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 42),
  -- Vespiquen - Toxic Spikes - TM091
  (416, 41600, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 43),
  -- Vespiquen - Power Gem - TM101
  (416, 41600, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Vespiquen - Substitute - TM103
  (416, 41600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Vespiquen - X-Scissor - TM105
  (416, 41600, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Vespiquen - Helping Hand - TM130
  (416, 41600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Vespiquen - Pollen Puff - TM131
  (416, 41600, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 48),
  -- Vespiquen - Reversal - TM134
  (416, 41600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Vespiquen - Sludge Bomb - TM148
  (416, 41600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Vespiquen - Giga Impact - TM152
  (416, 41600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Vespiquen - Hurricane - TM160
  (416, 41600, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 52),
  -- Vespiquen - Bug Buzz - TM162
  (416, 41600, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 53),
  -- Vespiquen - Hyper Beam - TM163
  (416, 41600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Vespiquen - Tera Blast - TM171
  (416, 41600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Vespiquen - Slash - Evolution
  (416, 41600, 163, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Pachirisu - Growl - Level 1
  (417, 41700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pachirisu - Thunder Shock - Level 1
  (417, 41700, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pachirisu - Quick Attack - Level 5
  (417, 41700, 98, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pachirisu - Charm - Level 9
  (417, 41700, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pachirisu - Spark - Level 13
  (417, 41700, 209, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pachirisu - Endure - Level 17
  (417, 41700, 203, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pachirisu - Nuzzle - Level 19
  (417, 41700, 609, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Pachirisu - Swift - Level 21
  (417, 41700, 129, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Pachirisu - Electro Ball - Level 25
  (417, 41700, 486, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Pachirisu - Sweet Kiss - Level 29
  (417, 41700, 186, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Pachirisu - Thunder Wave - Level 33
  (417, 41700, 86, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Pachirisu - Super Fang - Level 37
  (417, 41700, 162, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Pachirisu - Discharge - Level 41
  (417, 41700, 435, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Pachirisu - Last Resort - Level 45
  (417, 41700, 387, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pachirisu - Thunder - Level 49
  (417, 41700, 87, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Pachirisu - Take Down - TM001
  (417, 41700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Pachirisu - Charm - TM002
  (417, 41700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Pachirisu - Fake Tears - TM003
  (417, 41700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Pachirisu - Agility - TM004
  (417, 41700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Pachirisu - Mud-Slap - TM005
  (417, 41700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Pachirisu - Protect - TM007
  (417, 41700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Pachirisu - Thunder Fang - TM009
  (417, 41700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Pachirisu - Thief - TM018
  (417, 41700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Pachirisu - Trailblaze - TM020
  (417, 41700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Pachirisu - Charge Beam - TM023
  (417, 41700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 25),
  -- Pachirisu - Facade - TM025
  (417, 41700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Pachirisu - Aerial Ace - TM027
  (417, 41700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Pachirisu - Swift - TM032
  (417, 41700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Pachirisu - Mud Shot - TM035
  (417, 41700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Pachirisu - Fling - TM043
  (417, 41700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Pachirisu - Endure - TM047
  (417, 41700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Pachirisu - Volt Switch - TM048
  (417, 41700, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 32),
  -- Pachirisu - Sunny Day - TM049
  (417, 41700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Pachirisu - Rain Dance - TM050
  (417, 41700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Pachirisu - Dig - TM055
  (417, 41700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Pachirisu - U-turn - TM060
  (417, 41700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Pachirisu - Thunder Punch - TM068
  (417, 41700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Pachirisu - Sleep Talk - TM070
  (417, 41700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Pachirisu - Seed Bomb - TM071
  (417, 41700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 39),
  -- Pachirisu - Electro Ball - TM072
  (417, 41700, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 40),
  -- Pachirisu - Light Screen - TM075
  (417, 41700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Pachirisu - Grass Knot - TM081
  (417, 41700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Pachirisu - Thunder Wave - TM082
  (417, 41700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Pachirisu - Rest - TM085
  (417, 41700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Pachirisu - Eerie Impulse - TM096
  (417, 41700, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 45),
  -- Pachirisu - Gunk Shot - TM102
  (417, 41700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 46),
  -- Pachirisu - Substitute - TM103
  (417, 41700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Pachirisu - Encore - TM122
  (417, 41700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 48),
  -- Pachirisu - Thunderbolt - TM126
  (417, 41700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Pachirisu - Play Rough - TM127
  (417, 41700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 50),
  -- Pachirisu - Helping Hand - TM130
  (417, 41700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Pachirisu - Electric Terrain - TM136
  (417, 41700, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 52),
  -- Pachirisu - Wild Charge - TM147
  (417, 41700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 53),
  -- Pachirisu - Giga Impact - TM152
  (417, 41700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Pachirisu - Hyper Beam - TM163
  (417, 41700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Pachirisu - Thunder - TM166
  (417, 41700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Pachirisu - Tera Blast - TM171
  (417, 41700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Pachirisu - Tail Whip - Egg
  (417, 41700, 39, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pachirisu - Bite - Egg
  (417, 41700, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pachirisu - Defense Curl - Egg
  (417, 41700, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pachirisu - Flail - Egg
  (417, 41700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pachirisu - Rollout - Egg
  (417, 41700, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pachirisu - Flatter - Egg
  (417, 41700, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pachirisu - Follow Me - Egg
  (417, 41700, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Pachirisu - Charge - Egg
  (417, 41700, 268, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Pachirisu - Fake Tears - Egg
  (417, 41700, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Pachirisu - Covet - Egg
  (417, 41700, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Pachirisu - Baby-Doll Eyes - Egg
  (417, 41700, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Buizel - Tackle - Level 1
  (418, 41800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buizel - Growl - Level 4
  (418, 41800, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Buizel - Soak - Level 7
  (418, 41800, 487, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Buizel - Quick Attack - Level 11
  (418, 41800, 98, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Buizel - Water Gun - Level 15
  (418, 41800, 55, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Buizel - Bite - Level 18
  (418, 41800, 44, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Buizel - Swift - Level 21
  (418, 41800, 129, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Buizel - Aqua Jet - Level 24
  (418, 41800, 453, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buizel - Double Hit - Level 27
  (418, 41800, 458, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Buizel - Whirlpool - Level 31
  (418, 41800, 250, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Buizel - Liquidation - Level 35
  (418, 41800, 710, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Buizel - Aqua Tail - Level 38
  (418, 41800, 401, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Buizel - Agility - Level 41
  (418, 41800, 97, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Buizel - Hydro Pump - Level 45
  (418, 41800, 56, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Buizel - Wave Crash - Level 49
  (418, 41800, 834, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Buizel - Take Down - TM001
  (418, 41800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Buizel - Agility - TM004
  (418, 41800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Buizel - Mud-Slap - TM005
  (418, 41800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Buizel - Protect - TM007
  (418, 41800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Buizel - Ice Fang - TM010
  (418, 41800, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 20),
  -- Buizel - Water Pulse - TM011
  (418, 41800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Buizel - Low Kick - TM012
  (418, 41800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Buizel - Thief - TM018
  (418, 41800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Buizel - Chilling Water - TM022
  (418, 41800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Buizel - Facade - TM025
  (418, 41800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Buizel - Swift - TM032
  (418, 41800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Buizel - Icy Wind - TM034
  (418, 41800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Buizel - Rock Tomb - TM036
  (418, 41800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Buizel - Low Sweep - TM039
  (418, 41800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Buizel - Fling - TM043
  (418, 41800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Buizel - Endure - TM047
  (418, 41800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Buizel - Rain Dance - TM050
  (418, 41800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Buizel - Dig - TM055
  (418, 41800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Buizel - Brick Break - TM058
  (418, 41800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Buizel - Bulk Up - TM064
  (418, 41800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 35),
  -- Buizel - Ice Punch - TM069
  (418, 41800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 36),
  -- Buizel - Sleep Talk - TM070
  (418, 41800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Buizel - Waterfall - TM077
  (418, 41800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 38),
  -- Buizel - Rest - TM085
  (418, 41800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Buizel - Taunt - TM087
  (418, 41800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Buizel - Substitute - TM103
  (418, 41800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Buizel - Crunch - TM108
  (418, 41800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Buizel - Liquidation - TM110
  (418, 41800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 43),
  -- Buizel - Surf - TM123
  (418, 41800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 44),
  -- Buizel - Ice Spinner - TM124
  (418, 41800, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 45),
  -- Buizel - Helping Hand - TM130
  (418, 41800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Buizel - Baton Pass - TM132
  (418, 41800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Buizel - Ice Beam - TM135
  (418, 41800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Buizel - Hydro Pump - TM142
  (418, 41800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Buizel - Blizzard - TM143
  (418, 41800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Buizel - Tera Blast - TM171
  (418, 41800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Buizel - Headbutt - Egg
  (418, 41800, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Buizel - Fury Swipes - Egg
  (418, 41800, 154, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Buizel - Slash - Egg
  (418, 41800, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Buizel - Mud-Slap - Egg
  (418, 41800, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Buizel - Fury Cutter - Egg
  (418, 41800, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Buizel - Baton Pass - Egg
  (418, 41800, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Buizel - Helping Hand - Egg
  (418, 41800, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Buizel - Aqua Ring - Egg
  (418, 41800, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Floatzel - Growl - Level 1
  (419, 41900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floatzel - Quick Attack - Level 1
  (419, 41900, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floatzel - Crunch - Level 1
  (419, 41900, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floatzel - Ice Fang - Level 1
  (419, 41900, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Floatzel - Soak - Level 1
  (419, 41900, 487, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Floatzel - Water Gun - Level 15
  (419, 41900, 55, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Floatzel - Bite - Level 18
  (419, 41900, 44, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Floatzel - Swift - Level 21
  (419, 41900, 129, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Floatzel - Aqua Jet - Level 24
  (419, 41900, 453, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Floatzel - Double Hit - Level 29
  (419, 41900, 458, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Floatzel - Whirlpool - Level 35
  (419, 41900, 250, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Floatzel - Liquidation - Level 41
  (419, 41900, 710, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Floatzel - Aqua Tail - Level 46
  (419, 41900, 401, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Floatzel - Agility - Level 51
  (419, 41900, 97, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Floatzel - Hydro Pump - Level 57
  (419, 41900, 56, 23, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Floatzel - Wave Crash - Level 62
  (419, 41900, 834, 23, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Floatzel - Take Down - TM001
  (419, 41900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Floatzel - Agility - TM004
  (419, 41900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Floatzel - Mud-Slap - TM005
  (419, 41900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Floatzel - Scary Face - TM006
  (419, 41900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Floatzel - Protect - TM007
  (419, 41900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Floatzel - Ice Fang - TM010
  (419, 41900, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Floatzel - Water Pulse - TM011
  (419, 41900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Floatzel - Low Kick - TM012
  (419, 41900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Floatzel - Thief - TM018
  (419, 41900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Floatzel - Chilling Water - TM022
  (419, 41900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Floatzel - Facade - TM025
  (419, 41900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Floatzel - Snarl - TM030
  (419, 41900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Floatzel - Swift - TM032
  (419, 41900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Floatzel - Icy Wind - TM034
  (419, 41900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Floatzel - Rock Tomb - TM036
  (419, 41900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Floatzel - Low Sweep - TM039
  (419, 41900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Floatzel - Fling - TM043
  (419, 41900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Floatzel - Endure - TM047
  (419, 41900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Floatzel - Rain Dance - TM050
  (419, 41900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Floatzel - Dig - TM055
  (419, 41900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Floatzel - Brick Break - TM058
  (419, 41900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Floatzel - Bulk Up - TM064
  (419, 41900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Floatzel - Body Slam - TM066
  (419, 41900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Floatzel - Ice Punch - TM069
  (419, 41900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Floatzel - Sleep Talk - TM070
  (419, 41900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Floatzel - Waterfall - TM077
  (419, 41900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 42),
  -- Floatzel - Metronome - TM080
  (419, 41900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 43),
  -- Floatzel - Rest - TM085
  (419, 41900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Floatzel - Taunt - TM087
  (419, 41900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Floatzel - Substitute - TM103
  (419, 41900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Floatzel - Crunch - TM108
  (419, 41900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Floatzel - Liquidation - TM110
  (419, 41900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Floatzel - Surf - TM123
  (419, 41900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 49),
  -- Floatzel - Ice Spinner - TM124
  (419, 41900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Floatzel - Helping Hand - TM130
  (419, 41900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Floatzel - Baton Pass - TM132
  (419, 41900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 52),
  -- Floatzel - Ice Beam - TM135
  (419, 41900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 53),
  -- Floatzel - Hydro Pump - TM142
  (419, 41900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 54),
  -- Floatzel - Blizzard - TM143
  (419, 41900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 55),
  -- Floatzel - Giga Impact - TM152
  (419, 41900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Floatzel - Focus Blast - TM158
  (419, 41900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Floatzel - Hyper Beam - TM163
  (419, 41900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Floatzel - Tera Blast - TM171
  (419, 41900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Floatzel - Headbutt - Egg
  (419, 41900, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Floatzel - Fury Swipes - Egg
  (419, 41900, 154, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Floatzel - Slash - Egg
  (419, 41900, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Floatzel - Mud-Slap - Egg
  (419, 41900, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Floatzel - Fury Cutter - Egg
  (419, 41900, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Floatzel - Baton Pass - Egg
  (419, 41900, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Floatzel - Helping Hand - Egg
  (419, 41900, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Floatzel - Aqua Ring - Egg
  (419, 41900, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Shellos - Water Gun - Level 1
  (422, 42200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 5
  (422, 42200, 106, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shellos - Recover - Level 10
  (422, 42200, 105, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shellos - Water Pulse - Level 15
  (422, 42200, 352, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shellos - Ancient Power - Level 20
  (422, 42200, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shellos - Body Slam - Level 25
  (422, 42200, 34, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shellos - Muddy Water - Level 31
  (422, 42200, 330, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shellos - Earth Power - Level 35
  (422, 42200, 414, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Shellos - Rain Dance - Level 40
  (422, 42200, 240, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Shellos - Memento - Level 45
  (422, 42200, 262, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Shellos - Take Down - TM001
  (422, 42200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Shellos - Mud-Slap - TM005
  (422, 42200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Shellos - Protect - TM007
  (422, 42200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Shellos - Water Pulse - TM011
  (422, 42200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Shellos - Chilling Water - TM022
  (422, 42200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Shellos - Facade - TM025
  (422, 42200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Shellos - Bulldoze - TM028
  (422, 42200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Shellos - Icy Wind - TM034
  (422, 42200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Shellos - Mud Shot - TM035
  (422, 42200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Shellos - Rock Tomb - TM036
  (422, 42200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Shellos - Endure - TM047
  (422, 42200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Shellos - Rain Dance - TM050
  (422, 42200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Shellos - Sandstorm - TM051
  (422, 42200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Shellos - Snowscape - TM052
  (422, 42200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 25),
  -- Shellos - Body Slam - TM066
  (422, 42200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Shellos - Sleep Talk - TM070
  (422, 42200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Shellos - Waterfall - TM077
  (422, 42200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 28),
  -- Shellos - Rest - TM085
  (422, 42200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Shellos - Rock Slide - TM086
  (422, 42200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 30),
  -- Shellos - Substitute - TM103
  (422, 42200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Shellos - Liquidation - TM110
  (422, 42200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Shellos - Stealth Rock - TM116
  (422, 42200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 33),
  -- Shellos - Surf - TM123
  (422, 42200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 34),
  -- Shellos - Amnesia - TM128
  (422, 42200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 35),
  -- Shellos - Helping Hand - TM130
  (422, 42200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Shellos - Earth Power - TM133
  (422, 42200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 37),
  -- Shellos - Ice Beam - TM135
  (422, 42200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Shellos - Hydro Pump - TM142
  (422, 42200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Shellos - Blizzard - TM143
  (422, 42200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Shellos - Stone Edge - TM150
  (422, 42200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 41),
  -- Shellos - Tera Blast - TM171
  (422, 42200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Shellos - Mist - Egg
  (422, 42200, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellos - Counter - Egg
  (422, 42200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellos - Sludge - Egg
  (422, 42200, 124, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellos - Acid Armor - Egg
  (422, 42200, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellos - Curse - Egg
  (422, 42200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellos - Mirror Coat - Egg
  (422, 42200, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shellos - Stockpile - Egg
  (422, 42200, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shellos - Spit Up - Egg
  (422, 42200, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shellos - Swallow - Egg
  (422, 42200, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shellos - Yawn - Egg
  (422, 42200, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shellos - Clear Smog - Egg
  (422, 42200, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastrodon - Water Gun - Level 1
  (423, 42300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Recover - Level 1
  (423, 42300, 105, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastrodon - Harden - Level 1
  (423, 42300, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gastrodon - Water Pulse - Level 15
  (423, 42300, 352, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gastrodon - Ancient Power - Level 20
  (423, 42300, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Gastrodon - Body Slam - Level 25
  (423, 42300, 34, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gastrodon - Muddy Water - Level 33
  (423, 42300, 330, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gastrodon - Earth Power - Level 39
  (423, 42300, 414, 23, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 46
  (423, 42300, 240, 23, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Gastrodon - Memento - Level 53
  (423, 42300, 262, 23, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Gastrodon - Take Down - TM001
  (423, 42300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Gastrodon - Mud-Slap - TM005
  (423, 42300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Gastrodon - Protect - TM007
  (423, 42300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Gastrodon - Water Pulse - TM011
  (423, 42300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Gastrodon - Chilling Water - TM022
  (423, 42300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Gastrodon - Facade - TM025
  (423, 42300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Gastrodon - Bulldoze - TM028
  (423, 42300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Gastrodon - Icy Wind - TM034
  (423, 42300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Gastrodon - Mud Shot - TM035
  (423, 42300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Gastrodon - Rock Tomb - TM036
  (423, 42300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Gastrodon - Endure - TM047
  (423, 42300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Gastrodon - Rain Dance - TM050
  (423, 42300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Gastrodon - Sandstorm - TM051
  (423, 42300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Gastrodon - Snowscape - TM052
  (423, 42300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 25),
  -- Gastrodon - Dig - TM055
  (423, 42300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Gastrodon - Body Slam - TM066
  (423, 42300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Gastrodon - Sleep Talk - TM070
  (423, 42300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Gastrodon - Rock Blast - TM076
  (423, 42300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 29),
  -- Gastrodon - Waterfall - TM077
  (423, 42300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 30),
  -- Gastrodon - Stomping Tantrum - TM084
  (423, 42300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 31),
  -- Gastrodon - Rest - TM085
  (423, 42300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Gastrodon - Rock Slide - TM086
  (423, 42300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Gastrodon - Spikes - TM090
  (423, 42300, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 34),
  -- Gastrodon - Substitute - TM103
  (423, 42300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Gastrodon - Liquidation - TM110
  (423, 42300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Gastrodon - Stealth Rock - TM116
  (423, 42300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Gastrodon - Surf - TM123
  (423, 42300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 38),
  -- Gastrodon - Amnesia - TM128
  (423, 42300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 39),
  -- Gastrodon - Helping Hand - TM130
  (423, 42300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Gastrodon - Earth Power - TM133
  (423, 42300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 41),
  -- Gastrodon - Ice Beam - TM135
  (423, 42300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Gastrodon - Hydro Pump - TM142
  (423, 42300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 43),
  -- Gastrodon - Blizzard - TM143
  (423, 42300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Gastrodon - Sludge Bomb - TM148
  (423, 42300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 45),
  -- Gastrodon - Earthquake - TM149
  (423, 42300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Gastrodon - Stone Edge - TM150
  (423, 42300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Gastrodon - Giga Impact - TM152
  (423, 42300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Gastrodon - Hyper Beam - TM163
  (423, 42300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Gastrodon - Tera Blast - TM171
  (423, 42300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Gastrodon - Mist - Egg
  (423, 42300, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gastrodon - Counter - Egg
  (423, 42300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastrodon - Sludge - Egg
  (423, 42300, 124, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastrodon - Acid Armor - Egg
  (423, 42300, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastrodon - Curse - Egg
  (423, 42300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastrodon - Mirror Coat - Egg
  (423, 42300, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastrodon - Stockpile - Egg
  (423, 42300, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastrodon - Spit Up - Egg
  (423, 42300, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastrodon - Swallow - Egg
  (423, 42300, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastrodon - Yawn - Egg
  (423, 42300, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastrodon - Clear Smog - Egg
  (423, 42300, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ambipom - Scratch - Level 1
  (424, 42400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ambipom - Sand Attack - Level 1
  (424, 42400, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ambipom - Tail Whip - Level 1
  (424, 42400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ambipom - Astonish - Level 1
  (424, 42400, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ambipom - Baton Pass - Level 11
  (424, 42400, 226, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Ambipom - Tickle - Level 15
  (424, 42400, 321, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ambipom - Fury Swipes - Level 18
  (424, 42400, 154, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ambipom - Swift - Level 22
  (424, 42400, 129, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Ambipom - Screech - Level 25
  (424, 42400, 103, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ambipom - Agility - Level 29
  (424, 42400, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Ambipom - Double Hit - Level 32
  (424, 42400, 458, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Ambipom - Fling - Level 36
  (424, 42400, 374, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Ambipom - Nasty Plot - Level 39
  (424, 42400, 417, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Ambipom - Last Resort - Level 43
  (424, 42400, 387, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Ambipom - Take Down - TM001
  (424, 42400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Ambipom - Agility - TM004
  (424, 42400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Ambipom - Mud-Slap - TM005
  (424, 42400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Ambipom - Protect - TM007
  (424, 42400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Ambipom - Water Pulse - TM011
  (424, 42400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Ambipom - Low Kick - TM012
  (424, 42400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Ambipom - Acrobatics - TM014
  (424, 42400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Ambipom - Thief - TM018
  (424, 42400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Ambipom - Trailblaze - TM020
  (424, 42400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Ambipom - Chilling Water - TM022
  (424, 42400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Ambipom - Facade - TM025
  (424, 42400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Ambipom - Aerial Ace - TM027
  (424, 42400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Ambipom - Swift - TM032
  (424, 42400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Ambipom - Mud Shot - TM035
  (424, 42400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Ambipom - Low Sweep - TM039
  (424, 42400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Ambipom - Fling - TM043
  (424, 42400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Ambipom - Endure - TM047
  (424, 42400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Ambipom - Sunny Day - TM049
  (424, 42400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Ambipom - Rain Dance - TM050
  (424, 42400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Ambipom - Dig - TM055
  (424, 42400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Ambipom - Brick Break - TM058
  (424, 42400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Ambipom - U-turn - TM060
  (424, 42400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Ambipom - Shadow Claw - TM061
  (424, 42400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Ambipom - Foul Play - TM062
  (424, 42400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Ambipom - Fire Punch - TM067
  (424, 42400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Ambipom - Thunder Punch - TM068
  (424, 42400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Ambipom - Ice Punch - TM069
  (424, 42400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Ambipom - Sleep Talk - TM070
  (424, 42400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Ambipom - Seed Bomb - TM071
  (424, 42400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Ambipom - Metronome - TM080
  (424, 42400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Ambipom - Grass Knot - TM081
  (424, 42400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Ambipom - Thunder Wave - TM082
  (424, 42400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Ambipom - Rest - TM085
  (424, 42400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Ambipom - Taunt - TM087
  (424, 42400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Ambipom - Gunk Shot - TM102
  (424, 42400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 49),
  -- Ambipom - Substitute - TM103
  (424, 42400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Ambipom - Shadow Ball - TM114
  (424, 42400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Ambipom - Thunderbolt - TM126
  (424, 42400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Ambipom - Helping Hand - TM130
  (424, 42400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Ambipom - Baton Pass - TM132
  (424, 42400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Ambipom - Nasty Plot - TM140
  (424, 42400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Ambipom - Giga Impact - TM152
  (424, 42400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Ambipom - Hyper Beam - TM163
  (424, 42400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Ambipom - Thunder - TM166
  (424, 42400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 58),
  -- Ambipom - Solar Beam - TM168
  (424, 42400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 59),
  -- Ambipom - Tera Blast - TM171
  (424, 42400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Ambipom - Slam - Egg
  (424, 42400, 21, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Ambipom - Counter - Egg
  (424, 42400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Ambipom - Iron Tail - Egg
  (424, 42400, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Ambipom - Beat Up - Egg
  (424, 42400, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ambipom - Fake Out - Egg
  (424, 42400, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ambipom - Bounce - Egg
  (424, 42400, 340, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ambipom - Covet - Egg
  (424, 42400, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ambipom - Switcheroo - Egg
  (424, 42400, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ambipom - Quick Guard - Egg
  (424, 42400, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Drifloon - Minimize - Level 1
  (425, 42500, 107, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Astonish - Level 1
  (425, 42500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifloon - Gust - Level 4
  (425, 42500, 16, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drifloon - Focus Energy - Level 8
  (425, 42500, 116, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drifloon - Payback - Level 12
  (425, 42500, 371, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drifloon - Hex - Level 16
  (425, 42500, 506, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drifloon - Shadow Ball - Level 20
  (425, 42500, 247, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drifloon - Stockpile - Level 24
  (425, 42500, 254, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Drifloon - Spit Up - Level 24
  (425, 42500, 255, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Drifloon - Swallow - Level 24
  (425, 42500, 256, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Drifloon - Self-Destruct - Level 29
  (425, 42500, 120, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Drifloon - Destiny Bond - Level 32
  (425, 42500, 194, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Drifloon - Baton Pass - Level 36
  (425, 42500, 226, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Drifloon - Tailwind - Level 40
  (425, 42500, 366, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Drifloon - Explosion - Level 44
  (425, 42500, 153, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Drifloon - Protect - TM007
  (425, 42500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Drifloon - Acrobatics - TM014
  (425, 42500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Drifloon - Psybeam - TM016
  (425, 42500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Drifloon - Thief - TM018
  (425, 42500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Drifloon - Facade - TM025
  (425, 42500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Drifloon - Aerial Ace - TM027
  (425, 42500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Drifloon - Hex - TM029
  (425, 42500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Drifloon - Swift - TM032
  (425, 42500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Drifloon - Icy Wind - TM034
  (425, 42500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Drifloon - Air Cutter - TM040
  (425, 42500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Drifloon - Stored Power - TM041
  (425, 42500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Drifloon - Night Shade - TM042
  (425, 42500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Drifloon - Endure - TM047
  (425, 42500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Drifloon - Sunny Day - TM049
  (425, 42500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Drifloon - Rain Dance - TM050
  (425, 42500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Drifloon - Sleep Talk - TM070
  (425, 42500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Drifloon - Thunder Wave - TM082
  (425, 42500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Drifloon - Rest - TM085
  (425, 42500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Drifloon - Imprison - TM092
  (425, 42500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 34),
  -- Drifloon - Fly - TM097
  (425, 42500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 35),
  -- Drifloon - Skill Swap - TM098
  (425, 42500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 36),
  -- Drifloon - Substitute - TM103
  (425, 42500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Drifloon - Will-O-Wisp - TM107
  (425, 42500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Drifloon - Trick - TM109
  (425, 42500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 39),
  -- Drifloon - Tailwind - TM113
  (425, 42500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Drifloon - Shadow Ball - TM114
  (425, 42500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Drifloon - Psychic - TM120
  (425, 42500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Drifloon - Thunderbolt - TM126
  (425, 42500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Drifloon - Amnesia - TM128
  (425, 42500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 44),
  -- Drifloon - Calm Mind - TM129
  (425, 42500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Drifloon - Helping Hand - TM130
  (425, 42500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Drifloon - Baton Pass - TM132
  (425, 42500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Drifloon - Phantom Force - TM151
  (425, 42500, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 48),
  -- Drifloon - Trick Room - TM161
  (425, 42500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 49),
  -- Drifloon - Thunder - TM166
  (425, 42500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Drifloon - Tera Blast - TM171
  (425, 42500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Drifloon - Disable - Egg
  (425, 42500, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drifloon - Hypnosis - Egg
  (425, 42500, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifloon - Haze - Egg
  (425, 42500, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Memento - Egg
  (425, 42500, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifloon - Defog - Egg
  (425, 42500, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifloon - Clear Smog - Egg
  (425, 42500, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drifblim - Gust - Level 1
  (426, 42600, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Minimize - Level 1
  (426, 42600, 107, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifblim - Focus Energy - Level 1
  (426, 42600, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drifblim - Astonish - Level 1
  (426, 42600, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drifblim - Strength Sap - Level 1
  (426, 42600, 668, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drifblim - Payback - Level 12
  (426, 42600, 371, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Drifblim - Hex - Level 16
  (426, 42600, 506, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Drifblim - Shadow Ball - Level 20
  (426, 42600, 247, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Drifblim - Stockpile - Level 24
  (426, 42600, 254, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Drifblim - Spit Up - Level 24
  (426, 42600, 255, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Drifblim - Swallow - Level 24
  (426, 42600, 256, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Drifblim - Self-Destruct - Level 31
  (426, 42600, 120, 23, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Drifblim - Destiny Bond - Level 36
  (426, 42600, 194, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Drifblim - Baton Pass - Level 42
  (426, 42600, 226, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Drifblim - Tailwind - Level 48
  (426, 42600, 366, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Drifblim - Explosion - Level 54
  (426, 42600, 153, 23, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Drifblim - Protect - TM007
  (426, 42600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Drifblim - Acrobatics - TM014
  (426, 42600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Drifblim - Psybeam - TM016
  (426, 42600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Drifblim - Thief - TM018
  (426, 42600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Drifblim - Facade - TM025
  (426, 42600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Drifblim - Aerial Ace - TM027
  (426, 42600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Drifblim - Hex - TM029
  (426, 42600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Drifblim - Swift - TM032
  (426, 42600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Drifblim - Icy Wind - TM034
  (426, 42600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Drifblim - Air Cutter - TM040
  (426, 42600, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Drifblim - Stored Power - TM041
  (426, 42600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Drifblim - Night Shade - TM042
  (426, 42600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 28),
  -- Drifblim - Fling - TM043
  (426, 42600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Drifblim - Endure - TM047
  (426, 42600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Drifblim - Sunny Day - TM049
  (426, 42600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Drifblim - Rain Dance - TM050
  (426, 42600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Drifblim - Air Slash - TM065
  (426, 42600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Drifblim - Body Slam - TM066
  (426, 42600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Drifblim - Sleep Talk - TM070
  (426, 42600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Drifblim - Thunder Wave - TM082
  (426, 42600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Drifblim - Rest - TM085
  (426, 42600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Drifblim - Imprison - TM092
  (426, 42600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Drifblim - Fly - TM097
  (426, 42600, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 39),
  -- Drifblim - Skill Swap - TM098
  (426, 42600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Drifblim - Substitute - TM103
  (426, 42600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Drifblim - Will-O-Wisp - TM107
  (426, 42600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Drifblim - Trick - TM109
  (426, 42600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Drifblim - Tailwind - TM113
  (426, 42600, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Drifblim - Shadow Ball - TM114
  (426, 42600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Drifblim - Psychic - TM120
  (426, 42600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Drifblim - Thunderbolt - TM126
  (426, 42600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Drifblim - Amnesia - TM128
  (426, 42600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 48),
  -- Drifblim - Calm Mind - TM129
  (426, 42600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Drifblim - Helping Hand - TM130
  (426, 42600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Drifblim - Baton Pass - TM132
  (426, 42600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 51),
  -- Drifblim - Phantom Force - TM151
  (426, 42600, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 52),
  -- Drifblim - Giga Impact - TM152
  (426, 42600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Drifblim - Trick Room - TM161
  (426, 42600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 54),
  -- Drifblim - Hyper Beam - TM163
  (426, 42600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Drifblim - Thunder - TM166
  (426, 42600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Drifblim - Tera Blast - TM171
  (426, 42600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Drifblim - Disable - Egg
  (426, 42600, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drifblim - Hypnosis - Egg
  (426, 42600, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drifblim - Haze - Egg
  (426, 42600, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drifblim - Memento - Egg
  (426, 42600, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drifblim - Defog - Egg
  (426, 42600, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drifblim - Clear Smog - Egg
  (426, 42600, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drifblim - Phantom Force - Evolution
  (426, 42600, 566, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Mismagius - Growl - Level 1
  (429, 42900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mismagius - Spite - Level 1
  (429, 42900, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mismagius - Astonish - Level 1
  (429, 42900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mismagius - Magical Leaf - Level 1
  (429, 42900, 345, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mismagius - Power Gem - Level 1
  (429, 42900, 408, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mismagius - Phantom Force - Level 1
  (429, 42900, 566, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mismagius - Mystical Fire - Level 1
  (429, 42900, 595, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mismagius - Charm - TM002
  (429, 42900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 8),
  -- Mismagius - Fake Tears - TM003
  (429, 42900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 9),
  -- Mismagius - Scary Face - TM006
  (429, 42900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 10),
  -- Mismagius - Protect - TM007
  (429, 42900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 11),
  -- Mismagius - Psybeam - TM016
  (429, 42900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 12),
  -- Mismagius - Confuse Ray - TM017
  (429, 42900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 13),
  -- Mismagius - Thief - TM018
  (429, 42900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 14),
  -- Mismagius - Charge Beam - TM023
  (429, 42900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 15),
  -- Mismagius - Facade - TM025
  (429, 42900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Mismagius - Hex - TM029
  (429, 42900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 17),
  -- Mismagius - Swift - TM032
  (429, 42900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Mismagius - Magical Leaf - TM033
  (429, 42900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Mismagius - Icy Wind - TM034
  (429, 42900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Mismagius - Draining Kiss - TM037
  (429, 42900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 21),
  -- Mismagius - Stored Power - TM041
  (429, 42900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 22),
  -- Mismagius - Night Shade - TM042
  (429, 42900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 23),
  -- Mismagius - Endure - TM047
  (429, 42900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Mismagius - Sunny Day - TM049
  (429, 42900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Mismagius - Rain Dance - TM050
  (429, 42900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Mismagius - Snowscape - TM052
  (429, 42900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 27),
  -- Mismagius - Psyshock - TM054
  (429, 42900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Mismagius - Foul Play - TM062
  (429, 42900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Mismagius - Sleep Talk - TM070
  (429, 42900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Mismagius - Dazzling Gleam - TM079
  (429, 42900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Mismagius - Grass Knot - TM081
  (429, 42900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Mismagius - Thunder Wave - TM082
  (429, 42900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Mismagius - Rest - TM085
  (429, 42900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Mismagius - Taunt - TM087
  (429, 42900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Mismagius - Imprison - TM092
  (429, 42900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Mismagius - Dark Pulse - TM094
  (429, 42900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Mismagius - Skill Swap - TM098
  (429, 42900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Mismagius - Power Gem - TM101
  (429, 42900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 39),
  -- Mismagius - Substitute - TM103
  (429, 42900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Mismagius - Will-O-Wisp - TM107
  (429, 42900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Mismagius - Trick - TM109
  (429, 42900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Mismagius - Shadow Ball - TM114
  (429, 42900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Mismagius - Hyper Voice - TM117
  (429, 42900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Mismagius - Energy Ball - TM119
  (429, 42900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 45),
  -- Mismagius - Psychic - TM120
  (429, 42900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Mismagius - Thunderbolt - TM126
  (429, 42900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Mismagius - Calm Mind - TM129
  (429, 42900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 48),
  -- Mismagius - Helping Hand - TM130
  (429, 42900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Mismagius - Nasty Plot - TM140
  (429, 42900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Mismagius - Phantom Force - TM151
  (429, 42900, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 51),
  -- Mismagius - Giga Impact - TM152
  (429, 42900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Mismagius - Trick Room - TM161
  (429, 42900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 53),
  -- Mismagius - Hyper Beam - TM163
  (429, 42900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Mismagius - Thunder - TM166
  (429, 42900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Mismagius - Tera Blast - TM171
  (429, 42900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Mismagius - Screech - Egg
  (429, 42900, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mismagius - Curse - Egg
  (429, 42900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mismagius - Spite - Egg
  (429, 42900, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mismagius - Destiny Bond - Egg
  (429, 42900, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mismagius - Memento - Egg
  (429, 42900, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mismagius - Imprison - Egg
  (429, 42900, 286, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mismagius - Sucker Punch - Egg
  (429, 42900, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mismagius - Shadow Sneak - Egg
  (429, 42900, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mismagius - Wonder Room - Egg
  (429, 42900, 472, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Honchkrow - Wing Attack - Level 1
  (430, 43000, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honchkrow - Haze - Level 1
  (430, 43000, 114, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honchkrow - Astonish - Level 1
  (430, 43000, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Honchkrow - Sucker Punch - Level 1
  (430, 43000, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Honchkrow - Night Slash - Level 1
  (430, 43000, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Honchkrow - Quash - Level 1
  (430, 43000, 511, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Honchkrow - Swagger - Level 25
  (430, 43000, 207, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Honchkrow - Nasty Plot - Level 35
  (430, 43000, 417, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Honchkrow - Foul Play - Level 45
  (430, 43000, 492, 23, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Honchkrow - Dark Pulse - Level 55
  (430, 43000, 399, 23, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Honchkrow - Comeuppance - Level 65
  (430, 43000, 894, 23, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Honchkrow - Take Down - TM001
  (430, 43000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Honchkrow - Mud-Slap - TM005
  (430, 43000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Honchkrow - Scary Face - TM006
  (430, 43000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Honchkrow - Protect - TM007
  (430, 43000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Honchkrow - Acrobatics - TM014
  (430, 43000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Honchkrow - Confuse Ray - TM017
  (430, 43000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Honchkrow - Thief - TM018
  (430, 43000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Honchkrow - Chilling Water - TM022
  (430, 43000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Honchkrow - Facade - TM025
  (430, 43000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Honchkrow - Aerial Ace - TM027
  (430, 43000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Honchkrow - Hex - TM029
  (430, 43000, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Honchkrow - Snarl - TM030
  (430, 43000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Honchkrow - Icy Wind - TM034
  (430, 43000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Honchkrow - Air Cutter - TM040
  (430, 43000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Honchkrow - Night Shade - TM042
  (430, 43000, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Honchkrow - Endure - TM047
  (430, 43000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Honchkrow - Sunny Day - TM049
  (430, 43000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Honchkrow - Rain Dance - TM050
  (430, 43000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Honchkrow - U-turn - TM060
  (430, 43000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Honchkrow - Foul Play - TM062
  (430, 43000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Honchkrow - Air Slash - TM065
  (430, 43000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Honchkrow - Sleep Talk - TM070
  (430, 43000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Honchkrow - Thunder Wave - TM082
  (430, 43000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Honchkrow - Rest - TM085
  (430, 43000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Honchkrow - Taunt - TM087
  (430, 43000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Honchkrow - Dark Pulse - TM094
  (430, 43000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Honchkrow - Fly - TM097
  (430, 43000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Honchkrow - Substitute - TM103
  (430, 43000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Honchkrow - Tailwind - TM113
  (430, 43000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Honchkrow - Shadow Ball - TM114
  (430, 43000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Honchkrow - Heat Wave - TM118
  (430, 43000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Honchkrow - Psychic - TM120
  (430, 43000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Honchkrow - Calm Mind - TM129
  (430, 43000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Honchkrow - Helping Hand - TM130
  (430, 43000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Honchkrow - Nasty Plot - TM140
  (430, 43000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 46),
  -- Honchkrow - Giga Impact - TM152
  (430, 43000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Honchkrow - Hurricane - TM160
  (430, 43000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Honchkrow - Hyper Beam - TM163
  (430, 43000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Honchkrow - Brave Bird - TM164
  (430, 43000, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 50),
  -- Honchkrow - Tera Blast - TM171
  (430, 43000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Honchkrow - Whirlwind - Egg
  (430, 43000, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Honchkrow - Drill Peck - Egg
  (430, 43000, 65, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Honchkrow - Screech - Egg
  (430, 43000, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Honchkrow - Confuse Ray - Egg
  (430, 43000, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Honchkrow - Sky Attack - Egg
  (430, 43000, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Honchkrow - Perish Song - Egg
  (430, 43000, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Honchkrow - Flatter - Egg
  (430, 43000, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Honchkrow - Feather Dance - Egg
  (430, 43000, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Honchkrow - Brave Bird - Egg
  (430, 43000, 413, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chingling - Wrap - Level 1
  (433, 43300, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 4
  (433, 43300, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Chingling - Astonish - Level 7
  (433, 43300, 310, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chingling - Confusion - Level 10
  (433, 43300, 93, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Chingling - Yawn - Level 13
  (433, 43300, 281, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Chingling - Last Resort - Level 16
  (433, 43300, 387, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chingling - Entrainment - Level 19
  (433, 43300, 494, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Chingling - Uproar - Level 32
  (433, 43300, 253, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Chingling - Protect - TM007
  (433, 43300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 9),
  -- Chingling - Charge Beam - TM023
  (433, 43300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 10),
  -- Chingling - Facade - TM025
  (433, 43300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 11),
  -- Chingling - Icy Wind - TM034
  (433, 43300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 12),
  -- Chingling - Stored Power - TM041
  (433, 43300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 13),
  -- Chingling - Endure - TM047
  (433, 43300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 14),
  -- Chingling - Sunny Day - TM049
  (433, 43300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 15),
  -- Chingling - Rain Dance - TM050
  (433, 43300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 16),
  -- Chingling - Psyshock - TM054
  (433, 43300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 17),
  -- Chingling - Zen Headbutt - TM059
  (433, 43300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 18),
  -- Chingling - Sleep Talk - TM070
  (433, 43300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 19),
  -- Chingling - Reflect - TM074
  (433, 43300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 20),
  -- Chingling - Light Screen - TM075
  (433, 43300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 21),
  -- Chingling - Dazzling Gleam - TM079
  (433, 43300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 22),
  -- Chingling - Grass Knot - TM081
  (433, 43300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 23),
  -- Chingling - Thunder Wave - TM082
  (433, 43300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 24),
  -- Chingling - Rest - TM085
  (433, 43300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Chingling - Taunt - TM087
  (433, 43300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 26),
  -- Chingling - Skill Swap - TM098
  (433, 43300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 27),
  -- Chingling - Substitute - TM103
  (433, 43300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Chingling - Trick - TM109
  (433, 43300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 29),
  -- Chingling - Shadow Ball - TM114
  (433, 43300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 30),
  -- Chingling - Hyper Voice - TM117
  (433, 43300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 31),
  -- Chingling - Energy Ball - TM119
  (433, 43300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 32),
  -- Chingling - Psychic - TM120
  (433, 43300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 33),
  -- Chingling - Calm Mind - TM129
  (433, 43300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 34),
  -- Chingling - Helping Hand - TM130
  (433, 43300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 35),
  -- Chingling - Baton Pass - TM132
  (433, 43300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 36),
  -- Chingling - Trick Room - TM161
  (433, 43300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 37),
  -- Chingling - Tera Blast - TM171
  (433, 43300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Chingling - Disable - Egg
  (433, 43300, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Chingling - Hypnosis - Egg
  (433, 43300, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chingling - Recover - Egg
  (433, 43300, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chingling - Curse - Egg
  (433, 43300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chingling - Wish - Egg
  (433, 43300, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chingling - Recycle - Egg
  (433, 43300, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chingling - Cosmic Power - Egg
  (433, 43300, 322, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chingling - Ally Switch - Egg
  (433, 43300, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Stunky - Scratch - Level 1
  (434, 43400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Poison Gas - Level 1
  (434, 43400, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunky - Feint - Level 3
  (434, 43400, 364, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Stunky - Smokescreen - Level 6
  (434, 43400, 108, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Stunky - Acid Spray - Level 9
  (434, 43400, 491, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Stunky - Fury Swipes - Level 12
  (434, 43400, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Stunky - Focus Energy - Level 15
  (434, 43400, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Stunky - Bite - Level 18
  (434, 43400, 44, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Stunky - Venoshock - Level 21
  (434, 43400, 474, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Stunky - Screech - Level 24
  (434, 43400, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Stunky - Sucker Punch - Level 30
  (434, 43400, 389, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Stunky - Memento - Level 33
  (434, 43400, 262, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Stunky - Night Slash - Level 36
  (434, 43400, 400, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Stunky - Belch - Level 39
  (434, 43400, 562, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Stunky - Explosion - Level 42
  (434, 43400, 153, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Stunky - Take Down - TM001
  (434, 43400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Stunky - Scary Face - TM006
  (434, 43400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Stunky - Protect - TM007
  (434, 43400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Stunky - Acid Spray - TM013
  (434, 43400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Stunky - Thief - TM018
  (434, 43400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Stunky - Trailblaze - TM020
  (434, 43400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Stunky - Facade - TM025
  (434, 43400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Stunky - Poison Tail - TM026
  (434, 43400, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Stunky - Hex - TM029
  (434, 43400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Stunky - Snarl - TM030
  (434, 43400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Stunky - Swift - TM032
  (434, 43400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Stunky - Venoshock - TM045
  (434, 43400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Stunky - Endure - TM047
  (434, 43400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Stunky - Sunny Day - TM049
  (434, 43400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Stunky - Rain Dance - TM050
  (434, 43400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Stunky - Dig - TM055
  (434, 43400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Stunky - Shadow Claw - TM061
  (434, 43400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Stunky - Foul Play - TM062
  (434, 43400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Stunky - Body Slam - TM066
  (434, 43400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Stunky - Sleep Talk - TM070
  (434, 43400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Stunky - Poison Jab - TM083
  (434, 43400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Stunky - Rest - TM085
  (434, 43400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Stunky - Taunt - TM087
  (434, 43400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Stunky - Toxic Spikes - TM091
  (434, 43400, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 40),
  -- Stunky - Dark Pulse - TM094
  (434, 43400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Stunky - Gunk Shot - TM102
  (434, 43400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 42),
  -- Stunky - Substitute - TM103
  (434, 43400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Stunky - Crunch - TM108
  (434, 43400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Stunky - Shadow Ball - TM114
  (434, 43400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Stunky - Flamethrower - TM125
  (434, 43400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Stunky - Play Rough - TM127
  (434, 43400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Stunky - Helping Hand - TM130
  (434, 43400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Stunky - Nasty Plot - TM140
  (434, 43400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Stunky - Fire Blast - TM141
  (434, 43400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Stunky - Sludge Bomb - TM148
  (434, 43400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Stunky - Tera Blast - TM171
  (434, 43400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Stunky - Double-Edge - Egg
  (434, 43400, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Stunky - Leer - Egg
  (434, 43400, 43, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Stunky - Haze - Egg
  (434, 43400, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Smog - Egg
  (434, 43400, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Slash - Egg
  (434, 43400, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunky - Astonish - Egg
  (434, 43400, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skuntank - Scratch - Level 1
  (435, 43500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Smokescreen - Level 1
  (435, 43500, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skuntank - Poison Gas - Level 1
  (435, 43500, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skuntank - Feint - Level 1
  (435, 43500, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skuntank - Fury Swipes - Level 12
  (435, 43500, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skuntank - Focus Energy - Level 15
  (435, 43500, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Skuntank - Bite - Level 18
  (435, 43500, 44, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Skuntank - Venoshock - Level 21
  (435, 43500, 474, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Skuntank - Screech - Level 24
  (435, 43500, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Skuntank - Sucker Punch - Level 30
  (435, 43500, 389, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Skuntank - Memento - Level 33
  (435, 43500, 262, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Skuntank - Night Slash - Level 38
  (435, 43500, 400, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Skuntank - Belch - Level 43
  (435, 43500, 562, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Skuntank - Explosion - Level 48
  (435, 43500, 153, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Skuntank - Take Down - TM001
  (435, 43500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Skuntank - Scary Face - TM006
  (435, 43500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Skuntank - Protect - TM007
  (435, 43500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Skuntank - Acid Spray - TM013
  (435, 43500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Skuntank - Thief - TM018
  (435, 43500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Skuntank - Trailblaze - TM020
  (435, 43500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Skuntank - Fire Spin - TM024
  (435, 43500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Skuntank - Facade - TM025
  (435, 43500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Skuntank - Poison Tail - TM026
  (435, 43500, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Skuntank - Hex - TM029
  (435, 43500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Skuntank - Snarl - TM030
  (435, 43500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Skuntank - Swift - TM032
  (435, 43500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Skuntank - Venoshock - TM045
  (435, 43500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Skuntank - Endure - TM047
  (435, 43500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Skuntank - Sunny Day - TM049
  (435, 43500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Skuntank - Rain Dance - TM050
  (435, 43500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Skuntank - Dig - TM055
  (435, 43500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Skuntank - Shadow Claw - TM061
  (435, 43500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Skuntank - Foul Play - TM062
  (435, 43500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Skuntank - Body Slam - TM066
  (435, 43500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Skuntank - Sleep Talk - TM070
  (435, 43500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Skuntank - Poison Jab - TM083
  (435, 43500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Skuntank - Rest - TM085
  (435, 43500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Skuntank - Taunt - TM087
  (435, 43500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Skuntank - Toxic Spikes - TM091
  (435, 43500, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 40),
  -- Skuntank - Dark Pulse - TM094
  (435, 43500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Skuntank - Gunk Shot - TM102
  (435, 43500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 42),
  -- Skuntank - Substitute - TM103
  (435, 43500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Skuntank - Crunch - TM108
  (435, 43500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Skuntank - Shadow Ball - TM114
  (435, 43500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Skuntank - Flamethrower - TM125
  (435, 43500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Skuntank - Play Rough - TM127
  (435, 43500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Skuntank - Helping Hand - TM130
  (435, 43500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Skuntank - Nasty Plot - TM140
  (435, 43500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Skuntank - Fire Blast - TM141
  (435, 43500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Skuntank - Sludge Bomb - TM148
  (435, 43500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Skuntank - Giga Impact - TM152
  (435, 43500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Skuntank - Hyper Beam - TM163
  (435, 43500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Skuntank - Tera Blast - TM171
  (435, 43500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Skuntank - Double-Edge - Egg
  (435, 43500, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skuntank - Leer - Egg
  (435, 43500, 43, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skuntank - Haze - Egg
  (435, 43500, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skuntank - Smog - Egg
  (435, 43500, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skuntank - Slash - Egg
  (435, 43500, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skuntank - Astonish - Egg
  (435, 43500, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skuntank - Flamethrower - Evolution
  (435, 43500, 53, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 1
  (436, 43600, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzor - Confuse Ray - Level 4
  (436, 43600, 109, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Bronzor - Payback - Level 8
  (436, 43600, 371, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bronzor - Imprison - Level 12
  (436, 43600, 286, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bronzor - Gyro Ball - Level 16
  (436, 43600, 360, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Bronzor - Hypnosis - Level 20
  (436, 43600, 95, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bronzor - Safeguard - Level 24
  (436, 43600, 219, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bronzor - Extrasensory - Level 28
  (436, 43600, 326, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bronzor - Heavy Slam - Level 32
  (436, 43600, 484, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bronzor - Iron Defense - Level 36
  (436, 43600, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bronzor - Metal Sound - Level 40
  (436, 43600, 319, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bronzor - Future Sight - Level 44
  (436, 43600, 248, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Bronzor - Take Down - TM001
  (436, 43600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Bronzor - Protect - TM007
  (436, 43600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Bronzor - Confuse Ray - TM017
  (436, 43600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 16),
  -- Bronzor - Charge Beam - TM023
  (436, 43600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Bronzor - Facade - TM025
  (436, 43600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Bronzor - Bulldoze - TM028
  (436, 43600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Bronzor - Hex - TM029
  (436, 43600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 20),
  -- Bronzor - Rock Tomb - TM036
  (436, 43600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Bronzor - Stored Power - TM041
  (436, 43600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 22),
  -- Bronzor - Endure - TM047
  (436, 43600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Bronzor - Sunny Day - TM049
  (436, 43600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Bronzor - Rain Dance - TM050
  (436, 43600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Bronzor - Sandstorm - TM051
  (436, 43600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Bronzor - Psyshock - TM054
  (436, 43600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 27),
  -- Bronzor - Zen Headbutt - TM059
  (436, 43600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Bronzor - Body Slam - TM066
  (436, 43600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Bronzor - Sleep Talk - TM070
  (436, 43600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Bronzor - Reflect - TM074
  (436, 43600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Bronzor - Light Screen - TM075
  (436, 43600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Bronzor - Rock Blast - TM076
  (436, 43600, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Bronzor - Grass Knot - TM081
  (436, 43600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Bronzor - Stomping Tantrum - TM084
  (436, 43600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Bronzor - Rest - TM085
  (436, 43600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Bronzor - Rock Slide - TM086
  (436, 43600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Bronzor - Imprison - TM092
  (436, 43600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Bronzor - Flash Cannon - TM093
  (436, 43600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Bronzor - Skill Swap - TM098
  (436, 43600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Bronzor - Iron Head - TM099
  (436, 43600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Bronzor - Power Gem - TM101
  (436, 43600, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 42),
  -- Bronzor - Substitute - TM103
  (436, 43600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Bronzor - Iron Defense - TM104
  (436, 43600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Bronzor - Trick - TM109
  (436, 43600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 45),
  -- Bronzor - Shadow Ball - TM114
  (436, 43600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Bronzor - Stealth Rock - TM116
  (436, 43600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Bronzor - Psychic - TM120
  (436, 43600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Bronzor - Heavy Slam - TM121
  (436, 43600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 49),
  -- Bronzor - Ice Spinner - TM124
  (436, 43600, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Bronzor - Calm Mind - TM129
  (436, 43600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Bronzor - Helping Hand - TM130
  (436, 43600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Bronzor - Psychic Terrain - TM138
  (436, 43600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 53),
  -- Bronzor - Earthquake - TM149
  (436, 43600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Bronzor - Trick Room - TM161
  (436, 43600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 55),
  -- Bronzor - Solar Beam - TM168
  (436, 43600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Bronzor - Steel Beam - TM170
  (436, 43600, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Bronzor - Tera Blast - TM171
  (436, 43600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Bronzor - Recycle - Egg
  (436, 43600, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bronzor - Gravity - Egg
  (436, 43600, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Confusion - Level 1
  (437, 43700, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzong - Confuse Ray - Level 1
  (437, 43700, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bronzong - Sunny Day - Level 1
  (437, 43700, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bronzong - Weather Ball - Level 1
  (437, 43700, 311, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bronzong - Payback - Level 1
  (437, 43700, 371, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bronzong - Imprison - Level 12
  (437, 43700, 286, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Bronzong - Gyro Ball - Level 16
  (437, 43700, 360, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Bronzong - Hypnosis - Level 20
  (437, 43700, 95, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Bronzong - Safeguard - Level 24
  (437, 43700, 219, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Bronzong - Extrasensory - Level 28
  (437, 43700, 326, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Bronzong - Heavy Slam - Level 32
  (437, 43700, 484, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Bronzong - Iron Defense - Level 38
  (437, 43700, 334, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Bronzong - Metal Sound - Level 44
  (437, 43700, 319, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Bronzong - Future Sight - Level 50
  (437, 43700, 248, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Bronzong - Rain Dance - Level 56
  (437, 43700, 240, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Bronzong - Take Down - TM001
  (437, 43700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Bronzong - Protect - TM007
  (437, 43700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Bronzong - Psybeam - TM016
  (437, 43700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Bronzong - Confuse Ray - TM017
  (437, 43700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Bronzong - Charge Beam - TM023
  (437, 43700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Bronzong - Facade - TM025
  (437, 43700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Bronzong - Bulldoze - TM028
  (437, 43700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Bronzong - Hex - TM029
  (437, 43700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Bronzong - Rock Tomb - TM036
  (437, 43700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Bronzong - Stored Power - TM041
  (437, 43700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Bronzong - Night Shade - TM042
  (437, 43700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Bronzong - Endure - TM047
  (437, 43700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Bronzong - Sunny Day - TM049
  (437, 43700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Bronzong - Rain Dance - TM050
  (437, 43700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Bronzong - Sandstorm - TM051
  (437, 43700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Bronzong - Psyshock - TM054
  (437, 43700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 32),
  -- Bronzong - Zen Headbutt - TM059
  (437, 43700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Bronzong - Body Slam - TM066
  (437, 43700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Bronzong - Sleep Talk - TM070
  (437, 43700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Bronzong - Reflect - TM074
  (437, 43700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Bronzong - Light Screen - TM075
  (437, 43700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Bronzong - Rock Blast - TM076
  (437, 43700, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 38),
  -- Bronzong - Grass Knot - TM081
  (437, 43700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Bronzong - Stomping Tantrum - TM084
  (437, 43700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Bronzong - Rest - TM085
  (437, 43700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Bronzong - Rock Slide - TM086
  (437, 43700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Bronzong - Body Press - TM089
  (437, 43700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Bronzong - Imprison - TM092
  (437, 43700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 44),
  -- Bronzong - Flash Cannon - TM093
  (437, 43700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 45),
  -- Bronzong - Skill Swap - TM098
  (437, 43700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 46),
  -- Bronzong - Iron Head - TM099
  (437, 43700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 47),
  -- Bronzong - Power Gem - TM101
  (437, 43700, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 48),
  -- Bronzong - Substitute - TM103
  (437, 43700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Bronzong - Iron Defense - TM104
  (437, 43700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 50),
  -- Bronzong - Trick - TM109
  (437, 43700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 51),
  -- Bronzong - Shadow Ball - TM114
  (437, 43700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Bronzong - Stealth Rock - TM116
  (437, 43700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Bronzong - Psychic - TM120
  (437, 43700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Bronzong - Heavy Slam - TM121
  (437, 43700, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 55),
  -- Bronzong - Ice Spinner - TM124
  (437, 43700, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 56),
  -- Bronzong - Calm Mind - TM129
  (437, 43700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 57),
  -- Bronzong - Helping Hand - TM130
  (437, 43700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Bronzong - Psychic Terrain - TM138
  (437, 43700, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 59),
  -- Bronzong - Earthquake - TM149
  (437, 43700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 60),
  -- Bronzong - Giga Impact - TM152
  (437, 43700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Bronzong - Trick Room - TM161
  (437, 43700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 62),
  -- Bronzong - Hyper Beam - TM163
  (437, 43700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Bronzong - Solar Beam - TM168
  (437, 43700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 64),
  -- Bronzong - Steel Beam - TM170
  (437, 43700, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 65),
  -- Bronzong - Tera Blast - TM171
  (437, 43700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Bronzong - Recycle - Egg
  (437, 43700, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Bronzong - Gravity - Egg
  (437, 43700, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Bronzong - Block - Evolution
  (437, 43700, 335, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Bonsly - Fake Tears - Level 1
  (438, 43800, 313, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Level 1
  (438, 43800, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 4
  (438, 43800, 175, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Bonsly - Rock Throw - Level 8
  (438, 43800, 88, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bonsly - Block - Level 12
  (438, 43800, 335, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 16
  (438, 43800, 102, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Bonsly - Rock Tomb - Level 20
  (438, 43800, 317, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bonsly - Tearful Look - Level 24
  (438, 43800, 715, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bonsly - Sucker Punch - Level 28
  (438, 43800, 389, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bonsly - Rock Slide - Level 32
  (438, 43800, 157, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bonsly - Low Kick - Level 36
  (438, 43800, 67, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bonsly - Counter - Level 40
  (438, 43800, 68, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bonsly - Double-Edge - Level 44
  (438, 43800, 38, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Bonsly - Take Down - TM001
  (438, 43800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Bonsly - Fake Tears - TM003
  (438, 43800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Bonsly - Mud-Slap - TM005
  (438, 43800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Bonsly - Protect - TM007
  (438, 43800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Bonsly - Low Kick - TM012
  (438, 43800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Bonsly - Thief - TM018
  (438, 43800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Bonsly - Trailblaze - TM020
  (438, 43800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Bonsly - Facade - TM025
  (438, 43800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Bonsly - Bulldoze - TM028
  (438, 43800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Bonsly - Mud Shot - TM035
  (438, 43800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Bonsly - Rock Tomb - TM036
  (438, 43800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Bonsly - Endure - TM047
  (438, 43800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Bonsly - Sunny Day - TM049
  (438, 43800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Bonsly - Sandstorm - TM051
  (438, 43800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Bonsly - Dig - TM055
  (438, 43800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Bonsly - Brick Break - TM058
  (438, 43800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Bonsly - Foul Play - TM062
  (438, 43800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Bonsly - Body Slam - TM066
  (438, 43800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Bonsly - Sleep Talk - TM070
  (438, 43800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Bonsly - Rock Blast - TM076
  (438, 43800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Bonsly - Grass Knot - TM081
  (438, 43800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Bonsly - Stomping Tantrum - TM084
  (438, 43800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Bonsly - Rest - TM085
  (438, 43800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Bonsly - Rock Slide - TM086
  (438, 43800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Bonsly - Spikes - TM090
  (438, 43800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 38),
  -- Bonsly - Power Gem - TM101
  (438, 43800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 39),
  -- Bonsly - Substitute - TM103
  (438, 43800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Bonsly - Stealth Rock - TM116
  (438, 43800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Bonsly - Calm Mind - TM129
  (438, 43800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 42),
  -- Bonsly - Helping Hand - TM130
  (438, 43800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Bonsly - Earth Power - TM133
  (438, 43800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Bonsly - Earthquake - TM149
  (438, 43800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Bonsly - Stone Edge - TM150
  (438, 43800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Bonsly - Tera Blast - TM171
  (438, 43800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Bonsly - Headbutt - Egg
  (438, 43800, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bonsly - Harden - Egg
  (438, 43800, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bonsly - Defense Curl - Egg
  (438, 43800, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bonsly - Curse - Egg
  (438, 43800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bonsly - Rollout - Egg
  (438, 43800, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bonsly - Rock Polish - Egg
  (438, 43800, 397, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Happiny - Pound - Level 1
  (440, 44000, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Copycat - Level 1
  (440, 44000, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Happiny - Defense Curl - Level 4
  (440, 44000, 111, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Happiny - Sweet Kiss - Level 8
  (440, 44000, 186, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Happiny - Disarming Voice - Level 12
  (440, 44000, 574, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Happiny - Covet - Level 16
  (440, 44000, 343, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Happiny - Charm - Level 20
  (440, 44000, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Happiny - Take Down - TM001
  (440, 44000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 8),
  -- Happiny - Charm - TM002
  (440, 44000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 9),
  -- Happiny - Protect - TM007
  (440, 44000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 10),
  -- Happiny - Disarming Voice - TM019
  (440, 44000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 11),
  -- Happiny - Facade - TM025
  (440, 44000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 12),
  -- Happiny - Icy Wind - TM034
  (440, 44000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 13),
  -- Happiny - Stored Power - TM041
  (440, 44000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 14),
  -- Happiny - Fling - TM043
  (440, 44000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 15),
  -- Happiny - Endure - TM047
  (440, 44000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 16),
  -- Happiny - Sunny Day - TM049
  (440, 44000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 17),
  -- Happiny - Rain Dance - TM050
  (440, 44000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 18),
  -- Happiny - Snowscape - TM052
  (440, 44000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 19),
  -- Happiny - Zen Headbutt - TM059
  (440, 44000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 20),
  -- Happiny - Sleep Talk - TM070
  (440, 44000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Happiny - Light Screen - TM075
  (440, 44000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 22),
  -- Happiny - Metronome - TM080
  (440, 44000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 23),
  -- Happiny - Grass Knot - TM081
  (440, 44000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 24),
  -- Happiny - Thunder Wave - TM082
  (440, 44000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 25),
  -- Happiny - Rest - TM085
  (440, 44000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Happiny - Substitute - TM103
  (440, 44000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 27),
  -- Happiny - Shadow Ball - TM114
  (440, 44000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 28),
  -- Happiny - Hyper Voice - TM117
  (440, 44000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 29),
  -- Happiny - Psychic - TM120
  (440, 44000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 30),
  -- Happiny - Helping Hand - TM130
  (440, 44000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 31),
  -- Happiny - Solar Beam - TM168
  (440, 44000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 32),
  -- Happiny - Tera Blast - TM171
  (440, 44000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 33),
  -- Happiny - Seismic Toss - Egg
  (440, 44000, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Happiny - Heal Bell - Egg
  (440, 44000, 215, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Happiny - Present - Egg
  (440, 44000, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Happiny - Gravity - Egg
  (440, 44000, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Spiritomb - Night Shade - Level 1
  (442, 44200, 101, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Confuse Ray - Level 1
  (442, 44200, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spiritomb - Shadow Sneak - Level 5
  (442, 44200, 425, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spiritomb - Spite - Level 10
  (442, 44200, 180, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Spiritomb - Payback - Level 15
  (442, 44200, 371, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spiritomb - Nasty Plot - Level 20
  (442, 44200, 417, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Spiritomb - Hex - Level 25
  (442, 44200, 506, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Spiritomb - Memento - Level 30
  (442, 44200, 262, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Spiritomb - Sucker Punch - Level 35
  (442, 44200, 389, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Spiritomb - Curse - Level 40
  (442, 44200, 174, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Spiritomb - Shadow Ball - Level 45
  (442, 44200, 247, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Spiritomb - Dark Pulse - Level 50
  (442, 44200, 399, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spiritomb - Hypnosis - Level 55
  (442, 44200, 95, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spiritomb - Dream Eater - Level 60
  (442, 44200, 138, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Spiritomb - Scary Face - TM006
  (442, 44200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Spiritomb - Protect - TM007
  (442, 44200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Spiritomb - Psybeam - TM016
  (442, 44200, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 17),
  -- Spiritomb - Confuse Ray - TM017
  (442, 44200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Spiritomb - Thief - TM018
  (442, 44200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Spiritomb - Facade - TM025
  (442, 44200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Spiritomb - Hex - TM029
  (442, 44200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Spiritomb - Snarl - TM030
  (442, 44200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 22),
  -- Spiritomb - Icy Wind - TM034
  (442, 44200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Spiritomb - Rock Tomb - TM036
  (442, 44200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Spiritomb - Stored Power - TM041
  (442, 44200, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Spiritomb - Night Shade - TM042
  (442, 44200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Spiritomb - Endure - TM047
  (442, 44200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Spiritomb - Sunny Day - TM049
  (442, 44200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Spiritomb - Rain Dance - TM050
  (442, 44200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Spiritomb - Psyshock - TM054
  (442, 44200, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Spiritomb - Foul Play - TM062
  (442, 44200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Spiritomb - Body Slam - TM066
  (442, 44200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Spiritomb - Sleep Talk - TM070
  (442, 44200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Spiritomb - Rest - TM085
  (442, 44200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Spiritomb - Taunt - TM087
  (442, 44200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Spiritomb - Imprison - TM092
  (442, 44200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Spiritomb - Dark Pulse - TM094
  (442, 44200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Spiritomb - Skill Swap - TM098
  (442, 44200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Spiritomb - Substitute - TM103
  (442, 44200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Spiritomb - Will-O-Wisp - TM107
  (442, 44200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Spiritomb - Trick - TM109
  (442, 44200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Spiritomb - Shadow Ball - TM114
  (442, 44200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Spiritomb - Psychic - TM120
  (442, 44200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Spiritomb - Calm Mind - TM129
  (442, 44200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Spiritomb - Helping Hand - TM130
  (442, 44200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Spiritomb - Nasty Plot - TM140
  (442, 44200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 46),
  -- Spiritomb - Phantom Force - TM151
  (442, 44200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 47),
  -- Spiritomb - Giga Impact - TM152
  (442, 44200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Spiritomb - Trick Room - TM161
  (442, 44200, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 49),
  -- Spiritomb - Hyper Beam - TM163
  (442, 44200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Spiritomb - Tera Blast - TM171
  (442, 44200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Spiritomb - Disable - Egg
  (442, 44200, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spiritomb - Smokescreen - Egg
  (442, 44200, 108, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spiritomb - Destiny Bond - Egg
  (442, 44200, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spiritomb - Pain Split - Egg
  (442, 44200, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spiritomb - Ally Switch - Egg
  (442, 44200, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Tomb - Level 1
  (443, 44300, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gible - Sand Attack - Level 6
  (443, 44300, 28, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Gible - Dragon Breath - Level 12
  (443, 44300, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Gible - Bulldoze - Level 18
  (443, 44300, 523, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Gible - Bite - Level 25
  (443, 44300, 44, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 30
  (443, 44300, 163, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 36
  (443, 44300, 337, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 42
  (443, 44300, 91, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Gible - Sandstorm - Level 48
  (443, 44300, 201, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Gible - Take Down - Level 54
  (443, 44300, 36, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Gible - Dragon Rush - Level 60
  (443, 44300, 407, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Gible - Take Down - TM001
  (443, 44300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Gible - Scary Face - TM006
  (443, 44300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Gible - Protect - TM007
  (443, 44300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Gible - Fire Fang - TM008
  (443, 44300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 16),
  -- Gible - Thunder Fang - TM009
  (443, 44300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 17),
  -- Gible - Facade - TM025
  (443, 44300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Gible - Bulldoze - TM028
  (443, 44300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Gible - Metal Claw - TM031
  (443, 44300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 20),
  -- Gible - Swift - TM032
  (443, 44300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Gible - Mud Shot - TM035
  (443, 44300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Gible - Rock Tomb - TM036
  (443, 44300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Gible - Dragon Tail - TM044
  (443, 44300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Gible - Endure - TM047
  (443, 44300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Gible - Sunny Day - TM049
  (443, 44300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Gible - Rain Dance - TM050
  (443, 44300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Gible - Sandstorm - TM051
  (443, 44300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Gible - Dig - TM055
  (443, 44300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Gible - False Swipe - TM057
  (443, 44300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 30),
  -- Gible - Shadow Claw - TM061
  (443, 44300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Gible - Body Slam - TM066
  (443, 44300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Gible - Sleep Talk - TM070
  (443, 44300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Gible - Dragon Claw - TM078
  (443, 44300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 34),
  -- Gible - Rest - TM085
  (443, 44300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Gible - Rock Slide - TM086
  (443, 44300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Gible - Swords Dance - TM088
  (443, 44300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Gible - Iron Head - TM099
  (443, 44300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Gible - Substitute - TM103
  (443, 44300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Gible - Dragon Pulse - TM115
  (443, 44300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Gible - Stealth Rock - TM116
  (443, 44300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Gible - Flamethrower - TM125
  (443, 44300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Gible - Helping Hand - TM130
  (443, 44300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Gible - Earth Power - TM133
  (443, 44300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Gible - Fire Blast - TM141
  (443, 44300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Gible - Earthquake - TM149
  (443, 44300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Gible - Stone Edge - TM150
  (443, 44300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Gible - Outrage - TM156
  (443, 44300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 48),
  -- Gible - Draco Meteor - TM169
  (443, 44300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 49),
  -- Gible - Tera Blast - TM171
  (443, 44300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Gible - Thrash - Egg
  (443, 44300, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gible - Double-Edge - Egg
  (443, 44300, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gible - Metal Claw - Egg
  (443, 44300, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gible - Twister - Egg
  (443, 44300, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gabite - Sand Attack - Level 1
  (444, 44400, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Dragon Breath - Level 1
  (444, 44400, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gabite - Sand Tomb - Level 1
  (444, 44400, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gabite - Bulldoze - Level 18
  (444, 44400, 523, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Gabite - Bite - Level 27
  (444, 44400, 44, 23, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Gabite - Slash - Level 34
  (444, 44400, 163, 23, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Gabite - Dragon Claw - Level 42
  (444, 44400, 337, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Gabite - Dig - Level 50
  (444, 44400, 91, 23, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Gabite - Sandstorm - Level 58
  (444, 44400, 201, 23, NULL, 1, 58, NULL, NULL, NULL, 10),
  -- Gabite - Take Down - Level 66
  (444, 44400, 36, 23, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Gabite - Dragon Rush - Level 74
  (444, 44400, 407, 23, NULL, 1, 74, NULL, NULL, NULL, 12),
  -- Gabite - Take Down - TM001
  (444, 44400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Gabite - Scary Face - TM006
  (444, 44400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Gabite - Protect - TM007
  (444, 44400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Gabite - Fire Fang - TM008
  (444, 44400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 16),
  -- Gabite - Thunder Fang - TM009
  (444, 44400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 17),
  -- Gabite - Facade - TM025
  (444, 44400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Gabite - Aerial Ace - TM027
  (444, 44400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Gabite - Bulldoze - TM028
  (444, 44400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Gabite - Metal Claw - TM031
  (444, 44400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 21),
  -- Gabite - Swift - TM032
  (444, 44400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Gabite - Mud Shot - TM035
  (444, 44400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Gabite - Rock Tomb - TM036
  (444, 44400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Gabite - Dragon Tail - TM044
  (444, 44400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 25),
  -- Gabite - Endure - TM047
  (444, 44400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Gabite - Sunny Day - TM049
  (444, 44400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Gabite - Rain Dance - TM050
  (444, 44400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Gabite - Sandstorm - TM051
  (444, 44400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Gabite - Dig - TM055
  (444, 44400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Gabite - False Swipe - TM057
  (444, 44400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 31),
  -- Gabite - Shadow Claw - TM061
  (444, 44400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 32),
  -- Gabite - Body Slam - TM066
  (444, 44400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Gabite - Sleep Talk - TM070
  (444, 44400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Gabite - Dragon Claw - TM078
  (444, 44400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Gabite - Rest - TM085
  (444, 44400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Gabite - Rock Slide - TM086
  (444, 44400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Gabite - Swords Dance - TM088
  (444, 44400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Gabite - Iron Head - TM099
  (444, 44400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Gabite - Power Gem - TM101
  (444, 44400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 40),
  -- Gabite - Substitute - TM103
  (444, 44400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Gabite - Crunch - TM108
  (444, 44400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Gabite - Dragon Pulse - TM115
  (444, 44400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 43),
  -- Gabite - Stealth Rock - TM116
  (444, 44400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Gabite - Flamethrower - TM125
  (444, 44400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Gabite - Helping Hand - TM130
  (444, 44400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Gabite - Earth Power - TM133
  (444, 44400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Gabite - Fire Blast - TM141
  (444, 44400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 48),
  -- Gabite - Earthquake - TM149
  (444, 44400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Gabite - Stone Edge - TM150
  (444, 44400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Gabite - Outrage - TM156
  (444, 44400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Gabite - Draco Meteor - TM169
  (444, 44400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 52),
  -- Gabite - Tera Blast - TM171
  (444, 44400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Gabite - Thrash - Egg
  (444, 44400, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gabite - Double-Edge - Egg
  (444, 44400, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gabite - Metal Claw - Egg
  (444, 44400, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gabite - Twister - Egg
  (444, 44400, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Garchomp - Sand Attack - Level 1
  (445, 44500, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Dragon Breath - Level 1
  (445, 44500, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garchomp - Sand Tomb - Level 1
  (445, 44500, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garchomp - Bulldoze - Level 18
  (445, 44500, 523, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Garchomp - Bite - Level 27
  (445, 44500, 44, 23, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Garchomp - Slash - Level 34
  (445, 44500, 163, 23, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Garchomp - Dragon Claw - Level 42
  (445, 44500, 337, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Garchomp - Dig - Level 52
  (445, 44500, 91, 23, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Garchomp - Sandstorm - Level 62
  (445, 44500, 201, 23, NULL, 1, 62, NULL, NULL, NULL, 10),
  -- Garchomp - Take Down - Level 72
  (445, 44500, 36, 23, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Garchomp - Dragon Rush - Level 82
  (445, 44500, 407, 23, NULL, 1, 82, NULL, NULL, NULL, 12),
  -- Garchomp - Take Down - TM001
  (445, 44500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Garchomp - Scary Face - TM006
  (445, 44500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Garchomp - Protect - TM007
  (445, 44500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Garchomp - Fire Fang - TM008
  (445, 44500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 16),
  -- Garchomp - Thunder Fang - TM009
  (445, 44500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 17),
  -- Garchomp - Facade - TM025
  (445, 44500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Garchomp - Aerial Ace - TM027
  (445, 44500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Garchomp - Bulldoze - TM028
  (445, 44500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Garchomp - Metal Claw - TM031
  (445, 44500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 21),
  -- Garchomp - Swift - TM032
  (445, 44500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Garchomp - Mud Shot - TM035
  (445, 44500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Garchomp - Rock Tomb - TM036
  (445, 44500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Garchomp - Fling - TM043
  (445, 44500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Garchomp - Dragon Tail - TM044
  (445, 44500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Garchomp - Endure - TM047
  (445, 44500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Garchomp - Sunny Day - TM049
  (445, 44500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Garchomp - Rain Dance - TM050
  (445, 44500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Garchomp - Sandstorm - TM051
  (445, 44500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Garchomp - Dig - TM055
  (445, 44500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Garchomp - False Swipe - TM057
  (445, 44500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Garchomp - Brick Break - TM058
  (445, 44500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Garchomp - Shadow Claw - TM061
  (445, 44500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Garchomp - Body Slam - TM066
  (445, 44500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Garchomp - Sleep Talk - TM070
  (445, 44500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Garchomp - Dragon Claw - TM078
  (445, 44500, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 37),
  -- Garchomp - Poison Jab - TM083
  (445, 44500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Garchomp - Stomping Tantrum - TM084
  (445, 44500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Garchomp - Rest - TM085
  (445, 44500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Garchomp - Rock Slide - TM086
  (445, 44500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Garchomp - Swords Dance - TM088
  (445, 44500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Garchomp - Spikes - TM090
  (445, 44500, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 43),
  -- Garchomp - Iron Head - TM099
  (445, 44500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Garchomp - Power Gem - TM101
  (445, 44500, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 45),
  -- Garchomp - Substitute - TM103
  (445, 44500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Garchomp - Crunch - TM108
  (445, 44500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Garchomp - Liquidation - TM110
  (445, 44500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Garchomp - Dragon Pulse - TM115
  (445, 44500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Garchomp - Stealth Rock - TM116
  (445, 44500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Garchomp - Surf - TM123
  (445, 44500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Garchomp - Flamethrower - TM125
  (445, 44500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Garchomp - Helping Hand - TM130
  (445, 44500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Garchomp - Earth Power - TM133
  (445, 44500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 54),
  -- Garchomp - Fire Blast - TM141
  (445, 44500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Garchomp - Earthquake - TM149
  (445, 44500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Garchomp - Stone Edge - TM150
  (445, 44500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Garchomp - Giga Impact - TM152
  (445, 44500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Garchomp - Outrage - TM156
  (445, 44500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Garchomp - Hyper Beam - TM163
  (445, 44500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Garchomp - Draco Meteor - TM169
  (445, 44500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 61),
  -- Garchomp - Tera Blast - TM171
  (445, 44500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Garchomp - Thrash - Egg
  (445, 44500, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Garchomp - Double-Edge - Egg
  (445, 44500, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Garchomp - Metal Claw - Egg
  (445, 44500, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Garchomp - Twister - Egg
  (445, 44500, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Garchomp - Crunch - Evolution
  (445, 44500, 242, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Munchlax - Tackle - Level 1
  (446, 44600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Lick - Level 1
  (446, 44600, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Munchlax - Recycle - Level 8
  (446, 44600, 278, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Munchlax - Covet - Level 12
  (446, 44600, 343, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Munchlax - Bite - Level 16
  (446, 44600, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Munchlax - Stockpile - Level 20
  (446, 44600, 254, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Munchlax - Swallow - Level 20
  (446, 44600, 256, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Munchlax - Screech - Level 24
  (446, 44600, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Munchlax - Body Slam - Level 28
  (446, 44600, 34, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Munchlax - Fling - Level 32
  (446, 44600, 374, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Munchlax - Amnesia - Level 36
  (446, 44600, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Munchlax - Metronome - Level 40
  (446, 44600, 118, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Munchlax - Flail - Level 44
  (446, 44600, 175, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Munchlax - Belly Drum - Level 48
  (446, 44600, 187, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Munchlax - Last Resort - Level 52
  (446, 44600, 387, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Munchlax - Take Down - TM001
  (446, 44600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Munchlax - Charm - TM002
  (446, 44600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Munchlax - Mud-Slap - TM005
  (446, 44600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Munchlax - Protect - TM007
  (446, 44600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Munchlax - Trailblaze - TM020
  (446, 44600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Munchlax - Chilling Water - TM022
  (446, 44600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Munchlax - Facade - TM025
  (446, 44600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Munchlax - Bulldoze - TM028
  (446, 44600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Munchlax - Icy Wind - TM034
  (446, 44600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Munchlax - Rock Tomb - TM036
  (446, 44600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Munchlax - Fling - TM043
  (446, 44600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Munchlax - Endure - TM047
  (446, 44600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Munchlax - Sunny Day - TM049
  (446, 44600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Munchlax - Rain Dance - TM050
  (446, 44600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Munchlax - Sandstorm - TM051
  (446, 44600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Munchlax - Dig - TM055
  (446, 44600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Munchlax - Brick Break - TM058
  (446, 44600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Munchlax - Zen Headbutt - TM059
  (446, 44600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Munchlax - Body Slam - TM066
  (446, 44600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Munchlax - Fire Punch - TM067
  (446, 44600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Munchlax - Thunder Punch - TM068
  (446, 44600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Munchlax - Ice Punch - TM069
  (446, 44600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Munchlax - Sleep Talk - TM070
  (446, 44600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Munchlax - Seed Bomb - TM071
  (446, 44600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Munchlax - Metronome - TM080
  (446, 44600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Munchlax - Stomping Tantrum - TM084
  (446, 44600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Munchlax - Rest - TM085
  (446, 44600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Munchlax - Rock Slide - TM086
  (446, 44600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Munchlax - Gunk Shot - TM102
  (446, 44600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 45),
  -- Munchlax - Substitute - TM103
  (446, 44600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Munchlax - Crunch - TM108
  (446, 44600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Munchlax - Shadow Ball - TM114
  (446, 44600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Munchlax - Hyper Voice - TM117
  (446, 44600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Munchlax - Encore - TM122
  (446, 44600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Munchlax - Surf - TM123
  (446, 44600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Munchlax - Flamethrower - TM125
  (446, 44600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Munchlax - Thunderbolt - TM126
  (446, 44600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Munchlax - Amnesia - TM128
  (446, 44600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Munchlax - Helping Hand - TM130
  (446, 44600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Munchlax - Ice Beam - TM135
  (446, 44600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 56),
  -- Munchlax - Fire Blast - TM141
  (446, 44600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 57),
  -- Munchlax - Blizzard - TM143
  (446, 44600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 58),
  -- Munchlax - Earthquake - TM149
  (446, 44600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 59),
  -- Munchlax - Giga Impact - TM152
  (446, 44600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Munchlax - Thunder - TM166
  (446, 44600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 61),
  -- Munchlax - Solar Beam - TM168
  (446, 44600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 62),
  -- Munchlax - Tera Blast - TM171
  (446, 44600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Munchlax - Double-Edge - Egg
  (446, 44600, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Munchlax - Counter - Egg
  (446, 44600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Munchlax - Fissure - Egg
  (446, 44600, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Munchlax - Curse - Egg
  (446, 44600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Munchlax - Belch - Egg
  (446, 44600, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Feint - Level 4
  (447, 44700, 364, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Riolu - Metal Claw - Level 8
  (447, 44700, 232, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Riolu - Counter - Level 12
  (447, 44700, 68, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Riolu - Work Up - Level 16
  (447, 44700, 526, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Riolu - Rock Smash - Level 20
  (447, 44700, 249, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Riolu - Vacuum Wave - Level 24
  (447, 44700, 410, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Screech - Level 28
  (447, 44700, 103, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Riolu - Quick Guard - Level 32
  (447, 44700, 501, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Riolu - Force Palm - Level 36
  (447, 44700, 395, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Riolu - Swords Dance - Level 40
  (447, 44700, 14, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Riolu - Helping Hand - Level 44
  (447, 44700, 270, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Riolu - Copycat - Level 48
  (447, 44700, 383, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Riolu - Final Gambit - Level 52
  (447, 44700, 515, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Riolu - Reversal - Level 56
  (447, 44700, 179, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Riolu - Take Down - TM001
  (447, 44700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Riolu - Agility - TM004
  (447, 44700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Riolu - Protect - TM007
  (447, 44700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Riolu - Low Kick - TM012
  (447, 44700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Riolu - Trailblaze - TM020
  (447, 44700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Riolu - Facade - TM025
  (447, 44700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Riolu - Aerial Ace - TM027
  (447, 44700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Riolu - Bulldoze - TM028
  (447, 44700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Riolu - Metal Claw - TM031
  (447, 44700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Riolu - Swift - TM032
  (447, 44700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Riolu - Rock Tomb - TM036
  (447, 44700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Riolu - Low Sweep - TM039
  (447, 44700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Riolu - Fling - TM043
  (447, 44700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Riolu - Endure - TM047
  (447, 44700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Riolu - Sunny Day - TM049
  (447, 44700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Riolu - Rain Dance - TM050
  (447, 44700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Riolu - Dig - TM055
  (447, 44700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Riolu - Brick Break - TM058
  (447, 44700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Riolu - Zen Headbutt - TM059
  (447, 44700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Riolu - Shadow Claw - TM061
  (447, 44700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Riolu - Bulk Up - TM064
  (447, 44700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Riolu - Thunder Punch - TM068
  (447, 44700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Riolu - Ice Punch - TM069
  (447, 44700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Riolu - Sleep Talk - TM070
  (447, 44700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Riolu - Drain Punch - TM073
  (447, 44700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Riolu - Poison Jab - TM083
  (447, 44700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 42),
  -- Riolu - Rest - TM085
  (447, 44700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Riolu - Rock Slide - TM086
  (447, 44700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Riolu - Swords Dance - TM088
  (447, 44700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Riolu - Substitute - TM103
  (447, 44700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Riolu - Crunch - TM108
  (447, 44700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Riolu - Helping Hand - TM130
  (447, 44700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Riolu - Reversal - TM134
  (447, 44700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Riolu - Nasty Plot - TM140
  (447, 44700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Riolu - Earthquake - TM149
  (447, 44700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Riolu - Focus Blast - TM158
  (447, 44700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Riolu - Close Combat - TM167
  (447, 44700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Riolu - Tera Blast - TM171
  (447, 44700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Riolu - Bite - Egg
  (447, 44700, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Riolu - High Jump Kick - Egg
  (447, 44700, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Riolu - Detect - Egg
  (447, 44700, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Riolu - Cross Chop - Egg
  (447, 44700, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Riolu - Howl - Egg
  (447, 44700, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Riolu - Bullet Punch - Egg
  (447, 44700, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Riolu - Circle Throw - Egg
  (447, 44700, 509, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Screech - Level 1
  (448, 44800, 103, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Reversal - Level 1
  (448, 44800, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Detect - Level 1
  (448, 44800, 197, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Metal Claw - Level 1
  (448, 44800, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lucario - Rock Smash - Level 1
  (448, 44800, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lucario - Helping Hand - Level 1
  (448, 44800, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lucario - Feint - Level 1
  (448, 44800, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lucario - Copycat - Level 1
  (448, 44800, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lucario - Vacuum Wave - Level 1
  (448, 44800, 410, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lucario - Final Gambit - Level 1
  (448, 44800, 515, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lucario - Life Dew - Level 1
  (448, 44800, 791, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lucario - Counter - Level 12
  (448, 44800, 68, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Lucario - Work Up - Level 16
  (448, 44800, 526, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Lucario - Force Palm - Level 20
  (448, 44800, 395, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Lucario - Calm Mind - Level 24
  (448, 44800, 347, 23, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Lucario - Metal Sound - Level 28
  (448, 44800, 319, 23, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Lucario - Quick Guard - Level 32
  (448, 44800, 501, 23, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Lucario - Bone Rush - Level 36
  (448, 44800, 198, 23, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Lucario - Swords Dance - Level 40
  (448, 44800, 14, 23, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Lucario - Heal Pulse - Level 44
  (448, 44800, 505, 23, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Lucario - Meteor Mash - Level 48
  (448, 44800, 309, 23, NULL, 1, 48, NULL, NULL, NULL, 22),
  -- Lucario - Dragon Pulse - Level 52
  (448, 44800, 406, 23, NULL, 1, 52, NULL, NULL, NULL, 23),
  -- Lucario - Extreme Speed - Level 56
  (448, 44800, 245, 23, NULL, 1, 56, NULL, NULL, NULL, 24),
  -- Lucario - Close Combat - Level 60
  (448, 44800, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 25),
  -- Lucario - Take Down - TM001
  (448, 44800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 26),
  -- Lucario - Agility - TM004
  (448, 44800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 27),
  -- Lucario - Scary Face - TM006
  (448, 44800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 28),
  -- Lucario - Protect - TM007
  (448, 44800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 29),
  -- Lucario - Water Pulse - TM011
  (448, 44800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 30),
  -- Lucario - Low Kick - TM012
  (448, 44800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 31),
  -- Lucario - Trailblaze - TM020
  (448, 44800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 32),
  -- Lucario - Facade - TM025
  (448, 44800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 33),
  -- Lucario - Aerial Ace - TM027
  (448, 44800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 34),
  -- Lucario - Bulldoze - TM028
  (448, 44800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 35),
  -- Lucario - Metal Claw - TM031
  (448, 44800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 36),
  -- Lucario - Swift - TM032
  (448, 44800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 37),
  -- Lucario - Rock Tomb - TM036
  (448, 44800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 38),
  -- Lucario - Low Sweep - TM039
  (448, 44800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 39),
  -- Lucario - Fling - TM043
  (448, 44800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 40),
  -- Lucario - Endure - TM047
  (448, 44800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 41),
  -- Lucario - Sunny Day - TM049
  (448, 44800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 42),
  -- Lucario - Rain Dance - TM050
  (448, 44800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 43),
  -- Lucario - Dig - TM055
  (448, 44800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 44),
  -- Lucario - Brick Break - TM058
  (448, 44800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 45),
  -- Lucario - Zen Headbutt - TM059
  (448, 44800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 46),
  -- Lucario - Shadow Claw - TM061
  (448, 44800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 47),
  -- Lucario - Bulk Up - TM064
  (448, 44800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 48),
  -- Lucario - Body Slam - TM066
  (448, 44800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 49),
  -- Lucario - Thunder Punch - TM068
  (448, 44800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 50),
  -- Lucario - Ice Punch - TM069
  (448, 44800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 51),
  -- Lucario - Sleep Talk - TM070
  (448, 44800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 52),
  -- Lucario - Drain Punch - TM073
  (448, 44800, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 53),
  -- Lucario - Metronome - TM080
  (448, 44800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 54),
  -- Lucario - Poison Jab - TM083
  (448, 44800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 55),
  -- Lucario - Rest - TM085
  (448, 44800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 56),
  -- Lucario - Rock Slide - TM086
  (448, 44800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 57),
  -- Lucario - Swords Dance - TM088
  (448, 44800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 58),
  -- Lucario - Flash Cannon - TM093
  (448, 44800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 59),
  -- Lucario - Dark Pulse - TM094
  (448, 44800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 60),
  -- Lucario - Substitute - TM103
  (448, 44800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 61),
  -- Lucario - Iron Defense - TM104
  (448, 44800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 62),
  -- Lucario - Crunch - TM108
  (448, 44800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 63),
  -- Lucario - Aura Sphere - TM112
  (448, 44800, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 64),
  -- Lucario - Shadow Ball - TM114
  (448, 44800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 65),
  -- Lucario - Dragon Pulse - TM115
  (448, 44800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 66),
  -- Lucario - Psychic - TM120
  (448, 44800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 67),
  -- Lucario - Calm Mind - TM129
  (448, 44800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 68),
  -- Lucario - Helping Hand - TM130
  (448, 44800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 69),
  -- Lucario - Reversal - TM134
  (448, 44800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 70),
  -- Lucario - Nasty Plot - TM140
  (448, 44800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 71),
  -- Lucario - Earthquake - TM149
  (448, 44800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 72),
  -- Lucario - Stone Edge - TM150
  (448, 44800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 73),
  -- Lucario - Giga Impact - TM152
  (448, 44800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 74),
  -- Lucario - Focus Blast - TM158
  (448, 44800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 75),
  -- Lucario - Hyper Beam - TM163
  (448, 44800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 76),
  -- Lucario - Close Combat - TM167
  (448, 44800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 77),
  -- Lucario - Steel Beam - TM170
  (448, 44800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 78),
  -- Lucario - Tera Blast - TM171
  (448, 44800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 79),
  -- Lucario - Bite - Egg
  (448, 44800, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Lucario - High Jump Kick - Egg
  (448, 44800, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Lucario - Detect - Egg
  (448, 44800, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Lucario - Cross Chop - Egg
  (448, 44800, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Lucario - Howl - Egg
  (448, 44800, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Lucario - Bullet Punch - Egg
  (448, 44800, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Lucario - Circle Throw - Egg
  (448, 44800, 509, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Lucario - Aura Sphere - Evolution
  (448, 44800, 396, 23, NULL, 7, NULL, NULL, NULL, NULL, 87),
  -- Hippopotas - Sand Attack - Level 1
  (449, 44900, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 4
  (449, 44900, 44, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 8
  (449, 44900, 281, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Hippopotas - Sand Tomb - Level 12
  (449, 44900, 328, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hippopotas - Dig - Level 16
  (449, 44900, 91, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hippopotas - Crunch - Level 20
  (449, 44900, 242, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hippopotas - Sandstorm - Level 24
  (449, 44900, 201, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hippopotas - Take Down - Level 28
  (449, 44900, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Hippopotas - Roar - Level 32
  (449, 44900, 46, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hippopotas - Rest - Level 36
  (449, 44900, 156, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Hippopotas - Earthquake - Level 40
  (449, 44900, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hippopotas - Fissure - Level 48
  (449, 44900, 90, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Hippopotas - Slack Off - Level 52
  (449, 44900, 303, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Hippopotas - Take Down - TM001
  (449, 44900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Hippopotas - Mud-Slap - TM005
  (449, 44900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Hippopotas - Protect - TM007
  (449, 44900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Hippopotas - Fire Fang - TM008
  (449, 44900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Hippopotas - Thunder Fang - TM009
  (449, 44900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Hippopotas - Ice Fang - TM010
  (449, 44900, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Hippopotas - Facade - TM025
  (449, 44900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Hippopotas - Bulldoze - TM028
  (449, 44900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Hippopotas - Mud Shot - TM035
  (449, 44900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Hippopotas - Rock Tomb - TM036
  (449, 44900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Hippopotas - Endure - TM047
  (449, 44900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Hippopotas - Sunny Day - TM049
  (449, 44900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Hippopotas - Sandstorm - TM051
  (449, 44900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Hippopotas - Dig - TM055
  (449, 44900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Hippopotas - Body Slam - TM066
  (449, 44900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Hippopotas - Sleep Talk - TM070
  (449, 44900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Hippopotas - Stomping Tantrum - TM084
  (449, 44900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Hippopotas - Rest - TM085
  (449, 44900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Hippopotas - Rock Slide - TM086
  (449, 44900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Hippopotas - Body Press - TM089
  (449, 44900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 35),
  -- Hippopotas - Substitute - TM103
  (449, 44900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Hippopotas - Crunch - TM108
  (449, 44900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 37),
  -- Hippopotas - Stealth Rock - TM116
  (449, 44900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 38),
  -- Hippopotas - Amnesia - TM128
  (449, 44900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 39),
  -- Hippopotas - Helping Hand - TM130
  (449, 44900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Hippopotas - Earth Power - TM133
  (449, 44900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 41),
  -- Hippopotas - Earthquake - TM149
  (449, 44900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 42),
  -- Hippopotas - Stone Edge - TM150
  (449, 44900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 43),
  -- Hippopotas - Tera Blast - TM171
  (449, 44900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Hippopotas - Whirlwind - Egg
  (449, 44900, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hippopotas - Curse - Egg
  (449, 44900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hippopotas - Stockpile - Egg
  (449, 44900, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hippopotas - Spit Up - Egg
  (449, 44900, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hippopotas - Swallow - Egg
  (449, 44900, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hippowdon - Sand Attack - Level 1
  (450, 45000, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hippowdon - Yawn - Level 1
  (450, 45000, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hippowdon - Thunder Fang - Level 1
  (450, 45000, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hippowdon - Ice Fang - Level 1
  (450, 45000, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hippowdon - Fire Fang - Level 1
  (450, 45000, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hippowdon - Sand Tomb - Level 12
  (450, 45000, 328, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Hippowdon - Dig - Level 16
  (450, 45000, 91, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hippowdon - Crunch - Level 20
  (450, 45000, 242, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Hippowdon - Sandstorm - Level 24
  (450, 45000, 201, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Hippowdon - Take Down - Level 28
  (450, 45000, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Hippowdon - Roar - Level 32
  (450, 45000, 46, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Hippowdon - Rest - Level 38
  (450, 45000, 156, 23, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Hippowdon - Earthquake - Level 44
  (450, 45000, 89, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Hippowdon - Fissure - Level 56
  (450, 45000, 90, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Hippowdon - Slack Off - Level 62
  (450, 45000, 303, 23, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Hippowdon - Take Down - TM001
  (450, 45000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Hippowdon - Mud-Slap - TM005
  (450, 45000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Hippowdon - Protect - TM007
  (450, 45000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Hippowdon - Fire Fang - TM008
  (450, 45000, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Hippowdon - Thunder Fang - TM009
  (450, 45000, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Hippowdon - Ice Fang - TM010
  (450, 45000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Hippowdon - Facade - TM025
  (450, 45000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Hippowdon - Bulldoze - TM028
  (450, 45000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Hippowdon - Mud Shot - TM035
  (450, 45000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Hippowdon - Rock Tomb - TM036
  (450, 45000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Hippowdon - Endure - TM047
  (450, 45000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Hippowdon - Sunny Day - TM049
  (450, 45000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Hippowdon - Sandstorm - TM051
  (450, 45000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Hippowdon - Dig - TM055
  (450, 45000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Hippowdon - Body Slam - TM066
  (450, 45000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Hippowdon - Sleep Talk - TM070
  (450, 45000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Hippowdon - Stomping Tantrum - TM084
  (450, 45000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Hippowdon - Rest - TM085
  (450, 45000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Hippowdon - Rock Slide - TM086
  (450, 45000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Hippowdon - Body Press - TM089
  (450, 45000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Hippowdon - Iron Head - TM099
  (450, 45000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Hippowdon - Substitute - TM103
  (450, 45000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Hippowdon - Crunch - TM108
  (450, 45000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Hippowdon - Stealth Rock - TM116
  (450, 45000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Hippowdon - Hyper Voice - TM117
  (450, 45000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Hippowdon - Heavy Slam - TM121
  (450, 45000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 44),
  -- Hippowdon - Amnesia - TM128
  (450, 45000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 45),
  -- Hippowdon - Helping Hand - TM130
  (450, 45000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Hippowdon - Earth Power - TM133
  (450, 45000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Hippowdon - Earthquake - TM149
  (450, 45000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Hippowdon - Stone Edge - TM150
  (450, 45000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Hippowdon - Giga Impact - TM152
  (450, 45000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Hippowdon - Hyper Beam - TM163
  (450, 45000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Hippowdon - Tera Blast - TM171
  (450, 45000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Hippowdon - Whirlwind - Egg
  (450, 45000, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hippowdon - Curse - Egg
  (450, 45000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hippowdon - Stockpile - Egg
  (450, 45000, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hippowdon - Spit Up - Egg
  (450, 45000, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hippowdon - Swallow - Egg
  (450, 45000, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 57);
