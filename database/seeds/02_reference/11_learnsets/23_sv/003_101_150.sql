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
-- Scarlet / Violet learnsets for species 101-150.
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
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Thunder Shock - Level 1
  (101, 10100, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Charge - Level 1
  (101, 10100, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Eerie Impulse - Level 1
  (101, 10100, 598, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Magnetic Flux - Level 1
  (101, 10100, 602, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Electrode - Spark - Level 9
  (101, 10100, 209, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Electrode - Rollout - Level 11
  (101, 10100, 205, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Electrode - Screech - Level 13
  (101, 10100, 103, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Electrode - Charge Beam - Level 16
  (101, 10100, 451, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Electrode - Swift - Level 20
  (101, 10100, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Electrode - Electro Ball - Level 22
  (101, 10100, 486, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Electrode - Self-Destruct - Level 26
  (101, 10100, 120, 23, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Electrode - Light Screen - Level 29
  (101, 10100, 113, 23, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Electrode - Magnet Rise - Level 36
  (101, 10100, 393, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Electrode - Discharge - Level 41
  (101, 10100, 435, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Electrode - Explosion - Level 47
  (101, 10100, 153, 23, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Electrode - Gyro Ball - Level 54
  (101, 10100, 360, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Electrode - Mirror Coat - Level 58
  (101, 10100, 243, 23, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Electrode - Take Down - TM001
  (101, 10100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Electrode - Agility - TM004
  (101, 10100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Electrode - Scary Face - TM006
  (101, 10100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Electrode - Protect - TM007
  (101, 10100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Electrode - Thief - TM018
  (101, 10100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Electrode - Charge Beam - TM023
  (101, 10100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Electrode - Facade - TM025
  (101, 10100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Electrode - Swift - TM032
  (101, 10100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Electrode - Endure - TM047
  (101, 10100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Electrode - Volt Switch - TM048
  (101, 10100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Electrode - Rain Dance - TM050
  (101, 10100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Electrode - Foul Play - TM062
  (101, 10100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Electrode - Sleep Talk - TM070
  (101, 10100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Electrode - Electro Ball - TM072
  (101, 10100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 32),
  -- Electrode - Light Screen - TM075
  (101, 10100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Electrode - Thunder Wave - TM082
  (101, 10100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Electrode - Rest - TM085
  (101, 10100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Electrode - Taunt - TM087
  (101, 10100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Electrode - Eerie Impulse - TM096
  (101, 10100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 37),
  -- Electrode - Substitute - TM103
  (101, 10100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Electrode - Thunderbolt - TM126
  (101, 10100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 39),
  -- Electrode - Helping Hand - TM130
  (101, 10100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Electrode - Electric Terrain - TM136
  (101, 10100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 41),
  -- Electrode - Wild Charge - TM147
  (101, 10100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 42),
  -- Electrode - Giga Impact - TM152
  (101, 10100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Electrode - Hyper Beam - TM163
  (101, 10100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Electrode - Thunder - TM166
  (101, 10100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Electrode - Tera Blast - TM171
  (101, 10100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Electrode - Recycle - Egg
  (101, 10100, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrode - Metal Sound - Egg
  (101, 10100, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electrode (Hisuian Electrode) - Tackle - Level 1
  (101, 10101, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode (Hisuian Electrode) - Charge - Level 1
  (101, 10101, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode (Hisuian Electrode) - Thunder Shock - Level 4
  (101, 10101, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Electrode (Hisuian Electrode) - Stun Spore - Level 6
  (101, 10101, 78, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Electrode (Hisuian Electrode) - Bullet Seed - Level 9
  (101, 10101, 331, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Electrode (Hisuian Electrode) - Rollout - Level 11
  (101, 10101, 205, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Electrode (Hisuian Electrode) - Screech - Level 13
  (101, 10101, 103, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Electrode (Hisuian Electrode) - Charge Beam - Level 16
  (101, 10101, 451, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Electrode (Hisuian Electrode) - Swift - Level 20
  (101, 10101, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Electrode (Hisuian Electrode) - Electro Ball - Level 22
  (101, 10101, 486, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Electrode (Hisuian Electrode) - Self-Destruct - Level 26
  (101, 10101, 120, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Electrode (Hisuian Electrode) - Energy Ball - Level 29
  (101, 10101, 412, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Electrode (Hisuian Electrode) - Seed Bomb - Level 34
  (101, 10101, 402, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Electrode (Hisuian Electrode) - Discharge - Level 34
  (101, 10101, 435, 23, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Electrode (Hisuian Electrode) - Explosion - Level 41
  (101, 10101, 153, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Electrode (Hisuian Electrode) - Gyro Ball - Level 46
  (101, 10101, 360, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Electrode (Hisuian Electrode) - Grassy Terrain - Level 50
  (101, 10101, 580, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Electrode (Hisuian Electrode) - Take Down - TM001
  (101, 10101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Electrode (Hisuian Electrode) - Agility - TM004
  (101, 10101, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Electrode (Hisuian Electrode) - Scary Face - TM006
  (101, 10101, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Electrode (Hisuian Electrode) - Protect - TM007
  (101, 10101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Electrode (Hisuian Electrode) - Thief - TM018
  (101, 10101, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Electrode (Hisuian Electrode) - Charge Beam - TM023
  (101, 10101, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Electrode (Hisuian Electrode) - Facade - TM025
  (101, 10101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Electrode (Hisuian Electrode) - Swift - TM032
  (101, 10101, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Electrode (Hisuian Electrode) - Endure - TM047
  (101, 10101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Electrode (Hisuian Electrode) - Volt Switch - TM048
  (101, 10101, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Electrode (Hisuian Electrode) - Rain Dance - TM050
  (101, 10101, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Electrode (Hisuian Electrode) - Bullet Seed - TM056
  (101, 10101, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 29),
  -- Electrode (Hisuian Electrode) - Foul Play - TM062
  (101, 10101, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Electrode (Hisuian Electrode) - Sleep Talk - TM070
  (101, 10101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Electrode (Hisuian Electrode) - Seed Bomb - TM071
  (101, 10101, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Electrode (Hisuian Electrode) - Electro Ball - TM072
  (101, 10101, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 33),
  -- Electrode (Hisuian Electrode) - Reflect - TM074
  (101, 10101, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Electrode (Hisuian Electrode) - Grass Knot - TM081
  (101, 10101, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Electrode (Hisuian Electrode) - Thunder Wave - TM082
  (101, 10101, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Electrode (Hisuian Electrode) - Rest - TM085
  (101, 10101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Electrode (Hisuian Electrode) - Taunt - TM087
  (101, 10101, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Electrode (Hisuian Electrode) - Substitute - TM103
  (101, 10101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Electrode (Hisuian Electrode) - Giga Drain - TM111
  (101, 10101, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Electrode (Hisuian Electrode) - Energy Ball - TM119
  (101, 10101, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 41),
  -- Electrode (Hisuian Electrode) - Thunderbolt - TM126
  (101, 10101, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Electrode (Hisuian Electrode) - Electric Terrain - TM136
  (101, 10101, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Electrode (Hisuian Electrode) - Grassy Terrain - TM137
  (101, 10101, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 44),
  -- Electrode (Hisuian Electrode) - Wild Charge - TM147
  (101, 10101, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 45),
  -- Electrode (Hisuian Electrode) - Giga Impact - TM152
  (101, 10101, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Electrode (Hisuian Electrode) - Leaf Storm - TM159
  (101, 10101, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Electrode (Hisuian Electrode) - Hyper Beam - TM163
  (101, 10101, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Electrode (Hisuian Electrode) - Thunder - TM166
  (101, 10101, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 49),
  -- Electrode (Hisuian Electrode) - Solar Beam - TM168
  (101, 10101, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 50),
  -- Electrode (Hisuian Electrode) - Tera Blast - TM171
  (101, 10101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Electrode (Hisuian Electrode) - Leech Seed - Egg
  (101, 10101, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electrode (Hisuian Electrode) - Recycle - Egg
  (101, 10101, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electrode (Hisuian Electrode) - Worry Seed - Egg
  (101, 10101, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electrode (Hisuian Electrode) - Chloroblast - Evolution
  (101, 10101, 835, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Exeggcute - Absorb - Level 1
  (102, 10200, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Reflect - Level 5
  (102, 10200, 115, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Exeggcute - Leech Seed - Level 10
  (102, 10200, 73, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Exeggcute - Mega Drain - Level 15
  (102, 10200, 72, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Exeggcute - Confusion - Level 20
  (102, 10200, 93, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Exeggcute - Synthesis - Level 25
  (102, 10200, 235, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Exeggcute - Bullet Seed - Level 30
  (102, 10200, 331, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Exeggcute - Giga Drain - Level 35
  (102, 10200, 202, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Exeggcute - Extrasensory - Level 40
  (102, 10200, 326, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Exeggcute - Uproar - Level 45
  (102, 10200, 253, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Exeggcute - Worry Seed - Level 50
  (102, 10200, 388, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Exeggcute - Solar Beam - Level 55
  (102, 10200, 76, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Exeggcute - Protect - TM007
  (102, 10200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Exeggcute - Psybeam - TM016
  (102, 10200, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 15),
  -- Exeggcute - Thief - TM018
  (102, 10200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Exeggcute - Facade - TM025
  (102, 10200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Exeggcute - Stored Power - TM041
  (102, 10200, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 18),
  -- Exeggcute - Endure - TM047
  (102, 10200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Exeggcute - Sunny Day - TM049
  (102, 10200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Exeggcute - Psyshock - TM054
  (102, 10200, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 21),
  -- Exeggcute - Bullet Seed - TM056
  (102, 10200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Exeggcute - Zen Headbutt - TM059
  (102, 10200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 23),
  -- Exeggcute - Sleep Talk - TM070
  (102, 10200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Exeggcute - Seed Bomb - TM071
  (102, 10200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 25),
  -- Exeggcute - Reflect - TM074
  (102, 10200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 26),
  -- Exeggcute - Light Screen - TM075
  (102, 10200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 27),
  -- Exeggcute - Grass Knot - TM081
  (102, 10200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 28),
  -- Exeggcute - Rest - TM085
  (102, 10200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Exeggcute - Swords Dance - TM088
  (102, 10200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 30),
  -- Exeggcute - Imprison - TM092
  (102, 10200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 31),
  -- Exeggcute - Skill Swap - TM098
  (102, 10200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 32),
  -- Exeggcute - Substitute - TM103
  (102, 10200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Exeggcute - Trick - TM109
  (102, 10200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 34),
  -- Exeggcute - Giga Drain - TM111
  (102, 10200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Exeggcute - Energy Ball - TM119
  (102, 10200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Exeggcute - Psychic - TM120
  (102, 10200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Exeggcute - Helping Hand - TM130
  (102, 10200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Exeggcute - Grassy Terrain - TM137
  (102, 10200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 39),
  -- Exeggcute - Sludge Bomb - TM148
  (102, 10200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Exeggcute - Leaf Storm - TM159
  (102, 10200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Exeggcute - Solar Beam - TM168
  (102, 10200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Exeggcute - Tera Blast - TM171
  (102, 10200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Exeggcute - Poison Powder - Egg
  (102, 10200, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Exeggcute - Stun Spore - Egg
  (102, 10200, 78, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Exeggcute - Sleep Powder - Egg
  (102, 10200, 79, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Exeggcute - Curse - Egg
  (102, 10200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Exeggcute - Moonlight - Egg
  (102, 10200, 236, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Exeggcute - Ancient Power - Egg
  (102, 10200, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Exeggcute - Ingrain - Egg
  (102, 10200, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Exeggcute - Block - Egg
  (102, 10200, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Exeggutor - Absorb - Level 1
  (103, 10300, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Mega Drain - Level 1
  (103, 10300, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Leech Seed - Level 1
  (103, 10300, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Solar Beam - Level 1
  (103, 10300, 76, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exeggutor - Reflect - Level 1
  (103, 10300, 115, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exeggutor - Giga Drain - Level 1
  (103, 10300, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exeggutor - Synthesis - Level 1
  (103, 10300, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Exeggutor - Uproar - Level 1
  (103, 10300, 253, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Exeggutor - Extrasensory - Level 1
  (103, 10300, 326, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Exeggutor - Bullet Seed - Level 1
  (103, 10300, 331, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Exeggutor - Worry Seed - Level 1
  (103, 10300, 388, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Exeggutor - Seed Bomb - Level 1
  (103, 10300, 402, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Exeggutor - Leaf Storm - Level 1
  (103, 10300, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Exeggutor - Wood Hammer - Level 1
  (103, 10300, 452, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Exeggutor - Psyshock - Level 1
  (103, 10300, 473, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Exeggutor - Take Down - TM001
  (103, 10300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Exeggutor - Protect - TM007
  (103, 10300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Exeggutor - Low Kick - TM012
  (103, 10300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Exeggutor - Psybeam - TM016
  (103, 10300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Exeggutor - Thief - TM018
  (103, 10300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Exeggutor - Facade - TM025
  (103, 10300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Exeggutor - Bulldoze - TM028
  (103, 10300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Exeggutor - Magical Leaf - TM033
  (103, 10300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Exeggutor - Stored Power - TM041
  (103, 10300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Exeggutor - Endure - TM047
  (103, 10300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Exeggutor - Sunny Day - TM049
  (103, 10300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Exeggutor - Psyshock - TM054
  (103, 10300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 29),
  -- Exeggutor - Bullet Seed - TM056
  (103, 10300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Exeggutor - Zen Headbutt - TM059
  (103, 10300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Exeggutor - Body Slam - TM066
  (103, 10300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Exeggutor - Sleep Talk - TM070
  (103, 10300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Exeggutor - Seed Bomb - TM071
  (103, 10300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Exeggutor - Reflect - TM074
  (103, 10300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Exeggutor - Light Screen - TM075
  (103, 10300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Exeggutor - Grass Knot - TM081
  (103, 10300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Exeggutor - Stomping Tantrum - TM084
  (103, 10300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Exeggutor - Rest - TM085
  (103, 10300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Exeggutor - Swords Dance - TM088
  (103, 10300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Exeggutor - Imprison - TM092
  (103, 10300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Exeggutor - Skill Swap - TM098
  (103, 10300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 42),
  -- Exeggutor - Substitute - TM103
  (103, 10300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Exeggutor - Trick - TM109
  (103, 10300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 44),
  -- Exeggutor - Giga Drain - TM111
  (103, 10300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Exeggutor - Energy Ball - TM119
  (103, 10300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Exeggutor - Psychic - TM120
  (103, 10300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 47),
  -- Exeggutor - Calm Mind - TM129
  (103, 10300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 48),
  -- Exeggutor - Helping Hand - TM130
  (103, 10300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Exeggutor - Grassy Terrain - TM137
  (103, 10300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 50),
  -- Exeggutor - Psychic Terrain - TM138
  (103, 10300, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 51),
  -- Exeggutor - Sludge Bomb - TM148
  (103, 10300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 52),
  -- Exeggutor - Earthquake - TM149
  (103, 10300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Exeggutor - Giga Impact - TM152
  (103, 10300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Exeggutor - Leaf Storm - TM159
  (103, 10300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 55),
  -- Exeggutor - Trick Room - TM161
  (103, 10300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 56),
  -- Exeggutor - Hyper Beam - TM163
  (103, 10300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Exeggutor - Solar Beam - TM168
  (103, 10300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Exeggutor - Tera Blast - TM171
  (103, 10300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Exeggutor - Poison Powder - Egg
  (103, 10300, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Exeggutor - Stun Spore - Egg
  (103, 10300, 78, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Exeggutor - Sleep Powder - Egg
  (103, 10300, 79, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Exeggutor - Curse - Egg
  (103, 10300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Exeggutor - Moonlight - Egg
  (103, 10300, 236, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Exeggutor - Ancient Power - Egg
  (103, 10300, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Exeggutor - Ingrain - Egg
  (103, 10300, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Exeggutor - Block - Egg
  (103, 10300, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Exeggutor - Stomp - Evolution
  (103, 10300, 23, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Exeggutor - Growth - Reminder
  (103, 10300, 74, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Exeggutor (Alolan Exeggutor) - Absorb - Level 1
  (103, 10301, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor (Alolan Exeggutor) - Mega Drain - Level 1
  (103, 10301, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor (Alolan Exeggutor) - Leech Seed - Level 1
  (103, 10301, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor (Alolan Exeggutor) - Solar Beam - Level 1
  (103, 10301, 76, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor (Alolan Exeggutor) - Confusion - Level 1
  (103, 10301, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor (Alolan Exeggutor) - Hypnosis - Level 1
  (103, 10301, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exeggutor (Alolan Exeggutor) - Reflect - Level 1
  (103, 10301, 115, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exeggutor (Alolan Exeggutor) - Giga Drain - Level 1
  (103, 10301, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exeggutor (Alolan Exeggutor) - Synthesis - Level 1
  (103, 10301, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Exeggutor (Alolan Exeggutor) - Uproar - Level 1
  (103, 10301, 253, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Exeggutor (Alolan Exeggutor) - Extrasensory - Level 1
  (103, 10301, 326, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Exeggutor (Alolan Exeggutor) - Bullet Seed - Level 1
  (103, 10301, 331, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Exeggutor (Alolan Exeggutor) - Worry Seed - Level 1
  (103, 10301, 388, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Exeggutor (Alolan Exeggutor) - Seed Bomb - Level 1
  (103, 10301, 402, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Exeggutor (Alolan Exeggutor) - Leaf Storm - Level 1
  (103, 10301, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Exeggutor (Alolan Exeggutor) - Wood Hammer - Level 1
  (103, 10301, 452, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Exeggutor (Alolan Exeggutor) - Psyshock - Level 1
  (103, 10301, 473, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Exeggutor (Alolan Exeggutor) - Take Down - TM001
  (103, 10301, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Exeggutor (Alolan Exeggutor) - Protect - TM007
  (103, 10301, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Exeggutor (Alolan Exeggutor) - Low Kick - TM012
  (103, 10301, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Exeggutor (Alolan Exeggutor) - Psybeam - TM016
  (103, 10301, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Exeggutor (Alolan Exeggutor) - Thief - TM018
  (103, 10301, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Exeggutor (Alolan Exeggutor) - Trailblaze - TM020
  (103, 10301, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Exeggutor (Alolan Exeggutor) - Facade - TM025
  (103, 10301, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Exeggutor (Alolan Exeggutor) - Bulldoze - TM028
  (103, 10301, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Exeggutor (Alolan Exeggutor) - Magical Leaf - TM033
  (103, 10301, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Exeggutor (Alolan Exeggutor) - Stored Power - TM041
  (103, 10301, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Exeggutor (Alolan Exeggutor) - Dragon Tail - TM044
  (103, 10301, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Exeggutor (Alolan Exeggutor) - Endure - TM047
  (103, 10301, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Exeggutor (Alolan Exeggutor) - Sunny Day - TM049
  (103, 10301, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Exeggutor (Alolan Exeggutor) - Psyshock - TM054
  (103, 10301, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Exeggutor (Alolan Exeggutor) - Bullet Seed - TM056
  (103, 10301, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Exeggutor (Alolan Exeggutor) - Brick Break - TM058
  (103, 10301, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Exeggutor (Alolan Exeggutor) - Zen Headbutt - TM059
  (103, 10301, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Exeggutor (Alolan Exeggutor) - Body Slam - TM066
  (103, 10301, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Exeggutor (Alolan Exeggutor) - Sleep Talk - TM070
  (103, 10301, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Exeggutor (Alolan Exeggutor) - Seed Bomb - TM071
  (103, 10301, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Exeggutor (Alolan Exeggutor) - Reflect - TM074
  (103, 10301, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 38),
  -- Exeggutor (Alolan Exeggutor) - Light Screen - TM075
  (103, 10301, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Exeggutor (Alolan Exeggutor) - Grass Knot - TM081
  (103, 10301, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Exeggutor (Alolan Exeggutor) - Stomping Tantrum - TM084
  (103, 10301, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 41),
  -- Exeggutor (Alolan Exeggutor) - Rest - TM085
  (103, 10301, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Exeggutor (Alolan Exeggutor) - Swords Dance - TM088
  (103, 10301, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Exeggutor (Alolan Exeggutor) - Imprison - TM092
  (103, 10301, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 44),
  -- Exeggutor (Alolan Exeggutor) - Skill Swap - TM098
  (103, 10301, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 45),
  -- Exeggutor (Alolan Exeggutor) - Iron Head - TM099
  (103, 10301, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 46),
  -- Exeggutor (Alolan Exeggutor) - Substitute - TM103
  (103, 10301, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Exeggutor (Alolan Exeggutor) - Trick - TM109
  (103, 10301, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 48),
  -- Exeggutor (Alolan Exeggutor) - Giga Drain - TM111
  (103, 10301, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 49),
  -- Exeggutor (Alolan Exeggutor) - Dragon Pulse - TM115
  (103, 10301, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 50),
  -- Exeggutor (Alolan Exeggutor) - Energy Ball - TM119
  (103, 10301, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 51),
  -- Exeggutor (Alolan Exeggutor) - Psychic - TM120
  (103, 10301, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Exeggutor (Alolan Exeggutor) - Flamethrower - TM125
  (103, 10301, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Exeggutor (Alolan Exeggutor) - Calm Mind - TM129
  (103, 10301, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 54),
  -- Exeggutor (Alolan Exeggutor) - Helping Hand - TM130
  (103, 10301, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Exeggutor (Alolan Exeggutor) - Grassy Terrain - TM137
  (103, 10301, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 56),
  -- Exeggutor (Alolan Exeggutor) - Psychic Terrain - TM138
  (103, 10301, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 57),
  -- Exeggutor (Alolan Exeggutor) - Sludge Bomb - TM148
  (103, 10301, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 58),
  -- Exeggutor (Alolan Exeggutor) - Earthquake - TM149
  (103, 10301, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 59),
  -- Exeggutor (Alolan Exeggutor) - Giga Impact - TM152
  (103, 10301, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Exeggutor (Alolan Exeggutor) - Outrage - TM156
  (103, 10301, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 61),
  -- Exeggutor (Alolan Exeggutor) - Leaf Storm - TM159
  (103, 10301, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 62),
  -- Exeggutor (Alolan Exeggutor) - Trick Room - TM161
  (103, 10301, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 63),
  -- Exeggutor (Alolan Exeggutor) - Hyper Beam - TM163
  (103, 10301, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Exeggutor (Alolan Exeggutor) - Solar Beam - TM168
  (103, 10301, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Exeggutor (Alolan Exeggutor) - Draco Meteor - TM169
  (103, 10301, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 66),
  -- Exeggutor (Alolan Exeggutor) - Tera Blast - TM171
  (103, 10301, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Exeggutor (Alolan Exeggutor) - Dragon Hammer - Evolution
  (103, 10301, 692, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Exeggutor (Alolan Exeggutor) - Growth - Reminder
  (103, 10301, 74, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Hitmonlee - Tackle - Level 1
  (106, 10600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Focus Energy - Level 1
  (106, 10600, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Fake Out - Level 1
  (106, 10600, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmonlee - Helping Hand - Level 1
  (106, 10600, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmonlee - Low Sweep - Level 1
  (106, 10600, 490, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmonlee - Double Kick - Level 4
  (106, 10600, 24, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hitmonlee - Low Kick - Level 8
  (106, 10600, 67, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Hitmonlee - Endure - Level 12
  (106, 10600, 203, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Hitmonlee - Sucker Punch - Level 16
  (106, 10600, 389, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hitmonlee - Wide Guard - Level 21
  (106, 10600, 469, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Hitmonlee - Blaze Kick - Level 24
  (106, 10600, 299, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Hitmonlee - Feint - Level 28
  (106, 10600, 364, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Hitmonlee - Mega Kick - Level 32
  (106, 10600, 25, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Hitmonlee - Close Combat - Level 36
  (106, 10600, 370, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Hitmonlee - Reversal - Level 40
  (106, 10600, 179, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Hitmonlee - High Jump Kick - Level 44
  (106, 10600, 136, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Hitmonlee - Axe Kick - Level 50
  (106, 10600, 853, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Hitmonlee - Take Down - TM001
  (106, 10600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Hitmonlee - Mud-Slap - TM005
  (106, 10600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Hitmonlee - Scary Face - TM006
  (106, 10600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Hitmonlee - Protect - TM007
  (106, 10600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Hitmonlee - Low Kick - TM012
  (106, 10600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Hitmonlee - Thief - TM018
  (106, 10600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Hitmonlee - Facade - TM025
  (106, 10600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Hitmonlee - Bulldoze - TM028
  (106, 10600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Hitmonlee - Swift - TM032
  (106, 10600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Hitmonlee - Rock Tomb - TM036
  (106, 10600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Hitmonlee - Low Sweep - TM039
  (106, 10600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Hitmonlee - Fling - TM043
  (106, 10600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Hitmonlee - Endure - TM047
  (106, 10600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Hitmonlee - Sunny Day - TM049
  (106, 10600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Hitmonlee - Rain Dance - TM050
  (106, 10600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Hitmonlee - Brick Break - TM058
  (106, 10600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Hitmonlee - Bulk Up - TM064
  (106, 10600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Hitmonlee - Body Slam - TM066
  (106, 10600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Hitmonlee - Sleep Talk - TM070
  (106, 10600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Hitmonlee - Metronome - TM080
  (106, 10600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 37),
  -- Hitmonlee - Poison Jab - TM083
  (106, 10600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Hitmonlee - Stomping Tantrum - TM084
  (106, 10600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Hitmonlee - Rest - TM085
  (106, 10600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Hitmonlee - Rock Slide - TM086
  (106, 10600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Hitmonlee - Taunt - TM087
  (106, 10600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Hitmonlee - Swords Dance - TM088
  (106, 10600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Hitmonlee - Substitute - TM103
  (106, 10600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Hitmonlee - Aura Sphere - TM112
  (106, 10600, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 45),
  -- Hitmonlee - Helping Hand - TM130
  (106, 10600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Hitmonlee - Baton Pass - TM132
  (106, 10600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Hitmonlee - Reversal - TM134
  (106, 10600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Hitmonlee - Earthquake - TM149
  (106, 10600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Hitmonlee - Stone Edge - TM150
  (106, 10600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Hitmonlee - Giga Impact - TM152
  (106, 10600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Hitmonlee - Focus Blast - TM158
  (106, 10600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Hitmonlee - Close Combat - TM167
  (106, 10600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Hitmonlee - Tera Blast - TM171
  (106, 10600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Hitmonlee - Counter - Egg
  (106, 10600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmonlee - High Jump Kick - Egg
  (106, 10600, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hitmonlee - Mach Punch - Egg
  (106, 10600, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hitmonlee - Rapid Spin - Egg
  (106, 10600, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hitmonlee - Feint - Egg
  (106, 10600, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hitmonlee - Vacuum Wave - Egg
  (106, 10600, 410, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hitmonlee - Bullet Punch - Egg
  (106, 10600, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hitmonlee - Brick Break - Evolution
  (106, 10600, 280, 23, NULL, 7, NULL, NULL, NULL, NULL, 62),
  -- Hitmonchan - Tackle - Level 1
  (107, 10700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Focus Energy - Level 1
  (107, 10700, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Fake Out - Level 1
  (107, 10700, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmonchan - Helping Hand - Level 1
  (107, 10700, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmonchan - Feint - Level 1
  (107, 10700, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmonchan - Mach Punch - Level 4
  (107, 10700, 183, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hitmonchan - Vacuum Wave - Level 8
  (107, 10700, 410, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Hitmonchan - Detect - Level 12
  (107, 10700, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Hitmonchan - Bullet Punch - Level 16
  (107, 10700, 418, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hitmonchan - Quick Guard - Level 21
  (107, 10700, 501, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Hitmonchan - Fire Punch - Level 24
  (107, 10700, 7, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Hitmonchan - Ice Punch - Level 24
  (107, 10700, 8, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Hitmonchan - Thunder Punch - Level 24
  (107, 10700, 9, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Hitmonchan - Agility - Level 28
  (107, 10700, 97, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Hitmonchan - Mega Punch - Level 32
  (107, 10700, 5, 23, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Hitmonchan - Close Combat - Level 36
  (107, 10700, 370, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Hitmonchan - Counter - Level 40
  (107, 10700, 68, 23, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Hitmonchan - Focus Punch - Level 44
  (107, 10700, 264, 23, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Hitmonchan - Take Down - TM001
  (107, 10700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Hitmonchan - Agility - TM004
  (107, 10700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Hitmonchan - Mud-Slap - TM005
  (107, 10700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Hitmonchan - Scary Face - TM006
  (107, 10700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Hitmonchan - Protect - TM007
  (107, 10700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Hitmonchan - Low Kick - TM012
  (107, 10700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Hitmonchan - Thief - TM018
  (107, 10700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Hitmonchan - Trailblaze - TM020
  (107, 10700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Hitmonchan - Facade - TM025
  (107, 10700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Hitmonchan - Bulldoze - TM028
  (107, 10700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Hitmonchan - Swift - TM032
  (107, 10700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Hitmonchan - Rock Tomb - TM036
  (107, 10700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Hitmonchan - Low Sweep - TM039
  (107, 10700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 31),
  -- Hitmonchan - Fling - TM043
  (107, 10700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Hitmonchan - Endure - TM047
  (107, 10700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Hitmonchan - Sunny Day - TM049
  (107, 10700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Hitmonchan - Rain Dance - TM050
  (107, 10700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Hitmonchan - Brick Break - TM058
  (107, 10700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Hitmonchan - Bulk Up - TM064
  (107, 10700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Hitmonchan - Body Slam - TM066
  (107, 10700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Hitmonchan - Fire Punch - TM067
  (107, 10700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Hitmonchan - Thunder Punch - TM068
  (107, 10700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Hitmonchan - Ice Punch - TM069
  (107, 10700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Hitmonchan - Sleep Talk - TM070
  (107, 10700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Hitmonchan - Drain Punch - TM073
  (107, 10700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Hitmonchan - Metronome - TM080
  (107, 10700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Hitmonchan - Poison Jab - TM083
  (107, 10700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Hitmonchan - Rest - TM085
  (107, 10700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Hitmonchan - Rock Slide - TM086
  (107, 10700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Hitmonchan - Taunt - TM087
  (107, 10700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Hitmonchan - Swords Dance - TM088
  (107, 10700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Hitmonchan - Substitute - TM103
  (107, 10700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Hitmonchan - Aura Sphere - TM112
  (107, 10700, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 51),
  -- Hitmonchan - Encore - TM122
  (107, 10700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Hitmonchan - Helping Hand - TM130
  (107, 10700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Hitmonchan - Baton Pass - TM132
  (107, 10700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Hitmonchan - Reversal - TM134
  (107, 10700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Hitmonchan - Earthquake - TM149
  (107, 10700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Hitmonchan - Stone Edge - TM150
  (107, 10700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Hitmonchan - Giga Impact - TM152
  (107, 10700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Hitmonchan - Focus Blast - TM158
  (107, 10700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Hitmonchan - Close Combat - TM167
  (107, 10700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 60),
  -- Hitmonchan - Tera Blast - TM171
  (107, 10700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Hitmonchan - Counter - Egg
  (107, 10700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Hitmonchan - High Jump Kick - Egg
  (107, 10700, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Hitmonchan - Mach Punch - Egg
  (107, 10700, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Hitmonchan - Rapid Spin - Egg
  (107, 10700, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Hitmonchan - Feint - Egg
  (107, 10700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hitmonchan - Vacuum Wave - Egg
  (107, 10700, 410, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hitmonchan - Bullet Punch - Egg
  (107, 10700, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Hitmonchan - Drain Punch - Evolution
  (107, 10700, 409, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 4
  (109, 10900, 123, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 8
  (109, 10900, 108, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Koffing - Clear Smog - Level 12
  (109, 10900, 499, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Koffing - Assurance - Level 16
  (109, 10900, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Koffing - Sludge - Level 20
  (109, 10900, 124, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Koffing - Haze - Level 24
  (109, 10900, 114, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Koffing - Self-Destruct - Level 28
  (109, 10900, 120, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Koffing - Sludge Bomb - Level 32
  (109, 10900, 188, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Koffing - Toxic - Level 36
  (109, 10900, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Koffing - Belch - Level 40
  (109, 10900, 562, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Koffing - Explosion - Level 44
  (109, 10900, 153, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Koffing - Memento - Level 48
  (109, 10900, 262, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Koffing - Destiny Bond - Level 52
  (109, 10900, 194, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Koffing - Take Down - TM001
  (109, 10900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Koffing - Scary Face - TM006
  (109, 10900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Koffing - Protect - TM007
  (109, 10900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Koffing - Acid Spray - TM013
  (109, 10900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Koffing - Psybeam - TM016
  (109, 10900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Koffing - Thief - TM018
  (109, 10900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Koffing - Facade - TM025
  (109, 10900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Koffing - Venoshock - TM045
  (109, 10900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Koffing - Endure - TM047
  (109, 10900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Koffing - Sunny Day - TM049
  (109, 10900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Koffing - Rain Dance - TM050
  (109, 10900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Koffing - Body Slam - TM066
  (109, 10900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Koffing - Sleep Talk - TM070
  (109, 10900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Koffing - Rest - TM085
  (109, 10900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Koffing - Taunt - TM087
  (109, 10900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 30),
  -- Koffing - Toxic Spikes - TM091
  (109, 10900, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 31),
  -- Koffing - Dark Pulse - TM094
  (109, 10900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 32),
  -- Koffing - Gunk Shot - TM102
  (109, 10900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 33),
  -- Koffing - Substitute - TM103
  (109, 10900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Koffing - Will-O-Wisp - TM107
  (109, 10900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 35),
  -- Koffing - Shadow Ball - TM114
  (109, 10900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 36),
  -- Koffing - Flamethrower - TM125
  (109, 10900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 37),
  -- Koffing - Thunderbolt - TM126
  (109, 10900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 38),
  -- Koffing - Fire Blast - TM141
  (109, 10900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 39),
  -- Koffing - Sludge Bomb - TM148
  (109, 10900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Koffing - Thunder - TM166
  (109, 10900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 41),
  -- Koffing - Tera Blast - TM171
  (109, 10900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Koffing - Curse - Egg
  (109, 10900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Koffing - Spite - Egg
  (109, 10900, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Koffing - Pain Split - Egg
  (109, 10900, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Koffing - Stockpile - Egg
  (109, 10900, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Koffing - Spit Up - Egg
  (109, 10900, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Koffing - Swallow - Egg
  (109, 10900, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Smokescreen - Level 1
  (110, 11000, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Heat Wave - Level 1
  (110, 11000, 257, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weezing - Clear Smog - Level 12
  (110, 11000, 499, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Weezing - Assurance - Level 16
  (110, 11000, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Weezing - Sludge - Level 20
  (110, 11000, 124, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Weezing - Haze - Level 24
  (110, 11000, 114, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weezing - Self-Destruct - Level 28
  (110, 11000, 120, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Weezing - Sludge Bomb - Level 32
  (110, 11000, 188, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Weezing - Toxic - Level 38
  (110, 11000, 92, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Weezing - Belch - Level 44
  (110, 11000, 562, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Weezing - Explosion - Level 50
  (110, 11000, 153, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Weezing - Memento - Level 56
  (110, 11000, 262, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Weezing - Destiny Bond - Level 62
  (110, 11000, 194, 23, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Weezing - Take Down - TM001
  (110, 11000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Weezing - Scary Face - TM006
  (110, 11000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Weezing - Protect - TM007
  (110, 11000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Weezing - Acid Spray - TM013
  (110, 11000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Weezing - Psybeam - TM016
  (110, 11000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Weezing - Thief - TM018
  (110, 11000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Weezing - Facade - TM025
  (110, 11000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Weezing - Venoshock - TM045
  (110, 11000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 24),
  -- Weezing - Endure - TM047
  (110, 11000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Weezing - Sunny Day - TM049
  (110, 11000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Weezing - Rain Dance - TM050
  (110, 11000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Weezing - Body Slam - TM066
  (110, 11000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Weezing - Sleep Talk - TM070
  (110, 11000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Weezing - Rest - TM085
  (110, 11000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Weezing - Taunt - TM087
  (110, 11000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 31),
  -- Weezing - Toxic Spikes - TM091
  (110, 11000, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 32),
  -- Weezing - Dark Pulse - TM094
  (110, 11000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 33),
  -- Weezing - Gunk Shot - TM102
  (110, 11000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 34),
  -- Weezing - Substitute - TM103
  (110, 11000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Weezing - Will-O-Wisp - TM107
  (110, 11000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Weezing - Shadow Ball - TM114
  (110, 11000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 37),
  -- Weezing - Heat Wave - TM118
  (110, 11000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Weezing - Flamethrower - TM125
  (110, 11000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Weezing - Thunderbolt - TM126
  (110, 11000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 40),
  -- Weezing - Fire Blast - TM141
  (110, 11000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Weezing - Sludge Bomb - TM148
  (110, 11000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 42),
  -- Weezing - Giga Impact - TM152
  (110, 11000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Weezing - Hyper Beam - TM163
  (110, 11000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Weezing - Thunder - TM166
  (110, 11000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Weezing - Tera Blast - TM171
  (110, 11000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Weezing - Curse - Egg
  (110, 11000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Weezing - Spite - Egg
  (110, 11000, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Weezing - Pain Split - Egg
  (110, 11000, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Weezing - Stockpile - Egg
  (110, 11000, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Weezing - Spit Up - Egg
  (110, 11000, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Weezing - Swallow - Egg
  (110, 11000, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Weezing - Double Hit - Evolution
  (110, 11000, 458, 23, NULL, 7, NULL, NULL, NULL, NULL, 53),
  -- Weezing (Galarian Weezing) - Tackle - Level 1
  (110, 11001, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing (Galarian Weezing) - Smokescreen - Level 1
  (110, 11001, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing (Galarian Weezing) - Haze - Level 1
  (110, 11001, 114, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing (Galarian Weezing) - Smog - Level 1
  (110, 11001, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing (Galarian Weezing) - Poison Gas - Level 1
  (110, 11001, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weezing (Galarian Weezing) - Heat Wave - Level 1
  (110, 11001, 257, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weezing (Galarian Weezing) - Defog - Level 1
  (110, 11001, 432, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weezing (Galarian Weezing) - Aromatic Mist - Level 1
  (110, 11001, 597, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Weezing (Galarian Weezing) - Strange Steam - Level 1
  (110, 11001, 790, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Weezing (Galarian Weezing) - Clear Smog - Level 12
  (110, 11001, 499, 23, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Weezing (Galarian Weezing) - Assurance - Level 16
  (110, 11001, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Weezing (Galarian Weezing) - Sludge - Level 20
  (110, 11001, 124, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Weezing (Galarian Weezing) - Fairy Wind - Level 24
  (110, 11001, 584, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Weezing (Galarian Weezing) - Self-Destruct - Level 28
  (110, 11001, 120, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Weezing (Galarian Weezing) - Sludge Bomb - Level 32
  (110, 11001, 188, 23, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Weezing (Galarian Weezing) - Toxic - Level 38
  (110, 11001, 92, 23, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Weezing (Galarian Weezing) - Belch - Level 44
  (110, 11001, 562, 23, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Weezing (Galarian Weezing) - Explosion - Level 50
  (110, 11001, 153, 23, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Weezing (Galarian Weezing) - Memento - Level 56
  (110, 11001, 262, 23, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Weezing (Galarian Weezing) - Destiny Bond - Level 62
  (110, 11001, 194, 23, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Weezing (Galarian Weezing) - Misty Terrain - Level 68
  (110, 11001, 581, 23, NULL, 1, 68, NULL, NULL, NULL, 21),
  -- Weezing (Galarian Weezing) - Take Down - TM001
  (110, 11001, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 22),
  -- Weezing (Galarian Weezing) - Scary Face - TM006
  (110, 11001, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 23),
  -- Weezing (Galarian Weezing) - Protect - TM007
  (110, 11001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Weezing (Galarian Weezing) - Acid Spray - TM013
  (110, 11001, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 25),
  -- Weezing (Galarian Weezing) - Psybeam - TM016
  (110, 11001, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 26),
  -- Weezing (Galarian Weezing) - Thief - TM018
  (110, 11001, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 27),
  -- Weezing (Galarian Weezing) - Facade - TM025
  (110, 11001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Weezing (Galarian Weezing) - Venoshock - TM045
  (110, 11001, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Weezing (Galarian Weezing) - Endure - TM047
  (110, 11001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Weezing (Galarian Weezing) - Sunny Day - TM049
  (110, 11001, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Weezing (Galarian Weezing) - Rain Dance - TM050
  (110, 11001, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Weezing (Galarian Weezing) - Body Slam - TM066
  (110, 11001, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Weezing (Galarian Weezing) - Sleep Talk - TM070
  (110, 11001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Weezing (Galarian Weezing) - Dazzling Gleam - TM079
  (110, 11001, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Weezing (Galarian Weezing) - Rest - TM085
  (110, 11001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Weezing (Galarian Weezing) - Taunt - TM087
  (110, 11001, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Weezing (Galarian Weezing) - Toxic Spikes - TM091
  (110, 11001, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 38),
  -- Weezing (Galarian Weezing) - Dark Pulse - TM094
  (110, 11001, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Weezing (Galarian Weezing) - Gunk Shot - TM102
  (110, 11001, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 40),
  -- Weezing (Galarian Weezing) - Substitute - TM103
  (110, 11001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Weezing (Galarian Weezing) - Will-O-Wisp - TM107
  (110, 11001, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Weezing (Galarian Weezing) - Shadow Ball - TM114
  (110, 11001, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Weezing (Galarian Weezing) - Heat Wave - TM118
  (110, 11001, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Weezing (Galarian Weezing) - Flamethrower - TM125
  (110, 11001, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Weezing (Galarian Weezing) - Thunderbolt - TM126
  (110, 11001, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Weezing (Galarian Weezing) - Play Rough - TM127
  (110, 11001, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Weezing (Galarian Weezing) - Misty Terrain - TM139
  (110, 11001, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 48),
  -- Weezing (Galarian Weezing) - Fire Blast - TM141
  (110, 11001, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Weezing (Galarian Weezing) - Sludge Bomb - TM148
  (110, 11001, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Weezing (Galarian Weezing) - Giga Impact - TM152
  (110, 11001, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Weezing (Galarian Weezing) - Overheat - TM157
  (110, 11001, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 52),
  -- Weezing (Galarian Weezing) - Hyper Beam - TM163
  (110, 11001, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Weezing (Galarian Weezing) - Thunder - TM166
  (110, 11001, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Weezing (Galarian Weezing) - Tera Blast - TM171
  (110, 11001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Weezing (Galarian Weezing) - Double Hit - Evolution
  (110, 11001, 458, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Rhyhorn - Tackle - Level 1
  (111, 11100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Smack Down - Level 5
  (111, 11100, 479, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rhyhorn - Bulldoze - Level 10
  (111, 11100, 523, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rhyhorn - Horn Attack - Level 15
  (111, 11100, 30, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rhyhorn - Scary Face - Level 20
  (111, 11100, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rhyhorn - Stomp - Level 25
  (111, 11100, 23, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rhyhorn - Rock Blast - Level 30
  (111, 11100, 350, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rhyhorn - Drill Run - Level 35
  (111, 11100, 529, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rhyhorn - Take Down - Level 40
  (111, 11100, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rhyhorn - Earthquake - Level 45
  (111, 11100, 89, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rhyhorn - Stone Edge - Level 50
  (111, 11100, 444, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rhyhorn - Megahorn - Level 55
  (111, 11100, 224, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rhyhorn - Horn Drill - Level 60
  (111, 11100, 32, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Rhyhorn - Take Down - TM001
  (111, 11100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Rhyhorn - Mud-Slap - TM005
  (111, 11100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Rhyhorn - Scary Face - TM006
  (111, 11100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Rhyhorn - Protect - TM007
  (111, 11100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Rhyhorn - Fire Fang - TM008
  (111, 11100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Rhyhorn - Thunder Fang - TM009
  (111, 11100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Rhyhorn - Ice Fang - TM010
  (111, 11100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Rhyhorn - Thief - TM018
  (111, 11100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Rhyhorn - Facade - TM025
  (111, 11100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Rhyhorn - Bulldoze - TM028
  (111, 11100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Rhyhorn - Icy Wind - TM034
  (111, 11100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Rhyhorn - Mud Shot - TM035
  (111, 11100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Rhyhorn - Rock Tomb - TM036
  (111, 11100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Rhyhorn - Endure - TM047
  (111, 11100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Rhyhorn - Sunny Day - TM049
  (111, 11100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Rhyhorn - Rain Dance - TM050
  (111, 11100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Rhyhorn - Sandstorm - TM051
  (111, 11100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Rhyhorn - Smart Strike - TM053
  (111, 11100, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Rhyhorn - Dig - TM055
  (111, 11100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Rhyhorn - Body Slam - TM066
  (111, 11100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Rhyhorn - Sleep Talk - TM070
  (111, 11100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Rhyhorn - Rock Blast - TM076
  (111, 11100, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 36),
  -- Rhyhorn - Poison Jab - TM083
  (111, 11100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Rhyhorn - Stomping Tantrum - TM084
  (111, 11100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Rhyhorn - Rest - TM085
  (111, 11100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Rhyhorn - Rock Slide - TM086
  (111, 11100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Rhyhorn - Swords Dance - TM088
  (111, 11100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Rhyhorn - Body Press - TM089
  (111, 11100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 42),
  -- Rhyhorn - Substitute - TM103
  (111, 11100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Rhyhorn - Drill Run - TM106
  (111, 11100, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 44),
  -- Rhyhorn - Crunch - TM108
  (111, 11100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Rhyhorn - Dragon Pulse - TM115
  (111, 11100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Rhyhorn - Stealth Rock - TM116
  (111, 11100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Rhyhorn - Heavy Slam - TM121
  (111, 11100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Rhyhorn - Flamethrower - TM125
  (111, 11100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Rhyhorn - Thunderbolt - TM126
  (111, 11100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Rhyhorn - Earth Power - TM133
  (111, 11100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Rhyhorn - Reversal - TM134
  (111, 11100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Rhyhorn - Ice Beam - TM135
  (111, 11100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 53),
  -- Rhyhorn - Fire Blast - TM141
  (111, 11100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Rhyhorn - Blizzard - TM143
  (111, 11100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 55),
  -- Rhyhorn - Earthquake - TM149
  (111, 11100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Rhyhorn - Stone Edge - TM150
  (111, 11100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Rhyhorn - Thunder - TM166
  (111, 11100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 58),
  -- Rhyhorn - Tera Blast - TM171
  (111, 11100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Rhyhorn - Counter - Egg
  (111, 11100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhyhorn - Curse - Egg
  (111, 11100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rhyhorn - Metal Burst - Egg
  (111, 11100, 368, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rhyhorn - Rock Polish - Egg
  (111, 11100, 397, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rhyhorn - Dragon Rush - Egg
  (111, 11100, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rhyhorn - Guard Split - Egg
  (111, 11100, 470, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rhydon - Tackle - Level 1
  (112, 11200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Smack Down - Level 1
  (112, 11200, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Bulldoze - Level 1
  (112, 11200, 523, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Horn Attack - Level 15
  (112, 11200, 30, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rhydon - Scary Face - Level 20
  (112, 11200, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rhydon - Stomp - Level 25
  (112, 11200, 23, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rhydon - Rock Blast - Level 30
  (112, 11200, 350, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rhydon - Drill Run - Level 35
  (112, 11200, 529, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rhydon - Take Down - Level 40
  (112, 11200, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rhydon - Earthquake - Level 47
  (112, 11200, 89, 23, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Rhydon - Stone Edge - Level 54
  (112, 11200, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Rhydon - Megahorn - Level 61
  (112, 11200, 224, 23, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Rhydon - Horn Drill - Level 68
  (112, 11200, 32, 23, NULL, 1, 68, NULL, NULL, NULL, 14),
  -- Rhydon - Take Down - TM001
  (112, 11200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Rhydon - Mud-Slap - TM005
  (112, 11200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Rhydon - Scary Face - TM006
  (112, 11200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Rhydon - Protect - TM007
  (112, 11200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Rhydon - Fire Fang - TM008
  (112, 11200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Rhydon - Thunder Fang - TM009
  (112, 11200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Rhydon - Ice Fang - TM010
  (112, 11200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Rhydon - Thief - TM018
  (112, 11200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Rhydon - Facade - TM025
  (112, 11200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Rhydon - Bulldoze - TM028
  (112, 11200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Rhydon - Icy Wind - TM034
  (112, 11200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Rhydon - Mud Shot - TM035
  (112, 11200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Rhydon - Rock Tomb - TM036
  (112, 11200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Rhydon - Fling - TM043
  (112, 11200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Rhydon - Avalanche - TM046
  (112, 11200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Rhydon - Endure - TM047
  (112, 11200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Rhydon - Sunny Day - TM049
  (112, 11200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Rhydon - Rain Dance - TM050
  (112, 11200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Rhydon - Sandstorm - TM051
  (112, 11200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Rhydon - Smart Strike - TM053
  (112, 11200, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 34),
  -- Rhydon - Dig - TM055
  (112, 11200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Rhydon - Brick Break - TM058
  (112, 11200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Rhydon - Shadow Claw - TM061
  (112, 11200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Rhydon - Body Slam - TM066
  (112, 11200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Rhydon - Fire Punch - TM067
  (112, 11200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Rhydon - Thunder Punch - TM068
  (112, 11200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Rhydon - Ice Punch - TM069
  (112, 11200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Rhydon - Sleep Talk - TM070
  (112, 11200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Rhydon - Rock Blast - TM076
  (112, 11200, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 43),
  -- Rhydon - Poison Jab - TM083
  (112, 11200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Rhydon - Stomping Tantrum - TM084
  (112, 11200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Rhydon - Rest - TM085
  (112, 11200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Rhydon - Rock Slide - TM086
  (112, 11200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Rhydon - Swords Dance - TM088
  (112, 11200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Rhydon - Body Press - TM089
  (112, 11200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 49),
  -- Rhydon - Substitute - TM103
  (112, 11200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Rhydon - Iron Defense - TM104
  (112, 11200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 51),
  -- Rhydon - Drill Run - TM106
  (112, 11200, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 52),
  -- Rhydon - Crunch - TM108
  (112, 11200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Rhydon - Dragon Pulse - TM115
  (112, 11200, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 54),
  -- Rhydon - Stealth Rock - TM116
  (112, 11200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 55),
  -- Rhydon - Heavy Slam - TM121
  (112, 11200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 56),
  -- Rhydon - Surf - TM123
  (112, 11200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 57),
  -- Rhydon - Flamethrower - TM125
  (112, 11200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 58),
  -- Rhydon - Thunderbolt - TM126
  (112, 11200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 59),
  -- Rhydon - Helping Hand - TM130
  (112, 11200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 60),
  -- Rhydon - Earth Power - TM133
  (112, 11200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 61),
  -- Rhydon - Reversal - TM134
  (112, 11200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 62),
  -- Rhydon - Ice Beam - TM135
  (112, 11200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 63),
  -- Rhydon - Fire Blast - TM141
  (112, 11200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 64),
  -- Rhydon - Hydro Pump - TM142
  (112, 11200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 65),
  -- Rhydon - Blizzard - TM143
  (112, 11200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 66),
  -- Rhydon - Earthquake - TM149
  (112, 11200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 67),
  -- Rhydon - Stone Edge - TM150
  (112, 11200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 68),
  -- Rhydon - Giga Impact - TM152
  (112, 11200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 69),
  -- Rhydon - Outrage - TM156
  (112, 11200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 70),
  -- Rhydon - Focus Blast - TM158
  (112, 11200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 71),
  -- Rhydon - Hyper Beam - TM163
  (112, 11200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 72),
  -- Rhydon - Thunder - TM166
  (112, 11200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 73),
  -- Rhydon - Tera Blast - TM171
  (112, 11200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Rhydon - Counter - Egg
  (112, 11200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Rhydon - Curse - Egg
  (112, 11200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Rhydon - Metal Burst - Egg
  (112, 11200, 368, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Rhydon - Rock Polish - Egg
  (112, 11200, 397, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Rhydon - Dragon Rush - Egg
  (112, 11200, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Rhydon - Guard Split - Egg
  (112, 11200, 470, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Rhydon - Hammer Arm - Evolution
  (112, 11200, 359, 23, NULL, 7, NULL, NULL, NULL, NULL, 81),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Defense Curl - Level 1
  (113, 11300, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Sweet Kiss - Level 1
  (113, 11300, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chansey - Charm - Level 1
  (113, 11300, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chansey - Covet - Level 1
  (113, 11300, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chansey - Copycat - Level 1
  (113, 11300, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Chansey - Disarming Voice - Level 1
  (113, 11300, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Chansey - Tail Whip - Level 4
  (113, 11300, 39, 23, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Chansey - Echoed Voice - Level 8
  (113, 11300, 497, 23, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Chansey - Life Dew - Level 12
  (113, 11300, 791, 23, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Chansey - Sing - Level 16
  (113, 11300, 47, 23, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Chansey - Fling - Level 20
  (113, 11300, 374, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Chansey - Take Down - Level 24
  (113, 11300, 36, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Chansey - Heal Pulse - Level 28
  (113, 11300, 505, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Chansey - Helping Hand - Level 32
  (113, 11300, 270, 23, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Chansey - Light Screen - Level 36
  (113, 11300, 113, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Chansey - Double-Edge - Level 40
  (113, 11300, 38, 23, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Chansey - Soft-Boiled - Level 44
  (113, 11300, 135, 23, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Chansey - Last Resort - Level 48
  (113, 11300, 387, 23, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Chansey - Healing Wish - Level 52
  (113, 11300, 361, 23, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Chansey - Take Down - TM001
  (113, 11300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Chansey - Charm - TM002
  (113, 11300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Chansey - Protect - TM007
  (113, 11300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Chansey - Water Pulse - TM011
  (113, 11300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Chansey - Thief - TM018
  (113, 11300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Chansey - Disarming Voice - TM019
  (113, 11300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 26),
  -- Chansey - Trailblaze - TM020
  (113, 11300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 27),
  -- Chansey - Chilling Water - TM022
  (113, 11300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 28),
  -- Chansey - Facade - TM025
  (113, 11300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 29),
  -- Chansey - Bulldoze - TM028
  (113, 11300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 30),
  -- Chansey - Swift - TM032
  (113, 11300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Chansey - Icy Wind - TM034
  (113, 11300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 32),
  -- Chansey - Rock Tomb - TM036
  (113, 11300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 33),
  -- Chansey - Stored Power - TM041
  (113, 11300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 34),
  -- Chansey - Fling - TM043
  (113, 11300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Chansey - Endure - TM047
  (113, 11300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Chansey - Sunny Day - TM049
  (113, 11300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Chansey - Rain Dance - TM050
  (113, 11300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Chansey - Sandstorm - TM051
  (113, 11300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 39),
  -- Chansey - Snowscape - TM052
  (113, 11300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 40),
  -- Chansey - Brick Break - TM058
  (113, 11300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 41),
  -- Chansey - Zen Headbutt - TM059
  (113, 11300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 42),
  -- Chansey - Body Slam - TM066
  (113, 11300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Chansey - Fire Punch - TM067
  (113, 11300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 44),
  -- Chansey - Thunder Punch - TM068
  (113, 11300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 45),
  -- Chansey - Ice Punch - TM069
  (113, 11300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 46),
  -- Chansey - Sleep Talk - TM070
  (113, 11300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 47),
  -- Chansey - Drain Punch - TM073
  (113, 11300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 48),
  -- Chansey - Light Screen - TM075
  (113, 11300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 49),
  -- Chansey - Dazzling Gleam - TM079
  (113, 11300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 50),
  -- Chansey - Metronome - TM080
  (113, 11300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 51),
  -- Chansey - Grass Knot - TM081
  (113, 11300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 52),
  -- Chansey - Thunder Wave - TM082
  (113, 11300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 53),
  -- Chansey - Stomping Tantrum - TM084
  (113, 11300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 54),
  -- Chansey - Rest - TM085
  (113, 11300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Chansey - Rock Slide - TM086
  (113, 11300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Chansey - Skill Swap - TM098
  (113, 11300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 57),
  -- Chansey - Substitute - TM103
  (113, 11300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 58),
  -- Chansey - Shadow Ball - TM114
  (113, 11300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 59),
  -- Chansey - Stealth Rock - TM116
  (113, 11300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 60),
  -- Chansey - Hyper Voice - TM117
  (113, 11300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 61),
  -- Chansey - Psychic - TM120
  (113, 11300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 62),
  -- Chansey - Flamethrower - TM125
  (113, 11300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 63),
  -- Chansey - Thunderbolt - TM126
  (113, 11300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 64),
  -- Chansey - Calm Mind - TM129
  (113, 11300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 65),
  -- Chansey - Helping Hand - TM130
  (113, 11300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 66),
  -- Chansey - Ice Beam - TM135
  (113, 11300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 67),
  -- Chansey - Electric Terrain - TM136
  (113, 11300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 68),
  -- Chansey - Fire Blast - TM141
  (113, 11300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 69),
  -- Chansey - Blizzard - TM143
  (113, 11300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 70),
  -- Chansey - Wild Charge - TM147
  (113, 11300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 71),
  -- Chansey - Earthquake - TM149
  (113, 11300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 72),
  -- Chansey - Giga Impact - TM152
  (113, 11300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 73),
  -- Chansey - Focus Blast - TM158
  (113, 11300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 74),
  -- Chansey - Hyper Beam - TM163
  (113, 11300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 75),
  -- Chansey - Thunder - TM166
  (113, 11300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 76),
  -- Chansey - Solar Beam - TM168
  (113, 11300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 77),
  -- Chansey - Tera Blast - TM171
  (113, 11300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 78),
  -- Chansey - Seismic Toss - Egg
  (113, 11300, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Chansey - Heal Bell - Egg
  (113, 11300, 215, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Chansey - Present - Egg
  (113, 11300, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Chansey - Gravity - Egg
  (113, 11300, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Horsea - Leer - Level 1
  (116, 11600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Water Gun - Level 1
  (116, 11600, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Horsea - Smokescreen - Level 5
  (116, 11600, 108, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Horsea - Twister - Level 10
  (116, 11600, 239, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Horsea - Focus Energy - Level 15
  (116, 11600, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Horsea - Dragon Breath - Level 20
  (116, 11600, 225, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Horsea - Bubble Beam - Level 25
  (116, 11600, 61, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Horsea - Agility - Level 30
  (116, 11600, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Horsea - Water Pulse - Level 35
  (116, 11600, 352, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Horsea - Dragon Pulse - Level 40
  (116, 11600, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Horsea - Hydro Pump - Level 45
  (116, 11600, 56, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Horsea - Dragon Dance - Level 50
  (116, 11600, 349, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Horsea - Rain Dance - Level 55
  (116, 11600, 240, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Horsea - Agility - TM004
  (116, 11600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Horsea - Protect - TM007
  (116, 11600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Horsea - Water Pulse - TM011
  (116, 11600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Horsea - Chilling Water - TM022
  (116, 11600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Horsea - Facade - TM025
  (116, 11600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Horsea - Swift - TM032
  (116, 11600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 19),
  -- Horsea - Icy Wind - TM034
  (116, 11600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Horsea - Endure - TM047
  (116, 11600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Horsea - Rain Dance - TM050
  (116, 11600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Horsea - Sleep Talk - TM070
  (116, 11600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Horsea - Waterfall - TM077
  (116, 11600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 24),
  -- Horsea - Rest - TM085
  (116, 11600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Horsea - Flash Cannon - TM093
  (116, 11600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 26),
  -- Horsea - Dragon Dance - TM100
  (116, 11600, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 27),
  -- Horsea - Substitute - TM103
  (116, 11600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Horsea - Liquidation - TM110
  (116, 11600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 29),
  -- Horsea - Dragon Pulse - TM115
  (116, 11600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 30),
  -- Horsea - Surf - TM123
  (116, 11600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 31),
  -- Horsea - Ice Beam - TM135
  (116, 11600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 32),
  -- Horsea - Hydro Pump - TM142
  (116, 11600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 33),
  -- Horsea - Blizzard - TM143
  (116, 11600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 34),
  -- Horsea - Outrage - TM156
  (116, 11600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 35),
  -- Horsea - Tera Blast - TM171
  (116, 11600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Horsea - Disable - Egg
  (116, 11600, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Horsea - Aurora Beam - Egg
  (116, 11600, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Horsea - Splash - Egg
  (116, 11600, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Horsea - Flail - Egg
  (116, 11600, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Horsea - Clear Smog - Egg
  (116, 11600, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Twister - Level 1
  (117, 11700, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Focus Energy - Level 15
  (117, 11700, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Seadra - Dragon Breath - Level 20
  (117, 11700, 225, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Seadra - Bubble Beam - Level 25
  (117, 11700, 61, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Seadra - Agility - Level 30
  (117, 11700, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Seadra - Water Pulse - Level 37
  (117, 11700, 352, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seadra - Dragon Pulse - Level 44
  (117, 11700, 406, 23, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Seadra - Hydro Pump - Level 51
  (117, 11700, 56, 23, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Seadra - Dragon Dance - Level 58
  (117, 11700, 349, 23, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Seadra - Rain Dance - Level 65
  (117, 11700, 240, 23, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Seadra - Agility - TM004
  (117, 11700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Seadra - Scary Face - TM006
  (117, 11700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Seadra - Protect - TM007
  (117, 11700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Seadra - Water Pulse - TM011
  (117, 11700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Seadra - Chilling Water - TM022
  (117, 11700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Seadra - Facade - TM025
  (117, 11700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Seadra - Swift - TM032
  (117, 11700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Seadra - Icy Wind - TM034
  (117, 11700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Seadra - Endure - TM047
  (117, 11700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Seadra - Rain Dance - TM050
  (117, 11700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Seadra - Snowscape - TM052
  (117, 11700, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 24),
  -- Seadra - Sleep Talk - TM070
  (117, 11700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Seadra - Waterfall - TM077
  (117, 11700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 26),
  -- Seadra - Rest - TM085
  (117, 11700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Seadra - Flash Cannon - TM093
  (117, 11700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 28),
  -- Seadra - Dragon Dance - TM100
  (117, 11700, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 29),
  -- Seadra - Substitute - TM103
  (117, 11700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Seadra - Liquidation - TM110
  (117, 11700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 31),
  -- Seadra - Dragon Pulse - TM115
  (117, 11700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 32),
  -- Seadra - Surf - TM123
  (117, 11700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 33),
  -- Seadra - Ice Beam - TM135
  (117, 11700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 34),
  -- Seadra - Hydro Pump - TM142
  (117, 11700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 35),
  -- Seadra - Blizzard - TM143
  (117, 11700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 36),
  -- Seadra - Giga Impact - TM152
  (117, 11700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 37),
  -- Seadra - Outrage - TM156
  (117, 11700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 38),
  -- Seadra - Hyper Beam - TM163
  (117, 11700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 39),
  -- Seadra - Tera Blast - TM171
  (117, 11700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Seadra - Disable - Egg
  (117, 11700, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seadra - Aurora Beam - Egg
  (117, 11700, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seadra - Splash - Egg
  (117, 11700, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seadra - Flail - Egg
  (117, 11700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seadra - Clear Smog - Egg
  (117, 11700, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Fury Cutter - Level 4
  (123, 12300, 210, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scyther - False Swipe - Level 8
  (123, 12300, 206, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scyther - Wing Attack - Level 12
  (123, 12300, 17, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scyther - Double Team - Level 16
  (123, 12300, 104, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scyther - Double Hit - Level 20
  (123, 12300, 458, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scyther - Slash - Level 24
  (123, 12300, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scyther - Focus Energy - Level 28
  (123, 12300, 116, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scyther - Agility - Level 32
  (123, 12300, 97, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scyther - Air Slash - Level 36
  (123, 12300, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scyther - X-Scissor - Level 40
  (123, 12300, 404, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scyther - Swords Dance - Level 44
  (123, 12300, 14, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scyther - Take Down - TM001
  (123, 12300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Scyther - Agility - TM004
  (123, 12300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Scyther - Scary Face - TM006
  (123, 12300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Scyther - Protect - TM007
  (123, 12300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Scyther - Acrobatics - TM014
  (123, 12300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Scyther - Struggle Bug - TM015
  (123, 12300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 19),
  -- Scyther - Thief - TM018
  (123, 12300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Scyther - Trailblaze - TM020
  (123, 12300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Scyther - Pounce - TM021
  (123, 12300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Scyther - Facade - TM025
  (123, 12300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Scyther - Aerial Ace - TM027
  (123, 12300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Scyther - Swift - TM032
  (123, 12300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Scyther - Air Cutter - TM040
  (123, 12300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Scyther - Endure - TM047
  (123, 12300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Scyther - Sunny Day - TM049
  (123, 12300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Scyther - Rain Dance - TM050
  (123, 12300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Scyther - False Swipe - TM057
  (123, 12300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 30),
  -- Scyther - Brick Break - TM058
  (123, 12300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Scyther - U-turn - TM060
  (123, 12300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Scyther - Air Slash - TM065
  (123, 12300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Scyther - Sleep Talk - TM070
  (123, 12300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Scyther - Light Screen - TM075
  (123, 12300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Scyther - Rest - TM085
  (123, 12300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Scyther - Swords Dance - TM088
  (123, 12300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Scyther - Substitute - TM103
  (123, 12300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Scyther - X-Scissor - TM105
  (123, 12300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 39),
  -- Scyther - Tailwind - TM113
  (123, 12300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Scyther - Helping Hand - TM130
  (123, 12300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Scyther - Baton Pass - TM132
  (123, 12300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Scyther - Reversal - TM134
  (123, 12300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Scyther - Giga Impact - TM152
  (123, 12300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Scyther - Bug Buzz - TM162
  (123, 12300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 45),
  -- Scyther - Hyper Beam - TM163
  (123, 12300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Scyther - Close Combat - TM167
  (123, 12300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 47),
  -- Scyther - Tera Blast - TM171
  (123, 12300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Scyther - Counter - Egg
  (123, 12300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Scyther - Feint - Egg
  (123, 12300, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Scyther - Night Slash - Egg
  (123, 12300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Scyther - Defog - Egg
  (123, 12300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scyther - Quick Guard - Egg
  (123, 12300, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Charge - Level 1
  (125, 12500, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electabuzz - Swift - Level 12
  (125, 12500, 129, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electabuzz - Shock Wave - Level 16
  (125, 12500, 351, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electabuzz - Thunder Wave - Level 20
  (125, 12500, 86, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electabuzz - Screech - Level 24
  (125, 12500, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electabuzz - Thunder Punch - Level 28
  (125, 12500, 9, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electabuzz - Discharge - Level 34
  (125, 12500, 435, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Electabuzz - Low Kick - Level 40
  (125, 12500, 67, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Electabuzz - Thunderbolt - Level 46
  (125, 12500, 85, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Electabuzz - Light Screen - Level 52
  (125, 12500, 113, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Electabuzz - Thunder - Level 58
  (125, 12500, 87, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Electabuzz - Giga Impact - Level 64
  (125, 12500, 416, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Electabuzz - Take Down - TM001
  (125, 12500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Electabuzz - Protect - TM007
  (125, 12500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Electabuzz - Low Kick - TM012
  (125, 12500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Electabuzz - Thief - TM018
  (125, 12500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Electabuzz - Trailblaze - TM020
  (125, 12500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Electabuzz - Charge Beam - TM023
  (125, 12500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Electabuzz - Facade - TM025
  (125, 12500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Electabuzz - Swift - TM032
  (125, 12500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Electabuzz - Low Sweep - TM039
  (125, 12500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 24),
  -- Electabuzz - Fling - TM043
  (125, 12500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Electabuzz - Endure - TM047
  (125, 12500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Electabuzz - Volt Switch - TM048
  (125, 12500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Electabuzz - Rain Dance - TM050
  (125, 12500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Electabuzz - Brick Break - TM058
  (125, 12500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Electabuzz - Bulk Up - TM064
  (125, 12500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 30),
  -- Electabuzz - Body Slam - TM066
  (125, 12500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Electabuzz - Fire Punch - TM067
  (125, 12500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Electabuzz - Thunder Punch - TM068
  (125, 12500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Electabuzz - Ice Punch - TM069
  (125, 12500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 34),
  -- Electabuzz - Sleep Talk - TM070
  (125, 12500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Electabuzz - Electro Ball - TM072
  (125, 12500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 36),
  -- Electabuzz - Light Screen - TM075
  (125, 12500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Electabuzz - Metronome - TM080
  (125, 12500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 38),
  -- Electabuzz - Thunder Wave - TM082
  (125, 12500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Electabuzz - Rest - TM085
  (125, 12500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Electabuzz - Taunt - TM087
  (125, 12500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Electabuzz - Eerie Impulse - TM096
  (125, 12500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 42),
  -- Electabuzz - Substitute - TM103
  (125, 12500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Electabuzz - Psychic - TM120
  (125, 12500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Electabuzz - Thunderbolt - TM126
  (125, 12500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Electabuzz - Helping Hand - TM130
  (125, 12500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Electabuzz - Electric Terrain - TM136
  (125, 12500, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 47),
  -- Electabuzz - Wild Charge - TM147
  (125, 12500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 48),
  -- Electabuzz - Giga Impact - TM152
  (125, 12500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Electabuzz - Focus Blast - TM158
  (125, 12500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Electabuzz - Hyper Beam - TM163
  (125, 12500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Electabuzz - Thunder - TM166
  (125, 12500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 52),
  -- Electabuzz - Tera Blast - TM171
  (125, 12500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Electabuzz - Dynamic Punch - Egg
  (125, 12500, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electabuzz - Cross Chop - Egg
  (125, 12500, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Electabuzz - Focus Punch - Egg
  (125, 12500, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Electabuzz - Follow Me - Egg
  (125, 12500, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Electabuzz - Hammer Arm - Egg
  (125, 12500, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Electabuzz - Feint - Egg
  (125, 12500, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smokescreen - Level 1
  (126, 12600, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmar - Clear Smog - Level 12
  (126, 12600, 499, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magmar - Flame Wheel - Level 16
  (126, 12600, 172, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmar - Confuse Ray - Level 20
  (126, 12600, 109, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magmar - Scary Face - Level 24
  (126, 12600, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magmar - Fire Punch - Level 28
  (126, 12600, 7, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmar - Lava Plume - Level 34
  (126, 12600, 436, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magmar - Low Kick - Level 40
  (126, 12600, 67, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magmar - Flamethrower - Level 46
  (126, 12600, 53, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magmar - Sunny Day - Level 52
  (126, 12600, 241, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magmar - Fire Blast - Level 58
  (126, 12600, 126, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Magmar - Hyper Beam - Level 64
  (126, 12600, 63, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Magmar - Take Down - TM001
  (126, 12600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Magmar - Scary Face - TM006
  (126, 12600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Magmar - Protect - TM007
  (126, 12600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Magmar - Low Kick - TM012
  (126, 12600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Magmar - Acid Spray - TM013
  (126, 12600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Magmar - Confuse Ray - TM017
  (126, 12600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Magmar - Thief - TM018
  (126, 12600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Magmar - Fire Spin - TM024
  (126, 12600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Magmar - Facade - TM025
  (126, 12600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Magmar - Flame Charge - TM038
  (126, 12600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Magmar - Low Sweep - TM039
  (126, 12600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Magmar - Fling - TM043
  (126, 12600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Magmar - Endure - TM047
  (126, 12600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Magmar - Sunny Day - TM049
  (126, 12600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Magmar - Brick Break - TM058
  (126, 12600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Magmar - Body Slam - TM066
  (126, 12600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Magmar - Fire Punch - TM067
  (126, 12600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Magmar - Thunder Punch - TM068
  (126, 12600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Magmar - Sleep Talk - TM070
  (126, 12600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Magmar - Metronome - TM080
  (126, 12600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 35),
  -- Magmar - Poison Jab - TM083
  (126, 12600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Magmar - Rest - TM085
  (126, 12600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Magmar - Taunt - TM087
  (126, 12600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Magmar - Substitute - TM103
  (126, 12600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Magmar - Will-O-Wisp - TM107
  (126, 12600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Magmar - Heat Wave - TM118
  (126, 12600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 41),
  -- Magmar - Psychic - TM120
  (126, 12600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Magmar - Flamethrower - TM125
  (126, 12600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Magmar - Helping Hand - TM130
  (126, 12600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Magmar - Fire Blast - TM141
  (126, 12600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Magmar - Giga Impact - TM152
  (126, 12600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Magmar - Overheat - TM157
  (126, 12600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 47),
  -- Magmar - Focus Blast - TM158
  (126, 12600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 48),
  -- Magmar - Hyper Beam - TM163
  (126, 12600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Magmar - Flare Blitz - TM165
  (126, 12600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 50),
  -- Magmar - Tera Blast - TM171
  (126, 12600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Magmar - Mach Punch - Egg
  (126, 12600, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magmar - Belly Drum - Egg
  (126, 12600, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Magmar - Dynamic Punch - Egg
  (126, 12600, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magmar - Cross Chop - Egg
  (126, 12600, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magmar - Follow Me - Egg
  (126, 12600, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magmar - Belch - Egg
  (126, 12600, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 1
  (128, 12800, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tauros - Work Up - Level 5
  (128, 12800, 526, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros - Payback - Level 10
  (128, 12800, 371, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tauros - Assurance - Level 15
  (128, 12800, 372, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tauros - Horn Attack - Level 20
  (128, 12800, 30, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tauros - Scary Face - Level 25
  (128, 12800, 184, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tauros - Zen Headbutt - Level 30
  (128, 12800, 428, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tauros - Raging Bull - Level 35
  (128, 12800, 873, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tauros - Rest - Level 40
  (128, 12800, 156, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tauros - Swagger - Level 45
  (128, 12800, 207, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tauros - Thrash - Level 50
  (128, 12800, 37, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tauros - Double-Edge - Level 55
  (128, 12800, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros - Giga Impact - Level 60
  (128, 12800, 416, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tauros - Take Down - TM001
  (128, 12800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tauros - Scary Face - TM006
  (128, 12800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Tauros - Protect - TM007
  (128, 12800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tauros - Thief - TM018
  (128, 12800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Tauros - Trailblaze - TM020
  (128, 12800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Tauros - Facade - TM025
  (128, 12800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Tauros - Bulldoze - TM028
  (128, 12800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Tauros - Icy Wind - TM034
  (128, 12800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Tauros - Rock Tomb - TM036
  (128, 12800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Tauros - Endure - TM047
  (128, 12800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Tauros - Sunny Day - TM049
  (128, 12800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Tauros - Rain Dance - TM050
  (128, 12800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Tauros - Sandstorm - TM051
  (128, 12800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Tauros - Smart Strike - TM053
  (128, 12800, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 28),
  -- Tauros - Dig - TM055
  (128, 12800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Tauros - Zen Headbutt - TM059
  (128, 12800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Tauros - Body Slam - TM066
  (128, 12800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Tauros - Sleep Talk - TM070
  (128, 12800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Tauros - Stomping Tantrum - TM084
  (128, 12800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Tauros - Rest - TM085
  (128, 12800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Tauros - Rock Slide - TM086
  (128, 12800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Tauros - Iron Head - TM099
  (128, 12800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Tauros - Substitute - TM103
  (128, 12800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Tauros - Shadow Ball - TM114
  (128, 12800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 38),
  -- Tauros - Surf - TM123
  (128, 12800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Tauros - Flamethrower - TM125
  (128, 12800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 40),
  -- Tauros - Thunderbolt - TM126
  (128, 12800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Tauros - Helping Hand - TM130
  (128, 12800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Tauros - Reversal - TM134
  (128, 12800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Tauros - Ice Beam - TM135
  (128, 12800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 44),
  -- Tauros - Fire Blast - TM141
  (128, 12800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Tauros - Blizzard - TM143
  (128, 12800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 46),
  -- Tauros - Wild Charge - TM147
  (128, 12800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Tauros - Earthquake - TM149
  (128, 12800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Tauros - Stone Edge - TM150
  (128, 12800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Tauros - Giga Impact - TM152
  (128, 12800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Tauros - Outrage - TM156
  (128, 12800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Tauros - Hyper Beam - TM163
  (128, 12800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Tauros - Thunder - TM166
  (128, 12800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 53),
  -- Tauros - Close Combat - TM167
  (128, 12800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Tauros - Solar Beam - TM168
  (128, 12800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Tauros - Tera Blast - TM171
  (128, 12800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Tauros - Curse - Egg
  (128, 12800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tauros - Endeavor - Egg
  (128, 12800, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tauros (Paldean Tauros (Combat Breed)) - Tackle - Level 1
  (128, 12801, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros (Paldean Tauros (Combat Breed)) - Tail Whip - Level 1
  (128, 12801, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tauros (Paldean Tauros (Combat Breed)) - Work Up - Level 5
  (128, 12801, 526, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros (Paldean Tauros (Combat Breed)) - Double Kick - Level 10
  (128, 12801, 24, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tauros (Paldean Tauros (Combat Breed)) - Assurance - Level 15
  (128, 12801, 372, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tauros (Paldean Tauros (Combat Breed)) - Headbutt - Level 20
  (128, 12801, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tauros (Paldean Tauros (Combat Breed)) - Scary Face - Level 25
  (128, 12801, 184, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tauros (Paldean Tauros (Combat Breed)) - Zen Headbutt - Level 30
  (128, 12801, 428, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tauros (Paldean Tauros (Combat Breed)) - Raging Bull - Level 35
  (128, 12801, 873, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tauros (Paldean Tauros (Combat Breed)) - Rest - Level 40
  (128, 12801, 156, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tauros (Paldean Tauros (Combat Breed)) - Swagger - Level 45
  (128, 12801, 207, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tauros (Paldean Tauros (Combat Breed)) - Thrash - Level 50
  (128, 12801, 37, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tauros (Paldean Tauros (Combat Breed)) - Double-Edge - Level 55
  (128, 12801, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros (Paldean Tauros (Combat Breed)) - Close Combat - Level 60
  (128, 12801, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tauros (Paldean Tauros (Combat Breed)) - Take Down - TM001
  (128, 12801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tauros (Paldean Tauros (Combat Breed)) - Scary Face - TM006
  (128, 12801, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Tauros (Paldean Tauros (Combat Breed)) - Protect - TM007
  (128, 12801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tauros (Paldean Tauros (Combat Breed)) - Thief - TM018
  (128, 12801, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Tauros (Paldean Tauros (Combat Breed)) - Trailblaze - TM020
  (128, 12801, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Tauros (Paldean Tauros (Combat Breed)) - Facade - TM025
  (128, 12801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Tauros (Paldean Tauros (Combat Breed)) - Bulldoze - TM028
  (128, 12801, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Tauros (Paldean Tauros (Combat Breed)) - Rock Tomb - TM036
  (128, 12801, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Tauros (Paldean Tauros (Combat Breed)) - Endure - TM047
  (128, 12801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Tauros (Paldean Tauros (Combat Breed)) - Sunny Day - TM049
  (128, 12801, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Tauros (Paldean Tauros (Combat Breed)) - Rain Dance - TM050
  (128, 12801, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Tauros (Paldean Tauros (Combat Breed)) - Sandstorm - TM051
  (128, 12801, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Tauros (Paldean Tauros (Combat Breed)) - Smart Strike - TM053
  (128, 12801, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 27),
  -- Tauros (Paldean Tauros (Combat Breed)) - Dig - TM055
  (128, 12801, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Tauros (Paldean Tauros (Combat Breed)) - Zen Headbutt - TM059
  (128, 12801, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Tauros (Paldean Tauros (Combat Breed)) - Bulk Up - TM064
  (128, 12801, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 30),
  -- Tauros (Paldean Tauros (Combat Breed)) - Body Slam - TM066
  (128, 12801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Tauros (Paldean Tauros (Combat Breed)) - Sleep Talk - TM070
  (128, 12801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Tauros (Paldean Tauros (Combat Breed)) - Stomping Tantrum - TM084
  (128, 12801, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Tauros (Paldean Tauros (Combat Breed)) - Rest - TM085
  (128, 12801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Tauros (Paldean Tauros (Combat Breed)) - Rock Slide - TM086
  (128, 12801, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Tauros (Paldean Tauros (Combat Breed)) - Body Press - TM089
  (128, 12801, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Tauros (Paldean Tauros (Combat Breed)) - Iron Head - TM099
  (128, 12801, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Tauros (Paldean Tauros (Combat Breed)) - Substitute - TM103
  (128, 12801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Tauros (Paldean Tauros (Combat Breed)) - Drill Run - TM106
  (128, 12801, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 39),
  -- Tauros (Paldean Tauros (Combat Breed)) - Surf - TM123
  (128, 12801, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 40),
  -- Tauros (Paldean Tauros (Combat Breed)) - Reversal - TM134
  (128, 12801, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 41),
  -- Tauros (Paldean Tauros (Combat Breed)) - Wild Charge - TM147
  (128, 12801, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 42),
  -- Tauros (Paldean Tauros (Combat Breed)) - Earthquake - TM149
  (128, 12801, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Tauros (Paldean Tauros (Combat Breed)) - Stone Edge - TM150
  (128, 12801, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Tauros (Paldean Tauros (Combat Breed)) - Giga Impact - TM152
  (128, 12801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Tauros (Paldean Tauros (Combat Breed)) - Outrage - TM156
  (128, 12801, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Tauros (Paldean Tauros (Combat Breed)) - Hyper Beam - TM163
  (128, 12801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Tauros (Paldean Tauros (Combat Breed)) - Close Combat - TM167
  (128, 12801, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 48),
  -- Tauros (Paldean Tauros (Combat Breed)) - Tera Blast - TM171
  (128, 12801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Tauros (Paldean Tauros (Combat Breed)) - Curse - Egg
  (128, 12801, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tauros (Paldean Tauros (Combat Breed)) - Endeavor - Egg
  (128, 12801, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Tackle - Level 1
  (128, 12802, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Tail Whip - Level 1
  (128, 12802, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Work Up - Level 5
  (128, 12802, 526, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Double Kick - Level 10
  (128, 12802, 24, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Flame Charge - Level 15
  (128, 12802, 488, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Headbutt - Level 20
  (128, 12802, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Scary Face - Level 25
  (128, 12802, 184, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Zen Headbutt - Level 30
  (128, 12802, 428, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Raging Bull - Level 35
  (128, 12802, 873, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Rest - Level 40
  (128, 12802, 156, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Swagger - Level 45
  (128, 12802, 207, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Thrash - Level 50
  (128, 12802, 37, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Flare Blitz - Level 55
  (128, 12802, 394, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Close Combat - Level 60
  (128, 12802, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Take Down - TM001
  (128, 12802, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Scary Face - TM006
  (128, 12802, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Protect - TM007
  (128, 12802, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Thief - TM018
  (128, 12802, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Trailblaze - TM020
  (128, 12802, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Fire Spin - TM024
  (128, 12802, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Facade - TM025
  (128, 12802, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Bulldoze - TM028
  (128, 12802, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Rock Tomb - TM036
  (128, 12802, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Flame Charge - TM038
  (128, 12802, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Endure - TM047
  (128, 12802, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Sunny Day - TM049
  (128, 12802, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Rain Dance - TM050
  (128, 12802, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Sandstorm - TM051
  (128, 12802, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Smart Strike - TM053
  (128, 12802, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 29),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Dig - TM055
  (128, 12802, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Zen Headbutt - TM059
  (128, 12802, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Bulk Up - TM064
  (128, 12802, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Body Slam - TM066
  (128, 12802, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Sleep Talk - TM070
  (128, 12802, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Stomping Tantrum - TM084
  (128, 12802, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Rest - TM085
  (128, 12802, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Rock Slide - TM086
  (128, 12802, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Body Press - TM089
  (128, 12802, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Iron Head - TM099
  (128, 12802, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Substitute - TM103
  (128, 12802, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Drill Run - TM106
  (128, 12802, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 41),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Will-O-Wisp - TM107
  (128, 12802, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Flamethrower - TM125
  (128, 12802, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Reversal - TM134
  (128, 12802, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Fire Blast - TM141
  (128, 12802, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Wild Charge - TM147
  (128, 12802, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Earthquake - TM149
  (128, 12802, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Stone Edge - TM150
  (128, 12802, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Giga Impact - TM152
  (128, 12802, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Outrage - TM156
  (128, 12802, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 50),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Overheat - TM157
  (128, 12802, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Hyper Beam - TM163
  (128, 12802, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Flare Blitz - TM165
  (128, 12802, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Close Combat - TM167
  (128, 12802, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Tera Blast - TM171
  (128, 12802, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Curse - Egg
  (128, 12802, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Endeavor - Egg
  (128, 12802, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Tackle - Level 1
  (128, 12803, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Tail Whip - Level 1
  (128, 12803, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Work Up - Level 5
  (128, 12803, 526, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Double Kick - Level 10
  (128, 12803, 24, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Aqua Jet - Level 15
  (128, 12803, 453, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Headbutt - Level 20
  (128, 12803, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Scary Face - Level 25
  (128, 12803, 184, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Zen Headbutt - Level 30
  (128, 12803, 428, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Raging Bull - Level 35
  (128, 12803, 873, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Rest - Level 40
  (128, 12803, 156, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Swagger - Level 45
  (128, 12803, 207, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Thrash - Level 50
  (128, 12803, 37, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Wave Crash - Level 55
  (128, 12803, 834, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Close Combat - Level 60
  (128, 12803, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Take Down - TM001
  (128, 12803, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Scary Face - TM006
  (128, 12803, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Protect - TM007
  (128, 12803, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Water Pulse - TM011
  (128, 12803, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Thief - TM018
  (128, 12803, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Trailblaze - TM020
  (128, 12803, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Chilling Water - TM022
  (128, 12803, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Facade - TM025
  (128, 12803, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Bulldoze - TM028
  (128, 12803, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Rock Tomb - TM036
  (128, 12803, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Endure - TM047
  (128, 12803, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Rain Dance - TM050
  (128, 12803, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Sandstorm - TM051
  (128, 12803, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Smart Strike - TM053
  (128, 12803, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 28),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Dig - TM055
  (128, 12803, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Zen Headbutt - TM059
  (128, 12803, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Bulk Up - TM064
  (128, 12803, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Body Slam - TM066
  (128, 12803, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Sleep Talk - TM070
  (128, 12803, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Stomping Tantrum - TM084
  (128, 12803, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Rest - TM085
  (128, 12803, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Rock Slide - TM086
  (128, 12803, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Body Press - TM089
  (128, 12803, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Iron Head - TM099
  (128, 12803, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Substitute - TM103
  (128, 12803, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Drill Run - TM106
  (128, 12803, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 40),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Liquidation - TM110
  (128, 12803, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 41),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Surf - TM123
  (128, 12803, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 42),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Reversal - TM134
  (128, 12803, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Hydro Pump - TM142
  (128, 12803, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Wild Charge - TM147
  (128, 12803, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 45),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Earthquake - TM149
  (128, 12803, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Stone Edge - TM150
  (128, 12803, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Giga Impact - TM152
  (128, 12803, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Outrage - TM156
  (128, 12803, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Hyper Beam - TM163
  (128, 12803, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Close Combat - TM167
  (128, 12803, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 51),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Tera Blast - TM171
  (128, 12803, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Curse - Egg
  (128, 12803, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Endeavor - Egg
  (128, 12803, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 23, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 25
  (129, 12900, 175, 23, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Gyarados - Tackle - Level 1
  (130, 13000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Leer - Level 1
  (130, 13000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gyarados - Splash - Level 1
  (130, 13000, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gyarados - Flail - Level 1
  (130, 13000, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gyarados - Twister - Level 1
  (130, 13000, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gyarados - Whirlpool - Level 4
  (130, 13000, 250, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gyarados - Ice Fang - Level 8
  (130, 13000, 423, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Gyarados - Brine - Level 12
  (130, 13000, 362, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gyarados - Scary Face - Level 16
  (130, 13000, 184, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gyarados - Waterfall - Level 21
  (130, 13000, 127, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Gyarados - Crunch - Level 24
  (130, 13000, 242, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gyarados - Rain Dance - Level 28
  (130, 13000, 240, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Gyarados - Aqua Tail - Level 32
  (130, 13000, 401, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Gyarados - Dragon Dance - Level 36
  (130, 13000, 349, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gyarados - Hydro Pump - Level 40
  (130, 13000, 56, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Gyarados - Hurricane - Level 44
  (130, 13000, 542, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Gyarados - Thrash - Level 48
  (130, 13000, 37, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Gyarados - Hyper Beam - Level 52
  (130, 13000, 63, 23, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Gyarados - Take Down - TM001
  (130, 13000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Gyarados - Scary Face - TM006
  (130, 13000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Gyarados - Protect - TM007
  (130, 13000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Gyarados - Ice Fang - TM010
  (130, 13000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Gyarados - Water Pulse - TM011
  (130, 13000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Gyarados - Chilling Water - TM022
  (130, 13000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Gyarados - Facade - TM025
  (130, 13000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Gyarados - Bulldoze - TM028
  (130, 13000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Gyarados - Icy Wind - TM034
  (130, 13000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Gyarados - Dragon Tail - TM044
  (130, 13000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Gyarados - Avalanche - TM046
  (130, 13000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Gyarados - Endure - TM047
  (130, 13000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Gyarados - Sunny Day - TM049
  (130, 13000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Gyarados - Rain Dance - TM050
  (130, 13000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Gyarados - Sandstorm - TM051
  (130, 13000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Gyarados - Body Slam - TM066
  (130, 13000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Gyarados - Sleep Talk - TM070
  (130, 13000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Gyarados - Waterfall - TM077
  (130, 13000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 36),
  -- Gyarados - Thunder Wave - TM082
  (130, 13000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Gyarados - Rest - TM085
  (130, 13000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Gyarados - Taunt - TM087
  (130, 13000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Gyarados - Dark Pulse - TM094
  (130, 13000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Gyarados - Iron Head - TM099
  (130, 13000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Gyarados - Dragon Dance - TM100
  (130, 13000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 42),
  -- Gyarados - Substitute - TM103
  (130, 13000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Gyarados - Crunch - TM108
  (130, 13000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Gyarados - Dragon Pulse - TM115
  (130, 13000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 45),
  -- Gyarados - Surf - TM123
  (130, 13000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 46),
  -- Gyarados - Flamethrower - TM125
  (130, 13000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Gyarados - Thunderbolt - TM126
  (130, 13000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Gyarados - Helping Hand - TM130
  (130, 13000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Gyarados - Ice Beam - TM135
  (130, 13000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Gyarados - Fire Blast - TM141
  (130, 13000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 51),
  -- Gyarados - Hydro Pump - TM142
  (130, 13000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 52),
  -- Gyarados - Blizzard - TM143
  (130, 13000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Gyarados - Earthquake - TM149
  (130, 13000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Gyarados - Stone Edge - TM150
  (130, 13000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 55),
  -- Gyarados - Giga Impact - TM152
  (130, 13000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Gyarados - Outrage - TM156
  (130, 13000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 57),
  -- Gyarados - Hurricane - TM160
  (130, 13000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 58),
  -- Gyarados - Hyper Beam - TM163
  (130, 13000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Gyarados - Thunder - TM166
  (130, 13000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Gyarados - Tera Blast - TM171
  (130, 13000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Gyarados - Bite - Evolution
  (130, 13000, 44, 23, NULL, 7, NULL, NULL, NULL, NULL, 62),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Sing - Level 5
  (131, 13100, 47, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 10
  (131, 13100, 54, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Lapras - Life Dew - Level 15
  (131, 13100, 791, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Lapras - Ice Shard - Level 20
  (131, 13100, 420, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Lapras - Confuse Ray - Level 25
  (131, 13100, 109, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lapras - Water Pulse - Level 30
  (131, 13100, 352, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Lapras - Brine - Level 35
  (131, 13100, 362, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Lapras - Body Slam - Level 40
  (131, 13100, 34, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Lapras - Ice Beam - Level 45
  (131, 13100, 58, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lapras - Rain Dance - Level 50
  (131, 13100, 240, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Lapras - Hydro Pump - Level 55
  (131, 13100, 56, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Lapras - Perish Song - Level 60
  (131, 13100, 195, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Lapras - Sheer Cold - Level 65
  (131, 13100, 329, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Lapras - Take Down - TM001
  (131, 13100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Lapras - Charm - TM002
  (131, 13100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Lapras - Protect - TM007
  (131, 13100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Lapras - Water Pulse - TM011
  (131, 13100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Lapras - Confuse Ray - TM017
  (131, 13100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Lapras - Disarming Voice - TM019
  (131, 13100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Lapras - Chilling Water - TM022
  (131, 13100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Lapras - Facade - TM025
  (131, 13100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Lapras - Bulldoze - TM028
  (131, 13100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Lapras - Icy Wind - TM034
  (131, 13100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Lapras - Avalanche - TM046
  (131, 13100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Lapras - Endure - TM047
  (131, 13100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Lapras - Rain Dance - TM050
  (131, 13100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Lapras - Snowscape - TM052
  (131, 13100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Lapras - Smart Strike - TM053
  (131, 13100, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 30),
  -- Lapras - Zen Headbutt - TM059
  (131, 13100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Lapras - Body Slam - TM066
  (131, 13100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Lapras - Sleep Talk - TM070
  (131, 13100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Lapras - Reflect - TM074
  (131, 13100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Lapras - Waterfall - TM077
  (131, 13100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Lapras - Rest - TM085
  (131, 13100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Lapras - Body Press - TM089
  (131, 13100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Lapras - Iron Head - TM099
  (131, 13100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Lapras - Dragon Dance - TM100
  (131, 13100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 39),
  -- Lapras - Substitute - TM103
  (131, 13100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Lapras - Drill Run - TM106
  (131, 13100, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 41),
  -- Lapras - Liquidation - TM110
  (131, 13100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 42),
  -- Lapras - Dragon Pulse - TM115
  (131, 13100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 43),
  -- Lapras - Hyper Voice - TM117
  (131, 13100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Lapras - Psychic - TM120
  (131, 13100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Lapras - Surf - TM123
  (131, 13100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 46),
  -- Lapras - Thunderbolt - TM126
  (131, 13100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Lapras - Helping Hand - TM130
  (131, 13100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Lapras - Ice Beam - TM135
  (131, 13100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Lapras - Hydro Pump - TM142
  (131, 13100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 50),
  -- Lapras - Blizzard - TM143
  (131, 13100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 51),
  -- Lapras - Earthquake - TM149
  (131, 13100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Lapras - Giga Impact - TM152
  (131, 13100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Lapras - Outrage - TM156
  (131, 13100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 54),
  -- Lapras - Hyper Beam - TM163
  (131, 13100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Lapras - Thunder - TM166
  (131, 13100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Lapras - Tera Blast - TM171
  (131, 13100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Lapras - Horn Drill - Egg
  (131, 13100, 32, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lapras - Fissure - Egg
  (131, 13100, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Lapras - Curse - Egg
  (131, 13100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lapras - Ancient Power - Egg
  (131, 13100, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lapras - Tickle - Egg
  (131, 13100, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lapras - Freeze-Dry - Egg
  (131, 13100, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lapras - Sparkling Aria - Egg
  (131, 13100, 664, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Growl - Level 1
  (133, 13300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Helping Hand - Level 1
  (133, 13300, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eevee - Covet - Level 1
  (133, 13300, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eevee - Sand Attack - Level 5
  (133, 13300, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Eevee - Quick Attack - Level 10
  (133, 13300, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Eevee - Baby-Doll Eyes - Level 15
  (133, 13300, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Eevee - Swift - Level 20
  (133, 13300, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Eevee - Bite - Level 25
  (133, 13300, 44, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Eevee - Copycat - Level 30
  (133, 13300, 383, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Eevee - Baton Pass - Level 35
  (133, 13300, 226, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Eevee - Take Down - Level 40
  (133, 13300, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Eevee - Charm - Level 45
  (133, 13300, 204, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Eevee - Double-Edge - Level 50
  (133, 13300, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Eevee - Last Resort - Level 55
  (133, 13300, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Eevee - Take Down - TM001
  (133, 13300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Eevee - Charm - TM002
  (133, 13300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Eevee - Fake Tears - TM003
  (133, 13300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 19),
  -- Eevee - Mud-Slap - TM005
  (133, 13300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Eevee - Protect - TM007
  (133, 13300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Eevee - Trailblaze - TM020
  (133, 13300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Eevee - Facade - TM025
  (133, 13300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Eevee - Swift - TM032
  (133, 13300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Eevee - Stored Power - TM041
  (133, 13300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Eevee - Endure - TM047
  (133, 13300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Eevee - Sunny Day - TM049
  (133, 13300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Eevee - Rain Dance - TM050
  (133, 13300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Eevee - Dig - TM055
  (133, 13300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Eevee - Body Slam - TM066
  (133, 13300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Eevee - Sleep Talk - TM070
  (133, 13300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Eevee - Rest - TM085
  (133, 13300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Eevee - Substitute - TM103
  (133, 13300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Eevee - Shadow Ball - TM114
  (133, 13300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 34),
  -- Eevee - Hyper Voice - TM117
  (133, 13300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 35),
  -- Eevee - Calm Mind - TM129
  (133, 13300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 36),
  -- Eevee - Helping Hand - TM130
  (133, 13300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Eevee - Baton Pass - TM132
  (133, 13300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Eevee - Tera Blast - TM171
  (133, 13300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Eevee - Double Kick - Egg
  (133, 13300, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Eevee - Curse - Egg
  (133, 13300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Eevee - Flail - Egg
  (133, 13300, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Eevee - Mud-Slap - Egg
  (133, 13300, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Eevee - Detect - Egg
  (133, 13300, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eevee - Wish - Egg
  (133, 13300, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eevee - Yawn - Egg
  (133, 13300, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eevee - Tickle - Egg
  (133, 13300, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Take Down - Level 1
  (134, 13400, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Double-Edge - Level 1
  (134, 13400, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vaporeon - Bite - Level 1
  (134, 13400, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vaporeon - Growl - Level 1
  (134, 13400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vaporeon - Swift - Level 1
  (134, 13400, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vaporeon - Charm - Level 1
  (134, 13400, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Vaporeon - Baton Pass - Level 1
  (134, 13400, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Vaporeon - Helping Hand - Level 1
  (134, 13400, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Vaporeon - Covet - Level 1
  (134, 13400, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Vaporeon - Copycat - Level 1
  (134, 13400, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Vaporeon - Sand Attack - Level 5
  (134, 13400, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Vaporeon - Quick Attack - Level 10
  (134, 13400, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Vaporeon - Baby-Doll Eyes - Level 15
  (134, 13400, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Vaporeon - Haze - Level 20
  (134, 13400, 114, 23, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Vaporeon - Water Pulse - Level 25
  (134, 13400, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Vaporeon - Aurora Beam - Level 30
  (134, 13400, 62, 23, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Vaporeon - Aqua Ring - Level 35
  (134, 13400, 392, 23, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Vaporeon - Muddy Water - Level 40
  (134, 13400, 330, 23, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Vaporeon - Acid Armor - Level 45
  (134, 13400, 151, 23, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Vaporeon - Hydro Pump - Level 50
  (134, 13400, 56, 23, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Vaporeon - Last Resort - Level 55
  (134, 13400, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Vaporeon - Take Down - TM001
  (134, 13400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 24),
  -- Vaporeon - Charm - TM002
  (134, 13400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 25),
  -- Vaporeon - Fake Tears - TM003
  (134, 13400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 26),
  -- Vaporeon - Mud-Slap - TM005
  (134, 13400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 27),
  -- Vaporeon - Protect - TM007
  (134, 13400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Vaporeon - Water Pulse - TM011
  (134, 13400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 29),
  -- Vaporeon - Trailblaze - TM020
  (134, 13400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Vaporeon - Chilling Water - TM022
  (134, 13400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 31),
  -- Vaporeon - Facade - TM025
  (134, 13400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Vaporeon - Swift - TM032
  (134, 13400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Vaporeon - Icy Wind - TM034
  (134, 13400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 34),
  -- Vaporeon - Stored Power - TM041
  (134, 13400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 35),
  -- Vaporeon - Endure - TM047
  (134, 13400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Vaporeon - Sunny Day - TM049
  (134, 13400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Vaporeon - Rain Dance - TM050
  (134, 13400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Vaporeon - Dig - TM055
  (134, 13400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Vaporeon - Body Slam - TM066
  (134, 13400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Vaporeon - Sleep Talk - TM070
  (134, 13400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Vaporeon - Waterfall - TM077
  (134, 13400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 42),
  -- Vaporeon - Rest - TM085
  (134, 13400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Vaporeon - Substitute - TM103
  (134, 13400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Vaporeon - Liquidation - TM110
  (134, 13400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 45),
  -- Vaporeon - Shadow Ball - TM114
  (134, 13400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Vaporeon - Hyper Voice - TM117
  (134, 13400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 47),
  -- Vaporeon - Surf - TM123
  (134, 13400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Vaporeon - Calm Mind - TM129
  (134, 13400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Vaporeon - Helping Hand - TM130
  (134, 13400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Vaporeon - Baton Pass - TM132
  (134, 13400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 51),
  -- Vaporeon - Ice Beam - TM135
  (134, 13400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Vaporeon - Hydro Pump - TM142
  (134, 13400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Vaporeon - Blizzard - TM143
  (134, 13400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Vaporeon - Giga Impact - TM152
  (134, 13400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Vaporeon - Hyper Beam - TM163
  (134, 13400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Vaporeon - Tera Blast - TM171
  (134, 13400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Vaporeon - Double Kick - Egg
  (134, 13400, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Vaporeon - Curse - Egg
  (134, 13400, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Vaporeon - Flail - Egg
  (134, 13400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Vaporeon - Mud-Slap - Egg
  (134, 13400, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Vaporeon - Detect - Egg
  (134, 13400, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Vaporeon - Wish - Egg
  (134, 13400, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Vaporeon - Yawn - Egg
  (134, 13400, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Vaporeon - Tickle - Egg
  (134, 13400, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Vaporeon - Water Gun - Evolution
  (134, 13400, 55, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Take Down - Level 1
  (135, 13500, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Double-Edge - Level 1
  (135, 13500, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jolteon - Bite - Level 1
  (135, 13500, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jolteon - Growl - Level 1
  (135, 13500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jolteon - Swift - Level 1
  (135, 13500, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Jolteon - Charm - Level 1
  (135, 13500, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Jolteon - Baton Pass - Level 1
  (135, 13500, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Jolteon - Helping Hand - Level 1
  (135, 13500, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Jolteon - Covet - Level 1
  (135, 13500, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Jolteon - Copycat - Level 1
  (135, 13500, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Jolteon - Sand Attack - Level 5
  (135, 13500, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Jolteon - Quick Attack - Level 10
  (135, 13500, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Jolteon - Baby-Doll Eyes - Level 15
  (135, 13500, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Jolteon - Thunder Wave - Level 20
  (135, 13500, 86, 23, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Jolteon - Double Kick - Level 25
  (135, 13500, 24, 23, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Jolteon - Thunder Fang - Level 30
  (135, 13500, 422, 23, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Jolteon - Pin Missile - Level 35
  (135, 13500, 42, 23, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Jolteon - Discharge - Level 40
  (135, 13500, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Jolteon - Agility - Level 45
  (135, 13500, 97, 23, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Jolteon - Thunder - Level 50
  (135, 13500, 87, 23, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Jolteon - Last Resort - Level 55
  (135, 13500, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Jolteon - Take Down - TM001
  (135, 13500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 24),
  -- Jolteon - Charm - TM002
  (135, 13500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 25),
  -- Jolteon - Fake Tears - TM003
  (135, 13500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 26),
  -- Jolteon - Agility - TM004
  (135, 13500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 27),
  -- Jolteon - Mud-Slap - TM005
  (135, 13500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 28),
  -- Jolteon - Protect - TM007
  (135, 13500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 29),
  -- Jolteon - Thunder Fang - TM009
  (135, 13500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 30),
  -- Jolteon - Trailblaze - TM020
  (135, 13500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 31),
  -- Jolteon - Facade - TM025
  (135, 13500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Jolteon - Swift - TM032
  (135, 13500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Jolteon - Stored Power - TM041
  (135, 13500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 34),
  -- Jolteon - Endure - TM047
  (135, 13500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Jolteon - Volt Switch - TM048
  (135, 13500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 36),
  -- Jolteon - Sunny Day - TM049
  (135, 13500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Jolteon - Rain Dance - TM050
  (135, 13500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Jolteon - Dig - TM055
  (135, 13500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Jolteon - False Swipe - TM057
  (135, 13500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 40),
  -- Jolteon - Body Slam - TM066
  (135, 13500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Jolteon - Sleep Talk - TM070
  (135, 13500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Jolteon - Electro Ball - TM072
  (135, 13500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 43),
  -- Jolteon - Light Screen - TM075
  (135, 13500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Jolteon - Thunder Wave - TM082
  (135, 13500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Jolteon - Rest - TM085
  (135, 13500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Jolteon - Eerie Impulse - TM096
  (135, 13500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 47),
  -- Jolteon - Substitute - TM103
  (135, 13500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Jolteon - Shadow Ball - TM114
  (135, 13500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Jolteon - Hyper Voice - TM117
  (135, 13500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Jolteon - Thunderbolt - TM126
  (135, 13500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 51),
  -- Jolteon - Calm Mind - TM129
  (135, 13500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 52),
  -- Jolteon - Helping Hand - TM130
  (135, 13500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Jolteon - Baton Pass - TM132
  (135, 13500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Jolteon - Electric Terrain - TM136
  (135, 13500, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 55),
  -- Jolteon - Wild Charge - TM147
  (135, 13500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 56),
  -- Jolteon - Giga Impact - TM152
  (135, 13500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Jolteon - Hyper Beam - TM163
  (135, 13500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Jolteon - Thunder - TM166
  (135, 13500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 59),
  -- Jolteon - Tera Blast - TM171
  (135, 13500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Jolteon - Double Kick - Egg
  (135, 13500, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Jolteon - Curse - Egg
  (135, 13500, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Jolteon - Flail - Egg
  (135, 13500, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Jolteon - Mud-Slap - Egg
  (135, 13500, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Jolteon - Detect - Egg
  (135, 13500, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Jolteon - Wish - Egg
  (135, 13500, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Jolteon - Yawn - Egg
  (135, 13500, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Jolteon - Tickle - Egg
  (135, 13500, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Jolteon - Thunder Shock - Evolution
  (135, 13500, 84, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Take Down - Level 1
  (136, 13600, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Double-Edge - Level 1
  (136, 13600, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flareon - Growl - Level 1
  (136, 13600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flareon - Swift - Level 1
  (136, 13600, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Flareon - Charm - Level 1
  (136, 13600, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Flareon - Baton Pass - Level 1
  (136, 13600, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Flareon - Helping Hand - Level 1
  (136, 13600, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Flareon - Covet - Level 1
  (136, 13600, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Flareon - Copycat - Level 1
  (136, 13600, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Flareon - Sand Attack - Level 5
  (136, 13600, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 12),
  -- Flareon - Quick Attack - Level 10
  (136, 13600, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 13),
  -- Flareon - Baby-Doll Eyes - Level 15
  (136, 13600, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 14),
  -- Flareon - Smog - Level 20
  (136, 13600, 123, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Flareon - Bite - Level 25
  (136, 13600, 44, 23, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Flareon - Fire Fang - Level 30
  (136, 13600, 424, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Flareon - Fire Spin - Level 35
  (136, 13600, 83, 23, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Flareon - Lava Plume - Level 40
  (136, 13600, 436, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Flareon - Scary Face - Level 45
  (136, 13600, 184, 23, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Flareon - Flare Blitz - Level 50
  (136, 13600, 394, 23, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Flareon - Last Resort - Level 55
  (136, 13600, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Flareon - Take Down - TM001
  (136, 13600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Flareon - Charm - TM002
  (136, 13600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Flareon - Fake Tears - TM003
  (136, 13600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 25),
  -- Flareon - Mud-Slap - TM005
  (136, 13600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Flareon - Scary Face - TM006
  (136, 13600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 27),
  -- Flareon - Protect - TM007
  (136, 13600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 28),
  -- Flareon - Fire Fang - TM008
  (136, 13600, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 29),
  -- Flareon - Trailblaze - TM020
  (136, 13600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Flareon - Fire Spin - TM024
  (136, 13600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 31),
  -- Flareon - Facade - TM025
  (136, 13600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Flareon - Swift - TM032
  (136, 13600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Flareon - Flame Charge - TM038
  (136, 13600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 34),
  -- Flareon - Stored Power - TM041
  (136, 13600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 35),
  -- Flareon - Endure - TM047
  (136, 13600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Flareon - Sunny Day - TM049
  (136, 13600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Flareon - Rain Dance - TM050
  (136, 13600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Flareon - Dig - TM055
  (136, 13600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Flareon - Body Slam - TM066
  (136, 13600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Flareon - Sleep Talk - TM070
  (136, 13600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Flareon - Rest - TM085
  (136, 13600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Flareon - Substitute - TM103
  (136, 13600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Flareon - Will-O-Wisp - TM107
  (136, 13600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Flareon - Shadow Ball - TM114
  (136, 13600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Flareon - Hyper Voice - TM117
  (136, 13600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Flareon - Heat Wave - TM118
  (136, 13600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 47),
  -- Flareon - Flamethrower - TM125
  (136, 13600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 48),
  -- Flareon - Calm Mind - TM129
  (136, 13600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Flareon - Helping Hand - TM130
  (136, 13600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Flareon - Baton Pass - TM132
  (136, 13600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 51),
  -- Flareon - Fire Blast - TM141
  (136, 13600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Flareon - Giga Impact - TM152
  (136, 13600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Flareon - Overheat - TM157
  (136, 13600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 54),
  -- Flareon - Hyper Beam - TM163
  (136, 13600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Flareon - Flare Blitz - TM165
  (136, 13600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 56),
  -- Flareon - Tera Blast - TM171
  (136, 13600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Flareon - Double Kick - Egg
  (136, 13600, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Flareon - Curse - Egg
  (136, 13600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Flareon - Flail - Egg
  (136, 13600, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Flareon - Mud-Slap - Egg
  (136, 13600, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Flareon - Detect - Egg
  (136, 13600, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Flareon - Wish - Egg
  (136, 13600, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Flareon - Yawn - Egg
  (136, 13600, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Flareon - Tickle - Egg
  (136, 13600, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Flareon - Ember - Evolution
  (136, 13600, 52, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Recycle - Level 5
  (137, 13700, 278, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Porygon - Magnet Rise - Level 10
  (137, 13700, 393, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Porygon - Thunder Shock - Level 15
  (137, 13700, 84, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Porygon - Psybeam - Level 20
  (137, 13700, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon - Conversion 2 - Level 25
  (137, 13700, 176, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Porygon - Agility - Level 30
  (137, 13700, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Porygon - Recover - Level 35
  (137, 13700, 105, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Porygon - Tri Attack - Level 45
  (137, 13700, 161, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Porygon - Double-Edge - Level 50
  (137, 13700, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Porygon - Lock-On - Level 55
  (137, 13700, 199, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Porygon - Zap Cannon - Level 60
  (137, 13700, 192, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Porygon - Take Down - TM001
  (137, 13700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Porygon - Agility - TM004
  (137, 13700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Porygon - Protect - TM007
  (137, 13700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Porygon - Psybeam - TM016
  (137, 13700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Porygon - Thief - TM018
  (137, 13700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Porygon - Charge Beam - TM023
  (137, 13700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Porygon - Facade - TM025
  (137, 13700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Porygon - Swift - TM032
  (137, 13700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Porygon - Icy Wind - TM034
  (137, 13700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Porygon - Endure - TM047
  (137, 13700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Porygon - Sunny Day - TM049
  (137, 13700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Porygon - Rain Dance - TM050
  (137, 13700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Porygon - Psyshock - TM054
  (137, 13700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 27),
  -- Porygon - Zen Headbutt - TM059
  (137, 13700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Porygon - Foul Play - TM062
  (137, 13700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Porygon - Sleep Talk - TM070
  (137, 13700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Porygon - Thunder Wave - TM082
  (137, 13700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Porygon - Rest - TM085
  (137, 13700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Porygon - Eerie Impulse - TM096
  (137, 13700, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 33),
  -- Porygon - Substitute - TM103
  (137, 13700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Porygon - Trick - TM109
  (137, 13700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 35),
  -- Porygon - Shadow Ball - TM114
  (137, 13700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 36),
  -- Porygon - Psychic - TM120
  (137, 13700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Porygon - Thunderbolt - TM126
  (137, 13700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 38),
  -- Porygon - Ice Beam - TM135
  (137, 13700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Porygon - Blizzard - TM143
  (137, 13700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Porygon - Giga Impact - TM152
  (137, 13700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Porygon - Trick Room - TM161
  (137, 13700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 42),
  -- Porygon - Hyper Beam - TM163
  (137, 13700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Porygon - Thunder - TM166
  (137, 13700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 44),
  -- Porygon - Solar Beam - TM168
  (137, 13700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Porygon - Tera Blast - TM171
  (137, 13700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Screech - Level 1
  (143, 14300, 103, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorlax - Defense Curl - Level 1
  (143, 14300, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snorlax - Metronome - Level 1
  (143, 14300, 118, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Snorlax - Lick - Level 1
  (143, 14300, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Snorlax - Flail - Level 1
  (143, 14300, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Snorlax - Stockpile - Level 1
  (143, 14300, 254, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Snorlax - Swallow - Level 1
  (143, 14300, 256, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Snorlax - Recycle - Level 1
  (143, 14300, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Snorlax - Block - Level 1
  (143, 14300, 335, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Snorlax - Covet - Level 1
  (143, 14300, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Snorlax - Fling - Level 1
  (143, 14300, 374, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Snorlax - Last Resort - Level 1
  (143, 14300, 387, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Snorlax - Yawn - Level 12
  (143, 14300, 281, 23, NULL, 1, 12, NULL, NULL, NULL, 14),
  -- Snorlax - Bite - Level 16
  (143, 14300, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 15),
  -- Snorlax - Rest - Level 20
  (143, 14300, 156, 23, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Snorlax - Snore - Level 20
  (143, 14300, 173, 23, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Snorlax - Sleep Talk - Level 20
  (143, 14300, 214, 23, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Snorlax - Crunch - Level 24
  (143, 14300, 242, 23, NULL, 1, 24, NULL, NULL, NULL, 19),
  -- Snorlax - Body Slam - Level 28
  (143, 14300, 34, 23, NULL, 1, 28, NULL, NULL, NULL, 20),
  -- Snorlax - Heavy Slam - Level 32
  (143, 14300, 484, 23, NULL, 1, 32, NULL, NULL, NULL, 21),
  -- Snorlax - Amnesia - Level 36
  (143, 14300, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 22),
  -- Snorlax - High Horsepower - Level 40
  (143, 14300, 667, 23, NULL, 1, 40, NULL, NULL, NULL, 23),
  -- Snorlax - Hammer Arm - Level 44
  (143, 14300, 359, 23, NULL, 1, 44, NULL, NULL, NULL, 24),
  -- Snorlax - Belly Drum - Level 48
  (143, 14300, 187, 23, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Snorlax - Belch - Level 52
  (143, 14300, 562, 23, NULL, 1, 52, NULL, NULL, NULL, 26),
  -- Snorlax - Giga Impact - Level 56
  (143, 14300, 416, 23, NULL, 1, 56, NULL, NULL, NULL, 27),
  -- Snorlax - Take Down - TM001
  (143, 14300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 28),
  -- Snorlax - Charm - TM002
  (143, 14300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 29),
  -- Snorlax - Mud-Slap - TM005
  (143, 14300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 30),
  -- Snorlax - Protect - TM007
  (143, 14300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 31),
  -- Snorlax - Trailblaze - TM020
  (143, 14300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 32),
  -- Snorlax - Chilling Water - TM022
  (143, 14300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 33),
  -- Snorlax - Facade - TM025
  (143, 14300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 34),
  -- Snorlax - Bulldoze - TM028
  (143, 14300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 35),
  -- Snorlax - Icy Wind - TM034
  (143, 14300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 36),
  -- Snorlax - Rock Tomb - TM036
  (143, 14300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 37),
  -- Snorlax - Fling - TM043
  (143, 14300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 38),
  -- Snorlax - Endure - TM047
  (143, 14300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Snorlax - Sunny Day - TM049
  (143, 14300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Snorlax - Rain Dance - TM050
  (143, 14300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 41),
  -- Snorlax - Sandstorm - TM051
  (143, 14300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 42),
  -- Snorlax - Dig - TM055
  (143, 14300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 43),
  -- Snorlax - Brick Break - TM058
  (143, 14300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 44),
  -- Snorlax - Zen Headbutt - TM059
  (143, 14300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 45),
  -- Snorlax - Body Slam - TM066
  (143, 14300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 46),
  -- Snorlax - Fire Punch - TM067
  (143, 14300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 47),
  -- Snorlax - Thunder Punch - TM068
  (143, 14300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 48),
  -- Snorlax - Ice Punch - TM069
  (143, 14300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 49),
  -- Snorlax - Sleep Talk - TM070
  (143, 14300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 50),
  -- Snorlax - Seed Bomb - TM071
  (143, 14300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 51),
  -- Snorlax - Metronome - TM080
  (143, 14300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 52),
  -- Snorlax - Stomping Tantrum - TM084
  (143, 14300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 53),
  -- Snorlax - Rest - TM085
  (143, 14300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 54),
  -- Snorlax - Rock Slide - TM086
  (143, 14300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 55),
  -- Snorlax - Body Press - TM089
  (143, 14300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 56),
  -- Snorlax - Iron Head - TM099
  (143, 14300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 57),
  -- Snorlax - Gunk Shot - TM102
  (143, 14300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 58),
  -- Snorlax - Substitute - TM103
  (143, 14300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 59),
  -- Snorlax - Crunch - TM108
  (143, 14300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 60),
  -- Snorlax - Shadow Ball - TM114
  (143, 14300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 61),
  -- Snorlax - Hyper Voice - TM117
  (143, 14300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 62),
  -- Snorlax - Heavy Slam - TM121
  (143, 14300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 63),
  -- Snorlax - Encore - TM122
  (143, 14300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 64),
  -- Snorlax - Surf - TM123
  (143, 14300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 65),
  -- Snorlax - Flamethrower - TM125
  (143, 14300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 66),
  -- Snorlax - Thunderbolt - TM126
  (143, 14300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 67),
  -- Snorlax - Amnesia - TM128
  (143, 14300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 68),
  -- Snorlax - Helping Hand - TM130
  (143, 14300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 69),
  -- Snorlax - Ice Beam - TM135
  (143, 14300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 70),
  -- Snorlax - Fire Blast - TM141
  (143, 14300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 71),
  -- Snorlax - Blizzard - TM143
  (143, 14300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 72),
  -- Snorlax - Wild Charge - TM147
  (143, 14300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 73),
  -- Snorlax - Earthquake - TM149
  (143, 14300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 74),
  -- Snorlax - Giga Impact - TM152
  (143, 14300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 75),
  -- Snorlax - Outrage - TM156
  (143, 14300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 76),
  -- Snorlax - Focus Blast - TM158
  (143, 14300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 77),
  -- Snorlax - Hyper Beam - TM163
  (143, 14300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 78),
  -- Snorlax - Thunder - TM166
  (143, 14300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 79),
  -- Snorlax - Solar Beam - TM168
  (143, 14300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 80),
  -- Snorlax - Tera Blast - TM171
  (143, 14300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 81),
  -- Snorlax - Double-Edge - Egg
  (143, 14300, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Snorlax - Counter - Egg
  (143, 14300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Snorlax - Fissure - Egg
  (143, 14300, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Snorlax - Curse - Egg
  (143, 14300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Snorlax - Belch - Egg
  (143, 14300, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Mist - Level 1
  (144, 14400, 54, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Powder Snow - Level 5
  (144, 14400, 181, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Articuno - Reflect - Level 10
  (144, 14400, 115, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Articuno - Ice Shard - Level 15
  (144, 14400, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Articuno - Agility - Level 20
  (144, 14400, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Articuno - Ancient Power - Level 25
  (144, 14400, 246, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Articuno - Tailwind - Level 30
  (144, 14400, 366, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Articuno - Freeze-Dry - Level 35
  (144, 14400, 573, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Articuno - Roost - Level 40
  (144, 14400, 355, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Articuno - Ice Beam - Level 45
  (144, 14400, 58, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Articuno - Snowscape - Level 50
  (144, 14400, 883, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Articuno - Hurricane - Level 55
  (144, 14400, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Articuno - Haze - Level 60
  (144, 14400, 114, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Articuno - Blizzard - Level 65
  (144, 14400, 59, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Articuno - Sheer Cold - Level 70
  (144, 14400, 329, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Articuno - Take Down - TM001
  (144, 14400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Articuno - Agility - TM004
  (144, 14400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Articuno - Protect - TM007
  (144, 14400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Articuno - Water Pulse - TM011
  (144, 14400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Articuno - Facade - TM025
  (144, 14400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Articuno - Aerial Ace - TM027
  (144, 14400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Articuno - Swift - TM032
  (144, 14400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Articuno - Icy Wind - TM034
  (144, 14400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Articuno - Air Cutter - TM040
  (144, 14400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Articuno - Avalanche - TM046
  (144, 14400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Articuno - Endure - TM047
  (144, 14400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Articuno - Sunny Day - TM049
  (144, 14400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Articuno - Rain Dance - TM050
  (144, 14400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Articuno - Sandstorm - TM051
  (144, 14400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Articuno - Snowscape - TM052
  (144, 14400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Articuno - U-turn - TM060
  (144, 14400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Articuno - Air Slash - TM065
  (144, 14400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Articuno - Sleep Talk - TM070
  (144, 14400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Articuno - Reflect - TM074
  (144, 14400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Articuno - Light Screen - TM075
  (144, 14400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Articuno - Rest - TM085
  (144, 14400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Articuno - Fly - TM097
  (144, 14400, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Articuno - Substitute - TM103
  (144, 14400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Articuno - Tailwind - TM113
  (144, 14400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Articuno - Ice Spinner - TM124
  (144, 14400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 41),
  -- Articuno - Helping Hand - TM130
  (144, 14400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Articuno - Ice Beam - TM135
  (144, 14400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Articuno - Blizzard - TM143
  (144, 14400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Articuno - Giga Impact - TM152
  (144, 14400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Articuno - Hurricane - TM160
  (144, 14400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 46),
  -- Articuno - Hyper Beam - TM163
  (144, 14400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Articuno - Brave Bird - TM164
  (144, 14400, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 48),
  -- Articuno - Tera Blast - TM171
  (144, 14400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Articuno (Galarian Articuno) - Gust - Level 1
  (144, 14401, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno (Galarian Articuno) - Confusion - Level 5
  (144, 14401, 93, 23, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Articuno (Galarian Articuno) - Reflect - Level 10
  (144, 14401, 115, 23, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Articuno (Galarian Articuno) - Hypnosis - Level 15
  (144, 14401, 95, 23, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Articuno (Galarian Articuno) - Agility - Level 20
  (144, 14401, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Articuno (Galarian Articuno) - Ancient Power - Level 25
  (144, 14401, 246, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Articuno (Galarian Articuno) - Tailwind - Level 30
  (144, 14401, 366, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Articuno (Galarian Articuno) - Psycho Cut - Level 35
  (144, 14401, 427, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Articuno (Galarian Articuno) - Recover - Level 40
  (144, 14401, 105, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Articuno (Galarian Articuno) - Freezing Glare - Level 45
  (144, 14401, 821, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Articuno (Galarian Articuno) - Dream Eater - Level 50
  (144, 14401, 138, 23, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Articuno (Galarian Articuno) - Hurricane - Level 55
  (144, 14401, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Articuno (Galarian Articuno) - Double Team - Level 60
  (144, 14401, 104, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Articuno (Galarian Articuno) - Future Sight - Level 65
  (144, 14401, 248, 23, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Articuno (Galarian Articuno) - Trick Room - Level 70
  (144, 14401, 433, 23, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Articuno (Galarian Articuno) - Take Down - TM001
  (144, 14401, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Articuno (Galarian Articuno) - Agility - TM004
  (144, 14401, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Articuno (Galarian Articuno) - Scary Face - TM006
  (144, 14401, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Articuno (Galarian Articuno) - Protect - TM007
  (144, 14401, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Articuno (Galarian Articuno) - Psybeam - TM016
  (144, 14401, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Articuno (Galarian Articuno) - Facade - TM025
  (144, 14401, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Articuno (Galarian Articuno) - Swift - TM032
  (144, 14401, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Articuno (Galarian Articuno) - Air Cutter - TM040
  (144, 14401, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Articuno (Galarian Articuno) - Stored Power - TM041
  (144, 14401, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 24),
  -- Articuno (Galarian Articuno) - Endure - TM047
  (144, 14401, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Articuno (Galarian Articuno) - Sunny Day - TM049
  (144, 14401, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Articuno (Galarian Articuno) - Rain Dance - TM050
  (144, 14401, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Articuno (Galarian Articuno) - Snowscape - TM052
  (144, 14401, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Articuno (Galarian Articuno) - Psyshock - TM054
  (144, 14401, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 29),
  -- Articuno (Galarian Articuno) - U-turn - TM060
  (144, 14401, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Articuno (Galarian Articuno) - Air Slash - TM065
  (144, 14401, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Articuno (Galarian Articuno) - Sleep Talk - TM070
  (144, 14401, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Articuno (Galarian Articuno) - Reflect - TM074
  (144, 14401, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Articuno (Galarian Articuno) - Light Screen - TM075
  (144, 14401, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Articuno (Galarian Articuno) - Rest - TM085
  (144, 14401, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Articuno (Galarian Articuno) - Imprison - TM092
  (144, 14401, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Articuno (Galarian Articuno) - Fly - TM097
  (144, 14401, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Articuno (Galarian Articuno) - Skill Swap - TM098
  (144, 14401, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Articuno (Galarian Articuno) - Substitute - TM103
  (144, 14401, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Articuno (Galarian Articuno) - Trick - TM109
  (144, 14401, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 40),
  -- Articuno (Galarian Articuno) - Tailwind - TM113
  (144, 14401, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Articuno (Galarian Articuno) - Shadow Ball - TM114
  (144, 14401, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Articuno (Galarian Articuno) - Hyper Voice - TM117
  (144, 14401, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Articuno (Galarian Articuno) - Psychic - TM120
  (144, 14401, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Articuno (Galarian Articuno) - Calm Mind - TM129
  (144, 14401, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Articuno (Galarian Articuno) - Helping Hand - TM130
  (144, 14401, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Articuno (Galarian Articuno) - Giga Impact - TM152
  (144, 14401, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Articuno (Galarian Articuno) - Hurricane - TM160
  (144, 14401, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Articuno (Galarian Articuno) - Trick Room - TM161
  (144, 14401, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 49),
  -- Articuno (Galarian Articuno) - Hyper Beam - TM163
  (144, 14401, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Articuno (Galarian Articuno) - Brave Bird - TM164
  (144, 14401, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 51),
  -- Articuno (Galarian Articuno) - Tera Blast - TM171
  (144, 14401, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Wave - Level 1
  (145, 14500, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Shock - Level 5
  (145, 14500, 84, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zapdos - Light Screen - Level 10
  (145, 14500, 113, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zapdos - Pluck - Level 15
  (145, 14500, 365, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zapdos - Agility - Level 20
  (145, 14500, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zapdos - Ancient Power - Level 25
  (145, 14500, 246, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zapdos - Charge - Level 30
  (145, 14500, 268, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zapdos - Drill Peck - Level 35
  (145, 14500, 65, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zapdos - Roost - Level 40
  (145, 14500, 355, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zapdos - Discharge - Level 45
  (145, 14500, 435, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zapdos - Rain Dance - Level 50
  (145, 14500, 240, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zapdos - Thunder - Level 55
  (145, 14500, 87, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zapdos - Detect - Level 60
  (145, 14500, 197, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Zapdos - Magnetic Flux - Level 65
  (145, 14500, 602, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Zapdos - Zap Cannon - Level 70
  (145, 14500, 192, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Zapdos - Take Down - TM001
  (145, 14500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Zapdos - Agility - TM004
  (145, 14500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Zapdos - Protect - TM007
  (145, 14500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Zapdos - Acrobatics - TM014
  (145, 14500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Zapdos - Facade - TM025
  (145, 14500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Zapdos - Aerial Ace - TM027
  (145, 14500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Zapdos - Swift - TM032
  (145, 14500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Zapdos - Air Cutter - TM040
  (145, 14500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Zapdos - Endure - TM047
  (145, 14500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Zapdos - Volt Switch - TM048
  (145, 14500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Zapdos - Sunny Day - TM049
  (145, 14500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Zapdos - Rain Dance - TM050
  (145, 14500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Zapdos - Sandstorm - TM051
  (145, 14500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Zapdos - U-turn - TM060
  (145, 14500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Zapdos - Sleep Talk - TM070
  (145, 14500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Zapdos - Electro Ball - TM072
  (145, 14500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 32),
  -- Zapdos - Light Screen - TM075
  (145, 14500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Zapdos - Thunder Wave - TM082
  (145, 14500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Zapdos - Rest - TM085
  (145, 14500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Zapdos - Eerie Impulse - TM096
  (145, 14500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 36),
  -- Zapdos - Fly - TM097
  (145, 14500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Zapdos - Substitute - TM103
  (145, 14500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Zapdos - Tailwind - TM113
  (145, 14500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Zapdos - Heat Wave - TM118
  (145, 14500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Zapdos - Thunderbolt - TM126
  (145, 14500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Zapdos - Helping Hand - TM130
  (145, 14500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Zapdos - Baton Pass - TM132
  (145, 14500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 43),
  -- Zapdos - Electric Terrain - TM136
  (145, 14500, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 44),
  -- Zapdos - Wild Charge - TM147
  (145, 14500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 45),
  -- Zapdos - Giga Impact - TM152
  (145, 14500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Zapdos - Hurricane - TM160
  (145, 14500, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 47),
  -- Zapdos - Hyper Beam - TM163
  (145, 14500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Zapdos - Brave Bird - TM164
  (145, 14500, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 49),
  -- Zapdos - Thunder - TM166
  (145, 14500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Zapdos - Tera Blast - TM171
  (145, 14500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Zapdos (Galarian Zapdos) - Peck - Level 1
  (145, 14501, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos (Galarian Zapdos) - Focus Energy - Level 1
  (145, 14501, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos (Galarian Zapdos) - Rock Smash - Level 5
  (145, 14501, 249, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zapdos (Galarian Zapdos) - Light Screen - Level 10
  (145, 14501, 113, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zapdos (Galarian Zapdos) - Pluck - Level 15
  (145, 14501, 365, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zapdos (Galarian Zapdos) - Agility - Level 20
  (145, 14501, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zapdos (Galarian Zapdos) - Ancient Power - Level 25
  (145, 14501, 246, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zapdos (Galarian Zapdos) - Brick Break - Level 30
  (145, 14501, 280, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zapdos (Galarian Zapdos) - Drill Peck - Level 35
  (145, 14501, 65, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zapdos (Galarian Zapdos) - Quick Guard - Level 40
  (145, 14501, 501, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zapdos (Galarian Zapdos) - Thunderous Kick - Level 45
  (145, 14501, 823, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zapdos (Galarian Zapdos) - Bulk Up - Level 50
  (145, 14501, 339, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zapdos (Galarian Zapdos) - Counter - Level 55
  (145, 14501, 68, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zapdos (Galarian Zapdos) - Detect - Level 60
  (145, 14501, 197, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Zapdos (Galarian Zapdos) - Close Combat - Level 65
  (145, 14501, 370, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Zapdos (Galarian Zapdos) - Reversal - Level 70
  (145, 14501, 179, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Zapdos (Galarian Zapdos) - Take Down - TM001
  (145, 14501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Zapdos (Galarian Zapdos) - Agility - TM004
  (145, 14501, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Zapdos (Galarian Zapdos) - Scary Face - TM006
  (145, 14501, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Zapdos (Galarian Zapdos) - Protect - TM007
  (145, 14501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Zapdos (Galarian Zapdos) - Low Kick - TM012
  (145, 14501, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Zapdos (Galarian Zapdos) - Acrobatics - TM014
  (145, 14501, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Zapdos (Galarian Zapdos) - Trailblaze - TM020
  (145, 14501, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Zapdos (Galarian Zapdos) - Facade - TM025
  (145, 14501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Zapdos (Galarian Zapdos) - Aerial Ace - TM027
  (145, 14501, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Zapdos (Galarian Zapdos) - Swift - TM032
  (145, 14501, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Zapdos (Galarian Zapdos) - Low Sweep - TM039
  (145, 14501, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Zapdos (Galarian Zapdos) - Endure - TM047
  (145, 14501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Zapdos (Galarian Zapdos) - Sunny Day - TM049
  (145, 14501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Zapdos (Galarian Zapdos) - Rain Dance - TM050
  (145, 14501, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Zapdos (Galarian Zapdos) - Sandstorm - TM051
  (145, 14501, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Zapdos (Galarian Zapdos) - Brick Break - TM058
  (145, 14501, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Zapdos (Galarian Zapdos) - U-turn - TM060
  (145, 14501, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Zapdos (Galarian Zapdos) - Bulk Up - TM064
  (145, 14501, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Zapdos (Galarian Zapdos) - Sleep Talk - TM070
  (145, 14501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Zapdos (Galarian Zapdos) - Light Screen - TM075
  (145, 14501, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Zapdos (Galarian Zapdos) - Stomping Tantrum - TM084
  (145, 14501, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Zapdos (Galarian Zapdos) - Rest - TM085
  (145, 14501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Zapdos (Galarian Zapdos) - Taunt - TM087
  (145, 14501, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Zapdos (Galarian Zapdos) - Fly - TM097
  (145, 14501, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 40),
  -- Zapdos (Galarian Zapdos) - Substitute - TM103
  (145, 14501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Zapdos (Galarian Zapdos) - Tailwind - TM113
  (145, 14501, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 42),
  -- Zapdos (Galarian Zapdos) - Helping Hand - TM130
  (145, 14501, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Zapdos (Galarian Zapdos) - Reversal - TM134
  (145, 14501, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Zapdos (Galarian Zapdos) - Giga Impact - TM152
  (145, 14501, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Zapdos (Galarian Zapdos) - Hurricane - TM160
  (145, 14501, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 46),
  -- Zapdos (Galarian Zapdos) - Hyper Beam - TM163
  (145, 14501, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Zapdos (Galarian Zapdos) - Brave Bird - TM164
  (145, 14501, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 48),
  -- Zapdos (Galarian Zapdos) - Close Combat - TM167
  (145, 14501, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 49),
  -- Zapdos (Galarian Zapdos) - Tera Blast - TM171
  (145, 14501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Moltres - Gust - Level 1
  (146, 14600, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Leer - Level 1
  (146, 14600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Ember - Level 5
  (146, 14600, 52, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Moltres - Safeguard - Level 10
  (146, 14600, 219, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Moltres - Wing Attack - Level 15
  (146, 14600, 17, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Moltres - Agility - Level 20
  (146, 14600, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Moltres - Ancient Power - Level 25
  (146, 14600, 246, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Moltres - Incinerate - Level 30
  (146, 14600, 510, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Moltres - Air Slash - Level 35
  (146, 14600, 403, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Moltres - Roost - Level 40
  (146, 14600, 355, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Moltres - Heat Wave - Level 45
  (146, 14600, 257, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Moltres - Sunny Day - Level 50
  (146, 14600, 241, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Moltres - Hurricane - Level 55
  (146, 14600, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Moltres - Endure - Level 60
  (146, 14600, 203, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Moltres - Overheat - Level 65
  (146, 14600, 315, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Moltres - Sky Attack - Level 70
  (146, 14600, 143, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Moltres - Take Down - TM001
  (146, 14600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Moltres - Agility - TM004
  (146, 14600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Moltres - Protect - TM007
  (146, 14600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Moltres - Acrobatics - TM014
  (146, 14600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Moltres - Fire Spin - TM024
  (146, 14600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Moltres - Facade - TM025
  (146, 14600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Moltres - Aerial Ace - TM027
  (146, 14600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Moltres - Swift - TM032
  (146, 14600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Moltres - Flame Charge - TM038
  (146, 14600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Moltres - Air Cutter - TM040
  (146, 14600, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Moltres - Endure - TM047
  (146, 14600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Moltres - Sunny Day - TM049
  (146, 14600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Moltres - Rain Dance - TM050
  (146, 14600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Moltres - Sandstorm - TM051
  (146, 14600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Moltres - U-turn - TM060
  (146, 14600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Moltres - Air Slash - TM065
  (146, 14600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Moltres - Sleep Talk - TM070
  (146, 14600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Moltres - Rest - TM085
  (146, 14600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Moltres - Fly - TM097
  (146, 14600, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 35),
  -- Moltres - Substitute - TM103
  (146, 14600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Moltres - Will-O-Wisp - TM107
  (146, 14600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Moltres - Tailwind - TM113
  (146, 14600, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 38),
  -- Moltres - Heat Wave - TM118
  (146, 14600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 39),
  -- Moltres - Flamethrower - TM125
  (146, 14600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 40),
  -- Moltres - Helping Hand - TM130
  (146, 14600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Moltres - Fire Blast - TM141
  (146, 14600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Moltres - Giga Impact - TM152
  (146, 14600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Moltres - Overheat - TM157
  (146, 14600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 44),
  -- Moltres - Hurricane - TM160
  (146, 14600, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 45),
  -- Moltres - Hyper Beam - TM163
  (146, 14600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Moltres - Brave Bird - TM164
  (146, 14600, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 47),
  -- Moltres - Flare Blitz - TM165
  (146, 14600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 48),
  -- Moltres - Solar Beam - TM168
  (146, 14600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Moltres - Tera Blast - TM171
  (146, 14600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Moltres (Galarian Moltres) - Gust - Level 1
  (146, 14601, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres (Galarian Moltres) - Leer - Level 1
  (146, 14601, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres (Galarian Moltres) - Payback - Level 5
  (146, 14601, 371, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Moltres (Galarian Moltres) - Safeguard - Level 10
  (146, 14601, 219, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Moltres (Galarian Moltres) - Wing Attack - Level 15
  (146, 14601, 17, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Moltres (Galarian Moltres) - Agility - Level 20
  (146, 14601, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Moltres (Galarian Moltres) - Ancient Power - Level 25
  (146, 14601, 246, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Moltres (Galarian Moltres) - Sucker Punch - Level 30
  (146, 14601, 389, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Moltres (Galarian Moltres) - Air Slash - Level 35
  (146, 14601, 403, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Moltres (Galarian Moltres) - After You - Level 40
  (146, 14601, 495, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Moltres (Galarian Moltres) - Fiery Wrath - Level 45
  (146, 14601, 822, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Moltres (Galarian Moltres) - Nasty Plot - Level 50
  (146, 14601, 417, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Moltres (Galarian Moltres) - Hurricane - Level 55
  (146, 14601, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Moltres (Galarian Moltres) - Endure - Level 60
  (146, 14601, 203, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Moltres (Galarian Moltres) - Memento - Level 65
  (146, 14601, 262, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Moltres (Galarian Moltres) - Sky Attack - Level 70
  (146, 14601, 143, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Moltres (Galarian Moltres) - Take Down - TM001
  (146, 14601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Moltres (Galarian Moltres) - Agility - TM004
  (146, 14601, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Moltres (Galarian Moltres) - Scary Face - TM006
  (146, 14601, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Moltres (Galarian Moltres) - Protect - TM007
  (146, 14601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Moltres (Galarian Moltres) - Acrobatics - TM014
  (146, 14601, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Moltres (Galarian Moltres) - Thief - TM018
  (146, 14601, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Moltres (Galarian Moltres) - Facade - TM025
  (146, 14601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Moltres (Galarian Moltres) - Aerial Ace - TM027
  (146, 14601, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Moltres (Galarian Moltres) - Hex - TM029
  (146, 14601, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Moltres (Galarian Moltres) - Snarl - TM030
  (146, 14601, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Moltres (Galarian Moltres) - Swift - TM032
  (146, 14601, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Moltres (Galarian Moltres) - Endure - TM047
  (146, 14601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Moltres (Galarian Moltres) - Sunny Day - TM049
  (146, 14601, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Moltres (Galarian Moltres) - Rain Dance - TM050
  (146, 14601, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Moltres (Galarian Moltres) - Sandstorm - TM051
  (146, 14601, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Moltres (Galarian Moltres) - U-turn - TM060
  (146, 14601, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Moltres (Galarian Moltres) - Foul Play - TM062
  (146, 14601, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Moltres (Galarian Moltres) - Air Slash - TM065
  (146, 14601, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 34),
  -- Moltres (Galarian Moltres) - Sleep Talk - TM070
  (146, 14601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Moltres (Galarian Moltres) - Rest - TM085
  (146, 14601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Moltres (Galarian Moltres) - Taunt - TM087
  (146, 14601, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Moltres (Galarian Moltres) - Imprison - TM092
  (146, 14601, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Moltres (Galarian Moltres) - Dark Pulse - TM094
  (146, 14601, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Moltres (Galarian Moltres) - Fly - TM097
  (146, 14601, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 40),
  -- Moltres (Galarian Moltres) - Substitute - TM103
  (146, 14601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Moltres (Galarian Moltres) - Tailwind - TM113
  (146, 14601, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 42),
  -- Moltres (Galarian Moltres) - Shadow Ball - TM114
  (146, 14601, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Moltres (Galarian Moltres) - Hyper Voice - TM117
  (146, 14601, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Moltres (Galarian Moltres) - Helping Hand - TM130
  (146, 14601, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Moltres (Galarian Moltres) - Nasty Plot - TM140
  (146, 14601, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 46),
  -- Moltres (Galarian Moltres) - Giga Impact - TM152
  (146, 14601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Moltres (Galarian Moltres) - Hurricane - TM160
  (146, 14601, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Moltres (Galarian Moltres) - Hyper Beam - TM163
  (146, 14601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Moltres (Galarian Moltres) - Brave Bird - TM164
  (146, 14601, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 50),
  -- Moltres (Galarian Moltres) - Tera Blast - TM171
  (146, 14601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Twister - Level 5
  (147, 14700, 239, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Thunder Wave - Level 10
  (147, 14700, 86, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Tail - Level 15
  (147, 14700, 525, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Agility - Level 20
  (147, 14700, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dratini - Slam - Level 25
  (147, 14700, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Aqua Tail - Level 31
  (147, 14700, 401, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dratini - Dragon Rush - Level 35
  (147, 14700, 407, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dratini - Safeguard - Level 40
  (147, 14700, 219, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Dratini - Rain Dance - Level 45
  (147, 14700, 240, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dratini - Dragon Dance - Level 50
  (147, 14700, 349, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Dratini - Outrage - Level 55
  (147, 14700, 200, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Dratini - Hyper Beam - Level 60
  (147, 14700, 63, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Dratini - Take Down - TM001
  (147, 14700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Dratini - Agility - TM004
  (147, 14700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Dratini - Protect - TM007
  (147, 14700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Dratini - Water Pulse - TM011
  (147, 14700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Dratini - Chilling Water - TM022
  (147, 14700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Dratini - Fire Spin - TM024
  (147, 14700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Dratini - Facade - TM025
  (147, 14700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Dratini - Swift - TM032
  (147, 14700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Dratini - Icy Wind - TM034
  (147, 14700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Dratini - Dragon Tail - TM044
  (147, 14700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Dratini - Endure - TM047
  (147, 14700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Dratini - Sunny Day - TM049
  (147, 14700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Dratini - Rain Dance - TM050
  (147, 14700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Dratini - Body Slam - TM066
  (147, 14700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Dratini - Sleep Talk - TM070
  (147, 14700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Dratini - Light Screen - TM075
  (147, 14700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Dratini - Waterfall - TM077
  (147, 14700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 31),
  -- Dratini - Thunder Wave - TM082
  (147, 14700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Dratini - Rest - TM085
  (147, 14700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Dratini - Iron Head - TM099
  (147, 14700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Dratini - Dragon Dance - TM100
  (147, 14700, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 35),
  -- Dratini - Substitute - TM103
  (147, 14700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Dratini - Dragon Pulse - TM115
  (147, 14700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 37),
  -- Dratini - Surf - TM123
  (147, 14700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 38),
  -- Dratini - Flamethrower - TM125
  (147, 14700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Dratini - Thunderbolt - TM126
  (147, 14700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 40),
  -- Dratini - Helping Hand - TM130
  (147, 14700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Dratini - Ice Beam - TM135
  (147, 14700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Dratini - Fire Blast - TM141
  (147, 14700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 43),
  -- Dratini - Hydro Pump - TM142
  (147, 14700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Dratini - Blizzard - TM143
  (147, 14700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Dratini - Giga Impact - TM152
  (147, 14700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Dratini - Outrage - TM156
  (147, 14700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Dratini - Hyper Beam - TM163
  (147, 14700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Dratini - Thunder - TM166
  (147, 14700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 49),
  -- Dratini - Draco Meteor - TM169
  (147, 14700, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Dratini - Tera Blast - TM171
  (147, 14700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Dratini - Supersonic - Egg
  (147, 14700, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dratini - Mist - Egg
  (147, 14700, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dratini - Dragon Breath - Egg
  (147, 14700, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dratini - Extreme Speed - Egg
  (147, 14700, 245, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dratini - Water Pulse - Egg
  (147, 14700, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dratini - Aqua Jet - Egg
  (147, 14700, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Dragon Tail - Level 15
  (148, 14800, 525, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dragonair - Agility - Level 20
  (148, 14800, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragonair - Slam - Level 25
  (148, 14800, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dragonair - Aqua Tail - Level 33
  (148, 14800, 401, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Dragonair - Dragon Rush - Level 39
  (148, 14800, 407, 23, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Dragonair - Safeguard - Level 46
  (148, 14800, 219, 23, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Dragonair - Rain Dance - Level 53
  (148, 14800, 240, 23, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Dragonair - Dragon Dance - Level 60
  (148, 14800, 349, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Dragonair - Outrage - Level 67
  (148, 14800, 200, 23, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Dragonair - Hyper Beam - Level 74
  (148, 14800, 63, 23, NULL, 1, 74, NULL, NULL, NULL, 14),
  -- Dragonair - Take Down - TM001
  (148, 14800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Dragonair - Agility - TM004
  (148, 14800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Dragonair - Protect - TM007
  (148, 14800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Dragonair - Water Pulse - TM011
  (148, 14800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Dragonair - Chilling Water - TM022
  (148, 14800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Dragonair - Fire Spin - TM024
  (148, 14800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Dragonair - Facade - TM025
  (148, 14800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Dragonair - Swift - TM032
  (148, 14800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Dragonair - Icy Wind - TM034
  (148, 14800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Dragonair - Dragon Tail - TM044
  (148, 14800, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Dragonair - Endure - TM047
  (148, 14800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Dragonair - Sunny Day - TM049
  (148, 14800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Dragonair - Rain Dance - TM050
  (148, 14800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Dragonair - Body Slam - TM066
  (148, 14800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Dragonair - Sleep Talk - TM070
  (148, 14800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Dragonair - Light Screen - TM075
  (148, 14800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Dragonair - Waterfall - TM077
  (148, 14800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 31),
  -- Dragonair - Thunder Wave - TM082
  (148, 14800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Dragonair - Rest - TM085
  (148, 14800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Dragonair - Iron Head - TM099
  (148, 14800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Dragonair - Dragon Dance - TM100
  (148, 14800, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 35),
  -- Dragonair - Substitute - TM103
  (148, 14800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Dragonair - Dragon Pulse - TM115
  (148, 14800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 37),
  -- Dragonair - Surf - TM123
  (148, 14800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 38),
  -- Dragonair - Flamethrower - TM125
  (148, 14800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Dragonair - Thunderbolt - TM126
  (148, 14800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 40),
  -- Dragonair - Helping Hand - TM130
  (148, 14800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Dragonair - Ice Beam - TM135
  (148, 14800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Dragonair - Fire Blast - TM141
  (148, 14800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 43),
  -- Dragonair - Hydro Pump - TM142
  (148, 14800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Dragonair - Blizzard - TM143
  (148, 14800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Dragonair - Giga Impact - TM152
  (148, 14800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Dragonair - Outrage - TM156
  (148, 14800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Dragonair - Hyper Beam - TM163
  (148, 14800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Dragonair - Thunder - TM166
  (148, 14800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 49),
  -- Dragonair - Draco Meteor - TM169
  (148, 14800, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Dragonair - Tera Blast - TM171
  (148, 14800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Dragonair - Supersonic - Egg
  (148, 14800, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dragonair - Mist - Egg
  (148, 14800, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dragonair - Dragon Breath - Egg
  (148, 14800, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dragonair - Extreme Speed - Egg
  (148, 14800, 245, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dragonair - Water Pulse - Egg
  (148, 14800, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dragonair - Aqua Jet - Egg
  (148, 14800, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dragonite - Fire Punch - Level 1
  (149, 14900, 7, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Thunder Punch - Level 1
  (149, 14900, 9, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Wing Attack - Level 1
  (149, 14900, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragonite - Extreme Speed - Level 1
  (149, 14900, 245, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dragonite - Roost - Level 1
  (149, 14900, 355, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dragonite - Dragon Tail - Level 15
  (149, 14900, 525, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Dragonite - Agility - Level 20
  (149, 14900, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Dragonite - Slam - Level 25
  (149, 14900, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Dragonite - Aqua Tail - Level 33
  (149, 14900, 401, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Dragonite - Dragon Rush - Level 39
  (149, 14900, 407, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Dragonite - Outrage - Level 41
  (149, 14900, 200, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Dragonite - Safeguard - Level 46
  (149, 14900, 219, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Dragonite - Rain Dance - Level 53
  (149, 14900, 240, 23, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Dragonite - Dragon Dance - Level 62
  (149, 14900, 349, 23, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Dragonite - Hyper Beam - Level 80
  (149, 14900, 63, 23, NULL, 1, 80, NULL, NULL, NULL, 19),
  -- Dragonite - Take Down - TM001
  (149, 14900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Dragonite - Agility - TM004
  (149, 14900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 21),
  -- Dragonite - Scary Face - TM006
  (149, 14900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Dragonite - Protect - TM007
  (149, 14900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Dragonite - Water Pulse - TM011
  (149, 14900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Dragonite - Low Kick - TM012
  (149, 14900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 25),
  -- Dragonite - Chilling Water - TM022
  (149, 14900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Dragonite - Fire Spin - TM024
  (149, 14900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 27),
  -- Dragonite - Facade - TM025
  (149, 14900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Dragonite - Aerial Ace - TM027
  (149, 14900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 29),
  -- Dragonite - Bulldoze - TM028
  (149, 14900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 30),
  -- Dragonite - Swift - TM032
  (149, 14900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Dragonite - Icy Wind - TM034
  (149, 14900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 32),
  -- Dragonite - Rock Tomb - TM036
  (149, 14900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 33),
  -- Dragonite - Air Cutter - TM040
  (149, 14900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 34),
  -- Dragonite - Fling - TM043
  (149, 14900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Dragonite - Dragon Tail - TM044
  (149, 14900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 36),
  -- Dragonite - Endure - TM047
  (149, 14900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Dragonite - Sunny Day - TM049
  (149, 14900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Dragonite - Rain Dance - TM050
  (149, 14900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Dragonite - Sandstorm - TM051
  (149, 14900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 40),
  -- Dragonite - Snowscape - TM052
  (149, 14900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 41),
  -- Dragonite - Brick Break - TM058
  (149, 14900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 42),
  -- Dragonite - Air Slash - TM065
  (149, 14900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 43),
  -- Dragonite - Body Slam - TM066
  (149, 14900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Dragonite - Fire Punch - TM067
  (149, 14900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 45),
  -- Dragonite - Thunder Punch - TM068
  (149, 14900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 46),
  -- Dragonite - Ice Punch - TM069
  (149, 14900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 47),
  -- Dragonite - Sleep Talk - TM070
  (149, 14900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 48),
  -- Dragonite - Light Screen - TM075
  (149, 14900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 49),
  -- Dragonite - Waterfall - TM077
  (149, 14900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 50),
  -- Dragonite - Dragon Claw - TM078
  (149, 14900, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 51),
  -- Dragonite - Metronome - TM080
  (149, 14900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 52),
  -- Dragonite - Thunder Wave - TM082
  (149, 14900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 53),
  -- Dragonite - Stomping Tantrum - TM084
  (149, 14900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 54),
  -- Dragonite - Rest - TM085
  (149, 14900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Dragonite - Rock Slide - TM086
  (149, 14900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Dragonite - Body Press - TM089
  (149, 14900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 57),
  -- Dragonite - Fly - TM097
  (149, 14900, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 58),
  -- Dragonite - Iron Head - TM099
  (149, 14900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 59),
  -- Dragonite - Dragon Dance - TM100
  (149, 14900, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 60),
  -- Dragonite - Substitute - TM103
  (149, 14900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 61),
  -- Dragonite - Tailwind - TM113
  (149, 14900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 62),
  -- Dragonite - Dragon Pulse - TM115
  (149, 14900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 63),
  -- Dragonite - Heat Wave - TM118
  (149, 14900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 64),
  -- Dragonite - Encore - TM122
  (149, 14900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 65),
  -- Dragonite - Surf - TM123
  (149, 14900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 66),
  -- Dragonite - Ice Spinner - TM124
  (149, 14900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 67),
  -- Dragonite - Flamethrower - TM125
  (149, 14900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 68),
  -- Dragonite - Thunderbolt - TM126
  (149, 14900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 69),
  -- Dragonite - Helping Hand - TM130
  (149, 14900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 70),
  -- Dragonite - Ice Beam - TM135
  (149, 14900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 71),
  -- Dragonite - Fire Blast - TM141
  (149, 14900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 72),
  -- Dragonite - Hydro Pump - TM142
  (149, 14900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 73),
  -- Dragonite - Blizzard - TM143
  (149, 14900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 74),
  -- Dragonite - Earthquake - TM149
  (149, 14900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 75),
  -- Dragonite - Stone Edge - TM150
  (149, 14900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 76),
  -- Dragonite - Giga Impact - TM152
  (149, 14900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 77),
  -- Dragonite - Outrage - TM156
  (149, 14900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 78),
  -- Dragonite - Focus Blast - TM158
  (149, 14900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 79),
  -- Dragonite - Hurricane - TM160
  (149, 14900, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 80),
  -- Dragonite - Hyper Beam - TM163
  (149, 14900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 81),
  -- Dragonite - Thunder - TM166
  (149, 14900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 82),
  -- Dragonite - Draco Meteor - TM169
  (149, 14900, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 83),
  -- Dragonite - Tera Blast - TM171
  (149, 14900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 84),
  -- Dragonite - Supersonic - Egg
  (149, 14900, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Dragonite - Mist - Egg
  (149, 14900, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Dragonite - Dragon Breath - Egg
  (149, 14900, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Dragonite - Extreme Speed - Egg
  (149, 14900, 245, 23, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Dragonite - Water Pulse - Egg
  (149, 14900, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Dragonite - Aqua Jet - Egg
  (149, 14900, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Dragonite - Hurricane - Evolution
  (149, 14900, 542, 23, NULL, 7, NULL, NULL, NULL, NULL, 91),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Swift - Level 1
  (150, 15000, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mewtwo - Life Dew - Level 1
  (150, 15000, 791, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mewtwo - Ancient Power - Level 8
  (150, 15000, 246, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Mewtwo - Psycho Cut - Level 16
  (150, 15000, 427, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mewtwo - Safeguard - Level 24
  (150, 15000, 219, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Mewtwo - Amnesia - Level 32
  (150, 15000, 133, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Mewtwo - Aura Sphere - Level 40
  (150, 15000, 396, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Mewtwo - Psychic - Level 48
  (150, 15000, 94, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Mewtwo - Power Swap - Level 56
  (150, 15000, 384, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Mewtwo - Guard Swap - Level 56
  (150, 15000, 385, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Mewtwo - Mist - Level 64
  (150, 15000, 54, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Mewtwo - Psystrike - Level 72
  (150, 15000, 540, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Mewtwo - Recover - Level 80
  (150, 15000, 105, 23, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Mewtwo - Future Sight - Level 88
  (150, 15000, 248, 23, NULL, 1, 88, NULL, NULL, NULL, 16),
  -- Mewtwo - Take Down - TM001
  (150, 15000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Mewtwo - Agility - TM004
  (150, 15000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Mewtwo - Scary Face - TM006
  (150, 15000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Mewtwo - Protect - TM007
  (150, 15000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Mewtwo - Low Kick - TM012
  (150, 15000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Mewtwo - Psybeam - TM016
  (150, 15000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Mewtwo - Confuse Ray - TM017
  (150, 15000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Mewtwo - Trailblaze - TM020
  (150, 15000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Mewtwo - Chilling Water - TM022
  (150, 15000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Mewtwo - Facade - TM025
  (150, 15000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Mewtwo - Bulldoze - TM028
  (150, 15000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Mewtwo - Hex - TM029
  (150, 15000, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 28),
  -- Mewtwo - Swift - TM032
  (150, 15000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Mewtwo - Icy Wind - TM034
  (150, 15000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Mewtwo - Rock Tomb - TM036
  (150, 15000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Mewtwo - Low Sweep - TM039
  (150, 15000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Mewtwo - Stored Power - TM041
  (150, 15000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 33),
  -- Mewtwo - Night Shade - TM042
  (150, 15000, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 34),
  -- Mewtwo - Fling - TM043
  (150, 15000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Mewtwo - Avalanche - TM046
  (150, 15000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 36),
  -- Mewtwo - Endure - TM047
  (150, 15000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Mewtwo - Sunny Day - TM049
  (150, 15000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Mewtwo - Rain Dance - TM050
  (150, 15000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Mewtwo - Sandstorm - TM051
  (150, 15000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 40),
  -- Mewtwo - Psyshock - TM054
  (150, 15000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 41),
  -- Mewtwo - Brick Break - TM058
  (150, 15000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 42),
  -- Mewtwo - Zen Headbutt - TM059
  (150, 15000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 43),
  -- Mewtwo - Foul Play - TM062
  (150, 15000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 44),
  -- Mewtwo - Bulk Up - TM064
  (150, 15000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 45),
  -- Mewtwo - Body Slam - TM066
  (150, 15000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 46),
  -- Mewtwo - Fire Punch - TM067
  (150, 15000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 47),
  -- Mewtwo - Thunder Punch - TM068
  (150, 15000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 48),
  -- Mewtwo - Ice Punch - TM069
  (150, 15000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 49),
  -- Mewtwo - Sleep Talk - TM070
  (150, 15000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 50),
  -- Mewtwo - Electro Ball - TM072
  (150, 15000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 51),
  -- Mewtwo - Drain Punch - TM073
  (150, 15000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 52),
  -- Mewtwo - Reflect - TM074
  (150, 15000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 53),
  -- Mewtwo - Light Screen - TM075
  (150, 15000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 54),
  -- Mewtwo - Metronome - TM080
  (150, 15000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 55),
  -- Mewtwo - Grass Knot - TM081
  (150, 15000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 56),
  -- Mewtwo - Thunder Wave - TM082
  (150, 15000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 57),
  -- Mewtwo - Poison Jab - TM083
  (150, 15000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 58),
  -- Mewtwo - Stomping Tantrum - TM084
  (150, 15000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 59),
  -- Mewtwo - Rest - TM085
  (150, 15000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 60),
  -- Mewtwo - Rock Slide - TM086
  (150, 15000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 61),
  -- Mewtwo - Taunt - TM087
  (150, 15000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 62),
  -- Mewtwo - Imprison - TM092
  (150, 15000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 63),
  -- Mewtwo - Dark Pulse - TM094
  (150, 15000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 64),
  -- Mewtwo - Skill Swap - TM098
  (150, 15000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 65),
  -- Mewtwo - Power Gem - TM101
  (150, 15000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 66),
  -- Mewtwo - Substitute - TM103
  (150, 15000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 67),
  -- Mewtwo - Will-O-Wisp - TM107
  (150, 15000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 68),
  -- Mewtwo - Trick - TM109
  (150, 15000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 69),
  -- Mewtwo - Aura Sphere - TM112
  (150, 15000, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 70),
  -- Mewtwo - Shadow Ball - TM114
  (150, 15000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 71),
  -- Mewtwo - Energy Ball - TM119
  (150, 15000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 72),
  -- Mewtwo - Psychic - TM120
  (150, 15000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 73),
  -- Mewtwo - Flamethrower - TM125
  (150, 15000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 74),
  -- Mewtwo - Thunderbolt - TM126
  (150, 15000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 75),
  -- Mewtwo - Amnesia - TM128
  (150, 15000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 76),
  -- Mewtwo - Calm Mind - TM129
  (150, 15000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 77),
  -- Mewtwo - Helping Hand - TM130
  (150, 15000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 78),
  -- Mewtwo - Earth Power - TM133
  (150, 15000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 79),
  -- Mewtwo - Reversal - TM134
  (150, 15000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 80),
  -- Mewtwo - Ice Beam - TM135
  (150, 15000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 81),
  -- Mewtwo - Psychic Terrain - TM138
  (150, 15000, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 82),
  -- Mewtwo - Nasty Plot - TM140
  (150, 15000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 83),
  -- Mewtwo - Fire Blast - TM141
  (150, 15000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 84),
  -- Mewtwo - Blizzard - TM143
  (150, 15000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 85),
  -- Mewtwo - Earthquake - TM149
  (150, 15000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 86),
  -- Mewtwo - Stone Edge - TM150
  (150, 15000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 87),
  -- Mewtwo - Giga Impact - TM152
  (150, 15000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 88),
  -- Mewtwo - Focus Blast - TM158
  (150, 15000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 89),
  -- Mewtwo - Hurricane - TM160
  (150, 15000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 90),
  -- Mewtwo - Trick Room - TM161
  (150, 15000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 91),
  -- Mewtwo - Hyper Beam - TM163
  (150, 15000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 92),
  -- Mewtwo - Thunder - TM166
  (150, 15000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 93),
  -- Mewtwo - Solar Beam - TM168
  (150, 15000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 94),
  -- Mewtwo - Tera Blast - TM171
  (150, 15000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 95);
