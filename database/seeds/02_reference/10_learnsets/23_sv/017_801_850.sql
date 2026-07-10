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
-- Scarlet / Violet learnsets for species 801-850.
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
  -- Magearna - Helping Hand - Level 1
  (801, 80100, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magearna - Gyro Ball - Level 1
  (801, 80100, 360, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magearna - Defense Curl - Level 6
  (801, 80100, 111, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Magearna - Rollout - Level 12
  (801, 80100, 205, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Magearna - Iron Defense - Level 18
  (801, 80100, 334, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Magearna - Magnetic Flux - Level 24
  (801, 80100, 602, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Magearna - Psybeam - Level 30
  (801, 80100, 60, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Magearna - Aurora Beam - Level 36
  (801, 80100, 62, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Magearna - Lock-On - Level 42
  (801, 80100, 199, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Magearna - Shift Gear - Level 48
  (801, 80100, 508, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Magearna - Trick - Level 54
  (801, 80100, 271, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Magearna - Iron Head - Level 60
  (801, 80100, 442, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Magearna - Aura Sphere - Level 66
  (801, 80100, 396, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Magearna - Flash Cannon - Level 72
  (801, 80100, 430, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Magearna - Pain Split - Level 78
  (801, 80100, 220, 23, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Magearna - Zap Cannon - Level 84
  (801, 80100, 192, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Magearna - Fleur Cannon - Level 90
  (801, 80100, 705, 23, NULL, 1, 90, NULL, NULL, NULL, 17),
  -- Magearna - Take Down - TM001
  (801, 80100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Magearna - Agility - TM004
  (801, 80100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Magearna - Protect - TM007
  (801, 80100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Magearna - Psybeam - TM016
  (801, 80100, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Magearna - Confuse Ray - TM017
  (801, 80100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Magearna - Disarming Voice - TM019
  (801, 80100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 23),
  -- Magearna - Charge Beam - TM023
  (801, 80100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Magearna - Facade - TM025
  (801, 80100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Magearna - Swift - TM032
  (801, 80100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Magearna - Draining Kiss - TM037
  (801, 80100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 27),
  -- Magearna - Stored Power - TM041
  (801, 80100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Magearna - Endure - TM047
  (801, 80100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Magearna - Volt Switch - TM048
  (801, 80100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 30),
  -- Magearna - Sunny Day - TM049
  (801, 80100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Magearna - Snowscape - TM052
  (801, 80100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Magearna - Psyshock - TM054
  (801, 80100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Magearna - False Swipe - TM057
  (801, 80100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Magearna - Brick Break - TM058
  (801, 80100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Magearna - Zen Headbutt - TM059
  (801, 80100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Magearna - Body Slam - TM066
  (801, 80100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Magearna - Sleep Talk - TM070
  (801, 80100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Magearna - Electro Ball - TM072
  (801, 80100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 39),
  -- Magearna - Reflect - TM074
  (801, 80100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Magearna - Light Screen - TM075
  (801, 80100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Magearna - Dazzling Gleam - TM079
  (801, 80100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 42),
  -- Magearna - Grass Knot - TM081
  (801, 80100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Magearna - Thunder Wave - TM082
  (801, 80100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 44),
  -- Magearna - Rest - TM085
  (801, 80100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Magearna - Spikes - TM090
  (801, 80100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 46),
  -- Magearna - Imprison - TM092
  (801, 80100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 47),
  -- Magearna - Flash Cannon - TM093
  (801, 80100, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 48),
  -- Magearna - Eerie Impulse - TM096
  (801, 80100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 49),
  -- Magearna - Skill Swap - TM098
  (801, 80100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 50),
  -- Magearna - Iron Head - TM099
  (801, 80100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 51),
  -- Magearna - Substitute - TM103
  (801, 80100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Magearna - Iron Defense - TM104
  (801, 80100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 53),
  -- Magearna - Trick - TM109
  (801, 80100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 54),
  -- Magearna - Aura Sphere - TM112
  (801, 80100, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 55),
  -- Magearna - Shadow Ball - TM114
  (801, 80100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 56),
  -- Magearna - Energy Ball - TM119
  (801, 80100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 57),
  -- Magearna - Psychic - TM120
  (801, 80100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 58),
  -- Magearna - Heavy Slam - TM121
  (801, 80100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 59),
  -- Magearna - Encore - TM122
  (801, 80100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 60),
  -- Magearna - Ice Spinner - TM124
  (801, 80100, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 61),
  -- Magearna - Thunderbolt - TM126
  (801, 80100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 62),
  -- Magearna - Play Rough - TM127
  (801, 80100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 63),
  -- Magearna - Calm Mind - TM129
  (801, 80100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 64),
  -- Magearna - Helping Hand - TM130
  (801, 80100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 65),
  -- Magearna - Baton Pass - TM132
  (801, 80100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 66),
  -- Magearna - Ice Beam - TM135
  (801, 80100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 67),
  -- Magearna - Misty Terrain - TM139
  (801, 80100, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 68),
  -- Magearna - Giga Impact - TM152
  (801, 80100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 69),
  -- Magearna - Focus Blast - TM158
  (801, 80100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 70),
  -- Magearna - Trick Room - TM161
  (801, 80100, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 71),
  -- Magearna - Hyper Beam - TM163
  (801, 80100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 72),
  -- Magearna - Solar Beam - TM168
  (801, 80100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 73),
  -- Magearna - Steel Beam - TM170
  (801, 80100, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 74),
  -- Magearna - Tera Blast - TM171
  (801, 80100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 75),
  -- Grookey - Scratch - Level 1
  (810, 81000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grookey - Growl - Level 1
  (810, 81000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grookey - Branch Poke - Level 6
  (810, 81000, 785, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Grookey - Taunt - Level 8
  (810, 81000, 269, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Grookey - Razor Leaf - Level 12
  (810, 81000, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grookey - Screech - Level 17
  (810, 81000, 103, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Grookey - Knock Off - Level 20
  (810, 81000, 282, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Grookey - Slam - Level 24
  (810, 81000, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Grookey - Uproar - Level 28
  (810, 81000, 253, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Grookey - Wood Hammer - Level 32
  (810, 81000, 452, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Grookey - Endeavor - Level 36
  (810, 81000, 283, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Grookey - Take Down - TM001
  (810, 81000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Grookey - Protect - TM007
  (810, 81000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Grookey - Low Kick - TM012
  (810, 81000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 14),
  -- Grookey - Acrobatics - TM014
  (810, 81000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 15),
  -- Grookey - Thief - TM018
  (810, 81000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Grookey - Trailblaze - TM020
  (810, 81000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 17),
  -- Grookey - Facade - TM025
  (810, 81000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Grookey - Swift - TM032
  (810, 81000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 19),
  -- Grookey - Magical Leaf - TM033
  (810, 81000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Grookey - Fling - TM043
  (810, 81000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Grookey - Endure - TM047
  (810, 81000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Grookey - Sunny Day - TM049
  (810, 81000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Grookey - Bullet Seed - TM056
  (810, 81000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Grookey - False Swipe - TM057
  (810, 81000, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 25),
  -- Grookey - U-turn - TM060
  (810, 81000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Grookey - Body Slam - TM066
  (810, 81000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Grookey - Sleep Talk - TM070
  (810, 81000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Grookey - Seed Bomb - TM071
  (810, 81000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Grookey - Drain Punch - TM073
  (810, 81000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 30),
  -- Grookey - Grass Knot - TM081
  (810, 81000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Grookey - Rest - TM085
  (810, 81000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Grookey - Taunt - TM087
  (810, 81000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Grookey - Swords Dance - TM088
  (810, 81000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Grookey - Substitute - TM103
  (810, 81000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Grookey - Giga Drain - TM111
  (810, 81000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Grookey - Energy Ball - TM119
  (810, 81000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Grookey - Grassy Terrain - TM137
  (810, 81000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Grookey - Grass Pledge - TM146
  (810, 81000, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 39),
  -- Grookey - Leaf Storm - TM159
  (810, 81000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 40),
  -- Grookey - Solar Beam - TM168
  (810, 81000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Grookey - Tera Blast - TM171
  (810, 81000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Grookey - Strength - Egg
  (810, 81000, 70, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Grookey - Leech Seed - Egg
  (810, 81000, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Grookey - Growth - Egg
  (810, 81000, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Grookey - Fake Out - Egg
  (810, 81000, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Grookey - Hammer Arm - Egg
  (810, 81000, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Grookey - Worry Seed - Egg
  (810, 81000, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Thwackey - Scratch - Level 1
  (811, 81100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thwackey - Growl - Level 1
  (811, 81100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thwackey - Taunt - Level 1
  (811, 81100, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thwackey - Branch Poke - Level 1
  (811, 81100, 785, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Thwackey - Razor Leaf - Level 12
  (811, 81100, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Thwackey - Screech - Level 19
  (811, 81100, 103, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Thwackey - Knock Off - Level 24
  (811, 81100, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Thwackey - Slam - Level 30
  (811, 81100, 21, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Thwackey - Uproar - Level 36
  (811, 81100, 253, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Thwackey - Wood Hammer - Level 42
  (811, 81100, 452, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Thwackey - Endeavor - Level 48
  (811, 81100, 283, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Thwackey - Take Down - TM001
  (811, 81100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Thwackey - Scary Face - TM006
  (811, 81100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 13),
  -- Thwackey - Protect - TM007
  (811, 81100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Thwackey - Low Kick - TM012
  (811, 81100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 15),
  -- Thwackey - Acrobatics - TM014
  (811, 81100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Thwackey - Thief - TM018
  (811, 81100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Thwackey - Trailblaze - TM020
  (811, 81100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Thwackey - Facade - TM025
  (811, 81100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Thwackey - Swift - TM032
  (811, 81100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Thwackey - Magical Leaf - TM033
  (811, 81100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Thwackey - Fling - TM043
  (811, 81100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Thwackey - Endure - TM047
  (811, 81100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Thwackey - Sunny Day - TM049
  (811, 81100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Thwackey - Bullet Seed - TM056
  (811, 81100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Thwackey - False Swipe - TM057
  (811, 81100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 26),
  -- Thwackey - U-turn - TM060
  (811, 81100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Thwackey - Body Slam - TM066
  (811, 81100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Thwackey - Sleep Talk - TM070
  (811, 81100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Thwackey - Seed Bomb - TM071
  (811, 81100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Thwackey - Drain Punch - TM073
  (811, 81100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 31),
  -- Thwackey - Grass Knot - TM081
  (811, 81100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Thwackey - Rest - TM085
  (811, 81100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Thwackey - Taunt - TM087
  (811, 81100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Thwackey - Swords Dance - TM088
  (811, 81100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 35),
  -- Thwackey - Substitute - TM103
  (811, 81100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Thwackey - Giga Drain - TM111
  (811, 81100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Thwackey - Energy Ball - TM119
  (811, 81100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Thwackey - Grassy Terrain - TM137
  (811, 81100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 39),
  -- Thwackey - Grass Pledge - TM146
  (811, 81100, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 40),
  -- Thwackey - Leaf Storm - TM159
  (811, 81100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Thwackey - Solar Beam - TM168
  (811, 81100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Thwackey - Tera Blast - TM171
  (811, 81100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Thwackey - Strength - Egg
  (811, 81100, 70, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Thwackey - Leech Seed - Egg
  (811, 81100, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Thwackey - Growth - Egg
  (811, 81100, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Thwackey - Fake Out - Egg
  (811, 81100, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Thwackey - Hammer Arm - Egg
  (811, 81100, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Thwackey - Worry Seed - Egg
  (811, 81100, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Thwackey - Double Hit - Evolution
  (811, 81100, 458, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Rillaboom - Scratch - Level 1
  (812, 81200, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rillaboom - Growl - Level 1
  (812, 81200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rillaboom - Taunt - Level 1
  (812, 81200, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rillaboom - Double Hit - Level 1
  (812, 81200, 458, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rillaboom - Noble Roar - Level 1
  (812, 81200, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rillaboom - Grassy Terrain - Level 1
  (812, 81200, 580, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rillaboom - Branch Poke - Level 1
  (812, 81200, 785, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rillaboom - Razor Leaf - Level 12
  (812, 81200, 75, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Rillaboom - Screech - Level 19
  (812, 81200, 103, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Rillaboom - Knock Off - Level 24
  (812, 81200, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Rillaboom - Slam - Level 30
  (812, 81200, 21, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Rillaboom - Uproar - Level 38
  (812, 81200, 253, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Rillaboom - Wood Hammer - Level 46
  (812, 81200, 452, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Rillaboom - Endeavor - Level 54
  (812, 81200, 283, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Rillaboom - Boomburst - Level 62
  (812, 81200, 586, 23, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Rillaboom - Take Down - TM001
  (812, 81200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Rillaboom - Scary Face - TM006
  (812, 81200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Rillaboom - Protect - TM007
  (812, 81200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Rillaboom - Low Kick - TM012
  (812, 81200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Rillaboom - Acrobatics - TM014
  (812, 81200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Rillaboom - Thief - TM018
  (812, 81200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Rillaboom - Trailblaze - TM020
  (812, 81200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Rillaboom - Facade - TM025
  (812, 81200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Rillaboom - Bulldoze - TM028
  (812, 81200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Rillaboom - Snarl - TM030
  (812, 81200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Rillaboom - Swift - TM032
  (812, 81200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Rillaboom - Magical Leaf - TM033
  (812, 81200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Rillaboom - Mud Shot - TM035
  (812, 81200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Rillaboom - Low Sweep - TM039
  (812, 81200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Rillaboom - Fling - TM043
  (812, 81200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Rillaboom - Endure - TM047
  (812, 81200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Rillaboom - Sunny Day - TM049
  (812, 81200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Rillaboom - Bullet Seed - TM056
  (812, 81200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Rillaboom - False Swipe - TM057
  (812, 81200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Rillaboom - Brick Break - TM058
  (812, 81200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Rillaboom - U-turn - TM060
  (812, 81200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Rillaboom - Bulk Up - TM064
  (812, 81200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Rillaboom - Body Slam - TM066
  (812, 81200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Rillaboom - Sleep Talk - TM070
  (812, 81200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Rillaboom - Seed Bomb - TM071
  (812, 81200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Rillaboom - Drain Punch - TM073
  (812, 81200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Rillaboom - Grass Knot - TM081
  (812, 81200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Rillaboom - Stomping Tantrum - TM084
  (812, 81200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 43),
  -- Rillaboom - Rest - TM085
  (812, 81200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Rillaboom - Taunt - TM087
  (812, 81200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Rillaboom - Swords Dance - TM088
  (812, 81200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Rillaboom - Body Press - TM089
  (812, 81200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 47),
  -- Rillaboom - Substitute - TM103
  (812, 81200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Rillaboom - Giga Drain - TM111
  (812, 81200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 49),
  -- Rillaboom - Hyper Voice - TM117
  (812, 81200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Rillaboom - Energy Ball - TM119
  (812, 81200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 51),
  -- Rillaboom - Earth Power - TM133
  (812, 81200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Rillaboom - Grassy Terrain - TM137
  (812, 81200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 53),
  -- Rillaboom - Grass Pledge - TM146
  (812, 81200, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 54),
  -- Rillaboom - Earthquake - TM149
  (812, 81200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Rillaboom - Giga Impact - TM152
  (812, 81200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Rillaboom - Frenzy Plant - TM155
  (812, 81200, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 57),
  -- Rillaboom - Focus Blast - TM158
  (812, 81200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Rillaboom - Leaf Storm - TM159
  (812, 81200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 59),
  -- Rillaboom - Hyper Beam - TM163
  (812, 81200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Rillaboom - Solar Beam - TM168
  (812, 81200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Rillaboom - Tera Blast - TM171
  (812, 81200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Rillaboom - Strength - Egg
  (812, 81200, 70, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rillaboom - Leech Seed - Egg
  (812, 81200, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rillaboom - Growth - Egg
  (812, 81200, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rillaboom - Fake Out - Egg
  (812, 81200, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rillaboom - Hammer Arm - Egg
  (812, 81200, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rillaboom - Worry Seed - Egg
  (812, 81200, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rillaboom - Drum Beating - Evolution
  (812, 81200, 778, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Scorbunny - Tackle - Level 1
  (813, 81300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scorbunny - Growl - Level 1
  (813, 81300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scorbunny - Ember - Level 6
  (813, 81300, 52, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scorbunny - Quick Attack - Level 8
  (813, 81300, 98, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scorbunny - Double Kick - Level 12
  (813, 81300, 24, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scorbunny - Flame Charge - Level 17
  (813, 81300, 488, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Scorbunny - Agility - Level 20
  (813, 81300, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scorbunny - Headbutt - Level 24
  (813, 81300, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scorbunny - Counter - Level 28
  (813, 81300, 68, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scorbunny - Bounce - Level 32
  (813, 81300, 340, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scorbunny - Double-Edge - Level 36
  (813, 81300, 38, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scorbunny - Take Down - TM001
  (813, 81300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Scorbunny - Agility - TM004
  (813, 81300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 13),
  -- Scorbunny - Protect - TM007
  (813, 81300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Scorbunny - Fire Fang - TM008
  (813, 81300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 15),
  -- Scorbunny - Low Kick - TM012
  (813, 81300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Scorbunny - Acrobatics - TM014
  (813, 81300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Scorbunny - Trailblaze - TM020
  (813, 81300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Scorbunny - Fire Spin - TM024
  (813, 81300, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Scorbunny - Facade - TM025
  (813, 81300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Scorbunny - Swift - TM032
  (813, 81300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Scorbunny - Flame Charge - TM038
  (813, 81300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 22),
  -- Scorbunny - Low Sweep - TM039
  (813, 81300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 23),
  -- Scorbunny - Endure - TM047
  (813, 81300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Scorbunny - Sunny Day - TM049
  (813, 81300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Scorbunny - U-turn - TM060
  (813, 81300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Scorbunny - Sleep Talk - TM070
  (813, 81300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Scorbunny - Electro Ball - TM072
  (813, 81300, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 28),
  -- Scorbunny - Rest - TM085
  (813, 81300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Scorbunny - Taunt - TM087
  (813, 81300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 30),
  -- Scorbunny - Gunk Shot - TM102
  (813, 81300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 31),
  -- Scorbunny - Substitute - TM103
  (813, 81300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Scorbunny - Heat Wave - TM118
  (813, 81300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 33),
  -- Scorbunny - Flamethrower - TM125
  (813, 81300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 34),
  -- Scorbunny - Helping Hand - TM130
  (813, 81300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 35),
  -- Scorbunny - Baton Pass - TM132
  (813, 81300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 36),
  -- Scorbunny - Reversal - TM134
  (813, 81300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 37),
  -- Scorbunny - Fire Blast - TM141
  (813, 81300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 38),
  -- Scorbunny - Fire Pledge - TM144
  (813, 81300, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 39),
  -- Scorbunny - Overheat - TM157
  (813, 81300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 40),
  -- Scorbunny - Flare Blitz - TM165
  (813, 81300, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 41),
  -- Scorbunny - Tera Blast - TM171
  (813, 81300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Scorbunny - Sand Attack - Egg
  (813, 81300, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Scorbunny - High Jump Kick - Egg
  (813, 81300, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Scorbunny - Super Fang - Egg
  (813, 81300, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Scorbunny - Sucker Punch - Egg
  (813, 81300, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Raboot - Tackle - Level 1
  (814, 81400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raboot - Growl - Level 1
  (814, 81400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raboot - Ember - Level 1
  (814, 81400, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raboot - Quick Attack - Level 1
  (814, 81400, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raboot - Double Kick - Level 12
  (814, 81400, 24, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Raboot - Flame Charge - Level 19
  (814, 81400, 488, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Raboot - Agility - Level 24
  (814, 81400, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Raboot - Headbutt - Level 30
  (814, 81400, 29, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Raboot - Counter - Level 36
  (814, 81400, 68, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Raboot - Bounce - Level 42
  (814, 81400, 340, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Raboot - Double-Edge - Level 48
  (814, 81400, 38, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Raboot - Take Down - TM001
  (814, 81400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Raboot - Agility - TM004
  (814, 81400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 13),
  -- Raboot - Protect - TM007
  (814, 81400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Raboot - Fire Fang - TM008
  (814, 81400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 15),
  -- Raboot - Low Kick - TM012
  (814, 81400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Raboot - Acrobatics - TM014
  (814, 81400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Raboot - Trailblaze - TM020
  (814, 81400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Raboot - Fire Spin - TM024
  (814, 81400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Raboot - Facade - TM025
  (814, 81400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Raboot - Swift - TM032
  (814, 81400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Raboot - Mud Shot - TM035
  (814, 81400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Raboot - Flame Charge - TM038
  (814, 81400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Raboot - Low Sweep - TM039
  (814, 81400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 24),
  -- Raboot - Endure - TM047
  (814, 81400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Raboot - Sunny Day - TM049
  (814, 81400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Raboot - U-turn - TM060
  (814, 81400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Raboot - Bulk Up - TM064
  (814, 81400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 28),
  -- Raboot - Sleep Talk - TM070
  (814, 81400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Raboot - Electro Ball - TM072
  (814, 81400, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 30),
  -- Raboot - Rest - TM085
  (814, 81400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Raboot - Taunt - TM087
  (814, 81400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 32),
  -- Raboot - Swords Dance - TM088
  (814, 81400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Raboot - Gunk Shot - TM102
  (814, 81400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 34),
  -- Raboot - Substitute - TM103
  (814, 81400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Raboot - Heat Wave - TM118
  (814, 81400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Raboot - Flamethrower - TM125
  (814, 81400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 37),
  -- Raboot - Helping Hand - TM130
  (814, 81400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Raboot - Baton Pass - TM132
  (814, 81400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 39),
  -- Raboot - Reversal - TM134
  (814, 81400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 40),
  -- Raboot - Fire Blast - TM141
  (814, 81400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Raboot - Fire Pledge - TM144
  (814, 81400, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 42),
  -- Raboot - Overheat - TM157
  (814, 81400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 43),
  -- Raboot - Flare Blitz - TM165
  (814, 81400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Raboot - Tera Blast - TM171
  (814, 81400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Raboot - Sand Attack - Egg
  (814, 81400, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Raboot - High Jump Kick - Egg
  (814, 81400, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Raboot - Super Fang - Egg
  (814, 81400, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Raboot - Sucker Punch - Egg
  (814, 81400, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cinderace - Tackle - Level 1
  (815, 81500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinderace - Growl - Level 1
  (815, 81500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinderace - Ember - Level 1
  (815, 81500, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinderace - Quick Attack - Level 1
  (815, 81500, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinderace - Feint - Level 1
  (815, 81500, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cinderace - Double Kick - Level 12
  (815, 81500, 24, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cinderace - Flame Charge - Level 19
  (815, 81500, 488, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Cinderace - Agility - Level 24
  (815, 81500, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Cinderace - Headbutt - Level 30
  (815, 81500, 29, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Cinderace - Counter - Level 38
  (815, 81500, 68, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Cinderace - Bounce - Level 46
  (815, 81500, 340, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Cinderace - Double-Edge - Level 54
  (815, 81500, 38, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Cinderace - Court Change - Level 62
  (815, 81500, 756, 23, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Cinderace - Take Down - TM001
  (815, 81500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Cinderace - Agility - TM004
  (815, 81500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Cinderace - Mud-Slap - TM005
  (815, 81500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Cinderace - Protect - TM007
  (815, 81500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Cinderace - Fire Fang - TM008
  (815, 81500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Cinderace - Low Kick - TM012
  (815, 81500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Cinderace - Acrobatics - TM014
  (815, 81500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Cinderace - Trailblaze - TM020
  (815, 81500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Cinderace - Fire Spin - TM024
  (815, 81500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Cinderace - Facade - TM025
  (815, 81500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Cinderace - Snarl - TM030
  (815, 81500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Cinderace - Swift - TM032
  (815, 81500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Cinderace - Mud Shot - TM035
  (815, 81500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Cinderace - Flame Charge - TM038
  (815, 81500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 27),
  -- Cinderace - Low Sweep - TM039
  (815, 81500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Cinderace - Fling - TM043
  (815, 81500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Cinderace - Endure - TM047
  (815, 81500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Cinderace - Sunny Day - TM049
  (815, 81500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Cinderace - Zen Headbutt - TM059
  (815, 81500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Cinderace - U-turn - TM060
  (815, 81500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Cinderace - Bulk Up - TM064
  (815, 81500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Cinderace - Fire Punch - TM067
  (815, 81500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Cinderace - Sleep Talk - TM070
  (815, 81500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Cinderace - Electro Ball - TM072
  (815, 81500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 37),
  -- Cinderace - Rest - TM085
  (815, 81500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Cinderace - Taunt - TM087
  (815, 81500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Cinderace - Swords Dance - TM088
  (815, 81500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Cinderace - Iron Head - TM099
  (815, 81500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Cinderace - Gunk Shot - TM102
  (815, 81500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 42),
  -- Cinderace - Substitute - TM103
  (815, 81500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Cinderace - Will-O-Wisp - TM107
  (815, 81500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Cinderace - Shadow Ball - TM114
  (815, 81500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Cinderace - Heat Wave - TM118
  (815, 81500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 46),
  -- Cinderace - Flamethrower - TM125
  (815, 81500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Cinderace - Helping Hand - TM130
  (815, 81500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Cinderace - Baton Pass - TM132
  (815, 81500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Cinderace - Reversal - TM134
  (815, 81500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Cinderace - Fire Blast - TM141
  (815, 81500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 51),
  -- Cinderace - Fire Pledge - TM144
  (815, 81500, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 52),
  -- Cinderace - Giga Impact - TM152
  (815, 81500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Cinderace - Blast Burn - TM153
  (815, 81500, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 54),
  -- Cinderace - Overheat - TM157
  (815, 81500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 55),
  -- Cinderace - Focus Blast - TM158
  (815, 81500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Cinderace - Hyper Beam - TM163
  (815, 81500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Cinderace - Flare Blitz - TM165
  (815, 81500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 58),
  -- Cinderace - Tera Blast - TM171
  (815, 81500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Cinderace - Sand Attack - Egg
  (815, 81500, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cinderace - High Jump Kick - Egg
  (815, 81500, 136, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cinderace - Super Fang - Egg
  (815, 81500, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cinderace - Sucker Punch - Egg
  (815, 81500, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cinderace - Pyro Ball - Evolution
  (815, 81500, 780, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Sobble - Pound - Level 1
  (816, 81600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sobble - Growl - Level 1
  (816, 81600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sobble - Water Gun - Level 6
  (816, 81600, 55, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sobble - Bind - Level 8
  (816, 81600, 20, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sobble - Water Pulse - Level 12
  (816, 81600, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sobble - Tearful Look - Level 17
  (816, 81600, 715, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sobble - Sucker Punch - Level 20
  (816, 81600, 389, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sobble - U-turn - Level 24
  (816, 81600, 369, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sobble - Liquidation - Level 28
  (816, 81600, 710, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sobble - Soak - Level 32
  (816, 81600, 487, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Sobble - Rain Dance - Level 36
  (816, 81600, 240, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sobble - Take Down - TM001
  (816, 81600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Sobble - Protect - TM007
  (816, 81600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Sobble - Water Pulse - TM011
  (816, 81600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 14),
  -- Sobble - Chilling Water - TM022
  (816, 81600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 15),
  -- Sobble - Facade - TM025
  (816, 81600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Sobble - Swift - TM032
  (816, 81600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Sobble - Mud Shot - TM035
  (816, 81600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 18),
  -- Sobble - Endure - TM047
  (816, 81600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Sobble - Rain Dance - TM050
  (816, 81600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Sobble - U-turn - TM060
  (816, 81600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 21),
  -- Sobble - Sleep Talk - TM070
  (816, 81600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 22),
  -- Sobble - Reflect - TM074
  (816, 81600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 23),
  -- Sobble - Light Screen - TM075
  (816, 81600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 24),
  -- Sobble - Waterfall - TM077
  (816, 81600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 25),
  -- Sobble - Rest - TM085
  (816, 81600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Sobble - Substitute - TM103
  (816, 81600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 27),
  -- Sobble - Liquidation - TM110
  (816, 81600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 28),
  -- Sobble - Surf - TM123
  (816, 81600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 29),
  -- Sobble - Hydro Pump - TM142
  (816, 81600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 30),
  -- Sobble - Water Pledge - TM145
  (816, 81600, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 31),
  -- Sobble - Tera Blast - TM171
  (816, 81600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 32),
  -- Sobble - Mist - Egg
  (816, 81600, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Sobble - Double Team - Egg
  (816, 81600, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Sobble - Haze - Egg
  (816, 81600, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Sobble - Aqua Ring - Egg
  (816, 81600, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sobble - Ice Shard - Egg
  (816, 81600, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sobble - Aqua Jet - Egg
  (816, 81600, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sobble - Fell Stinger - Egg
  (816, 81600, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Drizzile - Pound - Level 1
  (817, 81700, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drizzile - Bind - Level 1
  (817, 81700, 20, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drizzile - Growl - Level 1
  (817, 81700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drizzile - Water Gun - Level 1
  (817, 81700, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drizzile - Water Pulse - Level 12
  (817, 81700, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drizzile - Tearful Look - Level 19
  (817, 81700, 715, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Drizzile - Sucker Punch - Level 24
  (817, 81700, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Drizzile - U-turn - Level 30
  (817, 81700, 369, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Drizzile - Liquidation - Level 36
  (817, 81700, 710, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Drizzile - Soak - Level 42
  (817, 81700, 487, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Drizzile - Rain Dance - Level 48
  (817, 81700, 240, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Drizzile - Take Down - TM001
  (817, 81700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Drizzile - Protect - TM007
  (817, 81700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Drizzile - Water Pulse - TM011
  (817, 81700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 14),
  -- Drizzile - Chilling Water - TM022
  (817, 81700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 15),
  -- Drizzile - Facade - TM025
  (817, 81700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Drizzile - Swift - TM032
  (817, 81700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Drizzile - Mud Shot - TM035
  (817, 81700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 18),
  -- Drizzile - Fling - TM043
  (817, 81700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 19),
  -- Drizzile - Endure - TM047
  (817, 81700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Drizzile - Rain Dance - TM050
  (817, 81700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Drizzile - U-turn - TM060
  (817, 81700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 22),
  -- Drizzile - Sleep Talk - TM070
  (817, 81700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Drizzile - Reflect - TM074
  (817, 81700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 24),
  -- Drizzile - Light Screen - TM075
  (817, 81700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 25),
  -- Drizzile - Waterfall - TM077
  (817, 81700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 26),
  -- Drizzile - Rest - TM085
  (817, 81700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Drizzile - Substitute - TM103
  (817, 81700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Drizzile - Liquidation - TM110
  (817, 81700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 29),
  -- Drizzile - Surf - TM123
  (817, 81700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 30),
  -- Drizzile - Baton Pass - TM132
  (817, 81700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 31),
  -- Drizzile - Hydro Pump - TM142
  (817, 81700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 32),
  -- Drizzile - Water Pledge - TM145
  (817, 81700, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 33),
  -- Drizzile - Tera Blast - TM171
  (817, 81700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 34),
  -- Drizzile - Mist - Egg
  (817, 81700, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Drizzile - Double Team - Egg
  (817, 81700, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Drizzile - Haze - Egg
  (817, 81700, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Drizzile - Aqua Ring - Egg
  (817, 81700, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Drizzile - Ice Shard - Egg
  (817, 81700, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Drizzile - Aqua Jet - Egg
  (817, 81700, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Drizzile - Fell Stinger - Egg
  (817, 81700, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Inteleon - Pound - Level 1
  (818, 81800, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Inteleon - Bind - Level 1
  (818, 81800, 20, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Inteleon - Growl - Level 1
  (818, 81800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Inteleon - Water Gun - Level 1
  (818, 81800, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Inteleon - Acrobatics - Level 1
  (818, 81800, 512, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Inteleon - Water Pulse - Level 12
  (818, 81800, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Inteleon - Tearful Look - Level 19
  (818, 81800, 715, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Inteleon - Sucker Punch - Level 24
  (818, 81800, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Inteleon - U-turn - Level 30
  (818, 81800, 369, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Inteleon - Liquidation - Level 38
  (818, 81800, 710, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Inteleon - Soak - Level 46
  (818, 81800, 487, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Inteleon - Rain Dance - Level 54
  (818, 81800, 240, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Inteleon - Hydro Pump - Level 62
  (818, 81800, 56, 23, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Inteleon - Take Down - TM001
  (818, 81800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Inteleon - Agility - TM004
  (818, 81800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Inteleon - Protect - TM007
  (818, 81800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Inteleon - Water Pulse - TM011
  (818, 81800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Inteleon - Acrobatics - TM014
  (818, 81800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Inteleon - Chilling Water - TM022
  (818, 81800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Inteleon - Facade - TM025
  (818, 81800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Inteleon - Swift - TM032
  (818, 81800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Inteleon - Icy Wind - TM034
  (818, 81800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Inteleon - Mud Shot - TM035
  (818, 81800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Inteleon - Air Cutter - TM040
  (818, 81800, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Inteleon - Fling - TM043
  (818, 81800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Inteleon - Endure - TM047
  (818, 81800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Inteleon - Rain Dance - TM050
  (818, 81800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Inteleon - Snowscape - TM052
  (818, 81800, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Inteleon - U-turn - TM060
  (818, 81800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Inteleon - Air Slash - TM065
  (818, 81800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Inteleon - Sleep Talk - TM070
  (818, 81800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Inteleon - Reflect - TM074
  (818, 81800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Inteleon - Light Screen - TM075
  (818, 81800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Inteleon - Waterfall - TM077
  (818, 81800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Inteleon - Metronome - TM080
  (818, 81800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 35),
  -- Inteleon - Rest - TM085
  (818, 81800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Inteleon - Taunt - TM087
  (818, 81800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Inteleon - Swords Dance - TM088
  (818, 81800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Inteleon - Dark Pulse - TM094
  (818, 81800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Inteleon - Substitute - TM103
  (818, 81800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Inteleon - Liquidation - TM110
  (818, 81800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 41),
  -- Inteleon - Shadow Ball - TM114
  (818, 81800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Inteleon - Surf - TM123
  (818, 81800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Inteleon - Baton Pass - TM132
  (818, 81800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 44),
  -- Inteleon - Ice Beam - TM135
  (818, 81800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Inteleon - Hydro Pump - TM142
  (818, 81800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 46),
  -- Inteleon - Blizzard - TM143
  (818, 81800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 47),
  -- Inteleon - Water Pledge - TM145
  (818, 81800, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 48),
  -- Inteleon - Giga Impact - TM152
  (818, 81800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Inteleon - Hydro Cannon - TM154
  (818, 81800, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 50),
  -- Inteleon - Hyper Beam - TM163
  (818, 81800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Inteleon - Tera Blast - TM171
  (818, 81800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Inteleon - Mist - Egg
  (818, 81800, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Inteleon - Double Team - Egg
  (818, 81800, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Inteleon - Haze - Egg
  (818, 81800, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Inteleon - Aqua Ring - Egg
  (818, 81800, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Inteleon - Ice Shard - Egg
  (818, 81800, 420, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Inteleon - Aqua Jet - Egg
  (818, 81800, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Inteleon - Fell Stinger - Egg
  (818, 81800, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Inteleon - Snipe Shot - Evolution
  (818, 81800, 745, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Skwovet - Tackle - Level 1
  (819, 81900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skwovet - Tail Whip - Level 1
  (819, 81900, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skwovet - Bite - Level 5
  (819, 81900, 44, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Skwovet - Stuff Cheeks - Level 10
  (819, 81900, 747, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Skwovet - Stockpile - Level 15
  (819, 81900, 254, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Skwovet - Spit Up - Level 15
  (819, 81900, 255, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Skwovet - Swallow - Level 15
  (819, 81900, 256, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Skwovet - Body Slam - Level 20
  (819, 81900, 34, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skwovet - Rest - Level 25
  (819, 81900, 156, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Skwovet - Counter - Level 30
  (819, 81900, 68, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Skwovet - Bullet Seed - Level 35
  (819, 81900, 331, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Skwovet - Super Fang - Level 40
  (819, 81900, 162, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Skwovet - Belch - Level 45
  (819, 81900, 562, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Skwovet - Take Down - TM001
  (819, 81900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Skwovet - Mud-Slap - TM005
  (819, 81900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Skwovet - Protect - TM007
  (819, 81900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Skwovet - Thief - TM018
  (819, 81900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Skwovet - Trailblaze - TM020
  (819, 81900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Skwovet - Facade - TM025
  (819, 81900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Skwovet - Mud Shot - TM035
  (819, 81900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Skwovet - Fling - TM043
  (819, 81900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Skwovet - Endure - TM047
  (819, 81900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Skwovet - Dig - TM055
  (819, 81900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 23),
  -- Skwovet - Bullet Seed - TM056
  (819, 81900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Skwovet - Body Slam - TM066
  (819, 81900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Skwovet - Sleep Talk - TM070
  (819, 81900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Skwovet - Seed Bomb - TM071
  (819, 81900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Skwovet - Rest - TM085
  (819, 81900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Skwovet - Substitute - TM103
  (819, 81900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Skwovet - Crunch - TM108
  (819, 81900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 30),
  -- Skwovet - Hyper Voice - TM117
  (819, 81900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 31),
  -- Skwovet - Amnesia - TM128
  (819, 81900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 32),
  -- Skwovet - Tera Blast - TM171
  (819, 81900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 33),
  -- Skwovet - Defense Curl - Egg
  (819, 81900, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Skwovet - Belly Drum - Egg
  (819, 81900, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Skwovet - Rollout - Egg
  (819, 81900, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Skwovet - Last Resort - Egg
  (819, 81900, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Greedent - Tackle - Level 1
  (820, 82000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greedent - Tail Whip - Level 1
  (820, 82000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greedent - Bite - Level 1
  (820, 82000, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Greedent - Stuff Cheeks - Level 1
  (820, 82000, 747, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Greedent - Stockpile - Level 15
  (820, 82000, 254, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Greedent - Spit Up - Level 15
  (820, 82000, 255, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Greedent - Swallow - Level 15
  (820, 82000, 256, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Greedent - Body Slam - Level 20
  (820, 82000, 34, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Greedent - Rest - Level 27
  (820, 82000, 156, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Greedent - Counter - Level 34
  (820, 82000, 68, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Greedent - Bullet Seed - Level 41
  (820, 82000, 331, 23, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Greedent - Super Fang - Level 48
  (820, 82000, 162, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Greedent - Belch - Level 55
  (820, 82000, 562, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Greedent - Take Down - TM001
  (820, 82000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Greedent - Mud-Slap - TM005
  (820, 82000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Greedent - Protect - TM007
  (820, 82000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Greedent - Fire Fang - TM008
  (820, 82000, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 17),
  -- Greedent - Thunder Fang - TM009
  (820, 82000, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 18),
  -- Greedent - Ice Fang - TM010
  (820, 82000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Greedent - Thief - TM018
  (820, 82000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Greedent - Trailblaze - TM020
  (820, 82000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Greedent - Facade - TM025
  (820, 82000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Greedent - Bulldoze - TM028
  (820, 82000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Greedent - Mud Shot - TM035
  (820, 82000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Greedent - Fling - TM043
  (820, 82000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Greedent - Endure - TM047
  (820, 82000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Greedent - Sunny Day - TM049
  (820, 82000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Greedent - Rain Dance - TM050
  (820, 82000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Greedent - Dig - TM055
  (820, 82000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Greedent - Bullet Seed - TM056
  (820, 82000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Greedent - Psychic Fangs - TM063
  (820, 82000, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 31),
  -- Greedent - Body Slam - TM066
  (820, 82000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Greedent - Sleep Talk - TM070
  (820, 82000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Greedent - Seed Bomb - TM071
  (820, 82000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Greedent - Stomping Tantrum - TM084
  (820, 82000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Greedent - Rest - TM085
  (820, 82000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Greedent - Swords Dance - TM088
  (820, 82000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Greedent - Body Press - TM089
  (820, 82000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Greedent - Substitute - TM103
  (820, 82000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Greedent - Crunch - TM108
  (820, 82000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 40),
  -- Greedent - Hyper Voice - TM117
  (820, 82000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Greedent - Amnesia - TM128
  (820, 82000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 42),
  -- Greedent - Wild Charge - TM147
  (820, 82000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 43),
  -- Greedent - Earthquake - TM149
  (820, 82000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 44),
  -- Greedent - Giga Impact - TM152
  (820, 82000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Greedent - Hyper Beam - TM163
  (820, 82000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Greedent - Tera Blast - TM171
  (820, 82000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Greedent - Defense Curl - Egg
  (820, 82000, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Greedent - Belly Drum - Egg
  (820, 82000, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Greedent - Rollout - Egg
  (820, 82000, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Greedent - Last Resort - Egg
  (820, 82000, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Greedent - Covet - Evolution
  (820, 82000, 343, 23, NULL, 7, NULL, NULL, NULL, NULL, 52),
  -- Rookidee - Leer - Level 1
  (821, 82100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rookidee - Peck - Level 1
  (821, 82100, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rookidee - Power Trip - Level 4
  (821, 82100, 681, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rookidee - Hone Claws - Level 8
  (821, 82100, 468, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rookidee - Fury Attack - Level 12
  (821, 82100, 31, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rookidee - Pluck - Level 16
  (821, 82100, 365, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Rookidee - Taunt - Level 20
  (821, 82100, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rookidee - Scary Face - Level 24
  (821, 82100, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Rookidee - Drill Peck - Level 28
  (821, 82100, 65, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Rookidee - Swagger - Level 32
  (821, 82100, 207, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Rookidee - Brave Bird - Level 36
  (821, 82100, 413, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Rookidee - Take Down - TM001
  (821, 82100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Rookidee - Fake Tears - TM003
  (821, 82100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 13),
  -- Rookidee - Agility - TM004
  (821, 82100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Rookidee - Scary Face - TM006
  (821, 82100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Rookidee - Protect - TM007
  (821, 82100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Rookidee - Thief - TM018
  (821, 82100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Rookidee - Facade - TM025
  (821, 82100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Rookidee - Aerial Ace - TM027
  (821, 82100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Rookidee - Swift - TM032
  (821, 82100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Rookidee - Air Cutter - TM040
  (821, 82100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 21),
  -- Rookidee - Endure - TM047
  (821, 82100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Rookidee - U-turn - TM060
  (821, 82100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 23),
  -- Rookidee - Air Slash - TM065
  (821, 82100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 24),
  -- Rookidee - Sleep Talk - TM070
  (821, 82100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Rookidee - Rest - TM085
  (821, 82100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Rookidee - Taunt - TM087
  (821, 82100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 27),
  -- Rookidee - Fly - TM097
  (821, 82100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 28),
  -- Rookidee - Substitute - TM103
  (821, 82100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Rookidee - Tailwind - TM113
  (821, 82100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 30),
  -- Rookidee - Reversal - TM134
  (821, 82100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 31),
  -- Rookidee - Nasty Plot - TM140
  (821, 82100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 32),
  -- Rookidee - Brave Bird - TM164
  (821, 82100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 33),
  -- Rookidee - Tera Blast - TM171
  (821, 82100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 34),
  -- Rookidee - Sand Attack - Egg
  (821, 82100, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Rookidee - Sky Attack - Egg
  (821, 82100, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Rookidee - Spite - Egg
  (821, 82100, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Rookidee - Rock Smash - Egg
  (821, 82100, 249, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Rookidee - Roost - Egg
  (821, 82100, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Rookidee - Tailwind - Egg
  (821, 82100, 366, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Rookidee - Defog - Egg
  (821, 82100, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Corvisquire - Leer - Level 1
  (822, 82200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corvisquire - Peck - Level 1
  (822, 82200, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corvisquire - Hone Claws - Level 1
  (822, 82200, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Corvisquire - Power Trip - Level 1
  (822, 82200, 681, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Corvisquire - Fury Attack - Level 12
  (822, 82200, 31, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Corvisquire - Pluck - Level 16
  (822, 82200, 365, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Corvisquire - Taunt - Level 22
  (822, 82200, 269, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Corvisquire - Scary Face - Level 28
  (822, 82200, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Corvisquire - Drill Peck - Level 34
  (822, 82200, 65, 23, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Corvisquire - Swagger - Level 40
  (822, 82200, 207, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Corvisquire - Brave Bird - Level 46
  (822, 82200, 413, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Corvisquire - Take Down - TM001
  (822, 82200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Corvisquire - Fake Tears - TM003
  (822, 82200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 13),
  -- Corvisquire - Agility - TM004
  (822, 82200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Corvisquire - Scary Face - TM006
  (822, 82200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Corvisquire - Protect - TM007
  (822, 82200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Corvisquire - Thief - TM018
  (822, 82200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Corvisquire - Facade - TM025
  (822, 82200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Corvisquire - Aerial Ace - TM027
  (822, 82200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Corvisquire - Swift - TM032
  (822, 82200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Corvisquire - Air Cutter - TM040
  (822, 82200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 21),
  -- Corvisquire - Endure - TM047
  (822, 82200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Corvisquire - Sunny Day - TM049
  (822, 82200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Corvisquire - U-turn - TM060
  (822, 82200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 24),
  -- Corvisquire - Air Slash - TM065
  (822, 82200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 25),
  -- Corvisquire - Sleep Talk - TM070
  (822, 82200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Corvisquire - Rest - TM085
  (822, 82200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Corvisquire - Taunt - TM087
  (822, 82200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 28),
  -- Corvisquire - Fly - TM097
  (822, 82200, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 29),
  -- Corvisquire - Substitute - TM103
  (822, 82200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Corvisquire - Tailwind - TM113
  (822, 82200, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 31),
  -- Corvisquire - Reversal - TM134
  (822, 82200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 32),
  -- Corvisquire - Nasty Plot - TM140
  (822, 82200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 33),
  -- Corvisquire - Hurricane - TM160
  (822, 82200, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 34),
  -- Corvisquire - Brave Bird - TM164
  (822, 82200, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 35),
  -- Corvisquire - Tera Blast - TM171
  (822, 82200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Corvisquire - Sand Attack - Egg
  (822, 82200, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Corvisquire - Sky Attack - Egg
  (822, 82200, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Corvisquire - Spite - Egg
  (822, 82200, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Corvisquire - Rock Smash - Egg
  (822, 82200, 249, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Corvisquire - Roost - Egg
  (822, 82200, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Corvisquire - Tailwind - Egg
  (822, 82200, 366, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Corvisquire - Defog - Egg
  (822, 82200, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Corviknight - Leer - Level 1
  (823, 82300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corviknight - Peck - Level 1
  (823, 82300, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corviknight - Screech - Level 1
  (823, 82300, 103, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Corviknight - Metal Sound - Level 1
  (823, 82300, 319, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Corviknight - Iron Defense - Level 1
  (823, 82300, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Corviknight - Hone Claws - Level 1
  (823, 82300, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Corviknight - Power Trip - Level 1
  (823, 82300, 681, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Corviknight - Fury Attack - Level 12
  (823, 82300, 31, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Corviknight - Pluck - Level 16
  (823, 82300, 365, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Corviknight - Taunt - Level 22
  (823, 82300, 269, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Corviknight - Scary Face - Level 28
  (823, 82300, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Corviknight - Drill Peck - Level 34
  (823, 82300, 65, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Corviknight - Swagger - Level 42
  (823, 82300, 207, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Corviknight - Brave Bird - Level 50
  (823, 82300, 413, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Corviknight - Take Down - TM001
  (823, 82300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Corviknight - Fake Tears - TM003
  (823, 82300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Corviknight - Agility - TM004
  (823, 82300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Corviknight - Scary Face - TM006
  (823, 82300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Corviknight - Protect - TM007
  (823, 82300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Corviknight - Thief - TM018
  (823, 82300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Corviknight - Facade - TM025
  (823, 82300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Corviknight - Aerial Ace - TM027
  (823, 82300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Corviknight - Metal Claw - TM031
  (823, 82300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Corviknight - Swift - TM032
  (823, 82300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Corviknight - Air Cutter - TM040
  (823, 82300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Corviknight - Endure - TM047
  (823, 82300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Corviknight - Sunny Day - TM049
  (823, 82300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Corviknight - Rain Dance - TM050
  (823, 82300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Corviknight - U-turn - TM060
  (823, 82300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Corviknight - Bulk Up - TM064
  (823, 82300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 30),
  -- Corviknight - Air Slash - TM065
  (823, 82300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Corviknight - Body Slam - TM066
  (823, 82300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Corviknight - Sleep Talk - TM070
  (823, 82300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Corviknight - Reflect - TM074
  (823, 82300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Corviknight - Light Screen - TM075
  (823, 82300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Corviknight - Rest - TM085
  (823, 82300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Corviknight - Taunt - TM087
  (823, 82300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Corviknight - Body Press - TM089
  (823, 82300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Corviknight - Flash Cannon - TM093
  (823, 82300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Corviknight - Fly - TM097
  (823, 82300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 40),
  -- Corviknight - Iron Head - TM099
  (823, 82300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Corviknight - Substitute - TM103
  (823, 82300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Corviknight - Iron Defense - TM104
  (823, 82300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Corviknight - Tailwind - TM113
  (823, 82300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Corviknight - Heavy Slam - TM121
  (823, 82300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Corviknight - Reversal - TM134
  (823, 82300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 46),
  -- Corviknight - Nasty Plot - TM140
  (823, 82300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 47),
  -- Corviknight - Giga Impact - TM152
  (823, 82300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Corviknight - Hurricane - TM160
  (823, 82300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 49),
  -- Corviknight - Hyper Beam - TM163
  (823, 82300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Corviknight - Brave Bird - TM164
  (823, 82300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 51),
  -- Corviknight - Steel Beam - TM170
  (823, 82300, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 52),
  -- Corviknight - Tera Blast - TM171
  (823, 82300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Corviknight - Sand Attack - Egg
  (823, 82300, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corviknight - Sky Attack - Egg
  (823, 82300, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corviknight - Spite - Egg
  (823, 82300, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corviknight - Rock Smash - Egg
  (823, 82300, 249, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corviknight - Roost - Egg
  (823, 82300, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corviknight - Tailwind - Egg
  (823, 82300, 366, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corviknight - Defog - Egg
  (823, 82300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corviknight - Steel Wing - Evolution
  (823, 82300, 211, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Chewtle - Tackle - Level 1
  (833, 83300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chewtle - Water Gun - Level 1
  (833, 83300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chewtle - Bite - Level 7
  (833, 83300, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chewtle - Protect - Level 14
  (833, 83300, 182, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chewtle - Headbutt - Level 21
  (833, 83300, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Chewtle - Counter - Level 28
  (833, 83300, 68, 23, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Chewtle - Jaw Lock - Level 35
  (833, 83300, 746, 23, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Chewtle - Liquidation - Level 42
  (833, 83300, 710, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Chewtle - Body Slam - Level 49
  (833, 83300, 34, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Chewtle - Take Down - TM001
  (833, 83300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 10),
  -- Chewtle - Scary Face - TM006
  (833, 83300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 11),
  -- Chewtle - Protect - TM007
  (833, 83300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Chewtle - Ice Fang - TM010
  (833, 83300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 13),
  -- Chewtle - Water Pulse - TM011
  (833, 83300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 14),
  -- Chewtle - Chilling Water - TM022
  (833, 83300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 15),
  -- Chewtle - Facade - TM025
  (833, 83300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Chewtle - Mud Shot - TM035
  (833, 83300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 17),
  -- Chewtle - Dragon Tail - TM044
  (833, 83300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 18),
  -- Chewtle - Endure - TM047
  (833, 83300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Chewtle - Rain Dance - TM050
  (833, 83300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Chewtle - False Swipe - TM057
  (833, 83300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 21),
  -- Chewtle - Body Slam - TM066
  (833, 83300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 22),
  -- Chewtle - Sleep Talk - TM070
  (833, 83300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Chewtle - Waterfall - TM077
  (833, 83300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 24),
  -- Chewtle - Poison Jab - TM083
  (833, 83300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 25),
  -- Chewtle - Stomping Tantrum - TM084
  (833, 83300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 26),
  -- Chewtle - Rest - TM085
  (833, 83300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Chewtle - Substitute - TM103
  (833, 83300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Chewtle - Crunch - TM108
  (833, 83300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 29),
  -- Chewtle - Liquidation - TM110
  (833, 83300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 30),
  -- Chewtle - Surf - TM123
  (833, 83300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 31),
  -- Chewtle - Hydro Pump - TM142
  (833, 83300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 32),
  -- Chewtle - Tera Blast - TM171
  (833, 83300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 33),
  -- Chewtle - Gastro Acid - Egg
  (833, 83300, 380, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Chewtle - Shell Smash - Egg
  (833, 83300, 504, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Chewtle - Dragon Tail - Egg
  (833, 83300, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Drednaw - Tackle - Level 1
  (834, 83400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drednaw - Bite - Level 1
  (834, 83400, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drednaw - Water Gun - Level 1
  (834, 83400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drednaw - Protect - Level 1
  (834, 83400, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drednaw - Crunch - Level 1
  (834, 83400, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drednaw - Rock Polish - Level 1
  (834, 83400, 397, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drednaw - Razor Shell - Level 1
  (834, 83400, 534, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drednaw - Headbutt - Level 21
  (834, 83400, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Drednaw - Counter - Level 30
  (834, 83400, 68, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Drednaw - Jaw Lock - Level 39
  (834, 83400, 746, 23, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Drednaw - Liquidation - Level 48
  (834, 83400, 710, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Drednaw - Body Slam - Level 57
  (834, 83400, 34, 23, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Drednaw - Head Smash - Level 66
  (834, 83400, 457, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Drednaw - Take Down - TM001
  (834, 83400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Drednaw - Scary Face - TM006
  (834, 83400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Drednaw - Protect - TM007
  (834, 83400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Drednaw - Ice Fang - TM010
  (834, 83400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 17),
  -- Drednaw - Water Pulse - TM011
  (834, 83400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Drednaw - Chilling Water - TM022
  (834, 83400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Drednaw - Facade - TM025
  (834, 83400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Drednaw - Bulldoze - TM028
  (834, 83400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Drednaw - Mud Shot - TM035
  (834, 83400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Drednaw - Rock Tomb - TM036
  (834, 83400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Drednaw - Dragon Tail - TM044
  (834, 83400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Drednaw - Endure - TM047
  (834, 83400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Drednaw - Rain Dance - TM050
  (834, 83400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Drednaw - Sandstorm - TM051
  (834, 83400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Drednaw - Smart Strike - TM053
  (834, 83400, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 28),
  -- Drednaw - Dig - TM055
  (834, 83400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Drednaw - False Swipe - TM057
  (834, 83400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 30),
  -- Drednaw - Body Slam - TM066
  (834, 83400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Drednaw - Sleep Talk - TM070
  (834, 83400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Drednaw - Rock Blast - TM076
  (834, 83400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Drednaw - Waterfall - TM077
  (834, 83400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Drednaw - Poison Jab - TM083
  (834, 83400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Drednaw - Stomping Tantrum - TM084
  (834, 83400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Drednaw - Rest - TM085
  (834, 83400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Drednaw - Rock Slide - TM086
  (834, 83400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Drednaw - Swords Dance - TM088
  (834, 83400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Drednaw - Body Press - TM089
  (834, 83400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 40),
  -- Drednaw - Substitute - TM103
  (834, 83400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Drednaw - Iron Defense - TM104
  (834, 83400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Drednaw - Crunch - TM108
  (834, 83400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Drednaw - Liquidation - TM110
  (834, 83400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 44),
  -- Drednaw - Stealth Rock - TM116
  (834, 83400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Drednaw - Surf - TM123
  (834, 83400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 46),
  -- Drednaw - Ice Spinner - TM124
  (834, 83400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 47),
  -- Drednaw - Earth Power - TM133
  (834, 83400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Drednaw - Ice Beam - TM135
  (834, 83400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Drednaw - Hydro Pump - TM142
  (834, 83400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 50),
  -- Drednaw - Blizzard - TM143
  (834, 83400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 51),
  -- Drednaw - Earthquake - TM149
  (834, 83400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Drednaw - Stone Edge - TM150
  (834, 83400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 53),
  -- Drednaw - Giga Impact - TM152
  (834, 83400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Drednaw - Hyper Beam - TM163
  (834, 83400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Drednaw - Tera Blast - TM171
  (834, 83400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Drednaw - Gastro Acid - Egg
  (834, 83400, 380, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drednaw - Shell Smash - Egg
  (834, 83400, 504, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drednaw - Dragon Tail - Egg
  (834, 83400, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drednaw - Rock Tomb - Evolution
  (834, 83400, 317, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Rolycoly - Tackle - Level 1
  (837, 83700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rolycoly - Smokescreen - Level 1
  (837, 83700, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rolycoly - Rapid Spin - Level 5
  (837, 83700, 229, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rolycoly - Smack Down - Level 10
  (837, 83700, 479, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rolycoly - Rock Polish - Level 15
  (837, 83700, 397, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rolycoly - Ancient Power - Level 20
  (837, 83700, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rolycoly - Incinerate - Level 25
  (837, 83700, 510, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rolycoly - Stealth Rock - Level 30
  (837, 83700, 446, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rolycoly - Heat Crash - Level 35
  (837, 83700, 535, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rolycoly - Rock Blast - Level 40
  (837, 83700, 350, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rolycoly - Take Down - TM001
  (837, 83700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Rolycoly - Mud-Slap - TM005
  (837, 83700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 12),
  -- Rolycoly - Protect - TM007
  (837, 83700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Rolycoly - Facade - TM025
  (837, 83700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 14),
  -- Rolycoly - Bulldoze - TM028
  (837, 83700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 15),
  -- Rolycoly - Rock Tomb - TM036
  (837, 83700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 16),
  -- Rolycoly - Endure - TM047
  (837, 83700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 17),
  -- Rolycoly - Sandstorm - TM051
  (837, 83700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 18),
  -- Rolycoly - Dig - TM055
  (837, 83700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 19),
  -- Rolycoly - Body Slam - TM066
  (837, 83700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 20),
  -- Rolycoly - Sleep Talk - TM070
  (837, 83700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Rolycoly - Reflect - TM074
  (837, 83700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 22),
  -- Rolycoly - Rock Blast - TM076
  (837, 83700, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 23),
  -- Rolycoly - Rest - TM085
  (837, 83700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 24),
  -- Rolycoly - Rock Slide - TM086
  (837, 83700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 25),
  -- Rolycoly - Spikes - TM090
  (837, 83700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 26),
  -- Rolycoly - Iron Head - TM099
  (837, 83700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 27),
  -- Rolycoly - Power Gem - TM101
  (837, 83700, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 28),
  -- Rolycoly - Substitute - TM103
  (837, 83700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Rolycoly - Iron Defense - TM104
  (837, 83700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 30),
  -- Rolycoly - Will-O-Wisp - TM107
  (837, 83700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 31),
  -- Rolycoly - Stealth Rock - TM116
  (837, 83700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 32),
  -- Rolycoly - Stone Edge - TM150
  (837, 83700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 33),
  -- Rolycoly - Tera Blast - TM171
  (837, 83700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 34),
  -- Rolycoly - Explosion - Egg
  (837, 83700, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Rolycoly - Mud-Slap - Egg
  (837, 83700, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Rolycoly - Block - Egg
  (837, 83700, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Carkol - Tackle - Level 1
  (838, 83800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carkol - Smokescreen - Level 1
  (838, 83800, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carkol - Rapid Spin - Level 1
  (838, 83800, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Carkol - Smack Down - Level 1
  (838, 83800, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Carkol - Rock Polish - Level 15
  (838, 83800, 397, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Carkol - Ancient Power - Level 20
  (838, 83800, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Carkol - Incinerate - Level 27
  (838, 83800, 510, 23, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Carkol - Stealth Rock - Level 35
  (838, 83800, 446, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Carkol - Heat Crash - Level 41
  (838, 83800, 535, 23, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Carkol - Rock Blast - Level 48
  (838, 83800, 350, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Carkol - Stone Edge - Level 55
  (838, 83800, 444, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Carkol - Take Down - TM001
  (838, 83800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Carkol - Mud-Slap - TM005
  (838, 83800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Carkol - Protect - TM007
  (838, 83800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Carkol - Fire Spin - TM024
  (838, 83800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 15),
  -- Carkol - Facade - TM025
  (838, 83800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Carkol - Bulldoze - TM028
  (838, 83800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 17),
  -- Carkol - Rock Tomb - TM036
  (838, 83800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 18),
  -- Carkol - Flame Charge - TM038
  (838, 83800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 19),
  -- Carkol - Endure - TM047
  (838, 83800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Carkol - Sunny Day - TM049
  (838, 83800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Carkol - Sandstorm - TM051
  (838, 83800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 22),
  -- Carkol - Dig - TM055
  (838, 83800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 23),
  -- Carkol - Body Slam - TM066
  (838, 83800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Carkol - Sleep Talk - TM070
  (838, 83800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Carkol - Reflect - TM074
  (838, 83800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 26),
  -- Carkol - Rock Blast - TM076
  (838, 83800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 27),
  -- Carkol - Rest - TM085
  (838, 83800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Carkol - Rock Slide - TM086
  (838, 83800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 29),
  -- Carkol - Body Press - TM089
  (838, 83800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 30),
  -- Carkol - Spikes - TM090
  (838, 83800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 31),
  -- Carkol - Iron Head - TM099
  (838, 83800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 32),
  -- Carkol - Power Gem - TM101
  (838, 83800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 33),
  -- Carkol - Substitute - TM103
  (838, 83800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Carkol - Iron Defense - TM104
  (838, 83800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 35),
  -- Carkol - Will-O-Wisp - TM107
  (838, 83800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Carkol - Stealth Rock - TM116
  (838, 83800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Carkol - Heat Wave - TM118
  (838, 83800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Carkol - Heavy Slam - TM121
  (838, 83800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Carkol - Flamethrower - TM125
  (838, 83800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 40),
  -- Carkol - Fire Blast - TM141
  (838, 83800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Carkol - Stone Edge - TM150
  (838, 83800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 42),
  -- Carkol - Overheat - TM157
  (838, 83800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 43),
  -- Carkol - Flare Blitz - TM165
  (838, 83800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Carkol - Tera Blast - TM171
  (838, 83800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Carkol - Explosion - Egg
  (838, 83800, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carkol - Mud-Slap - Egg
  (838, 83800, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carkol - Block - Egg
  (838, 83800, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carkol - Flame Charge - Evolution
  (838, 83800, 488, 23, NULL, 7, NULL, NULL, NULL, NULL, 49),
  -- Coalossal - Tackle - Level 1
  (839, 83900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Coalossal - Smokescreen - Level 1
  (839, 83900, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Coalossal - Rapid Spin - Level 1
  (839, 83900, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Coalossal - Smack Down - Level 1
  (839, 83900, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Coalossal - Flame Charge - Level 1
  (839, 83900, 488, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Coalossal - Rock Polish - Level 15
  (839, 83900, 397, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Coalossal - Ancient Power - Level 20
  (839, 83900, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Coalossal - Incinerate - Level 27
  (839, 83900, 510, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Coalossal - Stealth Rock - Level 37
  (839, 83900, 446, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Coalossal - Heat Crash - Level 45
  (839, 83900, 535, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Coalossal - Rock Blast - Level 54
  (839, 83900, 350, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Coalossal - Stone Edge - Level 63
  (839, 83900, 444, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Coalossal - Take Down - TM001
  (839, 83900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Coalossal - Mud-Slap - TM005
  (839, 83900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Coalossal - Protect - TM007
  (839, 83900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Coalossal - Fire Spin - TM024
  (839, 83900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 16),
  -- Coalossal - Facade - TM025
  (839, 83900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Coalossal - Bulldoze - TM028
  (839, 83900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Coalossal - Rock Tomb - TM036
  (839, 83900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 19),
  -- Coalossal - Flame Charge - TM038
  (839, 83900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 20),
  -- Coalossal - Endure - TM047
  (839, 83900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Coalossal - Sunny Day - TM049
  (839, 83900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Coalossal - Sandstorm - TM051
  (839, 83900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Coalossal - Dig - TM055
  (839, 83900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Coalossal - Body Slam - TM066
  (839, 83900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Coalossal - Fire Punch - TM067
  (839, 83900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 26),
  -- Coalossal - Sleep Talk - TM070
  (839, 83900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Coalossal - Reflect - TM074
  (839, 83900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Coalossal - Rock Blast - TM076
  (839, 83900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 29),
  -- Coalossal - Rest - TM085
  (839, 83900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Coalossal - Rock Slide - TM086
  (839, 83900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 31),
  -- Coalossal - Body Press - TM089
  (839, 83900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 32),
  -- Coalossal - Spikes - TM090
  (839, 83900, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 33),
  -- Coalossal - Iron Head - TM099
  (839, 83900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Coalossal - Power Gem - TM101
  (839, 83900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 35),
  -- Coalossal - Substitute - TM103
  (839, 83900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Coalossal - Iron Defense - TM104
  (839, 83900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Coalossal - Will-O-Wisp - TM107
  (839, 83900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Coalossal - Stealth Rock - TM116
  (839, 83900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Coalossal - Heat Wave - TM118
  (839, 83900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Coalossal - Heavy Slam - TM121
  (839, 83900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 41),
  -- Coalossal - Flamethrower - TM125
  (839, 83900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Coalossal - Earth Power - TM133
  (839, 83900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Coalossal - Fire Blast - TM141
  (839, 83900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Coalossal - Earthquake - TM149
  (839, 83900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Coalossal - Stone Edge - TM150
  (839, 83900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Coalossal - Giga Impact - TM152
  (839, 83900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Coalossal - Overheat - TM157
  (839, 83900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 48),
  -- Coalossal - Hyper Beam - TM163
  (839, 83900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Coalossal - Flare Blitz - TM165
  (839, 83900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 50),
  -- Coalossal - Solar Beam - TM168
  (839, 83900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Coalossal - Tera Blast - TM171
  (839, 83900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Coalossal - Explosion - Egg
  (839, 83900, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Coalossal - Mud-Slap - Egg
  (839, 83900, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Coalossal - Block - Egg
  (839, 83900, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Coalossal - Tar Shot - Evolution
  (839, 83900, 749, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Applin - Withdraw - Level 1
  (840, 84000, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Applin - Astonish - Level 1
  (840, 84000, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Applin - Pounce - TM021
  (840, 84000, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 3),
  -- Applin - Tera Blast - TM171
  (840, 84000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 4),
  -- Applin - Defense Curl - Egg
  (840, 84000, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 5),
  -- Applin - Rollout - Egg
  (840, 84000, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 6),
  -- Applin - Recycle - Egg
  (840, 84000, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 7),
  -- Applin - Sucker Punch - Egg
  (840, 84000, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 8),
  -- Flapple - Growth - Level 1
  (841, 84100, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flapple - Withdraw - Level 1
  (841, 84100, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flapple - Twister - Level 1
  (841, 84100, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flapple - Recycle - Level 1
  (841, 84100, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flapple - Astonish - Level 1
  (841, 84100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flapple - Acid Spray - Level 4
  (841, 84100, 491, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Flapple - Acrobatics - Level 8
  (841, 84100, 512, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Flapple - Leech Seed - Level 12
  (841, 84100, 73, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Flapple - Protect - Level 16
  (841, 84100, 182, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Flapple - Dragon Breath - Level 20
  (841, 84100, 225, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Flapple - Dragon Dance - Level 24
  (841, 84100, 349, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Flapple - Dragon Pulse - Level 28
  (841, 84100, 406, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Flapple - Grav Apple - Level 32
  (841, 84100, 788, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Flapple - Iron Defense - Level 36
  (841, 84100, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Flapple - Fly - Level 40
  (841, 84100, 19, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Flapple - Dragon Rush - Level 44
  (841, 84100, 407, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Flapple - Take Down - TM001
  (841, 84100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Flapple - Scary Face - TM006
  (841, 84100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Flapple - Protect - TM007
  (841, 84100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Flapple - Acid Spray - TM013
  (841, 84100, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Flapple - Acrobatics - TM014
  (841, 84100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Flapple - Trailblaze - TM020
  (841, 84100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Flapple - Pounce - TM021
  (841, 84100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 23),
  -- Flapple - Facade - TM025
  (841, 84100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Flapple - Aerial Ace - TM027
  (841, 84100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Flapple - Magical Leaf - TM033
  (841, 84100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Flapple - Endure - TM047
  (841, 84100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Flapple - Sunny Day - TM049
  (841, 84100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Flapple - Bullet Seed - TM056
  (841, 84100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 29),
  -- Flapple - U-turn - TM060
  (841, 84100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Flapple - Air Slash - TM065
  (841, 84100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Flapple - Sleep Talk - TM070
  (841, 84100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Flapple - Seed Bomb - TM071
  (841, 84100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Flapple - Grass Knot - TM081
  (841, 84100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Flapple - Rest - TM085
  (841, 84100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Flapple - Fly - TM097
  (841, 84100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 36),
  -- Flapple - Dragon Dance - TM100
  (841, 84100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 37),
  -- Flapple - Substitute - TM103
  (841, 84100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Flapple - Iron Defense - TM104
  (841, 84100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Flapple - Giga Drain - TM111
  (841, 84100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Flapple - Dragon Pulse - TM115
  (841, 84100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 41),
  -- Flapple - Energy Ball - TM119
  (841, 84100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Flapple - Heavy Slam - TM121
  (841, 84100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Flapple - Grassy Terrain - TM137
  (841, 84100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 44),
  -- Flapple - Giga Impact - TM152
  (841, 84100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Flapple - Outrage - TM156
  (841, 84100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Flapple - Leaf Storm - TM159
  (841, 84100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 47),
  -- Flapple - Hyper Beam - TM163
  (841, 84100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Flapple - Solar Beam - TM168
  (841, 84100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Flapple - Draco Meteor - TM169
  (841, 84100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Flapple - Tera Blast - TM171
  (841, 84100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Flapple - Defense Curl - Egg
  (841, 84100, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Flapple - Rollout - Egg
  (841, 84100, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Flapple - Recycle - Egg
  (841, 84100, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Flapple - Sucker Punch - Egg
  (841, 84100, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Flapple - Wing Attack - Evolution
  (841, 84100, 17, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Appletun - Growth - Level 1
  (842, 84200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Appletun - Withdraw - Level 1
  (842, 84200, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Appletun - Sweet Scent - Level 1
  (842, 84200, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Appletun - Recycle - Level 1
  (842, 84200, 278, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Appletun - Astonish - Level 1
  (842, 84200, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Appletun - Curse - Level 4
  (842, 84200, 174, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Appletun - Stomp - Level 8
  (842, 84200, 23, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Appletun - Leech Seed - Level 12
  (842, 84200, 73, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Appletun - Protect - Level 16
  (842, 84200, 182, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Appletun - Bullet Seed - Level 20
  (842, 84200, 331, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Appletun - Recover - Level 24
  (842, 84200, 105, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Appletun - Apple Acid - Level 28
  (842, 84200, 787, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Appletun - Body Slam - Level 32
  (842, 84200, 34, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Appletun - Iron Defense - Level 36
  (842, 84200, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Appletun - Dragon Pulse - Level 40
  (842, 84200, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Appletun - Energy Ball - Level 44
  (842, 84200, 412, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Appletun - Take Down - TM001
  (842, 84200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Appletun - Protect - TM007
  (842, 84200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Appletun - Trailblaze - TM020
  (842, 84200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Appletun - Pounce - TM021
  (842, 84200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Appletun - Facade - TM025
  (842, 84200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Appletun - Bulldoze - TM028
  (842, 84200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Appletun - Magical Leaf - TM033
  (842, 84200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Appletun - Dragon Tail - TM044
  (842, 84200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Appletun - Endure - TM047
  (842, 84200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Appletun - Sunny Day - TM049
  (842, 84200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Appletun - Rain Dance - TM050
  (842, 84200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Appletun - Bullet Seed - TM056
  (842, 84200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Appletun - Zen Headbutt - TM059
  (842, 84200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Appletun - Body Slam - TM066
  (842, 84200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Appletun - Sleep Talk - TM070
  (842, 84200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Appletun - Seed Bomb - TM071
  (842, 84200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Appletun - Reflect - TM074
  (842, 84200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Appletun - Light Screen - TM075
  (842, 84200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Appletun - Grass Knot - TM081
  (842, 84200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Appletun - Stomping Tantrum - TM084
  (842, 84200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Appletun - Rest - TM085
  (842, 84200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Appletun - Body Press - TM089
  (842, 84200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Appletun - Iron Head - TM099
  (842, 84200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Appletun - Substitute - TM103
  (842, 84200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Appletun - Iron Defense - TM104
  (842, 84200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Appletun - Giga Drain - TM111
  (842, 84200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 42),
  -- Appletun - Dragon Pulse - TM115
  (842, 84200, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 43),
  -- Appletun - Energy Ball - TM119
  (842, 84200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Appletun - Heavy Slam - TM121
  (842, 84200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Appletun - Amnesia - TM128
  (842, 84200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Appletun - Helping Hand - TM130
  (842, 84200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Appletun - Grassy Terrain - TM137
  (842, 84200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 48),
  -- Appletun - Earthquake - TM149
  (842, 84200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Appletun - Giga Impact - TM152
  (842, 84200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Appletun - Outrage - TM156
  (842, 84200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Appletun - Leaf Storm - TM159
  (842, 84200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 52),
  -- Appletun - Hyper Beam - TM163
  (842, 84200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Appletun - Solar Beam - TM168
  (842, 84200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Appletun - Draco Meteor - TM169
  (842, 84200, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 55),
  -- Appletun - Tera Blast - TM171
  (842, 84200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Appletun - Defense Curl - Egg
  (842, 84200, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Appletun - Rollout - Egg
  (842, 84200, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Appletun - Recycle - Egg
  (842, 84200, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Appletun - Sucker Punch - Egg
  (842, 84200, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Appletun - Headbutt - Evolution
  (842, 84200, 29, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Silicobra - Sand Attack - Level 1
  (843, 84300, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silicobra - Wrap - Level 1
  (843, 84300, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silicobra - Minimize - Level 5
  (843, 84300, 107, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Silicobra - Brutal Swing - Level 10
  (843, 84300, 693, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Silicobra - Bulldoze - Level 15
  (843, 84300, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Silicobra - Headbutt - Level 20
  (843, 84300, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Silicobra - Glare - Level 25
  (843, 84300, 137, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Silicobra - Dig - Level 30
  (843, 84300, 91, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Silicobra - Sandstorm - Level 35
  (843, 84300, 201, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Silicobra - Slam - Level 40
  (843, 84300, 21, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Silicobra - Coil - Level 45
  (843, 84300, 489, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Silicobra - Sand Tomb - Level 50
  (843, 84300, 328, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Silicobra - Take Down - TM001
  (843, 84300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Silicobra - Mud-Slap - TM005
  (843, 84300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Silicobra - Scary Face - TM006
  (843, 84300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Silicobra - Protect - TM007
  (843, 84300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Silicobra - Facade - TM025
  (843, 84300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Silicobra - Poison Tail - TM026
  (843, 84300, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 18),
  -- Silicobra - Bulldoze - TM028
  (843, 84300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Silicobra - Mud Shot - TM035
  (843, 84300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Silicobra - Rock Tomb - TM036
  (843, 84300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Silicobra - Endure - TM047
  (843, 84300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Silicobra - Sandstorm - TM051
  (843, 84300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Silicobra - Dig - TM055
  (843, 84300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Silicobra - Body Slam - TM066
  (843, 84300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Silicobra - Sleep Talk - TM070
  (843, 84300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Silicobra - Rock Blast - TM076
  (843, 84300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 27),
  -- Silicobra - Rest - TM085
  (843, 84300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Silicobra - Rock Slide - TM086
  (843, 84300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 29),
  -- Silicobra - Substitute - TM103
  (843, 84300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Silicobra - Drill Run - TM106
  (843, 84300, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 31),
  -- Silicobra - Stealth Rock - TM116
  (843, 84300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 32),
  -- Silicobra - Earth Power - TM133
  (843, 84300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 33),
  -- Silicobra - Earthquake - TM149
  (843, 84300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 34),
  -- Silicobra - Stone Edge - TM150
  (843, 84300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 35),
  -- Silicobra - Tera Blast - TM171
  (843, 84300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Silicobra - Mud-Slap - Egg
  (843, 84300, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Silicobra - Poison Tail - Egg
  (843, 84300, 342, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Silicobra - Last Resort - Egg
  (843, 84300, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Silicobra - Dragon Rush - Egg
  (843, 84300, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Silicobra - Belch - Egg
  (843, 84300, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sandaconda - Sand Attack - Level 1
  (844, 84400, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandaconda - Wrap - Level 1
  (844, 84400, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandaconda - Minimize - Level 1
  (844, 84400, 107, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandaconda - Brutal Swing - Level 1
  (844, 84400, 693, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandaconda - Bulldoze - Level 15
  (844, 84400, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sandaconda - Headbutt - Level 20
  (844, 84400, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sandaconda - Glare - Level 25
  (844, 84400, 137, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sandaconda - Dig - Level 30
  (844, 84400, 91, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sandaconda - Sandstorm - Level 35
  (844, 84400, 201, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sandaconda - Slam - Level 42
  (844, 84400, 21, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Sandaconda - Coil - Level 49
  (844, 84400, 489, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Sandaconda - Sand Tomb - Level 51
  (844, 84400, 328, 23, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Sandaconda - Take Down - TM001
  (844, 84400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Sandaconda - Mud-Slap - TM005
  (844, 84400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Sandaconda - Scary Face - TM006
  (844, 84400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Sandaconda - Protect - TM007
  (844, 84400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Sandaconda - Fire Fang - TM008
  (844, 84400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 17),
  -- Sandaconda - Thunder Fang - TM009
  (844, 84400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 18),
  -- Sandaconda - Facade - TM025
  (844, 84400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Sandaconda - Poison Tail - TM026
  (844, 84400, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 20),
  -- Sandaconda - Bulldoze - TM028
  (844, 84400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Sandaconda - Mud Shot - TM035
  (844, 84400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Sandaconda - Rock Tomb - TM036
  (844, 84400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Sandaconda - Endure - TM047
  (844, 84400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Sandaconda - Sandstorm - TM051
  (844, 84400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 25),
  -- Sandaconda - Dig - TM055
  (844, 84400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Sandaconda - Zen Headbutt - TM059
  (844, 84400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Sandaconda - Body Slam - TM066
  (844, 84400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Sandaconda - Sleep Talk - TM070
  (844, 84400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Sandaconda - Rock Blast - TM076
  (844, 84400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 30),
  -- Sandaconda - Rest - TM085
  (844, 84400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Sandaconda - Rock Slide - TM086
  (844, 84400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Sandaconda - Body Press - TM089
  (844, 84400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 33),
  -- Sandaconda - Iron Head - TM099
  (844, 84400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Sandaconda - Substitute - TM103
  (844, 84400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Sandaconda - Iron Defense - TM104
  (844, 84400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 36),
  -- Sandaconda - Drill Run - TM106
  (844, 84400, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 37),
  -- Sandaconda - Stealth Rock - TM116
  (844, 84400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 38),
  -- Sandaconda - Earth Power - TM133
  (844, 84400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Sandaconda - Earthquake - TM149
  (844, 84400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 40),
  -- Sandaconda - Stone Edge - TM150
  (844, 84400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 41),
  -- Sandaconda - Giga Impact - TM152
  (844, 84400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Sandaconda - Outrage - TM156
  (844, 84400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 43),
  -- Sandaconda - Hurricane - TM160
  (844, 84400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 44),
  -- Sandaconda - Hyper Beam - TM163
  (844, 84400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Sandaconda - Tera Blast - TM171
  (844, 84400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Sandaconda - Mud-Slap - Egg
  (844, 84400, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sandaconda - Poison Tail - Egg
  (844, 84400, 342, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sandaconda - Last Resort - Egg
  (844, 84400, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sandaconda - Dragon Rush - Egg
  (844, 84400, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sandaconda - Belch - Egg
  (844, 84400, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cramorant - Peck - Level 1
  (845, 84500, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cramorant - Stockpile - Level 1
  (845, 84500, 254, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cramorant - Spit Up - Level 1
  (845, 84500, 255, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cramorant - Swallow - Level 1
  (845, 84500, 256, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cramorant - Water Gun - Level 7
  (845, 84500, 55, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Cramorant - Fury Attack - Level 14
  (845, 84500, 31, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Cramorant - Pluck - Level 21
  (845, 84500, 365, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cramorant - Dive - Level 28
  (845, 84500, 291, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cramorant - Drill Peck - Level 35
  (845, 84500, 65, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cramorant - Amnesia - Level 42
  (845, 84500, 133, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Cramorant - Thrash - Level 49
  (845, 84500, 37, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Cramorant - Hydro Pump - Level 56
  (845, 84500, 56, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Cramorant - Take Down - TM001
  (845, 84500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Cramorant - Agility - TM004
  (845, 84500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Cramorant - Protect - TM007
  (845, 84500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Cramorant - Water Pulse - TM011
  (845, 84500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Cramorant - Acrobatics - TM014
  (845, 84500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Cramorant - Thief - TM018
  (845, 84500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Cramorant - Pounce - TM021
  (845, 84500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Cramorant - Chilling Water - TM022
  (845, 84500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Cramorant - Facade - TM025
  (845, 84500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Cramorant - Aerial Ace - TM027
  (845, 84500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Cramorant - Icy Wind - TM034
  (845, 84500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Cramorant - Air Cutter - TM040
  (845, 84500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Cramorant - Endure - TM047
  (845, 84500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Cramorant - Rain Dance - TM050
  (845, 84500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Cramorant - Air Slash - TM065
  (845, 84500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 27),
  -- Cramorant - Sleep Talk - TM070
  (845, 84500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Cramorant - Rest - TM085
  (845, 84500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Cramorant - Fly - TM097
  (845, 84500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 30),
  -- Cramorant - Substitute - TM103
  (845, 84500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Cramorant - Liquidation - TM110
  (845, 84500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Cramorant - Tailwind - TM113
  (845, 84500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 33),
  -- Cramorant - Surf - TM123
  (845, 84500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 34),
  -- Cramorant - Amnesia - TM128
  (845, 84500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 35),
  -- Cramorant - Reversal - TM134
  (845, 84500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 36),
  -- Cramorant - Ice Beam - TM135
  (845, 84500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Cramorant - Hydro Pump - TM142
  (845, 84500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 38),
  -- Cramorant - Blizzard - TM143
  (845, 84500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 39),
  -- Cramorant - Giga Impact - TM152
  (845, 84500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Cramorant - Hurricane - TM160
  (845, 84500, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 41),
  -- Cramorant - Hyper Beam - TM163
  (845, 84500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Cramorant - Brave Bird - TM164
  (845, 84500, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 43),
  -- Cramorant - Tera Blast - TM171
  (845, 84500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Cramorant - Feather Dance - Egg
  (845, 84500, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cramorant - Aerial Ace - Egg
  (845, 84500, 332, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cramorant - Roost - Egg
  (845, 84500, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cramorant - Aqua Ring - Egg
  (845, 84500, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cramorant - Defog - Egg
  (845, 84500, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cramorant - Aqua Cutter - Egg
  (845, 84500, 895, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cramorant - Belch - Reminder
  (845, 84500, 562, 23, NULL, 9, NULL, NULL, NULL, NULL, 51),
  -- Arrokuda - Peck - Level 1
  (846, 84600, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arrokuda - Aqua Jet - Level 1
  (846, 84600, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arrokuda - Fury Attack - Level 6
  (846, 84600, 31, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Arrokuda - Bite - Level 12
  (846, 84600, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Arrokuda - Agility - Level 18
  (846, 84600, 97, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Arrokuda - Dive - Level 24
  (846, 84600, 291, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Arrokuda - Focus Energy - Level 30
  (846, 84600, 116, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arrokuda - Crunch - Level 36
  (846, 84600, 242, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Arrokuda - Liquidation - Level 42
  (846, 84600, 710, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Arrokuda - Double-Edge - Level 48
  (846, 84600, 38, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Arrokuda - Take Down - TM001
  (846, 84600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Arrokuda - Agility - TM004
  (846, 84600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 12),
  -- Arrokuda - Protect - TM007
  (846, 84600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Arrokuda - Ice Fang - TM010
  (846, 84600, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 14),
  -- Arrokuda - Water Pulse - TM011
  (846, 84600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Arrokuda - Chilling Water - TM022
  (846, 84600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Arrokuda - Facade - TM025
  (846, 84600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Arrokuda - Swift - TM032
  (846, 84600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Arrokuda - Endure - TM047
  (846, 84600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Arrokuda - Rain Dance - TM050
  (846, 84600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Arrokuda - Brick Break - TM058
  (846, 84600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 21),
  -- Arrokuda - Psychic Fangs - TM063
  (846, 84600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 22),
  -- Arrokuda - Sleep Talk - TM070
  (846, 84600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Arrokuda - Waterfall - TM077
  (846, 84600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 24),
  -- Arrokuda - Rest - TM085
  (846, 84600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Arrokuda - Substitute - TM103
  (846, 84600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 26),
  -- Arrokuda - Drill Run - TM106
  (846, 84600, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 27),
  -- Arrokuda - Crunch - TM108
  (846, 84600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 28),
  -- Arrokuda - Liquidation - TM110
  (846, 84600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 29),
  -- Arrokuda - Surf - TM123
  (846, 84600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 30),
  -- Arrokuda - Hydro Pump - TM142
  (846, 84600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 31),
  -- Arrokuda - Close Combat - TM167
  (846, 84600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 32),
  -- Arrokuda - Tera Blast - TM171
  (846, 84600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 33),
  -- Arrokuda - Thrash - Egg
  (846, 84600, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Arrokuda - Slash - Egg
  (846, 84600, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Arrokuda - Acupressure - Egg
  (846, 84600, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Arrokuda - Night Slash - Egg
  (846, 84600, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Barraskewda - Fury Attack - Level 1
  (847, 84700, 31, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barraskewda - Bite - Level 1
  (847, 84700, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barraskewda - Peck - Level 1
  (847, 84700, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Barraskewda - Aqua Jet - Level 1
  (847, 84700, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Barraskewda - Throat Chop - Level 1
  (847, 84700, 675, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Barraskewda - Agility - Level 18
  (847, 84700, 97, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barraskewda - Dive - Level 24
  (847, 84700, 291, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Barraskewda - Focus Energy - Level 32
  (847, 84700, 116, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Barraskewda - Crunch - Level 40
  (847, 84700, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Barraskewda - Liquidation - Level 48
  (847, 84700, 710, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Barraskewda - Double-Edge - Level 56
  (847, 84700, 38, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Barraskewda - Take Down - TM001
  (847, 84700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Barraskewda - Agility - TM004
  (847, 84700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 13),
  -- Barraskewda - Scary Face - TM006
  (847, 84700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Barraskewda - Protect - TM007
  (847, 84700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Barraskewda - Ice Fang - TM010
  (847, 84700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 16),
  -- Barraskewda - Water Pulse - TM011
  (847, 84700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Barraskewda - Chilling Water - TM022
  (847, 84700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Barraskewda - Facade - TM025
  (847, 84700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Barraskewda - Swift - TM032
  (847, 84700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Barraskewda - Endure - TM047
  (847, 84700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Barraskewda - Rain Dance - TM050
  (847, 84700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Barraskewda - Brick Break - TM058
  (847, 84700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 23),
  -- Barraskewda - Psychic Fangs - TM063
  (847, 84700, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 24),
  -- Barraskewda - Sleep Talk - TM070
  (847, 84700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Barraskewda - Waterfall - TM077
  (847, 84700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 26),
  -- Barraskewda - Poison Jab - TM083
  (847, 84700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 27),
  -- Barraskewda - Rest - TM085
  (847, 84700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Barraskewda - Substitute - TM103
  (847, 84700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Barraskewda - Drill Run - TM106
  (847, 84700, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 30),
  -- Barraskewda - Crunch - TM108
  (847, 84700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 31),
  -- Barraskewda - Liquidation - TM110
  (847, 84700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Barraskewda - Surf - TM123
  (847, 84700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 33),
  -- Barraskewda - Ice Beam - TM135
  (847, 84700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 34),
  -- Barraskewda - Hydro Pump - TM142
  (847, 84700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 35),
  -- Barraskewda - Blizzard - TM143
  (847, 84700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 36),
  -- Barraskewda - Giga Impact - TM152
  (847, 84700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 37),
  -- Barraskewda - Hyper Beam - TM163
  (847, 84700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 38),
  -- Barraskewda - Close Combat - TM167
  (847, 84700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 39),
  -- Barraskewda - Tera Blast - TM171
  (847, 84700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Barraskewda - Thrash - Egg
  (847, 84700, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Barraskewda - Slash - Egg
  (847, 84700, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Barraskewda - Acupressure - Egg
  (847, 84700, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Barraskewda - Night Slash - Egg
  (847, 84700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Toxel - Growl - Level 1
  (848, 84800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxel - Acid - Level 1
  (848, 84800, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxel - Flail - Level 1
  (848, 84800, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxel - Belch - Level 1
  (848, 84800, 562, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxel - Nuzzle - Level 1
  (848, 84800, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxel - Tearful Look - Level 1
  (848, 84800, 715, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toxel - Charm - TM002
  (848, 84800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 7),
  -- Toxel - Protect - TM007
  (848, 84800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 8),
  -- Toxel - Facade - TM025
  (848, 84800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 9),
  -- Toxel - Endure - TM047
  (848, 84800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 10),
  -- Toxel - Sleep Talk - TM070
  (848, 84800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 11),
  -- Toxel - Rest - TM085
  (848, 84800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 12),
  -- Toxel - Substitute - TM103
  (848, 84800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 13),
  -- Toxel - Encore - TM122
  (848, 84800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 14),
  -- Toxel - Tera Blast - TM171
  (848, 84800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 15),
  -- Toxel - Endeavor - Egg
  (848, 84800, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 16),
  -- Toxel - Metal Sound - Egg
  (848, 84800, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 17),
  -- Toxtricity - Leer - Level 1
  (849, 84900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxtricity - Growl - Level 1
  (849, 84900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxtricity - Acid - Level 1
  (849, 84900, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxtricity - Thunder Shock - Level 1
  (849, 84900, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxtricity - Flail - Level 1
  (849, 84900, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxtricity - Acid Spray - Level 1
  (849, 84900, 491, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toxtricity - Belch - Level 1
  (849, 84900, 562, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Toxtricity - Noble Roar - Level 1
  (849, 84900, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Toxtricity - Nuzzle - Level 1
  (849, 84900, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Toxtricity - Tearful Look - Level 1
  (849, 84900, 715, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Toxtricity - Charge - Level 4
  (849, 84900, 268, 23, NULL, 1, 4, NULL, NULL, NULL, 11),
  -- Toxtricity - Shock Wave - Level 8
  (849, 84900, 351, 23, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Toxtricity - Scary Face - Level 12
  (849, 84900, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Toxtricity - Taunt - Level 16
  (849, 84900, 269, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Toxtricity - Screech - Level 24
  (849, 84900, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Toxtricity - Swagger - Level 28
  (849, 84900, 207, 23, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Toxtricity - Toxic - Level 32
  (849, 84900, 92, 23, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Toxtricity - Discharge - Level 36
  (849, 84900, 435, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Toxtricity - Poison Jab - Level 40
  (849, 84900, 398, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Toxtricity - Overdrive - Level 44
  (849, 84900, 786, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Toxtricity - Boomburst - Level 48
  (849, 84900, 586, 23, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Toxtricity - Shift Gear - Level 52
  (849, 84900, 508, 23, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Toxtricity - Take Down - TM001
  (849, 84900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Toxtricity - Charm - TM002
  (849, 84900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Toxtricity - Scary Face - TM006
  (849, 84900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 25),
  -- Toxtricity - Protect - TM007
  (849, 84900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 26),
  -- Toxtricity - Thunder Fang - TM009
  (849, 84900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 27),
  -- Toxtricity - Acid Spray - TM013
  (849, 84900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 28),
  -- Toxtricity - Thief - TM018
  (849, 84900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 29),
  -- Toxtricity - Trailblaze - TM020
  (849, 84900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Toxtricity - Charge Beam - TM023
  (849, 84900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 31),
  -- Toxtricity - Facade - TM025
  (849, 84900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 32),
  -- Toxtricity - Poison Tail - TM026
  (849, 84900, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 33),
  -- Toxtricity - Hex - TM029
  (849, 84900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 34),
  -- Toxtricity - Snarl - TM030
  (849, 84900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 35),
  -- Toxtricity - Swift - TM032
  (849, 84900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 36),
  -- Toxtricity - Stored Power - TM041
  (849, 84900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 37),
  -- Toxtricity - Fling - TM043
  (849, 84900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 38),
  -- Toxtricity - Venoshock - TM045
  (849, 84900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 39),
  -- Toxtricity - Endure - TM047
  (849, 84900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 40),
  -- Toxtricity - Volt Switch - TM048
  (849, 84900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 41),
  -- Toxtricity - Sunny Day - TM049
  (849, 84900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 42),
  -- Toxtricity - Rain Dance - TM050
  (849, 84900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 43),
  -- Toxtricity - Brick Break - TM058
  (849, 84900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 44),
  -- Toxtricity - Fire Punch - TM067
  (849, 84900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 45),
  -- Toxtricity - Thunder Punch - TM068
  (849, 84900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 46),
  -- Toxtricity - Sleep Talk - TM070
  (849, 84900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 47),
  -- Toxtricity - Electro Ball - TM072
  (849, 84900, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 48),
  -- Toxtricity - Drain Punch - TM073
  (849, 84900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 49),
  -- Toxtricity - Metronome - TM080
  (849, 84900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 50),
  -- Toxtricity - Thunder Wave - TM082
  (849, 84900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 51),
  -- Toxtricity - Poison Jab - TM083
  (849, 84900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 52),
  -- Toxtricity - Rest - TM085
  (849, 84900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 53),
  -- Toxtricity - Taunt - TM087
  (849, 84900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 54),
  -- Toxtricity - Toxic Spikes - TM091
  (849, 84900, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 55),
  -- Toxtricity - Eerie Impulse - TM096
  (849, 84900, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 56),
  -- Toxtricity - Gunk Shot - TM102
  (849, 84900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 57),
  -- Toxtricity - Substitute - TM103
  (849, 84900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 58),
  -- Toxtricity - Hyper Voice - TM117
  (849, 84900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 59),
  -- Toxtricity - Encore - TM122
  (849, 84900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 60),
  -- Toxtricity - Thunderbolt - TM126
  (849, 84900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 61),
  -- Toxtricity - Helping Hand - TM130
  (849, 84900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 62),
  -- Toxtricity - Electric Terrain - TM136
  (849, 84900, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 63),
  -- Toxtricity - Wild Charge - TM147
  (849, 84900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 64),
  -- Toxtricity - Sludge Bomb - TM148
  (849, 84900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 65),
  -- Toxtricity - Giga Impact - TM152
  (849, 84900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 66),
  -- Toxtricity - Hyper Beam - TM163
  (849, 84900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Toxtricity - Thunder - TM166
  (849, 84900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Toxtricity - Tera Blast - TM171
  (849, 84900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Toxtricity - Endeavor - Egg
  (849, 84900, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Toxtricity - Metal Sound - Egg
  (849, 84900, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Toxtricity - Spark - Evolution
  (849, 84900, 209, 23, NULL, 7, NULL, NULL, NULL, NULL, 72),
  -- Toxtricity (Low Key) - Leer - Level 1
  (849, 84901, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxtricity (Low Key) - Growl - Level 1
  (849, 84901, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxtricity (Low Key) - Acid - Level 1
  (849, 84901, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxtricity (Low Key) - Thunder Shock - Level 1
  (849, 84901, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxtricity (Low Key) - Flail - Level 1
  (849, 84901, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxtricity (Low Key) - Acid Spray - Level 1
  (849, 84901, 491, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toxtricity (Low Key) - Belch - Level 1
  (849, 84901, 562, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Toxtricity (Low Key) - Noble Roar - Level 1
  (849, 84901, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Toxtricity (Low Key) - Nuzzle - Level 1
  (849, 84901, 609, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Toxtricity (Low Key) - Tearful Look - Level 1
  (849, 84901, 715, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Toxtricity (Low Key) - Charge - Level 4
  (849, 84901, 268, 23, NULL, 1, 4, NULL, NULL, NULL, 11),
  -- Toxtricity (Low Key) - Shock Wave - Level 8
  (849, 84901, 351, 23, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Toxtricity (Low Key) - Scary Face - Level 12
  (849, 84901, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Toxtricity (Low Key) - Taunt - Level 16
  (849, 84901, 269, 23, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Toxtricity (Low Key) - Screech - Level 24
  (849, 84901, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Toxtricity (Low Key) - Swagger - Level 28
  (849, 84901, 207, 23, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Toxtricity (Low Key) - Toxic - Level 32
  (849, 84901, 92, 23, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Toxtricity (Low Key) - Discharge - Level 36
  (849, 84901, 435, 23, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Toxtricity (Low Key) - Poison Jab - Level 40
  (849, 84901, 398, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Toxtricity (Low Key) - Overdrive - Level 44
  (849, 84901, 786, 23, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Toxtricity (Low Key) - Boomburst - Level 48
  (849, 84901, 586, 23, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Toxtricity (Low Key) - Magnetic Flux - Level 52
  (849, 84901, 602, 23, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Toxtricity (Low Key) - Spark - Evolution
  (849, 84901, 209, 23, NULL, 7, NULL, NULL, NULL, NULL, 23);
