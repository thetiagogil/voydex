-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Curated Generation VIII learnset baseline, cross-checked structurally against Bulbapedia, Serebii, and PokemonDB game learnset pages.
-- Machine normalization: Bulbapedia Generation VIII TM/TR catalog data.
-- Migration source: legacy Voydex Gen VIII learnset seeds, normalized to clean machine ids and current form identifiers.
-- Product scope: battle-only Zacian/Zamazenta Crowned legacy rows are excluded until battle-only forms are supported.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield learnsets for default forms, species 401-450.
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
  -- Shinx - Tackle - Level 1
  (403, 40300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shinx - Leer - Level 1
  (403, 40300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shinx - Thunder Shock - Level 4
  (403, 40300, 84, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shinx - Charge - Level 8
  (403, 40300, 268, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shinx - Bite - Level 12
  (403, 40300, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shinx - Spark - Level 16
  (403, 40300, 209, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shinx - Roar - Level 20
  (403, 40300, 46, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shinx - Volt Switch - Level 24
  (403, 40300, 521, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shinx - Scary Face - Level 28
  (403, 40300, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shinx - Thunder Wave - Level 32
  (403, 40300, 86, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shinx - Crunch - Level 36
  (403, 40300, 242, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shinx - Discharge - Level 40
  (403, 40300, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shinx - Swagger - Level 44
  (403, 40300, 207, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shinx - Wild Charge - Level 48
  (403, 40300, 528, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shinx - Thunder Wave - TM14
  (403, 40300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Shinx - Light Screen - TM17
  (403, 40300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Shinx - Rest - TM21
  (403, 40300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Shinx - Thief - TM23
  (403, 40300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Shinx - Snore - TM24
  (403, 40300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Shinx - Protect - TM25
  (403, 40300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Shinx - Scary Face - TM26
  (403, 40300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 21),
  -- Shinx - Attract - TM31
  (403, 40300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Shinx - Rain Dance - TM33
  (403, 40300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Shinx - Facade - TM39
  (403, 40300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Shinx - Swift - TM40
  (403, 40300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Shinx - Helping Hand - TM41
  (403, 40300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Shinx - Fake Tears - TM47
  (403, 40300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Shinx - Thunder Fang - TM66
  (403, 40300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 28),
  -- Shinx - Ice Fang - TM67
  (403, 40300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 29),
  -- Shinx - Fire Fang - TM68
  (403, 40300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 30),
  -- Shinx - Round - TM76
  (403, 40300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Shinx - Volt Switch - TM80
  (403, 40300, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 32),
  -- Shinx - Snarl - TM85
  (403, 40300, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 33),
  -- Shinx - Eerie Impulse - TM93
  (403, 40300, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 34),
  -- Shinx - Thunderbolt - TR08
  (403, 40300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Shinx - Thunder - TR09
  (403, 40300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 36),
  -- Shinx - Substitute - TR20
  (403, 40300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Shinx - Endure - TR26
  (403, 40300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Shinx - Sleep Talk - TR27
  (403, 40300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Shinx - Iron Tail - TR31
  (403, 40300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Shinx - Crunch - TR32
  (403, 40300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 41),
  -- Shinx - Electro Ball - TR80
  (403, 40300, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 42),
  -- Shinx - Wild Charge - TR86
  (403, 40300, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 43),
  -- Shinx - Play Rough - TR90
  (403, 40300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 44),
  -- Shinx - Psychic Fangs - TR97
  (403, 40300, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 45),
  -- Shinx - Double Kick - Egg
  (403, 40300, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shinx - Take Down - Egg
  (403, 40300, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shinx - Quick Attack - Egg
  (403, 40300, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shinx - Howl - Egg
  (403, 40300, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shinx - Shock Wave - Egg
  (403, 40300, 351, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shinx - Night Slash - Egg
  (403, 40300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shinx - Baby-Doll Eyes - Egg
  (403, 40300, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Luxio - Tackle - Level 1
  (404, 40400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxio - Leer - Level 1
  (404, 40400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxio - Thunder Shock - Level 1
  (404, 40400, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxio - Charge - Level 1
  (404, 40400, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Luxio - Bite - Level 12
  (404, 40400, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Luxio - Spark - Level 18
  (404, 40400, 209, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Luxio - Roar - Level 24
  (404, 40400, 46, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Luxio - Volt Switch - Level 31
  (404, 40400, 521, 18, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Luxio - Scary Face - Level 36
  (404, 40400, 184, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Luxio - Thunder Wave - Level 42
  (404, 40400, 86, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Luxio - Crunch - Level 48
  (404, 40400, 242, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Luxio - Discharge - Level 54
  (404, 40400, 435, 18, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Luxio - Swagger - Level 60
  (404, 40400, 207, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Luxio - Wild Charge - Level 68
  (404, 40400, 528, 18, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Luxio - Thunder Wave - TM14
  (404, 40400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Luxio - Light Screen - TM17
  (404, 40400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Luxio - Rest - TM21
  (404, 40400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Luxio - Thief - TM23
  (404, 40400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Luxio - Snore - TM24
  (404, 40400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Luxio - Protect - TM25
  (404, 40400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Luxio - Scary Face - TM26
  (404, 40400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 21),
  -- Luxio - Attract - TM31
  (404, 40400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Luxio - Rain Dance - TM33
  (404, 40400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Luxio - Facade - TM39
  (404, 40400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Luxio - Swift - TM40
  (404, 40400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Luxio - Helping Hand - TM41
  (404, 40400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Luxio - Fake Tears - TM47
  (404, 40400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Luxio - Thunder Fang - TM66
  (404, 40400, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 28),
  -- Luxio - Ice Fang - TM67
  (404, 40400, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 29),
  -- Luxio - Fire Fang - TM68
  (404, 40400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 30),
  -- Luxio - Round - TM76
  (404, 40400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Luxio - Volt Switch - TM80
  (404, 40400, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 32),
  -- Luxio - Snarl - TM85
  (404, 40400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 33),
  -- Luxio - Eerie Impulse - TM93
  (404, 40400, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 34),
  -- Luxio - Thunderbolt - TR08
  (404, 40400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Luxio - Thunder - TR09
  (404, 40400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 36),
  -- Luxio - Substitute - TR20
  (404, 40400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Luxio - Endure - TR26
  (404, 40400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Luxio - Sleep Talk - TR27
  (404, 40400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Luxio - Iron Tail - TR31
  (404, 40400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Luxio - Crunch - TR32
  (404, 40400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 41),
  -- Luxio - Electro Ball - TR80
  (404, 40400, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 42),
  -- Luxio - Wild Charge - TR86
  (404, 40400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 43),
  -- Luxio - Play Rough - TR90
  (404, 40400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 44),
  -- Luxio - Psychic Fangs - TR97
  (404, 40400, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 45),
  -- Luxray - Tackle - Level 1
  (405, 40500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luxray - Leer - Level 1
  (405, 40500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luxray - Thunder Shock - Level 1
  (405, 40500, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Luxray - Charge - Level 1
  (405, 40500, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Luxray - Electric Terrain - Level 1
  (405, 40500, 604, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Luxray - Bite - Level 12
  (405, 40500, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Luxray - Spark - Level 18
  (405, 40500, 209, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Luxray - Roar - Level 24
  (405, 40500, 46, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Luxray - Volt Switch - Level 33
  (405, 40500, 521, 18, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Luxray - Scary Face - Level 40
  (405, 40500, 184, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Luxray - Thunder Wave - Level 48
  (405, 40500, 86, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Luxray - Crunch - Level 56
  (405, 40500, 242, 18, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Luxray - Discharge - Level 64
  (405, 40500, 435, 18, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Luxray - Swagger - Level 72
  (405, 40500, 207, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Luxray - Wild Charge - Level 80
  (405, 40500, 528, 18, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Luxray - Hyper Beam - TM08
  (405, 40500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Luxray - Giga Impact - TM09
  (405, 40500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Luxray - Thunder Wave - TM14
  (405, 40500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Luxray - Light Screen - TM17
  (405, 40500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Luxray - Rest - TM21
  (405, 40500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Luxray - Thief - TM23
  (405, 40500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Luxray - Snore - TM24
  (405, 40500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Luxray - Protect - TM25
  (405, 40500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Luxray - Scary Face - TM26
  (405, 40500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Luxray - Attract - TM31
  (405, 40500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Luxray - Rain Dance - TM33
  (405, 40500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Luxray - Facade - TM39
  (405, 40500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Luxray - Swift - TM40
  (405, 40500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Luxray - Helping Hand - TM41
  (405, 40500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Luxray - Fake Tears - TM47
  (405, 40500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 30),
  -- Luxray - Thunder Fang - TM66
  (405, 40500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 31),
  -- Luxray - Ice Fang - TM67
  (405, 40500, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 32),
  -- Luxray - Fire Fang - TM68
  (405, 40500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 33),
  -- Luxray - Round - TM76
  (405, 40500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Luxray - Volt Switch - TM80
  (405, 40500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 35),
  -- Luxray - Snarl - TM85
  (405, 40500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 36),
  -- Luxray - Electric Terrain - TM90
  (405, 40500, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 37),
  -- Luxray - Eerie Impulse - TM93
  (405, 40500, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 38),
  -- Luxray - Thunderbolt - TR08
  (405, 40500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 39),
  -- Luxray - Thunder - TR09
  (405, 40500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 40),
  -- Luxray - Agility - TR12
  (405, 40500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Luxray - Substitute - TR20
  (405, 40500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Luxray - Endure - TR26
  (405, 40500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Luxray - Sleep Talk - TR27
  (405, 40500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Luxray - Iron Tail - TR31
  (405, 40500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Luxray - Crunch - TR32
  (405, 40500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Luxray - Superpower - TR39
  (405, 40500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Luxray - Electro Ball - TR80
  (405, 40500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 48),
  -- Luxray - Wild Charge - TR86
  (405, 40500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 49),
  -- Luxray - Play Rough - TR90
  (405, 40500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 50),
  -- Luxray - Throat Chop - TR95
  (405, 40500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 51),
  -- Luxray - Psychic Fangs - TR97
  (405, 40500, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 52),
  -- Budew - Absorb - Level 1
  (406, 40600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Budew - Growth - Level 1
  (406, 40600, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Budew - Stun Spore - Level 1
  (406, 40600, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Budew - Worry Seed - Level 1
  (406, 40600, 388, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Budew - Pin Missile - TM07
  (406, 40600, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 5),
  -- Budew - Solar Beam - TM11
  (406, 40600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 6),
  -- Budew - Rest - TM21
  (406, 40600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 7),
  -- Budew - Snore - TM24
  (406, 40600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 8),
  -- Budew - Protect - TM25
  (406, 40600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 9),
  -- Budew - Giga Drain - TM28
  (406, 40600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 10),
  -- Budew - Attract - TM31
  (406, 40600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 11),
  -- Budew - Rain Dance - TM33
  (406, 40600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 12),
  -- Budew - Sunny Day - TM34
  (406, 40600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 13),
  -- Budew - Facade - TM39
  (406, 40600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 14),
  -- Budew - Swift - TM40
  (406, 40600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 15),
  -- Budew - Weather Ball - TM46
  (406, 40600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 16),
  -- Budew - Bullet Seed - TM50
  (406, 40600, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 17),
  -- Budew - Venoshock - TM74
  (406, 40600, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 18),
  -- Budew - Round - TM76
  (406, 40600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 19),
  -- Budew - Swords Dance - TR00
  (406, 40600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 20),
  -- Budew - Substitute - TR20
  (406, 40600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 21),
  -- Budew - Sludge Bomb - TR22
  (406, 40600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 22),
  -- Budew - Spikes - TR23
  (406, 40600, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 23),
  -- Budew - Endure - TR26
  (406, 40600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 24),
  -- Budew - Sleep Talk - TR27
  (406, 40600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 25),
  -- Budew - Shadow Ball - TR33
  (406, 40600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 26),
  -- Budew - Uproar - TR35
  (406, 40600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 27),
  -- Budew - Seed Bomb - TR59
  (406, 40600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 28),
  -- Budew - Energy Ball - TR65
  (406, 40600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 29),
  -- Budew - Leaf Storm - TR71
  (406, 40600, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 30),
  -- Budew - Grass Knot - TR77
  (406, 40600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 31),
  -- Budew - Dazzling Gleam - TR92
  (406, 40600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 32),
  -- Budew - Razor Leaf - Egg
  (406, 40600, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Budew - Sleep Powder - Egg
  (406, 40600, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Budew - Cotton Spore - Egg
  (406, 40600, 178, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Budew - Synthesis - Egg
  (406, 40600, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Budew - Extrasensory - Egg
  (406, 40600, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Budew - Life Dew - Egg
  (406, 40600, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Roserade - Poison Sting - Level 1
  (407, 40700, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roserade - Absorb - Level 1
  (407, 40700, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roserade - Mega Drain - Level 1
  (407, 40700, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roserade - Leech Seed - Level 1
  (407, 40700, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roserade - Growth - Level 1
  (407, 40700, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Roserade - Stun Spore - Level 1
  (407, 40700, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Roserade - Petal Dance - Level 1
  (407, 40700, 80, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Roserade - Toxic - Level 1
  (407, 40700, 92, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Roserade - Giga Drain - Level 1
  (407, 40700, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Roserade - Sweet Scent - Level 1
  (407, 40700, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Roserade - Synthesis - Level 1
  (407, 40700, 235, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Roserade - Ingrain - Level 1
  (407, 40700, 275, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Roserade - Aromatherapy - Level 1
  (407, 40700, 312, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Roserade - Magical Leaf - Level 1
  (407, 40700, 345, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Roserade - Worry Seed - Level 1
  (407, 40700, 388, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Roserade - Toxic Spikes - Level 1
  (407, 40700, 390, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Roserade - Petal Blizzard - Level 1
  (407, 40700, 572, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Roserade - Grassy Terrain - Level 1
  (407, 40700, 580, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Roserade - Venom Drench - Level 1
  (407, 40700, 599, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Roserade - Pin Missile - TM07
  (407, 40700, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Roserade - Hyper Beam - TM08
  (407, 40700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Roserade - Giga Impact - TM09
  (407, 40700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Roserade - Magical Leaf - TM10
  (407, 40700, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 23),
  -- Roserade - Solar Beam - TM11
  (407, 40700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Roserade - Rest - TM21
  (407, 40700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Roserade - Snore - TM24
  (407, 40700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Roserade - Protect - TM25
  (407, 40700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Roserade - Giga Drain - TM28
  (407, 40700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Roserade - Attract - TM31
  (407, 40700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Roserade - Rain Dance - TM33
  (407, 40700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Roserade - Sunny Day - TM34
  (407, 40700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Roserade - Facade - TM39
  (407, 40700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Roserade - Swift - TM40
  (407, 40700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Roserade - Weather Ball - TM46
  (407, 40700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Roserade - Bullet Seed - TM50
  (407, 40700, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 35),
  -- Roserade - Venoshock - TM74
  (407, 40700, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 36),
  -- Roserade - Round - TM76
  (407, 40700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Roserade - Grassy Terrain - TM88
  (407, 40700, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 38),
  -- Roserade - Swords Dance - TR00
  (407, 40700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Roserade - Body Slam - TR01
  (407, 40700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Roserade - Substitute - TR20
  (407, 40700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Roserade - Sludge Bomb - TR22
  (407, 40700, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 42),
  -- Roserade - Spikes - TR23
  (407, 40700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 43),
  -- Roserade - Endure - TR26
  (407, 40700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Roserade - Sleep Talk - TR27
  (407, 40700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Roserade - Shadow Ball - TR33
  (407, 40700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Roserade - Uproar - TR35
  (407, 40700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 47),
  -- Roserade - Toxic Spikes - TR54
  (407, 40700, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 48),
  -- Roserade - Poison Jab - TR57
  (407, 40700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 49),
  -- Roserade - Seed Bomb - TR59
  (407, 40700, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 50),
  -- Roserade - Energy Ball - TR65
  (407, 40700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Roserade - Leaf Storm - TR71
  (407, 40700, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 52),
  -- Roserade - Power Whip - TR72
  (407, 40700, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 53),
  -- Roserade - Grass Knot - TR77
  (407, 40700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Roserade - Venom Drench - TR91
  (407, 40700, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 55),
  -- Roserade - Dazzling Gleam - TR92
  (407, 40700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 56),
  -- Combee - Gust - Level 1
  (415, 41500, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combee - Sweet Scent - Level 1
  (415, 41500, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combee - Bug Bite - Level 1
  (415, 41500, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combee - Struggle Bug - Level 1
  (415, 41500, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combee - Snore - TM24
  (415, 41500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 5),
  -- Combee - Bug Buzz - TR61
  (415, 41500, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 6),
  -- Vespiquen - Gust - Level 1
  (416, 41600, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vespiquen - Poison Sting - Level 1
  (416, 41600, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vespiquen - Confuse Ray - Level 1
  (416, 41600, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vespiquen - Slash - Level 1
  (416, 41600, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vespiquen - Sweet Scent - Level 1
  (416, 41600, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vespiquen - Bug Bite - Level 1
  (416, 41600, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vespiquen - Struggle Bug - Level 1
  (416, 41600, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vespiquen - Fury Cutter - Level 4
  (416, 41600, 210, 18, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Vespiquen - Aromatic Mist - Level 8
  (416, 41600, 597, 18, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Vespiquen - Fell Stinger - Level 12
  (416, 41600, 565, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Vespiquen - Fury Swipes - Level 16
  (416, 41600, 154, 18, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Vespiquen - Swagger - Level 20
  (416, 41600, 207, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Vespiquen - Aromatherapy - Level 24
  (416, 41600, 312, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Vespiquen - Air Slash - Level 28
  (416, 41600, 403, 18, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Vespiquen - Power Gem - Level 32
  (416, 41600, 408, 18, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Vespiquen - Toxic - Level 36
  (416, 41600, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Vespiquen - Attack Order - Level 40
  (416, 41600, 454, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Vespiquen - Defend Order - Level 40
  (416, 41600, 455, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Vespiquen - Destiny Bond - Level 44
  (416, 41600, 194, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Vespiquen - Slash - Evolution
  (416, 41600, 163, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Vespiquen - Pin Missile - TM07
  (416, 41600, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 21),
  -- Vespiquen - Hyper Beam - TM08
  (416, 41600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Vespiquen - Giga Impact - TM09
  (416, 41600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Vespiquen - Screech - TM16
  (416, 41600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Vespiquen - Rest - TM21
  (416, 41600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Vespiquen - Thief - TM23
  (416, 41600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Vespiquen - Snore - TM24
  (416, 41600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Vespiquen - Protect - TM25
  (416, 41600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Vespiquen - Attract - TM31
  (416, 41600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Vespiquen - Rain Dance - TM33
  (416, 41600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Vespiquen - Sunny Day - TM34
  (416, 41600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Vespiquen - Beat Up - TM37
  (416, 41600, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 32),
  -- Vespiquen - Facade - TM39
  (416, 41600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Vespiquen - Swift - TM40
  (416, 41600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Vespiquen - Revenge - TM42
  (416, 41600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 35),
  -- Vespiquen - U-turn - TM56
  (416, 41600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 36),
  -- Vespiquen - Assurance - TM58
  (416, 41600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Vespiquen - Fling - TM59
  (416, 41600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Vespiquen - Cross Poison - TM73
  (416, 41600, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 39),
  -- Vespiquen - Venoshock - TM74
  (416, 41600, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 40),
  -- Vespiquen - Round - TM76
  (416, 41600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Vespiquen - Hex - TM77
  (416, 41600, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 42),
  -- Vespiquen - Acrobatics - TM78
  (416, 41600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 43),
  -- Vespiquen - Air Slash - TM95
  (416, 41600, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 44),
  -- Vespiquen - Substitute - TR20
  (416, 41600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Vespiquen - Reversal - TR21
  (416, 41600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 46),
  -- Vespiquen - Sludge Bomb - TR22
  (416, 41600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Vespiquen - Endure - TR26
  (416, 41600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Vespiquen - Sleep Talk - TR27
  (416, 41600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Vespiquen - Uproar - TR35
  (416, 41600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Vespiquen - Toxic Spikes - TR54
  (416, 41600, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 51),
  -- Vespiquen - X-Scissor - TR60
  (416, 41600, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 52),
  -- Vespiquen - Bug Buzz - TR61
  (416, 41600, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 53),
  -- Vespiquen - Power Gem - TR63
  (416, 41600, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 54),
  -- Cherubi - Tackle - Level 1
  (420, 42000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherubi - Morning Sun - Level 1
  (420, 42000, 234, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherubi - Leafage - Level 5
  (420, 42000, 670, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cherubi - Growth - Level 10
  (420, 42000, 74, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cherubi - Helping Hand - Level 15
  (420, 42000, 270, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cherubi - Magical Leaf - Level 20
  (420, 42000, 345, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Cherubi - Leech Seed - Level 26
  (420, 42000, 73, 18, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Cherubi - Take Down - Level 30
  (420, 42000, 36, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Cherubi - Petal Blizzard - Level 35
  (420, 42000, 572, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cherubi - Worry Seed - Level 40
  (420, 42000, 388, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cherubi - Solar Beam - Level 45
  (420, 42000, 76, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Cherubi - Magical Leaf - TM10
  (420, 42000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 12),
  -- Cherubi - Solar Beam - TM11
  (420, 42000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 13),
  -- Cherubi - Safeguard - TM19
  (420, 42000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 14),
  -- Cherubi - Rest - TM21
  (420, 42000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Cherubi - Snore - TM24
  (420, 42000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Cherubi - Protect - TM25
  (420, 42000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Cherubi - Giga Drain - TM28
  (420, 42000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 18),
  -- Cherubi - Attract - TM31
  (420, 42000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Cherubi - Sunny Day - TM34
  (420, 42000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 20),
  -- Cherubi - Facade - TM39
  (420, 42000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Cherubi - Helping Hand - TM41
  (420, 42000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 22),
  -- Cherubi - Weather Ball - TM46
  (420, 42000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 23),
  -- Cherubi - Bullet Seed - TM50
  (420, 42000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 24),
  -- Cherubi - Round - TM76
  (420, 42000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Cherubi - Draining Kiss - TM87
  (420, 42000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 26),
  -- Cherubi - Grassy Terrain - TM88
  (420, 42000, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 27),
  -- Cherubi - Swords Dance - TR00
  (420, 42000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 28),
  -- Cherubi - Substitute - TR20
  (420, 42000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Cherubi - Endure - TR26
  (420, 42000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Cherubi - Sleep Talk - TR27
  (420, 42000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Cherubi - Seed Bomb - TR59
  (420, 42000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 32),
  -- Cherubi - Energy Ball - TR65
  (420, 42000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 33),
  -- Cherubi - Grass Knot - TR77
  (420, 42000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 34),
  -- Cherubi - Dazzling Gleam - TR92
  (420, 42000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 35),
  -- Cherubi - Pollen Puff - TR96
  (420, 42000, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 36),
  -- Cherubi - Razor Leaf - Egg
  (420, 42000, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cherubi - Defense Curl - Egg
  (420, 42000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cherubi - Rollout - Egg
  (420, 42000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cherubi - Sweet Scent - Egg
  (420, 42000, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cherubi - Nature Power - Egg
  (420, 42000, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cherubi - Aromatherapy - Egg
  (420, 42000, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cherubi - Tickle - Egg
  (420, 42000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cherubi - Healing Wish - Egg
  (420, 42000, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cherubi - Heal Pulse - Egg
  (420, 42000, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cherubi - Flower Shield - Egg
  (420, 42000, 579, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cherrim - Tackle - Level 1
  (421, 42100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cherrim - Growth - Level 1
  (421, 42100, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cherrim - Morning Sun - Level 1
  (421, 42100, 234, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cherrim - Sunny Day - Level 1
  (421, 42100, 241, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cherrim - Flower Shield - Level 1
  (421, 42100, 579, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cherrim - Leafage - Level 1
  (421, 42100, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cherrim - Helping Hand - Level 15
  (421, 42100, 270, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Cherrim - Magical Leaf - Level 20
  (421, 42100, 345, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cherrim - Leech Seed - Level 28
  (421, 42100, 73, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Cherrim - Take Down - Level 34
  (421, 42100, 36, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Cherrim - Petal Blizzard - Level 41
  (421, 42100, 572, 18, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Cherrim - Worry Seed - Level 48
  (421, 42100, 388, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Cherrim - Solar Beam - Level 55
  (421, 42100, 76, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Cherrim - Petal Dance - Level 62
  (421, 42100, 80, 18, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Cherrim - Sunny Day - Evolution
  (421, 42100, 241, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Cherrim - Hyper Beam - TM08
  (421, 42100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Cherrim - Giga Impact - TM09
  (421, 42100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Cherrim - Magical Leaf - TM10
  (421, 42100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 18),
  -- Cherrim - Solar Beam - TM11
  (421, 42100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Cherrim - Solar Blade - TM12
  (421, 42100, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 20),
  -- Cherrim - Safeguard - TM19
  (421, 42100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Cherrim - Rest - TM21
  (421, 42100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Cherrim - Snore - TM24
  (421, 42100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Cherrim - Protect - TM25
  (421, 42100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Cherrim - Giga Drain - TM28
  (421, 42100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Cherrim - Attract - TM31
  (421, 42100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Cherrim - Sunny Day - TM34
  (421, 42100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Cherrim - Facade - TM39
  (421, 42100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Cherrim - Helping Hand - TM41
  (421, 42100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Cherrim - Weather Ball - TM46
  (421, 42100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 30),
  -- Cherrim - Bullet Seed - TM50
  (421, 42100, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 31),
  -- Cherrim - Round - TM76
  (421, 42100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Cherrim - Draining Kiss - TM87
  (421, 42100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 33),
  -- Cherrim - Grassy Terrain - TM88
  (421, 42100, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 34),
  -- Cherrim - Swords Dance - TR00
  (421, 42100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Cherrim - Substitute - TR20
  (421, 42100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Cherrim - Endure - TR26
  (421, 42100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Cherrim - Sleep Talk - TR27
  (421, 42100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Cherrim - Seed Bomb - TR59
  (421, 42100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 39),
  -- Cherrim - Energy Ball - TR65
  (421, 42100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Cherrim - Grass Knot - TR77
  (421, 42100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 41),
  -- Cherrim - Play Rough - TR90
  (421, 42100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 42),
  -- Cherrim - Dazzling Gleam - TR92
  (421, 42100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 43),
  -- Cherrim - Pollen Puff - TR96
  (421, 42100, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 44),
  -- Shellos - Water Gun - Level 1
  (422, 42200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellos - Mud-Slap - Level 1
  (422, 42200, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellos - Harden - Level 5
  (422, 42200, 106, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shellos - Recover - Level 10
  (422, 42200, 105, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shellos - Water Pulse - Level 15
  (422, 42200, 352, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shellos - Ancient Power - Level 20
  (422, 42200, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shellos - Body Slam - Level 25
  (422, 42200, 34, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shellos - Muddy Water - Level 31
  (422, 42200, 330, 18, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Shellos - Earth Power - Level 35
  (422, 42200, 414, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Shellos - Rain Dance - Level 40
  (422, 42200, 240, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Shellos - Memento - Level 45
  (422, 42200, 262, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Shellos - Rest - TM21
  (422, 42200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 12),
  -- Shellos - Snore - TM24
  (422, 42200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 13),
  -- Shellos - Protect - TM25
  (422, 42200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 14),
  -- Shellos - Icy Wind - TM27
  (422, 42200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 15),
  -- Shellos - Attract - TM31
  (422, 42200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 16),
  -- Shellos - Rain Dance - TM33
  (422, 42200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 17),
  -- Shellos - Hail - TM35
  (422, 42200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 18),
  -- Shellos - Whirlpool - TM36
  (422, 42200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 19),
  -- Shellos - Facade - TM39
  (422, 42200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Shellos - Dive - TM45
  (422, 42200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 21),
  -- Shellos - Mud Shot - TM53
  (422, 42200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 22),
  -- Shellos - Brine - TM55
  (422, 42200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 23),
  -- Shellos - Round - TM76
  (422, 42200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Shellos - Body Slam - TR01
  (422, 42200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 25),
  -- Shellos - Hydro Pump - TR03
  (422, 42200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 26),
  -- Shellos - Surf - TR04
  (422, 42200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 27),
  -- Shellos - Ice Beam - TR05
  (422, 42200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 28),
  -- Shellos - Blizzard - TR06
  (422, 42200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 29),
  -- Shellos - Amnesia - TR17
  (422, 42200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 30),
  -- Shellos - Substitute - TR20
  (422, 42200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Shellos - Endure - TR26
  (422, 42200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Shellos - Sleep Talk - TR27
  (422, 42200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Shellos - Muddy Water - TR45
  (422, 42200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 34),
  -- Shellos - Earth Power - TR67
  (422, 42200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 35),
  -- Shellos - Scald - TR84
  (422, 42200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 36),
  -- Shellos - Mist - Egg
  (422, 42200, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellos - Counter - Egg
  (422, 42200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellos - Sludge - Egg
  (422, 42200, 124, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellos - Acid Armor - Egg
  (422, 42200, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellos - Curse - Egg
  (422, 42200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellos - Mirror Coat - Egg
  (422, 42200, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellos - Stockpile - Egg
  (422, 42200, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellos - Spit Up - Egg
  (422, 42200, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellos - Swallow - Egg
  (422, 42200, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellos - Yawn - Egg
  (422, 42200, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellos - Clear Smog - Egg
  (422, 42200, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gastrodon - Water Gun - Level 1
  (423, 42300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastrodon - Recover - Level 1
  (423, 42300, 105, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastrodon - Harden - Level 1
  (423, 42300, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastrodon - Mud-Slap - Level 1
  (423, 42300, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gastrodon - Water Pulse - Level 15
  (423, 42300, 352, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gastrodon - Ancient Power - Level 20
  (423, 42300, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Gastrodon - Body Slam - Level 25
  (423, 42300, 34, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Gastrodon - Muddy Water - Level 33
  (423, 42300, 330, 18, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gastrodon - Earth Power - Level 39
  (423, 42300, 414, 18, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Gastrodon - Rain Dance - Level 46
  (423, 42300, 240, 18, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Gastrodon - Memento - Level 53
  (423, 42300, 262, 18, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Gastrodon - Hyper Beam - TM08
  (423, 42300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 12),
  -- Gastrodon - Giga Impact - TM09
  (423, 42300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 13),
  -- Gastrodon - Dig - TM15
  (423, 42300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Gastrodon - Rest - TM21
  (423, 42300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Gastrodon - Rock Slide - TM22
  (423, 42300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Gastrodon - Snore - TM24
  (423, 42300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Gastrodon - Protect - TM25
  (423, 42300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Gastrodon - Icy Wind - TM27
  (423, 42300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Gastrodon - Attract - TM31
  (423, 42300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Gastrodon - Sandstorm - TM32
  (423, 42300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Gastrodon - Rain Dance - TM33
  (423, 42300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Gastrodon - Hail - TM35
  (423, 42300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Gastrodon - Whirlpool - TM36
  (423, 42300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 24),
  -- Gastrodon - Facade - TM39
  (423, 42300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Gastrodon - Dive - TM45
  (423, 42300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 26),
  -- Gastrodon - Weather Ball - TM46
  (423, 42300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 27),
  -- Gastrodon - Rock Tomb - TM48
  (423, 42300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Gastrodon - Sand Tomb - TM49
  (423, 42300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 29),
  -- Gastrodon - Mud Shot - TM53
  (423, 42300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 30),
  -- Gastrodon - Brine - TM55
  (423, 42300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Gastrodon - Round - TM76
  (423, 42300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Gastrodon - Bulldoze - TM81
  (423, 42300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Gastrodon - Stomping Tantrum - TM98
  (423, 42300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 34),
  -- Gastrodon - Body Slam - TR01
  (423, 42300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Gastrodon - Hydro Pump - TR03
  (423, 42300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Gastrodon - Surf - TR04
  (423, 42300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Gastrodon - Ice Beam - TR05
  (423, 42300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Gastrodon - Blizzard - TR06
  (423, 42300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Gastrodon - Earthquake - TR10
  (423, 42300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Gastrodon - Waterfall - TR16
  (423, 42300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 41),
  -- Gastrodon - Amnesia - TR17
  (423, 42300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Gastrodon - Substitute - TR20
  (423, 42300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Gastrodon - Sludge Bomb - TR22
  (423, 42300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 44),
  -- Gastrodon - Endure - TR26
  (423, 42300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Gastrodon - Sleep Talk - TR27
  (423, 42300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Gastrodon - Muddy Water - TR45
  (423, 42300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 47),
  -- Gastrodon - Earth Power - TR67
  (423, 42300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 48),
  -- Gastrodon - Stone Edge - TR75
  (423, 42300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 49),
  -- Gastrodon - Sludge Wave - TR78
  (423, 42300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 50),
  -- Gastrodon - Scald - TR84
  (423, 42300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 51),
  -- Drifloon - Minimize - Level 1
  (425, 42500, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifloon - Astonish - Level 1
  (425, 42500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifloon - Gust - Level 4
  (425, 42500, 16, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Drifloon - Focus Energy - Level 8
  (425, 42500, 116, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drifloon - Payback - Level 12
  (425, 42500, 371, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drifloon - Hex - Level 16
  (425, 42500, 506, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Drifloon - Shadow Ball - Level 20
  (425, 42500, 247, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Drifloon - Stockpile - Level 24
  (425, 42500, 254, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Drifloon - Spit Up - Level 24
  (425, 42500, 255, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Drifloon - Swallow - Level 24
  (425, 42500, 256, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Drifloon - Self-Destruct - Level 29
  (425, 42500, 120, 18, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Drifloon - Destiny Bond - Level 32
  (425, 42500, 194, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Drifloon - Baton Pass - Level 36
  (425, 42500, 226, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Drifloon - Tailwind - Level 40
  (425, 42500, 366, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Drifloon - Explosion - Level 44
  (425, 42500, 153, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Drifloon - Thunder Wave - TM14
  (425, 42500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Drifloon - Self-Destruct - TM20
  (425, 42500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 17),
  -- Drifloon - Rest - TM21
  (425, 42500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Drifloon - Thief - TM23
  (425, 42500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Drifloon - Snore - TM24
  (425, 42500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Drifloon - Protect - TM25
  (425, 42500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Drifloon - Icy Wind - TM27
  (425, 42500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Drifloon - Attract - TM31
  (425, 42500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Drifloon - Rain Dance - TM33
  (425, 42500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Drifloon - Sunny Day - TM34
  (425, 42500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Drifloon - Will-O-Wisp - TM38
  (425, 42500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Drifloon - Facade - TM39
  (425, 42500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Drifloon - Swift - TM40
  (425, 42500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Drifloon - Weather Ball - TM46
  (425, 42500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 29),
  -- Drifloon - Payback - TM57
  (425, 42500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Drifloon - Round - TM76
  (425, 42500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Drifloon - Hex - TM77
  (425, 42500, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Drifloon - Acrobatics - TM78
  (425, 42500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 33),
  -- Drifloon - Brutal Swing - TM97
  (425, 42500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 34),
  -- Drifloon - Body Slam - TR01
  (425, 42500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Drifloon - Thunderbolt - TR08
  (425, 42500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Drifloon - Thunder - TR09
  (425, 42500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Drifloon - Psychic - TR11
  (425, 42500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Drifloon - Focus Energy - TR13
  (425, 42500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 39),
  -- Drifloon - Amnesia - TR17
  (425, 42500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 40),
  -- Drifloon - Substitute - TR20
  (425, 42500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Drifloon - Endure - TR26
  (425, 42500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Drifloon - Sleep Talk - TR27
  (425, 42500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Drifloon - Baton Pass - TR29
  (425, 42500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 44),
  -- Drifloon - Shadow Ball - TR33
  (425, 42500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 45),
  -- Drifloon - Trick - TR38
  (425, 42500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 46),
  -- Drifloon - Skill Swap - TR40
  (425, 42500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 47),
  -- Drifloon - Calm Mind - TR49
  (425, 42500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 48),
  -- Drifloon - Gyro Ball - TR52
  (425, 42500, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Drifloon - Ally Switch - TR83
  (425, 42500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 50),
  -- Drifloon - Disable - Egg
  (425, 42500, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Drifloon - Hypnosis - Egg
  (425, 42500, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drifloon - Haze - Egg
  (425, 42500, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drifloon - Memento - Egg
  (425, 42500, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drifloon - Defog - Egg
  (425, 42500, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drifloon - Clear Smog - Egg
  (425, 42500, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drifblim - Gust - Level 1
  (426, 42600, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drifblim - Minimize - Level 1
  (426, 42600, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drifblim - Focus Energy - Level 1
  (426, 42600, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drifblim - Astonish - Level 1
  (426, 42600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drifblim - Phantom Force - Level 1
  (426, 42600, 566, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drifblim - Strength Sap - Level 1
  (426, 42600, 668, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drifblim - Payback - Level 12
  (426, 42600, 371, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Drifblim - Hex - Level 16
  (426, 42600, 506, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Drifblim - Shadow Ball - Level 20
  (426, 42600, 247, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Drifblim - Stockpile - Level 24
  (426, 42600, 254, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Drifblim - Spit Up - Level 24
  (426, 42600, 255, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Drifblim - Swallow - Level 24
  (426, 42600, 256, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Drifblim - Self-Destruct - Level 31
  (426, 42600, 120, 18, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Drifblim - Destiny Bond - Level 36
  (426, 42600, 194, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Drifblim - Baton Pass - Level 42
  (426, 42600, 226, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Drifblim - Tailwind - Level 48
  (426, 42600, 366, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Drifblim - Explosion - Level 54
  (426, 42600, 153, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Drifblim - Phantom Force - Evolution
  (426, 42600, 566, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Drifblim - Fly - TM06
  (426, 42600, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Drifblim - Hyper Beam - TM08
  (426, 42600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Drifblim - Giga Impact - TM09
  (426, 42600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Drifblim - Thunder Wave - TM14
  (426, 42600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Drifblim - Self-Destruct - TM20
  (426, 42600, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Drifblim - Rest - TM21
  (426, 42600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Drifblim - Thief - TM23
  (426, 42600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Drifblim - Snore - TM24
  (426, 42600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Drifblim - Protect - TM25
  (426, 42600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Drifblim - Icy Wind - TM27
  (426, 42600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Drifblim - Attract - TM31
  (426, 42600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Drifblim - Rain Dance - TM33
  (426, 42600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Drifblim - Sunny Day - TM34
  (426, 42600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Drifblim - Will-O-Wisp - TM38
  (426, 42600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Drifblim - Facade - TM39
  (426, 42600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Drifblim - Swift - TM40
  (426, 42600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Drifblim - Imprison - TM44
  (426, 42600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Drifblim - Weather Ball - TM46
  (426, 42600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Drifblim - Payback - TM57
  (426, 42600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Drifblim - Round - TM76
  (426, 42600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Drifblim - Hex - TM77
  (426, 42600, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 39),
  -- Drifblim - Acrobatics - TM78
  (426, 42600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 40),
  -- Drifblim - Phantom Force - TM86
  (426, 42600, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 41),
  -- Drifblim - Brutal Swing - TM97
  (426, 42600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Drifblim - Body Slam - TR01
  (426, 42600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Drifblim - Thunderbolt - TR08
  (426, 42600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Drifblim - Thunder - TR09
  (426, 42600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Drifblim - Psychic - TR11
  (426, 42600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Drifblim - Focus Energy - TR13
  (426, 42600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 47),
  -- Drifblim - Amnesia - TR17
  (426, 42600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 48),
  -- Drifblim - Substitute - TR20
  (426, 42600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Drifblim - Endure - TR26
  (426, 42600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Drifblim - Sleep Talk - TR27
  (426, 42600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Drifblim - Baton Pass - TR29
  (426, 42600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 52),
  -- Drifblim - Shadow Ball - TR33
  (426, 42600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Drifblim - Trick - TR38
  (426, 42600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 54),
  -- Drifblim - Skill Swap - TR40
  (426, 42600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 55),
  -- Drifblim - Calm Mind - TR49
  (426, 42600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 56),
  -- Drifblim - Gyro Ball - TR52
  (426, 42600, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 57),
  -- Drifblim - Ally Switch - TR83
  (426, 42600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 58),
  -- Buneary - Pound - Level 1
  (427, 42700, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Buneary - Splash - Level 1
  (427, 42700, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Buneary - Defense Curl - Level 4
  (427, 42700, 111, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Buneary - Baby-Doll Eyes - Level 8
  (427, 42700, 608, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Buneary - After You - Level 12
  (427, 42700, 495, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Buneary - Quick Attack - Level 16
  (427, 42700, 98, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Buneary - Double Kick - Level 20
  (427, 42700, 24, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Buneary - Charm - Level 24
  (427, 42700, 204, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Buneary - Baton Pass - Level 28
  (427, 42700, 226, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Buneary - Headbutt - Level 32
  (427, 42700, 29, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Buneary - Agility - Level 36
  (427, 42700, 97, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Buneary - Entrainment - Level 40
  (427, 42700, 494, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Buneary - Flatter - Level 44
  (427, 42700, 260, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Buneary - Bounce - Level 48
  (427, 42700, 340, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Buneary - Healing Wish - Level 52
  (427, 42700, 361, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Buneary - Mega Punch - TM00
  (427, 42700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Buneary - Mega Kick - TM01
  (427, 42700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Buneary - Fire Punch - TM03
  (427, 42700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Buneary - Ice Punch - TM04
  (427, 42700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Buneary - Thunder Punch - TM05
  (427, 42700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Buneary - Solar Beam - TM11
  (427, 42700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Buneary - Thunder Wave - TM14
  (427, 42700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Buneary - Dig - TM15
  (427, 42700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Buneary - Rest - TM21
  (427, 42700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Buneary - Snore - TM24
  (427, 42700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Buneary - Protect - TM25
  (427, 42700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Buneary - Charm - TM29
  (427, 42700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Buneary - Attract - TM31
  (427, 42700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Buneary - Rain Dance - TM33
  (427, 42700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Buneary - Sunny Day - TM34
  (427, 42700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Buneary - Facade - TM39
  (427, 42700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Buneary - Swift - TM40
  (427, 42700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Buneary - Helping Hand - TM41
  (427, 42700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Buneary - Fake Tears - TM47
  (427, 42700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 34),
  -- Buneary - Bounce - TM52
  (427, 42700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 35),
  -- Buneary - Payback - TM57
  (427, 42700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Buneary - Assurance - TM58
  (427, 42700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Buneary - Fling - TM59
  (427, 42700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Buneary - Drain Punch - TM63
  (427, 42700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 39),
  -- Buneary - Low Sweep - TM75
  (427, 42700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Buneary - Round - TM76
  (427, 42700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Buneary - Retaliate - TM79
  (427, 42700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 42),
  -- Buneary - Ice Beam - TR05
  (427, 42700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Buneary - Low Kick - TR07
  (427, 42700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Buneary - Thunderbolt - TR08
  (427, 42700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Buneary - Agility - TR12
  (427, 42700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Buneary - Substitute - TR20
  (427, 42700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Buneary - Endure - TR26
  (427, 42700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Buneary - Sleep Talk - TR27
  (427, 42700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Buneary - Baton Pass - TR29
  (427, 42700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 50),
  -- Buneary - Encore - TR30
  (427, 42700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 51),
  -- Buneary - Iron Tail - TR31
  (427, 42700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Buneary - Shadow Ball - TR33
  (427, 42700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Buneary - Uproar - TR35
  (427, 42700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Buneary - Hyper Voice - TR42
  (427, 42700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 55),
  -- Buneary - Cosmic Power - TR44
  (427, 42700, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 56),
  -- Buneary - Grass Knot - TR77
  (427, 42700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Buneary - Work Up - TR85
  (427, 42700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Buneary - Play Rough - TR90
  (427, 42700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 59),
  -- Buneary - Flail - Egg
  (427, 42700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Buneary - Sweet Kiss - Egg
  (427, 42700, 186, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Buneary - Fake Out - Egg
  (427, 42700, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Buneary - Focus Punch - Egg
  (427, 42700, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Buneary - Teeter Dance - Egg
  (427, 42700, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Buneary - Copycat - Egg
  (427, 42700, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Buneary - Switcheroo - Egg
  (427, 42700, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Buneary - Double Hit - Egg
  (427, 42700, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Buneary - Circle Throw - Egg
  (427, 42700, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lopunny - Pound - Level 1
  (428, 42800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lopunny - Defense Curl - Level 1
  (428, 42800, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lopunny - Splash - Level 1
  (428, 42800, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lopunny - Mirror Coat - Level 1
  (428, 42800, 243, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lopunny - Magic Coat - Level 1
  (428, 42800, 277, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lopunny - Baby-Doll Eyes - Level 1
  (428, 42800, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lopunny - After You - Level 12
  (428, 42800, 495, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Lopunny - Quick Attack - Level 16
  (428, 42800, 98, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Lopunny - Double Kick - Level 20
  (428, 42800, 24, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Lopunny - Charm - Level 24
  (428, 42800, 204, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Lopunny - Baton Pass - Level 28
  (428, 42800, 226, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Lopunny - Headbutt - Level 32
  (428, 42800, 29, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Lopunny - Agility - Level 36
  (428, 42800, 97, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lopunny - Entrainment - Level 40
  (428, 42800, 494, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lopunny - Flatter - Level 44
  (428, 42800, 260, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Lopunny - Bounce - Level 48
  (428, 42800, 340, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Lopunny - Healing Wish - Level 52
  (428, 42800, 361, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Lopunny - High Jump Kick - Level 56
  (428, 42800, 136, 18, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Lopunny - Mega Punch - TM00
  (428, 42800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Lopunny - Mega Kick - TM01
  (428, 42800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Lopunny - Fire Punch - TM03
  (428, 42800, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Lopunny - Ice Punch - TM04
  (428, 42800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Lopunny - Thunder Punch - TM05
  (428, 42800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Lopunny - Hyper Beam - TM08
  (428, 42800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Lopunny - Giga Impact - TM09
  (428, 42800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Lopunny - Solar Beam - TM11
  (428, 42800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 26),
  -- Lopunny - Thunder Wave - TM14
  (428, 42800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Lopunny - Dig - TM15
  (428, 42800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Lopunny - Rest - TM21
  (428, 42800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Lopunny - Snore - TM24
  (428, 42800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Lopunny - Protect - TM25
  (428, 42800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Lopunny - Charm - TM29
  (428, 42800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 32),
  -- Lopunny - Attract - TM31
  (428, 42800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Lopunny - Rain Dance - TM33
  (428, 42800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Lopunny - Sunny Day - TM34
  (428, 42800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Lopunny - Facade - TM39
  (428, 42800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Lopunny - Swift - TM40
  (428, 42800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Lopunny - Helping Hand - TM41
  (428, 42800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Lopunny - Fake Tears - TM47
  (428, 42800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 39),
  -- Lopunny - Bounce - TM52
  (428, 42800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 40),
  -- Lopunny - U-turn - TM56
  (428, 42800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 41),
  -- Lopunny - Payback - TM57
  (428, 42800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Lopunny - Assurance - TM58
  (428, 42800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 43),
  -- Lopunny - Fling - TM59
  (428, 42800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 44),
  -- Lopunny - Drain Punch - TM63
  (428, 42800, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 45),
  -- Lopunny - Low Sweep - TM75
  (428, 42800, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 46),
  -- Lopunny - Round - TM76
  (428, 42800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Lopunny - Acrobatics - TM78
  (428, 42800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 48),
  -- Lopunny - Retaliate - TM79
  (428, 42800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 49),
  -- Lopunny - Brutal Swing - TM97
  (428, 42800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 50),
  -- Lopunny - Ice Beam - TR05
  (428, 42800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Lopunny - Blizzard - TR06
  (428, 42800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 52),
  -- Lopunny - Low Kick - TR07
  (428, 42800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 53),
  -- Lopunny - Thunderbolt - TR08
  (428, 42800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Lopunny - Thunder - TR09
  (428, 42800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 55),
  -- Lopunny - Agility - TR12
  (428, 42800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 56),
  -- Lopunny - Substitute - TR20
  (428, 42800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Lopunny - Reversal - TR21
  (428, 42800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 58),
  -- Lopunny - Endure - TR26
  (428, 42800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Lopunny - Sleep Talk - TR27
  (428, 42800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Lopunny - Baton Pass - TR29
  (428, 42800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 61),
  -- Lopunny - Encore - TR30
  (428, 42800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 62),
  -- Lopunny - Iron Tail - TR31
  (428, 42800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 63),
  -- Lopunny - Shadow Ball - TR33
  (428, 42800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 64),
  -- Lopunny - Uproar - TR35
  (428, 42800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 65),
  -- Lopunny - Hyper Voice - TR42
  (428, 42800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 66),
  -- Lopunny - Cosmic Power - TR44
  (428, 42800, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 67),
  -- Lopunny - Close Combat - TR53
  (428, 42800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 68),
  -- Lopunny - Aura Sphere - TR56
  (428, 42800, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 69),
  -- Lopunny - Focus Blast - TR64
  (428, 42800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 70),
  -- Lopunny - Grass Knot - TR77
  (428, 42800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Lopunny - Work Up - TR85
  (428, 42800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 72),
  -- Lopunny - Play Rough - TR90
  (428, 42800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 73),
  -- Stunky - Scratch - Level 1
  (434, 43400, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stunky - Poison Gas - Level 1
  (434, 43400, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stunky - Feint - Level 3
  (434, 43400, 364, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Stunky - Smokescreen - Level 6
  (434, 43400, 108, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Stunky - Acid Spray - Level 9
  (434, 43400, 491, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Stunky - Fury Swipes - Level 12
  (434, 43400, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Stunky - Focus Energy - Level 15
  (434, 43400, 116, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Stunky - Bite - Level 18
  (434, 43400, 44, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Stunky - Venoshock - Level 21
  (434, 43400, 474, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Stunky - Screech - Level 24
  (434, 43400, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Stunky - Toxic - Level 27
  (434, 43400, 92, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Stunky - Sucker Punch - Level 30
  (434, 43400, 389, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Stunky - Memento - Level 33
  (434, 43400, 262, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Stunky - Night Slash - Level 36
  (434, 43400, 400, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Stunky - Belch - Level 39
  (434, 43400, 562, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Stunky - Venom Drench - Level 42
  (434, 43400, 599, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Stunky - Explosion - Level 45
  (434, 43400, 153, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Stunky - Dig - TM15
  (434, 43400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Stunky - Screech - TM16
  (434, 43400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Stunky - Rest - TM21
  (434, 43400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Stunky - Thief - TM23
  (434, 43400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Stunky - Snore - TM24
  (434, 43400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Stunky - Protect - TM25
  (434, 43400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Stunky - Scary Face - TM26
  (434, 43400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Stunky - Attract - TM31
  (434, 43400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Stunky - Rain Dance - TM33
  (434, 43400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Stunky - Sunny Day - TM34
  (434, 43400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Stunky - Facade - TM39
  (434, 43400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Stunky - Swift - TM40
  (434, 43400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Stunky - Payback - TM57
  (434, 43400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Stunky - Assurance - TM58
  (434, 43400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Stunky - Shadow Claw - TM65
  (434, 43400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Stunky - Venoshock - TM74
  (434, 43400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 33),
  -- Stunky - Round - TM76
  (434, 43400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Stunky - Hex - TM77
  (434, 43400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Stunky - Tail Slap - TM84
  (434, 43400, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 36),
  -- Stunky - Snarl - TM85
  (434, 43400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 37),
  -- Stunky - Flamethrower - TR02
  (434, 43400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 38),
  -- Stunky - Focus Energy - TR13
  (434, 43400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 39),
  -- Stunky - Fire Blast - TR15
  (434, 43400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 40),
  -- Stunky - Substitute - TR20
  (434, 43400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Stunky - Sludge Bomb - TR22
  (434, 43400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 42),
  -- Stunky - Endure - TR26
  (434, 43400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Stunky - Sleep Talk - TR27
  (434, 43400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Stunky - Iron Tail - TR31
  (434, 43400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Stunky - Crunch - TR32
  (434, 43400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Stunky - Shadow Ball - TR33
  (434, 43400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 47),
  -- Stunky - Taunt - TR37
  (434, 43400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 48),
  -- Stunky - Dark Pulse - TR58
  (434, 43400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 49),
  -- Stunky - Nasty Plot - TR68
  (434, 43400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 50),
  -- Stunky - Foul Play - TR81
  (434, 43400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Stunky - Play Rough - TR90
  (434, 43400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 52),
  -- Stunky - Venom Drench - TR91
  (434, 43400, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 53),
  -- Stunky - Throat Chop - TR95
  (434, 43400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 54),
  -- Stunky - Double-Edge - Egg
  (434, 43400, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stunky - Leer - Egg
  (434, 43400, 43, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stunky - Haze - Egg
  (434, 43400, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stunky - Smog - Egg
  (434, 43400, 123, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stunky - Slash - Egg
  (434, 43400, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stunky - Astonish - Egg
  (434, 43400, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skuntank - Scratch - Level 1
  (435, 43500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skuntank - Flamethrower - Level 1
  (435, 43500, 53, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skuntank - Smokescreen - Level 1
  (435, 43500, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skuntank - Poison Gas - Level 1
  (435, 43500, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skuntank - Feint - Level 1
  (435, 43500, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Skuntank - Acid Spray - Level 9
  (435, 43500, 491, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Skuntank - Fury Swipes - Level 12
  (435, 43500, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Skuntank - Focus Energy - Level 15
  (435, 43500, 116, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Skuntank - Bite - Level 18
  (435, 43500, 44, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Skuntank - Venoshock - Level 21
  (435, 43500, 474, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Skuntank - Screech - Level 24
  (435, 43500, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Skuntank - Toxic - Level 27
  (435, 43500, 92, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Skuntank - Sucker Punch - Level 30
  (435, 43500, 389, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Skuntank - Memento - Level 33
  (435, 43500, 262, 18, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Skuntank - Night Slash - Level 38
  (435, 43500, 400, 18, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Skuntank - Belch - Level 43
  (435, 43500, 562, 18, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Skuntank - Venom Drench - Level 48
  (435, 43500, 599, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Skuntank - Explosion - Level 53
  (435, 43500, 153, 18, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Skuntank - Flamethrower - Evolution
  (435, 43500, 53, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Skuntank - Hyper Beam - TM08
  (435, 43500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Skuntank - Giga Impact - TM09
  (435, 43500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Skuntank - Fire Spin - TM13
  (435, 43500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 22),
  -- Skuntank - Dig - TM15
  (435, 43500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Skuntank - Screech - TM16
  (435, 43500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Skuntank - Rest - TM21
  (435, 43500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Skuntank - Thief - TM23
  (435, 43500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Skuntank - Snore - TM24
  (435, 43500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Skuntank - Protect - TM25
  (435, 43500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Skuntank - Scary Face - TM26
  (435, 43500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Skuntank - Attract - TM31
  (435, 43500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Skuntank - Rain Dance - TM33
  (435, 43500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Skuntank - Sunny Day - TM34
  (435, 43500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Skuntank - Facade - TM39
  (435, 43500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Skuntank - Swift - TM40
  (435, 43500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Skuntank - Payback - TM57
  (435, 43500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Skuntank - Assurance - TM58
  (435, 43500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Skuntank - Shadow Claw - TM65
  (435, 43500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Skuntank - Venoshock - TM74
  (435, 43500, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 38),
  -- Skuntank - Round - TM76
  (435, 43500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Skuntank - Hex - TM77
  (435, 43500, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Skuntank - Tail Slap - TM84
  (435, 43500, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 41),
  -- Skuntank - Snarl - TM85
  (435, 43500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 42),
  -- Skuntank - Flamethrower - TR02
  (435, 43500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Skuntank - Focus Energy - TR13
  (435, 43500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 44),
  -- Skuntank - Fire Blast - TR15
  (435, 43500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 45),
  -- Skuntank - Substitute - TR20
  (435, 43500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Skuntank - Sludge Bomb - TR22
  (435, 43500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Skuntank - Endure - TR26
  (435, 43500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Skuntank - Sleep Talk - TR27
  (435, 43500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Skuntank - Iron Tail - TR31
  (435, 43500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Skuntank - Crunch - TR32
  (435, 43500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 51),
  -- Skuntank - Shadow Ball - TR33
  (435, 43500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Skuntank - Taunt - TR37
  (435, 43500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Skuntank - Poison Jab - TR57
  (435, 43500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 54),
  -- Skuntank - Dark Pulse - TR58
  (435, 43500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Skuntank - Nasty Plot - TR68
  (435, 43500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 56),
  -- Skuntank - Foul Play - TR81
  (435, 43500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 57),
  -- Skuntank - Play Rough - TR90
  (435, 43500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 58),
  -- Skuntank - Venom Drench - TR91
  (435, 43500, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 59),
  -- Skuntank - Throat Chop - TR95
  (435, 43500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 60),
  -- Bronzor - Tackle - Level 1
  (436, 43600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzor - Confusion - Level 1
  (436, 43600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzor - Confuse Ray - Level 4
  (436, 43600, 109, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Bronzor - Payback - Level 8
  (436, 43600, 371, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bronzor - Imprison - Level 12
  (436, 43600, 286, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bronzor - Gyro Ball - Level 16
  (436, 43600, 360, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Bronzor - Hypnosis - Level 20
  (436, 43600, 95, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bronzor - Safeguard - Level 24
  (436, 43600, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bronzor - Extrasensory - Level 28
  (436, 43600, 326, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bronzor - Heavy Slam - Level 32
  (436, 43600, 484, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bronzor - Iron Defense - Level 36
  (436, 43600, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bronzor - Metal Sound - Level 40
  (436, 43600, 319, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bronzor - Future Sight - Level 44
  (436, 43600, 248, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Bronzor - Solar Beam - TM11
  (436, 43600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Bronzor - Light Screen - TM17
  (436, 43600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Bronzor - Reflect - TM18
  (436, 43600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Bronzor - Safeguard - TM19
  (436, 43600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Bronzor - Rest - TM21
  (436, 43600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Bronzor - Rock Slide - TM22
  (436, 43600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Bronzor - Snore - TM24
  (436, 43600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Bronzor - Protect - TM25
  (436, 43600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Bronzor - Sandstorm - TM32
  (436, 43600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Bronzor - Rain Dance - TM33
  (436, 43600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Bronzor - Sunny Day - TM34
  (436, 43600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Bronzor - Facade - TM39
  (436, 43600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Bronzor - Imprison - TM44
  (436, 43600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 26),
  -- Bronzor - Rock Tomb - TM48
  (436, 43600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Bronzor - Payback - TM57
  (436, 43600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Bronzor - Power Swap - TM60
  (436, 43600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 29),
  -- Bronzor - Guard Swap - TM61
  (436, 43600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 30),
  -- Bronzor - Speed Swap - TM62
  (436, 43600, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 31),
  -- Bronzor - Trick Room - TM70
  (436, 43600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Bronzor - Wonder Room - TM71
  (436, 43600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 33),
  -- Bronzor - Round - TM76
  (436, 43600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Bronzor - Hex - TM77
  (436, 43600, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Bronzor - Bulldoze - TM81
  (436, 43600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Bronzor - Earthquake - TR10
  (436, 43600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Bronzor - Psychic - TR11
  (436, 43600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Bronzor - Substitute - TR20
  (436, 43600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Bronzor - Psyshock - TR25
  (436, 43600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Bronzor - Endure - TR26
  (436, 43600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Bronzor - Sleep Talk - TR27
  (436, 43600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Bronzor - Shadow Ball - TR33
  (436, 43600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 43),
  -- Bronzor - Future Sight - TR34
  (436, 43600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 44),
  -- Bronzor - Trick - TR38
  (436, 43600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Bronzor - Skill Swap - TR40
  (436, 43600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 46),
  -- Bronzor - Iron Defense - TR46
  (436, 43600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 47),
  -- Bronzor - Calm Mind - TR49
  (436, 43600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 48),
  -- Bronzor - Gyro Ball - TR52
  (436, 43600, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Bronzor - Flash Cannon - TR70
  (436, 43600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 50),
  -- Bronzor - Stealth Rock - TR76
  (436, 43600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 51),
  -- Bronzor - Grass Knot - TR77
  (436, 43600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 52),
  -- Bronzor - Heavy Slam - TR79
  (436, 43600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 53),
  -- Bronzor - Ally Switch - TR83
  (436, 43600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54),
  -- Bronzor - Steel Beam - Tutor
  (436, 43600, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 55),
  -- Bronzong - Tackle - Level 1
  (437, 43700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bronzong - Confusion - Level 1
  (437, 43700, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bronzong - Confuse Ray - Level 1
  (437, 43700, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bronzong - Sunny Day - Level 1
  (437, 43700, 241, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bronzong - Weather Ball - Level 1
  (437, 43700, 311, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bronzong - Block - Level 1
  (437, 43700, 335, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bronzong - Payback - Level 1
  (437, 43700, 371, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Bronzong - Imprison - Level 12
  (437, 43700, 286, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Bronzong - Gyro Ball - Level 16
  (437, 43700, 360, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Bronzong - Hypnosis - Level 20
  (437, 43700, 95, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Bronzong - Safeguard - Level 24
  (437, 43700, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Bronzong - Extrasensory - Level 28
  (437, 43700, 326, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Bronzong - Heavy Slam - Level 32
  (437, 43700, 484, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Bronzong - Iron Defense - Level 38
  (437, 43700, 334, 18, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Bronzong - Metal Sound - Level 44
  (437, 43700, 319, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Bronzong - Future Sight - Level 50
  (437, 43700, 248, 18, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Bronzong - Rain Dance - Level 56
  (437, 43700, 240, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Bronzong - Block - Evolution
  (437, 43700, 335, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Bronzong - Hyper Beam - TM08
  (437, 43700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Bronzong - Giga Impact - TM09
  (437, 43700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Bronzong - Solar Beam - TM11
  (437, 43700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Bronzong - Light Screen - TM17
  (437, 43700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Bronzong - Reflect - TM18
  (437, 43700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Bronzong - Safeguard - TM19
  (437, 43700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Bronzong - Rest - TM21
  (437, 43700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Bronzong - Rock Slide - TM22
  (437, 43700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Bronzong - Snore - TM24
  (437, 43700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Bronzong - Protect - TM25
  (437, 43700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Bronzong - Sandstorm - TM32
  (437, 43700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Bronzong - Rain Dance - TM33
  (437, 43700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Bronzong - Sunny Day - TM34
  (437, 43700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Bronzong - Facade - TM39
  (437, 43700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Bronzong - Imprison - TM44
  (437, 43700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Bronzong - Weather Ball - TM46
  (437, 43700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Bronzong - Rock Tomb - TM48
  (437, 43700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Bronzong - Payback - TM57
  (437, 43700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Bronzong - Power Swap - TM60
  (437, 43700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 37),
  -- Bronzong - Guard Swap - TM61
  (437, 43700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 38),
  -- Bronzong - Speed Swap - TM62
  (437, 43700, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 39),
  -- Bronzong - Trick Room - TM70
  (437, 43700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 40),
  -- Bronzong - Wonder Room - TM71
  (437, 43700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 41),
  -- Bronzong - Round - TM76
  (437, 43700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Bronzong - Hex - TM77
  (437, 43700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 43),
  -- Bronzong - Bulldoze - TM81
  (437, 43700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Bronzong - Psychic Terrain - TM91
  (437, 43700, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 45),
  -- Bronzong - Earthquake - TR10
  (437, 43700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Bronzong - Psychic - TR11
  (437, 43700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Bronzong - Substitute - TR20
  (437, 43700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Bronzong - Psyshock - TR25
  (437, 43700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 49),
  -- Bronzong - Endure - TR26
  (437, 43700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Bronzong - Sleep Talk - TR27
  (437, 43700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Bronzong - Shadow Ball - TR33
  (437, 43700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Bronzong - Future Sight - TR34
  (437, 43700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 53),
  -- Bronzong - Trick - TR38
  (437, 43700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 54),
  -- Bronzong - Skill Swap - TR40
  (437, 43700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 55),
  -- Bronzong - Iron Defense - TR46
  (437, 43700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 56),
  -- Bronzong - Calm Mind - TR49
  (437, 43700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Bronzong - Gyro Ball - TR52
  (437, 43700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 58),
  -- Bronzong - Zen Headbutt - TR69
  (437, 43700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Bronzong - Flash Cannon - TR70
  (437, 43700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Bronzong - Iron Head - TR74
  (437, 43700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Bronzong - Stealth Rock - TR76
  (437, 43700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Bronzong - Grass Knot - TR77
  (437, 43700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Bronzong - Heavy Slam - TR79
  (437, 43700, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 64),
  -- Bronzong - Ally Switch - TR83
  (437, 43700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Bronzong - Body Press - TR99
  (437, 43700, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 66),
  -- Bronzong - Steel Beam - Tutor
  (437, 43700, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 67),
  -- Bonsly - Fake Tears - Level 1
  (438, 43800, 313, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bonsly - Copycat - Level 1
  (438, 43800, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bonsly - Flail - Level 4
  (438, 43800, 175, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Bonsly - Rock Throw - Level 8
  (438, 43800, 88, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Bonsly - Block - Level 12
  (438, 43800, 335, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bonsly - Mimic - Level 16
  (438, 43800, 102, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Bonsly - Rock Tomb - Level 20
  (438, 43800, 317, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bonsly - Tearful Look - Level 24
  (438, 43800, 715, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bonsly - Sucker Punch - Level 28
  (438, 43800, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bonsly - Rock Slide - Level 32
  (438, 43800, 157, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bonsly - Low Kick - Level 36
  (438, 43800, 67, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bonsly - Counter - Level 40
  (438, 43800, 68, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bonsly - Double-Edge - Level 44
  (438, 43800, 38, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Bonsly - Dig - TM15
  (438, 43800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Bonsly - Self-Destruct - TM20
  (438, 43800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 15),
  -- Bonsly - Rest - TM21
  (438, 43800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Bonsly - Rock Slide - TM22
  (438, 43800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Bonsly - Thief - TM23
  (438, 43800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Bonsly - Snore - TM24
  (438, 43800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Bonsly - Protect - TM25
  (438, 43800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Bonsly - Attract - TM31
  (438, 43800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Bonsly - Sandstorm - TM32
  (438, 43800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Bonsly - Sunny Day - TM34
  (438, 43800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Bonsly - Facade - TM39
  (438, 43800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Bonsly - Helping Hand - TM41
  (438, 43800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Bonsly - Brick Break - TM43
  (438, 43800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Bonsly - Fake Tears - TM47
  (438, 43800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Bonsly - Rock Tomb - TM48
  (438, 43800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Bonsly - Sand Tomb - TM49
  (438, 43800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 29),
  -- Bonsly - Round - TM76
  (438, 43800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Bonsly - Stomping Tantrum - TM98
  (438, 43800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 31),
  -- Bonsly - Low Kick - TR07
  (438, 43800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 32),
  -- Bonsly - Substitute - TR20
  (438, 43800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Bonsly - Endure - TR26
  (438, 43800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Bonsly - Sleep Talk - TR27
  (438, 43800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Bonsly - Uproar - TR35
  (438, 43800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 36),
  -- Bonsly - Calm Mind - TR49
  (438, 43800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 37),
  -- Bonsly - Earth Power - TR67
  (438, 43800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 38),
  -- Bonsly - Stealth Rock - TR76
  (438, 43800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 39),
  -- Bonsly - Foul Play - TR81
  (438, 43800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 40),
  -- Bonsly - Headbutt - Egg
  (438, 43800, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bonsly - Harden - Egg
  (438, 43800, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bonsly - Defense Curl - Egg
  (438, 43800, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bonsly - Curse - Egg
  (438, 43800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bonsly - Rollout - Egg
  (438, 43800, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bonsly - Rock Polish - Egg
  (438, 43800, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mime Jr. - Pound - Level 1
  (439, 43900, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Copycat - Level 1
  (439, 43900, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mime Jr. - Baton Pass - Level 4
  (439, 43900, 226, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mime Jr. - Encore - Level 8
  (439, 43900, 227, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mime Jr. - Confusion - Level 12
  (439, 43900, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mime Jr. - Role Play - Level 16
  (439, 43900, 272, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mime Jr. - Protect - Level 20
  (439, 43900, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mime Jr. - Recycle - Level 24
  (439, 43900, 278, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mime Jr. - Psybeam - Level 28
  (439, 43900, 60, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mime Jr. - Mimic - Level 32
  (439, 43900, 102, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mime Jr. - Light Screen - Level 36
  (439, 43900, 113, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mime Jr. - Reflect - Level 36
  (439, 43900, 115, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mime Jr. - Safeguard - Level 36
  (439, 43900, 219, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mime Jr. - Sucker Punch - Level 40
  (439, 43900, 389, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Mime Jr. - Dazzling Gleam - Level 44
  (439, 43900, 605, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mime Jr. - Psychic - Level 48
  (439, 43900, 94, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mime Jr. - Teeter Dance - Level 52
  (439, 43900, 298, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Mime Jr. - Solar Beam - TM11
  (439, 43900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Mime Jr. - Thunder Wave - TM14
  (439, 43900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Mime Jr. - Light Screen - TM17
  (439, 43900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Mime Jr. - Reflect - TM18
  (439, 43900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Mime Jr. - Safeguard - TM19
  (439, 43900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Mime Jr. - Rest - TM21
  (439, 43900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Mime Jr. - Thief - TM23
  (439, 43900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Mime Jr. - Snore - TM24
  (439, 43900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Mime Jr. - Protect - TM25
  (439, 43900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Mime Jr. - Icy Wind - TM27
  (439, 43900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Mime Jr. - Charm - TM29
  (439, 43900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 28),
  -- Mime Jr. - Attract - TM31
  (439, 43900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Mime Jr. - Rain Dance - TM33
  (439, 43900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Mime Jr. - Sunny Day - TM34
  (439, 43900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Mime Jr. - Facade - TM39
  (439, 43900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Mime Jr. - Helping Hand - TM41
  (439, 43900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Mime Jr. - Brick Break - TM43
  (439, 43900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Mime Jr. - Fling - TM59
  (439, 43900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Mime Jr. - Drain Punch - TM63
  (439, 43900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 36),
  -- Mime Jr. - Trick Room - TM70
  (439, 43900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Mime Jr. - Wonder Room - TM71
  (439, 43900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 38),
  -- Mime Jr. - Magic Room - TM72
  (439, 43900, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 39),
  -- Mime Jr. - Round - TM76
  (439, 43900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Mime Jr. - Misty Terrain - TM89
  (439, 43900, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 41),
  -- Mime Jr. - Psychic Terrain - TM91
  (439, 43900, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 42),
  -- Mime Jr. - Thunderbolt - TR08
  (439, 43900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Mime Jr. - Thunder - TR09
  (439, 43900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 44),
  -- Mime Jr. - Psychic - TR11
  (439, 43900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Mime Jr. - Substitute - TR20
  (439, 43900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Mime Jr. - Psyshock - TR25
  (439, 43900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 47),
  -- Mime Jr. - Endure - TR26
  (439, 43900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Mime Jr. - Sleep Talk - TR27
  (439, 43900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Mime Jr. - Baton Pass - TR29
  (439, 43900, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 50),
  -- Mime Jr. - Encore - TR30
  (439, 43900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 51),
  -- Mime Jr. - Shadow Ball - TR33
  (439, 43900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Mime Jr. - Future Sight - TR34
  (439, 43900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 53),
  -- Mime Jr. - Uproar - TR35
  (439, 43900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Mime Jr. - Taunt - TR37
  (439, 43900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 55),
  -- Mime Jr. - Trick - TR38
  (439, 43900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 56),
  -- Mime Jr. - Skill Swap - TR40
  (439, 43900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 57),
  -- Mime Jr. - Calm Mind - TR49
  (439, 43900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 58),
  -- Mime Jr. - Nasty Plot - TR68
  (439, 43900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Mime Jr. - Grass Knot - TR77
  (439, 43900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Mime Jr. - Stored Power - TR82
  (439, 43900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 61),
  -- Mime Jr. - Ally Switch - TR83
  (439, 43900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 62),
  -- Mime Jr. - Dazzling Gleam - TR92
  (439, 43900, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 63),
  -- Mime Jr. - Hypnosis - Egg
  (439, 43900, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mime Jr. - Confuse Ray - Egg
  (439, 43900, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mime Jr. - Fake Out - Egg
  (439, 43900, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mime Jr. - Tickle - Egg
  (439, 43900, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mime Jr. - Power Split - Egg
  (439, 43900, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Happiny - Pound - Level 1
  (440, 44000, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Happiny - Minimize - Level 1
  (440, 44000, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Happiny - Copycat - Level 1
  (440, 44000, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Happiny - Defense Curl - Level 4
  (440, 44000, 111, 18, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Happiny - Sweet Kiss - Level 8
  (440, 44000, 186, 18, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Happiny - Disarming Voice - Level 12
  (440, 44000, 574, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Happiny - Covet - Level 16
  (440, 44000, 343, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Happiny - Charm - Level 20
  (440, 44000, 204, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Happiny - Solar Beam - TM11
  (440, 44000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 9),
  -- Happiny - Thunder Wave - TM14
  (440, 44000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 10),
  -- Happiny - Light Screen - TM17
  (440, 44000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 11),
  -- Happiny - Safeguard - TM19
  (440, 44000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 12),
  -- Happiny - Rest - TM21
  (440, 44000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Happiny - Snore - TM24
  (440, 44000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Happiny - Protect - TM25
  (440, 44000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Happiny - Icy Wind - TM27
  (440, 44000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 16),
  -- Happiny - Charm - TM29
  (440, 44000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 17),
  -- Happiny - Attract - TM31
  (440, 44000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Happiny - Rain Dance - TM33
  (440, 44000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Happiny - Sunny Day - TM34
  (440, 44000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 20),
  -- Happiny - Hail - TM35
  (440, 44000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 21),
  -- Happiny - Facade - TM39
  (440, 44000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Happiny - Helping Hand - TM41
  (440, 44000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 23),
  -- Happiny - Fling - TM59
  (440, 44000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 24),
  -- Happiny - Drain Punch - TM63
  (440, 44000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 25),
  -- Happiny - Round - TM76
  (440, 44000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Happiny - Flamethrower - TR02
  (440, 44000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 27),
  -- Happiny - Psychic - TR11
  (440, 44000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 28),
  -- Happiny - Metronome - TR14
  (440, 44000, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 29),
  -- Happiny - Fire Blast - TR15
  (440, 44000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 30),
  -- Happiny - Substitute - TR20
  (440, 44000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Happiny - Endure - TR26
  (440, 44000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Happiny - Sleep Talk - TR27
  (440, 44000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Happiny - Shadow Ball - TR33
  (440, 44000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 34),
  -- Happiny - Uproar - TR35
  (440, 44000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 35),
  -- Happiny - Hyper Voice - TR42
  (440, 44000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 36),
  -- Happiny - Zen Headbutt - TR69
  (440, 44000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 37),
  -- Happiny - Grass Knot - TR77
  (440, 44000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 38),
  -- Happiny - Stored Power - TR82
  (440, 44000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 39),
  -- Happiny - Work Up - TR85
  (440, 44000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 40),
  -- Happiny - Seismic Toss - Egg
  (440, 44000, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Happiny - Present - Egg
  (440, 44000, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Happiny - Aromatherapy - Egg
  (440, 44000, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Happiny - Gravity - Egg
  (440, 44000, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spiritomb - Night Shade - Level 1
  (442, 44200, 101, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spiritomb - Confuse Ray - Level 1
  (442, 44200, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spiritomb - Shadow Sneak - Level 5
  (442, 44200, 425, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spiritomb - Spite - Level 10
  (442, 44200, 180, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Spiritomb - Payback - Level 15
  (442, 44200, 371, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spiritomb - Nasty Plot - Level 20
  (442, 44200, 417, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Spiritomb - Hex - Level 25
  (442, 44200, 506, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Spiritomb - Memento - Level 30
  (442, 44200, 262, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Spiritomb - Sucker Punch - Level 35
  (442, 44200, 389, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Spiritomb - Curse - Level 40
  (442, 44200, 174, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Spiritomb - Shadow Ball - Level 45
  (442, 44200, 247, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Spiritomb - Dark Pulse - Level 50
  (442, 44200, 399, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spiritomb - Hypnosis - Level 55
  (442, 44200, 95, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spiritomb - Dream Eater - Level 60
  (442, 44200, 138, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Spiritomb - Hyper Beam - TM08
  (442, 44200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Spiritomb - Giga Impact - TM09
  (442, 44200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Spiritomb - Rest - TM21
  (442, 44200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Spiritomb - Thief - TM23
  (442, 44200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Spiritomb - Snore - TM24
  (442, 44200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Spiritomb - Protect - TM25
  (442, 44200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Spiritomb - Icy Wind - TM27
  (442, 44200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Spiritomb - Attract - TM31
  (442, 44200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Spiritomb - Rain Dance - TM33
  (442, 44200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Spiritomb - Sunny Day - TM34
  (442, 44200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Spiritomb - Will-O-Wisp - TM38
  (442, 44200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 25),
  -- Spiritomb - Facade - TM39
  (442, 44200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Spiritomb - Imprison - TM44
  (442, 44200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 27),
  -- Spiritomb - Rock Tomb - TM48
  (442, 44200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Spiritomb - Payback - TM57
  (442, 44200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Spiritomb - Wonder Room - TM71
  (442, 44200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 30),
  -- Spiritomb - Round - TM76
  (442, 44200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Spiritomb - Hex - TM77
  (442, 44200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Spiritomb - Retaliate - TM79
  (442, 44200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Spiritomb - Snarl - TM85
  (442, 44200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 34),
  -- Spiritomb - Phantom Force - TM86
  (442, 44200, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 35),
  -- Spiritomb - Psychic - TR11
  (442, 44200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Spiritomb - Substitute - TR20
  (442, 44200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Spiritomb - Endure - TR26
  (442, 44200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Spiritomb - Sleep Talk - TR27
  (442, 44200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Spiritomb - Shadow Ball - TR33
  (442, 44200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Spiritomb - Uproar - TR35
  (442, 44200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Spiritomb - Taunt - TR37
  (442, 44200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Spiritomb - Trick - TR38
  (442, 44200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Spiritomb - Calm Mind - TR49
  (442, 44200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 44),
  -- Spiritomb - Dark Pulse - TR58
  (442, 44200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 45),
  -- Spiritomb - Nasty Plot - TR68
  (442, 44200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 46),
  -- Spiritomb - Foul Play - TR81
  (442, 44200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 47),
  -- Spiritomb - Ally Switch - TR83
  (442, 44200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 48),
  -- Spiritomb - Disable - Egg
  (442, 44200, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spiritomb - Smokescreen - Egg
  (442, 44200, 108, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spiritomb - Destiny Bond - Egg
  (442, 44200, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spiritomb - Pain Split - Egg
  (442, 44200, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spiritomb - Grudge - Egg
  (442, 44200, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gible - Tackle - Level 1
  (443, 44300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gible - Sand Tomb - Level 1
  (443, 44300, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gible - Sand Attack - Level 6
  (443, 44300, 28, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Gible - Dragon Breath - Level 12
  (443, 44300, 225, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Gible - Bulldoze - Level 18
  (443, 44300, 523, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Gible - Bite - Level 25
  (443, 44300, 44, 18, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Gible - Slash - Level 30
  (443, 44300, 163, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Gible - Dragon Claw - Level 36
  (443, 44300, 337, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Gible - Dig - Level 42
  (443, 44300, 91, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Gible - Sandstorm - Level 48
  (443, 44300, 201, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Gible - Take Down - Level 54
  (443, 44300, 36, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Gible - Dragon Rush - Level 60
  (443, 44300, 407, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Gible - Dig - TM15
  (443, 44300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 13),
  -- Gible - Rest - TM21
  (443, 44300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Gible - Rock Slide - TM22
  (443, 44300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 15),
  -- Gible - Snore - TM24
  (443, 44300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Gible - Protect - TM25
  (443, 44300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Gible - Scary Face - TM26
  (443, 44300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 18),
  -- Gible - Attract - TM31
  (443, 44300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Gible - Sandstorm - TM32
  (443, 44300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 20),
  -- Gible - Rain Dance - TM33
  (443, 44300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Gible - Sunny Day - TM34
  (443, 44300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Gible - Facade - TM39
  (443, 44300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Gible - Swift - TM40
  (443, 44300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Gible - Rock Tomb - TM48
  (443, 44300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 25),
  -- Gible - Sand Tomb - TM49
  (443, 44300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 26),
  -- Gible - Mud Shot - TM53
  (443, 44300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 27),
  -- Gible - Shadow Claw - TM65
  (443, 44300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 28),
  -- Gible - Round - TM76
  (443, 44300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Gible - Bulldoze - TM81
  (443, 44300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Gible - Body Slam - TR01
  (443, 44300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 31),
  -- Gible - Flamethrower - TR02
  (443, 44300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 32),
  -- Gible - Earthquake - TR10
  (443, 44300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 33),
  -- Gible - Fire Blast - TR15
  (443, 44300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 34),
  -- Gible - Substitute - TR20
  (443, 44300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Gible - Outrage - TR24
  (443, 44300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 36),
  -- Gible - Endure - TR26
  (443, 44300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Gible - Sleep Talk - TR27
  (443, 44300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Gible - Iron Tail - TR31
  (443, 44300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Gible - Dragon Claw - TR47
  (443, 44300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 40),
  -- Gible - Dragon Pulse - TR62
  (443, 44300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 41),
  -- Gible - Earth Power - TR67
  (443, 44300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 42),
  -- Gible - Iron Head - TR74
  (443, 44300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 43),
  -- Gible - Stone Edge - TR75
  (443, 44300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 44),
  -- Gible - Stealth Rock - TR76
  (443, 44300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 45),
  -- Gible - Thrash - Egg
  (443, 44300, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gible - Double-Edge - Egg
  (443, 44300, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gible - Metal Claw - Egg
  (443, 44300, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gible - Twister - Egg
  (443, 44300, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gible - Draco Meteor - Tutor
  (443, 44300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 50),
  -- Gabite - Sand Attack - Level 1
  (444, 44400, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gabite - Tackle - Level 1
  (444, 44400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gabite - Dragon Breath - Level 1
  (444, 44400, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gabite - Sand Tomb - Level 1
  (444, 44400, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gabite - Dual Chop - Level 1
  (444, 44400, 530, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gabite - Bulldoze - Level 18
  (444, 44400, 523, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Gabite - Bite - Level 27
  (444, 44400, 44, 18, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Gabite - Slash - Level 34
  (444, 44400, 163, 18, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gabite - Dragon Claw - Level 42
  (444, 44400, 337, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Gabite - Dig - Level 50
  (444, 44400, 91, 18, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Gabite - Sandstorm - Level 58
  (444, 44400, 201, 18, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Gabite - Take Down - Level 66
  (444, 44400, 36, 18, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Gabite - Dragon Rush - Level 74
  (444, 44400, 407, 18, NULL, 1, 74, NULL, NULL, NULL, 13),
  -- Gabite - Dig - TM15
  (444, 44400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Gabite - Rest - TM21
  (444, 44400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Gabite - Rock Slide - TM22
  (444, 44400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Gabite - Snore - TM24
  (444, 44400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Gabite - Protect - TM25
  (444, 44400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Gabite - Scary Face - TM26
  (444, 44400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 19),
  -- Gabite - Attract - TM31
  (444, 44400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Gabite - Sandstorm - TM32
  (444, 44400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Gabite - Rain Dance - TM33
  (444, 44400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Gabite - Sunny Day - TM34
  (444, 44400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Gabite - Facade - TM39
  (444, 44400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Gabite - Swift - TM40
  (444, 44400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Gabite - Rock Tomb - TM48
  (444, 44400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Gabite - Sand Tomb - TM49
  (444, 44400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 27),
  -- Gabite - Mud Shot - TM53
  (444, 44400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Gabite - Shadow Claw - TM65
  (444, 44400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 29),
  -- Gabite - Round - TM76
  (444, 44400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Gabite - Bulldoze - TM81
  (444, 44400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Gabite - Body Slam - TR01
  (444, 44400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Gabite - Flamethrower - TR02
  (444, 44400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 33),
  -- Gabite - Earthquake - TR10
  (444, 44400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 34),
  -- Gabite - Fire Blast - TR15
  (444, 44400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 35),
  -- Gabite - Substitute - TR20
  (444, 44400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Gabite - Outrage - TR24
  (444, 44400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 37),
  -- Gabite - Endure - TR26
  (444, 44400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Gabite - Sleep Talk - TR27
  (444, 44400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Gabite - Iron Tail - TR31
  (444, 44400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Gabite - Dragon Claw - TR47
  (444, 44400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 41),
  -- Gabite - Dragon Pulse - TR62
  (444, 44400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 42),
  -- Gabite - Earth Power - TR67
  (444, 44400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Gabite - Iron Head - TR74
  (444, 44400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 44),
  -- Gabite - Stone Edge - TR75
  (444, 44400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 45),
  -- Gabite - Stealth Rock - TR76
  (444, 44400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 46),
  -- Gabite - Draco Meteor - Tutor
  (444, 44400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 47),
  -- Garchomp - Sand Attack - Level 1
  (445, 44500, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garchomp - Tackle - Level 1
  (445, 44500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garchomp - Dragon Breath - Level 1
  (445, 44500, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garchomp - Crunch - Level 1
  (445, 44500, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garchomp - Sand Tomb - Level 1
  (445, 44500, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garchomp - Dual Chop - Level 1
  (445, 44500, 530, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Garchomp - Bulldoze - Level 18
  (445, 44500, 523, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Garchomp - Bite - Level 27
  (445, 44500, 44, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Garchomp - Slash - Level 34
  (445, 44500, 163, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Garchomp - Dragon Claw - Level 42
  (445, 44500, 337, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Garchomp - Dig - Level 52
  (445, 44500, 91, 18, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Garchomp - Sandstorm - Level 62
  (445, 44500, 201, 18, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Garchomp - Take Down - Level 72
  (445, 44500, 36, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Garchomp - Dragon Rush - Level 82
  (445, 44500, 407, 18, NULL, 1, 82, NULL, NULL, NULL, 14),
  -- Garchomp - Crunch - Evolution
  (445, 44500, 242, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Garchomp - Hyper Beam - TM08
  (445, 44500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Garchomp - Giga Impact - TM09
  (445, 44500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Garchomp - Dig - TM15
  (445, 44500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Garchomp - Rest - TM21
  (445, 44500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Garchomp - Rock Slide - TM22
  (445, 44500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Garchomp - Snore - TM24
  (445, 44500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Garchomp - Protect - TM25
  (445, 44500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Garchomp - Scary Face - TM26
  (445, 44500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Garchomp - Attract - TM31
  (445, 44500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Garchomp - Sandstorm - TM32
  (445, 44500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Garchomp - Rain Dance - TM33
  (445, 44500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Garchomp - Sunny Day - TM34
  (445, 44500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Garchomp - Whirlpool - TM36
  (445, 44500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Garchomp - Facade - TM39
  (445, 44500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Garchomp - Swift - TM40
  (445, 44500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Garchomp - Brick Break - TM43
  (445, 44500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Garchomp - Rock Tomb - TM48
  (445, 44500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Garchomp - Sand Tomb - TM49
  (445, 44500, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 33),
  -- Garchomp - Mud Shot - TM53
  (445, 44500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Garchomp - Fling - TM59
  (445, 44500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Garchomp - Shadow Claw - TM65
  (445, 44500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Garchomp - Fire Fang - TM68
  (445, 44500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 37),
  -- Garchomp - Round - TM76
  (445, 44500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Garchomp - Bulldoze - TM81
  (445, 44500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Garchomp - False Swipe - TM94
  (445, 44500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 40),
  -- Garchomp - Brutal Swing - TM97
  (445, 44500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 41),
  -- Garchomp - Stomping Tantrum - TM98
  (445, 44500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Garchomp - Breaking Swipe - TM99
  (445, 44500, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 43),
  -- Garchomp - Swords Dance - TR00
  (445, 44500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Garchomp - Body Slam - TR01
  (445, 44500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Garchomp - Flamethrower - TR02
  (445, 44500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Garchomp - Surf - TR04
  (445, 44500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Garchomp - Earthquake - TR10
  (445, 44500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Garchomp - Fire Blast - TR15
  (445, 44500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 49),
  -- Garchomp - Substitute - TR20
  (445, 44500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Garchomp - Outrage - TR24
  (445, 44500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 51),
  -- Garchomp - Endure - TR26
  (445, 44500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Garchomp - Sleep Talk - TR27
  (445, 44500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Garchomp - Iron Tail - TR31
  (445, 44500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 54),
  -- Garchomp - Crunch - TR32
  (445, 44500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 55),
  -- Garchomp - Dragon Claw - TR47
  (445, 44500, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 56),
  -- Garchomp - Poison Jab - TR57
  (445, 44500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 57),
  -- Garchomp - Dragon Pulse - TR62
  (445, 44500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 58),
  -- Garchomp - Earth Power - TR67
  (445, 44500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 59),
  -- Garchomp - Iron Head - TR74
  (445, 44500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Garchomp - Stone Edge - TR75
  (445, 44500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Garchomp - Stealth Rock - TR76
  (445, 44500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Garchomp - Draco Meteor - Tutor
  (445, 44500, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Munchlax - Tackle - Level 1
  (446, 44600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munchlax - Lick - Level 1
  (446, 44600, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munchlax - Defense Curl - Level 4
  (446, 44600, 111, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Munchlax - Recycle - Level 8
  (446, 44600, 278, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Munchlax - Covet - Level 12
  (446, 44600, 343, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Munchlax - Bite - Level 16
  (446, 44600, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Munchlax - Stockpile - Level 20
  (446, 44600, 254, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Munchlax - Swallow - Level 20
  (446, 44600, 256, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Munchlax - Screech - Level 24
  (446, 44600, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Munchlax - Body Slam - Level 28
  (446, 44600, 34, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Munchlax - Fling - Level 32
  (446, 44600, 374, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Munchlax - Amnesia - Level 36
  (446, 44600, 133, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Munchlax - Metronome - Level 40
  (446, 44600, 118, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Munchlax - Flail - Level 44
  (446, 44600, 175, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Munchlax - Belly Drum - Level 48
  (446, 44600, 187, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Munchlax - Last Resort - Level 52
  (446, 44600, 387, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Munchlax - Mega Punch - TM00
  (446, 44600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Munchlax - Mega Kick - TM01
  (446, 44600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Munchlax - Pay Day - TM02
  (446, 44600, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 19),
  -- Munchlax - Fire Punch - TM03
  (446, 44600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Munchlax - Ice Punch - TM04
  (446, 44600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Munchlax - Thunder Punch - TM05
  (446, 44600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Munchlax - Solar Beam - TM11
  (446, 44600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Munchlax - Screech - TM16
  (446, 44600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Munchlax - Self-Destruct - TM20
  (446, 44600, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 25),
  -- Munchlax - Rest - TM21
  (446, 44600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Munchlax - Rock Slide - TM22
  (446, 44600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Munchlax - Snore - TM24
  (446, 44600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Munchlax - Protect - TM25
  (446, 44600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Munchlax - Icy Wind - TM27
  (446, 44600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 30),
  -- Munchlax - Charm - TM29
  (446, 44600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 31),
  -- Munchlax - Attract - TM31
  (446, 44600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Munchlax - Sandstorm - TM32
  (446, 44600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Munchlax - Rain Dance - TM33
  (446, 44600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Munchlax - Sunny Day - TM34
  (446, 44600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Munchlax - Whirlpool - TM36
  (446, 44600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 36),
  -- Munchlax - Facade - TM39
  (446, 44600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Munchlax - Brick Break - TM43
  (446, 44600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Munchlax - Rock Tomb - TM48
  (446, 44600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Munchlax - Fling - TM59
  (446, 44600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Munchlax - Round - TM76
  (446, 44600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Munchlax - Retaliate - TM79
  (446, 44600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 42),
  -- Munchlax - Bulldoze - TM81
  (446, 44600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Munchlax - Stomping Tantrum - TM98
  (446, 44600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 44),
  -- Munchlax - Body Slam - TR01
  (446, 44600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Munchlax - Flamethrower - TR02
  (446, 44600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Munchlax - Hydro Pump - TR03
  (446, 44600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Munchlax - Surf - TR04
  (446, 44600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Munchlax - Ice Beam - TR05
  (446, 44600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Munchlax - Blizzard - TR06
  (446, 44600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Munchlax - Thunderbolt - TR08
  (446, 44600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Munchlax - Thunder - TR09
  (446, 44600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Munchlax - Earthquake - TR10
  (446, 44600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Munchlax - Psychic - TR11
  (446, 44600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 54),
  -- Munchlax - Metronome - TR14
  (446, 44600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 55),
  -- Munchlax - Fire Blast - TR15
  (446, 44600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 56),
  -- Munchlax - Amnesia - TR17
  (446, 44600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 57),
  -- Munchlax - Substitute - TR20
  (446, 44600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 58),
  -- Munchlax - Endure - TR26
  (446, 44600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Munchlax - Sleep Talk - TR27
  (446, 44600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Munchlax - Encore - TR30
  (446, 44600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 61),
  -- Munchlax - Shadow Ball - TR33
  (446, 44600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Munchlax - Uproar - TR35
  (446, 44600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 63),
  -- Munchlax - Superpower - TR39
  (446, 44600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 64),
  -- Munchlax - Hyper Voice - TR42
  (446, 44600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 65),
  -- Munchlax - Seed Bomb - TR59
  (446, 44600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 66),
  -- Munchlax - Zen Headbutt - TR69
  (446, 44600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 67),
  -- Munchlax - Gunk Shot - TR73
  (446, 44600, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 68),
  -- Munchlax - Work Up - TR85
  (446, 44600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 69),
  -- Munchlax - Double-Edge - Egg
  (446, 44600, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Munchlax - Counter - Egg
  (446, 44600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Munchlax - Fissure - Egg
  (446, 44600, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Munchlax - Curse - Egg
  (446, 44600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Munchlax - Belch - Egg
  (446, 44600, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Riolu - Quick Attack - Level 1
  (447, 44700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Riolu - Endure - Level 1
  (447, 44700, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Riolu - Feint - Level 4
  (447, 44700, 364, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Riolu - Metal Claw - Level 8
  (447, 44700, 232, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Riolu - Counter - Level 12
  (447, 44700, 68, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Riolu - Work Up - Level 16
  (447, 44700, 526, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Riolu - Rock Smash - Level 20
  (447, 44700, 249, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Riolu - Nasty Plot - Level 24
  (447, 44700, 417, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Riolu - Screech - Level 28
  (447, 44700, 103, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Riolu - Quick Guard - Level 32
  (447, 44700, 501, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Riolu - Force Palm - Level 36
  (447, 44700, 395, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Riolu - Swords Dance - Level 40
  (447, 44700, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Riolu - Helping Hand - Level 44
  (447, 44700, 270, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Riolu - Copycat - Level 48
  (447, 44700, 383, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Riolu - Final Gambit - Level 52
  (447, 44700, 515, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Riolu - Reversal - Level 56
  (447, 44700, 179, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Riolu - Mega Punch - TM00
  (447, 44700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Riolu - Mega Kick - TM01
  (447, 44700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Riolu - Ice Punch - TM04
  (447, 44700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Riolu - Thunder Punch - TM05
  (447, 44700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Riolu - Dig - TM15
  (447, 44700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Riolu - Screech - TM16
  (447, 44700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Riolu - Rest - TM21
  (447, 44700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Riolu - Rock Slide - TM22
  (447, 44700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Riolu - Snore - TM24
  (447, 44700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Riolu - Protect - TM25
  (447, 44700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Riolu - Attract - TM31
  (447, 44700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Riolu - Rain Dance - TM33
  (447, 44700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Riolu - Sunny Day - TM34
  (447, 44700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Riolu - Facade - TM39
  (447, 44700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Riolu - Swift - TM40
  (447, 44700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Riolu - Helping Hand - TM41
  (447, 44700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Riolu - Revenge - TM42
  (447, 44700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Riolu - Brick Break - TM43
  (447, 44700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Riolu - Rock Tomb - TM48
  (447, 44700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Riolu - Payback - TM57
  (447, 44700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Riolu - Fling - TM59
  (447, 44700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Riolu - Drain Punch - TM63
  (447, 44700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Riolu - Shadow Claw - TM65
  (447, 44700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Riolu - Low Sweep - TM75
  (447, 44700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Riolu - Round - TM76
  (447, 44700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Riolu - Retaliate - TM79
  (447, 44700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 42),
  -- Riolu - Bulldoze - TM81
  (447, 44700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Riolu - Swords Dance - TR00
  (447, 44700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Riolu - Low Kick - TR07
  (447, 44700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 45),
  -- Riolu - Earthquake - TR10
  (447, 44700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Riolu - Agility - TR12
  (447, 44700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 47),
  -- Riolu - Substitute - TR20
  (447, 44700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Riolu - Reversal - TR21
  (447, 44700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 49),
  -- Riolu - Endure - TR26
  (447, 44700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Riolu - Sleep Talk - TR27
  (447, 44700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Riolu - Iron Tail - TR31
  (447, 44700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Riolu - Crunch - TR32
  (447, 44700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 53),
  -- Riolu - Blaze Kick - TR41
  (447, 44700, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 54),
  -- Riolu - Iron Defense - TR46
  (447, 44700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 55),
  -- Riolu - Bulk Up - TR48
  (447, 44700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 56),
  -- Riolu - Poison Jab - TR57
  (447, 44700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 57),
  -- Riolu - Focus Blast - TR64
  (447, 44700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Riolu - Nasty Plot - TR68
  (447, 44700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Riolu - Zen Headbutt - TR69
  (447, 44700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 60),
  -- Riolu - Work Up - TR85
  (447, 44700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Riolu - Bite - Egg
  (447, 44700, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Riolu - High Jump Kick - Egg
  (447, 44700, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Riolu - Mind Reader - Egg
  (447, 44700, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Riolu - Detect - Egg
  (447, 44700, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Riolu - Cross Chop - Egg
  (447, 44700, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Riolu - Howl - Egg
  (447, 44700, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Riolu - Vacuum Wave - Egg
  (447, 44700, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Riolu - Bullet Punch - Egg
  (447, 44700, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Riolu - Circle Throw - Egg
  (447, 44700, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Lucario - Quick Attack - Level 1
  (448, 44800, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lucario - Screech - Level 1
  (448, 44800, 103, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lucario - Reversal - Level 1
  (448, 44800, 179, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lucario - Detect - Level 1
  (448, 44800, 197, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lucario - Metal Claw - Level 1
  (448, 44800, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lucario - Rock Smash - Level 1
  (448, 44800, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lucario - Helping Hand - Level 1
  (448, 44800, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lucario - Feint - Level 1
  (448, 44800, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lucario - Copycat - Level 1
  (448, 44800, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Lucario - Force Palm - Level 1
  (448, 44800, 395, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Lucario - Aura Sphere - Level 1
  (448, 44800, 396, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Lucario - Nasty Plot - Level 1
  (448, 44800, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Lucario - Final Gambit - Level 1
  (448, 44800, 515, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Lucario - Work Up - Level 1
  (448, 44800, 526, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Lucario - Life Dew - Level 1
  (448, 44800, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Lucario - Counter - Level 12
  (448, 44800, 68, 18, NULL, 1, 12, NULL, NULL, NULL, 16),
  -- Lucario - Laser Focus - Level 16
  (448, 44800, 673, 18, NULL, 1, 16, NULL, NULL, NULL, 17),
  -- Lucario - Power-Up Punch - Level 20
  (448, 44800, 612, 18, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Lucario - Calm Mind - Level 24
  (448, 44800, 347, 18, NULL, 1, 24, NULL, NULL, NULL, 19),
  -- Lucario - Metal Sound - Level 28
  (448, 44800, 319, 18, NULL, 1, 28, NULL, NULL, NULL, 20),
  -- Lucario - Quick Guard - Level 32
  (448, 44800, 501, 18, NULL, 1, 32, NULL, NULL, NULL, 21),
  -- Lucario - Bone Rush - Level 36
  (448, 44800, 198, 18, NULL, 1, 36, NULL, NULL, NULL, 22),
  -- Lucario - Swords Dance - Level 40
  (448, 44800, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 23),
  -- Lucario - Heal Pulse - Level 44
  (448, 44800, 505, 18, NULL, 1, 44, NULL, NULL, NULL, 24),
  -- Lucario - Meteor Mash - Level 48
  (448, 44800, 309, 18, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Lucario - Dragon Pulse - Level 52
  (448, 44800, 406, 18, NULL, 1, 52, NULL, NULL, NULL, 26),
  -- Lucario - Extreme Speed - Level 56
  (448, 44800, 245, 18, NULL, 1, 56, NULL, NULL, NULL, 27),
  -- Lucario - Close Combat - Level 60
  (448, 44800, 370, 18, NULL, 1, 60, NULL, NULL, NULL, 28),
  -- Lucario - Aura Sphere - Evolution
  (448, 44800, 396, 18, NULL, 7, NULL, NULL, NULL, NULL, 29),
  -- Lucario - Mega Punch - TM00
  (448, 44800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 30),
  -- Lucario - Mega Kick - TM01
  (448, 44800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 31),
  -- Lucario - Ice Punch - TM04
  (448, 44800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 32),
  -- Lucario - Thunder Punch - TM05
  (448, 44800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 33),
  -- Lucario - Hyper Beam - TM08
  (448, 44800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 34),
  -- Lucario - Giga Impact - TM09
  (448, 44800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 35),
  -- Lucario - Dig - TM15
  (448, 44800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 36),
  -- Lucario - Screech - TM16
  (448, 44800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 37),
  -- Lucario - Rest - TM21
  (448, 44800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 38),
  -- Lucario - Rock Slide - TM22
  (448, 44800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 39),
  -- Lucario - Snore - TM24
  (448, 44800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 40),
  -- Lucario - Protect - TM25
  (448, 44800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 41),
  -- Lucario - Scary Face - TM26
  (448, 44800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 42),
  -- Lucario - Attract - TM31
  (448, 44800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 43),
  -- Lucario - Rain Dance - TM33
  (448, 44800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 44),
  -- Lucario - Sunny Day - TM34
  (448, 44800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 45),
  -- Lucario - Facade - TM39
  (448, 44800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 46),
  -- Lucario - Swift - TM40
  (448, 44800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 47),
  -- Lucario - Helping Hand - TM41
  (448, 44800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 48),
  -- Lucario - Revenge - TM42
  (448, 44800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 49),
  -- Lucario - Brick Break - TM43
  (448, 44800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 50),
  -- Lucario - Rock Tomb - TM48
  (448, 44800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 51),
  -- Lucario - Payback - TM57
  (448, 44800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 52),
  -- Lucario - Fling - TM59
  (448, 44800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 53),
  -- Lucario - Drain Punch - TM63
  (448, 44800, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 54),
  -- Lucario - Shadow Claw - TM65
  (448, 44800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 55),
  -- Lucario - Low Sweep - TM75
  (448, 44800, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 56),
  -- Lucario - Round - TM76
  (448, 44800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 57),
  -- Lucario - Retaliate - TM79
  (448, 44800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 58),
  -- Lucario - Bulldoze - TM81
  (448, 44800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 59),
  -- Lucario - Swords Dance - TR00
  (448, 44800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 60),
  -- Lucario - Low Kick - TR07
  (448, 44800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 61),
  -- Lucario - Earthquake - TR10
  (448, 44800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 62),
  -- Lucario - Psychic - TR11
  (448, 44800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 63),
  -- Lucario - Agility - TR12
  (448, 44800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 64),
  -- Lucario - Focus Energy - TR13
  (448, 44800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 65),
  -- Lucario - Substitute - TR20
  (448, 44800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 66),
  -- Lucario - Reversal - TR21
  (448, 44800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 67),
  -- Lucario - Endure - TR26
  (448, 44800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 68),
  -- Lucario - Sleep Talk - TR27
  (448, 44800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 69),
  -- Lucario - Iron Tail - TR31
  (448, 44800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 70),
  -- Lucario - Crunch - TR32
  (448, 44800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 71),
  -- Lucario - Shadow Ball - TR33
  (448, 44800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 72),
  -- Lucario - Blaze Kick - TR41
  (448, 44800, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 73),
  -- Lucario - Iron Defense - TR46
  (448, 44800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 74),
  -- Lucario - Bulk Up - TR48
  (448, 44800, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 75),
  -- Lucario - Calm Mind - TR49
  (448, 44800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 76),
  -- Lucario - Close Combat - TR53
  (448, 44800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 77),
  -- Lucario - Aura Sphere - TR56
  (448, 44800, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 78),
  -- Lucario - Poison Jab - TR57
  (448, 44800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 79),
  -- Lucario - Dark Pulse - TR58
  (448, 44800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 80),
  -- Lucario - Dragon Pulse - TR62
  (448, 44800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 81),
  -- Lucario - Focus Blast - TR64
  (448, 44800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 82),
  -- Lucario - Nasty Plot - TR68
  (448, 44800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 83),
  -- Lucario - Zen Headbutt - TR69
  (448, 44800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 84),
  -- Lucario - Flash Cannon - TR70
  (448, 44800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 85),
  -- Lucario - Stone Edge - TR75
  (448, 44800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 86),
  -- Lucario - Work Up - TR85
  (448, 44800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 87),
  -- Lucario - Steel Beam - Tutor
  (448, 44800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 88),
  -- Hippopotas - Sand Attack - Level 1
  (449, 44900, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippopotas - Tackle - Level 1
  (449, 44900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippopotas - Bite - Level 4
  (449, 44900, 44, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hippopotas - Yawn - Level 8
  (449, 44900, 281, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Hippopotas - Sand Tomb - Level 12
  (449, 44900, 328, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hippopotas - Dig - Level 16
  (449, 44900, 91, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hippopotas - Crunch - Level 20
  (449, 44900, 242, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hippopotas - Sandstorm - Level 24
  (449, 44900, 201, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hippopotas - Take Down - Level 28
  (449, 44900, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Hippopotas - Roar - Level 32
  (449, 44900, 46, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hippopotas - Rest - Level 36
  (449, 44900, 156, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Hippopotas - Earthquake - Level 40
  (449, 44900, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Hippopotas - Double-Edge - Level 44
  (449, 44900, 38, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hippopotas - Fissure - Level 48
  (449, 44900, 90, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Hippopotas - Slack Off - Level 52
  (449, 44900, 303, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Hippopotas - Dig - TM15
  (449, 44900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Hippopotas - Rest - TM21
  (449, 44900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Hippopotas - Rock Slide - TM22
  (449, 44900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Hippopotas - Snore - TM24
  (449, 44900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Hippopotas - Protect - TM25
  (449, 44900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Hippopotas - Attract - TM31
  (449, 44900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Hippopotas - Sandstorm - TM32
  (449, 44900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Hippopotas - Sunny Day - TM34
  (449, 44900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Hippopotas - Facade - TM39
  (449, 44900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Hippopotas - Revenge - TM42
  (449, 44900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Hippopotas - Weather Ball - TM46
  (449, 44900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 26),
  -- Hippopotas - Rock Tomb - TM48
  (449, 44900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Hippopotas - Sand Tomb - TM49
  (449, 44900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Hippopotas - Mud Shot - TM53
  (449, 44900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Hippopotas - Round - TM76
  (449, 44900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Hippopotas - Bulldoze - TM81
  (449, 44900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Hippopotas - Stomping Tantrum - TM98
  (449, 44900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 32),
  -- Hippopotas - Body Slam - TR01
  (449, 44900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Hippopotas - Earthquake - TR10
  (449, 44900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 34),
  -- Hippopotas - Amnesia - TR17
  (449, 44900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 35),
  -- Hippopotas - Substitute - TR20
  (449, 44900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Hippopotas - Endure - TR26
  (449, 44900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Hippopotas - Sleep Talk - TR27
  (449, 44900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Hippopotas - Iron Tail - TR31
  (449, 44900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Hippopotas - Crunch - TR32
  (449, 44900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Hippopotas - Superpower - TR39
  (449, 44900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 41),
  -- Hippopotas - Muddy Water - TR45
  (449, 44900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 42),
  -- Hippopotas - Earth Power - TR67
  (449, 44900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Hippopotas - Stealth Rock - TR76
  (449, 44900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 44),
  -- Hippopotas - High Horsepower - TR94
  (449, 44900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 45),
  -- Hippopotas - Whirlwind - Egg
  (449, 44900, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hippopotas - Curse - Egg
  (449, 44900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hippopotas - Stockpile - Egg
  (449, 44900, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hippopotas - Spit Up - Egg
  (449, 44900, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hippopotas - Swallow - Egg
  (449, 44900, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hippowdon - Sand Attack - Level 1
  (450, 45000, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hippowdon - Tackle - Level 1
  (450, 45000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hippowdon - Bite - Level 1
  (450, 45000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hippowdon - Yawn - Level 1
  (450, 45000, 281, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hippowdon - Thunder Fang - Level 1
  (450, 45000, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hippowdon - Ice Fang - Level 1
  (450, 45000, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hippowdon - Fire Fang - Level 1
  (450, 45000, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hippowdon - Sand Tomb - Level 12
  (450, 45000, 328, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Hippowdon - Dig - Level 16
  (450, 45000, 91, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hippowdon - Crunch - Level 20
  (450, 45000, 242, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Hippowdon - Sandstorm - Level 24
  (450, 45000, 201, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Hippowdon - Take Down - Level 28
  (450, 45000, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Hippowdon - Roar - Level 32
  (450, 45000, 46, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Hippowdon - Rest - Level 38
  (450, 45000, 156, 18, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Hippowdon - Earthquake - Level 44
  (450, 45000, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Hippowdon - Double-Edge - Level 50
  (450, 45000, 38, 18, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Hippowdon - Fissure - Level 56
  (450, 45000, 90, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Hippowdon - Slack Off - Level 62
  (450, 45000, 303, 18, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Hippowdon - Hyper Beam - TM08
  (450, 45000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Hippowdon - Giga Impact - TM09
  (450, 45000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Hippowdon - Dig - TM15
  (450, 45000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Hippowdon - Rest - TM21
  (450, 45000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Hippowdon - Rock Slide - TM22
  (450, 45000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Hippowdon - Snore - TM24
  (450, 45000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Hippowdon - Protect - TM25
  (450, 45000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Hippowdon - Attract - TM31
  (450, 45000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Hippowdon - Sandstorm - TM32
  (450, 45000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Hippowdon - Sunny Day - TM34
  (450, 45000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Hippowdon - Facade - TM39
  (450, 45000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Hippowdon - Revenge - TM42
  (450, 45000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 30),
  -- Hippowdon - Weather Ball - TM46
  (450, 45000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Hippowdon - Rock Tomb - TM48
  (450, 45000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Hippowdon - Sand Tomb - TM49
  (450, 45000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 33),
  -- Hippowdon - Mud Shot - TM53
  (450, 45000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Hippowdon - Thunder Fang - TM66
  (450, 45000, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 35),
  -- Hippowdon - Ice Fang - TM67
  (450, 45000, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 36),
  -- Hippowdon - Fire Fang - TM68
  (450, 45000, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 37),
  -- Hippowdon - Round - TM76
  (450, 45000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Hippowdon - Bulldoze - TM81
  (450, 45000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Hippowdon - Stomping Tantrum - TM98
  (450, 45000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Hippowdon - Body Slam - TR01
  (450, 45000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Hippowdon - Earthquake - TR10
  (450, 45000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Hippowdon - Amnesia - TR17
  (450, 45000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 43),
  -- Hippowdon - Substitute - TR20
  (450, 45000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Hippowdon - Endure - TR26
  (450, 45000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Hippowdon - Sleep Talk - TR27
  (450, 45000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Hippowdon - Iron Tail - TR31
  (450, 45000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Hippowdon - Crunch - TR32
  (450, 45000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Hippowdon - Superpower - TR39
  (450, 45000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 49),
  -- Hippowdon - Muddy Water - TR45
  (450, 45000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 50),
  -- Hippowdon - Earth Power - TR67
  (450, 45000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Hippowdon - Iron Head - TR74
  (450, 45000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Hippowdon - Stone Edge - TR75
  (450, 45000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Hippowdon - Stealth Rock - TR76
  (450, 45000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Hippowdon - Heavy Slam - TR79
  (450, 45000, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 55),
  -- Hippowdon - High Horsepower - TR94
  (450, 45000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 56),
  -- Hippowdon - Body Press - TR99
  (450, 45000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 57);

-- ============================================================================
-- Source Audit Corrections
-- ============================================================================
-- Rows below are source-verified Sword / Shield learnset rows omitted from the legacy migration.
-- They preserve current-species Generation VIII source tables, including evolved/form learn paths.
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
  -- Luxio - Double Kick - Egg
  (404, 40400, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Luxio - Take Down - Egg
  (404, 40400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Luxio - Quick Attack - Egg
  (404, 40400, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Luxio - Howl - Egg
  (404, 40400, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Luxio - Shock Wave - Egg
  (404, 40400, 351, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Luxio - Night Slash - Egg
  (404, 40400, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Luxio - Baby-Doll Eyes - Egg
  (404, 40400, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Luxray - Double Kick - Egg
  (405, 40500, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Luxray - Take Down - Egg
  (405, 40500, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Luxray - Quick Attack - Egg
  (405, 40500, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Luxray - Howl - Egg
  (405, 40500, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Luxray - Shock Wave - Egg
  (405, 40500, 351, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Luxray - Night Slash - Egg
  (405, 40500, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Luxray - Baby-Doll Eyes - Egg
  (405, 40500, 608, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Roserade - Razor Leaf - Egg
  (407, 40700, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Roserade - Sleep Powder - Egg
  (407, 40700, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Roserade - Cotton Spore - Egg
  (407, 40700, 178, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Roserade - Synthesis - Egg
  (407, 40700, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Roserade - Extrasensory - Egg
  (407, 40700, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Roserade - Life Dew - Egg
  (407, 40700, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cherrim - Razor Leaf - Egg
  (421, 42100, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cherrim - Defense Curl - Egg
  (421, 42100, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cherrim - Rollout - Egg
  (421, 42100, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cherrim - Sweet Scent - Egg
  (421, 42100, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cherrim - Nature Power - Egg
  (421, 42100, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cherrim - Aromatherapy - Egg
  (421, 42100, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cherrim - Tickle - Egg
  (421, 42100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cherrim - Healing Wish - Egg
  (421, 42100, 361, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cherrim - Heal Pulse - Egg
  (421, 42100, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cherrim - Flower Shield - Egg
  (421, 42100, 579, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastrodon - Mist - Egg
  (423, 42300, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastrodon - Counter - Egg
  (423, 42300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastrodon - Sludge - Egg
  (423, 42300, 124, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastrodon - Acid Armor - Egg
  (423, 42300, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastrodon - Curse - Egg
  (423, 42300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastrodon - Mirror Coat - Egg
  (423, 42300, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastrodon - Stockpile - Egg
  (423, 42300, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastrodon - Spit Up - Egg
  (423, 42300, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastrodon - Swallow - Egg
  (423, 42300, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastrodon - Yawn - Egg
  (423, 42300, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gastrodon - Clear Smog - Egg
  (423, 42300, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drifblim - Disable - Egg
  (426, 42600, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drifblim - Hypnosis - Egg
  (426, 42600, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drifblim - Haze - Egg
  (426, 42600, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drifblim - Memento - Egg
  (426, 42600, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drifblim - Defog - Egg
  (426, 42600, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drifblim - Clear Smog - Egg
  (426, 42600, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lopunny - Flail - Egg
  (428, 42800, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Lopunny - Sweet Kiss - Egg
  (428, 42800, 186, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Lopunny - Fake Out - Egg
  (428, 42800, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Lopunny - Focus Punch - Egg
  (428, 42800, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Lopunny - Teeter Dance - Egg
  (428, 42800, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Lopunny - Copycat - Egg
  (428, 42800, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Lopunny - Switcheroo - Egg
  (428, 42800, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Lopunny - Double Hit - Egg
  (428, 42800, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Lopunny - Circle Throw - Egg
  (428, 42800, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Skuntank - Double-Edge - Egg
  (435, 43500, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skuntank - Leer - Egg
  (435, 43500, 43, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Skuntank - Haze - Egg
  (435, 43500, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skuntank - Smog - Egg
  (435, 43500, 123, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skuntank - Slash - Egg
  (435, 43500, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Skuntank - Astonish - Egg
  (435, 43500, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gabite - Thrash - Egg
  (444, 44400, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gabite - Double-Edge - Egg
  (444, 44400, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gabite - Metal Claw - Egg
  (444, 44400, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gabite - Twister - Egg
  (444, 44400, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Garchomp - Thrash - Egg
  (445, 44500, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Garchomp - Double-Edge - Egg
  (445, 44500, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Garchomp - Metal Claw - Egg
  (445, 44500, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Garchomp - Twister - Egg
  (445, 44500, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lucario - Bite - Egg
  (448, 44800, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Lucario - High Jump Kick - Egg
  (448, 44800, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Lucario - Mind Reader - Egg
  (448, 44800, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Lucario - Detect - Egg
  (448, 44800, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Lucario - Cross Chop - Egg
  (448, 44800, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Lucario - Howl - Egg
  (448, 44800, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Lucario - Vacuum Wave - Egg
  (448, 44800, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Lucario - Bullet Punch - Egg
  (448, 44800, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Lucario - Circle Throw - Egg
  (448, 44800, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Hippowdon - Whirlwind - Egg
  (450, 45000, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hippowdon - Curse - Egg
  (450, 45000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hippowdon - Stockpile - Egg
  (450, 45000, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hippowdon - Spit Up - Egg
  (450, 45000, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hippowdon - Swallow - Egg
  (450, 45000, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 62);
