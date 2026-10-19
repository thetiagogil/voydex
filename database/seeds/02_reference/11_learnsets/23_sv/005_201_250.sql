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
-- Scarlet / Violet learnsets for species 201-250.
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
  -- Girafarig - Tackle - Level 1
  (203, 20300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Girafarig - Growl - Level 1
  (203, 20300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Girafarig - Astonish - Level 1
  (203, 20300, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Girafarig - Power Swap - Level 1
  (203, 20300, 384, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Guard Swap - Level 1
  (203, 20300, 385, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Girafarig - Confusion - Level 5
  (203, 20300, 93, 23, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Girafarig - Assurance - Level 10
  (203, 20300, 372, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Girafarig - Stomp - Level 14
  (203, 20300, 23, 23, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Girafarig - Psybeam - Level 19
  (203, 20300, 60, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Girafarig - Agility - Level 23
  (203, 20300, 97, 23, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Girafarig - Double Hit - Level 28
  (203, 20300, 458, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Girafarig - Twin Beam - Level 32
  (203, 20300, 888, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Girafarig - Crunch - Level 37
  (203, 20300, 242, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Girafarig - Baton Pass - Level 41
  (203, 20300, 226, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Girafarig - Nasty Plot - Level 46
  (203, 20300, 417, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Girafarig - Psychic - Level 50
  (203, 20300, 94, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Girafarig - Take Down - TM001
  (203, 20300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Girafarig - Agility - TM004
  (203, 20300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Girafarig - Protect - TM007
  (203, 20300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Girafarig - Low Kick - TM012
  (203, 20300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Girafarig - Psybeam - TM016
  (203, 20300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Girafarig - Confuse Ray - TM017
  (203, 20300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Girafarig - Thief - TM018
  (203, 20300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Girafarig - Trailblaze - TM020
  (203, 20300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Girafarig - Charge Beam - TM023
  (203, 20300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 25),
  -- Girafarig - Facade - TM025
  (203, 20300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Girafarig - Bulldoze - TM028
  (203, 20300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Girafarig - Swift - TM032
  (203, 20300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Girafarig - Stored Power - TM041
  (203, 20300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Girafarig - Endure - TM047
  (203, 20300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Girafarig - Sunny Day - TM049
  (203, 20300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Girafarig - Rain Dance - TM050
  (203, 20300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Girafarig - Psyshock - TM054
  (203, 20300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Girafarig - Zen Headbutt - TM059
  (203, 20300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Girafarig - Foul Play - TM062
  (203, 20300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Girafarig - Psychic Fangs - TM063
  (203, 20300, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Girafarig - Body Slam - TM066
  (203, 20300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Girafarig - Sleep Talk - TM070
  (203, 20300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Girafarig - Reflect - TM074
  (203, 20300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Girafarig - Light Screen - TM075
  (203, 20300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Girafarig - Dazzling Gleam - TM079
  (203, 20300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 41),
  -- Girafarig - Grass Knot - TM081
  (203, 20300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Girafarig - Thunder Wave - TM082
  (203, 20300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Girafarig - Stomping Tantrum - TM084
  (203, 20300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 44),
  -- Girafarig - Rest - TM085
  (203, 20300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Girafarig - Imprison - TM092
  (203, 20300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 46),
  -- Girafarig - Skill Swap - TM098
  (203, 20300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 47),
  -- Girafarig - Substitute - TM103
  (203, 20300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Girafarig - Crunch - TM108
  (203, 20300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 49),
  -- Girafarig - Trick - TM109
  (203, 20300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 50),
  -- Girafarig - Shadow Ball - TM114
  (203, 20300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Girafarig - Hyper Voice - TM117
  (203, 20300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 52),
  -- Girafarig - Energy Ball - TM119
  (203, 20300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 53),
  -- Girafarig - Psychic - TM120
  (203, 20300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Girafarig - Thunderbolt - TM126
  (203, 20300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 55),
  -- Girafarig - Amnesia - TM128
  (203, 20300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 56),
  -- Girafarig - Calm Mind - TM129
  (203, 20300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 57),
  -- Girafarig - Helping Hand - TM130
  (203, 20300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Girafarig - Baton Pass - TM132
  (203, 20300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 59),
  -- Girafarig - Psychic Terrain - TM138
  (203, 20300, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 60),
  -- Girafarig - Nasty Plot - TM140
  (203, 20300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 61),
  -- Girafarig - Earthquake - TM149
  (203, 20300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 62),
  -- Girafarig - Giga Impact - TM152
  (203, 20300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Girafarig - Trick Room - TM161
  (203, 20300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 64),
  -- Girafarig - Hyper Beam - TM163
  (203, 20300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Girafarig - Thunder - TM166
  (203, 20300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 66),
  -- Girafarig - Tera Blast - TM171
  (203, 20300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Girafarig - Double Kick - Egg
  (203, 20300, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Girafarig - Take Down - Egg
  (203, 20300, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Girafarig - Mean Look - Egg
  (203, 20300, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Girafarig - Mirror Coat - Egg
  (203, 20300, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Girafarig - Future Sight - Egg
  (203, 20300, 248, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Girafarig - Beat Up - Egg
  (203, 20300, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Girafarig - Uproar - Egg
  (203, 20300, 253, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Girafarig - Wish - Egg
  (203, 20300, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Girafarig - Ally Switch - Egg
  (203, 20300, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Pineco - Tackle - Level 1
  (204, 20400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Level 1
  (204, 20400, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 6
  (204, 20400, 120, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pineco - Bug Bite - Level 9
  (204, 20400, 450, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pineco - Take Down - Level 12
  (204, 20400, 36, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pineco - Rapid Spin - Level 17
  (204, 20400, 229, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pineco - Rollout - Level 20
  (204, 20400, 205, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pineco - Curse - Level 23
  (204, 20400, 174, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pineco - Spikes - Level 28
  (204, 20400, 191, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pineco - Payback - Level 31
  (204, 20400, 371, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Pineco - Explosion - Level 34
  (204, 20400, 153, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pineco - Iron Defense - Level 39
  (204, 20400, 334, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pineco - Gyro Ball - Level 42
  (204, 20400, 360, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pineco - Double-Edge - Level 45
  (204, 20400, 38, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pineco - Take Down - TM001
  (204, 20400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Pineco - Protect - TM007
  (204, 20400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Pineco - Struggle Bug - TM015
  (204, 20400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Pineco - Pounce - TM021
  (204, 20400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 18),
  -- Pineco - Facade - TM025
  (204, 20400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Pineco - Bulldoze - TM028
  (204, 20400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Pineco - Swift - TM032
  (204, 20400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Pineco - Rock Tomb - TM036
  (204, 20400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Pineco - Venoshock - TM045
  (204, 20400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Pineco - Endure - TM047
  (204, 20400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Pineco - Sunny Day - TM049
  (204, 20400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Pineco - Rain Dance - TM050
  (204, 20400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Pineco - Sandstorm - TM051
  (204, 20400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Pineco - Dig - TM055
  (204, 20400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Pineco - Body Slam - TM066
  (204, 20400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Pineco - Sleep Talk - TM070
  (204, 20400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Pineco - Seed Bomb - TM071
  (204, 20400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Pineco - Reflect - TM074
  (204, 20400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Pineco - Light Screen - TM075
  (204, 20400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Pineco - Rock Blast - TM076
  (204, 20400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Pineco - Poison Jab - TM083
  (204, 20400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Pineco - Rest - TM085
  (204, 20400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Pineco - Rock Slide - TM086
  (204, 20400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Pineco - Spikes - TM090
  (204, 20400, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 38),
  -- Pineco - Toxic Spikes - TM091
  (204, 20400, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 39),
  -- Pineco - Substitute - TM103
  (204, 20400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Pineco - Iron Defense - TM104
  (204, 20400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Pineco - Drill Run - TM106
  (204, 20400, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 42),
  -- Pineco - Giga Drain - TM111
  (204, 20400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Pineco - Stealth Rock - TM116
  (204, 20400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Pineco - Ice Spinner - TM124
  (204, 20400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 45),
  -- Pineco - Helping Hand - TM130
  (204, 20400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Pineco - Reversal - TM134
  (204, 20400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Pineco - Bug Buzz - TM162
  (204, 20400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 48),
  -- Pineco - Solar Beam - TM168
  (204, 20400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Pineco - Tera Blast - TM171
  (204, 20400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Pineco - Pin Missile - Egg
  (204, 20400, 42, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pineco - Counter - Egg
  (204, 20400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pineco - Swift - Egg
  (204, 20400, 129, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pineco - Flail - Egg
  (204, 20400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pineco - Sand Tomb - Egg
  (204, 20400, 328, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pineco - Power Trick - Egg
  (204, 20400, 379, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pineco - Toxic Spikes - Egg
  (204, 20400, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Forretress - Tackle - Level 1
  (205, 20500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Forretress - Self-Destruct - Level 1
  (205, 20500, 120, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Forretress - Protect - Level 1
  (205, 20500, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Forretress - Zap Cannon - Level 1
  (205, 20500, 192, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Forretress - Toxic Spikes - Level 1
  (205, 20500, 390, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Forretress - Magnet Rise - Level 1
  (205, 20500, 393, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Forretress - Bug Bite - Level 1
  (205, 20500, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Forretress - Take Down - Level 12
  (205, 20500, 36, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Forretress - Rapid Spin - Level 17
  (205, 20500, 229, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Forretress - Rollout - Level 20
  (205, 20500, 205, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Forretress - Curse - Level 23
  (205, 20500, 174, 23, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Forretress - Spikes - Level 28
  (205, 20500, 191, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Forretress - Payback - Level 32
  (205, 20500, 371, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Forretress - Explosion - Level 36
  (205, 20500, 153, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Forretress - Iron Defense - Level 42
  (205, 20500, 334, 23, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Forretress - Gyro Ball - Level 46
  (205, 20500, 360, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Forretress - Double-Edge - Level 50
  (205, 20500, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Forretress - Take Down - TM001
  (205, 20500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Forretress - Protect - TM007
  (205, 20500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Forretress - Struggle Bug - TM015
  (205, 20500, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 20),
  -- Forretress - Pounce - TM021
  (205, 20500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 21),
  -- Forretress - Facade - TM025
  (205, 20500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Forretress - Bulldoze - TM028
  (205, 20500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Forretress - Swift - TM032
  (205, 20500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Forretress - Rock Tomb - TM036
  (205, 20500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Forretress - Venoshock - TM045
  (205, 20500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Forretress - Endure - TM047
  (205, 20500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Forretress - Volt Switch - TM048
  (205, 20500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Forretress - Sunny Day - TM049
  (205, 20500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Forretress - Rain Dance - TM050
  (205, 20500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Forretress - Sandstorm - TM051
  (205, 20500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Forretress - Smart Strike - TM053
  (205, 20500, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Forretress - Dig - TM055
  (205, 20500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Forretress - Body Slam - TM066
  (205, 20500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Forretress - Sleep Talk - TM070
  (205, 20500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Forretress - Seed Bomb - TM071
  (205, 20500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 36),
  -- Forretress - Reflect - TM074
  (205, 20500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 37),
  -- Forretress - Light Screen - TM075
  (205, 20500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 38),
  -- Forretress - Rock Blast - TM076
  (205, 20500, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 39),
  -- Forretress - Thunder Wave - TM082
  (205, 20500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Forretress - Poison Jab - TM083
  (205, 20500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Forretress - Rest - TM085
  (205, 20500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Forretress - Rock Slide - TM086
  (205, 20500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Forretress - Body Press - TM089
  (205, 20500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 44),
  -- Forretress - Spikes - TM090
  (205, 20500, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 45),
  -- Forretress - Toxic Spikes - TM091
  (205, 20500, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 46),
  -- Forretress - Flash Cannon - TM093
  (205, 20500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 47),
  -- Forretress - Iron Head - TM099
  (205, 20500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Forretress - Substitute - TM103
  (205, 20500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Forretress - Iron Defense - TM104
  (205, 20500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 50),
  -- Forretress - Drill Run - TM106
  (205, 20500, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 51),
  -- Forretress - Giga Drain - TM111
  (205, 20500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 52),
  -- Forretress - Stealth Rock - TM116
  (205, 20500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Forretress - Heavy Slam - TM121
  (205, 20500, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 54),
  -- Forretress - Ice Spinner - TM124
  (205, 20500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 55),
  -- Forretress - Helping Hand - TM130
  (205, 20500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Forretress - Earth Power - TM133
  (205, 20500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 57),
  -- Forretress - Reversal - TM134
  (205, 20500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 58),
  -- Forretress - Earthquake - TM149
  (205, 20500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 59),
  -- Forretress - Stone Edge - TM150
  (205, 20500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 60),
  -- Forretress - Giga Impact - TM152
  (205, 20500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Forretress - Bug Buzz - TM162
  (205, 20500, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 62),
  -- Forretress - Hyper Beam - TM163
  (205, 20500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Forretress - Solar Beam - TM168
  (205, 20500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 64),
  -- Forretress - Steel Beam - TM170
  (205, 20500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 65),
  -- Forretress - Tera Blast - TM171
  (205, 20500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Forretress - Pin Missile - Egg
  (205, 20500, 42, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Forretress - Counter - Egg
  (205, 20500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Forretress - Swift - Egg
  (205, 20500, 129, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Forretress - Flail - Egg
  (205, 20500, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Forretress - Sand Tomb - Egg
  (205, 20500, 328, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Forretress - Power Trick - Egg
  (205, 20500, 379, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Forretress - Toxic Spikes - Egg
  (205, 20500, 390, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Forretress - Heavy Slam - Evolution
  (205, 20500, 484, 23, NULL, 7, NULL, NULL, NULL, NULL, 74),
  -- Dunsparce - Defense Curl - Level 1
  (206, 20600, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Flail - Level 1
  (206, 20600, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dunsparce - Mud-Slap - Level 4
  (206, 20600, 189, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dunsparce - Rollout - Level 8
  (206, 20600, 205, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dunsparce - Glare - Level 12
  (206, 20600, 137, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dunsparce - Screech - Level 16
  (206, 20600, 103, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dunsparce - Ancient Power - Level 20
  (206, 20600, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dunsparce - Drill Run - Level 24
  (206, 20600, 529, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dunsparce - Yawn - Level 28
  (206, 20600, 281, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dunsparce - Hyper Drill - Level 32
  (206, 20600, 887, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dunsparce - Roost - Level 36
  (206, 20600, 355, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dunsparce - Dragon Rush - Level 40
  (206, 20600, 407, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dunsparce - Coil - Level 44
  (206, 20600, 489, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dunsparce - Double-Edge - Level 48
  (206, 20600, 38, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dunsparce - Endeavor - Level 52
  (206, 20600, 283, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Dunsparce - Take Down - TM001
  (206, 20600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Dunsparce - Agility - TM004
  (206, 20600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Dunsparce - Mud-Slap - TM005
  (206, 20600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Dunsparce - Scary Face - TM006
  (206, 20600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Dunsparce - Protect - TM007
  (206, 20600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Dunsparce - Thief - TM018
  (206, 20600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Dunsparce - Pounce - TM021
  (206, 20600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Dunsparce - Chilling Water - TM022
  (206, 20600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Dunsparce - Facade - TM025
  (206, 20600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Dunsparce - Poison Tail - TM026
  (206, 20600, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 25),
  -- Dunsparce - Bulldoze - TM028
  (206, 20600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Dunsparce - Hex - TM029
  (206, 20600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Dunsparce - Mud Shot - TM035
  (206, 20600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Dunsparce - Rock Tomb - TM036
  (206, 20600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Dunsparce - Stored Power - TM041
  (206, 20600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 30),
  -- Dunsparce - Endure - TM047
  (206, 20600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Dunsparce - Sunny Day - TM049
  (206, 20600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Dunsparce - Rain Dance - TM050
  (206, 20600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Dunsparce - Sandstorm - TM051
  (206, 20600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Dunsparce - Smart Strike - TM053
  (206, 20600, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 35),
  -- Dunsparce - Dig - TM055
  (206, 20600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Dunsparce - Zen Headbutt - TM059
  (206, 20600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Dunsparce - Air Slash - TM065
  (206, 20600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Dunsparce - Body Slam - TM066
  (206, 20600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Dunsparce - Sleep Talk - TM070
  (206, 20600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Dunsparce - Poison Jab - TM083
  (206, 20600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Dunsparce - Stomping Tantrum - TM084
  (206, 20600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Dunsparce - Rest - TM085
  (206, 20600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Dunsparce - Rock Slide - TM086
  (206, 20600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Dunsparce - Substitute - TM103
  (206, 20600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Dunsparce - Drill Run - TM106
  (206, 20600, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 46),
  -- Dunsparce - Shadow Ball - TM114
  (206, 20600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Dunsparce - Stealth Rock - TM116
  (206, 20600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 48),
  -- Dunsparce - Hyper Voice - TM117
  (206, 20600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Dunsparce - Ice Spinner - TM124
  (206, 20600, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 50),
  -- Dunsparce - Flamethrower - TM125
  (206, 20600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 51),
  -- Dunsparce - Thunderbolt - TM126
  (206, 20600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Dunsparce - Amnesia - TM128
  (206, 20600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 53),
  -- Dunsparce - Calm Mind - TM129
  (206, 20600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 54),
  -- Dunsparce - Helping Hand - TM130
  (206, 20600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Dunsparce - Baton Pass - TM132
  (206, 20600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 56),
  -- Dunsparce - Earth Power - TM133
  (206, 20600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 57),
  -- Dunsparce - Ice Beam - TM135
  (206, 20600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 58),
  -- Dunsparce - Fire Blast - TM141
  (206, 20600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 59),
  -- Dunsparce - Blizzard - TM143
  (206, 20600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 60),
  -- Dunsparce - Wild Charge - TM147
  (206, 20600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 61),
  -- Dunsparce - Earthquake - TM149
  (206, 20600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 62),
  -- Dunsparce - Stone Edge - TM150
  (206, 20600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 63),
  -- Dunsparce - Giga Impact - TM152
  (206, 20600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Dunsparce - Hyper Beam - TM163
  (206, 20600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Dunsparce - Thunder - TM166
  (206, 20600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 66),
  -- Dunsparce - Solar Beam - TM168
  (206, 20600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Dunsparce - Tera Blast - TM171
  (206, 20600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Dunsparce - Headbutt - Egg
  (206, 20600, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Dunsparce - Bite - Egg
  (206, 20600, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Dunsparce - Curse - Egg
  (206, 20600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dunsparce - Astonish - Egg
  (206, 20600, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Dunsparce - Last Resort - Egg
  (206, 20600, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Dunsparce - Aqua Tail - Egg
  (206, 20600, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 4
  (207, 20700, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 7
  (207, 20700, 106, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gligar - Knock Off - Level 10
  (207, 20700, 282, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gligar - Quick Attack - Level 13
  (207, 20700, 98, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gligar - Fury Cutter - Level 16
  (207, 20700, 210, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gligar - Poison Tail - Level 19
  (207, 20700, 342, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gligar - Acrobatics - Level 22
  (207, 20700, 512, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gligar - Slash - Level 27
  (207, 20700, 163, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Gligar - U-turn - Level 30
  (207, 20700, 369, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Gligar - Screech - Level 35
  (207, 20700, 103, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Gligar - X-Scissor - Level 40
  (207, 20700, 404, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gligar - Crabhammer - Level 45
  (207, 20700, 152, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Gligar - Swords Dance - Level 50
  (207, 20700, 14, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Gligar - Take Down - TM001
  (207, 20700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Gligar - Agility - TM004
  (207, 20700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Gligar - Mud-Slap - TM005
  (207, 20700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Gligar - Scary Face - TM006
  (207, 20700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Gligar - Protect - TM007
  (207, 20700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Gligar - Fire Fang - TM008
  (207, 20700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Gligar - Thunder Fang - TM009
  (207, 20700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Gligar - Ice Fang - TM010
  (207, 20700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Gligar - Acrobatics - TM014
  (207, 20700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 23),
  -- Gligar - Struggle Bug - TM015
  (207, 20700, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 24),
  -- Gligar - Thief - TM018
  (207, 20700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Gligar - Facade - TM025
  (207, 20700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Gligar - Poison Tail - TM026
  (207, 20700, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 27),
  -- Gligar - Aerial Ace - TM027
  (207, 20700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Gligar - Bulldoze - TM028
  (207, 20700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 29),
  -- Gligar - Metal Claw - TM031
  (207, 20700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 30),
  -- Gligar - Swift - TM032
  (207, 20700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Gligar - Mud Shot - TM035
  (207, 20700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 32),
  -- Gligar - Rock Tomb - TM036
  (207, 20700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 33),
  -- Gligar - Fling - TM043
  (207, 20700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 34),
  -- Gligar - Venoshock - TM045
  (207, 20700, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 35),
  -- Gligar - Endure - TM047
  (207, 20700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Gligar - Sunny Day - TM049
  (207, 20700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Gligar - Rain Dance - TM050
  (207, 20700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Gligar - Sandstorm - TM051
  (207, 20700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 39),
  -- Gligar - False Swipe - TM057
  (207, 20700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 40),
  -- Gligar - Brick Break - TM058
  (207, 20700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 41),
  -- Gligar - U-turn - TM060
  (207, 20700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 42),
  -- Gligar - Psychic Fangs - TM063
  (207, 20700, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 43),
  -- Gligar - Sleep Talk - TM070
  (207, 20700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Gligar - Poison Jab - TM083
  (207, 20700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Gligar - Rest - TM085
  (207, 20700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Gligar - Rock Slide - TM086
  (207, 20700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Gligar - Taunt - TM087
  (207, 20700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Gligar - Swords Dance - TM088
  (207, 20700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Gligar - Spikes - TM090
  (207, 20700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 50),
  -- Gligar - Toxic Spikes - TM091
  (207, 20700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 51),
  -- Gligar - Dark Pulse - TM094
  (207, 20700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 52),
  -- Gligar - Gunk Shot - TM102
  (207, 20700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 53),
  -- Gligar - Substitute - TM103
  (207, 20700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Gligar - X-Scissor - TM105
  (207, 20700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 55),
  -- Gligar - Crunch - TM108
  (207, 20700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 56),
  -- Gligar - Tailwind - TM113
  (207, 20700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 57),
  -- Gligar - Stealth Rock - TM116
  (207, 20700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 58),
  -- Gligar - Baton Pass - TM132
  (207, 20700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 59),
  -- Gligar - Earth Power - TM133
  (207, 20700, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 60),
  -- Gligar - Sludge Bomb - TM148
  (207, 20700, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 61),
  -- Gligar - Earthquake - TM149
  (207, 20700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 62),
  -- Gligar - Stone Edge - TM150
  (207, 20700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 63),
  -- Gligar - Tera Blast - TM171
  (207, 20700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Gligar - Wing Attack - Egg
  (207, 20700, 17, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gligar - Double-Edge - Egg
  (207, 20700, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gligar - Counter - Egg
  (207, 20700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gligar - Feint - Egg
  (207, 20700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gligar - Night Slash - Egg
  (207, 20700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gligar - Cross Poison - Egg
  (207, 20700, 440, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Snubbull - Tackle - Level 1
  (209, 20900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snubbull - Tail Whip - Level 1
  (209, 20900, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snubbull - Growl - Level 1
  (209, 20900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snubbull - Scary Face - Level 1
  (209, 20900, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Snubbull - Charm - Level 1
  (209, 20900, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Snubbull - Thunder Fang - Level 1
  (209, 20900, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Snubbull - Ice Fang - Level 1
  (209, 20900, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Snubbull - Fire Fang - Level 1
  (209, 20900, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Snubbull - Bite - Level 7
  (209, 20900, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Snubbull - Lick - Level 13
  (209, 20900, 122, 23, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Snubbull - Headbutt - Level 19
  (209, 20900, 29, 23, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Snubbull - Roar - Level 25
  (209, 20900, 46, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Snubbull - Last Resort - Level 31
  (209, 20900, 387, 23, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Snubbull - Play Rough - Level 37
  (209, 20900, 583, 23, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Snubbull - Payback - Level 43
  (209, 20900, 371, 23, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Snubbull - Crunch - Level 49
  (209, 20900, 242, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Snubbull - Take Down - TM001
  (209, 20900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Snubbull - Charm - TM002
  (209, 20900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Snubbull - Fake Tears - TM003
  (209, 20900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 19),
  -- Snubbull - Mud-Slap - TM005
  (209, 20900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Snubbull - Scary Face - TM006
  (209, 20900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Snubbull - Protect - TM007
  (209, 20900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Snubbull - Fire Fang - TM008
  (209, 20900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 23),
  -- Snubbull - Thunder Fang - TM009
  (209, 20900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 24),
  -- Snubbull - Ice Fang - TM010
  (209, 20900, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 25),
  -- Snubbull - Water Pulse - TM011
  (209, 20900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 26),
  -- Snubbull - Low Kick - TM012
  (209, 20900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 27),
  -- Snubbull - Thief - TM018
  (209, 20900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 28),
  -- Snubbull - Trailblaze - TM020
  (209, 20900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Snubbull - Facade - TM025
  (209, 20900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Snubbull - Bulldoze - TM028
  (209, 20900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 31),
  -- Snubbull - Snarl - TM030
  (209, 20900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 32),
  -- Snubbull - Fling - TM043
  (209, 20900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Snubbull - Endure - TM047
  (209, 20900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Snubbull - Sunny Day - TM049
  (209, 20900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Snubbull - Rain Dance - TM050
  (209, 20900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Snubbull - Dig - TM055
  (209, 20900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Snubbull - Brick Break - TM058
  (209, 20900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Snubbull - Psychic Fangs - TM063
  (209, 20900, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 39),
  -- Snubbull - Bulk Up - TM064
  (209, 20900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Snubbull - Body Slam - TM066
  (209, 20900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Snubbull - Fire Punch - TM067
  (209, 20900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 42),
  -- Snubbull - Thunder Punch - TM068
  (209, 20900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Snubbull - Ice Punch - TM069
  (209, 20900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Snubbull - Sleep Talk - TM070
  (209, 20900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Snubbull - Dazzling Gleam - TM079
  (209, 20900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 46),
  -- Snubbull - Metronome - TM080
  (209, 20900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 47),
  -- Snubbull - Thunder Wave - TM082
  (209, 20900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Snubbull - Stomping Tantrum - TM084
  (209, 20900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 49),
  -- Snubbull - Rest - TM085
  (209, 20900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Snubbull - Taunt - TM087
  (209, 20900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Snubbull - Substitute - TM103
  (209, 20900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Snubbull - Crunch - TM108
  (209, 20900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Snubbull - Shadow Ball - TM114
  (209, 20900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 54),
  -- Snubbull - Hyper Voice - TM117
  (209, 20900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 55),
  -- Snubbull - Encore - TM122
  (209, 20900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 56),
  -- Snubbull - Flamethrower - TM125
  (209, 20900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 57),
  -- Snubbull - Thunderbolt - TM126
  (209, 20900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 58),
  -- Snubbull - Play Rough - TM127
  (209, 20900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 59),
  -- Snubbull - Helping Hand - TM130
  (209, 20900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 60),
  -- Snubbull - Reversal - TM134
  (209, 20900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 61),
  -- Snubbull - Fire Blast - TM141
  (209, 20900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 62),
  -- Snubbull - Wild Charge - TM147
  (209, 20900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 63),
  -- Snubbull - Sludge Bomb - TM148
  (209, 20900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 64),
  -- Snubbull - Earthquake - TM149
  (209, 20900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 65),
  -- Snubbull - Overheat - TM157
  (209, 20900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 66),
  -- Snubbull - Thunder - TM166
  (209, 20900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 67),
  -- Snubbull - Close Combat - TM167
  (209, 20900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 68),
  -- Snubbull - Solar Beam - TM168
  (209, 20900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 69),
  -- Snubbull - Tera Blast - TM171
  (209, 20900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 70),
  -- Snubbull - Counter - Egg
  (209, 20900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Snubbull - Mimic - Egg
  (209, 20900, 102, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Snubbull - Snore - Egg
  (209, 20900, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Snubbull - Present - Egg
  (209, 20900, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Snubbull - Retaliate - Egg
  (209, 20900, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Granbull - Tackle - Level 1
  (210, 21000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Granbull - Tail Whip - Level 1
  (210, 21000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Granbull - Growl - Level 1
  (210, 21000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Granbull - Scary Face - Level 1
  (210, 21000, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Granbull - Outrage - Level 1
  (210, 21000, 200, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Granbull - Charm - Level 1
  (210, 21000, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Granbull - Thunder Fang - Level 1
  (210, 21000, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Granbull - Ice Fang - Level 1
  (210, 21000, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Granbull - Fire Fang - Level 1
  (210, 21000, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Granbull - Bite - Level 7
  (210, 21000, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Granbull - Lick - Level 13
  (210, 21000, 122, 23, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Granbull - Headbutt - Level 19
  (210, 21000, 29, 23, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Granbull - Roar - Level 27
  (210, 21000, 46, 23, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Granbull - Last Resort - Level 35
  (210, 21000, 387, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Granbull - Play Rough - Level 43
  (210, 21000, 583, 23, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Granbull - Payback - Level 51
  (210, 21000, 371, 23, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Granbull - Crunch - Level 59
  (210, 21000, 242, 23, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Granbull - Take Down - TM001
  (210, 21000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Granbull - Charm - TM002
  (210, 21000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Granbull - Fake Tears - TM003
  (210, 21000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Granbull - Mud-Slap - TM005
  (210, 21000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Granbull - Scary Face - TM006
  (210, 21000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Granbull - Protect - TM007
  (210, 21000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Granbull - Fire Fang - TM008
  (210, 21000, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 24),
  -- Granbull - Thunder Fang - TM009
  (210, 21000, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 25),
  -- Granbull - Ice Fang - TM010
  (210, 21000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 26),
  -- Granbull - Water Pulse - TM011
  (210, 21000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 27),
  -- Granbull - Low Kick - TM012
  (210, 21000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 28),
  -- Granbull - Thief - TM018
  (210, 21000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 29),
  -- Granbull - Trailblaze - TM020
  (210, 21000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Granbull - Facade - TM025
  (210, 21000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Granbull - Bulldoze - TM028
  (210, 21000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 32),
  -- Granbull - Snarl - TM030
  (210, 21000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 33),
  -- Granbull - Rock Tomb - TM036
  (210, 21000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 34),
  -- Granbull - Low Sweep - TM039
  (210, 21000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 35),
  -- Granbull - Fling - TM043
  (210, 21000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 36),
  -- Granbull - Endure - TM047
  (210, 21000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Granbull - Sunny Day - TM049
  (210, 21000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Granbull - Rain Dance - TM050
  (210, 21000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Granbull - Dig - TM055
  (210, 21000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 40),
  -- Granbull - Brick Break - TM058
  (210, 21000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 41),
  -- Granbull - Psychic Fangs - TM063
  (210, 21000, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 42),
  -- Granbull - Bulk Up - TM064
  (210, 21000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 43),
  -- Granbull - Body Slam - TM066
  (210, 21000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Granbull - Fire Punch - TM067
  (210, 21000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 45),
  -- Granbull - Thunder Punch - TM068
  (210, 21000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 46),
  -- Granbull - Ice Punch - TM069
  (210, 21000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 47),
  -- Granbull - Sleep Talk - TM070
  (210, 21000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 48),
  -- Granbull - Dazzling Gleam - TM079
  (210, 21000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 49),
  -- Granbull - Metronome - TM080
  (210, 21000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 50),
  -- Granbull - Thunder Wave - TM082
  (210, 21000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 51),
  -- Granbull - Stomping Tantrum - TM084
  (210, 21000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 52),
  -- Granbull - Rest - TM085
  (210, 21000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 53),
  -- Granbull - Rock Slide - TM086
  (210, 21000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 54),
  -- Granbull - Taunt - TM087
  (210, 21000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 55),
  -- Granbull - Substitute - TM103
  (210, 21000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Granbull - Crunch - TM108
  (210, 21000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 57),
  -- Granbull - Shadow Ball - TM114
  (210, 21000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 58),
  -- Granbull - Hyper Voice - TM117
  (210, 21000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 59),
  -- Granbull - Encore - TM122
  (210, 21000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 60),
  -- Granbull - Flamethrower - TM125
  (210, 21000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 61),
  -- Granbull - Thunderbolt - TM126
  (210, 21000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 62),
  -- Granbull - Play Rough - TM127
  (210, 21000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 63),
  -- Granbull - Helping Hand - TM130
  (210, 21000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 64),
  -- Granbull - Reversal - TM134
  (210, 21000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 65),
  -- Granbull - Fire Blast - TM141
  (210, 21000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 66),
  -- Granbull - Wild Charge - TM147
  (210, 21000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 67),
  -- Granbull - Sludge Bomb - TM148
  (210, 21000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 68),
  -- Granbull - Earthquake - TM149
  (210, 21000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 69),
  -- Granbull - Stone Edge - TM150
  (210, 21000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 70),
  -- Granbull - Giga Impact - TM152
  (210, 21000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 71),
  -- Granbull - Outrage - TM156
  (210, 21000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 72),
  -- Granbull - Overheat - TM157
  (210, 21000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 73),
  -- Granbull - Focus Blast - TM158
  (210, 21000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 74),
  -- Granbull - Hyper Beam - TM163
  (210, 21000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 75),
  -- Granbull - Thunder - TM166
  (210, 21000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 76),
  -- Granbull - Close Combat - TM167
  (210, 21000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 77),
  -- Granbull - Solar Beam - TM168
  (210, 21000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 78),
  -- Granbull - Tera Blast - TM171
  (210, 21000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 79),
  -- Granbull - Counter - Egg
  (210, 21000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Granbull - Mimic - Egg
  (210, 21000, 102, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Granbull - Snore - Egg
  (210, 21000, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Granbull - Present - Egg
  (210, 21000, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Granbull - Retaliate - Egg
  (210, 21000, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Harden - Level 4
  (211, 21100, 106, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Qwilfish - Water Gun - Level 8
  (211, 21100, 55, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Qwilfish - Fell Stinger - Level 12
  (211, 21100, 565, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Qwilfish - Minimize - Level 16
  (211, 21100, 107, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Qwilfish - Spikes - Level 20
  (211, 21100, 191, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Qwilfish - Brine - Level 24
  (211, 21100, 362, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Qwilfish - Poison Jab - Level 28
  (211, 21100, 398, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Qwilfish - Pin Missile - Level 32
  (211, 21100, 42, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Qwilfish - Toxic Spikes - Level 36
  (211, 21100, 390, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Qwilfish - Stockpile - Level 40
  (211, 21100, 254, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Qwilfish - Spit Up - Level 40
  (211, 21100, 255, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Qwilfish - Toxic - Level 44
  (211, 21100, 92, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Qwilfish - Aqua Tail - Level 48
  (211, 21100, 401, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Qwilfish - Acupressure - Level 52
  (211, 21100, 367, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Qwilfish - Destiny Bond - Level 56
  (211, 21100, 194, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Qwilfish - Take Down - TM001
  (211, 21100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Qwilfish - Agility - TM004
  (211, 21100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Qwilfish - Scary Face - TM006
  (211, 21100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Qwilfish - Protect - TM007
  (211, 21100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Qwilfish - Water Pulse - TM011
  (211, 21100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Qwilfish - Acid Spray - TM013
  (211, 21100, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 23),
  -- Qwilfish - Chilling Water - TM022
  (211, 21100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Qwilfish - Facade - TM025
  (211, 21100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Qwilfish - Poison Tail - TM026
  (211, 21100, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 26),
  -- Qwilfish - Hex - TM029
  (211, 21100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Qwilfish - Swift - TM032
  (211, 21100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Qwilfish - Icy Wind - TM034
  (211, 21100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Qwilfish - Mud Shot - TM035
  (211, 21100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Qwilfish - Venoshock - TM045
  (211, 21100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Qwilfish - Endure - TM047
  (211, 21100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Qwilfish - Rain Dance - TM050
  (211, 21100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Qwilfish - Sleep Talk - TM070
  (211, 21100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Qwilfish - Waterfall - TM077
  (211, 21100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Qwilfish - Thunder Wave - TM082
  (211, 21100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Qwilfish - Poison Jab - TM083
  (211, 21100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Qwilfish - Rest - TM085
  (211, 21100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Qwilfish - Taunt - TM087
  (211, 21100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Qwilfish - Swords Dance - TM088
  (211, 21100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Qwilfish - Spikes - TM090
  (211, 21100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 41),
  -- Qwilfish - Toxic Spikes - TM091
  (211, 21100, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 42),
  -- Qwilfish - Gunk Shot - TM102
  (211, 21100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 43),
  -- Qwilfish - Substitute - TM103
  (211, 21100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Qwilfish - Crunch - TM108
  (211, 21100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Qwilfish - Liquidation - TM110
  (211, 21100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 46),
  -- Qwilfish - Shadow Ball - TM114
  (211, 21100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Qwilfish - Surf - TM123
  (211, 21100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Qwilfish - Reversal - TM134
  (211, 21100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Qwilfish - Ice Beam - TM135
  (211, 21100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Qwilfish - Hydro Pump - TM142
  (211, 21100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 51),
  -- Qwilfish - Blizzard - TM143
  (211, 21100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 52),
  -- Qwilfish - Sludge Bomb - TM148
  (211, 21100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 53),
  -- Qwilfish - Giga Impact - TM152
  (211, 21100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Qwilfish - Tera Blast - TM171
  (211, 21100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Qwilfish - Supersonic - Egg
  (211, 21100, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Qwilfish - Bubble Beam - Egg
  (211, 21100, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Qwilfish - Haze - Egg
  (211, 21100, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Qwilfish - Self-Destruct - Egg
  (211, 21100, 120, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Qwilfish - Flail - Egg
  (211, 21100, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Qwilfish - Astonish - Egg
  (211, 21100, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Qwilfish - Water Pulse - Egg
  (211, 21100, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Qwilfish - Aqua Jet - Egg
  (211, 21100, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Qwilfish - Acid Spray - Egg
  (211, 21100, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Qwilfish - Barb Barrage - Egg
  (211, 21100, 839, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Qwilfish (Hisuian Qwilfish) - Tackle - Level 1
  (211, 21101, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish (Hisuian Qwilfish) - Poison Sting - Level 1
  (211, 21101, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish (Hisuian Qwilfish) - Harden - Level 4
  (211, 21101, 106, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Qwilfish (Hisuian Qwilfish) - Bite - Level 8
  (211, 21101, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Qwilfish (Hisuian Qwilfish) - Fell Stinger - Level 12
  (211, 21101, 565, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Qwilfish (Hisuian Qwilfish) - Minimize - Level 16
  (211, 21101, 107, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Qwilfish (Hisuian Qwilfish) - Spikes - Level 20
  (211, 21101, 191, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Qwilfish (Hisuian Qwilfish) - Brine - Level 24
  (211, 21101, 362, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Qwilfish (Hisuian Qwilfish) - Barb Barrage - Level 28
  (211, 21101, 839, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Qwilfish (Hisuian Qwilfish) - Pin Missile - Level 32
  (211, 21101, 42, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Qwilfish (Hisuian Qwilfish) - Toxic Spikes - Level 36
  (211, 21101, 390, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Qwilfish (Hisuian Qwilfish) - Stockpile - Level 40
  (211, 21101, 254, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Qwilfish (Hisuian Qwilfish) - Spit Up - Level 40
  (211, 21101, 255, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Qwilfish (Hisuian Qwilfish) - Toxic - Level 44
  (211, 21101, 92, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Qwilfish (Hisuian Qwilfish) - Crunch - Level 48
  (211, 21101, 242, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Qwilfish (Hisuian Qwilfish) - Acupressure - Level 52
  (211, 21101, 367, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Qwilfish (Hisuian Qwilfish) - Destiny Bond - Level 56
  (211, 21101, 194, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Qwilfish (Hisuian Qwilfish) - Take Down - TM001
  (211, 21101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Qwilfish (Hisuian Qwilfish) - Agility - TM004
  (211, 21101, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Qwilfish (Hisuian Qwilfish) - Scary Face - TM006
  (211, 21101, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Qwilfish (Hisuian Qwilfish) - Protect - TM007
  (211, 21101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Qwilfish (Hisuian Qwilfish) - Water Pulse - TM011
  (211, 21101, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Qwilfish (Hisuian Qwilfish) - Acid Spray - TM013
  (211, 21101, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 23),
  -- Qwilfish (Hisuian Qwilfish) - Chilling Water - TM022
  (211, 21101, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Qwilfish (Hisuian Qwilfish) - Facade - TM025
  (211, 21101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Qwilfish (Hisuian Qwilfish) - Poison Tail - TM026
  (211, 21101, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 26),
  -- Qwilfish (Hisuian Qwilfish) - Hex - TM029
  (211, 21101, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Qwilfish (Hisuian Qwilfish) - Swift - TM032
  (211, 21101, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Qwilfish (Hisuian Qwilfish) - Icy Wind - TM034
  (211, 21101, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Qwilfish (Hisuian Qwilfish) - Mud Shot - TM035
  (211, 21101, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Qwilfish (Hisuian Qwilfish) - Venoshock - TM045
  (211, 21101, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Qwilfish (Hisuian Qwilfish) - Endure - TM047
  (211, 21101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Qwilfish (Hisuian Qwilfish) - Rain Dance - TM050
  (211, 21101, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Qwilfish (Hisuian Qwilfish) - Sleep Talk - TM070
  (211, 21101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Qwilfish (Hisuian Qwilfish) - Waterfall - TM077
  (211, 21101, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Qwilfish (Hisuian Qwilfish) - Poison Jab - TM083
  (211, 21101, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Qwilfish (Hisuian Qwilfish) - Rest - TM085
  (211, 21101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Qwilfish (Hisuian Qwilfish) - Taunt - TM087
  (211, 21101, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Qwilfish (Hisuian Qwilfish) - Swords Dance - TM088
  (211, 21101, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Qwilfish (Hisuian Qwilfish) - Spikes - TM090
  (211, 21101, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 40),
  -- Qwilfish (Hisuian Qwilfish) - Toxic Spikes - TM091
  (211, 21101, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 41),
  -- Qwilfish (Hisuian Qwilfish) - Dark Pulse - TM094
  (211, 21101, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Qwilfish (Hisuian Qwilfish) - Gunk Shot - TM102
  (211, 21101, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 43),
  -- Qwilfish (Hisuian Qwilfish) - Substitute - TM103
  (211, 21101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Qwilfish (Hisuian Qwilfish) - Crunch - TM108
  (211, 21101, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Qwilfish (Hisuian Qwilfish) - Liquidation - TM110
  (211, 21101, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 46),
  -- Qwilfish (Hisuian Qwilfish) - Shadow Ball - TM114
  (211, 21101, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Qwilfish (Hisuian Qwilfish) - Surf - TM123
  (211, 21101, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Qwilfish (Hisuian Qwilfish) - Reversal - TM134
  (211, 21101, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Qwilfish (Hisuian Qwilfish) - Ice Beam - TM135
  (211, 21101, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Qwilfish (Hisuian Qwilfish) - Hydro Pump - TM142
  (211, 21101, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 51),
  -- Qwilfish (Hisuian Qwilfish) - Blizzard - TM143
  (211, 21101, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 52),
  -- Qwilfish (Hisuian Qwilfish) - Sludge Bomb - TM148
  (211, 21101, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 53),
  -- Qwilfish (Hisuian Qwilfish) - Giga Impact - TM152
  (211, 21101, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Qwilfish (Hisuian Qwilfish) - Tera Blast - TM171
  (211, 21101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Qwilfish (Hisuian Qwilfish) - Supersonic - Egg
  (211, 21101, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Qwilfish (Hisuian Qwilfish) - Bubble Beam - Egg
  (211, 21101, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Qwilfish (Hisuian Qwilfish) - Haze - Egg
  (211, 21101, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Qwilfish (Hisuian Qwilfish) - Self-Destruct - Egg
  (211, 21101, 120, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Qwilfish (Hisuian Qwilfish) - Flail - Egg
  (211, 21101, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Qwilfish (Hisuian Qwilfish) - Astonish - Egg
  (211, 21101, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Qwilfish (Hisuian Qwilfish) - Water Pulse - Egg
  (211, 21101, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Qwilfish (Hisuian Qwilfish) - Aqua Tail - Egg
  (211, 21101, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Qwilfish (Hisuian Qwilfish) - Aqua Jet - Egg
  (211, 21101, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Qwilfish (Hisuian Qwilfish) - Acid Spray - Egg
  (211, 21101, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Scizor - Wing Attack - Level 1
  (212, 21200, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Agility - Level 1
  (212, 21200, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scizor - False Swipe - Level 1
  (212, 21200, 206, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Scizor - Fury Cutter - Level 1
  (212, 21200, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Scizor - Air Slash - Level 1
  (212, 21200, 403, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Scizor - Metal Claw - Level 12
  (212, 21200, 232, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Scizor - Double Team - Level 16
  (212, 21200, 104, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Scizor - Double Hit - Level 20
  (212, 21200, 458, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Scizor - Slash - Level 24
  (212, 21200, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Scizor - Focus Energy - Level 28
  (212, 21200, 116, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Scizor - Iron Defense - Level 32
  (212, 21200, 334, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Scizor - Iron Head - Level 36
  (212, 21200, 442, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Scizor - X-Scissor - Level 40
  (212, 21200, 404, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Scizor - Swords Dance - Level 44
  (212, 21200, 14, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Scizor - Take Down - TM001
  (212, 21200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Scizor - Agility - TM004
  (212, 21200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Scizor - Scary Face - TM006
  (212, 21200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Scizor - Protect - TM007
  (212, 21200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Scizor - Acrobatics - TM014
  (212, 21200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Scizor - Struggle Bug - TM015
  (212, 21200, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 22),
  -- Scizor - Thief - TM018
  (212, 21200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Scizor - Trailblaze - TM020
  (212, 21200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Scizor - Pounce - TM021
  (212, 21200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 25),
  -- Scizor - Facade - TM025
  (212, 21200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Scizor - Aerial Ace - TM027
  (212, 21200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Scizor - Metal Claw - TM031
  (212, 21200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Scizor - Swift - TM032
  (212, 21200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Scizor - Air Cutter - TM040
  (212, 21200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 30),
  -- Scizor - Fling - TM043
  (212, 21200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Scizor - Endure - TM047
  (212, 21200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Scizor - Sunny Day - TM049
  (212, 21200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Scizor - Rain Dance - TM050
  (212, 21200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Scizor - Sandstorm - TM051
  (212, 21200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Scizor - False Swipe - TM057
  (212, 21200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 36),
  -- Scizor - Brick Break - TM058
  (212, 21200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Scizor - U-turn - TM060
  (212, 21200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 38),
  -- Scizor - Air Slash - TM065
  (212, 21200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 39),
  -- Scizor - Sleep Talk - TM070
  (212, 21200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Scizor - Light Screen - TM075
  (212, 21200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Scizor - Rest - TM085
  (212, 21200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Scizor - Swords Dance - TM088
  (212, 21200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Scizor - Flash Cannon - TM093
  (212, 21200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Scizor - Iron Head - TM099
  (212, 21200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Scizor - Substitute - TM103
  (212, 21200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Scizor - Iron Defense - TM104
  (212, 21200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 47),
  -- Scizor - X-Scissor - TM105
  (212, 21200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 48),
  -- Scizor - Tailwind - TM113
  (212, 21200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 49),
  -- Scizor - Helping Hand - TM130
  (212, 21200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Scizor - Baton Pass - TM132
  (212, 21200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 51),
  -- Scizor - Reversal - TM134
  (212, 21200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Scizor - Giga Impact - TM152
  (212, 21200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Scizor - Bug Buzz - TM162
  (212, 21200, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 54),
  -- Scizor - Hyper Beam - TM163
  (212, 21200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Scizor - Close Combat - TM167
  (212, 21200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 56),
  -- Scizor - Steel Beam - TM170
  (212, 21200, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Scizor - Tera Blast - TM171
  (212, 21200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Scizor - Counter - Egg
  (212, 21200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Scizor - Feint - Egg
  (212, 21200, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Scizor - Night Slash - Egg
  (212, 21200, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Scizor - Defog - Egg
  (212, 21200, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Scizor - Quick Guard - Egg
  (212, 21200, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Scizor - Bullet Punch - Evolution
  (212, 21200, 418, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Arm Thrust - Level 1
  (214, 21400, 292, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heracross - Fury Attack - Level 5
  (214, 21400, 31, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Heracross - Endure - Level 10
  (214, 21400, 203, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Heracross - Aerial Ace - Level 15
  (214, 21400, 332, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Heracross - Horn Attack - Level 20
  (214, 21400, 30, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Heracross - Counter - Level 25
  (214, 21400, 68, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Heracross - Brick Break - Level 30
  (214, 21400, 280, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Heracross - Pin Missile - Level 35
  (214, 21400, 42, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Heracross - Throat Chop - Level 40
  (214, 21400, 675, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Heracross - Thrash - Level 45
  (214, 21400, 37, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Heracross - Swords Dance - Level 50
  (214, 21400, 14, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Heracross - Megahorn - Level 55
  (214, 21400, 224, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Heracross - Close Combat - Level 60
  (214, 21400, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Heracross - Take Down - TM001
  (214, 21400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Heracross - Protect - TM007
  (214, 21400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Heracross - Low Kick - TM012
  (214, 21400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Heracross - Struggle Bug - TM015
  (214, 21400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 19),
  -- Heracross - Thief - TM018
  (214, 21400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Heracross - Trailblaze - TM020
  (214, 21400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Heracross - Pounce - TM021
  (214, 21400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Heracross - Facade - TM025
  (214, 21400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Heracross - Aerial Ace - TM027
  (214, 21400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Heracross - Bulldoze - TM028
  (214, 21400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Heracross - Rock Tomb - TM036
  (214, 21400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Heracross - Fling - TM043
  (214, 21400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Heracross - Endure - TM047
  (214, 21400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Heracross - Sunny Day - TM049
  (214, 21400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Heracross - Rain Dance - TM050
  (214, 21400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Heracross - Smart Strike - TM053
  (214, 21400, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 31),
  -- Heracross - Dig - TM055
  (214, 21400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Heracross - Bullet Seed - TM056
  (214, 21400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Heracross - False Swipe - TM057
  (214, 21400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Heracross - Brick Break - TM058
  (214, 21400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Heracross - Shadow Claw - TM061
  (214, 21400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Heracross - Bulk Up - TM064
  (214, 21400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Heracross - Body Slam - TM066
  (214, 21400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Heracross - Sleep Talk - TM070
  (214, 21400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Heracross - Rock Blast - TM076
  (214, 21400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 40),
  -- Heracross - Rest - TM085
  (214, 21400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Heracross - Rock Slide - TM086
  (214, 21400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Heracross - Swords Dance - TM088
  (214, 21400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Heracross - Spikes - TM090
  (214, 21400, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 44),
  -- Heracross - Substitute - TM103
  (214, 21400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Heracross - Iron Defense - TM104
  (214, 21400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 46),
  -- Heracross - Helping Hand - TM130
  (214, 21400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Heracross - Reversal - TM134
  (214, 21400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Heracross - Earthquake - TM149
  (214, 21400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Heracross - Stone Edge - TM150
  (214, 21400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Heracross - Giga Impact - TM152
  (214, 21400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Heracross - Focus Blast - TM158
  (214, 21400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Heracross - Bug Buzz - TM162
  (214, 21400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 53),
  -- Heracross - Hyper Beam - TM163
  (214, 21400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Heracross - Close Combat - TM167
  (214, 21400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 55),
  -- Heracross - Tera Blast - TM171
  (214, 21400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Heracross - Double-Edge - Egg
  (214, 21400, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heracross - Seismic Toss - Egg
  (214, 21400, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Heracross - Harden - Egg
  (214, 21400, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Heracross - Flail - Egg
  (214, 21400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Heracross - Feint - Egg
  (214, 21400, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Heracross - Night Slash - Egg
  (214, 21400, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 6
  (215, 21500, 269, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 12
  (215, 21500, 98, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Sneasel - Metal Claw - Level 18
  (215, 21500, 232, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sneasel - Icy Wind - Level 24
  (215, 21500, 196, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 30
  (215, 21500, 154, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Sneasel - Hone Claws - Level 36
  (215, 21500, 468, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sneasel - Beat Up - Level 42
  (215, 21500, 251, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sneasel - Agility - Level 48
  (215, 21500, 97, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Sneasel - Screech - Level 54
  (215, 21500, 103, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Sneasel - Slash - Level 60
  (215, 21500, 163, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Sneasel - Take Down - TM001
  (215, 21500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Sneasel - Fake Tears - TM003
  (215, 21500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 14),
  -- Sneasel - Agility - TM004
  (215, 21500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Sneasel - Scary Face - TM006
  (215, 21500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Sneasel - Protect - TM007
  (215, 21500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Sneasel - Water Pulse - TM011
  (215, 21500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Sneasel - Low Kick - TM012
  (215, 21500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Sneasel - Thief - TM018
  (215, 21500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Sneasel - Trailblaze - TM020
  (215, 21500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Sneasel - Facade - TM025
  (215, 21500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Sneasel - Aerial Ace - TM027
  (215, 21500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Sneasel - Snarl - TM030
  (215, 21500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Sneasel - Metal Claw - TM031
  (215, 21500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Sneasel - Swift - TM032
  (215, 21500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Sneasel - Icy Wind - TM034
  (215, 21500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Sneasel - Low Sweep - TM039
  (215, 21500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Sneasel - Fling - TM043
  (215, 21500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Sneasel - Avalanche - TM046
  (215, 21500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 30),
  -- Sneasel - Endure - TM047
  (215, 21500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Sneasel - Sunny Day - TM049
  (215, 21500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Sneasel - Rain Dance - TM050
  (215, 21500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Sneasel - Snowscape - TM052
  (215, 21500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 34),
  -- Sneasel - Dig - TM055
  (215, 21500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Sneasel - False Swipe - TM057
  (215, 21500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 36),
  -- Sneasel - Brick Break - TM058
  (215, 21500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Sneasel - Shadow Claw - TM061
  (215, 21500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Sneasel - Foul Play - TM062
  (215, 21500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 39),
  -- Sneasel - Ice Punch - TM069
  (215, 21500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Sneasel - Sleep Talk - TM070
  (215, 21500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Sneasel - Poison Jab - TM083
  (215, 21500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 42),
  -- Sneasel - Rest - TM085
  (215, 21500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Sneasel - Taunt - TM087
  (215, 21500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Sneasel - Swords Dance - TM088
  (215, 21500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Sneasel - Dark Pulse - TM094
  (215, 21500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 46),
  -- Sneasel - Substitute - TM103
  (215, 21500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Sneasel - X-Scissor - TM105
  (215, 21500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 48),
  -- Sneasel - Shadow Ball - TM114
  (215, 21500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Sneasel - Surf - TM123
  (215, 21500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 50),
  -- Sneasel - Calm Mind - TM129
  (215, 21500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Sneasel - Helping Hand - TM130
  (215, 21500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Sneasel - Reversal - TM134
  (215, 21500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 53),
  -- Sneasel - Ice Beam - TM135
  (215, 21500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 54),
  -- Sneasel - Nasty Plot - TM140
  (215, 21500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Sneasel - Blizzard - TM143
  (215, 21500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 56),
  -- Sneasel - Giga Impact - TM152
  (215, 21500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Sneasel - Tera Blast - TM171
  (215, 21500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Sneasel - Bite - Egg
  (215, 21500, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sneasel - Counter - Egg
  (215, 21500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sneasel - Spite - Egg
  (215, 21500, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sneasel - Fake Out - Egg
  (215, 21500, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Feint - Egg
  (215, 21500, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasel - Ice Shard - Egg
  (215, 21500, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasel - Double Hit - Egg
  (215, 21500, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sneasel - Icicle Crash - Egg
  (215, 21500, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sneasel (Hisuian Sneasel) - Scratch - Level 1
  (215, 21501, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel (Hisuian Sneasel) - Leer - Level 1
  (215, 21501, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel (Hisuian Sneasel) - Rock Smash - Level 1
  (215, 21501, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sneasel (Hisuian Sneasel) - Taunt - Level 6
  (215, 21501, 269, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sneasel (Hisuian Sneasel) - Quick Attack - Level 12
  (215, 21501, 98, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sneasel (Hisuian Sneasel) - Metal Claw - Level 18
  (215, 21501, 232, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Sneasel (Hisuian Sneasel) - Poison Jab - Level 24
  (215, 21501, 398, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Sneasel (Hisuian Sneasel) - Brick Break - Level 30
  (215, 21501, 280, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sneasel (Hisuian Sneasel) - Hone Claws - Level 36
  (215, 21501, 468, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Sneasel (Hisuian Sneasel) - Slash - Level 42
  (215, 21501, 163, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Sneasel (Hisuian Sneasel) - Agility - Level 48
  (215, 21501, 97, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Sneasel (Hisuian Sneasel) - Screech - Level 54
  (215, 21501, 103, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Sneasel (Hisuian Sneasel) - Close Combat - Level 60
  (215, 21501, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Sneasel (Hisuian Sneasel) - Take Down - TM001
  (215, 21501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sneasel (Hisuian Sneasel) - Agility - TM004
  (215, 21501, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Sneasel (Hisuian Sneasel) - Protect - TM007
  (215, 21501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Sneasel (Hisuian Sneasel) - Low Kick - TM012
  (215, 21501, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Sneasel (Hisuian Sneasel) - Acid Spray - TM013
  (215, 21501, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Sneasel (Hisuian Sneasel) - Thief - TM018
  (215, 21501, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Sneasel (Hisuian Sneasel) - Trailblaze - TM020
  (215, 21501, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Sneasel (Hisuian Sneasel) - Facade - TM025
  (215, 21501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Sneasel (Hisuian Sneasel) - Poison Tail - TM026
  (215, 21501, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 22),
  -- Sneasel (Hisuian Sneasel) - Aerial Ace - TM027
  (215, 21501, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Sneasel (Hisuian Sneasel) - Metal Claw - TM031
  (215, 21501, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Sneasel (Hisuian Sneasel) - Swift - TM032
  (215, 21501, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Sneasel (Hisuian Sneasel) - Low Sweep - TM039
  (215, 21501, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Sneasel (Hisuian Sneasel) - Fling - TM043
  (215, 21501, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Sneasel (Hisuian Sneasel) - Venoshock - TM045
  (215, 21501, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Sneasel (Hisuian Sneasel) - Endure - TM047
  (215, 21501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Sneasel (Hisuian Sneasel) - Sunny Day - TM049
  (215, 21501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Sneasel (Hisuian Sneasel) - Rain Dance - TM050
  (215, 21501, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Sneasel (Hisuian Sneasel) - Dig - TM055
  (215, 21501, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Sneasel (Hisuian Sneasel) - False Swipe - TM057
  (215, 21501, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 33),
  -- Sneasel (Hisuian Sneasel) - Brick Break - TM058
  (215, 21501, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Sneasel (Hisuian Sneasel) - Shadow Claw - TM061
  (215, 21501, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Sneasel (Hisuian Sneasel) - Bulk Up - TM064
  (215, 21501, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 36),
  -- Sneasel (Hisuian Sneasel) - Sleep Talk - TM070
  (215, 21501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Sneasel (Hisuian Sneasel) - Grass Knot - TM081
  (215, 21501, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Sneasel (Hisuian Sneasel) - Poison Jab - TM083
  (215, 21501, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Sneasel (Hisuian Sneasel) - Rest - TM085
  (215, 21501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Sneasel (Hisuian Sneasel) - Taunt - TM087
  (215, 21501, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Sneasel (Hisuian Sneasel) - Swords Dance - TM088
  (215, 21501, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Sneasel (Hisuian Sneasel) - Toxic Spikes - TM091
  (215, 21501, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 43),
  -- Sneasel (Hisuian Sneasel) - Gunk Shot - TM102
  (215, 21501, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Sneasel (Hisuian Sneasel) - Substitute - TM103
  (215, 21501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Sneasel (Hisuian Sneasel) - X-Scissor - TM105
  (215, 21501, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Sneasel (Hisuian Sneasel) - Shadow Ball - TM114
  (215, 21501, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Sneasel (Hisuian Sneasel) - Calm Mind - TM129
  (215, 21501, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 48),
  -- Sneasel (Hisuian Sneasel) - Reversal - TM134
  (215, 21501, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Sneasel (Hisuian Sneasel) - Nasty Plot - TM140
  (215, 21501, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Sneasel (Hisuian Sneasel) - Sludge Bomb - TM148
  (215, 21501, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Sneasel (Hisuian Sneasel) - Giga Impact - TM152
  (215, 21501, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Sneasel (Hisuian Sneasel) - Focus Blast - TM158
  (215, 21501, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 53),
  -- Sneasel (Hisuian Sneasel) - Close Combat - TM167
  (215, 21501, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Sneasel (Hisuian Sneasel) - Tera Blast - TM171
  (215, 21501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Sneasel (Hisuian Sneasel) - Counter - Egg
  (215, 21501, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sneasel (Hisuian Sneasel) - Fake Out - Egg
  (215, 21501, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sneasel (Hisuian Sneasel) - Feint - Egg
  (215, 21501, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sneasel (Hisuian Sneasel) - Night Slash - Egg
  (215, 21501, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sneasel (Hisuian Sneasel) - Switcheroo - Egg
  (215, 21501, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sneasel (Hisuian Sneasel) - Double Hit - Egg
  (215, 21501, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sneasel (Hisuian Sneasel) - Quick Guard - Egg
  (215, 21501, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Teddiursa - Scratch - Level 1
  (216, 21600, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Lick - Level 1
  (216, 21600, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Teddiursa - Covet - Level 1
  (216, 21600, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Teddiursa - Fling - Level 1
  (216, 21600, 374, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Teddiursa - Baby-Doll Eyes - Level 1
  (216, 21600, 608, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Teddiursa - Fury Swipes - Level 8
  (216, 21600, 154, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Teddiursa - Payback - Level 13
  (216, 21600, 371, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Teddiursa - Sweet Scent - Level 17
  (216, 21600, 230, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Teddiursa - Slash - Level 22
  (216, 21600, 163, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Teddiursa - Play Nice - Level 25
  (216, 21600, 589, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Teddiursa - Play Rough - Level 29
  (216, 21600, 583, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Teddiursa - Charm - Level 33
  (216, 21600, 204, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Teddiursa - Rest - Level 37
  (216, 21600, 156, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Teddiursa - Snore - Level 37
  (216, 21600, 173, 23, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Teddiursa - Thrash - Level 41
  (216, 21600, 37, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Teddiursa - Take Down - TM001
  (216, 21600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Teddiursa - Charm - TM002
  (216, 21600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Teddiursa - Fake Tears - TM003
  (216, 21600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Teddiursa - Protect - TM007
  (216, 21600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Teddiursa - Low Kick - TM012
  (216, 21600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Teddiursa - Thief - TM018
  (216, 21600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Teddiursa - Trailblaze - TM020
  (216, 21600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Teddiursa - Facade - TM025
  (216, 21600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Teddiursa - Aerial Ace - TM027
  (216, 21600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Teddiursa - Bulldoze - TM028
  (216, 21600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Teddiursa - Metal Claw - TM031
  (216, 21600, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 26),
  -- Teddiursa - Swift - TM032
  (216, 21600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Teddiursa - Rock Tomb - TM036
  (216, 21600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Teddiursa - Fling - TM043
  (216, 21600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Teddiursa - Avalanche - TM046
  (216, 21600, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 30),
  -- Teddiursa - Endure - TM047
  (216, 21600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Teddiursa - Sunny Day - TM049
  (216, 21600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Teddiursa - Rain Dance - TM050
  (216, 21600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Teddiursa - Dig - TM055
  (216, 21600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Teddiursa - Brick Break - TM058
  (216, 21600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Teddiursa - Shadow Claw - TM061
  (216, 21600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Teddiursa - Bulk Up - TM064
  (216, 21600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Teddiursa - Body Slam - TM066
  (216, 21600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Teddiursa - Fire Punch - TM067
  (216, 21600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Teddiursa - Thunder Punch - TM068
  (216, 21600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Teddiursa - Ice Punch - TM069
  (216, 21600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Teddiursa - Sleep Talk - TM070
  (216, 21600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Teddiursa - Seed Bomb - TM071
  (216, 21600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Teddiursa - Metronome - TM080
  (216, 21600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Teddiursa - Rest - TM085
  (216, 21600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Teddiursa - Rock Slide - TM086
  (216, 21600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Teddiursa - Taunt - TM087
  (216, 21600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Teddiursa - Swords Dance - TM088
  (216, 21600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Teddiursa - Gunk Shot - TM102
  (216, 21600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 49),
  -- Teddiursa - Substitute - TM103
  (216, 21600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Teddiursa - Crunch - TM108
  (216, 21600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Teddiursa - Hyper Voice - TM117
  (216, 21600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 52),
  -- Teddiursa - Play Rough - TM127
  (216, 21600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 53),
  -- Teddiursa - Helping Hand - TM130
  (216, 21600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Teddiursa - Earthquake - TM149
  (216, 21600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Teddiursa - Close Combat - TM167
  (216, 21600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 56),
  -- Teddiursa - Tera Blast - TM171
  (216, 21600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Teddiursa - Double-Edge - Egg
  (216, 21600, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Teddiursa - Counter - Egg
  (216, 21600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Teddiursa - Seismic Toss - Egg
  (216, 21600, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Teddiursa - Belly Drum - Egg
  (216, 21600, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Teddiursa - Fury Cutter - Egg
  (216, 21600, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Teddiursa - Metal Claw - Egg
  (216, 21600, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Teddiursa - Cross Chop - Egg
  (216, 21600, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Teddiursa - Crunch - Egg
  (216, 21600, 242, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Teddiursa - Yawn - Egg
  (216, 21600, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Teddiursa - Fake Tears - Egg
  (216, 21600, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Teddiursa - Close Combat - Egg
  (216, 21600, 370, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Teddiursa - Night Slash - Egg
  (216, 21600, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ursaring - Scratch - Level 1
  (217, 21700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Leer - Level 1
  (217, 21700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaring - Lick - Level 1
  (217, 21700, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaring - Fake Tears - Level 1
  (217, 21700, 313, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaring - Covet - Level 1
  (217, 21700, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ursaring - Fury Swipes - Level 8
  (217, 21700, 154, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Ursaring - Payback - Level 13
  (217, 21700, 371, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Ursaring - Sweet Scent - Level 17
  (217, 21700, 230, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Ursaring - Slash - Level 22
  (217, 21700, 163, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Ursaring - Play Nice - Level 25
  (217, 21700, 589, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ursaring - Play Rough - Level 29
  (217, 21700, 583, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Ursaring - Scary Face - Level 35
  (217, 21700, 184, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Ursaring - Rest - Level 41
  (217, 21700, 156, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Ursaring - Snore - Level 41
  (217, 21700, 173, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Ursaring - High Horsepower - Level 48
  (217, 21700, 667, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Ursaring - Thrash - Level 56
  (217, 21700, 37, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Ursaring - Hammer Arm - Level 64
  (217, 21700, 359, 23, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Ursaring - Take Down - TM001
  (217, 21700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Ursaring - Charm - TM002
  (217, 21700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Ursaring - Fake Tears - TM003
  (217, 21700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Ursaring - Scary Face - TM006
  (217, 21700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Ursaring - Protect - TM007
  (217, 21700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Ursaring - Low Kick - TM012
  (217, 21700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Ursaring - Thief - TM018
  (217, 21700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Ursaring - Trailblaze - TM020
  (217, 21700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Ursaring - Facade - TM025
  (217, 21700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Ursaring - Aerial Ace - TM027
  (217, 21700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Ursaring - Bulldoze - TM028
  (217, 21700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Ursaring - Metal Claw - TM031
  (217, 21700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 29),
  -- Ursaring - Swift - TM032
  (217, 21700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 30),
  -- Ursaring - Rock Tomb - TM036
  (217, 21700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Ursaring - Fling - TM043
  (217, 21700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Ursaring - Avalanche - TM046
  (217, 21700, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 33),
  -- Ursaring - Endure - TM047
  (217, 21700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Ursaring - Sunny Day - TM049
  (217, 21700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Ursaring - Rain Dance - TM050
  (217, 21700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Ursaring - Dig - TM055
  (217, 21700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Ursaring - Brick Break - TM058
  (217, 21700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Ursaring - Shadow Claw - TM061
  (217, 21700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Ursaring - Bulk Up - TM064
  (217, 21700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Ursaring - Body Slam - TM066
  (217, 21700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Ursaring - Fire Punch - TM067
  (217, 21700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 42),
  -- Ursaring - Thunder Punch - TM068
  (217, 21700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Ursaring - Ice Punch - TM069
  (217, 21700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Ursaring - Sleep Talk - TM070
  (217, 21700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Ursaring - Seed Bomb - TM071
  (217, 21700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 46),
  -- Ursaring - Metronome - TM080
  (217, 21700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 47),
  -- Ursaring - Stomping Tantrum - TM084
  (217, 21700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Ursaring - Rest - TM085
  (217, 21700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Ursaring - Rock Slide - TM086
  (217, 21700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Ursaring - Taunt - TM087
  (217, 21700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Ursaring - Swords Dance - TM088
  (217, 21700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 52),
  -- Ursaring - Gunk Shot - TM102
  (217, 21700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 53),
  -- Ursaring - Substitute - TM103
  (217, 21700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Ursaring - Crunch - TM108
  (217, 21700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 55),
  -- Ursaring - Hyper Voice - TM117
  (217, 21700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 56),
  -- Ursaring - Play Rough - TM127
  (217, 21700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 57),
  -- Ursaring - Helping Hand - TM130
  (217, 21700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Ursaring - Earthquake - TM149
  (217, 21700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 59),
  -- Ursaring - Stone Edge - TM150
  (217, 21700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 60),
  -- Ursaring - Giga Impact - TM152
  (217, 21700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Ursaring - Hyper Beam - TM163
  (217, 21700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Ursaring - Close Combat - TM167
  (217, 21700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Ursaring - Tera Blast - TM171
  (217, 21700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Ursaring - Double-Edge - Egg
  (217, 21700, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ursaring - Counter - Egg
  (217, 21700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ursaring - Seismic Toss - Egg
  (217, 21700, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ursaring - Belly Drum - Egg
  (217, 21700, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ursaring - Fury Cutter - Egg
  (217, 21700, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ursaring - Metal Claw - Egg
  (217, 21700, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Ursaring - Cross Chop - Egg
  (217, 21700, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Ursaring - Crunch - Egg
  (217, 21700, 242, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Ursaring - Yawn - Egg
  (217, 21700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Ursaring - Fake Tears - Egg
  (217, 21700, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Ursaring - Close Combat - Egg
  (217, 21700, 370, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Ursaring - Night Slash - Egg
  (217, 21700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Slugma - Smog - Level 1
  (218, 21800, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slugma - Yawn - Level 1
  (218, 21800, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slugma - Ember - Level 6
  (218, 21800, 52, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slugma - Rock Throw - Level 8
  (218, 21800, 88, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Slugma - Harden - Level 13
  (218, 21800, 106, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Slugma - Clear Smog - Level 20
  (218, 21800, 499, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Slugma - Ancient Power - Level 22
  (218, 21800, 246, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Slugma - Incinerate - Level 27
  (218, 21800, 510, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Slugma - Rock Slide - Level 29
  (218, 21800, 157, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Slugma - Lava Plume - Level 34
  (218, 21800, 436, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Slugma - Amnesia - Level 36
  (218, 21800, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slugma - Body Slam - Level 41
  (218, 21800, 34, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Slugma - Recover - Level 43
  (218, 21800, 105, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Slugma - Flamethrower - Level 48
  (218, 21800, 53, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Slugma - Earth Power - Level 50
  (218, 21800, 414, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Slugma - Take Down - TM001
  (218, 21800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Slugma - Mud-Slap - TM005
  (218, 21800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Slugma - Protect - TM007
  (218, 21800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Slugma - Fire Spin - TM024
  (218, 21800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Slugma - Facade - TM025
  (218, 21800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Slugma - Bulldoze - TM028
  (218, 21800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Slugma - Mud Shot - TM035
  (218, 21800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Slugma - Rock Tomb - TM036
  (218, 21800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Slugma - Flame Charge - TM038
  (218, 21800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Slugma - Endure - TM047
  (218, 21800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Slugma - Sunny Day - TM049
  (218, 21800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Slugma - Sandstorm - TM051
  (218, 21800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Slugma - Body Slam - TM066
  (218, 21800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Slugma - Sleep Talk - TM070
  (218, 21800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Slugma - Reflect - TM074
  (218, 21800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Slugma - Light Screen - TM075
  (218, 21800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Slugma - Rock Blast - TM076
  (218, 21800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 32),
  -- Slugma - Rest - TM085
  (218, 21800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Slugma - Rock Slide - TM086
  (218, 21800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Slugma - Power Gem - TM101
  (218, 21800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 35),
  -- Slugma - Substitute - TM103
  (218, 21800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Slugma - Iron Defense - TM104
  (218, 21800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Slugma - Will-O-Wisp - TM107
  (218, 21800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Slugma - Stealth Rock - TM116
  (218, 21800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Slugma - Heat Wave - TM118
  (218, 21800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Slugma - Flamethrower - TM125
  (218, 21800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 41),
  -- Slugma - Amnesia - TM128
  (218, 21800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 42),
  -- Slugma - Earth Power - TM133
  (218, 21800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Slugma - Fire Blast - TM141
  (218, 21800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Slugma - Earthquake - TM149
  (218, 21800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Slugma - Stone Edge - TM150
  (218, 21800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Slugma - Overheat - TM157
  (218, 21800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 47),
  -- Slugma - Tera Blast - TM171
  (218, 21800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Slugma - Smokescreen - Egg
  (218, 21800, 108, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slugma - Acid Armor - Egg
  (218, 21800, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slugma - Curse - Egg
  (218, 21800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slugma - Rollout - Egg
  (218, 21800, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Slugma - Stockpile - Egg
  (218, 21800, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Slugma - Memento - Egg
  (218, 21800, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Slugma - Guard Swap - Egg
  (218, 21800, 385, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Slugma - Inferno - Egg
  (218, 21800, 517, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magcargo - Ember - Level 1
  (219, 21900, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magcargo - Rock Throw - Level 1
  (219, 21900, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magcargo - Smog - Level 1
  (219, 21900, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magcargo - Yawn - Level 1
  (219, 21900, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magcargo - Earth Power - Level 1
  (219, 21900, 414, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magcargo - Harden - Level 13
  (219, 21900, 106, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Magcargo - Clear Smog - Level 20
  (219, 21900, 499, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magcargo - Ancient Power - Level 22
  (219, 21900, 246, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Magcargo - Incinerate - Level 27
  (219, 21900, 510, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Magcargo - Rock Slide - Level 29
  (219, 21900, 157, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Magcargo - Lava Plume - Level 34
  (219, 21900, 436, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Magcargo - Amnesia - Level 36
  (219, 21900, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Magcargo - Body Slam - Level 43
  (219, 21900, 34, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Magcargo - Recover - Level 47
  (219, 21900, 105, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Magcargo - Flamethrower - Level 54
  (219, 21900, 53, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Magcargo - Take Down - TM001
  (219, 21900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Magcargo - Mud-Slap - TM005
  (219, 21900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Magcargo - Protect - TM007
  (219, 21900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Magcargo - Fire Spin - TM024
  (219, 21900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Magcargo - Facade - TM025
  (219, 21900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Magcargo - Bulldoze - TM028
  (219, 21900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Magcargo - Mud Shot - TM035
  (219, 21900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Magcargo - Rock Tomb - TM036
  (219, 21900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Magcargo - Flame Charge - TM038
  (219, 21900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Magcargo - Endure - TM047
  (219, 21900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Magcargo - Sunny Day - TM049
  (219, 21900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Magcargo - Sandstorm - TM051
  (219, 21900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Magcargo - Body Slam - TM066
  (219, 21900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Magcargo - Sleep Talk - TM070
  (219, 21900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Magcargo - Reflect - TM074
  (219, 21900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Magcargo - Light Screen - TM075
  (219, 21900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Magcargo - Rock Blast - TM076
  (219, 21900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 32),
  -- Magcargo - Stomping Tantrum - TM084
  (219, 21900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Magcargo - Rest - TM085
  (219, 21900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Magcargo - Rock Slide - TM086
  (219, 21900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Magcargo - Power Gem - TM101
  (219, 21900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 36),
  -- Magcargo - Substitute - TM103
  (219, 21900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Magcargo - Iron Defense - TM104
  (219, 21900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Magcargo - Will-O-Wisp - TM107
  (219, 21900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 39),
  -- Magcargo - Stealth Rock - TM116
  (219, 21900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 40),
  -- Magcargo - Heat Wave - TM118
  (219, 21900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 41),
  -- Magcargo - Flamethrower - TM125
  (219, 21900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Magcargo - Amnesia - TM128
  (219, 21900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 43),
  -- Magcargo - Earth Power - TM133
  (219, 21900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Magcargo - Fire Blast - TM141
  (219, 21900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Magcargo - Earthquake - TM149
  (219, 21900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Magcargo - Stone Edge - TM150
  (219, 21900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Magcargo - Giga Impact - TM152
  (219, 21900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Magcargo - Overheat - TM157
  (219, 21900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 49),
  -- Magcargo - Hyper Beam - TM163
  (219, 21900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Magcargo - Flare Blitz - TM165
  (219, 21900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 51),
  -- Magcargo - Solar Beam - TM168
  (219, 21900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Magcargo - Tera Blast - TM171
  (219, 21900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Magcargo - Smokescreen - Egg
  (219, 21900, 108, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magcargo - Acid Armor - Egg
  (219, 21900, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magcargo - Curse - Egg
  (219, 21900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magcargo - Rollout - Egg
  (219, 21900, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Magcargo - Stockpile - Egg
  (219, 21900, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Magcargo - Memento - Egg
  (219, 21900, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Magcargo - Guard Swap - Egg
  (219, 21900, 385, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Magcargo - Inferno - Egg
  (219, 21900, 517, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Magcargo - Shell Smash - Evolution
  (219, 21900, 504, 23, NULL, 7, NULL, NULL, NULL, NULL, 62),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Mud-Slap - Level 1
  (220, 22000, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swinub - Powder Snow - Level 5
  (220, 22000, 181, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Swinub - Flail - Level 10
  (220, 22000, 175, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Swinub - Ice Shard - Level 15
  (220, 22000, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swinub - Mist - Level 20
  (220, 22000, 54, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Swinub - Endure - Level 25
  (220, 22000, 203, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Swinub - Icy Wind - Level 30
  (220, 22000, 196, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Swinub - Amnesia - Level 35
  (220, 22000, 133, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Swinub - Take Down - Level 40
  (220, 22000, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Swinub - Earthquake - Level 45
  (220, 22000, 89, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Swinub - Blizzard - Level 50
  (220, 22000, 59, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Swinub - Take Down - TM001
  (220, 22000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Swinub - Charm - TM002
  (220, 22000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Swinub - Mud-Slap - TM005
  (220, 22000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Swinub - Scary Face - TM006
  (220, 22000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Swinub - Protect - TM007
  (220, 22000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Swinub - Ice Fang - TM010
  (220, 22000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 18),
  -- Swinub - Trailblaze - TM020
  (220, 22000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Swinub - Facade - TM025
  (220, 22000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Swinub - Bulldoze - TM028
  (220, 22000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Swinub - Icy Wind - TM034
  (220, 22000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Swinub - Mud Shot - TM035
  (220, 22000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Swinub - Rock Tomb - TM036
  (220, 22000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Swinub - Avalanche - TM046
  (220, 22000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 25),
  -- Swinub - Endure - TM047
  (220, 22000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Swinub - Rain Dance - TM050
  (220, 22000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Swinub - Sandstorm - TM051
  (220, 22000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Swinub - Snowscape - TM052
  (220, 22000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Swinub - Dig - TM055
  (220, 22000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Swinub - Body Slam - TM066
  (220, 22000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Swinub - Sleep Talk - TM070
  (220, 22000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Swinub - Stomping Tantrum - TM084
  (220, 22000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Swinub - Rest - TM085
  (220, 22000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Swinub - Rock Slide - TM086
  (220, 22000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Swinub - Substitute - TM103
  (220, 22000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Swinub - Stealth Rock - TM116
  (220, 22000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Swinub - Amnesia - TM128
  (220, 22000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 38),
  -- Swinub - Earth Power - TM133
  (220, 22000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Swinub - Reversal - TM134
  (220, 22000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 40),
  -- Swinub - Ice Beam - TM135
  (220, 22000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Swinub - Blizzard - TM143
  (220, 22000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Swinub - Earthquake - TM149
  (220, 22000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Swinub - Stone Edge - TM150
  (220, 22000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Swinub - Tera Blast - TM171
  (220, 22000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Swinub - Double-Edge - Egg
  (220, 22000, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swinub - Bite - Egg
  (220, 22000, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swinub - Fissure - Egg
  (220, 22000, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swinub - Curse - Egg
  (220, 22000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swinub - Ancient Power - Egg
  (220, 22000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swinub - Icicle Crash - Egg
  (220, 22000, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swinub - Freeze-Dry - Egg
  (220, 22000, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piloswine - Tackle - Level 1
  (221, 22100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Flail - Level 1
  (221, 22100, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Mud-Slap - Level 1
  (221, 22100, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Piloswine - Ancient Power - Level 1
  (221, 22100, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Piloswine - Ice Shard - Level 15
  (221, 22100, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Piloswine - Mist - Level 20
  (221, 22100, 54, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Piloswine - Endure - Level 25
  (221, 22100, 203, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Piloswine - Icy Wind - Level 30
  (221, 22100, 196, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Piloswine - Amnesia - Level 37
  (221, 22100, 133, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Piloswine - Take Down - Level 44
  (221, 22100, 36, 23, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Piloswine - Earthquake - Level 51
  (221, 22100, 89, 23, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Piloswine - Blizzard - Level 58
  (221, 22100, 59, 23, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Piloswine - Thrash - Level 65
  (221, 22100, 37, 23, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Piloswine - Take Down - TM001
  (221, 22100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Piloswine - Charm - TM002
  (221, 22100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Piloswine - Mud-Slap - TM005
  (221, 22100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Piloswine - Scary Face - TM006
  (221, 22100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Piloswine - Protect - TM007
  (221, 22100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Piloswine - Ice Fang - TM010
  (221, 22100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 20),
  -- Piloswine - Trailblaze - TM020
  (221, 22100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Piloswine - Facade - TM025
  (221, 22100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Piloswine - Bulldoze - TM028
  (221, 22100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Piloswine - Icy Wind - TM034
  (221, 22100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Piloswine - Mud Shot - TM035
  (221, 22100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Piloswine - Rock Tomb - TM036
  (221, 22100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Piloswine - Avalanche - TM046
  (221, 22100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Piloswine - Endure - TM047
  (221, 22100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Piloswine - Rain Dance - TM050
  (221, 22100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Piloswine - Sandstorm - TM051
  (221, 22100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Piloswine - Snowscape - TM052
  (221, 22100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Piloswine - Dig - TM055
  (221, 22100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Piloswine - Body Slam - TM066
  (221, 22100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Piloswine - Sleep Talk - TM070
  (221, 22100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Piloswine - Stomping Tantrum - TM084
  (221, 22100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Piloswine - Rest - TM085
  (221, 22100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Piloswine - Rock Slide - TM086
  (221, 22100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Piloswine - Substitute - TM103
  (221, 22100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Piloswine - Stealth Rock - TM116
  (221, 22100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Piloswine - Amnesia - TM128
  (221, 22100, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 40),
  -- Piloswine - Earth Power - TM133
  (221, 22100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 41),
  -- Piloswine - Reversal - TM134
  (221, 22100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Piloswine - Ice Beam - TM135
  (221, 22100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Piloswine - Blizzard - TM143
  (221, 22100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Piloswine - Earthquake - TM149
  (221, 22100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Piloswine - Stone Edge - TM150
  (221, 22100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Piloswine - Giga Impact - TM152
  (221, 22100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Piloswine - Hyper Beam - TM163
  (221, 22100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Piloswine - Tera Blast - TM171
  (221, 22100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Piloswine - Double-Edge - Egg
  (221, 22100, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Piloswine - Bite - Egg
  (221, 22100, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piloswine - Fissure - Egg
  (221, 22100, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piloswine - Curse - Egg
  (221, 22100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Piloswine - Ancient Power - Egg
  (221, 22100, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Piloswine - Icicle Crash - Egg
  (221, 22100, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Piloswine - Freeze-Dry - Egg
  (221, 22100, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Piloswine - Ice Fang - Evolution
  (221, 22100, 423, 23, NULL, 7, NULL, NULL, NULL, NULL, 57),
  -- Delibird - Present - Level 1
  (225, 22500, 217, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Drill Peck - Level 25
  (225, 22500, 65, 23, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Delibird - Take Down - TM001
  (225, 22500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 3),
  -- Delibird - Agility - TM004
  (225, 22500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 4),
  -- Delibird - Protect - TM007
  (225, 22500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 5),
  -- Delibird - Water Pulse - TM011
  (225, 22500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 6),
  -- Delibird - Acrobatics - TM014
  (225, 22500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 7),
  -- Delibird - Thief - TM018
  (225, 22500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 8),
  -- Delibird - Trailblaze - TM020
  (225, 22500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 9),
  -- Delibird - Chilling Water - TM022
  (225, 22500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 10),
  -- Delibird - Facade - TM025
  (225, 22500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 11),
  -- Delibird - Aerial Ace - TM027
  (225, 22500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 12),
  -- Delibird - Swift - TM032
  (225, 22500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 13),
  -- Delibird - Icy Wind - TM034
  (225, 22500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 14),
  -- Delibird - Air Cutter - TM040
  (225, 22500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 15),
  -- Delibird - Fling - TM043
  (225, 22500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 16),
  -- Delibird - Avalanche - TM046
  (225, 22500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 17),
  -- Delibird - Endure - TM047
  (225, 22500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Delibird - Rain Dance - TM050
  (225, 22500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 19),
  -- Delibird - Snowscape - TM052
  (225, 22500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 20),
  -- Delibird - Brick Break - TM058
  (225, 22500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 21),
  -- Delibird - Foul Play - TM062
  (225, 22500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 22),
  -- Delibird - Air Slash - TM065
  (225, 22500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 23),
  -- Delibird - Body Slam - TM066
  (225, 22500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Delibird - Ice Punch - TM069
  (225, 22500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 25),
  -- Delibird - Sleep Talk - TM070
  (225, 22500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Delibird - Seed Bomb - TM071
  (225, 22500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Delibird - Rest - TM085
  (225, 22500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Delibird - Spikes - TM090
  (225, 22500, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 29),
  -- Delibird - Fly - TM097
  (225, 22500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 30),
  -- Delibird - Gunk Shot - TM102
  (225, 22500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 31),
  -- Delibird - Substitute - TM103
  (225, 22500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Delibird - Drill Run - TM106
  (225, 22500, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 33),
  -- Delibird - Tailwind - TM113
  (225, 22500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 34),
  -- Delibird - Ice Spinner - TM124
  (225, 22500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 35),
  -- Delibird - Helping Hand - TM130
  (225, 22500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Delibird - Baton Pass - TM132
  (225, 22500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 37),
  -- Delibird - Reversal - TM134
  (225, 22500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 38),
  -- Delibird - Ice Beam - TM135
  (225, 22500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Delibird - Blizzard - TM143
  (225, 22500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Delibird - Giga Impact - TM152
  (225, 22500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Delibird - Hyper Beam - TM163
  (225, 22500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Delibird - Brave Bird - TM164
  (225, 22500, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 43),
  -- Delibird - Tera Blast - TM171
  (225, 22500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Delibird - Aurora Beam - Egg
  (225, 22500, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Delibird - Counter - Egg
  (225, 22500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Delibird - Quick Attack - Egg
  (225, 22500, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Delibird - Splash - Egg
  (225, 22500, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Delibird - Destiny Bond - Egg
  (225, 22500, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Delibird - Rapid Spin - Egg
  (225, 22500, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Delibird - Fake Out - Egg
  (225, 22500, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Delibird - Memento - Egg
  (225, 22500, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Delibird - Ice Shard - Egg
  (225, 22500, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Delibird - Freeze-Dry - Egg
  (225, 22500, 573, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Delibird - Aurora Veil - Egg
  (225, 22500, 694, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 4
  (227, 22700, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Skarmory - Fury Attack - Level 8
  (227, 22700, 31, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Skarmory - Metal Claw - Level 12
  (227, 22700, 232, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skarmory - Agility - Level 16
  (227, 22700, 97, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Skarmory - Wing Attack - Level 20
  (227, 22700, 17, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Skarmory - Slash - Level 24
  (227, 22700, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Skarmory - Steel Wing - Level 28
  (227, 22700, 211, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Skarmory - Payback - Level 32
  (227, 22700, 371, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Skarmory - Drill Peck - Level 36
  (227, 22700, 65, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Skarmory - Metal Sound - Level 40
  (227, 22700, 319, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Skarmory - Spikes - Level 44
  (227, 22700, 191, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Skarmory - Iron Defense - Level 48
  (227, 22700, 334, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Skarmory - Brave Bird - Level 52
  (227, 22700, 413, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Skarmory - Take Down - TM001
  (227, 22700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Skarmory - Agility - TM004
  (227, 22700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Skarmory - Protect - TM007
  (227, 22700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Skarmory - Thief - TM018
  (227, 22700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Skarmory - Facade - TM025
  (227, 22700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Skarmory - Aerial Ace - TM027
  (227, 22700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Skarmory - Metal Claw - TM031
  (227, 22700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Skarmory - Swift - TM032
  (227, 22700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Skarmory - Icy Wind - TM034
  (227, 22700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Skarmory - Rock Tomb - TM036
  (227, 22700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Skarmory - Air Cutter - TM040
  (227, 22700, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Skarmory - Endure - TM047
  (227, 22700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Skarmory - Sunny Day - TM049
  (227, 22700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Skarmory - Sandstorm - TM051
  (227, 22700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Skarmory - Air Slash - TM065
  (227, 22700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Skarmory - Sleep Talk - TM070
  (227, 22700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Skarmory - Rest - TM085
  (227, 22700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Skarmory - Rock Slide - TM086
  (227, 22700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Skarmory - Taunt - TM087
  (227, 22700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Skarmory - Swords Dance - TM088
  (227, 22700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 35),
  -- Skarmory - Body Press - TM089
  (227, 22700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Skarmory - Spikes - TM090
  (227, 22700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 37),
  -- Skarmory - Flash Cannon - TM093
  (227, 22700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 38),
  -- Skarmory - Dark Pulse - TM094
  (227, 22700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Skarmory - Fly - TM097
  (227, 22700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 40),
  -- Skarmory - Iron Head - TM099
  (227, 22700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Skarmory - Substitute - TM103
  (227, 22700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Skarmory - Iron Defense - TM104
  (227, 22700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Skarmory - X-Scissor - TM105
  (227, 22700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 44),
  -- Skarmory - Drill Run - TM106
  (227, 22700, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 45),
  -- Skarmory - Tailwind - TM113
  (227, 22700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 46),
  -- Skarmory - Stealth Rock - TM116
  (227, 22700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Skarmory - Reversal - TM134
  (227, 22700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Skarmory - Giga Impact - TM152
  (227, 22700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Skarmory - Hurricane - TM160
  (227, 22700, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 50),
  -- Skarmory - Hyper Beam - TM163
  (227, 22700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Skarmory - Brave Bird - TM164
  (227, 22700, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 52),
  -- Skarmory - Steel Beam - TM170
  (227, 22700, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 53),
  -- Skarmory - Tera Blast - TM171
  (227, 22700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Skarmory - Whirlwind - Egg
  (227, 22700, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Sky Attack - Egg
  (227, 22700, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skarmory - Curse - Egg
  (227, 22700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skarmory - Air Cutter - Egg
  (227, 22700, 314, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skarmory - Roost - Egg
  (227, 22700, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skarmory - Feint - Egg
  (227, 22700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skarmory - Night Slash - Egg
  (227, 22700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Houndour - Leer - Level 1
  (228, 22800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Howl - Level 4
  (228, 22800, 336, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 8
  (228, 22800, 123, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Houndour - Roar - Level 13
  (228, 22800, 46, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Houndour - Bite - Level 16
  (228, 22800, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Houndour - Incinerate - Level 20
  (228, 22800, 510, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Houndour - Beat Up - Level 25
  (228, 22800, 251, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Houndour - Fire Fang - Level 28
  (228, 22800, 424, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Houndour - Torment - Level 32
  (228, 22800, 259, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Houndour - Comeuppance - Level 37
  (228, 22800, 894, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Houndour - Foul Play - Level 40
  (228, 22800, 492, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Houndour - Flamethrower - Level 44
  (228, 22800, 53, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Houndour - Crunch - Level 49
  (228, 22800, 242, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Houndour - Nasty Plot - Level 52
  (228, 22800, 417, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Houndour - Inferno - Level 56
  (228, 22800, 517, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Houndour - Take Down - TM001
  (228, 22800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Houndour - Mud-Slap - TM005
  (228, 22800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Houndour - Scary Face - TM006
  (228, 22800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Houndour - Protect - TM007
  (228, 22800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Houndour - Fire Fang - TM008
  (228, 22800, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Houndour - Thunder Fang - TM009
  (228, 22800, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Houndour - Thief - TM018
  (228, 22800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Houndour - Trailblaze - TM020
  (228, 22800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Houndour - Fire Spin - TM024
  (228, 22800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 25),
  -- Houndour - Facade - TM025
  (228, 22800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Houndour - Snarl - TM030
  (228, 22800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Houndour - Mud Shot - TM035
  (228, 22800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Houndour - Flame Charge - TM038
  (228, 22800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Houndour - Endure - TM047
  (228, 22800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Houndour - Sunny Day - TM049
  (228, 22800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Houndour - Rain Dance - TM050
  (228, 22800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Houndour - Foul Play - TM062
  (228, 22800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Houndour - Psychic Fangs - TM063
  (228, 22800, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 34),
  -- Houndour - Body Slam - TM066
  (228, 22800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Houndour - Sleep Talk - TM070
  (228, 22800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Houndour - Rest - TM085
  (228, 22800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Houndour - Taunt - TM087
  (228, 22800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Houndour - Dark Pulse - TM094
  (228, 22800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Houndour - Substitute - TM103
  (228, 22800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Houndour - Will-O-Wisp - TM107
  (228, 22800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Houndour - Crunch - TM108
  (228, 22800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Houndour - Shadow Ball - TM114
  (228, 22800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Houndour - Hyper Voice - TM117
  (228, 22800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Houndour - Heat Wave - TM118
  (228, 22800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Houndour - Flamethrower - TM125
  (228, 22800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Houndour - Helping Hand - TM130
  (228, 22800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Houndour - Reversal - TM134
  (228, 22800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Houndour - Nasty Plot - TM140
  (228, 22800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Houndour - Fire Blast - TM141
  (228, 22800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Houndour - Sludge Bomb - TM148
  (228, 22800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Houndour - Overheat - TM157
  (228, 22800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 52),
  -- Houndour - Flare Blitz - TM165
  (228, 22800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Houndour - Solar Beam - TM168
  (228, 22800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Houndour - Tera Blast - TM171
  (228, 22800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Houndour - Counter - Egg
  (228, 22800, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndour - Fire Spin - Egg
  (228, 22800, 83, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndour - Reversal - Egg
  (228, 22800, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Houndour - Spite - Egg
  (228, 22800, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndour - Destiny Bond - Egg
  (228, 22800, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Houndour - Feint - Egg
  (228, 22800, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Houndour - Sucker Punch - Egg
  (228, 22800, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Houndour - Thunder Fang - Egg
  (228, 22800, 422, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Smog - Level 1
  (229, 22900, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndoom - Howl - Level 1
  (229, 22900, 336, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Houndoom - Nasty Plot - Level 1
  (229, 22900, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Houndoom - Thunder Fang - Level 1
  (229, 22900, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Houndoom - Roar - Level 13
  (229, 22900, 46, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Houndoom - Bite - Level 16
  (229, 22900, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Houndoom - Incinerate - Level 20
  (229, 22900, 510, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Houndoom - Beat Up - Level 26
  (229, 22900, 251, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Houndoom - Fire Fang - Level 30
  (229, 22900, 424, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Houndoom - Torment - Level 35
  (229, 22900, 259, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Houndoom - Comeuppance - Level 41
  (229, 22900, 894, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Houndoom - Foul Play - Level 45
  (229, 22900, 492, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Houndoom - Flamethrower - Level 50
  (229, 22900, 53, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Houndoom - Crunch - Level 56
  (229, 22900, 242, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Houndoom - Inferno - Level 62
  (229, 22900, 517, 23, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Houndoom - Take Down - TM001
  (229, 22900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Houndoom - Mud-Slap - TM005
  (229, 22900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Houndoom - Scary Face - TM006
  (229, 22900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Houndoom - Protect - TM007
  (229, 22900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Houndoom - Fire Fang - TM008
  (229, 22900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Houndoom - Thunder Fang - TM009
  (229, 22900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Houndoom - Thief - TM018
  (229, 22900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Houndoom - Trailblaze - TM020
  (229, 22900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Houndoom - Fire Spin - TM024
  (229, 22900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 26),
  -- Houndoom - Facade - TM025
  (229, 22900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Houndoom - Snarl - TM030
  (229, 22900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Houndoom - Mud Shot - TM035
  (229, 22900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Houndoom - Flame Charge - TM038
  (229, 22900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 30),
  -- Houndoom - Endure - TM047
  (229, 22900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Houndoom - Sunny Day - TM049
  (229, 22900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Houndoom - Rain Dance - TM050
  (229, 22900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Houndoom - Foul Play - TM062
  (229, 22900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Houndoom - Psychic Fangs - TM063
  (229, 22900, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 35),
  -- Houndoom - Body Slam - TM066
  (229, 22900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Houndoom - Sleep Talk - TM070
  (229, 22900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Houndoom - Rest - TM085
  (229, 22900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Houndoom - Taunt - TM087
  (229, 22900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Houndoom - Dark Pulse - TM094
  (229, 22900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Houndoom - Substitute - TM103
  (229, 22900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Houndoom - Will-O-Wisp - TM107
  (229, 22900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Houndoom - Crunch - TM108
  (229, 22900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Houndoom - Shadow Ball - TM114
  (229, 22900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Houndoom - Hyper Voice - TM117
  (229, 22900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 45),
  -- Houndoom - Heat Wave - TM118
  (229, 22900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 46),
  -- Houndoom - Flamethrower - TM125
  (229, 22900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Houndoom - Helping Hand - TM130
  (229, 22900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Houndoom - Reversal - TM134
  (229, 22900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Houndoom - Nasty Plot - TM140
  (229, 22900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Houndoom - Fire Blast - TM141
  (229, 22900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 51),
  -- Houndoom - Sludge Bomb - TM148
  (229, 22900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 52),
  -- Houndoom - Giga Impact - TM152
  (229, 22900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Houndoom - Overheat - TM157
  (229, 22900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 54),
  -- Houndoom - Hyper Beam - TM163
  (229, 22900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Houndoom - Flare Blitz - TM165
  (229, 22900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 56),
  -- Houndoom - Solar Beam - TM168
  (229, 22900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 57),
  -- Houndoom - Tera Blast - TM171
  (229, 22900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Houndoom - Counter - Egg
  (229, 22900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndoom - Fire Spin - Egg
  (229, 22900, 83, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Houndoom - Reversal - Egg
  (229, 22900, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Houndoom - Spite - Egg
  (229, 22900, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Houndoom - Destiny Bond - Egg
  (229, 22900, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Houndoom - Feint - Egg
  (229, 22900, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Houndoom - Sucker Punch - Egg
  (229, 22900, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Houndoom - Thunder Fang - Egg
  (229, 22900, 422, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Twister - Level 1
  (230, 23000, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Whirlpool - Level 1
  (230, 23000, 250, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingdra - Yawn - Level 1
  (230, 23000, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kingdra - Focus Energy - Level 15
  (230, 23000, 116, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kingdra - Dragon Breath - Level 20
  (230, 23000, 225, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Kingdra - Bubble Beam - Level 25
  (230, 23000, 61, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Kingdra - Agility - Level 30
  (230, 23000, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Kingdra - Water Pulse - Level 37
  (230, 23000, 352, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Kingdra - Dragon Pulse - Level 44
  (230, 23000, 406, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Kingdra - Hydro Pump - Level 51
  (230, 23000, 56, 23, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Kingdra - Dragon Dance - Level 58
  (230, 23000, 349, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Kingdra - Rain Dance - Level 65
  (230, 23000, 240, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Kingdra - Wave Crash - Level 72
  (230, 23000, 834, 23, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Kingdra - Take Down - TM001
  (230, 23000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Kingdra - Agility - TM004
  (230, 23000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Kingdra - Scary Face - TM006
  (230, 23000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Kingdra - Protect - TM007
  (230, 23000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Kingdra - Water Pulse - TM011
  (230, 23000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Kingdra - Chilling Water - TM022
  (230, 23000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Kingdra - Facade - TM025
  (230, 23000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Kingdra - Swift - TM032
  (230, 23000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Kingdra - Icy Wind - TM034
  (230, 23000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Kingdra - Endure - TM047
  (230, 23000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Kingdra - Rain Dance - TM050
  (230, 23000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Kingdra - Snowscape - TM052
  (230, 23000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Kingdra - Body Slam - TM066
  (230, 23000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Kingdra - Sleep Talk - TM070
  (230, 23000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Kingdra - Waterfall - TM077
  (230, 23000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 31),
  -- Kingdra - Rest - TM085
  (230, 23000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Kingdra - Flash Cannon - TM093
  (230, 23000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Kingdra - Iron Head - TM099
  (230, 23000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Kingdra - Dragon Dance - TM100
  (230, 23000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 35),
  -- Kingdra - Substitute - TM103
  (230, 23000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Kingdra - Liquidation - TM110
  (230, 23000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Kingdra - Dragon Pulse - TM115
  (230, 23000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 38),
  -- Kingdra - Surf - TM123
  (230, 23000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Kingdra - Ice Beam - TM135
  (230, 23000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Kingdra - Hydro Pump - TM142
  (230, 23000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 41),
  -- Kingdra - Blizzard - TM143
  (230, 23000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Kingdra - Giga Impact - TM152
  (230, 23000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Kingdra - Outrage - TM156
  (230, 23000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 44),
  -- Kingdra - Hurricane - TM160
  (230, 23000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 45),
  -- Kingdra - Hyper Beam - TM163
  (230, 23000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Kingdra - Draco Meteor - TM169
  (230, 23000, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 47),
  -- Kingdra - Tera Blast - TM171
  (230, 23000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Kingdra - Disable - Egg
  (230, 23000, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kingdra - Aurora Beam - Egg
  (230, 23000, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kingdra - Splash - Egg
  (230, 23000, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kingdra - Flail - Egg
  (230, 23000, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kingdra - Clear Smog - Egg
  (230, 23000, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Phanpy - Tackle - Level 1
  (231, 23100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phanpy - Growl - Level 1
  (231, 23100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phanpy - Defense Curl - Level 1
  (231, 23100, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Phanpy - Flail - Level 6
  (231, 23100, 175, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Phanpy - Rollout - Level 10
  (231, 23100, 205, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Phanpy - Bulldoze - Level 15
  (231, 23100, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Phanpy - Endure - Level 19
  (231, 23100, 203, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Phanpy - Slam - Level 24
  (231, 23100, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Phanpy - Take Down - Level 28
  (231, 23100, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Phanpy - Charm - Level 33
  (231, 23100, 204, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Phanpy - Last Resort - Level 37
  (231, 23100, 387, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Phanpy - Double-Edge - Level 42
  (231, 23100, 38, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Phanpy - Take Down - TM001
  (231, 23100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Phanpy - Charm - TM002
  (231, 23100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Phanpy - Mud-Slap - TM005
  (231, 23100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Phanpy - Protect - TM007
  (231, 23100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Phanpy - Thief - TM018
  (231, 23100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Phanpy - Trailblaze - TM020
  (231, 23100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Phanpy - Facade - TM025
  (231, 23100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Phanpy - Bulldoze - TM028
  (231, 23100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Phanpy - Mud Shot - TM035
  (231, 23100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Phanpy - Rock Tomb - TM036
  (231, 23100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Phanpy - Endure - TM047
  (231, 23100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Phanpy - Sunny Day - TM049
  (231, 23100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Phanpy - Rain Dance - TM050
  (231, 23100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Phanpy - Sandstorm - TM051
  (231, 23100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Phanpy - Dig - TM055
  (231, 23100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Phanpy - Body Slam - TM066
  (231, 23100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Phanpy - Sleep Talk - TM070
  (231, 23100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Phanpy - Seed Bomb - TM071
  (231, 23100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Phanpy - Stomping Tantrum - TM084
  (231, 23100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 31),
  -- Phanpy - Rest - TM085
  (231, 23100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Phanpy - Rock Slide - TM086
  (231, 23100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Phanpy - Iron Head - TM099
  (231, 23100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Phanpy - Gunk Shot - TM102
  (231, 23100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 35),
  -- Phanpy - Substitute - TM103
  (231, 23100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Phanpy - Stealth Rock - TM116
  (231, 23100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Phanpy - Hyper Voice - TM117
  (231, 23100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 38),
  -- Phanpy - Heavy Slam - TM121
  (231, 23100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Phanpy - Encore - TM122
  (231, 23100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 40),
  -- Phanpy - Play Rough - TM127
  (231, 23100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 41),
  -- Phanpy - Helping Hand - TM130
  (231, 23100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Phanpy - Earth Power - TM133
  (231, 23100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Phanpy - Earthquake - TM149
  (231, 23100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 44),
  -- Phanpy - Stone Edge - TM150
  (231, 23100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 45),
  -- Phanpy - Tera Blast - TM171
  (231, 23100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Phanpy - Body Slam - Egg
  (231, 23100, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Phanpy - Counter - Egg
  (231, 23100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Phanpy - Fissure - Egg
  (231, 23100, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Phanpy - Focus Energy - Egg
  (231, 23100, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Phanpy - Snore - Egg
  (231, 23100, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Phanpy - Ancient Power - Egg
  (231, 23100, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Phanpy - Endeavor - Egg
  (231, 23100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Phanpy - Ice Shard - Egg
  (231, 23100, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Phanpy - Head Smash - Egg
  (231, 23100, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Phanpy - Heavy Slam - Egg
  (231, 23100, 484, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Phanpy - Play Rough - Egg
  (231, 23100, 583, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Phanpy - High Horsepower - Egg
  (231, 23100, 667, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Donphan - Horn Attack - Level 1
  (232, 23200, 30, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Donphan - Growl - Level 1
  (232, 23200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Donphan - Defense Curl - Level 1
  (232, 23200, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Donphan - Thunder Fang - Level 1
  (232, 23200, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Donphan - Fire Fang - Level 1
  (232, 23200, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Donphan - Bulldoze - Level 1
  (232, 23200, 523, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Donphan - Rapid Spin - Level 6
  (232, 23200, 229, 23, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Donphan - Rollout - Level 10
  (232, 23200, 205, 23, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Donphan - Assurance - Level 15
  (232, 23200, 372, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Donphan - Knock Off - Level 19
  (232, 23200, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Donphan - Slam - Level 24
  (232, 23200, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Donphan - Stomping Tantrum - Level 30
  (232, 23200, 707, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Donphan - Scary Face - Level 37
  (232, 23200, 184, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Donphan - Earthquake - Level 43
  (232, 23200, 89, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Donphan - Giga Impact - Level 50
  (232, 23200, 416, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Donphan - Take Down - TM001
  (232, 23200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Donphan - Charm - TM002
  (232, 23200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Donphan - Mud-Slap - TM005
  (232, 23200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Donphan - Scary Face - TM006
  (232, 23200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Donphan - Protect - TM007
  (232, 23200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Donphan - Fire Fang - TM008
  (232, 23200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Donphan - Thunder Fang - TM009
  (232, 23200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Donphan - Ice Fang - TM010
  (232, 23200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Donphan - Thief - TM018
  (232, 23200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Donphan - Trailblaze - TM020
  (232, 23200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Donphan - Facade - TM025
  (232, 23200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Donphan - Bulldoze - TM028
  (232, 23200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Donphan - Mud Shot - TM035
  (232, 23200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Donphan - Rock Tomb - TM036
  (232, 23200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Donphan - Endure - TM047
  (232, 23200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Donphan - Sunny Day - TM049
  (232, 23200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Donphan - Rain Dance - TM050
  (232, 23200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Donphan - Sandstorm - TM051
  (232, 23200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Donphan - Smart Strike - TM053
  (232, 23200, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 34),
  -- Donphan - Dig - TM055
  (232, 23200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Donphan - Body Slam - TM066
  (232, 23200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Donphan - Sleep Talk - TM070
  (232, 23200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Donphan - Seed Bomb - TM071
  (232, 23200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Donphan - Poison Jab - TM083
  (232, 23200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Donphan - Stomping Tantrum - TM084
  (232, 23200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Donphan - Rest - TM085
  (232, 23200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Donphan - Rock Slide - TM086
  (232, 23200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Donphan - Body Press - TM089
  (232, 23200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Donphan - Iron Head - TM099
  (232, 23200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Donphan - Gunk Shot - TM102
  (232, 23200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 45),
  -- Donphan - Substitute - TM103
  (232, 23200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Donphan - Iron Defense - TM104
  (232, 23200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 47),
  -- Donphan - Stealth Rock - TM116
  (232, 23200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 48),
  -- Donphan - Hyper Voice - TM117
  (232, 23200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Donphan - Heavy Slam - TM121
  (232, 23200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 50),
  -- Donphan - Encore - TM122
  (232, 23200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 51),
  -- Donphan - Ice Spinner - TM124
  (232, 23200, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 52),
  -- Donphan - Play Rough - TM127
  (232, 23200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 53),
  -- Donphan - Helping Hand - TM130
  (232, 23200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Donphan - Earth Power - TM133
  (232, 23200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 55),
  -- Donphan - Earthquake - TM149
  (232, 23200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Donphan - Stone Edge - TM150
  (232, 23200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Donphan - Giga Impact - TM152
  (232, 23200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Donphan - Hyper Beam - TM163
  (232, 23200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Donphan - Tera Blast - TM171
  (232, 23200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Donphan - Body Slam - Egg
  (232, 23200, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Donphan - Counter - Egg
  (232, 23200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Donphan - Fissure - Egg
  (232, 23200, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Donphan - Focus Energy - Egg
  (232, 23200, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Donphan - Snore - Egg
  (232, 23200, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Donphan - Ancient Power - Egg
  (232, 23200, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Donphan - Endeavor - Egg
  (232, 23200, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Donphan - Ice Shard - Egg
  (232, 23200, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Donphan - Head Smash - Egg
  (232, 23200, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Donphan - Heavy Slam - Egg
  (232, 23200, 484, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Donphan - Play Rough - Egg
  (232, 23200, 583, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Donphan - High Horsepower - Egg
  (232, 23200, 667, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Donphan - Fury Attack - Evolution
  (232, 23200, 31, 23, NULL, 7, NULL, NULL, NULL, NULL, 73),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Defense Curl - Level 1
  (233, 23300, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Recycle - Level 1
  (233, 23300, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon2 - Magnet Rise - Level 1
  (233, 23300, 393, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon2 - Thunder Shock - Level 15
  (233, 23300, 84, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Porygon2 - Psybeam - Level 20
  (233, 23300, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Porygon2 - Conversion 2 - Level 25
  (233, 23300, 176, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Porygon2 - Agility - Level 30
  (233, 23300, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Porygon2 - Recover - Level 35
  (233, 23300, 105, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon2 - Tri Attack - Level 45
  (233, 23300, 161, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon2 - Lock-On - Level 50
  (233, 23300, 199, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon2 - Zap Cannon - Level 55
  (233, 23300, 192, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Porygon2 - Hyper Beam - Level 60
  (233, 23300, 63, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Porygon2 - Take Down - TM001
  (233, 23300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Porygon2 - Agility - TM004
  (233, 23300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Porygon2 - Protect - TM007
  (233, 23300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Porygon2 - Psybeam - TM016
  (233, 23300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Porygon2 - Thief - TM018
  (233, 23300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Porygon2 - Charge Beam - TM023
  (233, 23300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Porygon2 - Facade - TM025
  (233, 23300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Porygon2 - Swift - TM032
  (233, 23300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Porygon2 - Icy Wind - TM034
  (233, 23300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Porygon2 - Endure - TM047
  (233, 23300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Porygon2 - Sunny Day - TM049
  (233, 23300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Porygon2 - Rain Dance - TM050
  (233, 23300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Porygon2 - Psyshock - TM054
  (233, 23300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Porygon2 - Zen Headbutt - TM059
  (233, 23300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Porygon2 - Foul Play - TM062
  (233, 23300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Porygon2 - Sleep Talk - TM070
  (233, 23300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Porygon2 - Thunder Wave - TM082
  (233, 23300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Porygon2 - Rest - TM085
  (233, 23300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Porygon2 - Eerie Impulse - TM096
  (233, 23300, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 34),
  -- Porygon2 - Substitute - TM103
  (233, 23300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Porygon2 - Trick - TM109
  (233, 23300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 36),
  -- Porygon2 - Shadow Ball - TM114
  (233, 23300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 37),
  -- Porygon2 - Psychic - TM120
  (233, 23300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Porygon2 - Thunderbolt - TM126
  (233, 23300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 39),
  -- Porygon2 - Ice Beam - TM135
  (233, 23300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Porygon2 - Blizzard - TM143
  (233, 23300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Porygon2 - Giga Impact - TM152
  (233, 23300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Porygon2 - Trick Room - TM161
  (233, 23300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Porygon2 - Hyper Beam - TM163
  (233, 23300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Porygon2 - Thunder - TM166
  (233, 23300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Porygon2 - Solar Beam - TM168
  (233, 23300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 46),
  -- Porygon2 - Tera Blast - TM171
  (233, 23300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Leer - Level 3
  (234, 23400, 43, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Stantler - Astonish - Level 7
  (234, 23400, 310, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Stantler - Hypnosis - Level 10
  (234, 23400, 95, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Stantler - Stomp - Level 13
  (234, 23400, 23, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Stantler - Sand Attack - Level 16
  (234, 23400, 28, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Stantler - Take Down - Level 21
  (234, 23400, 36, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Stantler - Confuse Ray - Level 23
  (234, 23400, 109, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Stantler - Calm Mind - Level 27
  (234, 23400, 347, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stantler - Role Play - Level 32
  (234, 23400, 272, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Stantler - Zen Headbutt - Level 37
  (234, 23400, 428, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Stantler - Imprison - Level 49
  (234, 23400, 286, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Stantler - Double-Edge - Level 55
  (234, 23400, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Stantler - Take Down - TM001
  (234, 23400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Stantler - Agility - TM004
  (234, 23400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Stantler - Scary Face - TM006
  (234, 23400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Stantler - Protect - TM007
  (234, 23400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Stantler - Psybeam - TM016
  (234, 23400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Stantler - Confuse Ray - TM017
  (234, 23400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Stantler - Thief - TM018
  (234, 23400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Stantler - Trailblaze - TM020
  (234, 23400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Stantler - Charge Beam - TM023
  (234, 23400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Stantler - Facade - TM025
  (234, 23400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Stantler - Bulldoze - TM028
  (234, 23400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Stantler - Swift - TM032
  (234, 23400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Stantler - Stored Power - TM041
  (234, 23400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Stantler - Endure - TM047
  (234, 23400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Stantler - Sunny Day - TM049
  (234, 23400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Stantler - Rain Dance - TM050
  (234, 23400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Stantler - Psyshock - TM054
  (234, 23400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Stantler - Dig - TM055
  (234, 23400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Stantler - Zen Headbutt - TM059
  (234, 23400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Stantler - Body Slam - TM066
  (234, 23400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Stantler - Sleep Talk - TM070
  (234, 23400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Stantler - Reflect - TM074
  (234, 23400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Stantler - Light Screen - TM075
  (234, 23400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Stantler - Thunder Wave - TM082
  (234, 23400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Stantler - Rest - TM085
  (234, 23400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Stantler - Imprison - TM092
  (234, 23400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 39),
  -- Stantler - Skill Swap - TM098
  (234, 23400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Stantler - Substitute - TM103
  (234, 23400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Stantler - Trick - TM109
  (234, 23400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Stantler - Shadow Ball - TM114
  (234, 23400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Stantler - Energy Ball - TM119
  (234, 23400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Stantler - Psychic - TM120
  (234, 23400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Stantler - Thunderbolt - TM126
  (234, 23400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Stantler - Calm Mind - TM129
  (234, 23400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Stantler - Helping Hand - TM130
  (234, 23400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Stantler - Earth Power - TM133
  (234, 23400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 49),
  -- Stantler - Wild Charge - TM147
  (234, 23400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 50),
  -- Stantler - Earthquake - TM149
  (234, 23400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Stantler - Giga Impact - TM152
  (234, 23400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Stantler - Trick Room - TM161
  (234, 23400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 53),
  -- Stantler - Hyper Beam - TM163
  (234, 23400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Stantler - Thunder - TM166
  (234, 23400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Stantler - Solar Beam - TM168
  (234, 23400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Stantler - Tera Blast - TM171
  (234, 23400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Stantler - Double Kick - Egg
  (234, 23400, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stantler - Thrash - Egg
  (234, 23400, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stantler - Bite - Egg
  (234, 23400, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stantler - Disable - Egg
  (234, 23400, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stantler - Spite - Egg
  (234, 23400, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Stantler - Megahorn - Egg
  (234, 23400, 224, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Stantler - Extrasensory - Egg
  (234, 23400, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Stantler - Psyshield Bash - Egg
  (234, 23400, 828, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Smeargle - Sketch - Level 1
  (235, 23500, 166, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Focus Energy - Level 1
  (236, 23600, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrogue - Fake Out - Level 1
  (236, 23600, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrogue - Helping Hand - Level 1
  (236, 23600, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyrogue - Take Down - TM001
  (236, 23600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Tyrogue - Protect - TM007
  (236, 23600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 6),
  -- Tyrogue - Low Kick - TM012
  (236, 23600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 7),
  -- Tyrogue - Thief - TM018
  (236, 23600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 8),
  -- Tyrogue - Facade - TM025
  (236, 23600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 9),
  -- Tyrogue - Bulldoze - TM028
  (236, 23600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 10),
  -- Tyrogue - Swift - TM032
  (236, 23600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 11),
  -- Tyrogue - Low Sweep - TM039
  (236, 23600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 12),
  -- Tyrogue - Endure - TM047
  (236, 23600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 13),
  -- Tyrogue - Sunny Day - TM049
  (236, 23600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 14),
  -- Tyrogue - Rain Dance - TM050
  (236, 23600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 15),
  -- Tyrogue - Brick Break - TM058
  (236, 23600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 16),
  -- Tyrogue - Bulk Up - TM064
  (236, 23600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 17),
  -- Tyrogue - Body Slam - TM066
  (236, 23600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 18),
  -- Tyrogue - Sleep Talk - TM070
  (236, 23600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 19),
  -- Tyrogue - Rest - TM085
  (236, 23600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 20),
  -- Tyrogue - Rock Slide - TM086
  (236, 23600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 21),
  -- Tyrogue - Substitute - TM103
  (236, 23600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 22),
  -- Tyrogue - Helping Hand - TM130
  (236, 23600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 23),
  -- Tyrogue - Tera Blast - TM171
  (236, 23600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 24),
  -- Tyrogue - Counter - Egg
  (236, 23600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Tyrogue - High Jump Kick - Egg
  (236, 23600, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Tyrogue - Mach Punch - Egg
  (236, 23600, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Tyrogue - Rapid Spin - Egg
  (236, 23600, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Tyrogue - Feint - Egg
  (236, 23600, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Tyrogue - Vacuum Wave - Egg
  (236, 23600, 410, 23, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Tyrogue - Bullet Punch - Egg
  (236, 23600, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Hitmontop - Tackle - Level 1
  (237, 23700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Focus Energy - Level 1
  (237, 23700, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmontop - Fake Out - Level 1
  (237, 23700, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmontop - Helping Hand - Level 1
  (237, 23700, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmontop - Feint - Level 1
  (237, 23700, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmontop - Quick Attack - Level 4
  (237, 23700, 98, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Hitmontop - Gyro Ball - Level 8
  (237, 23700, 360, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Hitmontop - Detect - Level 12
  (237, 23700, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Hitmontop - Rapid Spin - Level 16
  (237, 23700, 229, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Hitmontop - Wide Guard - Level 21
  (237, 23700, 469, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Hitmontop - Quick Guard - Level 21
  (237, 23700, 501, 23, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Hitmontop - Sucker Punch - Level 24
  (237, 23700, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Hitmontop - Agility - Level 28
  (237, 23700, 97, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Hitmontop - Dig - Level 32
  (237, 23700, 91, 23, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Hitmontop - Close Combat - Level 36
  (237, 23700, 370, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Hitmontop - Counter - Level 40
  (237, 23700, 68, 23, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Hitmontop - Endeavor - Level 44
  (237, 23700, 283, 23, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Hitmontop - Take Down - TM001
  (237, 23700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Hitmontop - Agility - TM004
  (237, 23700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Hitmontop - Protect - TM007
  (237, 23700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Hitmontop - Low Kick - TM012
  (237, 23700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Hitmontop - Thief - TM018
  (237, 23700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Hitmontop - Facade - TM025
  (237, 23700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Hitmontop - Aerial Ace - TM027
  (237, 23700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Hitmontop - Bulldoze - TM028
  (237, 23700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Hitmontop - Swift - TM032
  (237, 23700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Hitmontop - Low Sweep - TM039
  (237, 23700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Hitmontop - Endure - TM047
  (237, 23700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Hitmontop - Sunny Day - TM049
  (237, 23700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Hitmontop - Rain Dance - TM050
  (237, 23700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Hitmontop - Sandstorm - TM051
  (237, 23700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Hitmontop - Dig - TM055
  (237, 23700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Hitmontop - Brick Break - TM058
  (237, 23700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Hitmontop - Bulk Up - TM064
  (237, 23700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Hitmontop - Body Slam - TM066
  (237, 23700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Hitmontop - Sleep Talk - TM070
  (237, 23700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Hitmontop - Rest - TM085
  (237, 23700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Hitmontop - Rock Slide - TM086
  (237, 23700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Hitmontop - Substitute - TM103
  (237, 23700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Hitmontop - Drill Run - TM106
  (237, 23700, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 40),
  -- Hitmontop - Ice Spinner - TM124
  (237, 23700, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 41),
  -- Hitmontop - Helping Hand - TM130
  (237, 23700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Hitmontop - Baton Pass - TM132
  (237, 23700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 43),
  -- Hitmontop - Reversal - TM134
  (237, 23700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Hitmontop - Earthquake - TM149
  (237, 23700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Hitmontop - Stone Edge - TM150
  (237, 23700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Hitmontop - Giga Impact - TM152
  (237, 23700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Hitmontop - Focus Blast - TM158
  (237, 23700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 48),
  -- Hitmontop - Close Combat - TM167
  (237, 23700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 49),
  -- Hitmontop - Tera Blast - TM171
  (237, 23700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Hitmontop - Counter - Egg
  (237, 23700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hitmontop - High Jump Kick - Egg
  (237, 23700, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hitmontop - Mach Punch - Egg
  (237, 23700, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hitmontop - Rapid Spin - Egg
  (237, 23700, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hitmontop - Feint - Egg
  (237, 23700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hitmontop - Vacuum Wave - Egg
  (237, 23700, 410, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hitmontop - Bullet Punch - Egg
  (237, 23700, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hitmontop - Triple Kick - Evolution
  (237, 23700, 167, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Elekid - Leer - Level 1
  (239, 23900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Shock - Level 4
  (239, 23900, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Elekid - Charge - Level 8
  (239, 23900, 268, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 12
  (239, 23900, 129, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Elekid - Shock Wave - Level 16
  (239, 23900, 351, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Elekid - Thunder Wave - Level 20
  (239, 23900, 86, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Elekid - Screech - Level 24
  (239, 23900, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Elekid - Thunder Punch - Level 28
  (239, 23900, 9, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Elekid - Discharge - Level 32
  (239, 23900, 435, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Elekid - Low Kick - Level 36
  (239, 23900, 67, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Elekid - Thunderbolt - Level 40
  (239, 23900, 85, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Elekid - Light Screen - Level 44
  (239, 23900, 113, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Elekid - Thunder - Level 48
  (239, 23900, 87, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Elekid - Take Down - TM001
  (239, 23900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Elekid - Protect - TM007
  (239, 23900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Elekid - Low Kick - TM012
  (239, 23900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Elekid - Thief - TM018
  (239, 23900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Elekid - Trailblaze - TM020
  (239, 23900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Elekid - Charge Beam - TM023
  (239, 23900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Elekid - Facade - TM025
  (239, 23900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Elekid - Swift - TM032
  (239, 23900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Elekid - Fling - TM043
  (239, 23900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Elekid - Endure - TM047
  (239, 23900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Elekid - Volt Switch - TM048
  (239, 23900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 25),
  -- Elekid - Rain Dance - TM050
  (239, 23900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Elekid - Brick Break - TM058
  (239, 23900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Elekid - Body Slam - TM066
  (239, 23900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Elekid - Fire Punch - TM067
  (239, 23900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 29),
  -- Elekid - Thunder Punch - TM068
  (239, 23900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 30),
  -- Elekid - Ice Punch - TM069
  (239, 23900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 31),
  -- Elekid - Sleep Talk - TM070
  (239, 23900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Elekid - Electro Ball - TM072
  (239, 23900, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 33),
  -- Elekid - Light Screen - TM075
  (239, 23900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Elekid - Thunder Wave - TM082
  (239, 23900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Elekid - Rest - TM085
  (239, 23900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Elekid - Taunt - TM087
  (239, 23900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Elekid - Eerie Impulse - TM096
  (239, 23900, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 38),
  -- Elekid - Substitute - TM103
  (239, 23900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Elekid - Psychic - TM120
  (239, 23900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 40),
  -- Elekid - Thunderbolt - TM126
  (239, 23900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Elekid - Helping Hand - TM130
  (239, 23900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Elekid - Electric Terrain - TM136
  (239, 23900, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 43),
  -- Elekid - Wild Charge - TM147
  (239, 23900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 44),
  -- Elekid - Focus Blast - TM158
  (239, 23900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 45),
  -- Elekid - Thunder - TM166
  (239, 23900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 46),
  -- Elekid - Tera Blast - TM171
  (239, 23900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Elekid - Dynamic Punch - Egg
  (239, 23900, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Elekid - Cross Chop - Egg
  (239, 23900, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Elekid - Focus Punch - Egg
  (239, 23900, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Elekid - Follow Me - Egg
  (239, 23900, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Elekid - Hammer Arm - Egg
  (239, 23900, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Elekid - Feint - Egg
  (239, 23900, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Magby - Leer - Level 1
  (240, 24000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Smog - Level 1
  (240, 24000, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magby - Ember - Level 4
  (240, 24000, 52, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Magby - Smokescreen - Level 8
  (240, 24000, 108, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magby - Clear Smog - Level 12
  (240, 24000, 499, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magby - Flame Wheel - Level 16
  (240, 24000, 172, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magby - Confuse Ray - Level 20
  (240, 24000, 109, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magby - Scary Face - Level 24
  (240, 24000, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magby - Fire Punch - Level 28
  (240, 24000, 7, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magby - Lava Plume - Level 32
  (240, 24000, 436, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magby - Low Kick - Level 36
  (240, 24000, 67, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Magby - Flamethrower - Level 40
  (240, 24000, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magby - Sunny Day - Level 44
  (240, 24000, 241, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magby - Fire Blast - Level 48
  (240, 24000, 126, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Magby - Take Down - TM001
  (240, 24000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Magby - Scary Face - TM006
  (240, 24000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Magby - Protect - TM007
  (240, 24000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Magby - Low Kick - TM012
  (240, 24000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Magby - Acid Spray - TM013
  (240, 24000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Magby - Confuse Ray - TM017
  (240, 24000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Magby - Thief - TM018
  (240, 24000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Magby - Fire Spin - TM024
  (240, 24000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Magby - Facade - TM025
  (240, 24000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Magby - Flame Charge - TM038
  (240, 24000, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Magby - Fling - TM043
  (240, 24000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Magby - Endure - TM047
  (240, 24000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Magby - Sunny Day - TM049
  (240, 24000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Magby - Brick Break - TM058
  (240, 24000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Magby - Body Slam - TM066
  (240, 24000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Magby - Fire Punch - TM067
  (240, 24000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Magby - Thunder Punch - TM068
  (240, 24000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Magby - Sleep Talk - TM070
  (240, 24000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Magby - Poison Jab - TM083
  (240, 24000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 33),
  -- Magby - Rest - TM085
  (240, 24000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Magby - Substitute - TM103
  (240, 24000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Magby - Will-O-Wisp - TM107
  (240, 24000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Magby - Heat Wave - TM118
  (240, 24000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 37),
  -- Magby - Psychic - TM120
  (240, 24000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Magby - Flamethrower - TM125
  (240, 24000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Magby - Helping Hand - TM130
  (240, 24000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Magby - Fire Blast - TM141
  (240, 24000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Magby - Overheat - TM157
  (240, 24000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 42),
  -- Magby - Flare Blitz - TM165
  (240, 24000, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 43),
  -- Magby - Tera Blast - TM171
  (240, 24000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Magby - Mach Punch - Egg
  (240, 24000, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magby - Belly Drum - Egg
  (240, 24000, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magby - Dynamic Punch - Egg
  (240, 24000, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magby - Cross Chop - Egg
  (240, 24000, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magby - Follow Me - Egg
  (240, 24000, 266, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magby - Belch - Egg
  (240, 24000, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Blissey - Pound - Level 1
  (242, 24200, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Defense Curl - Level 1
  (242, 24200, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blissey - Sweet Kiss - Level 1
  (242, 24200, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blissey - Charm - Level 1
  (242, 24200, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blissey - Covet - Level 1
  (242, 24200, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blissey - Copycat - Level 1
  (242, 24200, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blissey - Disarming Voice - Level 1
  (242, 24200, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Blissey - Tail Whip - Level 4
  (242, 24200, 39, 23, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Blissey - Echoed Voice - Level 8
  (242, 24200, 497, 23, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Blissey - Life Dew - Level 12
  (242, 24200, 791, 23, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Blissey - Sing - Level 16
  (242, 24200, 47, 23, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Blissey - Fling - Level 20
  (242, 24200, 374, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Blissey - Take Down - Level 24
  (242, 24200, 36, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Blissey - Heal Pulse - Level 28
  (242, 24200, 505, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Blissey - Helping Hand - Level 32
  (242, 24200, 270, 23, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Blissey - Light Screen - Level 36
  (242, 24200, 113, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Blissey - Double-Edge - Level 40
  (242, 24200, 38, 23, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Blissey - Soft-Boiled - Level 44
  (242, 24200, 135, 23, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Blissey - Last Resort - Level 48
  (242, 24200, 387, 23, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Blissey - Healing Wish - Level 52
  (242, 24200, 361, 23, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Blissey - Take Down - TM001
  (242, 24200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Blissey - Charm - TM002
  (242, 24200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 22),
  -- Blissey - Protect - TM007
  (242, 24200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Blissey - Water Pulse - TM011
  (242, 24200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Blissey - Thief - TM018
  (242, 24200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Blissey - Disarming Voice - TM019
  (242, 24200, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 26),
  -- Blissey - Trailblaze - TM020
  (242, 24200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 27),
  -- Blissey - Chilling Water - TM022
  (242, 24200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 28),
  -- Blissey - Facade - TM025
  (242, 24200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 29),
  -- Blissey - Bulldoze - TM028
  (242, 24200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 30),
  -- Blissey - Swift - TM032
  (242, 24200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 31),
  -- Blissey - Icy Wind - TM034
  (242, 24200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 32),
  -- Blissey - Rock Tomb - TM036
  (242, 24200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 33),
  -- Blissey - Stored Power - TM041
  (242, 24200, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 34),
  -- Blissey - Fling - TM043
  (242, 24200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Blissey - Avalanche - TM046
  (242, 24200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 36),
  -- Blissey - Endure - TM047
  (242, 24200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Blissey - Sunny Day - TM049
  (242, 24200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Blissey - Rain Dance - TM050
  (242, 24200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Blissey - Sandstorm - TM051
  (242, 24200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 40),
  -- Blissey - Snowscape - TM052
  (242, 24200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 41),
  -- Blissey - Brick Break - TM058
  (242, 24200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 42),
  -- Blissey - Zen Headbutt - TM059
  (242, 24200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 43),
  -- Blissey - Body Slam - TM066
  (242, 24200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Blissey - Fire Punch - TM067
  (242, 24200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 45),
  -- Blissey - Thunder Punch - TM068
  (242, 24200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 46),
  -- Blissey - Ice Punch - TM069
  (242, 24200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 47),
  -- Blissey - Sleep Talk - TM070
  (242, 24200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 48),
  -- Blissey - Drain Punch - TM073
  (242, 24200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 49),
  -- Blissey - Light Screen - TM075
  (242, 24200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 50),
  -- Blissey - Dazzling Gleam - TM079
  (242, 24200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 51),
  -- Blissey - Metronome - TM080
  (242, 24200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 52),
  -- Blissey - Grass Knot - TM081
  (242, 24200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 53),
  -- Blissey - Thunder Wave - TM082
  (242, 24200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 54),
  -- Blissey - Stomping Tantrum - TM084
  (242, 24200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 55),
  -- Blissey - Rest - TM085
  (242, 24200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 56),
  -- Blissey - Rock Slide - TM086
  (242, 24200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 57),
  -- Blissey - Skill Swap - TM098
  (242, 24200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 58),
  -- Blissey - Substitute - TM103
  (242, 24200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 59),
  -- Blissey - Trick - TM109
  (242, 24200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 60),
  -- Blissey - Shadow Ball - TM114
  (242, 24200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 61),
  -- Blissey - Stealth Rock - TM116
  (242, 24200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 62),
  -- Blissey - Hyper Voice - TM117
  (242, 24200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 63),
  -- Blissey - Psychic - TM120
  (242, 24200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 64),
  -- Blissey - Flamethrower - TM125
  (242, 24200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 65),
  -- Blissey - Thunderbolt - TM126
  (242, 24200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 66),
  -- Blissey - Calm Mind - TM129
  (242, 24200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 67),
  -- Blissey - Helping Hand - TM130
  (242, 24200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 68),
  -- Blissey - Ice Beam - TM135
  (242, 24200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 69),
  -- Blissey - Electric Terrain - TM136
  (242, 24200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 70),
  -- Blissey - Fire Blast - TM141
  (242, 24200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 71),
  -- Blissey - Blizzard - TM143
  (242, 24200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 72),
  -- Blissey - Wild Charge - TM147
  (242, 24200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 73),
  -- Blissey - Earthquake - TM149
  (242, 24200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 74),
  -- Blissey - Giga Impact - TM152
  (242, 24200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 75),
  -- Blissey - Focus Blast - TM158
  (242, 24200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 76),
  -- Blissey - Hyper Beam - TM163
  (242, 24200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 77),
  -- Blissey - Thunder - TM166
  (242, 24200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 78),
  -- Blissey - Solar Beam - TM168
  (242, 24200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 79),
  -- Blissey - Tera Blast - TM171
  (242, 24200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 80),
  -- Blissey - Seismic Toss - Egg
  (242, 24200, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Blissey - Heal Bell - Egg
  (242, 24200, 215, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Blissey - Present - Egg
  (242, 24200, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Blissey - Gravity - Egg
  (242, 24200, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Raikou - Leer - Level 1
  (243, 24300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Thunder Shock - Level 1
  (243, 24300, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Quick Attack - Level 1
  (243, 24300, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raikou - Extreme Speed - Level 1
  (243, 24300, 245, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raikou - Charge - Level 1
  (243, 24300, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 6
  (243, 24300, 209, 23, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Raikou - Bite - Level 12
  (243, 24300, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Raikou - Calm Mind - Level 18
  (243, 24300, 347, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Raikou - Roar - Level 24
  (243, 24300, 46, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Raikou - Thunder Fang - Level 30
  (243, 24300, 422, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Raikou - Howl - Level 36
  (243, 24300, 336, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Raikou - Crunch - Level 42
  (243, 24300, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Raikou - Extrasensory - Level 48
  (243, 24300, 326, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Raikou - Discharge - Level 54
  (243, 24300, 435, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Raikou - Reflect - Level 60
  (243, 24300, 115, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Raikou - Rain Dance - Level 66
  (243, 24300, 240, 23, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Raikou - Thunder - Level 72
  (243, 24300, 87, 23, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Raikou - Zap Cannon - Level 78
  (243, 24300, 192, 23, NULL, 1, 78, NULL, NULL, NULL, 18),
  -- Raikou - Take Down - TM001
  (243, 24300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Raikou - Agility - TM004
  (243, 24300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Raikou - Mud-Slap - TM005
  (243, 24300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Raikou - Scary Face - TM006
  (243, 24300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Raikou - Protect - TM007
  (243, 24300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Raikou - Thunder Fang - TM009
  (243, 24300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 24),
  -- Raikou - Trailblaze - TM020
  (243, 24300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Raikou - Charge Beam - TM023
  (243, 24300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Raikou - Facade - TM025
  (243, 24300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Raikou - Snarl - TM030
  (243, 24300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Raikou - Swift - TM032
  (243, 24300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Raikou - Endure - TM047
  (243, 24300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Raikou - Volt Switch - TM048
  (243, 24300, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 31),
  -- Raikou - Sunny Day - TM049
  (243, 24300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Raikou - Rain Dance - TM050
  (243, 24300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Raikou - Sandstorm - TM051
  (243, 24300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Raikou - Body Slam - TM066
  (243, 24300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Raikou - Sleep Talk - TM070
  (243, 24300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Raikou - Electro Ball - TM072
  (243, 24300, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 37),
  -- Raikou - Reflect - TM074
  (243, 24300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 38),
  -- Raikou - Light Screen - TM075
  (243, 24300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Raikou - Thunder Wave - TM082
  (243, 24300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Raikou - Rest - TM085
  (243, 24300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Raikou - Eerie Impulse - TM096
  (243, 24300, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 42),
  -- Raikou - Iron Head - TM099
  (243, 24300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 43),
  -- Raikou - Substitute - TM103
  (243, 24300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Raikou - Crunch - TM108
  (243, 24300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Raikou - Aura Sphere - TM112
  (243, 24300, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 46),
  -- Raikou - Shadow Ball - TM114
  (243, 24300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Raikou - Thunderbolt - TM126
  (243, 24300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Raikou - Calm Mind - TM129
  (243, 24300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Raikou - Helping Hand - TM130
  (243, 24300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Raikou - Electric Terrain - TM136
  (243, 24300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 51),
  -- Raikou - Wild Charge - TM147
  (243, 24300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 52),
  -- Raikou - Giga Impact - TM152
  (243, 24300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Raikou - Hyper Beam - TM163
  (243, 24300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Raikou - Thunder - TM166
  (243, 24300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Raikou - Tera Blast - TM171
  (243, 24300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Entei - Stomp - Level 1
  (244, 24400, 23, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Leer - Level 1
  (244, 24400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Ember - Level 1
  (244, 24400, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Entei - Smokescreen - Level 1
  (244, 24400, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Entei - Flame Wheel - Level 6
  (244, 24400, 172, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Entei - Bite - Level 12
  (244, 24400, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Entei - Calm Mind - Level 18
  (244, 24400, 347, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Entei - Roar - Level 24
  (244, 24400, 46, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Entei - Fire Fang - Level 30
  (244, 24400, 424, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Entei - Scary Face - Level 36
  (244, 24400, 184, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Entei - Crunch - Level 42
  (244, 24400, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Entei - Extrasensory - Level 48
  (244, 24400, 326, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Entei - Lava Plume - Level 54
  (244, 24400, 436, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Entei - Swagger - Level 60
  (244, 24400, 207, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Entei - Sunny Day - Level 66
  (244, 24400, 241, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Entei - Fire Blast - Level 72
  (244, 24400, 126, 23, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Entei - Eruption - Level 78
  (244, 24400, 284, 23, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Entei - Take Down - TM001
  (244, 24400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Entei - Agility - TM004
  (244, 24400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Entei - Scary Face - TM006
  (244, 24400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Entei - Protect - TM007
  (244, 24400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Entei - Fire Fang - TM008
  (244, 24400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Entei - Trailblaze - TM020
  (244, 24400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Entei - Fire Spin - TM024
  (244, 24400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 24),
  -- Entei - Facade - TM025
  (244, 24400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Entei - Bulldoze - TM028
  (244, 24400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Entei - Snarl - TM030
  (244, 24400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Entei - Swift - TM032
  (244, 24400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Entei - Flame Charge - TM038
  (244, 24400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Entei - Endure - TM047
  (244, 24400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Entei - Sunny Day - TM049
  (244, 24400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Entei - Rain Dance - TM050
  (244, 24400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Entei - Sandstorm - TM051
  (244, 24400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Entei - Dig - TM055
  (244, 24400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Entei - Body Slam - TM066
  (244, 24400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Entei - Sleep Talk - TM070
  (244, 24400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Entei - Stomping Tantrum - TM084
  (244, 24400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Entei - Rest - TM085
  (244, 24400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Entei - Iron Head - TM099
  (244, 24400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Entei - Substitute - TM103
  (244, 24400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Entei - Will-O-Wisp - TM107
  (244, 24400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Entei - Crunch - TM108
  (244, 24400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Entei - Shadow Ball - TM114
  (244, 24400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Entei - Heat Wave - TM118
  (244, 24400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Entei - Flamethrower - TM125
  (244, 24400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Entei - Calm Mind - TM129
  (244, 24400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Entei - Helping Hand - TM130
  (244, 24400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Entei - Reversal - TM134
  (244, 24400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Entei - Fire Blast - TM141
  (244, 24400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Entei - Stone Edge - TM150
  (244, 24400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Entei - Giga Impact - TM152
  (244, 24400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Entei - Overheat - TM157
  (244, 24400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 52),
  -- Entei - Hyper Beam - TM163
  (244, 24400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Entei - Flare Blitz - TM165
  (244, 24400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 54),
  -- Entei - Solar Beam - TM168
  (244, 24400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Entei - Tera Blast - TM171
  (244, 24400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Entei - Sacred Fire - Reminder
  (244, 24400, 221, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Entei - Extreme Speed - Reminder
  (244, 24400, 245, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Suicune - Gust - Level 1
  (245, 24500, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Leer - Level 1
  (245, 24500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Mist - Level 1
  (245, 24500, 54, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Suicune - Water Gun - Level 1
  (245, 24500, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Suicune - Water Pulse - Level 6
  (245, 24500, 352, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Suicune - Bite - Level 12
  (245, 24500, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Suicune - Calm Mind - Level 18
  (245, 24500, 347, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Suicune - Roar - Level 24
  (245, 24500, 46, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Suicune - Ice Fang - Level 30
  (245, 24500, 423, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Suicune - Tailwind - Level 36
  (245, 24500, 366, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Suicune - Crunch - Level 42
  (245, 24500, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Suicune - Extrasensory - Level 48
  (245, 24500, 326, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Suicune - Surf - Level 54
  (245, 24500, 57, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Suicune - Mirror Coat - Level 60
  (245, 24500, 243, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Suicune - Rain Dance - Level 66
  (245, 24500, 240, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Suicune - Hydro Pump - Level 72
  (245, 24500, 56, 23, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Suicune - Blizzard - Level 78
  (245, 24500, 59, 23, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Suicune - Take Down - TM001
  (245, 24500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Suicune - Agility - TM004
  (245, 24500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Suicune - Protect - TM007
  (245, 24500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Suicune - Ice Fang - TM010
  (245, 24500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Suicune - Water Pulse - TM011
  (245, 24500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Suicune - Trailblaze - TM020
  (245, 24500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Suicune - Chilling Water - TM022
  (245, 24500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Suicune - Facade - TM025
  (245, 24500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Suicune - Snarl - TM030
  (245, 24500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Suicune - Swift - TM032
  (245, 24500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Suicune - Icy Wind - TM034
  (245, 24500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Suicune - Avalanche - TM046
  (245, 24500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Suicune - Endure - TM047
  (245, 24500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Suicune - Rain Dance - TM050
  (245, 24500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Suicune - Sandstorm - TM051
  (245, 24500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Suicune - Snowscape - TM052
  (245, 24500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Suicune - Air Slash - TM065
  (245, 24500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 34),
  -- Suicune - Body Slam - TM066
  (245, 24500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Suicune - Sleep Talk - TM070
  (245, 24500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Suicune - Waterfall - TM077
  (245, 24500, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 37),
  -- Suicune - Rest - TM085
  (245, 24500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Suicune - Iron Head - TM099
  (245, 24500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Suicune - Substitute - TM103
  (245, 24500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Suicune - Crunch - TM108
  (245, 24500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Suicune - Liquidation - TM110
  (245, 24500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 42),
  -- Suicune - Tailwind - TM113
  (245, 24500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 43),
  -- Suicune - Shadow Ball - TM114
  (245, 24500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Suicune - Surf - TM123
  (245, 24500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Suicune - Calm Mind - TM129
  (245, 24500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Suicune - Helping Hand - TM130
  (245, 24500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Suicune - Ice Beam - TM135
  (245, 24500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Suicune - Hydro Pump - TM142
  (245, 24500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Suicune - Blizzard - TM143
  (245, 24500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Suicune - Giga Impact - TM152
  (245, 24500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Suicune - Hyper Beam - TM163
  (245, 24500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Suicune - Tera Blast - TM171
  (245, 24500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Suicune - Extreme Speed - Reminder
  (245, 24500, 245, 23, NULL, 9, NULL, NULL, NULL, NULL, 54),
  -- Suicune - Sheer Cold - Reminder
  (245, 24500, 329, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Larvitar - Tackle - Level 1
  (246, 24600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Rock Throw - Level 3
  (246, 24600, 88, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Larvitar - Payback - Level 6
  (246, 24600, 371, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Larvitar - Bite - Level 9
  (246, 24600, 44, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Larvitar - Scary Face - Level 12
  (246, 24600, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Larvitar - Rock Slide - Level 15
  (246, 24600, 157, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Larvitar - Stomping Tantrum - Level 18
  (246, 24600, 707, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Larvitar - Screech - Level 21
  (246, 24600, 103, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Larvitar - Smack Down - Level 24
  (246, 24600, 479, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Larvitar - Crunch - Level 27
  (246, 24600, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Larvitar - Earthquake - Level 31
  (246, 24600, 89, 23, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Larvitar - Stone Edge - Level 33
  (246, 24600, 444, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Larvitar - Thrash - Level 36
  (246, 24600, 37, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Larvitar - Sandstorm - Level 39
  (246, 24600, 201, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Larvitar - Hyper Beam - Level 42
  (246, 24600, 63, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Larvitar - Take Down - TM001
  (246, 24600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Larvitar - Mud-Slap - TM005
  (246, 24600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Larvitar - Scary Face - TM006
  (246, 24600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Larvitar - Protect - TM007
  (246, 24600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Larvitar - Facade - TM025
  (246, 24600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Larvitar - Bulldoze - TM028
  (246, 24600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Larvitar - Snarl - TM030
  (246, 24600, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Larvitar - Mud Shot - TM035
  (246, 24600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Larvitar - Rock Tomb - TM036
  (246, 24600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Larvitar - Endure - TM047
  (246, 24600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Larvitar - Sunny Day - TM049
  (246, 24600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Larvitar - Rain Dance - TM050
  (246, 24600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Larvitar - Sandstorm - TM051
  (246, 24600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Larvitar - Dig - TM055
  (246, 24600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Larvitar - Brick Break - TM058
  (246, 24600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Larvitar - Body Slam - TM066
  (246, 24600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Larvitar - Sleep Talk - TM070
  (246, 24600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Larvitar - Rock Blast - TM076
  (246, 24600, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Larvitar - Stomping Tantrum - TM084
  (246, 24600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Larvitar - Rest - TM085
  (246, 24600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Larvitar - Rock Slide - TM086
  (246, 24600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Larvitar - Taunt - TM087
  (246, 24600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Larvitar - Dark Pulse - TM094
  (246, 24600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Larvitar - Iron Head - TM099
  (246, 24600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Larvitar - Dragon Dance - TM100
  (246, 24600, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 41),
  -- Larvitar - Substitute - TM103
  (246, 24600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Larvitar - Iron Defense - TM104
  (246, 24600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Larvitar - Crunch - TM108
  (246, 24600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Larvitar - Stealth Rock - TM116
  (246, 24600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Larvitar - Helping Hand - TM130
  (246, 24600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Larvitar - Earth Power - TM133
  (246, 24600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Larvitar - Earthquake - TM149
  (246, 24600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Larvitar - Stone Edge - TM150
  (246, 24600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Larvitar - Giga Impact - TM152
  (246, 24600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Larvitar - Outrage - TM156
  (246, 24600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Larvitar - Hyper Beam - TM163
  (246, 24600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Larvitar - Tera Blast - TM171
  (246, 24600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Larvitar - Stomp - Egg
  (246, 24600, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Larvitar - Focus Energy - Egg
  (246, 24600, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Larvitar - Curse - Egg
  (246, 24600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Larvitar - Outrage - Egg
  (246, 24600, 200, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Larvitar - Ancient Power - Egg
  (246, 24600, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Larvitar - Iron Defense - Egg
  (246, 24600, 334, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Larvitar - Dragon Dance - Egg
  (246, 24600, 349, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Larvitar - Assurance - Egg
  (246, 24600, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Larvitar - Iron Head - Egg
  (246, 24600, 442, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pupitar - Tackle - Level 1
  (247, 24700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Rock Throw - Level 1
  (247, 24700, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Payback - Level 1
  (247, 24700, 371, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Bite - Level 9
  (247, 24700, 44, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pupitar - Scary Face - Level 12
  (247, 24700, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pupitar - Rock Slide - Level 15
  (247, 24700, 157, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pupitar - Stomping Tantrum - Level 18
  (247, 24700, 707, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Pupitar - Screech - Level 21
  (247, 24700, 103, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Pupitar - Smack Down - Level 24
  (247, 24700, 479, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pupitar - Crunch - Level 27
  (247, 24700, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Pupitar - Earthquake - Level 33
  (247, 24700, 89, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Pupitar - Stone Edge - Level 37
  (247, 24700, 444, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Pupitar - Thrash - Level 42
  (247, 24700, 37, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Pupitar - Sandstorm - Level 47
  (247, 24700, 201, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Pupitar - Hyper Beam - Level 52
  (247, 24700, 63, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Pupitar - Take Down - TM001
  (247, 24700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Pupitar - Mud-Slap - TM005
  (247, 24700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Pupitar - Scary Face - TM006
  (247, 24700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Pupitar - Protect - TM007
  (247, 24700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Pupitar - Facade - TM025
  (247, 24700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Pupitar - Aerial Ace - TM027
  (247, 24700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Pupitar - Bulldoze - TM028
  (247, 24700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Pupitar - Snarl - TM030
  (247, 24700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Pupitar - Mud Shot - TM035
  (247, 24700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Pupitar - Rock Tomb - TM036
  (247, 24700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Pupitar - Endure - TM047
  (247, 24700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Pupitar - Sunny Day - TM049
  (247, 24700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Pupitar - Rain Dance - TM050
  (247, 24700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Pupitar - Sandstorm - TM051
  (247, 24700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Pupitar - Dig - TM055
  (247, 24700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Pupitar - Brick Break - TM058
  (247, 24700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Pupitar - Body Slam - TM066
  (247, 24700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Pupitar - Sleep Talk - TM070
  (247, 24700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Pupitar - Rock Blast - TM076
  (247, 24700, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 35),
  -- Pupitar - Stomping Tantrum - TM084
  (247, 24700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Pupitar - Rest - TM085
  (247, 24700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Pupitar - Rock Slide - TM086
  (247, 24700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Pupitar - Taunt - TM087
  (247, 24700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Pupitar - Dark Pulse - TM094
  (247, 24700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Pupitar - Iron Head - TM099
  (247, 24700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Pupitar - Dragon Dance - TM100
  (247, 24700, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 42),
  -- Pupitar - Substitute - TM103
  (247, 24700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Pupitar - Iron Defense - TM104
  (247, 24700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Pupitar - Crunch - TM108
  (247, 24700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Pupitar - Stealth Rock - TM116
  (247, 24700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Pupitar - Helping Hand - TM130
  (247, 24700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Pupitar - Earth Power - TM133
  (247, 24700, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Pupitar - Earthquake - TM149
  (247, 24700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Pupitar - Stone Edge - TM150
  (247, 24700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Pupitar - Giga Impact - TM152
  (247, 24700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Pupitar - Outrage - TM156
  (247, 24700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Pupitar - Hyper Beam - TM163
  (247, 24700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Pupitar - Tera Blast - TM171
  (247, 24700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Pupitar - Stomp - Egg
  (247, 24700, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pupitar - Focus Energy - Egg
  (247, 24700, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pupitar - Curse - Egg
  (247, 24700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pupitar - Outrage - Egg
  (247, 24700, 200, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pupitar - Ancient Power - Egg
  (247, 24700, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pupitar - Iron Defense - Egg
  (247, 24700, 334, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pupitar - Dragon Dance - Egg
  (247, 24700, 349, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pupitar - Assurance - Egg
  (247, 24700, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pupitar - Iron Head - Egg
  (247, 24700, 442, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pupitar - Iron Defense - Evolution
  (247, 24700, 334, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Tyranitar - Tackle - Level 1
  (248, 24800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Rock Throw - Level 1
  (248, 24800, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Iron Defense - Level 1
  (248, 24800, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Payback - Level 1
  (248, 24800, 371, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tyranitar - Dark Pulse - Level 1
  (248, 24800, 399, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tyranitar - Thunder Fang - Level 1
  (248, 24800, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tyranitar - Ice Fang - Level 1
  (248, 24800, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tyranitar - Fire Fang - Level 1
  (248, 24800, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Tyranitar - Bite - Level 9
  (248, 24800, 44, 23, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Tyranitar - Scary Face - Level 12
  (248, 24800, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Tyranitar - Rock Slide - Level 15
  (248, 24800, 157, 23, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Tyranitar - Stomping Tantrum - Level 18
  (248, 24800, 707, 23, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Tyranitar - Screech - Level 21
  (248, 24800, 103, 23, NULL, 1, 21, NULL, NULL, NULL, 14),
  -- Tyranitar - Smack Down - Level 24
  (248, 24800, 479, 23, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Tyranitar - Crunch - Level 27
  (248, 24800, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Tyranitar - Earthquake - Level 33
  (248, 24800, 89, 23, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Tyranitar - Stone Edge - Level 37
  (248, 24800, 444, 23, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Tyranitar - Thrash - Level 42
  (248, 24800, 37, 23, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Tyranitar - Sandstorm - Level 47
  (248, 24800, 201, 23, NULL, 1, 47, NULL, NULL, NULL, 20),
  -- Tyranitar - Hyper Beam - Level 52
  (248, 24800, 63, 23, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Tyranitar - Giga Impact - Level 59
  (248, 24800, 416, 23, NULL, 1, 59, NULL, NULL, NULL, 22),
  -- Tyranitar - Take Down - TM001
  (248, 24800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Tyranitar - Mud-Slap - TM005
  (248, 24800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 24),
  -- Tyranitar - Scary Face - TM006
  (248, 24800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 25),
  -- Tyranitar - Protect - TM007
  (248, 24800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 26),
  -- Tyranitar - Fire Fang - TM008
  (248, 24800, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 27),
  -- Tyranitar - Thunder Fang - TM009
  (248, 24800, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 28),
  -- Tyranitar - Ice Fang - TM010
  (248, 24800, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 29),
  -- Tyranitar - Low Kick - TM012
  (248, 24800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 30),
  -- Tyranitar - Facade - TM025
  (248, 24800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Tyranitar - Aerial Ace - TM027
  (248, 24800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 32),
  -- Tyranitar - Bulldoze - TM028
  (248, 24800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Tyranitar - Snarl - TM030
  (248, 24800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Tyranitar - Icy Wind - TM034
  (248, 24800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 35),
  -- Tyranitar - Mud Shot - TM035
  (248, 24800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 36),
  -- Tyranitar - Rock Tomb - TM036
  (248, 24800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 37),
  -- Tyranitar - Fling - TM043
  (248, 24800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 38),
  -- Tyranitar - Dragon Tail - TM044
  (248, 24800, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 39),
  -- Tyranitar - Avalanche - TM046
  (248, 24800, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 40),
  -- Tyranitar - Endure - TM047
  (248, 24800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 41),
  -- Tyranitar - Sunny Day - TM049
  (248, 24800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 42),
  -- Tyranitar - Rain Dance - TM050
  (248, 24800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 43),
  -- Tyranitar - Sandstorm - TM051
  (248, 24800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 44),
  -- Tyranitar - Dig - TM055
  (248, 24800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 45),
  -- Tyranitar - Brick Break - TM058
  (248, 24800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 46),
  -- Tyranitar - Shadow Claw - TM061
  (248, 24800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 47),
  -- Tyranitar - Foul Play - TM062
  (248, 24800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 48),
  -- Tyranitar - Body Slam - TM066
  (248, 24800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 49),
  -- Tyranitar - Fire Punch - TM067
  (248, 24800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 50),
  -- Tyranitar - Thunder Punch - TM068
  (248, 24800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 51),
  -- Tyranitar - Ice Punch - TM069
  (248, 24800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 52),
  -- Tyranitar - Sleep Talk - TM070
  (248, 24800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 53),
  -- Tyranitar - Rock Blast - TM076
  (248, 24800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 54),
  -- Tyranitar - Dragon Claw - TM078
  (248, 24800, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 55),
  -- Tyranitar - Thunder Wave - TM082
  (248, 24800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 56),
  -- Tyranitar - Stomping Tantrum - TM084
  (248, 24800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 57),
  -- Tyranitar - Rest - TM085
  (248, 24800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 58),
  -- Tyranitar - Rock Slide - TM086
  (248, 24800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 59),
  -- Tyranitar - Taunt - TM087
  (248, 24800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 60),
  -- Tyranitar - Body Press - TM089
  (248, 24800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 61),
  -- Tyranitar - Dark Pulse - TM094
  (248, 24800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 62),
  -- Tyranitar - Iron Head - TM099
  (248, 24800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 63),
  -- Tyranitar - Dragon Dance - TM100
  (248, 24800, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 64),
  -- Tyranitar - Power Gem - TM101
  (248, 24800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 65),
  -- Tyranitar - Substitute - TM103
  (248, 24800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 66),
  -- Tyranitar - Iron Defense - TM104
  (248, 24800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 67),
  -- Tyranitar - Crunch - TM108
  (248, 24800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 68),
  -- Tyranitar - Dragon Pulse - TM115
  (248, 24800, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 69),
  -- Tyranitar - Stealth Rock - TM116
  (248, 24800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 70),
  -- Tyranitar - Heavy Slam - TM121
  (248, 24800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 71),
  -- Tyranitar - Surf - TM123
  (248, 24800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 72),
  -- Tyranitar - Flamethrower - TM125
  (248, 24800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 73),
  -- Tyranitar - Thunderbolt - TM126
  (248, 24800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 74),
  -- Tyranitar - Helping Hand - TM130
  (248, 24800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 75),
  -- Tyranitar - Earth Power - TM133
  (248, 24800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 76),
  -- Tyranitar - Ice Beam - TM135
  (248, 24800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 77),
  -- Tyranitar - Fire Blast - TM141
  (248, 24800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 78),
  -- Tyranitar - Hydro Pump - TM142
  (248, 24800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 79),
  -- Tyranitar - Blizzard - TM143
  (248, 24800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 80),
  -- Tyranitar - Earthquake - TM149
  (248, 24800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 81),
  -- Tyranitar - Stone Edge - TM150
  (248, 24800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 82),
  -- Tyranitar - Giga Impact - TM152
  (248, 24800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 83),
  -- Tyranitar - Outrage - TM156
  (248, 24800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 84),
  -- Tyranitar - Focus Blast - TM158
  (248, 24800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 85),
  -- Tyranitar - Hyper Beam - TM163
  (248, 24800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 86),
  -- Tyranitar - Thunder - TM166
  (248, 24800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 87),
  -- Tyranitar - Tera Blast - TM171
  (248, 24800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 88),
  -- Tyranitar - Stomp - Egg
  (248, 24800, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Tyranitar - Focus Energy - Egg
  (248, 24800, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Tyranitar - Curse - Egg
  (248, 24800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Tyranitar - Outrage - Egg
  (248, 24800, 200, 23, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Tyranitar - Ancient Power - Egg
  (248, 24800, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Tyranitar - Iron Defense - Egg
  (248, 24800, 334, 23, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Tyranitar - Dragon Dance - Egg
  (248, 24800, 349, 23, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Tyranitar - Assurance - Egg
  (248, 24800, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Tyranitar - Iron Head - Egg
  (248, 24800, 442, 23, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Lugia - Gust - Level 1
  (249, 24900, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Whirlwind - Level 1
  (249, 24900, 18, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lugia - Ancient Power - Level 1
  (249, 24900, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lugia - Weather Ball - Level 1
  (249, 24900, 311, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lugia - Mist - Level 9
  (249, 24900, 54, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lugia - Safeguard - Level 18
  (249, 24900, 219, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Lugia - Calm Mind - Level 27
  (249, 24900, 347, 23, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Lugia - Extrasensory - Level 36
  (249, 24900, 326, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Lugia - Recover - Level 45
  (249, 24900, 105, 23, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Lugia - Aeroblast - Level 54
  (249, 24900, 177, 23, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Lugia - Rain Dance - Level 63
  (249, 24900, 240, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Lugia - Hydro Pump - Level 72
  (249, 24900, 56, 23, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Lugia - Future Sight - Level 81
  (249, 24900, 248, 23, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Lugia - Sky Attack - Level 90
  (249, 24900, 143, 23, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Lugia - Take Down - TM001
  (249, 24900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Lugia - Scary Face - TM006
  (249, 24900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Lugia - Protect - TM007
  (249, 24900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Lugia - Water Pulse - TM011
  (249, 24900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Lugia - Acrobatics - TM014
  (249, 24900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Lugia - Chilling Water - TM022
  (249, 24900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Lugia - Charge Beam - TM023
  (249, 24900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Lugia - Facade - TM025
  (249, 24900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Lugia - Aerial Ace - TM027
  (249, 24900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Lugia - Swift - TM032
  (249, 24900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Lugia - Icy Wind - TM034
  (249, 24900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Lugia - Air Cutter - TM040
  (249, 24900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Lugia - Dragon Tail - TM044
  (249, 24900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 27),
  -- Lugia - Avalanche - TM046
  (249, 24900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 28),
  -- Lugia - Endure - TM047
  (249, 24900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Lugia - Sunny Day - TM049
  (249, 24900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Lugia - Rain Dance - TM050
  (249, 24900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Lugia - Sandstorm - TM051
  (249, 24900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Lugia - Psyshock - TM054
  (249, 24900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Lugia - Zen Headbutt - TM059
  (249, 24900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Lugia - Air Slash - TM065
  (249, 24900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Lugia - Body Slam - TM066
  (249, 24900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Lugia - Sleep Talk - TM070
  (249, 24900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Lugia - Reflect - TM074
  (249, 24900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 38),
  -- Lugia - Light Screen - TM075
  (249, 24900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Lugia - Waterfall - TM077
  (249, 24900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 40),
  -- Lugia - Rest - TM085
  (249, 24900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Lugia - Imprison - TM092
  (249, 24900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Lugia - Fly - TM097
  (249, 24900, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 43),
  -- Lugia - Skill Swap - TM098
  (249, 24900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 44),
  -- Lugia - Iron Head - TM099
  (249, 24900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Lugia - Substitute - TM103
  (249, 24900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Lugia - Trick - TM109
  (249, 24900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 47),
  -- Lugia - Liquidation - TM110
  (249, 24900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Lugia - Giga Drain - TM111
  (249, 24900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 49),
  -- Lugia - Tailwind - TM113
  (249, 24900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 50),
  -- Lugia - Shadow Ball - TM114
  (249, 24900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Lugia - Dragon Pulse - TM115
  (249, 24900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 52),
  -- Lugia - Hyper Voice - TM117
  (249, 24900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 53),
  -- Lugia - Psychic - TM120
  (249, 24900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Lugia - Surf - TM123
  (249, 24900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 55),
  -- Lugia - Thunderbolt - TM126
  (249, 24900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Lugia - Calm Mind - TM129
  (249, 24900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 57),
  -- Lugia - Helping Hand - TM130
  (249, 24900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Lugia - Earth Power - TM133
  (249, 24900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 59),
  -- Lugia - Ice Beam - TM135
  (249, 24900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 60),
  -- Lugia - Hydro Pump - TM142
  (249, 24900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 61),
  -- Lugia - Blizzard - TM143
  (249, 24900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 62),
  -- Lugia - Earthquake - TM149
  (249, 24900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 63),
  -- Lugia - Giga Impact - TM152
  (249, 24900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Lugia - Hurricane - TM160
  (249, 24900, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 65),
  -- Lugia - Hyper Beam - TM163
  (249, 24900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Lugia - Brave Bird - TM164
  (249, 24900, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 67),
  -- Lugia - Thunder - TM166
  (249, 24900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Lugia - Tera Blast - TM171
  (249, 24900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Lugia - Dragon Rush - Reminder
  (249, 24900, 407, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Ho-Oh - Gust - Level 1
  (250, 25000, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Whirlwind - Level 1
  (250, 25000, 18, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ho-Oh - Ancient Power - Level 1
  (250, 25000, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ho-Oh - Weather Ball - Level 1
  (250, 25000, 311, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ho-Oh - Life Dew - Level 9
  (250, 25000, 791, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ho-Oh - Safeguard - Level 18
  (250, 25000, 219, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ho-Oh - Calm Mind - Level 27
  (250, 25000, 347, 23, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Ho-Oh - Extrasensory - Level 36
  (250, 25000, 326, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Ho-Oh - Recover - Level 45
  (250, 25000, 105, 23, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Ho-Oh - Sacred Fire - Level 54
  (250, 25000, 221, 23, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Ho-Oh - Sunny Day - Level 63
  (250, 25000, 241, 23, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Ho-Oh - Fire Blast - Level 72
  (250, 25000, 126, 23, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Ho-Oh - Future Sight - Level 81
  (250, 25000, 248, 23, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Ho-Oh - Sky Attack - Level 90
  (250, 25000, 143, 23, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Ho-Oh - Overheat - Level 99
  (250, 25000, 315, 23, NULL, 1, 99, NULL, NULL, NULL, 15),
  -- Ho-Oh - Take Down - TM001
  (250, 25000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ho-Oh - Protect - TM007
  (250, 25000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Ho-Oh - Charge Beam - TM023
  (250, 25000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Ho-Oh - Fire Spin - TM024
  (250, 25000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Ho-Oh - Facade - TM025
  (250, 25000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Ho-Oh - Aerial Ace - TM027
  (250, 25000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Ho-Oh - Swift - TM032
  (250, 25000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Ho-Oh - Flame Charge - TM038
  (250, 25000, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Ho-Oh - Air Cutter - TM040
  (250, 25000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Ho-Oh - Endure - TM047
  (250, 25000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Ho-Oh - Sunny Day - TM049
  (250, 25000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Ho-Oh - Rain Dance - TM050
  (250, 25000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Ho-Oh - Sandstorm - TM051
  (250, 25000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Ho-Oh - Zen Headbutt - TM059
  (250, 25000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Ho-Oh - Air Slash - TM065
  (250, 25000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Ho-Oh - Body Slam - TM066
  (250, 25000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Ho-Oh - Sleep Talk - TM070
  (250, 25000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Ho-Oh - Reflect - TM074
  (250, 25000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Ho-Oh - Light Screen - TM075
  (250, 25000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Ho-Oh - Rest - TM085
  (250, 25000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Ho-Oh - Imprison - TM092
  (250, 25000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Ho-Oh - Fly - TM097
  (250, 25000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Ho-Oh - Iron Head - TM099
  (250, 25000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Ho-Oh - Substitute - TM103
  (250, 25000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Ho-Oh - Will-O-Wisp - TM107
  (250, 25000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Ho-Oh - Giga Drain - TM111
  (250, 25000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Ho-Oh - Tailwind - TM113
  (250, 25000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 42),
  -- Ho-Oh - Shadow Ball - TM114
  (250, 25000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Ho-Oh - Hyper Voice - TM117
  (250, 25000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Ho-Oh - Heat Wave - TM118
  (250, 25000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Ho-Oh - Psychic - TM120
  (250, 25000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Ho-Oh - Flamethrower - TM125
  (250, 25000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Ho-Oh - Thunderbolt - TM126
  (250, 25000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Ho-Oh - Calm Mind - TM129
  (250, 25000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Ho-Oh - Helping Hand - TM130
  (250, 25000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Ho-Oh - Earth Power - TM133
  (250, 25000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Ho-Oh - Fire Blast - TM141
  (250, 25000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Ho-Oh - Earthquake - TM149
  (250, 25000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Ho-Oh - Giga Impact - TM152
  (250, 25000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Ho-Oh - Overheat - TM157
  (250, 25000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 55),
  -- Ho-Oh - Hurricane - TM160
  (250, 25000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 56),
  -- Ho-Oh - Hyper Beam - TM163
  (250, 25000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Ho-Oh - Brave Bird - TM164
  (250, 25000, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 58),
  -- Ho-Oh - Flare Blitz - TM165
  (250, 25000, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 59),
  -- Ho-Oh - Thunder - TM166
  (250, 25000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Ho-Oh - Solar Beam - TM168
  (250, 25000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Ho-Oh - Tera Blast - TM171
  (250, 25000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62);
