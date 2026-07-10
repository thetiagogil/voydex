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
-- Scarlet / Violet learnsets for species 951-1000.
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
  -- Capsakid - Leer - Level 1
  (951, 95100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Capsakid - Leafage - Level 1
  (951, 95100, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Capsakid - Bite - Level 4
  (951, 95100, 44, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Capsakid - Growth - Level 10
  (951, 95100, 74, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Capsakid - Razor Leaf - Level 13
  (951, 95100, 75, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Capsakid - Sunny Day - Level 17
  (951, 95100, 241, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Capsakid - Bullet Seed - Level 21
  (951, 95100, 331, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Capsakid - Headbutt - Level 24
  (951, 95100, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Capsakid - Zen Headbutt - Level 28
  (951, 95100, 428, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Capsakid - Crunch - Level 38
  (951, 95100, 242, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Capsakid - Seed Bomb - Level 44
  (951, 95100, 402, 23, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Capsakid - Solar Beam - Level 48
  (951, 95100, 76, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Capsakid - Take Down - TM001
  (951, 95100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Capsakid - Protect - TM007
  (951, 95100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Capsakid - Thief - TM018
  (951, 95100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 15),
  -- Capsakid - Trailblaze - TM020
  (951, 95100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Capsakid - Facade - TM025
  (951, 95100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Capsakid - Magical Leaf - TM033
  (951, 95100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Capsakid - Endure - TM047
  (951, 95100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Capsakid - Sunny Day - TM049
  (951, 95100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Capsakid - Sandstorm - TM051
  (951, 95100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 21),
  -- Capsakid - Bullet Seed - TM056
  (951, 95100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Capsakid - Zen Headbutt - TM059
  (951, 95100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 23),
  -- Capsakid - Sleep Talk - TM070
  (951, 95100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Capsakid - Seed Bomb - TM071
  (951, 95100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 25),
  -- Capsakid - Grass Knot - TM081
  (951, 95100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 26),
  -- Capsakid - Stomping Tantrum - TM084
  (951, 95100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 27),
  -- Capsakid - Rest - TM085
  (951, 95100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Capsakid - Substitute - TM103
  (951, 95100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Capsakid - Crunch - TM108
  (951, 95100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 30),
  -- Capsakid - Giga Drain - TM111
  (951, 95100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 31),
  -- Capsakid - Energy Ball - TM119
  (951, 95100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 32),
  -- Capsakid - Helping Hand - TM130
  (951, 95100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Capsakid - Grassy Terrain - TM137
  (951, 95100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 34),
  -- Capsakid - Leaf Storm - TM159
  (951, 95100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 35),
  -- Capsakid - Solar Beam - TM168
  (951, 95100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 36),
  -- Capsakid - Tera Blast - TM171
  (951, 95100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Capsakid - Leech Seed - Egg
  (951, 95100, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Capsakid - Rollout - Egg
  (951, 95100, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Capsakid - Ingrain - Egg
  (951, 95100, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Capsakid - Worry Seed - Egg
  (951, 95100, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Capsakid - Rage Powder - Egg
  (951, 95100, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Scovillain - Leer - Level 1
  (952, 95200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scovillain - Fire Fang - Level 1
  (952, 95200, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scovillain - Leafage - Level 1
  (952, 95200, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scovillain - Bite - Level 4
  (952, 95200, 44, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Scovillain - Growth - Level 10
  (952, 95200, 74, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Scovillain - Razor Leaf - Level 13
  (952, 95200, 75, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scovillain - Sunny Day - Level 17
  (952, 95200, 241, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Scovillain - Bullet Seed - Level 21
  (952, 95200, 331, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scovillain - Headbutt - Level 24
  (952, 95200, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Scovillain - Zen Headbutt - Level 28
  (952, 95200, 428, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Scovillain - Worry Seed - Level 33
  (952, 95200, 388, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Scovillain - Crunch - Level 38
  (952, 95200, 242, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Scovillain - Seed Bomb - Level 44
  (952, 95200, 402, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scovillain - Solar Beam - Level 48
  (952, 95200, 76, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Scovillain - Overheat - Level 48
  (952, 95200, 315, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Scovillain - Take Down - TM001
  (952, 95200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Scovillain - Scary Face - TM006
  (952, 95200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Scovillain - Protect - TM007
  (952, 95200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Scovillain - Fire Fang - TM008
  (952, 95200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Scovillain - Thief - TM018
  (952, 95200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Scovillain - Trailblaze - TM020
  (952, 95200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Scovillain - Facade - TM025
  (952, 95200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Scovillain - Magical Leaf - TM033
  (952, 95200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Scovillain - Endure - TM047
  (952, 95200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Scovillain - Sunny Day - TM049
  (952, 95200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Scovillain - Sandstorm - TM051
  (952, 95200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Scovillain - Bullet Seed - TM056
  (952, 95200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Scovillain - Zen Headbutt - TM059
  (952, 95200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Scovillain - Sleep Talk - TM070
  (952, 95200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Scovillain - Seed Bomb - TM071
  (952, 95200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Scovillain - Grass Knot - TM081
  (952, 95200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Scovillain - Stomping Tantrum - TM084
  (952, 95200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Scovillain - Rest - TM085
  (952, 95200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Scovillain - Substitute - TM103
  (952, 95200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Scovillain - Will-O-Wisp - TM107
  (952, 95200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 35),
  -- Scovillain - Crunch - TM108
  (952, 95200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 36),
  -- Scovillain - Giga Drain - TM111
  (952, 95200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Scovillain - Energy Ball - TM119
  (952, 95200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Scovillain - Flamethrower - TM125
  (952, 95200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Scovillain - Helping Hand - TM130
  (952, 95200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Scovillain - Grassy Terrain - TM137
  (952, 95200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 41),
  -- Scovillain - Fire Blast - TM141
  (952, 95200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Scovillain - Giga Impact - TM152
  (952, 95200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Scovillain - Overheat - TM157
  (952, 95200, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 44),
  -- Scovillain - Leaf Storm - TM159
  (952, 95200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 45),
  -- Scovillain - Hyper Beam - TM163
  (952, 95200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Scovillain - Solar Beam - TM168
  (952, 95200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Scovillain - Tera Blast - TM171
  (952, 95200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Scovillain - Leech Seed - Egg
  (952, 95200, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Scovillain - Rollout - Egg
  (952, 95200, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Scovillain - Ingrain - Egg
  (952, 95200, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Scovillain - Worry Seed - Egg
  (952, 95200, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scovillain - Rage Powder - Egg
  (952, 95200, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Scovillain - Flamethrower - Evolution
  (952, 95200, 53, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Scovillain - Spicy Extract - Evolution
  (952, 95200, 858, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Rellor - Tackle - Level 1
  (953, 95300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rellor - Defense Curl - Level 1
  (953, 95300, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rellor - Sand Attack - Level 4
  (953, 95300, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rellor - Struggle Bug - Level 7
  (953, 95300, 522, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Rellor - Rollout - Level 11
  (953, 95300, 205, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Rellor - Mud Shot - Level 15
  (953, 95300, 341, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rellor - Bug Bite - Level 20
  (953, 95300, 450, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rellor - Take Down - Level 24
  (953, 95300, 36, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Rellor - Dig - Level 29
  (953, 95300, 91, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rellor - Lunge - Level 35
  (953, 95300, 679, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Rellor - Take Down - TM001
  (953, 95300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Rellor - Mud-Slap - TM005
  (953, 95300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 12),
  -- Rellor - Protect - TM007
  (953, 95300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Rellor - Struggle Bug - TM015
  (953, 95300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 14),
  -- Rellor - Thief - TM018
  (953, 95300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 15),
  -- Rellor - Pounce - TM021
  (953, 95300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 16),
  -- Rellor - Facade - TM025
  (953, 95300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Rellor - Mud Shot - TM035
  (953, 95300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 18),
  -- Rellor - Rock Tomb - TM036
  (953, 95300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 19),
  -- Rellor - Fling - TM043
  (953, 95300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 20),
  -- Rellor - Endure - TM047
  (953, 95300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Rellor - Dig - TM055
  (953, 95300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 22),
  -- Rellor - Sleep Talk - TM070
  (953, 95300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Rellor - Rest - TM085
  (953, 95300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 24),
  -- Rellor - Leech Life - TM095
  (953, 95300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 25),
  -- Rellor - Gunk Shot - TM102
  (953, 95300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 26),
  -- Rellor - Substitute - TM103
  (953, 95300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 27),
  -- Rellor - Iron Defense - TM104
  (953, 95300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 28),
  -- Rellor - X-Scissor - TM105
  (953, 95300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 29),
  -- Rellor - Sludge Bomb - TM148
  (953, 95300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 30),
  -- Rellor - Bug Buzz - TM162
  (953, 95300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 31),
  -- Rellor - Tera Blast - TM171
  (953, 95300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 32),
  -- Rellor - Recover - Egg
  (953, 95300, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Rellor - Memento - Egg
  (953, 95300, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Rellor - Weather Ball - Egg
  (953, 95300, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Rellor - Cosmic Power - Egg
  (953, 95300, 322, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Rabsca - Tackle - Level 1
  (954, 95400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rabsca - Confusion - Level 1
  (954, 95400, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rabsca - Defense Curl - Level 1
  (954, 95400, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rabsca - Sand Attack - Level 4
  (954, 95400, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Rabsca - Struggle Bug - Level 7
  (954, 95400, 522, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Rabsca - Rollout - Level 11
  (954, 95400, 205, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Rabsca - Psybeam - Level 15
  (954, 95400, 60, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rabsca - Bug Bite - Level 20
  (954, 95400, 450, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Rabsca - Take Down - Level 24
  (954, 95400, 36, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Rabsca - Extrasensory - Level 29
  (954, 95400, 326, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Rabsca - Lunge - Level 35
  (954, 95400, 679, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Rabsca - Power Swap - Level 40
  (954, 95400, 384, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rabsca - Guard Swap - Level 40
  (954, 95400, 385, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Rabsca - Speed Swap - Level 40
  (954, 95400, 683, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Rabsca - Bug Buzz - Level 45
  (954, 95400, 405, 23, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Rabsca - Psychic - Level 50
  (954, 95400, 94, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Rabsca - Take Down - TM001
  (954, 95400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Rabsca - Mud-Slap - TM005
  (954, 95400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Rabsca - Protect - TM007
  (954, 95400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Rabsca - Struggle Bug - TM015
  (954, 95400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 20),
  -- Rabsca - Psybeam - TM016
  (954, 95400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Rabsca - Confuse Ray - TM017
  (954, 95400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Rabsca - Thief - TM018
  (954, 95400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Rabsca - Pounce - TM021
  (954, 95400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Rabsca - Facade - TM025
  (954, 95400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Rabsca - Mud Shot - TM035
  (954, 95400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Rabsca - Rock Tomb - TM036
  (954, 95400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Rabsca - Stored Power - TM041
  (954, 95400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Rabsca - Fling - TM043
  (954, 95400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Rabsca - Endure - TM047
  (954, 95400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Rabsca - Sunny Day - TM049
  (954, 95400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Rabsca - Rain Dance - TM050
  (954, 95400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Rabsca - Sandstorm - TM051
  (954, 95400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Rabsca - Psyshock - TM054
  (954, 95400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Rabsca - Dig - TM055
  (954, 95400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Rabsca - Zen Headbutt - TM059
  (954, 95400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Rabsca - Sleep Talk - TM070
  (954, 95400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Rabsca - Electro Ball - TM072
  (954, 95400, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 38),
  -- Rabsca - Reflect - TM074
  (954, 95400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Rabsca - Light Screen - TM075
  (954, 95400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Rabsca - Dazzling Gleam - TM079
  (954, 95400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 41),
  -- Rabsca - Rest - TM085
  (954, 95400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Rabsca - Imprison - TM092
  (954, 95400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 43),
  -- Rabsca - Leech Life - TM095
  (954, 95400, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 44),
  -- Rabsca - Skill Swap - TM098
  (954, 95400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 45),
  -- Rabsca - Power Gem - TM101
  (954, 95400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 46),
  -- Rabsca - Gunk Shot - TM102
  (954, 95400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 47),
  -- Rabsca - Substitute - TM103
  (954, 95400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Rabsca - Iron Defense - TM104
  (954, 95400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 49),
  -- Rabsca - X-Scissor - TM105
  (954, 95400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 50),
  -- Rabsca - Trick - TM109
  (954, 95400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 51),
  -- Rabsca - Shadow Ball - TM114
  (954, 95400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Rabsca - Energy Ball - TM119
  (954, 95400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 53),
  -- Rabsca - Psychic - TM120
  (954, 95400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Rabsca - Calm Mind - TM129
  (954, 95400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Rabsca - Earth Power - TM133
  (954, 95400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 56),
  -- Rabsca - Psychic Terrain - TM138
  (954, 95400, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 57),
  -- Rabsca - Sludge Bomb - TM148
  (954, 95400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 58),
  -- Rabsca - Giga Impact - TM152
  (954, 95400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Rabsca - Trick Room - TM161
  (954, 95400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 60),
  -- Rabsca - Bug Buzz - TM162
  (954, 95400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 61),
  -- Rabsca - Hyper Beam - TM163
  (954, 95400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Rabsca - Tera Blast - TM171
  (954, 95400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Rabsca - Recover - Egg
  (954, 95400, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rabsca - Memento - Egg
  (954, 95400, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rabsca - Weather Ball - Egg
  (954, 95400, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rabsca - Cosmic Power - Egg
  (954, 95400, 322, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rabsca - Revival Blessing - Evolution
  (954, 95400, 863, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Rabsca - Safeguard - Reminder
  (954, 95400, 219, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Rabsca - Psych Up - Reminder
  (954, 95400, 244, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Flittle - Growl - Level 1
  (955, 95500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flittle - Peck - Level 1
  (955, 95500, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flittle - Confusion - Level 5
  (955, 95500, 93, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Flittle - Baby-Doll Eyes - Level 8
  (955, 95500, 608, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Flittle - Disarming Voice - Level 11
  (955, 95500, 574, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Flittle - Quick Attack - Level 15
  (955, 95500, 98, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Flittle - Psybeam - Level 19
  (955, 95500, 60, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Flittle - Pluck - Level 24
  (955, 95500, 365, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Flittle - Agility - Level 29
  (955, 95500, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Flittle - Uproar - Level 34
  (955, 95500, 253, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Flittle - Take Down - TM001
  (955, 95500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Flittle - Agility - TM004
  (955, 95500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 12),
  -- Flittle - Mud-Slap - TM005
  (955, 95500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Flittle - Protect - TM007
  (955, 95500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Flittle - Psybeam - TM016
  (955, 95500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 15),
  -- Flittle - Confuse Ray - TM017
  (955, 95500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 16),
  -- Flittle - Thief - TM018
  (955, 95500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Flittle - Disarming Voice - TM019
  (955, 95500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Flittle - Pounce - TM021
  (955, 95500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Flittle - Facade - TM025
  (955, 95500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Flittle - Swift - TM032
  (955, 95500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Flittle - Stored Power - TM041
  (955, 95500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 22),
  -- Flittle - Endure - TM047
  (955, 95500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Flittle - Sunny Day - TM049
  (955, 95500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Flittle - Rain Dance - TM050
  (955, 95500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Flittle - Sandstorm - TM051
  (955, 95500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Flittle - Psyshock - TM054
  (955, 95500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 27),
  -- Flittle - Zen Headbutt - TM059
  (955, 95500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Flittle - U-turn - TM060
  (955, 95500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Flittle - Foul Play - TM062
  (955, 95500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Flittle - Sleep Talk - TM070
  (955, 95500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Flittle - Seed Bomb - TM071
  (955, 95500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Flittle - Reflect - TM074
  (955, 95500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Flittle - Light Screen - TM075
  (955, 95500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Flittle - Rest - TM085
  (955, 95500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Flittle - Skill Swap - TM098
  (955, 95500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 36),
  -- Flittle - Substitute - TM103
  (955, 95500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Flittle - Trick - TM109
  (955, 95500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Flittle - Psychic - TM120
  (955, 95500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 39),
  -- Flittle - Calm Mind - TM129
  (955, 95500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Flittle - Helping Hand - TM130
  (955, 95500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Flittle - Baton Pass - TM132
  (955, 95500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Flittle - Psychic Terrain - TM138
  (955, 95500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 43),
  -- Flittle - Trick Room - TM161
  (955, 95500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 44),
  -- Flittle - Tera Blast - TM171
  (955, 95500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Flittle - Hypnosis - Egg
  (955, 95500, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Flittle - Roost - Egg
  (955, 95500, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Flittle - Ally Switch - Egg
  (955, 95500, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Espathra - Growl - Level 1
  (956, 95600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espathra - Peck - Level 1
  (956, 95600, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espathra - Drill Peck - Level 1
  (956, 95600, 65, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espathra - Feather Dance - Level 1
  (956, 95600, 297, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Espathra - Confusion - Level 5
  (956, 95600, 93, 23, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Espathra - Baby-Doll Eyes - Level 8
  (956, 95600, 608, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Espathra - Disarming Voice - Level 11
  (956, 95600, 574, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Espathra - Quick Attack - Level 15
  (956, 95600, 98, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Espathra - Psybeam - Level 19
  (956, 95600, 60, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Espathra - Pluck - Level 24
  (956, 95600, 365, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Espathra - Agility - Level 29
  (956, 95600, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Espathra - Uproar - Level 34
  (956, 95600, 253, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Espathra - Dazzling Gleam - Level 43
  (956, 95600, 605, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Espathra - Psychic - Level 49
  (956, 95600, 94, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Espathra - Last Resort - Level 54
  (956, 95600, 387, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Espathra - Take Down - TM001
  (956, 95600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Espathra - Agility - TM004
  (956, 95600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Espathra - Mud-Slap - TM005
  (956, 95600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Espathra - Protect - TM007
  (956, 95600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Espathra - Low Kick - TM012
  (956, 95600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Espathra - Psybeam - TM016
  (956, 95600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Espathra - Confuse Ray - TM017
  (956, 95600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Espathra - Thief - TM018
  (956, 95600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Espathra - Disarming Voice - TM019
  (956, 95600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 24),
  -- Espathra - Pounce - TM021
  (956, 95600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 25),
  -- Espathra - Facade - TM025
  (956, 95600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Espathra - Aerial Ace - TM027
  (956, 95600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Espathra - Hex - TM029
  (956, 95600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 28),
  -- Espathra - Swift - TM032
  (956, 95600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Espathra - Stored Power - TM041
  (956, 95600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 30),
  -- Espathra - Night Shade - TM042
  (956, 95600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 31),
  -- Espathra - Endure - TM047
  (956, 95600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Espathra - Sunny Day - TM049
  (956, 95600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Espathra - Rain Dance - TM050
  (956, 95600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Espathra - Sandstorm - TM051
  (956, 95600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Espathra - Psyshock - TM054
  (956, 95600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 36),
  -- Espathra - Zen Headbutt - TM059
  (956, 95600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Espathra - U-turn - TM060
  (956, 95600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 38),
  -- Espathra - Foul Play - TM062
  (956, 95600, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 39),
  -- Espathra - Body Slam - TM066
  (956, 95600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Espathra - Sleep Talk - TM070
  (956, 95600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Espathra - Seed Bomb - TM071
  (956, 95600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 42),
  -- Espathra - Reflect - TM074
  (956, 95600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Espathra - Light Screen - TM075
  (956, 95600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Espathra - Dazzling Gleam - TM079
  (956, 95600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 45),
  -- Espathra - Rest - TM085
  (956, 95600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Espathra - Flash Cannon - TM093
  (956, 95600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 47),
  -- Espathra - Skill Swap - TM098
  (956, 95600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 48),
  -- Espathra - Substitute - TM103
  (956, 95600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Espathra - Trick - TM109
  (956, 95600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 50),
  -- Espathra - Shadow Ball - TM114
  (956, 95600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Espathra - Hyper Voice - TM117
  (956, 95600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 52),
  -- Espathra - Energy Ball - TM119
  (956, 95600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 53),
  -- Espathra - Psychic - TM120
  (956, 95600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Espathra - Calm Mind - TM129
  (956, 95600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Espathra - Helping Hand - TM130
  (956, 95600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Espathra - Baton Pass - TM132
  (956, 95600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 57),
  -- Espathra - Psychic Terrain - TM138
  (956, 95600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 58),
  -- Espathra - Giga Impact - TM152
  (956, 95600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Espathra - Trick Room - TM161
  (956, 95600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 60),
  -- Espathra - Hyper Beam - TM163
  (956, 95600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Espathra - Brave Bird - TM164
  (956, 95600, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 62),
  -- Espathra - Tera Blast - TM171
  (956, 95600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Espathra - Hypnosis - Egg
  (956, 95600, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Espathra - Roost - Egg
  (956, 95600, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Espathra - Ally Switch - Egg
  (956, 95600, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Espathra - Lumina Crash - Evolution
  (956, 95600, 855, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Tinkatink - Astonish - Level 1
  (957, 95700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tinkatink - Fairy Wind - Level 1
  (957, 95700, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tinkatink - Baby-Doll Eyes - Level 5
  (957, 95700, 608, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tinkatink - Metal Claw - Level 8
  (957, 95700, 232, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tinkatink - Covet - Level 11
  (957, 95700, 343, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tinkatink - Rock Smash - Level 14
  (957, 95700, 249, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tinkatink - Draining Kiss - Level 17
  (957, 95700, 577, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tinkatink - Sweet Kiss - Level 21
  (957, 95700, 186, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Tinkatink - Brutal Swing - Level 24
  (957, 95700, 693, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tinkatink - Slam - Level 27
  (957, 95700, 21, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tinkatink - Flash Cannon - Level 31
  (957, 95700, 430, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tinkatink - Play Rough - Level 35
  (957, 95700, 583, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Tinkatink - Fake Out - Level 39
  (957, 95700, 252, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Tinkatink - Flatter - Level 43
  (957, 95700, 260, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tinkatink - Skitter Smack - Level 47
  (957, 95700, 806, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tinkatink - Knock Off - Level 52
  (957, 95700, 282, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Tinkatink - Fake Tears - TM003
  (957, 95700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Tinkatink - Protect - TM007
  (957, 95700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Tinkatink - Thief - TM018
  (957, 95700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Tinkatink - Pounce - TM021
  (957, 95700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Tinkatink - Facade - TM025
  (957, 95700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tinkatink - Metal Claw - TM031
  (957, 95700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Tinkatink - Rock Tomb - TM036
  (957, 95700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Tinkatink - Draining Kiss - TM037
  (957, 95700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Tinkatink - Fling - TM043
  (957, 95700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Tinkatink - Endure - TM047
  (957, 95700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Tinkatink - Foul Play - TM062
  (957, 95700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Tinkatink - Sleep Talk - TM070
  (957, 95700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Tinkatink - Reflect - TM074
  (957, 95700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Tinkatink - Light Screen - TM075
  (957, 95700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Tinkatink - Metronome - TM080
  (957, 95700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 31),
  -- Tinkatink - Thunder Wave - TM082
  (957, 95700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Tinkatink - Rest - TM085
  (957, 95700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Tinkatink - Rock Slide - TM086
  (957, 95700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Tinkatink - Swords Dance - TM088
  (957, 95700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 35),
  -- Tinkatink - Flash Cannon - TM093
  (957, 95700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 36),
  -- Tinkatink - Skill Swap - TM098
  (957, 95700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 37),
  -- Tinkatink - Substitute - TM103
  (957, 95700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Tinkatink - Stealth Rock - TM116
  (957, 95700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Tinkatink - Encore - TM122
  (957, 95700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 40),
  -- Tinkatink - Play Rough - TM127
  (957, 95700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 41),
  -- Tinkatink - Helping Hand - TM130
  (957, 95700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Tinkatink - Stone Edge - TM150
  (957, 95700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 43),
  -- Tinkatink - Steel Beam - TM170
  (957, 95700, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 44),
  -- Tinkatink - Tera Blast - TM171
  (957, 95700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Tinkatink - Feint - Egg
  (957, 95700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tinkatink - Quash - Egg
  (957, 95700, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tinkatink - Ice Hammer - Egg
  (957, 95700, 665, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tinkatuff - Astonish - Level 1
  (958, 95800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tinkatuff - Fairy Wind - Level 1
  (958, 95800, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tinkatuff - Baby-Doll Eyes - Level 5
  (958, 95800, 608, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tinkatuff - Metal Claw - Level 8
  (958, 95800, 232, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tinkatuff - Covet - Level 11
  (958, 95800, 343, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tinkatuff - Rock Smash - Level 14
  (958, 95800, 249, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tinkatuff - Draining Kiss - Level 17
  (958, 95800, 577, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tinkatuff - Sweet Kiss - Level 21
  (958, 95800, 186, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Tinkatuff - Brutal Swing - Level 24
  (958, 95800, 693, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tinkatuff - Slam - Level 27
  (958, 95800, 21, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tinkatuff - Flash Cannon - Level 31
  (958, 95800, 430, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tinkatuff - Play Rough - Level 35
  (958, 95800, 583, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Tinkatuff - Fake Out - Level 39
  (958, 95800, 252, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Tinkatuff - Flatter - Level 43
  (958, 95800, 260, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tinkatuff - Skitter Smack - Level 47
  (958, 95800, 806, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tinkatuff - Knock Off - Level 52
  (958, 95800, 282, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Tinkatuff - Fake Tears - TM003
  (958, 95800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Tinkatuff - Protect - TM007
  (958, 95800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Tinkatuff - Thief - TM018
  (958, 95800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Tinkatuff - Pounce - TM021
  (958, 95800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Tinkatuff - Facade - TM025
  (958, 95800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tinkatuff - Metal Claw - TM031
  (958, 95800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Tinkatuff - Rock Tomb - TM036
  (958, 95800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Tinkatuff - Draining Kiss - TM037
  (958, 95800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Tinkatuff - Fling - TM043
  (958, 95800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Tinkatuff - Endure - TM047
  (958, 95800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Tinkatuff - Brick Break - TM058
  (958, 95800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Tinkatuff - Foul Play - TM062
  (958, 95800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 28),
  -- Tinkatuff - Sleep Talk - TM070
  (958, 95800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Tinkatuff - Reflect - TM074
  (958, 95800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Tinkatuff - Light Screen - TM075
  (958, 95800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Tinkatuff - Metronome - TM080
  (958, 95800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 32),
  -- Tinkatuff - Thunder Wave - TM082
  (958, 95800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Tinkatuff - Rest - TM085
  (958, 95800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Tinkatuff - Rock Slide - TM086
  (958, 95800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Tinkatuff - Swords Dance - TM088
  (958, 95800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Tinkatuff - Flash Cannon - TM093
  (958, 95800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Tinkatuff - Skill Swap - TM098
  (958, 95800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Tinkatuff - Substitute - TM103
  (958, 95800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Tinkatuff - Stealth Rock - TM116
  (958, 95800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 40),
  -- Tinkatuff - Encore - TM122
  (958, 95800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 41),
  -- Tinkatuff - Play Rough - TM127
  (958, 95800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Tinkatuff - Helping Hand - TM130
  (958, 95800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Tinkatuff - Stone Edge - TM150
  (958, 95800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Tinkatuff - Steel Beam - TM170
  (958, 95800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 45),
  -- Tinkatuff - Tera Blast - TM171
  (958, 95800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Tinkatuff - Feint - Egg
  (958, 95800, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tinkatuff - Quash - Egg
  (958, 95800, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tinkatuff - Ice Hammer - Egg
  (958, 95800, 665, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tinkaton - Astonish - Level 1
  (959, 95900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tinkaton - Fairy Wind - Level 1
  (959, 95900, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tinkaton - Baby-Doll Eyes - Level 5
  (959, 95900, 608, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tinkaton - Metal Claw - Level 8
  (959, 95900, 232, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tinkaton - Covet - Level 11
  (959, 95900, 343, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tinkaton - Rock Smash - Level 14
  (959, 95900, 249, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tinkaton - Draining Kiss - Level 17
  (959, 95900, 577, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Tinkaton - Sweet Kiss - Level 21
  (959, 95900, 186, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Tinkaton - Brutal Swing - Level 24
  (959, 95900, 693, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tinkaton - Slam - Level 27
  (959, 95900, 21, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tinkaton - Flash Cannon - Level 31
  (959, 95900, 430, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tinkaton - Play Rough - Level 35
  (959, 95900, 583, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Tinkaton - Fake Out - Level 39
  (959, 95900, 252, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Tinkaton - Flatter - Level 43
  (959, 95900, 260, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tinkaton - Skitter Smack - Level 47
  (959, 95900, 806, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tinkaton - Knock Off - Level 52
  (959, 95900, 282, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Tinkaton - Fake Tears - TM003
  (959, 95900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Tinkaton - Protect - TM007
  (959, 95900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Tinkaton - Thief - TM018
  (959, 95900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Tinkaton - Pounce - TM021
  (959, 95900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Tinkaton - Facade - TM025
  (959, 95900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tinkaton - Bulldoze - TM028
  (959, 95900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Tinkaton - Metal Claw - TM031
  (959, 95900, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Tinkaton - Rock Tomb - TM036
  (959, 95900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Tinkaton - Draining Kiss - TM037
  (959, 95900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 25),
  -- Tinkaton - Fling - TM043
  (959, 95900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Tinkaton - Endure - TM047
  (959, 95900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Tinkaton - Brick Break - TM058
  (959, 95900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Tinkaton - Foul Play - TM062
  (959, 95900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Tinkaton - Sleep Talk - TM070
  (959, 95900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Tinkaton - Reflect - TM074
  (959, 95900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Tinkaton - Light Screen - TM075
  (959, 95900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Tinkaton - Metronome - TM080
  (959, 95900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 33),
  -- Tinkaton - Thunder Wave - TM082
  (959, 95900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Tinkaton - Rest - TM085
  (959, 95900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Tinkaton - Rock Slide - TM086
  (959, 95900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Tinkaton - Swords Dance - TM088
  (959, 95900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Tinkaton - Flash Cannon - TM093
  (959, 95900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Tinkaton - Skill Swap - TM098
  (959, 95900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 39),
  -- Tinkaton - Substitute - TM103
  (959, 95900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Tinkaton - Stealth Rock - TM116
  (959, 95900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Tinkaton - Heavy Slam - TM121
  (959, 95900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 42),
  -- Tinkaton - Encore - TM122
  (959, 95900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Tinkaton - Play Rough - TM127
  (959, 95900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 44),
  -- Tinkaton - Helping Hand - TM130
  (959, 95900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Tinkaton - Stone Edge - TM150
  (959, 95900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Tinkaton - Steel Beam - TM170
  (959, 95900, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 47),
  -- Tinkaton - Tera Blast - TM171
  (959, 95900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Tinkaton - Feint - Egg
  (959, 95900, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tinkaton - Quash - Egg
  (959, 95900, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tinkaton - Ice Hammer - Egg
  (959, 95900, 665, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tinkaton - Gigaton Hammer - Evolution
  (959, 95900, 893, 23, NULL, 7, NULL, NULL, NULL, NULL, 52),
  -- Wiglett - Sand Attack - Level 1
  (960, 96000, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wiglett - Water Gun - Level 1
  (960, 96000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wiglett - Mud-Slap - Level 4
  (960, 96000, 189, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wiglett - Wrap - Level 8
  (960, 96000, 35, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wiglett - Aqua Jet - Level 12
  (960, 96000, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wiglett - Slam - Level 20
  (960, 96000, 21, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Wiglett - Water Pulse - Level 20
  (960, 96000, 352, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Wiglett - Headbutt - Level 24
  (960, 96000, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wiglett - Dig - Level 28
  (960, 96000, 91, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Wiglett - Sucker Punch - Level 32
  (960, 96000, 389, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Wiglett - Throat Chop - Level 36
  (960, 96000, 675, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Wiglett - Liquidation - Level 40
  (960, 96000, 710, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wiglett - Take Down - TM001
  (960, 96000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Wiglett - Agility - TM004
  (960, 96000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Wiglett - Mud-Slap - TM005
  (960, 96000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Wiglett - Protect - TM007
  (960, 96000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Wiglett - Water Pulse - TM011
  (960, 96000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Wiglett - Chilling Water - TM022
  (960, 96000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Wiglett - Facade - TM025
  (960, 96000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Wiglett - Bulldoze - TM028
  (960, 96000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Wiglett - Swift - TM032
  (960, 96000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Wiglett - Mud Shot - TM035
  (960, 96000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Wiglett - Endure - TM047
  (960, 96000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Wiglett - Rain Dance - TM050
  (960, 96000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Wiglett - Sandstorm - TM051
  (960, 96000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 25),
  -- Wiglett - Dig - TM055
  (960, 96000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Wiglett - Foul Play - TM062
  (960, 96000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Wiglett - Sleep Talk - TM070
  (960, 96000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Wiglett - Stomping Tantrum - TM084
  (960, 96000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 29),
  -- Wiglett - Rest - TM085
  (960, 96000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Wiglett - Substitute - TM103
  (960, 96000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Wiglett - Liquidation - TM110
  (960, 96000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Wiglett - Surf - TM123
  (960, 96000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 33),
  -- Wiglett - Helping Hand - TM130
  (960, 96000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 34),
  -- Wiglett - Earth Power - TM133
  (960, 96000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 35),
  -- Wiglett - Ice Beam - TM135
  (960, 96000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 36),
  -- Wiglett - Hydro Pump - TM142
  (960, 96000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 37),
  -- Wiglett - Blizzard - TM143
  (960, 96000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 38),
  -- Wiglett - Tera Blast - TM171
  (960, 96000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Wiglett - Memento - Egg
  (960, 96000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wiglett - Final Gambit - Egg
  (960, 96000, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wugtrio - Sand Attack - Level 1
  (961, 96100, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wugtrio - Wrap - Level 1
  (961, 96100, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wugtrio - Water Gun - Level 1
  (961, 96100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wugtrio - Mud-Slap - Level 1
  (961, 96100, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wugtrio - Aqua Jet - Level 12
  (961, 96100, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wugtrio - Slam - Level 16
  (961, 96100, 21, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Wugtrio - Water Pulse - Level 20
  (961, 96100, 352, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Wugtrio - Headbutt - Level 24
  (961, 96100, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wugtrio - Triple Dive - Level 30
  (961, 96100, 865, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Wugtrio - Dig - Level 36
  (961, 96100, 91, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Wugtrio - Sucker Punch - Level 42
  (961, 96100, 389, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Wugtrio - Throat Chop - Level 48
  (961, 96100, 675, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Wugtrio - Liquidation - Level 54
  (961, 96100, 710, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Wugtrio - Take Down - TM001
  (961, 96100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Wugtrio - Agility - TM004
  (961, 96100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Wugtrio - Mud-Slap - TM005
  (961, 96100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Wugtrio - Protect - TM007
  (961, 96100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Wugtrio - Water Pulse - TM011
  (961, 96100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Wugtrio - Chilling Water - TM022
  (961, 96100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Wugtrio - Facade - TM025
  (961, 96100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Wugtrio - Bulldoze - TM028
  (961, 96100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Wugtrio - Swift - TM032
  (961, 96100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Wugtrio - Mud Shot - TM035
  (961, 96100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Wugtrio - Endure - TM047
  (961, 96100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Wugtrio - Rain Dance - TM050
  (961, 96100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Wugtrio - Sandstorm - TM051
  (961, 96100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Wugtrio - Dig - TM055
  (961, 96100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Wugtrio - Foul Play - TM062
  (961, 96100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 28),
  -- Wugtrio - Sleep Talk - TM070
  (961, 96100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Wugtrio - Stomping Tantrum - TM084
  (961, 96100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 30),
  -- Wugtrio - Rest - TM085
  (961, 96100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Wugtrio - Substitute - TM103
  (961, 96100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Wugtrio - Liquidation - TM110
  (961, 96100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 33),
  -- Wugtrio - Surf - TM123
  (961, 96100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 34),
  -- Wugtrio - Helping Hand - TM130
  (961, 96100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 35),
  -- Wugtrio - Earth Power - TM133
  (961, 96100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 36),
  -- Wugtrio - Ice Beam - TM135
  (961, 96100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Wugtrio - Hydro Pump - TM142
  (961, 96100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 38),
  -- Wugtrio - Blizzard - TM143
  (961, 96100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 39),
  -- Wugtrio - Giga Impact - TM152
  (961, 96100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Wugtrio - Hyper Beam - TM163
  (961, 96100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 41),
  -- Wugtrio - Tera Blast - TM171
  (961, 96100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Wugtrio - Memento - Egg
  (961, 96100, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wugtrio - Final Gambit - Egg
  (961, 96100, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bombirdier - Wing Attack - Level 1
  (962, 96200, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bombirdier - Leer - Level 1
  (962, 96200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bombirdier - Peck - Level 1
  (962, 96200, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bombirdier - Memento - Level 1
  (962, 96200, 262, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bombirdier - Hone Claws - Level 1
  (962, 96200, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bombirdier - Thief - Level 7
  (962, 96200, 168, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Bombirdier - Rock Throw - Level 11
  (962, 96200, 88, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Bombirdier - Whirlwind - Level 16
  (962, 96200, 18, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Bombirdier - Pluck - Level 20
  (962, 96200, 365, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Bombirdier - Torment - Level 24
  (962, 96200, 259, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Bombirdier - Rock Tomb - Level 29
  (962, 96200, 317, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Bombirdier - Payback - Level 36
  (962, 96200, 371, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bombirdier - Dual Wingbeat - Level 42
  (962, 96200, 814, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Bombirdier - Rock Slide - Level 47
  (962, 96200, 157, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Bombirdier - Knock Off - Level 53
  (962, 96200, 282, 23, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Bombirdier - Parting Shot - Level 60
  (962, 96200, 575, 23, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Bombirdier - Take Down - TM001
  (962, 96200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Bombirdier - Scary Face - TM006
  (962, 96200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Bombirdier - Protect - TM007
  (962, 96200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Bombirdier - Acrobatics - TM014
  (962, 96200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Bombirdier - Thief - TM018
  (962, 96200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Bombirdier - Facade - TM025
  (962, 96200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Bombirdier - Aerial Ace - TM027
  (962, 96200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Bombirdier - Snarl - TM030
  (962, 96200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Bombirdier - Icy Wind - TM034
  (962, 96200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Bombirdier - Rock Tomb - TM036
  (962, 96200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Bombirdier - Air Cutter - TM040
  (962, 96200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Bombirdier - Endure - TM047
  (962, 96200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Bombirdier - Sunny Day - TM049
  (962, 96200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Bombirdier - Rain Dance - TM050
  (962, 96200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Bombirdier - Sandstorm - TM051
  (962, 96200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Bombirdier - U-turn - TM060
  (962, 96200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Bombirdier - Foul Play - TM062
  (962, 96200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Bombirdier - Air Slash - TM065
  (962, 96200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 34),
  -- Bombirdier - Sleep Talk - TM070
  (962, 96200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Bombirdier - Rock Blast - TM076
  (962, 96200, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 36),
  -- Bombirdier - Rest - TM085
  (962, 96200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Bombirdier - Rock Slide - TM086
  (962, 96200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Bombirdier - Taunt - TM087
  (962, 96200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Bombirdier - Dark Pulse - TM094
  (962, 96200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Bombirdier - Fly - TM097
  (962, 96200, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 41),
  -- Bombirdier - Power Gem - TM101
  (962, 96200, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 42),
  -- Bombirdier - Substitute - TM103
  (962, 96200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Bombirdier - Drill Run - TM106
  (962, 96200, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 44),
  -- Bombirdier - Tailwind - TM113
  (962, 96200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 45),
  -- Bombirdier - Stealth Rock - TM116
  (962, 96200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Bombirdier - Hyper Voice - TM117
  (962, 96200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 47),
  -- Bombirdier - Heat Wave - TM118
  (962, 96200, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 48),
  -- Bombirdier - Nasty Plot - TM140
  (962, 96200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Bombirdier - Stone Edge - TM150
  (962, 96200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Bombirdier - Giga Impact - TM152
  (962, 96200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Bombirdier - Hurricane - TM160
  (962, 96200, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 52),
  -- Bombirdier - Hyper Beam - TM163
  (962, 96200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Bombirdier - Brave Bird - TM164
  (962, 96200, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 54),
  -- Bombirdier - Tera Blast - TM171
  (962, 96200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Bombirdier - Sky Attack - Egg
  (962, 96200, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bombirdier - Feather Dance - Egg
  (962, 96200, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Bombirdier - Roost - Egg
  (962, 96200, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Bombirdier - Sucker Punch - Egg
  (962, 96200, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bombirdier - Power Trip - Egg
  (962, 96200, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Finizen - Supersonic - Level 1
  (963, 96300, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Finizen - Water Gun - Level 1
  (963, 96300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Finizen - Astonish - Level 7
  (963, 96300, 310, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Finizen - Focus Energy - Level 10
  (963, 96300, 116, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Finizen - Aqua Jet - Level 13
  (963, 96300, 453, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Finizen - Double Hit - Level 17
  (963, 96300, 458, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Finizen - Dive - Level 21
  (963, 96300, 291, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Finizen - Charm - Level 25
  (963, 96300, 204, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Finizen - Acrobatics - Level 29
  (963, 96300, 512, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Finizen - Encore - Level 34
  (963, 96300, 227, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Finizen - Aqua Tail - Level 39
  (963, 96300, 401, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Finizen - Mist - Level 44
  (963, 96300, 54, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Finizen - Hydro Pump - Level 50
  (963, 96300, 56, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Finizen - Take Down - TM001
  (963, 96300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Finizen - Charm - TM002
  (963, 96300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Finizen - Agility - TM004
  (963, 96300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Finizen - Protect - TM007
  (963, 96300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Finizen - Water Pulse - TM011
  (963, 96300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Finizen - Acrobatics - TM014
  (963, 96300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Finizen - Disarming Voice - TM019
  (963, 96300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 20),
  -- Finizen - Chilling Water - TM022
  (963, 96300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Finizen - Facade - TM025
  (963, 96300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Finizen - Swift - TM032
  (963, 96300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Finizen - Icy Wind - TM034
  (963, 96300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Finizen - Draining Kiss - TM037
  (963, 96300, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 25),
  -- Finizen - Fling - TM043
  (963, 96300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Finizen - Endure - TM047
  (963, 96300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Finizen - Rain Dance - TM050
  (963, 96300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Finizen - Zen Headbutt - TM059
  (963, 96300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Finizen - Body Slam - TM066
  (963, 96300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Finizen - Sleep Talk - TM070
  (963, 96300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Finizen - Waterfall - TM077
  (963, 96300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 32),
  -- Finizen - Rest - TM085
  (963, 96300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Finizen - Substitute - TM103
  (963, 96300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Finizen - Liquidation - TM110
  (963, 96300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 35),
  -- Finizen - Encore - TM122
  (963, 96300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 36),
  -- Finizen - Surf - TM123
  (963, 96300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 37),
  -- Finizen - Helping Hand - TM130
  (963, 96300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Finizen - Ice Beam - TM135
  (963, 96300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Finizen - Hydro Pump - TM142
  (963, 96300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Finizen - Blizzard - TM143
  (963, 96300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Finizen - Tera Blast - TM171
  (963, 96300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Finizen - Counter - Egg
  (963, 96300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Finizen - Haze - Egg
  (963, 96300, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Finizen - Tickle - Egg
  (963, 96300, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Finizen - Bounce - Egg
  (963, 96300, 340, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Finizen - Boomburst - Egg
  (963, 96300, 586, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Palafin - Supersonic - Level 1
  (964, 96400, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palafin - Water Gun - Level 1
  (964, 96400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palafin - Jet Punch - Level 1
  (964, 96400, 857, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palafin - Astonish - Level 7
  (964, 96400, 310, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Palafin - Focus Energy - Level 10
  (964, 96400, 116, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Palafin - Aqua Jet - Level 13
  (964, 96400, 453, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Palafin - Double Hit - Level 17
  (964, 96400, 458, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Palafin - Dive - Level 21
  (964, 96400, 291, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Palafin - Charm - Level 25
  (964, 96400, 204, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Palafin - Acrobatics - Level 29
  (964, 96400, 512, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Palafin - Encore - Level 34
  (964, 96400, 227, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Palafin - Aqua Tail - Level 39
  (964, 96400, 401, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Palafin - Mist - Level 44
  (964, 96400, 54, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Palafin - Hydro Pump - Level 50
  (964, 96400, 56, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Palafin - Focus Punch - Level 55
  (964, 96400, 264, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Palafin - Wave Crash - Level 61
  (964, 96400, 834, 23, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Palafin - Take Down - TM001
  (964, 96400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Palafin - Charm - TM002
  (964, 96400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Palafin - Agility - TM004
  (964, 96400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Palafin - Protect - TM007
  (964, 96400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Palafin - Water Pulse - TM011
  (964, 96400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Palafin - Acrobatics - TM014
  (964, 96400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Palafin - Disarming Voice - TM019
  (964, 96400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 23),
  -- Palafin - Chilling Water - TM022
  (964, 96400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Palafin - Facade - TM025
  (964, 96400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Palafin - Swift - TM032
  (964, 96400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Palafin - Icy Wind - TM034
  (964, 96400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Palafin - Draining Kiss - TM037
  (964, 96400, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 28),
  -- Palafin - Fling - TM043
  (964, 96400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Palafin - Endure - TM047
  (964, 96400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Palafin - Rain Dance - TM050
  (964, 96400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Palafin - Zen Headbutt - TM059
  (964, 96400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Palafin - Bulk Up - TM064
  (964, 96400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 33),
  -- Palafin - Body Slam - TM066
  (964, 96400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Palafin - Ice Punch - TM069
  (964, 96400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Palafin - Sleep Talk - TM070
  (964, 96400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Palafin - Drain Punch - TM073
  (964, 96400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 37),
  -- Palafin - Waterfall - TM077
  (964, 96400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 38),
  -- Palafin - Grass Knot - TM081
  (964, 96400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Palafin - Rest - TM085
  (964, 96400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Palafin - Taunt - TM087
  (964, 96400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Palafin - Iron Head - TM099
  (964, 96400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Palafin - Substitute - TM103
  (964, 96400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Palafin - Liquidation - TM110
  (964, 96400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 44),
  -- Palafin - Aura Sphere - TM112
  (964, 96400, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 45),
  -- Palafin - Hyper Voice - TM117
  (964, 96400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Palafin - Encore - TM122
  (964, 96400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Palafin - Surf - TM123
  (964, 96400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Palafin - Helping Hand - TM130
  (964, 96400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Palafin - Reversal - TM134
  (964, 96400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Palafin - Ice Beam - TM135
  (964, 96400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 51),
  -- Palafin - Hydro Pump - TM142
  (964, 96400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 52),
  -- Palafin - Blizzard - TM143
  (964, 96400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Palafin - Giga Impact - TM152
  (964, 96400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Palafin - Outrage - TM156
  (964, 96400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 55),
  -- Palafin - Focus Blast - TM158
  (964, 96400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Palafin - Hyper Beam - TM163
  (964, 96400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Palafin - Close Combat - TM167
  (964, 96400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 58),
  -- Palafin - Tera Blast - TM171
  (964, 96400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Palafin - Counter - Egg
  (964, 96400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Palafin - Haze - Egg
  (964, 96400, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Palafin - Tickle - Egg
  (964, 96400, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Palafin - Bounce - Egg
  (964, 96400, 340, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Palafin - Boomburst - Egg
  (964, 96400, 586, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Palafin - Flip Turn - Evolution
  (964, 96400, 812, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Varoom - Lick - Level 1
  (965, 96500, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Varoom - Poison Gas - Level 1
  (965, 96500, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Varoom - Smog - Level 4
  (965, 96500, 123, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Varoom - Taunt - Level 7
  (965, 96500, 269, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Varoom - Assurance - Level 10
  (965, 96500, 372, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Varoom - Sludge - Level 13
  (965, 96500, 124, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Varoom - Gyro Ball - Level 17
  (965, 96500, 360, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Varoom - Headbutt - Level 21
  (965, 96500, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Varoom - Screech - Level 25
  (965, 96500, 103, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Varoom - Iron Head - Level 28
  (965, 96500, 442, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Varoom - Swagger - Level 32
  (965, 96500, 207, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Varoom - Poison Jab - Level 36
  (965, 96500, 398, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Varoom - Uproar - Level 41
  (965, 96500, 253, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Varoom - Spin Out - Level 46
  (965, 96500, 859, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Varoom - Gunk Shot - Level 50
  (965, 96500, 441, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Varoom - Take Down - TM001
  (965, 96500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Varoom - Scary Face - TM006
  (965, 96500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Varoom - Protect - TM007
  (965, 96500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Varoom - Acid Spray - TM013
  (965, 96500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Varoom - Thief - TM018
  (965, 96500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Varoom - Facade - TM025
  (965, 96500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Varoom - Bulldoze - TM028
  (965, 96500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Varoom - Venoshock - TM045
  (965, 96500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Varoom - Endure - TM047
  (965, 96500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Varoom - Sunny Day - TM049
  (965, 96500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Varoom - Rain Dance - TM050
  (965, 96500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Varoom - Sandstorm - TM051
  (965, 96500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Varoom - Zen Headbutt - TM059
  (965, 96500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Varoom - Body Slam - TM066
  (965, 96500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Varoom - Sleep Talk - TM070
  (965, 96500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Varoom - Poison Jab - TM083
  (965, 96500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 31),
  -- Varoom - Rest - TM085
  (965, 96500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Varoom - Taunt - TM087
  (965, 96500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Varoom - Toxic Spikes - TM091
  (965, 96500, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 34),
  -- Varoom - Flash Cannon - TM093
  (965, 96500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Varoom - Iron Head - TM099
  (965, 96500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Varoom - Gunk Shot - TM102
  (965, 96500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 37),
  -- Varoom - Substitute - TM103
  (965, 96500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Varoom - Iron Defense - TM104
  (965, 96500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Varoom - Sludge Bomb - TM148
  (965, 96500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Varoom - Steel Beam - TM170
  (965, 96500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 41),
  -- Varoom - Tera Blast - TM171
  (965, 96500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Varoom - Toxic - Egg
  (965, 96500, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Varoom - Haze - Egg
  (965, 96500, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Varoom - Self-Destruct - Egg
  (965, 96500, 120, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Varoom - Torment - Egg
  (965, 96500, 259, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Varoom - Parting Shot - Egg
  (965, 96500, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Revavroom - Lick - Level 1
  (966, 96600, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Revavroom - Poison Gas - Level 1
  (966, 96600, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Revavroom - Magnet Rise - Level 1
  (966, 96600, 393, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Revavroom - Smog - Level 4
  (966, 96600, 123, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Revavroom - Taunt - Level 7
  (966, 96600, 269, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Revavroom - Assurance - Level 10
  (966, 96600, 372, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Revavroom - Sludge - Level 13
  (966, 96600, 124, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Revavroom - Gyro Ball - Level 17
  (966, 96600, 360, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Revavroom - Headbutt - Level 21
  (966, 96600, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Revavroom - Screech - Level 25
  (966, 96600, 103, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Revavroom - Iron Head - Level 28
  (966, 96600, 442, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Revavroom - Swagger - Level 32
  (966, 96600, 207, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Revavroom - Poison Jab - Level 36
  (966, 96600, 398, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Revavroom - Uproar - Level 46
  (966, 96600, 253, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Revavroom - Spin Out - Level 52
  (966, 96600, 859, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Revavroom - Gunk Shot - Level 58
  (966, 96600, 441, 23, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Revavroom - Take Down - TM001
  (966, 96600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Revavroom - Scary Face - TM006
  (966, 96600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Revavroom - Protect - TM007
  (966, 96600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Revavroom - Acid Spray - TM013
  (966, 96600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Revavroom - Thief - TM018
  (966, 96600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Revavroom - Facade - TM025
  (966, 96600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Revavroom - Bulldoze - TM028
  (966, 96600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Revavroom - Venoshock - TM045
  (966, 96600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 24),
  -- Revavroom - Endure - TM047
  (966, 96600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Revavroom - Sunny Day - TM049
  (966, 96600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Revavroom - Rain Dance - TM050
  (966, 96600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Revavroom - Sandstorm - TM051
  (966, 96600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Revavroom - Zen Headbutt - TM059
  (966, 96600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Revavroom - Body Slam - TM066
  (966, 96600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Revavroom - Sleep Talk - TM070
  (966, 96600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Revavroom - Poison Jab - TM083
  (966, 96600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 32),
  -- Revavroom - Rest - TM085
  (966, 96600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Revavroom - Taunt - TM087
  (966, 96600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Revavroom - Toxic Spikes - TM091
  (966, 96600, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 35),
  -- Revavroom - Flash Cannon - TM093
  (966, 96600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 36),
  -- Revavroom - Iron Head - TM099
  (966, 96600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Revavroom - Gunk Shot - TM102
  (966, 96600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 38),
  -- Revavroom - Substitute - TM103
  (966, 96600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Revavroom - Iron Defense - TM104
  (966, 96600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Revavroom - Heavy Slam - TM121
  (966, 96600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 41),
  -- Revavroom - Sludge Bomb - TM148
  (966, 96600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 42),
  -- Revavroom - Giga Impact - TM152
  (966, 96600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Revavroom - Overheat - TM157
  (966, 96600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 44),
  -- Revavroom - Hyper Beam - TM163
  (966, 96600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Revavroom - Steel Beam - TM170
  (966, 96600, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 46),
  -- Revavroom - Tera Blast - TM171
  (966, 96600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Revavroom - Toxic - Egg
  (966, 96600, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Revavroom - Haze - Egg
  (966, 96600, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Revavroom - Self-Destruct - Egg
  (966, 96600, 120, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Revavroom - Torment - Egg
  (966, 96600, 259, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Revavroom - Parting Shot - Egg
  (966, 96600, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Revavroom - Shift Gear - Evolution
  (966, 96600, 508, 23, NULL, 7, NULL, NULL, NULL, NULL, 53),
  -- Cyclizar - Tackle - Level 1
  (967, 96700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyclizar - Growl - Level 1
  (967, 96700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyclizar - Rapid Spin - Level 7
  (967, 96700, 229, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Cyclizar - Taunt - Level 11
  (967, 96700, 269, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Cyclizar - Breaking Swipe - Level 14
  (967, 96700, 784, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Cyclizar - Quick Attack - Level 18
  (967, 96700, 98, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Cyclizar - Bite - Level 23
  (967, 96700, 44, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Cyclizar - U-turn - Level 27
  (967, 96700, 369, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Cyclizar - Shed Tail - Level 31
  (967, 96700, 880, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyclizar - Dragon Claw - Level 36
  (967, 96700, 337, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Cyclizar - Shift Gear - Level 40
  (967, 96700, 508, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyclizar - Dragon Pulse - Level 45
  (967, 96700, 406, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Cyclizar - Double-Edge - Level 51
  (967, 96700, 38, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Cyclizar - Dragon Rush - Level 57
  (967, 96700, 407, 23, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Cyclizar - Take Down - TM001
  (967, 96700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Cyclizar - Agility - TM004
  (967, 96700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Cyclizar - Mud-Slap - TM005
  (967, 96700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Cyclizar - Protect - TM007
  (967, 96700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Cyclizar - Fire Fang - TM008
  (967, 96700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Cyclizar - Thunder Fang - TM009
  (967, 96700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Cyclizar - Acrobatics - TM014
  (967, 96700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Cyclizar - Thief - TM018
  (967, 96700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Cyclizar - Trailblaze - TM020
  (967, 96700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Cyclizar - Facade - TM025
  (967, 96700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Cyclizar - Aerial Ace - TM027
  (967, 96700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Cyclizar - Mud Shot - TM035
  (967, 96700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Cyclizar - Dragon Tail - TM044
  (967, 96700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 27),
  -- Cyclizar - Endure - TM047
  (967, 96700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Cyclizar - Sunny Day - TM049
  (967, 96700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Cyclizar - Rain Dance - TM050
  (967, 96700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Cyclizar - U-turn - TM060
  (967, 96700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Cyclizar - Body Slam - TM066
  (967, 96700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Cyclizar - Sleep Talk - TM070
  (967, 96700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Cyclizar - Dragon Claw - TM078
  (967, 96700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 34),
  -- Cyclizar - Rest - TM085
  (967, 96700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Cyclizar - Taunt - TM087
  (967, 96700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Cyclizar - Iron Head - TM099
  (967, 96700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Cyclizar - Substitute - TM103
  (967, 96700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Cyclizar - Crunch - TM108
  (967, 96700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Cyclizar - Dragon Pulse - TM115
  (967, 96700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Cyclizar - Hyper Voice - TM117
  (967, 96700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Cyclizar - Ice Spinner - TM124
  (967, 96700, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 42),
  -- Cyclizar - Thunderbolt - TM126
  (967, 96700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Cyclizar - Wild Charge - TM147
  (967, 96700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 44),
  -- Cyclizar - Giga Impact - TM152
  (967, 96700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Cyclizar - Outrage - TM156
  (967, 96700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Cyclizar - Overheat - TM157
  (967, 96700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 47),
  -- Cyclizar - Hyper Beam - TM163
  (967, 96700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Cyclizar - Draco Meteor - TM169
  (967, 96700, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 49),
  -- Cyclizar - Tera Blast - TM171
  (967, 96700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Cyclizar - Iron Tail - Egg
  (967, 96700, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cyclizar - Knock Off - Egg
  (967, 96700, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cyclizar - Aqua Tail - Egg
  (967, 96700, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cyclizar - Power Whip - Egg
  (967, 96700, 438, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Orthworm - Tackle - Level 1
  (968, 96800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Orthworm - Wrap - Level 1
  (968, 96800, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Orthworm - Harden - Level 1
  (968, 96800, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Orthworm - Mud-Slap - Level 7
  (968, 96800, 189, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Orthworm - Smack Down - Level 12
  (968, 96800, 479, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Orthworm - Bulldoze - Level 16
  (968, 96800, 523, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Orthworm - Iron Head - Level 21
  (968, 96800, 442, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Orthworm - Take Down - Level 26
  (968, 96800, 36, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Orthworm - Dig - Level 30
  (968, 96800, 91, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Orthworm - Sandstorm - Level 34
  (968, 96800, 201, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Orthworm - Iron Defense - Level 38
  (968, 96800, 334, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Orthworm - Iron Tail - Level 43
  (968, 96800, 231, 23, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Orthworm - Earthquake - Level 47
  (968, 96800, 89, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Orthworm - Shed Tail - Level 52
  (968, 96800, 880, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Orthworm - Take Down - TM001
  (968, 96800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Orthworm - Mud-Slap - TM005
  (968, 96800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Orthworm - Protect - TM007
  (968, 96800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Orthworm - Facade - TM025
  (968, 96800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Orthworm - Bulldoze - TM028
  (968, 96800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Orthworm - Mud Shot - TM035
  (968, 96800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Orthworm - Rock Tomb - TM036
  (968, 96800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Orthworm - Endure - TM047
  (968, 96800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Orthworm - Sandstorm - TM051
  (968, 96800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Orthworm - Dig - TM055
  (968, 96800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Orthworm - Body Slam - TM066
  (968, 96800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Orthworm - Sleep Talk - TM070
  (968, 96800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Orthworm - Rock Blast - TM076
  (968, 96800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 27),
  -- Orthworm - Stomping Tantrum - TM084
  (968, 96800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 28),
  -- Orthworm - Rest - TM085
  (968, 96800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Orthworm - Rock Slide - TM086
  (968, 96800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 30),
  -- Orthworm - Body Press - TM089
  (968, 96800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 31),
  -- Orthworm - Spikes - TM090
  (968, 96800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 32),
  -- Orthworm - Flash Cannon - TM093
  (968, 96800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Orthworm - Iron Head - TM099
  (968, 96800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Orthworm - Substitute - TM103
  (968, 96800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Orthworm - Iron Defense - TM104
  (968, 96800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 36),
  -- Orthworm - Stealth Rock - TM116
  (968, 96800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Orthworm - Heavy Slam - TM121
  (968, 96800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Orthworm - Helping Hand - TM130
  (968, 96800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Orthworm - Earth Power - TM133
  (968, 96800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 40),
  -- Orthworm - Earthquake - TM149
  (968, 96800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 41),
  -- Orthworm - Giga Impact - TM152
  (968, 96800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Orthworm - Hyper Beam - TM163
  (968, 96800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Orthworm - Steel Beam - TM170
  (968, 96800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 44),
  -- Orthworm - Tera Blast - TM171
  (968, 96800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Orthworm - Curse - Egg
  (968, 96800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Orthworm - Metal Burst - Egg
  (968, 96800, 368, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Orthworm - Coil - Egg
  (968, 96800, 489, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Glimmet - Rock Throw - Level 1
  (969, 96900, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glimmet - Harden - Level 1
  (969, 96900, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glimmet - Smack Down - Level 1
  (969, 96900, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glimmet - Acid Spray - Level 7
  (969, 96900, 491, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Glimmet - Ancient Power - Level 11
  (969, 96900, 246, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Glimmet - Rock Polish - Level 15
  (969, 96900, 397, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Glimmet - Stealth Rock - Level 18
  (969, 96900, 446, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Glimmet - Venoshock - Level 22
  (969, 96900, 474, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Glimmet - Sandstorm - Level 26
  (969, 96900, 201, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Glimmet - Self-Destruct - Level 29
  (969, 96900, 120, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Glimmet - Rock Slide - Level 33
  (969, 96900, 157, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Glimmet - Power Gem - Level 37
  (969, 96900, 408, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Glimmet - Acid Armor - Level 41
  (969, 96900, 151, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Glimmet - Sludge Wave - Level 46
  (969, 96900, 482, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Glimmet - Protect - TM007
  (969, 96900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Glimmet - Acid Spray - TM013
  (969, 96900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 16),
  -- Glimmet - Confuse Ray - TM017
  (969, 96900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Glimmet - Facade - TM025
  (969, 96900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Glimmet - Mud Shot - TM035
  (969, 96900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 19),
  -- Glimmet - Rock Tomb - TM036
  (969, 96900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Glimmet - Venoshock - TM045
  (969, 96900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 21),
  -- Glimmet - Endure - TM047
  (969, 96900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Glimmet - Sunny Day - TM049
  (969, 96900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Glimmet - Rain Dance - TM050
  (969, 96900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Glimmet - Sandstorm - TM051
  (969, 96900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 25),
  -- Glimmet - Sleep Talk - TM070
  (969, 96900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Glimmet - Reflect - TM074
  (969, 96900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 27),
  -- Glimmet - Light Screen - TM075
  (969, 96900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Glimmet - Rock Blast - TM076
  (969, 96900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 29),
  -- Glimmet - Dazzling Gleam - TM079
  (969, 96900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Glimmet - Rest - TM085
  (969, 96900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Glimmet - Rock Slide - TM086
  (969, 96900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Glimmet - Spikes - TM090
  (969, 96900, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 33),
  -- Glimmet - Toxic Spikes - TM091
  (969, 96900, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 34),
  -- Glimmet - Power Gem - TM101
  (969, 96900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 35),
  -- Glimmet - Gunk Shot - TM102
  (969, 96900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 36),
  -- Glimmet - Substitute - TM103
  (969, 96900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Glimmet - Iron Defense - TM104
  (969, 96900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Glimmet - Stealth Rock - TM116
  (969, 96900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Glimmet - Sludge Bomb - TM148
  (969, 96900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Glimmet - Stone Edge - TM150
  (969, 96900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 41),
  -- Glimmet - Tera Blast - TM171
  (969, 96900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Glimmet - Toxic - Egg
  (969, 96900, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Glimmet - Explosion - Egg
  (969, 96900, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Glimmet - Memento - Egg
  (969, 96900, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Glimmora - Rock Throw - Level 1
  (970, 97000, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glimmora - Harden - Level 1
  (970, 97000, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glimmora - Toxic Spikes - Level 1
  (970, 97000, 390, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glimmora - Smack Down - Level 1
  (970, 97000, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glimmora - Spiky Shield - Level 1
  (970, 97000, 596, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glimmora - Acid Spray - Level 7
  (970, 97000, 491, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Glimmora - Ancient Power - Level 11
  (970, 97000, 246, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Glimmora - Rock Polish - Level 15
  (970, 97000, 397, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Glimmora - Stealth Rock - Level 18
  (970, 97000, 446, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Glimmora - Venoshock - Level 22
  (970, 97000, 474, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Glimmora - Sandstorm - Level 26
  (970, 97000, 201, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Glimmora - Self-Destruct - Level 29
  (970, 97000, 120, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Glimmora - Rock Slide - Level 33
  (970, 97000, 157, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Glimmora - Power Gem - Level 39
  (970, 97000, 408, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Glimmora - Acid Armor - Level 44
  (970, 97000, 151, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Glimmora - Sludge Wave - Level 50
  (970, 97000, 482, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Glimmora - Protect - TM007
  (970, 97000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Glimmora - Acid Spray - TM013
  (970, 97000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Glimmora - Confuse Ray - TM017
  (970, 97000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Glimmora - Facade - TM025
  (970, 97000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Glimmora - Mud Shot - TM035
  (970, 97000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Glimmora - Rock Tomb - TM036
  (970, 97000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Glimmora - Venoshock - TM045
  (970, 97000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Glimmora - Endure - TM047
  (970, 97000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Glimmora - Sunny Day - TM049
  (970, 97000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Glimmora - Rain Dance - TM050
  (970, 97000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Glimmora - Sandstorm - TM051
  (970, 97000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Glimmora - Sleep Talk - TM070
  (970, 97000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Glimmora - Reflect - TM074
  (970, 97000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Glimmora - Light Screen - TM075
  (970, 97000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Glimmora - Rock Blast - TM076
  (970, 97000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 31),
  -- Glimmora - Dazzling Gleam - TM079
  (970, 97000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Glimmora - Rest - TM085
  (970, 97000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Glimmora - Rock Slide - TM086
  (970, 97000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Glimmora - Spikes - TM090
  (970, 97000, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 35),
  -- Glimmora - Toxic Spikes - TM091
  (970, 97000, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 36),
  -- Glimmora - Flash Cannon - TM093
  (970, 97000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Glimmora - Power Gem - TM101
  (970, 97000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 38),
  -- Glimmora - Gunk Shot - TM102
  (970, 97000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 39),
  -- Glimmora - Substitute - TM103
  (970, 97000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Glimmora - Iron Defense - TM104
  (970, 97000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Glimmora - Stealth Rock - TM116
  (970, 97000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Glimmora - Energy Ball - TM119
  (970, 97000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Glimmora - Earth Power - TM133
  (970, 97000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Glimmora - Sludge Bomb - TM148
  (970, 97000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 45),
  -- Glimmora - Stone Edge - TM150
  (970, 97000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Glimmora - Giga Impact - TM152
  (970, 97000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Glimmora - Hyper Beam - TM163
  (970, 97000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Glimmora - Solar Beam - TM168
  (970, 97000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Glimmora - Tera Blast - TM171
  (970, 97000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Glimmora - Toxic - Egg
  (970, 97000, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glimmora - Explosion - Egg
  (970, 97000, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glimmora - Memento - Egg
  (970, 97000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glimmora - Mortal Spin - Evolution
  (970, 97000, 866, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Greavard - Tackle - Level 1
  (971, 97100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greavard - Growl - Level 1
  (971, 97100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greavard - Lick - Level 3
  (971, 97100, 122, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Greavard - Tail Whip - Level 6
  (971, 97100, 39, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Greavard - Bite - Level 6
  (971, 97100, 44, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Greavard - Roar - Level 9
  (971, 97100, 46, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Greavard - Headbutt - Level 12
  (971, 97100, 29, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Greavard - Dig - Level 16
  (971, 97100, 91, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Greavard - Rest - Level 24
  (971, 97100, 156, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Greavard - Crunch - Level 28
  (971, 97100, 242, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Greavard - Play Rough - Level 32
  (971, 97100, 583, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Greavard - Helping Hand - Level 37
  (971, 97100, 270, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Greavard - Phantom Force - Level 41
  (971, 97100, 566, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Greavard - Charm - Level 46
  (971, 97100, 204, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Greavard - Double-Edge - Level 52
  (971, 97100, 38, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Greavard - Take Down - TM001
  (971, 97100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Greavard - Charm - TM002
  (971, 97100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Greavard - Mud-Slap - TM005
  (971, 97100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Greavard - Scary Face - TM006
  (971, 97100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Greavard - Protect - TM007
  (971, 97100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Greavard - Fire Fang - TM008
  (971, 97100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Greavard - Thunder Fang - TM009
  (971, 97100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Greavard - Ice Fang - TM010
  (971, 97100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Greavard - Confuse Ray - TM017
  (971, 97100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Greavard - Thief - TM018
  (971, 97100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Greavard - Facade - TM025
  (971, 97100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Greavard - Bulldoze - TM028
  (971, 97100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Greavard - Hex - TM029
  (971, 97100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 28),
  -- Greavard - Snarl - TM030
  (971, 97100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 29),
  -- Greavard - Mud Shot - TM035
  (971, 97100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Greavard - Night Shade - TM042
  (971, 97100, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 31),
  -- Greavard - Endure - TM047
  (971, 97100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Greavard - Sunny Day - TM049
  (971, 97100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Greavard - Rain Dance - TM050
  (971, 97100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Greavard - Sandstorm - TM051
  (971, 97100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Greavard - Dig - TM055
  (971, 97100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Greavard - Psychic Fangs - TM063
  (971, 97100, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Greavard - Sleep Talk - TM070
  (971, 97100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Greavard - Stomping Tantrum - TM084
  (971, 97100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Greavard - Rest - TM085
  (971, 97100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Greavard - Substitute - TM103
  (971, 97100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Greavard - Crunch - TM108
  (971, 97100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Greavard - Trick - TM109
  (971, 97100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Greavard - Shadow Ball - TM114
  (971, 97100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Greavard - Play Rough - TM127
  (971, 97100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Greavard - Helping Hand - TM130
  (971, 97100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Greavard - Phantom Force - TM151
  (971, 97100, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 47),
  -- Greavard - Tera Blast - TM171
  (971, 97100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Greavard - Disable - Egg
  (971, 97100, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Greavard - Destiny Bond - Egg
  (971, 97100, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Greavard - Memento - Egg
  (971, 97100, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Greavard - Yawn - Egg
  (971, 97100, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Greavard - Howl - Egg
  (971, 97100, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Greavard - Shadow Sneak - Egg
  (971, 97100, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Greavard - Ally Switch - Egg
  (971, 97100, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Houndstone - Tackle - Level 1
  (972, 97200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndstone - Growl - Level 1
  (972, 97200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndstone - Lick - Level 3
  (972, 97200, 122, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Houndstone - Tail Whip - Level 6
  (972, 97200, 39, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Houndstone - Bite - Level 6
  (972, 97200, 44, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Houndstone - Roar - Level 9
  (972, 97200, 46, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Houndstone - Headbutt - Level 12
  (972, 97200, 29, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Houndstone - Dig - Level 16
  (972, 97200, 91, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Houndstone - Rest - Level 24
  (972, 97200, 156, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Houndstone - Crunch - Level 28
  (972, 97200, 242, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Houndstone - Play Rough - Level 36
  (972, 97200, 583, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Houndstone - Helping Hand - Level 41
  (972, 97200, 270, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Houndstone - Phantom Force - Level 46
  (972, 97200, 566, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Houndstone - Charm - Level 51
  (972, 97200, 204, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Houndstone - Double-Edge - Level 58
  (972, 97200, 38, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Houndstone - Take Down - TM001
  (972, 97200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Houndstone - Charm - TM002
  (972, 97200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Houndstone - Mud-Slap - TM005
  (972, 97200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Houndstone - Scary Face - TM006
  (972, 97200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Houndstone - Protect - TM007
  (972, 97200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Houndstone - Fire Fang - TM008
  (972, 97200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Houndstone - Thunder Fang - TM009
  (972, 97200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Houndstone - Ice Fang - TM010
  (972, 97200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Houndstone - Confuse Ray - TM017
  (972, 97200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Houndstone - Thief - TM018
  (972, 97200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Houndstone - Facade - TM025
  (972, 97200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Houndstone - Bulldoze - TM028
  (972, 97200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Houndstone - Hex - TM029
  (972, 97200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 28),
  -- Houndstone - Snarl - TM030
  (972, 97200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 29),
  -- Houndstone - Mud Shot - TM035
  (972, 97200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Houndstone - Night Shade - TM042
  (972, 97200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 31),
  -- Houndstone - Endure - TM047
  (972, 97200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Houndstone - Sunny Day - TM049
  (972, 97200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Houndstone - Rain Dance - TM050
  (972, 97200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Houndstone - Sandstorm - TM051
  (972, 97200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Houndstone - Dig - TM055
  (972, 97200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Houndstone - Psychic Fangs - TM063
  (972, 97200, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Houndstone - Sleep Talk - TM070
  (972, 97200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Houndstone - Stomping Tantrum - TM084
  (972, 97200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Houndstone - Rest - TM085
  (972, 97200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Houndstone - Body Press - TM089
  (972, 97200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Houndstone - Substitute - TM103
  (972, 97200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Houndstone - Will-O-Wisp - TM107
  (972, 97200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 43),
  -- Houndstone - Crunch - TM108
  (972, 97200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Houndstone - Trick - TM109
  (972, 97200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 45),
  -- Houndstone - Shadow Ball - TM114
  (972, 97200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Houndstone - Play Rough - TM127
  (972, 97200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Houndstone - Helping Hand - TM130
  (972, 97200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Houndstone - Phantom Force - TM151
  (972, 97200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 49),
  -- Houndstone - Giga Impact - TM152
  (972, 97200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Houndstone - Hyper Beam - TM163
  (972, 97200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Houndstone - Tera Blast - TM171
  (972, 97200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Houndstone - Disable - Egg
  (972, 97200, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Houndstone - Destiny Bond - Egg
  (972, 97200, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Houndstone - Memento - Egg
  (972, 97200, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Houndstone - Yawn - Egg
  (972, 97200, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndstone - Howl - Egg
  (972, 97200, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndstone - Shadow Sneak - Egg
  (972, 97200, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Houndstone - Ally Switch - Egg
  (972, 97200, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndstone - Last Respects - Evolution
  (972, 97200, 854, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Flamigo - Peck - Level 1
  (973, 97300, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flamigo - Copycat - Level 1
  (973, 97300, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flamigo - Double Kick - Level 5
  (973, 97300, 24, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Flamigo - Detect - Level 9
  (973, 97300, 197, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Flamigo - Wing Attack - Level 12
  (973, 97300, 17, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Flamigo - Focus Energy - Level 15
  (973, 97300, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Flamigo - Low Kick - Level 18
  (973, 97300, 67, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Flamigo - Feint - Level 21
  (973, 97300, 364, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Flamigo - Payback - Level 27
  (973, 97300, 371, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Flamigo - Roost - Level 31
  (973, 97300, 355, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Flamigo - Air Slash - Level 35
  (973, 97300, 403, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Flamigo - Mega Kick - Level 39
  (973, 97300, 25, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Flamigo - Wide Guard - Level 44
  (973, 97300, 469, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Flamigo - Throat Chop - Level 48
  (973, 97300, 675, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Flamigo - Brave Bird - Level 54
  (973, 97300, 413, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Flamigo - Take Down - TM001
  (973, 97300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Flamigo - Agility - TM004
  (973, 97300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Flamigo - Protect - TM007
  (973, 97300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Flamigo - Water Pulse - TM011
  (973, 97300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Flamigo - Low Kick - TM012
  (973, 97300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Flamigo - Acrobatics - TM014
  (973, 97300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Flamigo - Thief - TM018
  (973, 97300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Flamigo - Pounce - TM021
  (973, 97300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 23),
  -- Flamigo - Chilling Water - TM022
  (973, 97300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Flamigo - Facade - TM025
  (973, 97300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Flamigo - Aerial Ace - TM027
  (973, 97300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Flamigo - Low Sweep - TM039
  (973, 97300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Flamigo - Air Cutter - TM040
  (973, 97300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Flamigo - Fling - TM043
  (973, 97300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Flamigo - Endure - TM047
  (973, 97300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Flamigo - U-turn - TM060
  (973, 97300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Flamigo - Bulk Up - TM064
  (973, 97300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Flamigo - Air Slash - TM065
  (973, 97300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Flamigo - Sleep Talk - TM070
  (973, 97300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Flamigo - Rest - TM085
  (973, 97300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Flamigo - Taunt - TM087
  (973, 97300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Flamigo - Swords Dance - TM088
  (973, 97300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Flamigo - Fly - TM097
  (973, 97300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Flamigo - Substitute - TM103
  (973, 97300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Flamigo - Liquidation - TM110
  (973, 97300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Flamigo - Tailwind - TM113
  (973, 97300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Flamigo - Reversal - TM134
  (973, 97300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Flamigo - Giga Impact - TM152
  (973, 97300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Flamigo - Hurricane - TM160
  (973, 97300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 44),
  -- Flamigo - Hyper Beam - TM163
  (973, 97300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Flamigo - Brave Bird - TM164
  (973, 97300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 46),
  -- Flamigo - Close Combat - TM167
  (973, 97300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 47),
  -- Flamigo - Tera Blast - TM171
  (973, 97300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Flamigo - Double Team - Egg
  (973, 97300, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Flamigo - Sky Attack - Egg
  (973, 97300, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Flamigo - Quick Guard - Egg
  (973, 97300, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cetoddle - Tackle - Level 1
  (974, 97400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cetoddle - Powder Snow - Level 1
  (974, 97400, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cetoddle - Growl - Level 6
  (974, 97400, 45, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cetoddle - Echoed Voice - Level 9
  (974, 97400, 497, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Cetoddle - Ice Shard - Level 12
  (974, 97400, 420, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cetoddle - Rest - Level 15
  (974, 97400, 156, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cetoddle - Take Down - Level 19
  (974, 97400, 36, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Cetoddle - Flail - Level 25
  (974, 97400, 175, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cetoddle - Avalanche - Level 27
  (974, 97400, 419, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Cetoddle - Bounce - Level 31
  (974, 97400, 340, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Cetoddle - Body Slam - Level 36
  (974, 97400, 34, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Cetoddle - Amnesia - Level 40
  (974, 97400, 133, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Cetoddle - Ice Spinner - Level 44
  (974, 97400, 861, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Cetoddle - Double-Edge - Level 49
  (974, 97400, 38, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cetoddle - Blizzard - Level 53
  (974, 97400, 59, 23, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Cetoddle - Take Down - TM001
  (974, 97400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Cetoddle - Charm - TM002
  (974, 97400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Cetoddle - Protect - TM007
  (974, 97400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Cetoddle - Ice Fang - TM010
  (974, 97400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Cetoddle - Water Pulse - TM011
  (974, 97400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Cetoddle - Chilling Water - TM022
  (974, 97400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Cetoddle - Facade - TM025
  (974, 97400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Cetoddle - Bulldoze - TM028
  (974, 97400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Cetoddle - Icy Wind - TM034
  (974, 97400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Cetoddle - Avalanche - TM046
  (974, 97400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 25),
  -- Cetoddle - Endure - TM047
  (974, 97400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Cetoddle - Rain Dance - TM050
  (974, 97400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Cetoddle - Snowscape - TM052
  (974, 97400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Cetoddle - Body Slam - TM066
  (974, 97400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Cetoddle - Sleep Talk - TM070
  (974, 97400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Cetoddle - Stomping Tantrum - TM084
  (974, 97400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 31),
  -- Cetoddle - Rest - TM085
  (974, 97400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Cetoddle - Body Press - TM089
  (974, 97400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 33),
  -- Cetoddle - Substitute - TM103
  (974, 97400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Cetoddle - Liquidation - TM110
  (974, 97400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 35),
  -- Cetoddle - Hyper Voice - TM117
  (974, 97400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 36),
  -- Cetoddle - Heavy Slam - TM121
  (974, 97400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 37),
  -- Cetoddle - Ice Spinner - TM124
  (974, 97400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 38),
  -- Cetoddle - Play Rough - TM127
  (974, 97400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 39),
  -- Cetoddle - Amnesia - TM128
  (974, 97400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 40),
  -- Cetoddle - Helping Hand - TM130
  (974, 97400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Cetoddle - Ice Beam - TM135
  (974, 97400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Cetoddle - Blizzard - TM143
  (974, 97400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Cetoddle - Earthquake - TM149
  (974, 97400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 44),
  -- Cetoddle - Hyper Beam - TM163
  (974, 97400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Cetoddle - Tera Blast - TM171
  (974, 97400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Cetoddle - Belly Drum - Egg
  (974, 97400, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cetoddle - Superpower - Egg
  (974, 97400, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cetoddle - Yawn - Egg
  (974, 97400, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cetoddle - Entrainment - Egg
  (974, 97400, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cetoddle - Icicle Crash - Egg
  (974, 97400, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cetitan - Tackle - Level 1
  (975, 97500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cetitan - Powder Snow - Level 1
  (975, 97500, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cetitan - Growl - Level 6
  (975, 97500, 45, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cetitan - Echoed Voice - Level 9
  (975, 97500, 497, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Cetitan - Ice Shard - Level 12
  (975, 97500, 420, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cetitan - Rest - Level 15
  (975, 97500, 156, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cetitan - Take Down - Level 19
  (975, 97500, 36, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Cetitan - Flail - Level 25
  (975, 97500, 175, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cetitan - Avalanche - Level 27
  (975, 97500, 419, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Cetitan - Bounce - Level 31
  (975, 97500, 340, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Cetitan - Body Slam - Level 36
  (975, 97500, 34, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Cetitan - Amnesia - Level 40
  (975, 97500, 133, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Cetitan - Ice Spinner - Level 44
  (975, 97500, 861, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Cetitan - Double-Edge - Level 49
  (975, 97500, 38, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cetitan - Blizzard - Level 53
  (975, 97500, 59, 23, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Cetitan - Take Down - TM001
  (975, 97500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Cetitan - Charm - TM002
  (975, 97500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Cetitan - Protect - TM007
  (975, 97500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Cetitan - Ice Fang - TM010
  (975, 97500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Cetitan - Water Pulse - TM011
  (975, 97500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Cetitan - Chilling Water - TM022
  (975, 97500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Cetitan - Facade - TM025
  (975, 97500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Cetitan - Bulldoze - TM028
  (975, 97500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Cetitan - Icy Wind - TM034
  (975, 97500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Cetitan - Avalanche - TM046
  (975, 97500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 25),
  -- Cetitan - Endure - TM047
  (975, 97500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Cetitan - Rain Dance - TM050
  (975, 97500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Cetitan - Snowscape - TM052
  (975, 97500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Cetitan - Body Slam - TM066
  (975, 97500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Cetitan - Ice Punch - TM069
  (975, 97500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 30),
  -- Cetitan - Sleep Talk - TM070
  (975, 97500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Cetitan - Stomping Tantrum - TM084
  (975, 97500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Cetitan - Rest - TM085
  (975, 97500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Cetitan - Body Press - TM089
  (975, 97500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 34),
  -- Cetitan - Substitute - TM103
  (975, 97500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Cetitan - Liquidation - TM110
  (975, 97500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Cetitan - Hyper Voice - TM117
  (975, 97500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 37),
  -- Cetitan - Heavy Slam - TM121
  (975, 97500, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Cetitan - Ice Spinner - TM124
  (975, 97500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 39),
  -- Cetitan - Play Rough - TM127
  (975, 97500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 40),
  -- Cetitan - Amnesia - TM128
  (975, 97500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 41),
  -- Cetitan - Helping Hand - TM130
  (975, 97500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Cetitan - Ice Beam - TM135
  (975, 97500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Cetitan - Blizzard - TM143
  (975, 97500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Cetitan - Earthquake - TM149
  (975, 97500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Cetitan - Giga Impact - TM152
  (975, 97500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Cetitan - Hyper Beam - TM163
  (975, 97500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Cetitan - Tera Blast - TM171
  (975, 97500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Cetitan - Belly Drum - Egg
  (975, 97500, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cetitan - Superpower - Egg
  (975, 97500, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cetitan - Yawn - Egg
  (975, 97500, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cetitan - Entrainment - Egg
  (975, 97500, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cetitan - Icicle Crash - Egg
  (975, 97500, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Veluza - Tackle - Level 1
  (976, 97600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Veluza - Aqua Jet - Level 1
  (976, 97600, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Veluza - Pluck - Level 7
  (976, 97600, 365, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Veluza - Water Pulse - Level 11
  (976, 97600, 352, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Veluza - Focus Energy - Level 15
  (976, 97600, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Veluza - Slash - Level 20
  (976, 97600, 163, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Veluza - Aqua Cutter - Level 25
  (976, 97600, 895, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Veluza - Fillet Away - Level 30
  (976, 97600, 868, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Veluza - Night Slash - Level 35
  (976, 97600, 400, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Veluza - Psycho Cut - Level 40
  (976, 97600, 427, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Veluza - Liquidation - Level 45
  (976, 97600, 710, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Veluza - Crunch - Level 50
  (976, 97600, 242, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Veluza - Final Gambit - Level 55
  (976, 97600, 515, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Veluza - Take Down - TM001
  (976, 97600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Veluza - Agility - TM004
  (976, 97600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Veluza - Protect - TM007
  (976, 97600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Veluza - Ice Fang - TM010
  (976, 97600, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 17),
  -- Veluza - Water Pulse - TM011
  (976, 97600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Veluza - Chilling Water - TM022
  (976, 97600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Veluza - Icy Wind - TM034
  (976, 97600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Veluza - Stored Power - TM041
  (976, 97600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Veluza - Endure - TM047
  (976, 97600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Veluza - Rain Dance - TM050
  (976, 97600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Veluza - Snowscape - TM052
  (976, 97600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 24),
  -- Veluza - Zen Headbutt - TM059
  (976, 97600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Veluza - Psychic Fangs - TM063
  (976, 97600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 26),
  -- Veluza - Body Slam - TM066
  (976, 97600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Veluza - Sleep Talk - TM070
  (976, 97600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Veluza - Waterfall - TM077
  (976, 97600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Veluza - Rest - TM085
  (976, 97600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Veluza - Substitute - TM103
  (976, 97600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Veluza - Drill Run - TM106
  (976, 97600, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 32),
  -- Veluza - Crunch - TM108
  (976, 97600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 33),
  -- Veluza - Liquidation - TM110
  (976, 97600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Veluza - Psychic - TM120
  (976, 97600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 35),
  -- Veluza - Surf - TM123
  (976, 97600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Veluza - Ice Beam - TM135
  (976, 97600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Veluza - Psychic Terrain - TM138
  (976, 97600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 38),
  -- Veluza - Hydro Pump - TM142
  (976, 97600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Veluza - Blizzard - TM143
  (976, 97600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Veluza - Giga Impact - TM152
  (976, 97600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Veluza - Hyper Beam - TM163
  (976, 97600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Veluza - Tera Blast - TM171
  (976, 97600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Veluza - Thrash - Egg
  (976, 97600, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Veluza - Recover - Egg
  (976, 97600, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dondozo - Tackle - Level 1
  (977, 97700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dondozo - Supersonic - Level 1
  (977, 97700, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dondozo - Water Gun - Level 1
  (977, 97700, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dondozo - Tickle - Level 5
  (977, 97700, 321, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Dondozo - Flail - Level 10
  (977, 97700, 175, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Dondozo - Rest - Level 15
  (977, 97700, 156, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dondozo - Sleep Talk - Level 15
  (977, 97700, 214, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dondozo - Dive - Level 20
  (977, 97700, 291, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Dondozo - Noble Roar - Level 25
  (977, 97700, 568, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Dondozo - Soak - Level 30
  (977, 97700, 487, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dondozo - Body Slam - Level 35
  (977, 97700, 34, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Dondozo - Aqua Tail - Level 40
  (977, 97700, 401, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dondozo - Rain Dance - Level 45
  (977, 97700, 240, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Dondozo - Order Up - Level 50
  (977, 97700, 856, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Dondozo - Heavy Slam - Level 55
  (977, 97700, 484, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Dondozo - Double-Edge - Level 60
  (977, 97700, 38, 23, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Dondozo - Wave Crash - Level 65
  (977, 97700, 834, 23, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Dondozo - Take Down - TM001
  (977, 97700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Dondozo - Scary Face - TM006
  (977, 97700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Dondozo - Protect - TM007
  (977, 97700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Dondozo - Ice Fang - TM010
  (977, 97700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Dondozo - Water Pulse - TM011
  (977, 97700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Dondozo - Chilling Water - TM022
  (977, 97700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Dondozo - Facade - TM025
  (977, 97700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Dondozo - Bulldoze - TM028
  (977, 97700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Dondozo - Avalanche - TM046
  (977, 97700, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Dondozo - Endure - TM047
  (977, 97700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Dondozo - Rain Dance - TM050
  (977, 97700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Dondozo - Zen Headbutt - TM059
  (977, 97700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Dondozo - Body Slam - TM066
  (977, 97700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Dondozo - Sleep Talk - TM070
  (977, 97700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Dondozo - Waterfall - TM077
  (977, 97700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 32),
  -- Dondozo - Stomping Tantrum - TM084
  (977, 97700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Dondozo - Rest - TM085
  (977, 97700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Dondozo - Rock Slide - TM086
  (977, 97700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Dondozo - Body Press - TM089
  (977, 97700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Dondozo - Substitute - TM103
  (977, 97700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Dondozo - Crunch - TM108
  (977, 97700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 38),
  -- Dondozo - Liquidation - TM110
  (977, 97700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 39),
  -- Dondozo - Heavy Slam - TM121
  (977, 97700, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 40),
  -- Dondozo - Surf - TM123
  (977, 97700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 41),
  -- Dondozo - Hydro Pump - TM142
  (977, 97700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Dondozo - Earthquake - TM149
  (977, 97700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Dondozo - Giga Impact - TM152
  (977, 97700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Dondozo - Outrage - TM156
  (977, 97700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 45),
  -- Dondozo - Hyper Beam - TM163
  (977, 97700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Dondozo - Tera Blast - TM171
  (977, 97700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Dondozo - Thrash - Egg
  (977, 97700, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dondozo - Fissure - Egg
  (977, 97700, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dondozo - Curse - Egg
  (977, 97700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dondozo - Yawn - Egg
  (977, 97700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tatsugiri - Water Gun - Level 1
  (978, 97800, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tatsugiri - Splash - Level 1
  (978, 97800, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tatsugiri - Harden - Level 6
  (978, 97800, 106, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Tatsugiri - Helping Hand - Level 12
  (978, 97800, 270, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tatsugiri - Water Pulse - Level 17
  (978, 97800, 352, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tatsugiri - Soak - Level 23
  (978, 97800, 487, 23, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Tatsugiri - Taunt - Level 28
  (978, 97800, 269, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Tatsugiri - Memento - Level 34
  (978, 97800, 262, 23, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Tatsugiri - Muddy Water - Level 39
  (978, 97800, 330, 23, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Tatsugiri - Nasty Plot - Level 43
  (978, 97800, 417, 23, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Tatsugiri - Mirror Coat - Level 47
  (978, 97800, 243, 23, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Tatsugiri - Dragon Pulse - Level 52
  (978, 97800, 406, 23, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Tatsugiri - Take Down - TM001
  (978, 97800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Tatsugiri - Protect - TM007
  (978, 97800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Tatsugiri - Water Pulse - TM011
  (978, 97800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Tatsugiri - Chilling Water - TM022
  (978, 97800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Tatsugiri - Facade - TM025
  (978, 97800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Tatsugiri - Icy Wind - TM034
  (978, 97800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 18),
  -- Tatsugiri - Endure - TM047
  (978, 97800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Tatsugiri - Rain Dance - TM050
  (978, 97800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Tatsugiri - Sleep Talk - TM070
  (978, 97800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Tatsugiri - Rest - TM085
  (978, 97800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 22),
  -- Tatsugiri - Taunt - TM087
  (978, 97800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 23),
  -- Tatsugiri - Dragon Dance - TM100
  (978, 97800, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 24),
  -- Tatsugiri - Substitute - TM103
  (978, 97800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 25),
  -- Tatsugiri - Dragon Pulse - TM115
  (978, 97800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 26),
  -- Tatsugiri - Surf - TM123
  (978, 97800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 27),
  -- Tatsugiri - Helping Hand - TM130
  (978, 97800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 28),
  -- Tatsugiri - Baton Pass - TM132
  (978, 97800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 29),
  -- Tatsugiri - Nasty Plot - TM140
  (978, 97800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 30),
  -- Tatsugiri - Hydro Pump - TM142
  (978, 97800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 31),
  -- Tatsugiri - Giga Impact - TM152
  (978, 97800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 32),
  -- Tatsugiri - Outrage - TM156
  (978, 97800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 33),
  -- Tatsugiri - Hyper Beam - TM163
  (978, 97800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 34),
  -- Tatsugiri - Draco Meteor - TM169
  (978, 97800, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 35),
  -- Tatsugiri - Tera Blast - TM171
  (978, 97800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Tatsugiri - Counter - Egg
  (978, 97800, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tatsugiri - Baton Pass - Egg
  (978, 97800, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tatsugiri - Rapid Spin - Egg
  (978, 97800, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Annihilape - Scratch - Level 1
  (979, 97900, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Annihilape - Leer - Level 1
  (979, 97900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Annihilape - Counter - Level 1
  (979, 97900, 68, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Annihilape - Focus Energy - Level 1
  (979, 97900, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Annihilape - Fling - Level 1
  (979, 97900, 374, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Annihilape - Fury Swipes - Level 5
  (979, 97900, 154, 23, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Annihilape - Low Kick - Level 8
  (979, 97900, 67, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Annihilape - Seismic Toss - Level 12
  (979, 97900, 69, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Annihilape - Swagger - Level 17
  (979, 97900, 207, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Annihilape - Cross Chop - Level 22
  (979, 97900, 238, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Annihilape - Assurance - Level 26
  (979, 97900, 372, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Annihilape - Thrash - Level 30
  (979, 97900, 37, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Annihilape - Rage Fist - Level 35
  (979, 97900, 889, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Annihilape - Close Combat - Level 39
  (979, 97900, 370, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Annihilape - Screech - Level 44
  (979, 97900, 103, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Annihilape - Stomping Tantrum - Level 48
  (979, 97900, 707, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Annihilape - Outrage - Level 53
  (979, 97900, 200, 23, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Annihilape - Final Gambit - Level 57
  (979, 97900, 515, 23, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Annihilape - Take Down - TM001
  (979, 97900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Annihilape - Scary Face - TM006
  (979, 97900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Annihilape - Protect - TM007
  (979, 97900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Annihilape - Low Kick - TM012
  (979, 97900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Annihilape - Acrobatics - TM014
  (979, 97900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 23),
  -- Annihilape - Thief - TM018
  (979, 97900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Annihilape - Facade - TM025
  (979, 97900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Annihilape - Bulldoze - TM028
  (979, 97900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Annihilape - Swift - TM032
  (979, 97900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Annihilape - Rock Tomb - TM036
  (979, 97900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Annihilape - Low Sweep - TM039
  (979, 97900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Annihilape - Night Shade - TM042
  (979, 97900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Annihilape - Fling - TM043
  (979, 97900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Annihilape - Endure - TM047
  (979, 97900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Annihilape - Sunny Day - TM049
  (979, 97900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Annihilape - Rain Dance - TM050
  (979, 97900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Annihilape - Dig - TM055
  (979, 97900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Annihilape - Brick Break - TM058
  (979, 97900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Annihilape - U-turn - TM060
  (979, 97900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Annihilape - Shadow Claw - TM061
  (979, 97900, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Annihilape - Bulk Up - TM064
  (979, 97900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 39),
  -- Annihilape - Body Slam - TM066
  (979, 97900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Annihilape - Fire Punch - TM067
  (979, 97900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 41),
  -- Annihilape - Thunder Punch - TM068
  (979, 97900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 42),
  -- Annihilape - Ice Punch - TM069
  (979, 97900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 43),
  -- Annihilape - Sleep Talk - TM070
  (979, 97900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Annihilape - Seed Bomb - TM071
  (979, 97900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 45),
  -- Annihilape - Drain Punch - TM073
  (979, 97900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 46),
  -- Annihilape - Metronome - TM080
  (979, 97900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 47),
  -- Annihilape - Poison Jab - TM083
  (979, 97900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 48),
  -- Annihilape - Stomping Tantrum - TM084
  (979, 97900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 49),
  -- Annihilape - Rest - TM085
  (979, 97900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Annihilape - Rock Slide - TM086
  (979, 97900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 51),
  -- Annihilape - Taunt - TM087
  (979, 97900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 52),
  -- Annihilape - Gunk Shot - TM102
  (979, 97900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 53),
  -- Annihilape - Substitute - TM103
  (979, 97900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Annihilape - Shadow Ball - TM114
  (979, 97900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Annihilape - Stealth Rock - TM116
  (979, 97900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 56),
  -- Annihilape - Encore - TM122
  (979, 97900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 57),
  -- Annihilape - Thunderbolt - TM126
  (979, 97900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 58),
  -- Annihilape - Helping Hand - TM130
  (979, 97900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Annihilape - Reversal - TM134
  (979, 97900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 60),
  -- Annihilape - Earthquake - TM149
  (979, 97900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 61),
  -- Annihilape - Stone Edge - TM150
  (979, 97900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 62),
  -- Annihilape - Phantom Force - TM151
  (979, 97900, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 63),
  -- Annihilape - Giga Impact - TM152
  (979, 97900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Annihilape - Outrage - TM156
  (979, 97900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 65),
  -- Annihilape - Overheat - TM157
  (979, 97900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 66),
  -- Annihilape - Focus Blast - TM158
  (979, 97900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 67),
  -- Annihilape - Hyper Beam - TM163
  (979, 97900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 68),
  -- Annihilape - Thunder - TM166
  (979, 97900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 69),
  -- Annihilape - Close Combat - TM167
  (979, 97900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 70),
  -- Annihilape - Tera Blast - TM171
  (979, 97900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 71),
  -- Annihilape - Counter - Egg
  (979, 97900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Annihilape - Curse - Egg
  (979, 97900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Annihilape - Spite - Egg
  (979, 97900, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Annihilape - Encore - Egg
  (979, 97900, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Annihilape - Beat Up - Egg
  (979, 97900, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Annihilape - Night Slash - Egg
  (979, 97900, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Annihilape - Shadow Punch - Evolution
  (979, 97900, 325, 23, NULL, 7, NULL, NULL, NULL, NULL, 78),
  -- Clodsire - Tail Whip - Level 1
  (980, 98000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clodsire - Poison Sting - Level 1
  (980, 98000, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clodsire - Toxic Spikes - Level 4
  (980, 98000, 390, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Clodsire - Mud Shot - Level 8
  (980, 98000, 341, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Clodsire - Poison Tail - Level 12
  (980, 98000, 342, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Clodsire - Slam - Level 16
  (980, 98000, 21, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Clodsire - Yawn - Level 21
  (980, 98000, 281, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Clodsire - Poison Jab - Level 24
  (980, 98000, 398, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Clodsire - Sludge Wave - Level 30
  (980, 98000, 482, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Clodsire - Megahorn - Level 36
  (980, 98000, 224, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Clodsire - Toxic - Level 40
  (980, 98000, 92, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Clodsire - Earthquake - Level 48
  (980, 98000, 89, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Clodsire - Take Down - TM001
  (980, 98000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Clodsire - Mud-Slap - TM005
  (980, 98000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Clodsire - Protect - TM007
  (980, 98000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Clodsire - Water Pulse - TM011
  (980, 98000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Clodsire - Low Kick - TM012
  (980, 98000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Clodsire - Acid Spray - TM013
  (980, 98000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Clodsire - Trailblaze - TM020
  (980, 98000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Clodsire - Chilling Water - TM022
  (980, 98000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Clodsire - Facade - TM025
  (980, 98000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Clodsire - Poison Tail - TM026
  (980, 98000, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 22),
  -- Clodsire - Bulldoze - TM028
  (980, 98000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Clodsire - Mud Shot - TM035
  (980, 98000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Clodsire - Rock Tomb - TM036
  (980, 98000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Clodsire - Venoshock - TM045
  (980, 98000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Clodsire - Endure - TM047
  (980, 98000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Clodsire - Rain Dance - TM050
  (980, 98000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Clodsire - Sandstorm - TM051
  (980, 98000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Clodsire - Dig - TM055
  (980, 98000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Clodsire - Zen Headbutt - TM059
  (980, 98000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Clodsire - Body Slam - TM066
  (980, 98000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Clodsire - Sleep Talk - TM070
  (980, 98000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Clodsire - Waterfall - TM077
  (980, 98000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Clodsire - Poison Jab - TM083
  (980, 98000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Clodsire - Stomping Tantrum - TM084
  (980, 98000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Clodsire - Rest - TM085
  (980, 98000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Clodsire - Rock Slide - TM086
  (980, 98000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Clodsire - Body Press - TM089
  (980, 98000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Clodsire - Spikes - TM090
  (980, 98000, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 40),
  -- Clodsire - Toxic Spikes - TM091
  (980, 98000, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 41),
  -- Clodsire - Iron Head - TM099
  (980, 98000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Clodsire - Gunk Shot - TM102
  (980, 98000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 43),
  -- Clodsire - Substitute - TM103
  (980, 98000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Clodsire - Liquidation - TM110
  (980, 98000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 45),
  -- Clodsire - Stealth Rock - TM116
  (980, 98000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Clodsire - Heavy Slam - TM121
  (980, 98000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 47),
  -- Clodsire - Surf - TM123
  (980, 98000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Clodsire - Amnesia - TM128
  (980, 98000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 49),
  -- Clodsire - Helping Hand - TM130
  (980, 98000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Clodsire - Earth Power - TM133
  (980, 98000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Clodsire - Hydro Pump - TM142
  (980, 98000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 52),
  -- Clodsire - Sludge Bomb - TM148
  (980, 98000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 53),
  -- Clodsire - Earthquake - TM149
  (980, 98000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Clodsire - Stone Edge - TM150
  (980, 98000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 55),
  -- Clodsire - Giga Impact - TM152
  (980, 98000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Clodsire - Hyper Beam - TM163
  (980, 98000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Clodsire - Tera Blast - TM171
  (980, 98000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Clodsire - Double Kick - Egg
  (980, 98000, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Clodsire - Mist - Egg
  (980, 98000, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Clodsire - Counter - Egg
  (980, 98000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Clodsire - Recover - Egg
  (980, 98000, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Clodsire - Haze - Egg
  (980, 98000, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Clodsire - Curse - Egg
  (980, 98000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Clodsire - Ancient Power - Egg
  (980, 98000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Clodsire - Stockpile - Egg
  (980, 98000, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Clodsire - Spit Up - Egg
  (980, 98000, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Clodsire - Swallow - Egg
  (980, 98000, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Clodsire - Acid Spray - Egg
  (980, 98000, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Clodsire - After You - Egg
  (980, 98000, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Clodsire - Amnesia - Evolution
  (980, 98000, 133, 23, NULL, 7, NULL, NULL, NULL, NULL, 71),
  -- Farigiraf - Tackle - Level 1
  (981, 98100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farigiraf - Growl - Level 1
  (981, 98100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farigiraf - Astonish - Level 1
  (981, 98100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Farigiraf - Power Swap - Level 1
  (981, 98100, 384, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Farigiraf - Guard Swap - Level 1
  (981, 98100, 385, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Farigiraf - Confusion - Level 5
  (981, 98100, 93, 23, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Farigiraf - Assurance - Level 10
  (981, 98100, 372, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Farigiraf - Stomp - Level 14
  (981, 98100, 23, 23, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Farigiraf - Psybeam - Level 19
  (981, 98100, 60, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Farigiraf - Agility - Level 23
  (981, 98100, 97, 23, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Farigiraf - Double Hit - Level 28
  (981, 98100, 458, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Farigiraf - Twin Beam - Level 32
  (981, 98100, 888, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Farigiraf - Crunch - Level 37
  (981, 98100, 242, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Farigiraf - Baton Pass - Level 41
  (981, 98100, 226, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Farigiraf - Nasty Plot - Level 46
  (981, 98100, 417, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Farigiraf - Psychic - Level 50
  (981, 98100, 94, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Farigiraf - Take Down - TM001
  (981, 98100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Farigiraf - Agility - TM004
  (981, 98100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Farigiraf - Protect - TM007
  (981, 98100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Farigiraf - Low Kick - TM012
  (981, 98100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Farigiraf - Psybeam - TM016
  (981, 98100, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Farigiraf - Confuse Ray - TM017
  (981, 98100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Farigiraf - Thief - TM018
  (981, 98100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Farigiraf - Trailblaze - TM020
  (981, 98100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Farigiraf - Charge Beam - TM023
  (981, 98100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 25),
  -- Farigiraf - Facade - TM025
  (981, 98100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Farigiraf - Bulldoze - TM028
  (981, 98100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Farigiraf - Swift - TM032
  (981, 98100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Farigiraf - Stored Power - TM041
  (981, 98100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Farigiraf - Night Shade - TM042
  (981, 98100, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Farigiraf - Endure - TM047
  (981, 98100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Farigiraf - Sunny Day - TM049
  (981, 98100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Farigiraf - Rain Dance - TM050
  (981, 98100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Farigiraf - Psyshock - TM054
  (981, 98100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Farigiraf - Zen Headbutt - TM059
  (981, 98100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Farigiraf - Foul Play - TM062
  (981, 98100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Farigiraf - Psychic Fangs - TM063
  (981, 98100, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Farigiraf - Body Slam - TM066
  (981, 98100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Farigiraf - Sleep Talk - TM070
  (981, 98100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Farigiraf - Reflect - TM074
  (981, 98100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Farigiraf - Light Screen - TM075
  (981, 98100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Farigiraf - Dazzling Gleam - TM079
  (981, 98100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 42),
  -- Farigiraf - Grass Knot - TM081
  (981, 98100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Farigiraf - Thunder Wave - TM082
  (981, 98100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 44),
  -- Farigiraf - Stomping Tantrum - TM084
  (981, 98100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Farigiraf - Rest - TM085
  (981, 98100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Farigiraf - Imprison - TM092
  (981, 98100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 47),
  -- Farigiraf - Skill Swap - TM098
  (981, 98100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 48),
  -- Farigiraf - Iron Head - TM099
  (981, 98100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 49),
  -- Farigiraf - Substitute - TM103
  (981, 98100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Farigiraf - Crunch - TM108
  (981, 98100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Farigiraf - Trick - TM109
  (981, 98100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Farigiraf - Shadow Ball - TM114
  (981, 98100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Farigiraf - Hyper Voice - TM117
  (981, 98100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Farigiraf - Energy Ball - TM119
  (981, 98100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 55),
  -- Farigiraf - Psychic - TM120
  (981, 98100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 56),
  -- Farigiraf - Thunderbolt - TM126
  (981, 98100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Farigiraf - Amnesia - TM128
  (981, 98100, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 58),
  -- Farigiraf - Calm Mind - TM129
  (981, 98100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 59),
  -- Farigiraf - Helping Hand - TM130
  (981, 98100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 60),
  -- Farigiraf - Baton Pass - TM132
  (981, 98100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 61),
  -- Farigiraf - Psychic Terrain - TM138
  (981, 98100, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 62),
  -- Farigiraf - Nasty Plot - TM140
  (981, 98100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Farigiraf - Earthquake - TM149
  (981, 98100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 64),
  -- Farigiraf - Giga Impact - TM152
  (981, 98100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 65),
  -- Farigiraf - Trick Room - TM161
  (981, 98100, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 66),
  -- Farigiraf - Hyper Beam - TM163
  (981, 98100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Farigiraf - Thunder - TM166
  (981, 98100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Farigiraf - Tera Blast - TM171
  (981, 98100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Farigiraf - Double Kick - Egg
  (981, 98100, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Farigiraf - Take Down - Egg
  (981, 98100, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Farigiraf - Mean Look - Egg
  (981, 98100, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Farigiraf - Mirror Coat - Egg
  (981, 98100, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Farigiraf - Future Sight - Egg
  (981, 98100, 248, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Farigiraf - Beat Up - Egg
  (981, 98100, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Farigiraf - Uproar - Egg
  (981, 98100, 253, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Farigiraf - Wish - Egg
  (981, 98100, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Farigiraf - Ally Switch - Egg
  (981, 98100, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Dudunsparce - Defense Curl - Level 1
  (982, 98200, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dudunsparce - Flail - Level 1
  (982, 98200, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dudunsparce - Mud-Slap - Level 4
  (982, 98200, 189, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dudunsparce - Rollout - Level 8
  (982, 98200, 205, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dudunsparce - Glare - Level 12
  (982, 98200, 137, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dudunsparce - Screech - Level 16
  (982, 98200, 103, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dudunsparce - Ancient Power - Level 20
  (982, 98200, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dudunsparce - Drill Run - Level 24
  (982, 98200, 529, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dudunsparce - Yawn - Level 28
  (982, 98200, 281, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dudunsparce - Hyper Drill - Level 32
  (982, 98200, 887, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dudunsparce - Roost - Level 36
  (982, 98200, 355, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dudunsparce - Dragon Rush - Level 40
  (982, 98200, 407, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dudunsparce - Coil - Level 44
  (982, 98200, 489, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dudunsparce - Double-Edge - Level 48
  (982, 98200, 38, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dudunsparce - Endeavor - Level 52
  (982, 98200, 283, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Dudunsparce - Hurricane - Level 56
  (982, 98200, 542, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Dudunsparce - Boomburst - Level 62
  (982, 98200, 586, 23, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Dudunsparce - Take Down - TM001
  (982, 98200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Dudunsparce - Agility - TM004
  (982, 98200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Dudunsparce - Mud-Slap - TM005
  (982, 98200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Dudunsparce - Scary Face - TM006
  (982, 98200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Dudunsparce - Protect - TM007
  (982, 98200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Dudunsparce - Thief - TM018
  (982, 98200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Dudunsparce - Pounce - TM021
  (982, 98200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Dudunsparce - Chilling Water - TM022
  (982, 98200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Dudunsparce - Facade - TM025
  (982, 98200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Dudunsparce - Poison Tail - TM026
  (982, 98200, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 27),
  -- Dudunsparce - Bulldoze - TM028
  (982, 98200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Dudunsparce - Hex - TM029
  (982, 98200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 29),
  -- Dudunsparce - Mud Shot - TM035
  (982, 98200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Dudunsparce - Rock Tomb - TM036
  (982, 98200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Dudunsparce - Stored Power - TM041
  (982, 98200, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 32),
  -- Dudunsparce - Dragon Tail - TM044
  (982, 98200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 33),
  -- Dudunsparce - Endure - TM047
  (982, 98200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Dudunsparce - Sunny Day - TM049
  (982, 98200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Dudunsparce - Rain Dance - TM050
  (982, 98200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Dudunsparce - Sandstorm - TM051
  (982, 98200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 37),
  -- Dudunsparce - Smart Strike - TM053
  (982, 98200, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 38),
  -- Dudunsparce - Dig - TM055
  (982, 98200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Dudunsparce - Zen Headbutt - TM059
  (982, 98200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 40),
  -- Dudunsparce - Air Slash - TM065
  (982, 98200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 41),
  -- Dudunsparce - Body Slam - TM066
  (982, 98200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Dudunsparce - Sleep Talk - TM070
  (982, 98200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Dudunsparce - Poison Jab - TM083
  (982, 98200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Dudunsparce - Stomping Tantrum - TM084
  (982, 98200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Dudunsparce - Rest - TM085
  (982, 98200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Dudunsparce - Rock Slide - TM086
  (982, 98200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Dudunsparce - Body Press - TM089
  (982, 98200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 48),
  -- Dudunsparce - Substitute - TM103
  (982, 98200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Dudunsparce - Drill Run - TM106
  (982, 98200, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 50),
  -- Dudunsparce - Tailwind - TM113
  (982, 98200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 51),
  -- Dudunsparce - Shadow Ball - TM114
  (982, 98200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Dudunsparce - Stealth Rock - TM116
  (982, 98200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Dudunsparce - Hyper Voice - TM117
  (982, 98200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Dudunsparce - Heavy Slam - TM121
  (982, 98200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 55),
  -- Dudunsparce - Ice Spinner - TM124
  (982, 98200, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 56),
  -- Dudunsparce - Flamethrower - TM125
  (982, 98200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 57),
  -- Dudunsparce - Thunderbolt - TM126
  (982, 98200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 58),
  -- Dudunsparce - Amnesia - TM128
  (982, 98200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 59),
  -- Dudunsparce - Calm Mind - TM129
  (982, 98200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 60),
  -- Dudunsparce - Helping Hand - TM130
  (982, 98200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Dudunsparce - Baton Pass - TM132
  (982, 98200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 62),
  -- Dudunsparce - Earth Power - TM133
  (982, 98200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 63),
  -- Dudunsparce - Ice Beam - TM135
  (982, 98200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 64),
  -- Dudunsparce - Fire Blast - TM141
  (982, 98200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 65),
  -- Dudunsparce - Blizzard - TM143
  (982, 98200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 66),
  -- Dudunsparce - Wild Charge - TM147
  (982, 98200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 67),
  -- Dudunsparce - Earthquake - TM149
  (982, 98200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 68),
  -- Dudunsparce - Stone Edge - TM150
  (982, 98200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 69),
  -- Dudunsparce - Giga Impact - TM152
  (982, 98200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 70),
  -- Dudunsparce - Outrage - TM156
  (982, 98200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 71),
  -- Dudunsparce - Hurricane - TM160
  (982, 98200, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 72),
  -- Dudunsparce - Hyper Beam - TM163
  (982, 98200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 73),
  -- Dudunsparce - Thunder - TM166
  (982, 98200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 74),
  -- Dudunsparce - Solar Beam - TM168
  (982, 98200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 75),
  -- Dudunsparce - Tera Blast - TM171
  (982, 98200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 76),
  -- Dudunsparce - Headbutt - Egg
  (982, 98200, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Dudunsparce - Bite - Egg
  (982, 98200, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Dudunsparce - Curse - Egg
  (982, 98200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Dudunsparce - Astonish - Egg
  (982, 98200, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Dudunsparce - Last Resort - Egg
  (982, 98200, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Dudunsparce - Aqua Tail - Egg
  (982, 98200, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Kingambit - Scratch - Level 1
  (983, 98300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingambit - Leer - Level 1
  (983, 98300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingambit - Fury Cutter - Level 1
  (983, 98300, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingambit - Metal Claw - Level 1
  (983, 98300, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingambit - Metal Burst - Level 1
  (983, 98300, 368, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingambit - Torment - Level 15
  (983, 98300, 259, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Kingambit - Scary Face - Level 20
  (983, 98300, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kingambit - Assurance - Level 25
  (983, 98300, 372, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Kingambit - Metal Sound - Level 30
  (983, 98300, 319, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kingambit - Slash - Level 35
  (983, 98300, 163, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Kingambit - Night Slash - Level 40
  (983, 98300, 400, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Kingambit - Iron Defense - Level 45
  (983, 98300, 334, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Kingambit - Retaliate - Level 50
  (983, 98300, 514, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Kingambit - Iron Head - Level 57
  (983, 98300, 442, 23, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Kingambit - Swords Dance - Level 64
  (983, 98300, 14, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Kingambit - Guillotine - Level 71
  (983, 98300, 12, 23, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Kingambit - Take Down - TM001
  (983, 98300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Kingambit - Scary Face - TM006
  (983, 98300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Kingambit - Protect - TM007
  (983, 98300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Kingambit - Low Kick - TM012
  (983, 98300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Kingambit - Thief - TM018
  (983, 98300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Kingambit - Facade - TM025
  (983, 98300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Kingambit - Aerial Ace - TM027
  (983, 98300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Kingambit - Snarl - TM030
  (983, 98300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Kingambit - Metal Claw - TM031
  (983, 98300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Kingambit - Rock Tomb - TM036
  (983, 98300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Kingambit - Low Sweep - TM039
  (983, 98300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Kingambit - Fling - TM043
  (983, 98300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Kingambit - Endure - TM047
  (983, 98300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Kingambit - Rain Dance - TM050
  (983, 98300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Kingambit - Sandstorm - TM051
  (983, 98300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Kingambit - Dig - TM055
  (983, 98300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Kingambit - False Swipe - TM057
  (983, 98300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 33),
  -- Kingambit - Brick Break - TM058
  (983, 98300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Kingambit - Zen Headbutt - TM059
  (983, 98300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Kingambit - Shadow Claw - TM061
  (983, 98300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Kingambit - Foul Play - TM062
  (983, 98300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Kingambit - Air Slash - TM065
  (983, 98300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Kingambit - Sleep Talk - TM070
  (983, 98300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Kingambit - Grass Knot - TM081
  (983, 98300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Kingambit - Thunder Wave - TM082
  (983, 98300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 41),
  -- Kingambit - Poison Jab - TM083
  (983, 98300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 42),
  -- Kingambit - Rest - TM085
  (983, 98300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Kingambit - Taunt - TM087
  (983, 98300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Kingambit - Swords Dance - TM088
  (983, 98300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Kingambit - Flash Cannon - TM093
  (983, 98300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 46),
  -- Kingambit - Dark Pulse - TM094
  (983, 98300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Kingambit - Iron Head - TM099
  (983, 98300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Kingambit - Substitute - TM103
  (983, 98300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Kingambit - Iron Defense - TM104
  (983, 98300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 50),
  -- Kingambit - X-Scissor - TM105
  (983, 98300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 51),
  -- Kingambit - Stealth Rock - TM116
  (983, 98300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 52),
  -- Kingambit - Reversal - TM134
  (983, 98300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 53),
  -- Kingambit - Stone Edge - TM150
  (983, 98300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 54),
  -- Kingambit - Giga Impact - TM152
  (983, 98300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Kingambit - Focus Blast - TM158
  (983, 98300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Kingambit - Hyper Beam - TM163
  (983, 98300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Kingambit - Steel Beam - TM170
  (983, 98300, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 58),
  -- Kingambit - Tera Blast - TM171
  (983, 98300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Kingambit - Headbutt - Egg
  (983, 98300, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kingambit - Mean Look - Egg
  (983, 98300, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Kingambit - Sucker Punch - Egg
  (983, 98300, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kingambit - Quick Guard - Egg
  (983, 98300, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Kingambit - Kowtow Cleave - Evolution
  (983, 98300, 869, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Great Tusk - Horn Attack - Level 1
  (984, 98400, 30, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Great Tusk - Defense Curl - Level 1
  (984, 98400, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Great Tusk - Rollout - Level 1
  (984, 98400, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Great Tusk - Sunny Day - Level 1
  (984, 98400, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Great Tusk - Bulldoze - Level 7
  (984, 98400, 523, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Great Tusk - Taunt - Level 14
  (984, 98400, 269, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Great Tusk - Rapid Spin - Level 21
  (984, 98400, 229, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Great Tusk - Brick Break - Level 28
  (984, 98400, 280, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Great Tusk - Stomping Tantrum - Level 35
  (984, 98400, 707, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Great Tusk - Knock Off - Level 42
  (984, 98400, 282, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Great Tusk - Earthquake - Level 49
  (984, 98400, 89, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Great Tusk - Giga Impact - Level 56
  (984, 98400, 416, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Great Tusk - Close Combat - Level 63
  (984, 98400, 370, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Great Tusk - Endeavor - Level 70
  (984, 98400, 283, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Great Tusk - Megahorn - Level 77
  (984, 98400, 224, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Great Tusk - Head Smash - Level 84
  (984, 98400, 457, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Great Tusk - Headlong Rush - Level 91
  (984, 98400, 838, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Great Tusk - Take Down - TM001
  (984, 98400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Great Tusk - Mud-Slap - TM005
  (984, 98400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Great Tusk - Scary Face - TM006
  (984, 98400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Great Tusk - Protect - TM007
  (984, 98400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Great Tusk - Fire Fang - TM008
  (984, 98400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Great Tusk - Thunder Fang - TM009
  (984, 98400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Great Tusk - Ice Fang - TM010
  (984, 98400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Great Tusk - Facade - TM025
  (984, 98400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Great Tusk - Bulldoze - TM028
  (984, 98400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Great Tusk - Mud Shot - TM035
  (984, 98400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Great Tusk - Rock Tomb - TM036
  (984, 98400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Great Tusk - Endure - TM047
  (984, 98400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Great Tusk - Sunny Day - TM049
  (984, 98400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Great Tusk - Sandstorm - TM051
  (984, 98400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Great Tusk - Smart Strike - TM053
  (984, 98400, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Great Tusk - Psyshock - TM054
  (984, 98400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Great Tusk - Dig - TM055
  (984, 98400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Great Tusk - Brick Break - TM058
  (984, 98400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Great Tusk - Zen Headbutt - TM059
  (984, 98400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Great Tusk - Bulk Up - TM064
  (984, 98400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Great Tusk - Body Slam - TM066
  (984, 98400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Great Tusk - Sleep Talk - TM070
  (984, 98400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Great Tusk - Stomping Tantrum - TM084
  (984, 98400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Great Tusk - Rest - TM085
  (984, 98400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Great Tusk - Rock Slide - TM086
  (984, 98400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Great Tusk - Taunt - TM087
  (984, 98400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Great Tusk - Body Press - TM089
  (984, 98400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 44),
  -- Great Tusk - Flash Cannon - TM093
  (984, 98400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 45),
  -- Great Tusk - Iron Head - TM099
  (984, 98400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 46),
  -- Great Tusk - Substitute - TM103
  (984, 98400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Great Tusk - Stealth Rock - TM116
  (984, 98400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 48),
  -- Great Tusk - Heavy Slam - TM121
  (984, 98400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 49),
  -- Great Tusk - Ice Spinner - TM124
  (984, 98400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Great Tusk - Play Rough - TM127
  (984, 98400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 51),
  -- Great Tusk - Earth Power - TM133
  (984, 98400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Great Tusk - Reversal - TM134
  (984, 98400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 53),
  -- Great Tusk - Earthquake - TM149
  (984, 98400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Great Tusk - Stone Edge - TM150
  (984, 98400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 55),
  -- Great Tusk - Giga Impact - TM152
  (984, 98400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Great Tusk - Hyper Beam - TM163
  (984, 98400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Great Tusk - Close Combat - TM167
  (984, 98400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 58),
  -- Great Tusk - Tera Blast - TM171
  (984, 98400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Scream Tail - Pound - Level 1
  (985, 98500, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scream Tail - Sing - Level 1
  (985, 98500, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scream Tail - Disable - Level 1
  (985, 98500, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scream Tail - Howl - Level 7
  (985, 98500, 336, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Scream Tail - Noble Roar - Level 14
  (985, 98500, 568, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Scream Tail - Bite - Level 21
  (985, 98500, 44, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Scream Tail - Body Slam - Level 28
  (985, 98500, 34, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Scream Tail - Rest - Level 35
  (985, 98500, 156, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Scream Tail - Play Rough - Level 42
  (985, 98500, 583, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Scream Tail - Hyper Voice - Level 49
  (985, 98500, 304, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Scream Tail - Psychic Fangs - Level 56
  (985, 98500, 706, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Scream Tail - Crunch - Level 63
  (985, 98500, 242, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Scream Tail - Wish - Level 70
  (985, 98500, 273, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Scream Tail - Gyro Ball - Level 77
  (985, 98500, 360, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Scream Tail - Perish Song - Level 84
  (985, 98500, 195, 23, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Scream Tail - Boomburst - Level 91
  (985, 98500, 586, 23, NULL, 1, 91, NULL, NULL, NULL, 16),
  -- Scream Tail - Take Down - TM001
  (985, 98500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Scream Tail - Fake Tears - TM003
  (985, 98500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Scream Tail - Scary Face - TM006
  (985, 98500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Scream Tail - Protect - TM007
  (985, 98500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Scream Tail - Fire Fang - TM008
  (985, 98500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Scream Tail - Thunder Fang - TM009
  (985, 98500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Scream Tail - Ice Fang - TM010
  (985, 98500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Scream Tail - Water Pulse - TM011
  (985, 98500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Scream Tail - Psybeam - TM016
  (985, 98500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 25),
  -- Scream Tail - Facade - TM025
  (985, 98500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Scream Tail - Rock Tomb - TM036
  (985, 98500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Scream Tail - Stored Power - TM041
  (985, 98500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Scream Tail - Fling - TM043
  (985, 98500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Scream Tail - Endure - TM047
  (985, 98500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Scream Tail - Sunny Day - TM049
  (985, 98500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Scream Tail - Rain Dance - TM050
  (985, 98500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Scream Tail - Sandstorm - TM051
  (985, 98500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Scream Tail - Snowscape - TM052
  (985, 98500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 34),
  -- Scream Tail - Psyshock - TM054
  (985, 98500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 35),
  -- Scream Tail - Dig - TM055
  (985, 98500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Scream Tail - Zen Headbutt - TM059
  (985, 98500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Scream Tail - Psychic Fangs - TM063
  (985, 98500, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 38),
  -- Scream Tail - Bulk Up - TM064
  (985, 98500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 39),
  -- Scream Tail - Body Slam - TM066
  (985, 98500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Scream Tail - Fire Punch - TM067
  (985, 98500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 41),
  -- Scream Tail - Thunder Punch - TM068
  (985, 98500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 42),
  -- Scream Tail - Ice Punch - TM069
  (985, 98500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 43),
  -- Scream Tail - Sleep Talk - TM070
  (985, 98500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Scream Tail - Drain Punch - TM073
  (985, 98500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 45),
  -- Scream Tail - Reflect - TM074
  (985, 98500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 46),
  -- Scream Tail - Light Screen - TM075
  (985, 98500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 47),
  -- Scream Tail - Dazzling Gleam - TM079
  (985, 98500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 48),
  -- Scream Tail - Metronome - TM080
  (985, 98500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 49),
  -- Scream Tail - Grass Knot - TM081
  (985, 98500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 50),
  -- Scream Tail - Thunder Wave - TM082
  (985, 98500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 51),
  -- Scream Tail - Stomping Tantrum - TM084
  (985, 98500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 52),
  -- Scream Tail - Rest - TM085
  (985, 98500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 53),
  -- Scream Tail - Imprison - TM092
  (985, 98500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 54),
  -- Scream Tail - Substitute - TM103
  (985, 98500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Scream Tail - Crunch - TM108
  (985, 98500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 56),
  -- Scream Tail - Trick - TM109
  (985, 98500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 57),
  -- Scream Tail - Stealth Rock - TM116
  (985, 98500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 58),
  -- Scream Tail - Hyper Voice - TM117
  (985, 98500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 59),
  -- Scream Tail - Psychic - TM120
  (985, 98500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 60),
  -- Scream Tail - Encore - TM122
  (985, 98500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 61),
  -- Scream Tail - Flamethrower - TM125
  (985, 98500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 62),
  -- Scream Tail - Thunderbolt - TM126
  (985, 98500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 63),
  -- Scream Tail - Play Rough - TM127
  (985, 98500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 64),
  -- Scream Tail - Amnesia - TM128
  (985, 98500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 65),
  -- Scream Tail - Calm Mind - TM129
  (985, 98500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 66),
  -- Scream Tail - Helping Hand - TM130
  (985, 98500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Scream Tail - Baton Pass - TM132
  (985, 98500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 68),
  -- Scream Tail - Ice Beam - TM135
  (985, 98500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 69),
  -- Scream Tail - Psychic Terrain - TM138
  (985, 98500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 70),
  -- Scream Tail - Misty Terrain - TM139
  (985, 98500, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 71),
  -- Scream Tail - Fire Blast - TM141
  (985, 98500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 72),
  -- Scream Tail - Blizzard - TM143
  (985, 98500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 73),
  -- Scream Tail - Giga Impact - TM152
  (985, 98500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 74),
  -- Scream Tail - Focus Blast - TM158
  (985, 98500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 75),
  -- Scream Tail - Trick Room - TM161
  (985, 98500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 76),
  -- Scream Tail - Hyper Beam - TM163
  (985, 98500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 77),
  -- Scream Tail - Thunder - TM166
  (985, 98500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 78),
  -- Scream Tail - Tera Blast - TM171
  (985, 98500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 79),
  -- Scream Tail - Sunny Day - Reminder
  (985, 98500, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Brute Bonnet - Absorb - Level 1
  (986, 98600, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Brute Bonnet - Growth - Level 1
  (986, 98600, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Brute Bonnet - Astonish - Level 1
  (986, 98600, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Brute Bonnet - Stun Spore - Level 7
  (986, 98600, 78, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Brute Bonnet - Mega Drain - Level 14
  (986, 98600, 72, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Brute Bonnet - Synthesis - Level 21
  (986, 98600, 235, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Brute Bonnet - Clear Smog - Level 28
  (986, 98600, 499, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Brute Bonnet - Payback - Level 35
  (986, 98600, 371, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Brute Bonnet - Thrash - Level 42
  (986, 98600, 37, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Brute Bonnet - Giga Drain - Level 49
  (986, 98600, 202, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Brute Bonnet - Sucker Punch - Level 56
  (986, 98600, 389, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Brute Bonnet - Spore - Level 63
  (986, 98600, 147, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Brute Bonnet - Ingrain - Level 70
  (986, 98600, 275, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Brute Bonnet - Rage Powder - Level 77
  (986, 98600, 476, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Brute Bonnet - Solar Beam - Level 91
  (986, 98600, 76, 23, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Brute Bonnet - Scary Face - TM006
  (986, 98600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Brute Bonnet - Protect - TM007
  (986, 98600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Brute Bonnet - Confuse Ray - TM017
  (986, 98600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Brute Bonnet - Thief - TM018
  (986, 98600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Brute Bonnet - Trailblaze - TM020
  (986, 98600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Brute Bonnet - Facade - TM025
  (986, 98600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Brute Bonnet - Hex - TM029
  (986, 98600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Brute Bonnet - Magical Leaf - TM033
  (986, 98600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Brute Bonnet - Venoshock - TM045
  (986, 98600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 24),
  -- Brute Bonnet - Endure - TM047
  (986, 98600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Brute Bonnet - Sunny Day - TM049
  (986, 98600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Brute Bonnet - Bullet Seed - TM056
  (986, 98600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Brute Bonnet - Zen Headbutt - TM059
  (986, 98600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Brute Bonnet - Body Slam - TM066
  (986, 98600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Brute Bonnet - Sleep Talk - TM070
  (986, 98600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Brute Bonnet - Seed Bomb - TM071
  (986, 98600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Brute Bonnet - Grass Knot - TM081
  (986, 98600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Brute Bonnet - Stomping Tantrum - TM084
  (986, 98600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Brute Bonnet - Rest - TM085
  (986, 98600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Brute Bonnet - Taunt - TM087
  (986, 98600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Brute Bonnet - Body Press - TM089
  (986, 98600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Brute Bonnet - Dark Pulse - TM094
  (986, 98600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Brute Bonnet - Substitute - TM103
  (986, 98600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Brute Bonnet - Crunch - TM108
  (986, 98600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Brute Bonnet - Giga Drain - TM111
  (986, 98600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Brute Bonnet - Energy Ball - TM119
  (986, 98600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 41),
  -- Brute Bonnet - Pollen Puff - TM131
  (986, 98600, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 42),
  -- Brute Bonnet - Earth Power - TM133
  (986, 98600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Brute Bonnet - Grassy Terrain - TM137
  (986, 98600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 44),
  -- Brute Bonnet - Giga Impact - TM152
  (986, 98600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Brute Bonnet - Outrage - TM156
  (986, 98600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Brute Bonnet - Leaf Storm - TM159
  (986, 98600, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Brute Bonnet - Hyper Beam - TM163
  (986, 98600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Brute Bonnet - Close Combat - TM167
  (986, 98600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 49),
  -- Brute Bonnet - Solar Beam - TM168
  (986, 98600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 50),
  -- Brute Bonnet - Tera Blast - TM171
  (986, 98600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Brute Bonnet - Sunny Day - Reminder
  (986, 98600, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 52),
  -- Flutter Mane - Confuse Ray - Level 1
  (987, 98700, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flutter Mane - Spite - Level 1
  (987, 98700, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flutter Mane - Astonish - Level 1
  (987, 98700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flutter Mane - Psybeam - Level 7
  (987, 98700, 60, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Flutter Mane - Mean Look - Level 14
  (987, 98700, 212, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Flutter Mane - Memento - Level 21
  (987, 98700, 262, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Flutter Mane - Wish - Level 28
  (987, 98700, 273, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Flutter Mane - Dazzling Gleam - Level 35
  (987, 98700, 605, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Flutter Mane - Shadow Ball - Level 42
  (987, 98700, 247, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Flutter Mane - Mystical Fire - Level 49
  (987, 98700, 595, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Flutter Mane - Power Gem - Level 56
  (987, 98700, 408, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Flutter Mane - Psyshock - Level 63
  (987, 98700, 473, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Flutter Mane - Phantom Force - Level 70
  (987, 98700, 566, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Flutter Mane - Pain Split - Level 77
  (987, 98700, 220, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Flutter Mane - Moonblast - Level 84
  (987, 98700, 585, 23, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Flutter Mane - Perish Song - Level 91
  (987, 98700, 195, 23, NULL, 1, 91, NULL, NULL, NULL, 16),
  -- Flutter Mane - Charm - TM002
  (987, 98700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Flutter Mane - Fake Tears - TM003
  (987, 98700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Flutter Mane - Protect - TM007
  (987, 98700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Flutter Mane - Psybeam - TM016
  (987, 98700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Flutter Mane - Confuse Ray - TM017
  (987, 98700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Flutter Mane - Disarming Voice - TM019
  (987, 98700, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Flutter Mane - Charge Beam - TM023
  (987, 98700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Flutter Mane - Hex - TM029
  (987, 98700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Flutter Mane - Swift - TM032
  (987, 98700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Flutter Mane - Magical Leaf - TM033
  (987, 98700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Flutter Mane - Icy Wind - TM034
  (987, 98700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Flutter Mane - Draining Kiss - TM037
  (987, 98700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 28),
  -- Flutter Mane - Stored Power - TM041
  (987, 98700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Flutter Mane - Night Shade - TM042
  (987, 98700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Flutter Mane - Endure - TM047
  (987, 98700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Flutter Mane - Sunny Day - TM049
  (987, 98700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Flutter Mane - Psyshock - TM054
  (987, 98700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Flutter Mane - Sleep Talk - TM070
  (987, 98700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Flutter Mane - Dazzling Gleam - TM079
  (987, 98700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Flutter Mane - Thunder Wave - TM082
  (987, 98700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Flutter Mane - Rest - TM085
  (987, 98700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Flutter Mane - Taunt - TM087
  (987, 98700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Flutter Mane - Imprison - TM092
  (987, 98700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 39),
  -- Flutter Mane - Dark Pulse - TM094
  (987, 98700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Flutter Mane - Power Gem - TM101
  (987, 98700, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 41),
  -- Flutter Mane - Substitute - TM103
  (987, 98700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Flutter Mane - Shadow Ball - TM114
  (987, 98700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Flutter Mane - Hyper Voice - TM117
  (987, 98700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Flutter Mane - Energy Ball - TM119
  (987, 98700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 45),
  -- Flutter Mane - Thunderbolt - TM126
  (987, 98700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Flutter Mane - Calm Mind - TM129
  (987, 98700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Flutter Mane - Helping Hand - TM130
  (987, 98700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Flutter Mane - Misty Terrain - TM139
  (987, 98700, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 49),
  -- Flutter Mane - Phantom Force - TM151
  (987, 98700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 50),
  -- Flutter Mane - Giga Impact - TM152
  (987, 98700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Flutter Mane - Trick Room - TM161
  (987, 98700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 52),
  -- Flutter Mane - Hyper Beam - TM163
  (987, 98700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Flutter Mane - Thunder - TM166
  (987, 98700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Flutter Mane - Tera Blast - TM171
  (987, 98700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Flutter Mane - Sunny Day - Reminder
  (987, 98700, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Slither Wing - Gust - Level 1
  (988, 98800, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slither Wing - Ember - Level 1
  (988, 98800, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slither Wing - Bug Bite - Level 1
  (988, 98800, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slither Wing - Poison Powder - Level 7
  (988, 98800, 77, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Slither Wing - Stun Spore - Level 7
  (988, 98800, 78, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Slither Wing - Flame Charge - Level 14
  (988, 98800, 488, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Slither Wing - Stomp - Level 21
  (988, 98800, 23, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Slither Wing - Low Sweep - Level 28
  (988, 98800, 490, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Slither Wing - Morning Sun - Level 35
  (988, 98800, 234, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Slither Wing - Lunge - Level 42
  (988, 98800, 679, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Slither Wing - Superpower - Level 49
  (988, 98800, 276, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Slither Wing - Bulk Up - Level 56
  (988, 98800, 339, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Slither Wing - Dual Wingbeat - Level 63
  (988, 98800, 814, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Slither Wing - First Impression - Level 70
  (988, 98800, 660, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Slither Wing - Whirlwind - Level 77
  (988, 98800, 18, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Slither Wing - Leech Life - Level 84
  (988, 98800, 141, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Slither Wing - Thrash - Level 91
  (988, 98800, 37, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Slither Wing - Take Down - TM001
  (988, 98800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Slither Wing - Protect - TM007
  (988, 98800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Slither Wing - Low Kick - TM012
  (988, 98800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Slither Wing - Acrobatics - TM014
  (988, 98800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Slither Wing - Trailblaze - TM020
  (988, 98800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Slither Wing - Facade - TM025
  (988, 98800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Slither Wing - Aerial Ace - TM027
  (988, 98800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Slither Wing - Flame Charge - TM038
  (988, 98800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Slither Wing - Low Sweep - TM039
  (988, 98800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Slither Wing - Endure - TM047
  (988, 98800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Slither Wing - Sunny Day - TM049
  (988, 98800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Slither Wing - Rain Dance - TM050
  (988, 98800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Slither Wing - Sandstorm - TM051
  (988, 98800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Slither Wing - Brick Break - TM058
  (988, 98800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Slither Wing - Zen Headbutt - TM059
  (988, 98800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Slither Wing - U-turn - TM060
  (988, 98800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Slither Wing - Bulk Up - TM064
  (988, 98800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Slither Wing - Body Slam - TM066
  (988, 98800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Slither Wing - Sleep Talk - TM070
  (988, 98800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Slither Wing - Stomping Tantrum - TM084
  (988, 98800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Slither Wing - Rest - TM085
  (988, 98800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Slither Wing - Body Press - TM089
  (988, 98800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Slither Wing - Leech Life - TM095
  (988, 98800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 40),
  -- Slither Wing - Substitute - TM103
  (988, 98800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Slither Wing - Will-O-Wisp - TM107
  (988, 98800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Slither Wing - Giga Drain - TM111
  (988, 98800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Slither Wing - Heat Wave - TM118
  (988, 98800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Slither Wing - Heavy Slam - TM121
  (988, 98800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Slither Wing - Reversal - TM134
  (988, 98800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 46),
  -- Slither Wing - Wild Charge - TM147
  (988, 98800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Slither Wing - Earthquake - TM149
  (988, 98800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Slither Wing - Giga Impact - TM152
  (988, 98800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Slither Wing - Hurricane - TM160
  (988, 98800, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 50),
  -- Slither Wing - Bug Buzz - TM162
  (988, 98800, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 51),
  -- Slither Wing - Hyper Beam - TM163
  (988, 98800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Slither Wing - Flare Blitz - TM165
  (988, 98800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Slither Wing - Close Combat - TM167
  (988, 98800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Slither Wing - Tera Blast - TM171
  (988, 98800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Slither Wing - Sunny Day - Reminder
  (988, 98800, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Sandy Shocks - Supersonic - Level 1
  (989, 98900, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandy Shocks - Thunder Shock - Level 1
  (989, 98900, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandy Shocks - Thunder Wave - Level 1
  (989, 98900, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandy Shocks - Electric Terrain - Level 1
  (989, 98900, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandy Shocks - Spark - Level 7
  (989, 98900, 209, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sandy Shocks - Bulldoze - Level 14
  (989, 98900, 523, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Sandy Shocks - Charge Beam - Level 21
  (989, 98900, 451, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Sandy Shocks - Tri Attack - Level 28
  (989, 98900, 161, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Sandy Shocks - Screech - Level 35
  (989, 98900, 103, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sandy Shocks - Heavy Slam - Level 42
  (989, 98900, 484, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Sandy Shocks - Metal Sound - Level 49
  (989, 98900, 319, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Sandy Shocks - Discharge - Level 56
  (989, 98900, 435, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Sandy Shocks - Earth Power - Level 63
  (989, 98900, 414, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Sandy Shocks - Mirror Coat - Level 70
  (989, 98900, 243, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Sandy Shocks - Gravity - Level 77
  (989, 98900, 356, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Sandy Shocks - Zap Cannon - Level 84
  (989, 98900, 192, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Sandy Shocks - Magnetic Flux - Level 91
  (989, 98900, 602, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Sandy Shocks - Take Down - TM001
  (989, 98900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Sandy Shocks - Protect - TM007
  (989, 98900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Sandy Shocks - Charge Beam - TM023
  (989, 98900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Sandy Shocks - Facade - TM025
  (989, 98900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Sandy Shocks - Bulldoze - TM028
  (989, 98900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Sandy Shocks - Swift - TM032
  (989, 98900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Sandy Shocks - Mud Shot - TM035
  (989, 98900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Sandy Shocks - Endure - TM047
  (989, 98900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Sandy Shocks - Volt Switch - TM048
  (989, 98900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Sandy Shocks - Sunny Day - TM049
  (989, 98900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Sandy Shocks - Sandstorm - TM051
  (989, 98900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Sandy Shocks - Body Slam - TM066
  (989, 98900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Sandy Shocks - Sleep Talk - TM070
  (989, 98900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Sandy Shocks - Electro Ball - TM072
  (989, 98900, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 31),
  -- Sandy Shocks - Reflect - TM074
  (989, 98900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Sandy Shocks - Light Screen - TM075
  (989, 98900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Sandy Shocks - Thunder Wave - TM082
  (989, 98900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Sandy Shocks - Stomping Tantrum - TM084
  (989, 98900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Sandy Shocks - Rest - TM085
  (989, 98900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Sandy Shocks - Body Press - TM089
  (989, 98900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Sandy Shocks - Spikes - TM090
  (989, 98900, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 38),
  -- Sandy Shocks - Flash Cannon - TM093
  (989, 98900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Sandy Shocks - Eerie Impulse - TM096
  (989, 98900, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 40),
  -- Sandy Shocks - Power Gem - TM101
  (989, 98900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 41),
  -- Sandy Shocks - Substitute - TM103
  (989, 98900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Sandy Shocks - Iron Defense - TM104
  (989, 98900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Sandy Shocks - Stealth Rock - TM116
  (989, 98900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Sandy Shocks - Heavy Slam - TM121
  (989, 98900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Sandy Shocks - Thunderbolt - TM126
  (989, 98900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Sandy Shocks - Earth Power - TM133
  (989, 98900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Sandy Shocks - Electric Terrain - TM136
  (989, 98900, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 48),
  -- Sandy Shocks - Wild Charge - TM147
  (989, 98900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Sandy Shocks - Earthquake - TM149
  (989, 98900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Sandy Shocks - Giga Impact - TM152
  (989, 98900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Sandy Shocks - Hyper Beam - TM163
  (989, 98900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Sandy Shocks - Thunder - TM166
  (989, 98900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 53),
  -- Sandy Shocks - Tera Blast - TM171
  (989, 98900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Sandy Shocks - Sunny Day - Reminder
  (989, 98900, 241, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Iron Treads - Horn Attack - Level 1
  (990, 99000, 30, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Treads - Defense Curl - Level 1
  (990, 99000, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Treads - Rollout - Level 1
  (990, 99000, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Treads - Electric Terrain - Level 1
  (990, 99000, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Treads - Bulldoze - Level 7
  (990, 99000, 523, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Treads - Rapid Spin - Level 21
  (990, 99000, 229, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Iron Treads - Iron Head - Level 28
  (990, 99000, 442, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Iron Treads - Stomping Tantrum - Level 35
  (990, 99000, 707, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Iron Treads - Knock Off - Level 42
  (990, 99000, 282, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Iron Treads - Earthquake - Level 49
  (990, 99000, 89, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Iron Treads - Heavy Slam - Level 56
  (990, 99000, 484, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Iron Treads - Wild Charge - Level 63
  (990, 99000, 528, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Iron Treads - Endeavor - Level 70
  (990, 99000, 283, 23, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Iron Treads - Megahorn - Level 77
  (990, 99000, 224, 23, NULL, 1, 77, NULL, NULL, NULL, 14),
  -- Iron Treads - Giga Impact - Level 84
  (990, 99000, 416, 23, NULL, 1, 84, NULL, NULL, NULL, 15),
  -- Iron Treads - Steel Roller - Level 91
  (990, 99000, 798, 23, NULL, 1, 91, NULL, NULL, NULL, 16),
  -- Iron Treads - Take Down - TM001
  (990, 99000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Iron Treads - Mud-Slap - TM005
  (990, 99000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Iron Treads - Scary Face - TM006
  (990, 99000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Iron Treads - Protect - TM007
  (990, 99000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Iron Treads - Thunder Fang - TM009
  (990, 99000, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Iron Treads - Ice Fang - TM010
  (990, 99000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Iron Treads - Facade - TM025
  (990, 99000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Iron Treads - Bulldoze - TM028
  (990, 99000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Iron Treads - Mud Shot - TM035
  (990, 99000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Iron Treads - Rock Tomb - TM036
  (990, 99000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Iron Treads - Volt Switch - TM048
  (990, 99000, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Iron Treads - Sandstorm - TM051
  (990, 99000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Iron Treads - Smart Strike - TM053
  (990, 99000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 29),
  -- Iron Treads - Zen Headbutt - TM059
  (990, 99000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Iron Treads - Body Slam - TM066
  (990, 99000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Iron Treads - Sleep Talk - TM070
  (990, 99000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Iron Treads - Electro Ball - TM072
  (990, 99000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 33),
  -- Iron Treads - Stomping Tantrum - TM084
  (990, 99000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Iron Treads - Rest - TM085
  (990, 99000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Iron Treads - Rock Slide - TM086
  (990, 99000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Iron Treads - Body Press - TM089
  (990, 99000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 37),
  -- Iron Treads - Flash Cannon - TM093
  (990, 99000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Iron Treads - Iron Head - TM099
  (990, 99000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Iron Treads - Substitute - TM103
  (990, 99000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Iron Treads - Iron Defense - TM104
  (990, 99000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Iron Treads - Stealth Rock - TM116
  (990, 99000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Iron Treads - Heavy Slam - TM121
  (990, 99000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Iron Treads - Ice Spinner - TM124
  (990, 99000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 44),
  -- Iron Treads - Earth Power - TM133
  (990, 99000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Iron Treads - Electric Terrain - TM136
  (990, 99000, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 46),
  -- Iron Treads - Wild Charge - TM147
  (990, 99000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Iron Treads - Earthquake - TM149
  (990, 99000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Iron Treads - Stone Edge - TM150
  (990, 99000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Iron Treads - Giga Impact - TM152
  (990, 99000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Iron Treads - Hyper Beam - TM163
  (990, 99000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Iron Treads - Thunder - TM166
  (990, 99000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 52),
  -- Iron Treads - Steel Beam - TM170
  (990, 99000, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 53),
  -- Iron Treads - Tera Blast - TM171
  (990, 99000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Iron Bundle - Present - Level 1
  (991, 99100, 217, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Bundle - Powder Snow - Level 7
  (991, 99100, 181, 23, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Iron Bundle - Whirlpool - Level 14
  (991, 99100, 250, 23, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Iron Bundle - Take Down - Level 21
  (991, 99100, 36, 23, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Iron Bundle - Drill Peck - Level 28
  (991, 99100, 65, 23, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Iron Bundle - Helping Hand - Level 35
  (991, 99100, 270, 23, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Iron Bundle - Freeze-Dry - Level 42
  (991, 99100, 573, 23, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Iron Bundle - Flip Turn - Level 49
  (991, 99100, 812, 23, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Iron Bundle - Ice Beam - Level 56
  (991, 99100, 58, 23, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Iron Bundle - Agility - Level 63
  (991, 99100, 97, 23, NULL, 1, 63, NULL, NULL, NULL, 10),
  -- Iron Bundle - Snowscape - Level 70
  (991, 99100, 883, 23, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Iron Bundle - Hydro Pump - Level 77
  (991, 99100, 56, 23, NULL, 1, 77, NULL, NULL, NULL, 12),
  -- Iron Bundle - Aurora Veil - Level 84
  (991, 99100, 694, 23, NULL, 1, 84, NULL, NULL, NULL, 13),
  -- Iron Bundle - Blizzard - Level 91
  (991, 99100, 59, 23, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Iron Bundle - Take Down - TM001
  (991, 99100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Iron Bundle - Agility - TM004
  (991, 99100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Iron Bundle - Protect - TM007
  (991, 99100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Iron Bundle - Water Pulse - TM011
  (991, 99100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Iron Bundle - Acrobatics - TM014
  (991, 99100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Iron Bundle - Thief - TM018
  (991, 99100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Iron Bundle - Chilling Water - TM022
  (991, 99100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Iron Bundle - Facade - TM025
  (991, 99100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Iron Bundle - Swift - TM032
  (991, 99100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Iron Bundle - Icy Wind - TM034
  (991, 99100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Iron Bundle - Air Cutter - TM040
  (991, 99100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Iron Bundle - Fling - TM043
  (991, 99100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Iron Bundle - Avalanche - TM046
  (991, 99100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Iron Bundle - Endure - TM047
  (991, 99100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Iron Bundle - Rain Dance - TM050
  (991, 99100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Iron Bundle - Snowscape - TM052
  (991, 99100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Iron Bundle - U-turn - TM060
  (991, 99100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Iron Bundle - Body Slam - TM066
  (991, 99100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Iron Bundle - Ice Punch - TM069
  (991, 99100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 33),
  -- Iron Bundle - Sleep Talk - TM070
  (991, 99100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Iron Bundle - Rest - TM085
  (991, 99100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Iron Bundle - Taunt - TM087
  (991, 99100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Iron Bundle - Substitute - TM103
  (991, 99100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Iron Bundle - Encore - TM122
  (991, 99100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 38),
  -- Iron Bundle - Ice Spinner - TM124
  (991, 99100, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 39),
  -- Iron Bundle - Play Rough - TM127
  (991, 99100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 40),
  -- Iron Bundle - Helping Hand - TM130
  (991, 99100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Iron Bundle - Ice Beam - TM135
  (991, 99100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Iron Bundle - Electric Terrain - TM136
  (991, 99100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Iron Bundle - Hydro Pump - TM142
  (991, 99100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Iron Bundle - Blizzard - TM143
  (991, 99100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Iron Bundle - Giga Impact - TM152
  (991, 99100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Iron Bundle - Hyper Beam - TM163
  (991, 99100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Iron Bundle - Tera Blast - TM171
  (991, 99100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Iron Bundle - Electric Terrain - Reminder
  (991, 99100, 604, 23, NULL, 9, NULL, NULL, NULL, NULL, 49),
  -- Iron Hands - Sand Attack - Level 1
  (992, 99200, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Hands - Tackle - Level 1
  (992, 99200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Hands - Focus Energy - Level 1
  (992, 99200, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Hands - Arm Thrust - Level 1
  (992, 99200, 292, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Hands - Fake Out - Level 7
  (992, 99200, 252, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Hands - Whirlwind - Level 14
  (992, 99200, 18, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Iron Hands - Thunder Punch - Level 21
  (992, 99200, 9, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Hands - Slam - Level 28
  (992, 99200, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Hands - Force Palm - Level 35
  (992, 99200, 395, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Hands - Seismic Toss - Level 42
  (992, 99200, 69, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Hands - Charge - Level 49
  (992, 99200, 268, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Hands - Wild Charge - Level 56
  (992, 99200, 528, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Hands - Close Combat - Level 63
  (992, 99200, 370, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Hands - Detect - Level 70
  (992, 99200, 197, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Hands - Heavy Slam - Level 77
  (992, 99200, 484, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Hands - Belly Drum - Level 84
  (992, 99200, 187, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Hands - Focus Punch - Level 91
  (992, 99200, 264, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Hands - Take Down - TM001
  (992, 99200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Hands - Scary Face - TM006
  (992, 99200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Iron Hands - Protect - TM007
  (992, 99200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Iron Hands - Low Kick - TM012
  (992, 99200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Iron Hands - Facade - TM025
  (992, 99200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Iron Hands - Bulldoze - TM028
  (992, 99200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Iron Hands - Rock Tomb - TM036
  (992, 99200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Iron Hands - Low Sweep - TM039
  (992, 99200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Iron Hands - Fling - TM043
  (992, 99200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Iron Hands - Endure - TM047
  (992, 99200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Iron Hands - Volt Switch - TM048
  (992, 99200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Iron Hands - Brick Break - TM058
  (992, 99200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Iron Hands - Body Slam - TM066
  (992, 99200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Iron Hands - Fire Punch - TM067
  (992, 99200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 31),
  -- Iron Hands - Thunder Punch - TM068
  (992, 99200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 32),
  -- Iron Hands - Ice Punch - TM069
  (992, 99200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 33),
  -- Iron Hands - Sleep Talk - TM070
  (992, 99200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Iron Hands - Drain Punch - TM073
  (992, 99200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 35),
  -- Iron Hands - Metronome - TM080
  (992, 99200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 36),
  -- Iron Hands - Stomping Tantrum - TM084
  (992, 99200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Iron Hands - Rest - TM085
  (992, 99200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Iron Hands - Rock Slide - TM086
  (992, 99200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Iron Hands - Swords Dance - TM088
  (992, 99200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Iron Hands - Body Press - TM089
  (992, 99200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Iron Hands - Iron Head - TM099
  (992, 99200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Iron Hands - Substitute - TM103
  (992, 99200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Iron Hands - Iron Defense - TM104
  (992, 99200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Iron Hands - Heavy Slam - TM121
  (992, 99200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Iron Hands - Thunderbolt - TM126
  (992, 99200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Iron Hands - Play Rough - TM127
  (992, 99200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Iron Hands - Reversal - TM134
  (992, 99200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Iron Hands - Electric Terrain - TM136
  (992, 99200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 49),
  -- Iron Hands - Wild Charge - TM147
  (992, 99200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 50),
  -- Iron Hands - Earthquake - TM149
  (992, 99200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Iron Hands - Giga Impact - TM152
  (992, 99200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Iron Hands - Focus Blast - TM158
  (992, 99200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 53),
  -- Iron Hands - Hyper Beam - TM163
  (992, 99200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Iron Hands - Thunder - TM166
  (992, 99200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Iron Hands - Close Combat - TM167
  (992, 99200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 56),
  -- Iron Hands - Tera Blast - TM171
  (992, 99200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Iron Hands - Electric Terrain - Reminder
  (992, 99200, 604, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Iron Jugulis - Focus Energy - Level 1
  (993, 99300, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Jugulis - Tri Attack - Level 1
  (993, 99300, 161, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Jugulis - Air Cutter - Level 1
  (993, 99300, 314, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Jugulis - Work Up - Level 1
  (993, 99300, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Jugulis - Electric Terrain - Level 1
  (993, 99300, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Iron Jugulis - Roar - Level 7
  (993, 99300, 46, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Iron Jugulis - Assurance - Level 14
  (993, 99300, 372, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Iron Jugulis - Dragon Breath - Level 21
  (993, 99300, 225, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Iron Jugulis - Snarl - Level 28
  (993, 99300, 555, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Iron Jugulis - Crunch - Level 35
  (993, 99300, 242, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Iron Jugulis - Hyper Voice - Level 42
  (993, 99300, 304, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Iron Jugulis - Air Slash - Level 56
  (993, 99300, 403, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Jugulis - Knock Off - Level 63
  (993, 99300, 282, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Jugulis - Dark Pulse - Level 70
  (993, 99300, 399, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Jugulis - Outrage - Level 77
  (993, 99300, 200, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Jugulis - Dragon Pulse - Level 84
  (993, 99300, 406, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Jugulis - Hyper Beam - Level 91
  (993, 99300, 63, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Jugulis - Take Down - TM001
  (993, 99300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Jugulis - Scary Face - TM006
  (993, 99300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Iron Jugulis - Protect - TM007
  (993, 99300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Iron Jugulis - Fire Fang - TM008
  (993, 99300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Iron Jugulis - Acrobatics - TM014
  (993, 99300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Iron Jugulis - Charge Beam - TM023
  (993, 99300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Iron Jugulis - Facade - TM025
  (993, 99300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Iron Jugulis - Snarl - TM030
  (993, 99300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Iron Jugulis - Rock Tomb - TM036
  (993, 99300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Iron Jugulis - Air Cutter - TM040
  (993, 99300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Iron Jugulis - Dragon Tail - TM044
  (993, 99300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Iron Jugulis - Endure - TM047
  (993, 99300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Iron Jugulis - Sunny Day - TM049
  (993, 99300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Iron Jugulis - Rain Dance - TM050
  (993, 99300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Iron Jugulis - Zen Headbutt - TM059
  (993, 99300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Iron Jugulis - U-turn - TM060
  (993, 99300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Iron Jugulis - Air Slash - TM065
  (993, 99300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 34),
  -- Iron Jugulis - Body Slam - TM066
  (993, 99300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Iron Jugulis - Sleep Talk - TM070
  (993, 99300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Iron Jugulis - Rest - TM085
  (993, 99300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Iron Jugulis - Taunt - TM087
  (993, 99300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Iron Jugulis - Flash Cannon - TM093
  (993, 99300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Iron Jugulis - Dark Pulse - TM094
  (993, 99300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Iron Jugulis - Fly - TM097
  (993, 99300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 41),
  -- Iron Jugulis - Iron Head - TM099
  (993, 99300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Iron Jugulis - Substitute - TM103
  (993, 99300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Iron Jugulis - Crunch - TM108
  (993, 99300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Iron Jugulis - Tailwind - TM113
  (993, 99300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 45),
  -- Iron Jugulis - Dragon Pulse - TM115
  (993, 99300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Iron Jugulis - Hyper Voice - TM117
  (993, 99300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 47),
  -- Iron Jugulis - Heat Wave - TM118
  (993, 99300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 48),
  -- Iron Jugulis - Flamethrower - TM125
  (993, 99300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Iron Jugulis - Earth Power - TM133
  (993, 99300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 50),
  -- Iron Jugulis - Electric Terrain - TM136
  (993, 99300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 51),
  -- Iron Jugulis - Fire Blast - TM141
  (993, 99300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Iron Jugulis - Hydro Pump - TM142
  (993, 99300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Iron Jugulis - Giga Impact - TM152
  (993, 99300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Iron Jugulis - Outrage - TM156
  (993, 99300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 55),
  -- Iron Jugulis - Focus Blast - TM158
  (993, 99300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Iron Jugulis - Hurricane - TM160
  (993, 99300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 57),
  -- Iron Jugulis - Hyper Beam - TM163
  (993, 99300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Iron Jugulis - Tera Blast - TM171
  (993, 99300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Iron Moth - Gust - Level 1
  (994, 99400, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Moth - Whirlwind - Level 1
  (994, 99400, 18, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Moth - Ember - Level 1
  (994, 99400, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Moth - Acid Spray - Level 1
  (994, 99400, 491, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Moth - Struggle Bug - Level 7
  (994, 99400, 522, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Iron Moth - Fire Spin - Level 14
  (994, 99400, 83, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Iron Moth - Take Down - Level 21
  (994, 99400, 36, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Moth - Lunge - Level 28
  (994, 99400, 679, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Moth - Screech - Level 35
  (994, 99400, 103, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Moth - Discharge - Level 42
  (994, 99400, 435, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Moth - Sludge Wave - Level 49
  (994, 99400, 482, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Moth - Fiery Dance - Level 56
  (994, 99400, 552, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Moth - Metal Sound - Level 63
  (994, 99400, 319, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Moth - Morning Sun - Level 70
  (994, 99400, 234, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Moth - Hurricane - Level 77
  (994, 99400, 542, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Moth - Bug Buzz - Level 84
  (994, 99400, 405, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Moth - Overheat - Level 91
  (994, 99400, 315, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Moth - Take Down - TM001
  (994, 99400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Moth - Agility - TM004
  (994, 99400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Iron Moth - Protect - TM007
  (994, 99400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Iron Moth - Acid Spray - TM013
  (994, 99400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Iron Moth - Acrobatics - TM014
  (994, 99400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Iron Moth - Struggle Bug - TM015
  (994, 99400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 23),
  -- Iron Moth - Confuse Ray - TM017
  (994, 99400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Iron Moth - Pounce - TM021
  (994, 99400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 25),
  -- Iron Moth - Charge Beam - TM023
  (994, 99400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Iron Moth - Fire Spin - TM024
  (994, 99400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 27),
  -- Iron Moth - Facade - TM025
  (994, 99400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Iron Moth - Swift - TM032
  (994, 99400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Iron Moth - Flame Charge - TM038
  (994, 99400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 30),
  -- Iron Moth - Venoshock - TM045
  (994, 99400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Iron Moth - Endure - TM047
  (994, 99400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Iron Moth - Sunny Day - TM049
  (994, 99400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Iron Moth - U-turn - TM060
  (994, 99400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Iron Moth - Air Slash - TM065
  (994, 99400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Iron Moth - Sleep Talk - TM070
  (994, 99400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Iron Moth - Light Screen - TM075
  (994, 99400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Iron Moth - Dazzling Gleam - TM079
  (994, 99400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Iron Moth - Rest - TM085
  (994, 99400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Iron Moth - Toxic Spikes - TM091
  (994, 99400, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 40),
  -- Iron Moth - Flash Cannon - TM093
  (994, 99400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 41),
  -- Iron Moth - Substitute - TM103
  (994, 99400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Iron Moth - Heat Wave - TM118
  (994, 99400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 43),
  -- Iron Moth - Energy Ball - TM119
  (994, 99400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Iron Moth - Psychic - TM120
  (994, 99400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Iron Moth - Flamethrower - TM125
  (994, 99400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Iron Moth - Helping Hand - TM130
  (994, 99400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Iron Moth - Electric Terrain - TM136
  (994, 99400, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 48),
  -- Iron Moth - Fire Blast - TM141
  (994, 99400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Iron Moth - Giga Impact - TM152
  (994, 99400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Iron Moth - Overheat - TM157
  (994, 99400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Iron Moth - Hurricane - TM160
  (994, 99400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 52),
  -- Iron Moth - Bug Buzz - TM162
  (994, 99400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 53),
  -- Iron Moth - Hyper Beam - TM163
  (994, 99400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Iron Moth - Flare Blitz - TM165
  (994, 99400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 55),
  -- Iron Moth - Solar Beam - TM168
  (994, 99400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Iron Moth - Tera Blast - TM171
  (994, 99400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Iron Moth - Electric Terrain - Reminder
  (994, 99400, 604, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Iron Thorns - Rock Throw - Level 1
  (995, 99500, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Iron Thorns - Iron Defense - Level 1
  (995, 99500, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Iron Thorns - Thunder Fang - Level 1
  (995, 99500, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Iron Thorns - Ice Fang - Level 1
  (995, 99500, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Iron Thorns - Fire Fang - Level 1
  (995, 99500, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Iron Thorns - Screech - Level 7
  (995, 99500, 103, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Iron Thorns - Rock Tomb - Level 21
  (995, 99500, 317, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Iron Thorns - Bite - Level 28
  (995, 99500, 44, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Iron Thorns - Charge - Level 35
  (995, 99500, 268, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Iron Thorns - Rock Slide - Level 42
  (995, 99500, 157, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Iron Thorns - Sandstorm - Level 49
  (995, 99500, 201, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Iron Thorns - Wild Charge - Level 56
  (995, 99500, 528, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Iron Thorns - Pin Missile - Level 63
  (995, 99500, 42, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Iron Thorns - Earthquake - Level 70
  (995, 99500, 89, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Iron Thorns - Stealth Rock - Level 77
  (995, 99500, 446, 23, NULL, 1, 77, NULL, NULL, NULL, 15),
  -- Iron Thorns - Stone Edge - Level 84
  (995, 99500, 444, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Iron Thorns - Giga Impact - Level 91
  (995, 99500, 416, 23, NULL, 1, 91, NULL, NULL, NULL, 17),
  -- Iron Thorns - Take Down - TM001
  (995, 99500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Iron Thorns - Scary Face - TM006
  (995, 99500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Iron Thorns - Protect - TM007
  (995, 99500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Iron Thorns - Fire Fang - TM008
  (995, 99500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Iron Thorns - Thunder Fang - TM009
  (995, 99500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Iron Thorns - Ice Fang - TM010
  (995, 99500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Iron Thorns - Low Kick - TM012
  (995, 99500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Iron Thorns - Charge Beam - TM023
  (995, 99500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 25),
  -- Iron Thorns - Facade - TM025
  (995, 99500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Iron Thorns - Bulldoze - TM028
  (995, 99500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Iron Thorns - Snarl - TM030
  (995, 99500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Iron Thorns - Metal Claw - TM031
  (995, 99500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 29),
  -- Iron Thorns - Rock Tomb - TM036
  (995, 99500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Iron Thorns - Fling - TM043
  (995, 99500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Iron Thorns - Dragon Tail - TM044
  (995, 99500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 32),
  -- Iron Thorns - Endure - TM047
  (995, 99500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Iron Thorns - Volt Switch - TM048
  (995, 99500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 34),
  -- Iron Thorns - Sunny Day - TM049
  (995, 99500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Iron Thorns - Rain Dance - TM050
  (995, 99500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Iron Thorns - Sandstorm - TM051
  (995, 99500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 37),
  -- Iron Thorns - Dig - TM055
  (995, 99500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 38),
  -- Iron Thorns - Brick Break - TM058
  (995, 99500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 39),
  -- Iron Thorns - Body Slam - TM066
  (995, 99500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Iron Thorns - Fire Punch - TM067
  (995, 99500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 41),
  -- Iron Thorns - Thunder Punch - TM068
  (995, 99500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 42),
  -- Iron Thorns - Ice Punch - TM069
  (995, 99500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 43),
  -- Iron Thorns - Sleep Talk - TM070
  (995, 99500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Iron Thorns - Electro Ball - TM072
  (995, 99500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 45),
  -- Iron Thorns - Rock Blast - TM076
  (995, 99500, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 46),
  -- Iron Thorns - Dragon Claw - TM078
  (995, 99500, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 47),
  -- Iron Thorns - Thunder Wave - TM082
  (995, 99500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Iron Thorns - Stomping Tantrum - TM084
  (995, 99500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 49),
  -- Iron Thorns - Rest - TM085
  (995, 99500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Iron Thorns - Rock Slide - TM086
  (995, 99500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 51),
  -- Iron Thorns - Taunt - TM087
  (995, 99500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 52),
  -- Iron Thorns - Swords Dance - TM088
  (995, 99500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 53),
  -- Iron Thorns - Body Press - TM089
  (995, 99500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 54),
  -- Iron Thorns - Spikes - TM090
  (995, 99500, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 55),
  -- Iron Thorns - Eerie Impulse - TM096
  (995, 99500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 56),
  -- Iron Thorns - Iron Head - TM099
  (995, 99500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 57),
  -- Iron Thorns - Dragon Dance - TM100
  (995, 99500, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 58),
  -- Iron Thorns - Power Gem - TM101
  (995, 99500, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 59),
  -- Iron Thorns - Substitute - TM103
  (995, 99500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 60),
  -- Iron Thorns - Iron Defense - TM104
  (995, 99500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 61),
  -- Iron Thorns - Crunch - TM108
  (995, 99500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 62),
  -- Iron Thorns - Stealth Rock - TM116
  (995, 99500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 63),
  -- Iron Thorns - Heavy Slam - TM121
  (995, 99500, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 64),
  -- Iron Thorns - Flamethrower - TM125
  (995, 99500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 65),
  -- Iron Thorns - Thunderbolt - TM126
  (995, 99500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 66),
  -- Iron Thorns - Earth Power - TM133
  (995, 99500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 67),
  -- Iron Thorns - Ice Beam - TM135
  (995, 99500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 68),
  -- Iron Thorns - Electric Terrain - TM136
  (995, 99500, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 69),
  -- Iron Thorns - Fire Blast - TM141
  (995, 99500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 70),
  -- Iron Thorns - Blizzard - TM143
  (995, 99500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 71),
  -- Iron Thorns - Wild Charge - TM147
  (995, 99500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 72),
  -- Iron Thorns - Earthquake - TM149
  (995, 99500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 73),
  -- Iron Thorns - Stone Edge - TM150
  (995, 99500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 74),
  -- Iron Thorns - Giga Impact - TM152
  (995, 99500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 75),
  -- Iron Thorns - Focus Blast - TM158
  (995, 99500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 76),
  -- Iron Thorns - Hyper Beam - TM163
  (995, 99500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 77),
  -- Iron Thorns - Thunder - TM166
  (995, 99500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 78),
  -- Iron Thorns - Tera Blast - TM171
  (995, 99500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 79),
  -- Iron Thorns - Electric Terrain - Reminder
  (995, 99500, 604, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Frigibax - Tackle - Level 1
  (996, 99600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frigibax - Leer - Level 1
  (996, 99600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frigibax - Dragon Tail - Level 1
  (996, 99600, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Frigibax - Icy Wind - Level 6
  (996, 99600, 196, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Frigibax - Dragon Breath - Level 12
  (996, 99600, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Frigibax - Focus Energy - Level 18
  (996, 99600, 116, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Frigibax - Bite - Level 24
  (996, 99600, 44, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Frigibax - Ice Fang - Level 29
  (996, 99600, 423, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Frigibax - Dragon Claw - Level 32
  (996, 99600, 337, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Frigibax - Take Down - Level 36
  (996, 99600, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Frigibax - Ice Beam - Level 40
  (996, 99600, 58, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Frigibax - Crunch - Level 44
  (996, 99600, 242, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Frigibax - Icicle Crash - Level 48
  (996, 99600, 556, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Frigibax - Take Down - TM001
  (996, 99600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Frigibax - Protect - TM007
  (996, 99600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Frigibax - Ice Fang - TM010
  (996, 99600, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 16),
  -- Frigibax - Facade - TM025
  (996, 99600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Frigibax - Icy Wind - TM034
  (996, 99600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 18),
  -- Frigibax - Dragon Tail - TM044
  (996, 99600, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 19),
  -- Frigibax - Avalanche - TM046
  (996, 99600, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 20),
  -- Frigibax - Endure - TM047
  (996, 99600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Frigibax - Rain Dance - TM050
  (996, 99600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Frigibax - Snowscape - TM052
  (996, 99600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 23),
  -- Frigibax - Dig - TM055
  (996, 99600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Frigibax - Body Slam - TM066
  (996, 99600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Frigibax - Sleep Talk - TM070
  (996, 99600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Frigibax - Dragon Claw - TM078
  (996, 99600, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 27),
  -- Frigibax - Rest - TM085
  (996, 99600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Frigibax - Swords Dance - TM088
  (996, 99600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 29),
  -- Frigibax - Substitute - TM103
  (996, 99600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Frigibax - Crunch - TM108
  (996, 99600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 31),
  -- Frigibax - Dragon Pulse - TM115
  (996, 99600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 32),
  -- Frigibax - Helping Hand - TM130
  (996, 99600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Frigibax - Ice Beam - TM135
  (996, 99600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 34),
  -- Frigibax - Blizzard - TM143
  (996, 99600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 35),
  -- Frigibax - Outrage - TM156
  (996, 99600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 36),
  -- Frigibax - Draco Meteor - TM169
  (996, 99600, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 37),
  -- Frigibax - Tera Blast - TM171
  (996, 99600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Frigibax - Icicle Spear - Egg
  (996, 99600, 333, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Frigibax - Aqua Tail - Egg
  (996, 99600, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Frigibax - Dragon Rush - Egg
  (996, 99600, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Frigibax - Freeze-Dry - Egg
  (996, 99600, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Arctibax - Tackle - Level 1
  (997, 99700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arctibax - Leer - Level 1
  (997, 99700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arctibax - Dragon Tail - Level 1
  (997, 99700, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arctibax - Icy Wind - Level 6
  (997, 99700, 196, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Arctibax - Dragon Breath - Level 12
  (997, 99700, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Arctibax - Focus Energy - Level 18
  (997, 99700, 116, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Arctibax - Bite - Level 24
  (997, 99700, 44, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Arctibax - Ice Fang - Level 29
  (997, 99700, 423, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Arctibax - Take Down - Level 40
  (997, 99700, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Arctibax - Ice Beam - Level 45
  (997, 99700, 58, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Arctibax - Crunch - Level 50
  (997, 99700, 242, 23, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Arctibax - Icicle Crash - Level 55
  (997, 99700, 556, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Arctibax - Take Down - TM001
  (997, 99700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Arctibax - Scary Face - TM006
  (997, 99700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Arctibax - Protect - TM007
  (997, 99700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Arctibax - Ice Fang - TM010
  (997, 99700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 16),
  -- Arctibax - Facade - TM025
  (997, 99700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Arctibax - Aerial Ace - TM027
  (997, 99700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 18),
  -- Arctibax - Icy Wind - TM034
  (997, 99700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Arctibax - Dragon Tail - TM044
  (997, 99700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 20),
  -- Arctibax - Avalanche - TM046
  (997, 99700, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 21),
  -- Arctibax - Endure - TM047
  (997, 99700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Arctibax - Rain Dance - TM050
  (997, 99700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Arctibax - Snowscape - TM052
  (997, 99700, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 24),
  -- Arctibax - Dig - TM055
  (997, 99700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Arctibax - Brick Break - TM058
  (997, 99700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 26),
  -- Arctibax - Body Slam - TM066
  (997, 99700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Arctibax - Sleep Talk - TM070
  (997, 99700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Arctibax - Dragon Claw - TM078
  (997, 99700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 29),
  -- Arctibax - Rest - TM085
  (997, 99700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Arctibax - Swords Dance - TM088
  (997, 99700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 31),
  -- Arctibax - Iron Head - TM099
  (997, 99700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 32),
  -- Arctibax - Substitute - TM103
  (997, 99700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Arctibax - Crunch - TM108
  (997, 99700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 34),
  -- Arctibax - Dragon Pulse - TM115
  (997, 99700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 35),
  -- Arctibax - Helping Hand - TM130
  (997, 99700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Arctibax - Ice Beam - TM135
  (997, 99700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Arctibax - Blizzard - TM143
  (997, 99700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 38),
  -- Arctibax - Outrage - TM156
  (997, 99700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 39),
  -- Arctibax - Draco Meteor - TM169
  (997, 99700, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 40),
  -- Arctibax - Tera Blast - TM171
  (997, 99700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Arctibax - Icicle Spear - Egg
  (997, 99700, 333, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Arctibax - Aqua Tail - Egg
  (997, 99700, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Arctibax - Dragon Rush - Egg
  (997, 99700, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Arctibax - Freeze-Dry - Egg
  (997, 99700, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Baxcalibur - Tackle - Level 1
  (998, 99800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baxcalibur - Leer - Level 1
  (998, 99800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Baxcalibur - Ice Shard - Level 1
  (998, 99800, 420, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Baxcalibur - Dragon Tail - Level 1
  (998, 99800, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Baxcalibur - Breaking Swipe - Level 1
  (998, 99800, 784, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Baxcalibur - Snowscape - Level 1
  (998, 99800, 883, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Baxcalibur - Icy Wind - Level 6
  (998, 99800, 196, 23, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Baxcalibur - Dragon Breath - Level 12
  (998, 99800, 225, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Baxcalibur - Focus Energy - Level 18
  (998, 99800, 116, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Baxcalibur - Bite - Level 24
  (998, 99800, 44, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Baxcalibur - Ice Fang - Level 29
  (998, 99800, 423, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Baxcalibur - Dragon Claw - Level 35
  (998, 99800, 337, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Baxcalibur - Take Down - Level 42
  (998, 99800, 36, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Baxcalibur - Ice Beam - Level 48
  (998, 99800, 58, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Baxcalibur - Crunch - Level 55
  (998, 99800, 242, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Baxcalibur - Icicle Crash - Level 62
  (998, 99800, 556, 23, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Baxcalibur - Take Down - TM001
  (998, 99800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Baxcalibur - Scary Face - TM006
  (998, 99800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Baxcalibur - Protect - TM007
  (998, 99800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Baxcalibur - Thunder Fang - TM009
  (998, 99800, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Baxcalibur - Ice Fang - TM010
  (998, 99800, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Baxcalibur - Facade - TM025
  (998, 99800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Baxcalibur - Aerial Ace - TM027
  (998, 99800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Baxcalibur - Bulldoze - TM028
  (998, 99800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Baxcalibur - Icy Wind - TM034
  (998, 99800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Baxcalibur - Dragon Tail - TM044
  (998, 99800, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Baxcalibur - Avalanche - TM046
  (998, 99800, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Baxcalibur - Endure - TM047
  (998, 99800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Baxcalibur - Rain Dance - TM050
  (998, 99800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Baxcalibur - Snowscape - TM052
  (998, 99800, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Baxcalibur - Dig - TM055
  (998, 99800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Baxcalibur - False Swipe - TM057
  (998, 99800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Baxcalibur - Brick Break - TM058
  (998, 99800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Baxcalibur - Zen Headbutt - TM059
  (998, 99800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Baxcalibur - Body Slam - TM066
  (998, 99800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Baxcalibur - Sleep Talk - TM070
  (998, 99800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Baxcalibur - Dragon Claw - TM078
  (998, 99800, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 37),
  -- Baxcalibur - Stomping Tantrum - TM084
  (998, 99800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Baxcalibur - Rest - TM085
  (998, 99800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Baxcalibur - Swords Dance - TM088
  (998, 99800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Baxcalibur - Body Press - TM089
  (998, 99800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Baxcalibur - Iron Head - TM099
  (998, 99800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Baxcalibur - Dragon Dance - TM100
  (998, 99800, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 43),
  -- Baxcalibur - Substitute - TM103
  (998, 99800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Baxcalibur - Crunch - TM108
  (998, 99800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Baxcalibur - Dragon Pulse - TM115
  (998, 99800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Baxcalibur - Helping Hand - TM130
  (998, 99800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Baxcalibur - Ice Beam - TM135
  (998, 99800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Baxcalibur - Blizzard - TM143
  (998, 99800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 49),
  -- Baxcalibur - Earthquake - TM149
  (998, 99800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Baxcalibur - Giga Impact - TM152
  (998, 99800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Baxcalibur - Outrage - TM156
  (998, 99800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Baxcalibur - Hyper Beam - TM163
  (998, 99800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Baxcalibur - Draco Meteor - TM169
  (998, 99800, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 54),
  -- Baxcalibur - Tera Blast - TM171
  (998, 99800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Baxcalibur - Icicle Spear - Egg
  (998, 99800, 333, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Baxcalibur - Aqua Tail - Egg
  (998, 99800, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Baxcalibur - Dragon Rush - Egg
  (998, 99800, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Baxcalibur - Freeze-Dry - Egg
  (998, 99800, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Baxcalibur - Glaive Rush - Evolution
  (998, 99800, 862, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Gimmighoul - Tackle - Level 1
  (999, 99900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gimmighoul - Astonish - Level 1
  (999, 99900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gimmighoul - Take Down - TM001
  (999, 99900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 3),
  -- Gimmighoul - Protect - TM007
  (999, 99900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 4),
  -- Gimmighoul - Confuse Ray - TM017
  (999, 99900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 5),
  -- Gimmighoul - Thief - TM018
  (999, 99900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 6),
  -- Gimmighoul - Hex - TM029
  (999, 99900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 7),
  -- Gimmighoul - Night Shade - TM042
  (999, 99900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 8),
  -- Gimmighoul - Endure - TM047
  (999, 99900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 9),
  -- Gimmighoul - Sleep Talk - TM070
  (999, 99900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 10),
  -- Gimmighoul - Reflect - TM074
  (999, 99900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 11),
  -- Gimmighoul - Light Screen - TM075
  (999, 99900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 12),
  -- Gimmighoul - Rest - TM085
  (999, 99900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 13),
  -- Gimmighoul - Power Gem - TM101
  (999, 99900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 14),
  -- Gimmighoul - Substitute - TM103
  (999, 99900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 15),
  -- Gimmighoul - Shadow Ball - TM114
  (999, 99900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 16),
  -- Gimmighoul - Nasty Plot - TM140
  (999, 99900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 17),
  -- Gimmighoul - Tera Blast - TM171
  (999, 99900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 18),
  -- Gholdengo - Tackle - Level 1
  (1000, 100000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gholdengo - Astonish - Level 1
  (1000, 100000, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gholdengo - Night Shade - Level 7
  (1000, 100000, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gholdengo - Confuse Ray - Level 14
  (1000, 100000, 109, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Gholdengo - Substitute - Level 21
  (1000, 100000, 164, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Gholdengo - Metal Sound - Level 28
  (1000, 100000, 319, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Gholdengo - Shadow Ball - Level 35
  (1000, 100000, 247, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Gholdengo - Recover - Level 42
  (1000, 100000, 105, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Gholdengo - Power Gem - Level 49
  (1000, 100000, 408, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Gholdengo - Make It Rain - Level 56
  (1000, 100000, 874, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Gholdengo - Nasty Plot - Level 63
  (1000, 100000, 417, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Gholdengo - Memento - Level 70
  (1000, 100000, 262, 23, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Gholdengo - Take Down - TM001
  (1000, 100000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Gholdengo - Protect - TM007
  (1000, 100000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Gholdengo - Low Kick - TM012
  (1000, 100000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 15),
  -- Gholdengo - Confuse Ray - TM017
  (1000, 100000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 16),
  -- Gholdengo - Thief - TM018
  (1000, 100000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Gholdengo - Charge Beam - TM023
  (1000, 100000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Gholdengo - Hex - TM029
  (1000, 100000, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Gholdengo - Low Sweep - TM039
  (1000, 100000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 20),
  -- Gholdengo - Night Shade - TM042
  (1000, 100000, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 21),
  -- Gholdengo - Fling - TM043
  (1000, 100000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Gholdengo - Endure - TM047
  (1000, 100000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Gholdengo - Sandstorm - TM051
  (1000, 100000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Gholdengo - Psyshock - TM054
  (1000, 100000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 25),
  -- Gholdengo - Thunder Punch - TM068
  (1000, 100000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 26),
  -- Gholdengo - Sleep Talk - TM070
  (1000, 100000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Gholdengo - Electro Ball - TM072
  (1000, 100000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 28),
  -- Gholdengo - Reflect - TM074
  (1000, 100000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Gholdengo - Light Screen - TM075
  (1000, 100000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Gholdengo - Dazzling Gleam - TM079
  (1000, 100000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Gholdengo - Thunder Wave - TM082
  (1000, 100000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Gholdengo - Rest - TM085
  (1000, 100000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Gholdengo - Flash Cannon - TM093
  (1000, 100000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 34),
  -- Gholdengo - Iron Head - TM099
  (1000, 100000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 35),
  -- Gholdengo - Power Gem - TM101
  (1000, 100000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 36),
  -- Gholdengo - Substitute - TM103
  (1000, 100000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Gholdengo - Trick - TM109
  (1000, 100000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Gholdengo - Shadow Ball - TM114
  (1000, 100000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Gholdengo - Psychic - TM120
  (1000, 100000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 40),
  -- Gholdengo - Heavy Slam - TM121
  (1000, 100000, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 41),
  -- Gholdengo - Thunderbolt - TM126
  (1000, 100000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Gholdengo - Nasty Plot - TM140
  (1000, 100000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 43),
  -- Gholdengo - Giga Impact - TM152
  (1000, 100000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Gholdengo - Focus Blast - TM158
  (1000, 100000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 45),
  -- Gholdengo - Hyper Beam - TM163
  (1000, 100000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Gholdengo - Thunder - TM166
  (1000, 100000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 47),
  -- Gholdengo - Steel Beam - TM170
  (1000, 100000, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 48),
  -- Gholdengo - Tera Blast - TM171
  (1000, 100000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49);
