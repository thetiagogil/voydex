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
-- Scarlet / Violet learnsets for species 151-200.
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
  -- Mew - Pound - Level 1
  (151, 15100, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Reflect Type - Level 1
  (151, 15100, 513, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mew - Amnesia - Level 10
  (151, 15100, 133, 23, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Mew - Baton Pass - Level 20
  (151, 15100, 226, 23, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mew - Ancient Power - Level 30
  (151, 15100, 246, 23, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Mew - Life Dew - Level 40
  (151, 15100, 791, 23, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Mew - Nasty Plot - Level 50
  (151, 15100, 417, 23, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Mew - Metronome - Level 60
  (151, 15100, 118, 23, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Mew - Imprison - Level 70
  (151, 15100, 286, 23, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Mew - Transform - Level 80
  (151, 15100, 144, 23, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Mew - Aura Sphere - Level 90
  (151, 15100, 396, 23, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Mew - Psychic - Level 100
  (151, 15100, 94, 23, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Mew - Take Down - TM001
  (151, 15100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Mew - Charm - TM002
  (151, 15100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Mew - Fake Tears - TM003
  (151, 15100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Mew - Agility - TM004
  (151, 15100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Mew - Mud-Slap - TM005
  (151, 15100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Mew - Scary Face - TM006
  (151, 15100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Mew - Protect - TM007
  (151, 15100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Mew - Fire Fang - TM008
  (151, 15100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Mew - Thunder Fang - TM009
  (151, 15100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Mew - Ice Fang - TM010
  (151, 15100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Mew - Water Pulse - TM011
  (151, 15100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Mew - Low Kick - TM012
  (151, 15100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Mew - Acid Spray - TM013
  (151, 15100, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 25),
  -- Mew - Acrobatics - TM014
  (151, 15100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 26),
  -- Mew - Struggle Bug - TM015
  (151, 15100, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 27),
  -- Mew - Psybeam - TM016
  (151, 15100, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 28),
  -- Mew - Confuse Ray - TM017
  (151, 15100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 29),
  -- Mew - Thief - TM018
  (151, 15100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 30),
  -- Mew - Disarming Voice - TM019
  (151, 15100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 31),
  -- Mew - Trailblaze - TM020
  (151, 15100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 32),
  -- Mew - Pounce - TM021
  (151, 15100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 33),
  -- Mew - Chilling Water - TM022
  (151, 15100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 34),
  -- Mew - Charge Beam - TM023
  (151, 15100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 35),
  -- Mew - Fire Spin - TM024
  (151, 15100, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 36),
  -- Mew - Facade - TM025
  (151, 15100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 37),
  -- Mew - Poison Tail - TM026
  (151, 15100, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 38),
  -- Mew - Aerial Ace - TM027
  (151, 15100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 39),
  -- Mew - Bulldoze - TM028
  (151, 15100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 40),
  -- Mew - Hex - TM029
  (151, 15100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 41),
  -- Mew - Snarl - TM030
  (151, 15100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 42),
  -- Mew - Metal Claw - TM031
  (151, 15100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 43),
  -- Mew - Swift - TM032
  (151, 15100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 44),
  -- Mew - Magical Leaf - TM033
  (151, 15100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 45),
  -- Mew - Icy Wind - TM034
  (151, 15100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 46),
  -- Mew - Mud Shot - TM035
  (151, 15100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 47),
  -- Mew - Rock Tomb - TM036
  (151, 15100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 48),
  -- Mew - Draining Kiss - TM037
  (151, 15100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 49),
  -- Mew - Flame Charge - TM038
  (151, 15100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 50),
  -- Mew - Low Sweep - TM039
  (151, 15100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 51),
  -- Mew - Air Cutter - TM040
  (151, 15100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 52),
  -- Mew - Stored Power - TM041
  (151, 15100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 53),
  -- Mew - Night Shade - TM042
  (151, 15100, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 54),
  -- Mew - Fling - TM043
  (151, 15100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 55),
  -- Mew - Dragon Tail - TM044
  (151, 15100, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 56),
  -- Mew - Venoshock - TM045
  (151, 15100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 57),
  -- Mew - Avalanche - TM046
  (151, 15100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 58),
  -- Mew - Endure - TM047
  (151, 15100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 59),
  -- Mew - Volt Switch - TM048
  (151, 15100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 60),
  -- Mew - Sunny Day - TM049
  (151, 15100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 61),
  -- Mew - Rain Dance - TM050
  (151, 15100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 62),
  -- Mew - Sandstorm - TM051
  (151, 15100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 63),
  -- Mew - Snowscape - TM052
  (151, 15100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 64),
  -- Mew - Smart Strike - TM053
  (151, 15100, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 65),
  -- Mew - Psyshock - TM054
  (151, 15100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 66),
  -- Mew - Dig - TM055
  (151, 15100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 67),
  -- Mew - Bullet Seed - TM056
  (151, 15100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 68),
  -- Mew - False Swipe - TM057
  (151, 15100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 69),
  -- Mew - Brick Break - TM058
  (151, 15100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 70),
  -- Mew - Zen Headbutt - TM059
  (151, 15100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 71),
  -- Mew - U-turn - TM060
  (151, 15100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 72),
  -- Mew - Shadow Claw - TM061
  (151, 15100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 73),
  -- Mew - Foul Play - TM062
  (151, 15100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 74),
  -- Mew - Psychic Fangs - TM063
  (151, 15100, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 75),
  -- Mew - Bulk Up - TM064
  (151, 15100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 76),
  -- Mew - Air Slash - TM065
  (151, 15100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 77),
  -- Mew - Body Slam - TM066
  (151, 15100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 78),
  -- Mew - Fire Punch - TM067
  (151, 15100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 79),
  -- Mew - Thunder Punch - TM068
  (151, 15100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 80),
  -- Mew - Ice Punch - TM069
  (151, 15100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 81),
  -- Mew - Sleep Talk - TM070
  (151, 15100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 82),
  -- Mew - Seed Bomb - TM071
  (151, 15100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 83),
  -- Mew - Electro Ball - TM072
  (151, 15100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 84),
  -- Mew - Drain Punch - TM073
  (151, 15100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 85),
  -- Mew - Reflect - TM074
  (151, 15100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 86),
  -- Mew - Light Screen - TM075
  (151, 15100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 87),
  -- Mew - Rock Blast - TM076
  (151, 15100, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 88),
  -- Mew - Waterfall - TM077
  (151, 15100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 89),
  -- Mew - Dragon Claw - TM078
  (151, 15100, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 90),
  -- Mew - Dazzling Gleam - TM079
  (151, 15100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 91),
  -- Mew - Metronome - TM080
  (151, 15100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 92),
  -- Mew - Grass Knot - TM081
  (151, 15100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 93),
  -- Mew - Thunder Wave - TM082
  (151, 15100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 94),
  -- Mew - Poison Jab - TM083
  (151, 15100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 95),
  -- Mew - Stomping Tantrum - TM084
  (151, 15100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 96),
  -- Mew - Rest - TM085
  (151, 15100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 97),
  -- Mew - Rock Slide - TM086
  (151, 15100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 98),
  -- Mew - Taunt - TM087
  (151, 15100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 99),
  -- Mew - Swords Dance - TM088
  (151, 15100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 100),
  -- Mew - Body Press - TM089
  (151, 15100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 101),
  -- Mew - Spikes - TM090
  (151, 15100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 102),
  -- Mew - Toxic Spikes - TM091
  (151, 15100, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 103),
  -- Mew - Imprison - TM092
  (151, 15100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 104),
  -- Mew - Flash Cannon - TM093
  (151, 15100, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 105),
  -- Mew - Dark Pulse - TM094
  (151, 15100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 106),
  -- Mew - Leech Life - TM095
  (151, 15100, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 107),
  -- Mew - Eerie Impulse - TM096
  (151, 15100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 108),
  -- Mew - Fly - TM097
  (151, 15100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 109),
  -- Mew - Skill Swap - TM098
  (151, 15100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 110),
  -- Mew - Iron Head - TM099
  (151, 15100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 111),
  -- Mew - Dragon Dance - TM100
  (151, 15100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 112),
  -- Mew - Power Gem - TM101
  (151, 15100, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 113),
  -- Mew - Gunk Shot - TM102
  (151, 15100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 114),
  -- Mew - Substitute - TM103
  (151, 15100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 115),
  -- Mew - Iron Defense - TM104
  (151, 15100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 116),
  -- Mew - X-Scissor - TM105
  (151, 15100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 117),
  -- Mew - Drill Run - TM106
  (151, 15100, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 118),
  -- Mew - Will-O-Wisp - TM107
  (151, 15100, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 119),
  -- Mew - Crunch - TM108
  (151, 15100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 120),
  -- Mew - Trick - TM109
  (151, 15100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 121),
  -- Mew - Liquidation - TM110
  (151, 15100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 122),
  -- Mew - Giga Drain - TM111
  (151, 15100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 123),
  -- Mew - Aura Sphere - TM112
  (151, 15100, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 124),
  -- Mew - Tailwind - TM113
  (151, 15100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 125),
  -- Mew - Shadow Ball - TM114
  (151, 15100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 126),
  -- Mew - Dragon Pulse - TM115
  (151, 15100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 127),
  -- Mew - Stealth Rock - TM116
  (151, 15100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 128),
  -- Mew - Hyper Voice - TM117
  (151, 15100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 129),
  -- Mew - Heat Wave - TM118
  (151, 15100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 130),
  -- Mew - Energy Ball - TM119
  (151, 15100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 131),
  -- Mew - Psychic - TM120
  (151, 15100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 132),
  -- Mew - Heavy Slam - TM121
  (151, 15100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 133),
  -- Mew - Encore - TM122
  (151, 15100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 134),
  -- Mew - Surf - TM123
  (151, 15100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 135),
  -- Mew - Ice Spinner - TM124
  (151, 15100, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 136),
  -- Mew - Flamethrower - TM125
  (151, 15100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 137),
  -- Mew - Thunderbolt - TM126
  (151, 15100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 138),
  -- Mew - Play Rough - TM127
  (151, 15100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 139),
  -- Mew - Amnesia - TM128
  (151, 15100, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 140),
  -- Mew - Calm Mind - TM129
  (151, 15100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 141),
  -- Mew - Helping Hand - TM130
  (151, 15100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 142),
  -- Mew - Pollen Puff - TM131
  (151, 15100, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 143),
  -- Mew - Baton Pass - TM132
  (151, 15100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 144),
  -- Mew - Earth Power - TM133
  (151, 15100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 145),
  -- Mew - Reversal - TM134
  (151, 15100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 146),
  -- Mew - Ice Beam - TM135
  (151, 15100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 147),
  -- Mew - Electric Terrain - TM136
  (151, 15100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 148),
  -- Mew - Grassy Terrain - TM137
  (151, 15100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 149),
  -- Mew - Psychic Terrain - TM138
  (151, 15100, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 150),
  -- Mew - Misty Terrain - TM139
  (151, 15100, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 151),
  -- Mew - Nasty Plot - TM140
  (151, 15100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 152),
  -- Mew - Fire Blast - TM141
  (151, 15100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 153),
  -- Mew - Hydro Pump - TM142
  (151, 15100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 154),
  -- Mew - Blizzard - TM143
  (151, 15100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 155),
  -- Mew - Fire Pledge - TM144
  (151, 15100, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 156),
  -- Mew - Water Pledge - TM145
  (151, 15100, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 157),
  -- Mew - Grass Pledge - TM146
  (151, 15100, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 158),
  -- Mew - Wild Charge - TM147
  (151, 15100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 159),
  -- Mew - Sludge Bomb - TM148
  (151, 15100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 160),
  -- Mew - Earthquake - TM149
  (151, 15100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 161),
  -- Mew - Stone Edge - TM150
  (151, 15100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 162),
  -- Mew - Phantom Force - TM151
  (151, 15100, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 163),
  -- Mew - Giga Impact - TM152
  (151, 15100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 164),
  -- Mew - Blast Burn - TM153
  (151, 15100, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 165),
  -- Mew - Hydro Cannon - TM154
  (151, 15100, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 166),
  -- Mew - Frenzy Plant - TM155
  (151, 15100, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 167),
  -- Mew - Outrage - TM156
  (151, 15100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 168),
  -- Mew - Overheat - TM157
  (151, 15100, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 169),
  -- Mew - Focus Blast - TM158
  (151, 15100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 170),
  -- Mew - Leaf Storm - TM159
  (151, 15100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 171),
  -- Mew - Hurricane - TM160
  (151, 15100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 172),
  -- Mew - Trick Room - TM161
  (151, 15100, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 173),
  -- Mew - Bug Buzz - TM162
  (151, 15100, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 174),
  -- Mew - Hyper Beam - TM163
  (151, 15100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 175),
  -- Mew - Brave Bird - TM164
  (151, 15100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 176),
  -- Mew - Flare Blitz - TM165
  (151, 15100, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 177),
  -- Mew - Thunder - TM166
  (151, 15100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 178),
  -- Mew - Close Combat - TM167
  (151, 15100, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 179),
  -- Mew - Solar Beam - TM168
  (151, 15100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 180),
  -- Mew - Draco Meteor - TM169
  (151, 15100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 181),
  -- Mew - Steel Beam - TM170
  (151, 15100, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 182),
  -- Mew - Tera Blast - TM171
  (151, 15100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 183),
  -- Chikorita - Tackle - Level 1
  (152, 15200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Level 1
  (152, 15200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 6
  (152, 15200, 75, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chikorita - Poison Powder - Level 9
  (152, 15200, 77, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chikorita - Synthesis - Level 12
  (152, 15200, 235, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chikorita - Reflect - Level 17
  (152, 15200, 115, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chikorita - Magical Leaf - Level 20
  (152, 15200, 345, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chikorita - Leech Seed - Level 23
  (152, 15200, 73, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chikorita - Sweet Scent - Level 28
  (152, 15200, 230, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chikorita - Light Screen - Level 31
  (152, 15200, 113, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chikorita - Body Slam - Level 34
  (152, 15200, 34, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chikorita - Safeguard - Level 39
  (152, 15200, 219, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chikorita - Giga Drain - Level 42
  (152, 15200, 202, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chikorita - Solar Beam - Level 45
  (152, 15200, 76, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chikorita - Take Down - TM001
  (152, 15200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Chikorita - Charm - TM002
  (152, 15200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Chikorita - Fake Tears - TM003
  (152, 15200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Chikorita - Mud-Slap - TM005
  (152, 15200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Chikorita - Protect - TM007
  (152, 15200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Chikorita - Trailblaze - TM020
  (152, 15200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Chikorita - Facade - TM025
  (152, 15200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Chikorita - Magical Leaf - TM033
  (152, 15200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Chikorita - Endure - TM047
  (152, 15200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Chikorita - Sunny Day - TM049
  (152, 15200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Chikorita - Bullet Seed - TM056
  (152, 15200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Chikorita - Body Slam - TM066
  (152, 15200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Chikorita - Sleep Talk - TM070
  (152, 15200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Chikorita - Seed Bomb - TM071
  (152, 15200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Chikorita - Reflect - TM074
  (152, 15200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Chikorita - Light Screen - TM075
  (152, 15200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Chikorita - Grass Knot - TM081
  (152, 15200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Chikorita - Rest - TM085
  (152, 15200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Chikorita - Swords Dance - TM088
  (152, 15200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Chikorita - Substitute - TM103
  (152, 15200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Chikorita - Giga Drain - TM111
  (152, 15200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Chikorita - Energy Ball - TM119
  (152, 15200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Chikorita - Encore - TM122
  (152, 15200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 37),
  -- Chikorita - Helping Hand - TM130
  (152, 15200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Chikorita - Grassy Terrain - TM137
  (152, 15200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 39),
  -- Chikorita - Grass Pledge - TM146
  (152, 15200, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 40),
  -- Chikorita - Leaf Storm - TM159
  (152, 15200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 41),
  -- Chikorita - Solar Beam - TM168
  (152, 15200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Chikorita - Tera Blast - TM171
  (152, 15200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Chikorita - Vine Whip - Egg
  (152, 15200, 22, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chikorita - Counter - Egg
  (152, 15200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chikorita - Flail - Egg
  (152, 15200, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chikorita - Ancient Power - Egg
  (152, 15200, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chikorita - Ingrain - Egg
  (152, 15200, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chikorita - Heal Pulse - Egg
  (152, 15200, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Level 1
  (153, 15300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Level 1
  (153, 15300, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bayleef - Poison Powder - Level 1
  (153, 15300, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bayleef - Synthesis - Level 12
  (153, 15300, 235, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Bayleef - Reflect - Level 18
  (153, 15300, 115, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Bayleef - Magical Leaf - Level 22
  (153, 15300, 345, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Bayleef - Leech Seed - Level 26
  (153, 15300, 73, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Bayleef - Sweet Scent - Level 32
  (153, 15300, 230, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Bayleef - Light Screen - Level 36
  (153, 15300, 113, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Bayleef - Body Slam - Level 40
  (153, 15300, 34, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Bayleef - Safeguard - Level 46
  (153, 15300, 219, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Bayleef - Giga Drain - Level 50
  (153, 15300, 202, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Bayleef - Solar Beam - Level 54
  (153, 15300, 76, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Bayleef - Take Down - TM001
  (153, 15300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Bayleef - Charm - TM002
  (153, 15300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Bayleef - Fake Tears - TM003
  (153, 15300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Bayleef - Mud-Slap - TM005
  (153, 15300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Bayleef - Protect - TM007
  (153, 15300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Bayleef - Trailblaze - TM020
  (153, 15300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Bayleef - Facade - TM025
  (153, 15300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Bayleef - Magical Leaf - TM033
  (153, 15300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Bayleef - Endure - TM047
  (153, 15300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Bayleef - Sunny Day - TM049
  (153, 15300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Bayleef - Bullet Seed - TM056
  (153, 15300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Bayleef - Body Slam - TM066
  (153, 15300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Bayleef - Sleep Talk - TM070
  (153, 15300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Bayleef - Seed Bomb - TM071
  (153, 15300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Bayleef - Reflect - TM074
  (153, 15300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Bayleef - Light Screen - TM075
  (153, 15300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Bayleef - Grass Knot - TM081
  (153, 15300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Bayleef - Stomping Tantrum - TM084
  (153, 15300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Bayleef - Rest - TM085
  (153, 15300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Bayleef - Swords Dance - TM088
  (153, 15300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Bayleef - Substitute - TM103
  (153, 15300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Bayleef - Giga Drain - TM111
  (153, 15300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Bayleef - Energy Ball - TM119
  (153, 15300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Bayleef - Encore - TM122
  (153, 15300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 38),
  -- Bayleef - Helping Hand - TM130
  (153, 15300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Bayleef - Grassy Terrain - TM137
  (153, 15300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Bayleef - Grass Pledge - TM146
  (153, 15300, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 41),
  -- Bayleef - Leaf Storm - TM159
  (153, 15300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 42),
  -- Bayleef - Solar Beam - TM168
  (153, 15300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 43),
  -- Bayleef - Tera Blast - TM171
  (153, 15300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Bayleef - Vine Whip - Egg
  (153, 15300, 22, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bayleef - Counter - Egg
  (153, 15300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bayleef - Flail - Egg
  (153, 15300, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bayleef - Ancient Power - Egg
  (153, 15300, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bayleef - Ingrain - Egg
  (153, 15300, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bayleef - Heal Pulse - Egg
  (153, 15300, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Growl - Level 1
  (154, 15400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Razor Leaf - Level 1
  (154, 15400, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meganium - Poison Powder - Level 1
  (154, 15400, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meganium - Petal Blizzard - Level 1
  (154, 15400, 572, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meganium - Synthesis - Level 12
  (154, 15400, 235, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Meganium - Reflect - Level 18
  (154, 15400, 115, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Meganium - Magical Leaf - Level 22
  (154, 15400, 345, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Meganium - Leech Seed - Level 26
  (154, 15400, 73, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Meganium - Sweet Scent - Level 34
  (154, 15400, 230, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Meganium - Light Screen - Level 40
  (154, 15400, 113, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Meganium - Body Slam - Level 46
  (154, 15400, 34, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Meganium - Safeguard - Level 54
  (154, 15400, 219, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Meganium - Giga Drain - Level 60
  (154, 15400, 202, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Meganium - Solar Beam - Level 65
  (154, 15400, 76, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Meganium - Take Down - TM001
  (154, 15400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Meganium - Charm - TM002
  (154, 15400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Meganium - Fake Tears - TM003
  (154, 15400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Meganium - Mud-Slap - TM005
  (154, 15400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Meganium - Protect - TM007
  (154, 15400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Meganium - Trailblaze - TM020
  (154, 15400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Meganium - Facade - TM025
  (154, 15400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Meganium - Bulldoze - TM028
  (154, 15400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Meganium - Magical Leaf - TM033
  (154, 15400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 24),
  -- Meganium - Dragon Tail - TM044
  (154, 15400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 25),
  -- Meganium - Endure - TM047
  (154, 15400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Meganium - Sunny Day - TM049
  (154, 15400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Meganium - Bullet Seed - TM056
  (154, 15400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Meganium - Zen Headbutt - TM059
  (154, 15400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Meganium - Body Slam - TM066
  (154, 15400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Meganium - Sleep Talk - TM070
  (154, 15400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Meganium - Seed Bomb - TM071
  (154, 15400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Meganium - Reflect - TM074
  (154, 15400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Meganium - Light Screen - TM075
  (154, 15400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Meganium - Grass Knot - TM081
  (154, 15400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Meganium - Stomping Tantrum - TM084
  (154, 15400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Meganium - Rest - TM085
  (154, 15400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Meganium - Swords Dance - TM088
  (154, 15400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Meganium - Body Press - TM089
  (154, 15400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Meganium - Substitute - TM103
  (154, 15400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Meganium - Giga Drain - TM111
  (154, 15400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Meganium - Energy Ball - TM119
  (154, 15400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Meganium - Encore - TM122
  (154, 15400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Meganium - Helping Hand - TM130
  (154, 15400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Meganium - Grassy Terrain - TM137
  (154, 15400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Meganium - Grass Pledge - TM146
  (154, 15400, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 46),
  -- Meganium - Earthquake - TM149
  (154, 15400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Meganium - Giga Impact - TM152
  (154, 15400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Meganium - Frenzy Plant - TM155
  (154, 15400, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 49),
  -- Meganium - Outrage - TM156
  (154, 15400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 50),
  -- Meganium - Leaf Storm - TM159
  (154, 15400, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 51),
  -- Meganium - Hyper Beam - TM163
  (154, 15400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Meganium - Solar Beam - TM168
  (154, 15400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 53),
  -- Meganium - Tera Blast - TM171
  (154, 15400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Meganium - Vine Whip - Egg
  (154, 15400, 22, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meganium - Counter - Egg
  (154, 15400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meganium - Flail - Egg
  (154, 15400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meganium - Ancient Power - Egg
  (154, 15400, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meganium - Ingrain - Egg
  (154, 15400, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meganium - Heal Pulse - Egg
  (154, 15400, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meganium - Petal Dance - Evolution
  (154, 15400, 80, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Cyndaquil - Tackle - Level 1
  (155, 15500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Level 1
  (155, 15500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 6
  (155, 15500, 108, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 10
  (155, 15500, 52, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 13
  (155, 15500, 98, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 19
  (155, 15500, 172, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cyndaquil - Defense Curl - Level 22
  (155, 15500, 111, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flame Charge - Level 28
  (155, 15500, 488, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cyndaquil - Swift - Level 31
  (155, 15500, 129, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyndaquil - Lava Plume - Level 37
  (155, 15500, 436, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cyndaquil - Flamethrower - Level 40
  (155, 15500, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyndaquil - Inferno - Level 46
  (155, 15500, 517, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cyndaquil - Rollout - Level 49
  (155, 15500, 205, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Cyndaquil - Double-Edge - Level 55
  (155, 15500, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cyndaquil - Overheat - Level 58
  (155, 15500, 315, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Cyndaquil - Eruption - Level 64
  (155, 15500, 284, 23, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Cyndaquil - Take Down - TM001
  (155, 15500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Cyndaquil - Protect - TM007
  (155, 15500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Cyndaquil - Fire Fang - TM008
  (155, 15500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Cyndaquil - Fire Spin - TM024
  (155, 15500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Cyndaquil - Facade - TM025
  (155, 15500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Cyndaquil - Aerial Ace - TM027
  (155, 15500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Cyndaquil - Swift - TM032
  (155, 15500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Cyndaquil - Flame Charge - TM038
  (155, 15500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Cyndaquil - Endure - TM047
  (155, 15500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Cyndaquil - Sunny Day - TM049
  (155, 15500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Cyndaquil - Dig - TM055
  (155, 15500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Cyndaquil - Zen Headbutt - TM059
  (155, 15500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Cyndaquil - Body Slam - TM066
  (155, 15500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Cyndaquil - Sleep Talk - TM070
  (155, 15500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Cyndaquil - Rest - TM085
  (155, 15500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Cyndaquil - Iron Head - TM099
  (155, 15500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 32),
  -- Cyndaquil - Substitute - TM103
  (155, 15500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Cyndaquil - Will-O-Wisp - TM107
  (155, 15500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 34),
  -- Cyndaquil - Heat Wave - TM118
  (155, 15500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 35),
  -- Cyndaquil - Flamethrower - TM125
  (155, 15500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 36),
  -- Cyndaquil - Play Rough - TM127
  (155, 15500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Cyndaquil - Reversal - TM134
  (155, 15500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 38),
  -- Cyndaquil - Fire Blast - TM141
  (155, 15500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 39),
  -- Cyndaquil - Fire Pledge - TM144
  (155, 15500, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 40),
  -- Cyndaquil - Wild Charge - TM147
  (155, 15500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 41),
  -- Cyndaquil - Overheat - TM157
  (155, 15500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 42),
  -- Cyndaquil - Flare Blitz - TM165
  (155, 15500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 43),
  -- Cyndaquil - Tera Blast - TM171
  (155, 15500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Cyndaquil - Double Kick - Egg
  (155, 15500, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cyndaquil - Curse - Egg
  (155, 15500, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cyndaquil - Reversal - Egg
  (155, 15500, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cyndaquil - Extrasensory - Egg
  (155, 15500, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cyndaquil - Howl - Egg
  (155, 15500, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cyndaquil - Covet - Egg
  (155, 15500, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Quilava - Tackle - Level 1
  (156, 15600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Level 1
  (156, 15600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Level 1
  (156, 15600, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quilava - Ember - Level 10
  (156, 15600, 52, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Quilava - Quick Attack - Level 13
  (156, 15600, 98, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Quilava - Flame Wheel - Level 20
  (156, 15600, 172, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Quilava - Defense Curl - Level 24
  (156, 15600, 111, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Quilava - Swift - Level 31
  (156, 15600, 129, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Quilava - Flame Charge - Level 35
  (156, 15600, 488, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Quilava - Lava Plume - Level 42
  (156, 15600, 436, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Quilava - Flamethrower - Level 46
  (156, 15600, 53, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Quilava - Inferno - Level 53
  (156, 15600, 517, 23, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Quilava - Rollout - Level 57
  (156, 15600, 205, 23, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Quilava - Double-Edge - Level 64
  (156, 15600, 38, 23, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Quilava - Overheat - Level 68
  (156, 15600, 315, 23, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Quilava - Eruption - Level 75
  (156, 15600, 284, 23, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Quilava - Take Down - TM001
  (156, 15600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Quilava - Protect - TM007
  (156, 15600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Quilava - Fire Fang - TM008
  (156, 15600, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Quilava - Fire Spin - TM024
  (156, 15600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Quilava - Facade - TM025
  (156, 15600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Quilava - Aerial Ace - TM027
  (156, 15600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Quilava - Swift - TM032
  (156, 15600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Quilava - Flame Charge - TM038
  (156, 15600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Quilava - Endure - TM047
  (156, 15600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Quilava - Sunny Day - TM049
  (156, 15600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Quilava - Dig - TM055
  (156, 15600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Quilava - Brick Break - TM058
  (156, 15600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Quilava - Zen Headbutt - TM059
  (156, 15600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Quilava - Body Slam - TM066
  (156, 15600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Quilava - Sleep Talk - TM070
  (156, 15600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Quilava - Rest - TM085
  (156, 15600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Quilava - Iron Head - TM099
  (156, 15600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 33),
  -- Quilava - Substitute - TM103
  (156, 15600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Quilava - Will-O-Wisp - TM107
  (156, 15600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 35),
  -- Quilava - Heat Wave - TM118
  (156, 15600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Quilava - Flamethrower - TM125
  (156, 15600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 37),
  -- Quilava - Play Rough - TM127
  (156, 15600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 38),
  -- Quilava - Reversal - TM134
  (156, 15600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 39),
  -- Quilava - Fire Blast - TM141
  (156, 15600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 40),
  -- Quilava - Fire Pledge - TM144
  (156, 15600, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 41),
  -- Quilava - Wild Charge - TM147
  (156, 15600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 42),
  -- Quilava - Overheat - TM157
  (156, 15600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 43),
  -- Quilava - Flare Blitz - TM165
  (156, 15600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Quilava - Tera Blast - TM171
  (156, 15600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Quilava - Double Kick - Egg
  (156, 15600, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Quilava - Curse - Egg
  (156, 15600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Quilava - Reversal - Egg
  (156, 15600, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Quilava - Extrasensory - Egg
  (156, 15600, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Quilava - Howl - Egg
  (156, 15600, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Quilava - Covet - Egg
  (156, 15600, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Typhlosion - Tackle - Level 1
  (157, 15700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion - Double-Edge - Level 1
  (157, 15700, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion - Leer - Level 1
  (157, 15700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion - Ember - Level 1
  (157, 15700, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion - Smokescreen - Level 1
  (157, 15700, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Typhlosion - Eruption - Level 1
  (157, 15700, 284, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Typhlosion - Gyro Ball - Level 1
  (157, 15700, 360, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Typhlosion - Quick Attack - Level 13
  (157, 15700, 98, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Typhlosion - Flame Wheel - Level 20
  (157, 15700, 172, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Typhlosion - Defense Curl - Level 24
  (157, 15700, 111, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Typhlosion - Swift - Level 31
  (157, 15700, 129, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Typhlosion - Flame Charge - Level 35
  (157, 15700, 488, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Typhlosion - Lava Plume - Level 43
  (157, 15700, 436, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Typhlosion - Flamethrower - Level 48
  (157, 15700, 53, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Typhlosion - Inferno - Level 56
  (157, 15700, 517, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Typhlosion - Rollout - Level 61
  (157, 15700, 205, 23, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Typhlosion - Overheat - Level 74
  (157, 15700, 315, 23, NULL, 1, 74, NULL, NULL, NULL, 17),
  -- Typhlosion - Take Down - TM001
  (157, 15700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Typhlosion - Protect - TM007
  (157, 15700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Typhlosion - Fire Fang - TM008
  (157, 15700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Typhlosion - Low Kick - TM012
  (157, 15700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Typhlosion - Fire Spin - TM024
  (157, 15700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Typhlosion - Facade - TM025
  (157, 15700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Typhlosion - Aerial Ace - TM027
  (157, 15700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Typhlosion - Bulldoze - TM028
  (157, 15700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Typhlosion - Swift - TM032
  (157, 15700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Typhlosion - Rock Tomb - TM036
  (157, 15700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Typhlosion - Flame Charge - TM038
  (157, 15700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 28),
  -- Typhlosion - Fling - TM043
  (157, 15700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Typhlosion - Endure - TM047
  (157, 15700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Typhlosion - Sunny Day - TM049
  (157, 15700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Typhlosion - Dig - TM055
  (157, 15700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Typhlosion - Brick Break - TM058
  (157, 15700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Typhlosion - Zen Headbutt - TM059
  (157, 15700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Typhlosion - Shadow Claw - TM061
  (157, 15700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Typhlosion - Body Slam - TM066
  (157, 15700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Typhlosion - Fire Punch - TM067
  (157, 15700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Typhlosion - Thunder Punch - TM068
  (157, 15700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Typhlosion - Sleep Talk - TM070
  (157, 15700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Typhlosion - Stomping Tantrum - TM084
  (157, 15700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Typhlosion - Rest - TM085
  (157, 15700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Typhlosion - Rock Slide - TM086
  (157, 15700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Typhlosion - Iron Head - TM099
  (157, 15700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 43),
  -- Typhlosion - Substitute - TM103
  (157, 15700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Typhlosion - Will-O-Wisp - TM107
  (157, 15700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 45),
  -- Typhlosion - Shadow Ball - TM114
  (157, 15700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Typhlosion - Heat Wave - TM118
  (157, 15700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 47),
  -- Typhlosion - Flamethrower - TM125
  (157, 15700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 48),
  -- Typhlosion - Play Rough - TM127
  (157, 15700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 49),
  -- Typhlosion - Helping Hand - TM130
  (157, 15700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Typhlosion - Reversal - TM134
  (157, 15700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 51),
  -- Typhlosion - Fire Blast - TM141
  (157, 15700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Typhlosion - Fire Pledge - TM144
  (157, 15700, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 53),
  -- Typhlosion - Wild Charge - TM147
  (157, 15700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 54),
  -- Typhlosion - Earthquake - TM149
  (157, 15700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Typhlosion - Giga Impact - TM152
  (157, 15700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Typhlosion - Blast Burn - TM153
  (157, 15700, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 57),
  -- Typhlosion - Overheat - TM157
  (157, 15700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 58),
  -- Typhlosion - Focus Blast - TM158
  (157, 15700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Typhlosion - Hyper Beam - TM163
  (157, 15700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Typhlosion - Flare Blitz - TM165
  (157, 15700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 61),
  -- Typhlosion - Solar Beam - TM168
  (157, 15700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 62),
  -- Typhlosion - Tera Blast - TM171
  (157, 15700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Typhlosion - Double Kick - Egg
  (157, 15700, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Typhlosion - Curse - Egg
  (157, 15700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Typhlosion - Reversal - Egg
  (157, 15700, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Typhlosion - Extrasensory - Egg
  (157, 15700, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Typhlosion - Howl - Egg
  (157, 15700, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Typhlosion - Covet - Egg
  (157, 15700, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Typhlosion (Hisuian Typhlosion) - Tackle - Level 1
  (157, 15701, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion (Hisuian Typhlosion) - Double-Edge - Level 1
  (157, 15701, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion (Hisuian Typhlosion) - Leer - Level 1
  (157, 15701, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion (Hisuian Typhlosion) - Ember - Level 1
  (157, 15701, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion (Hisuian Typhlosion) - Smokescreen - Level 1
  (157, 15701, 108, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Typhlosion (Hisuian Typhlosion) - Eruption - Level 1
  (157, 15701, 284, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Typhlosion (Hisuian Typhlosion) - Gyro Ball - Level 1
  (157, 15701, 360, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Typhlosion (Hisuian Typhlosion) - Quick Attack - Level 13
  (157, 15701, 98, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Typhlosion (Hisuian Typhlosion) - Flame Wheel - Level 20
  (157, 15701, 172, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Typhlosion (Hisuian Typhlosion) - Defense Curl - Level 24
  (157, 15701, 111, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Typhlosion (Hisuian Typhlosion) - Swift - Level 31
  (157, 15701, 129, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Typhlosion (Hisuian Typhlosion) - Flame Charge - Level 35
  (157, 15701, 488, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Typhlosion (Hisuian Typhlosion) - Lava Plume - Level 43
  (157, 15701, 436, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Typhlosion (Hisuian Typhlosion) - Flamethrower - Level 48
  (157, 15701, 53, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Typhlosion (Hisuian Typhlosion) - Inferno - Level 56
  (157, 15701, 517, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Typhlosion (Hisuian Typhlosion) - Rollout - Level 61
  (157, 15701, 205, 23, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Typhlosion (Hisuian Typhlosion) - Overheat - Level 74
  (157, 15701, 315, 23, NULL, 1, 74, NULL, NULL, NULL, 17),
  -- Typhlosion (Hisuian Typhlosion) - Take Down - TM001
  (157, 15701, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Typhlosion (Hisuian Typhlosion) - Protect - TM007
  (157, 15701, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Typhlosion (Hisuian Typhlosion) - Fire Fang - TM008
  (157, 15701, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Typhlosion (Hisuian Typhlosion) - Low Kick - TM012
  (157, 15701, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Typhlosion (Hisuian Typhlosion) - Confuse Ray - TM017
  (157, 15701, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Typhlosion (Hisuian Typhlosion) - Fire Spin - TM024
  (157, 15701, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Typhlosion (Hisuian Typhlosion) - Facade - TM025
  (157, 15701, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Typhlosion (Hisuian Typhlosion) - Aerial Ace - TM027
  (157, 15701, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Typhlosion (Hisuian Typhlosion) - Bulldoze - TM028
  (157, 15701, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Typhlosion (Hisuian Typhlosion) - Hex - TM029
  (157, 15701, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Typhlosion (Hisuian Typhlosion) - Swift - TM032
  (157, 15701, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Typhlosion (Hisuian Typhlosion) - Flame Charge - TM038
  (157, 15701, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Typhlosion (Hisuian Typhlosion) - Night Shade - TM042
  (157, 15701, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Typhlosion (Hisuian Typhlosion) - Endure - TM047
  (157, 15701, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Typhlosion (Hisuian Typhlosion) - Sunny Day - TM049
  (157, 15701, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Typhlosion (Hisuian Typhlosion) - Dig - TM055
  (157, 15701, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Typhlosion (Hisuian Typhlosion) - Brick Break - TM058
  (157, 15701, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Typhlosion (Hisuian Typhlosion) - Zen Headbutt - TM059
  (157, 15701, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Typhlosion (Hisuian Typhlosion) - Shadow Claw - TM061
  (157, 15701, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Typhlosion (Hisuian Typhlosion) - Body Slam - TM066
  (157, 15701, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Typhlosion (Hisuian Typhlosion) - Fire Punch - TM067
  (157, 15701, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Typhlosion (Hisuian Typhlosion) - Thunder Punch - TM068
  (157, 15701, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Typhlosion (Hisuian Typhlosion) - Sleep Talk - TM070
  (157, 15701, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Typhlosion (Hisuian Typhlosion) - Stomping Tantrum - TM084
  (157, 15701, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 41),
  -- Typhlosion (Hisuian Typhlosion) - Rest - TM085
  (157, 15701, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Typhlosion (Hisuian Typhlosion) - Rock Slide - TM086
  (157, 15701, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Typhlosion (Hisuian Typhlosion) - Iron Head - TM099
  (157, 15701, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Typhlosion (Hisuian Typhlosion) - Substitute - TM103
  (157, 15701, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Typhlosion (Hisuian Typhlosion) - Will-O-Wisp - TM107
  (157, 15701, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 46),
  -- Typhlosion (Hisuian Typhlosion) - Shadow Ball - TM114
  (157, 15701, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Typhlosion (Hisuian Typhlosion) - Heat Wave - TM118
  (157, 15701, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 48),
  -- Typhlosion (Hisuian Typhlosion) - Flamethrower - TM125
  (157, 15701, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Typhlosion (Hisuian Typhlosion) - Play Rough - TM127
  (157, 15701, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 50),
  -- Typhlosion (Hisuian Typhlosion) - Calm Mind - TM129
  (157, 15701, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Typhlosion (Hisuian Typhlosion) - Reversal - TM134
  (157, 15701, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Typhlosion (Hisuian Typhlosion) - Fire Blast - TM141
  (157, 15701, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 53),
  -- Typhlosion (Hisuian Typhlosion) - Fire Pledge - TM144
  (157, 15701, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 54),
  -- Typhlosion (Hisuian Typhlosion) - Wild Charge - TM147
  (157, 15701, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 55),
  -- Typhlosion (Hisuian Typhlosion) - Earthquake - TM149
  (157, 15701, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Typhlosion (Hisuian Typhlosion) - Giga Impact - TM152
  (157, 15701, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Typhlosion (Hisuian Typhlosion) - Blast Burn - TM153
  (157, 15701, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 58),
  -- Typhlosion (Hisuian Typhlosion) - Overheat - TM157
  (157, 15701, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 59),
  -- Typhlosion (Hisuian Typhlosion) - Focus Blast - TM158
  (157, 15701, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Typhlosion (Hisuian Typhlosion) - Hyper Beam - TM163
  (157, 15701, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Typhlosion (Hisuian Typhlosion) - Flare Blitz - TM165
  (157, 15701, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 62),
  -- Typhlosion (Hisuian Typhlosion) - Solar Beam - TM168
  (157, 15701, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 63),
  -- Typhlosion (Hisuian Typhlosion) - Tera Blast - TM171
  (157, 15701, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Typhlosion (Hisuian Typhlosion) - Infernal Parade - Evolution
  (157, 15701, 844, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Totodile - Scratch - Level 1
  (158, 15800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Water Gun - Level 6
  (158, 15800, 55, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Totodile - Bite - Level 9
  (158, 15800, 44, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Totodile - Scary Face - Level 13
  (158, 15800, 184, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Totodile - Ice Fang - Level 19
  (158, 15800, 423, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Totodile - Flail - Level 22
  (158, 15800, 175, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Totodile - Crunch - Level 27
  (158, 15800, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Totodile - Slash - Level 30
  (158, 15800, 163, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Totodile - Screech - Level 33
  (158, 15800, 103, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Totodile - Thrash - Level 37
  (158, 15800, 37, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Totodile - Aqua Tail - Level 41
  (158, 15800, 401, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Totodile - Superpower - Level 45
  (158, 15800, 276, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Totodile - Hydro Pump - Level 50
  (158, 15800, 56, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Totodile - Take Down - TM001
  (158, 15800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Totodile - Fake Tears - TM003
  (158, 15800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Totodile - Mud-Slap - TM005
  (158, 15800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Totodile - Scary Face - TM006
  (158, 15800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Totodile - Protect - TM007
  (158, 15800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Totodile - Ice Fang - TM010
  (158, 15800, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 20),
  -- Totodile - Water Pulse - TM011
  (158, 15800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Totodile - Low Kick - TM012
  (158, 15800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Totodile - Thief - TM018
  (158, 15800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Totodile - Trailblaze - TM020
  (158, 15800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Totodile - Chilling Water - TM022
  (158, 15800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Totodile - Facade - TM025
  (158, 15800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Totodile - Aerial Ace - TM027
  (158, 15800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Totodile - Metal Claw - TM031
  (158, 15800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Totodile - Icy Wind - TM034
  (158, 15800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Totodile - Rock Tomb - TM036
  (158, 15800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Totodile - Fling - TM043
  (158, 15800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Totodile - Endure - TM047
  (158, 15800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Totodile - Rain Dance - TM050
  (158, 15800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Totodile - Dig - TM055
  (158, 15800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Totodile - Brick Break - TM058
  (158, 15800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Totodile - Shadow Claw - TM061
  (158, 15800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Totodile - Ice Punch - TM069
  (158, 15800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Totodile - Sleep Talk - TM070
  (158, 15800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Totodile - Waterfall - TM077
  (158, 15800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Totodile - Dragon Claw - TM078
  (158, 15800, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Totodile - Rest - TM085
  (158, 15800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Totodile - Rock Slide - TM086
  (158, 15800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Totodile - Swords Dance - TM088
  (158, 15800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Totodile - Dragon Dance - TM100
  (158, 15800, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 44),
  -- Totodile - Substitute - TM103
  (158, 15800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Totodile - Crunch - TM108
  (158, 15800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 46),
  -- Totodile - Liquidation - TM110
  (158, 15800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 47),
  -- Totodile - Surf - TM123
  (158, 15800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Totodile - Ice Beam - TM135
  (158, 15800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Totodile - Hydro Pump - TM142
  (158, 15800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 50),
  -- Totodile - Blizzard - TM143
  (158, 15800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 51),
  -- Totodile - Water Pledge - TM145
  (158, 15800, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 52),
  -- Totodile - Tera Blast - TM171
  (158, 15800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Totodile - Counter - Egg
  (158, 15800, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Totodile - Ancient Power - Egg
  (158, 15800, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Totodile - Flatter - Egg
  (158, 15800, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Totodile - Block - Egg
  (158, 15800, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Totodile - Aqua Jet - Egg
  (158, 15800, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croconaw - Scratch - Level 1
  (159, 15900, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Water Gun - Level 1
  (159, 15900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Croconaw - Bite - Level 13
  (159, 15900, 44, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Croconaw - Scary Face - Level 15
  (159, 15900, 184, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Croconaw - Ice Fang - Level 21
  (159, 15900, 423, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Croconaw - Flail - Level 24
  (159, 15900, 175, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Croconaw - Crunch - Level 30
  (159, 15900, 242, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Croconaw - Slash - Level 34
  (159, 15900, 163, 23, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Croconaw - Screech - Level 37
  (159, 15900, 103, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Croconaw - Thrash - Level 42
  (159, 15900, 37, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Croconaw - Aqua Tail - Level 47
  (159, 15900, 401, 23, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Croconaw - Superpower - Level 50
  (159, 15900, 276, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Croconaw - Hydro Pump - Level 55
  (159, 15900, 56, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Croconaw - Take Down - TM001
  (159, 15900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Croconaw - Fake Tears - TM003
  (159, 15900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Croconaw - Mud-Slap - TM005
  (159, 15900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Croconaw - Scary Face - TM006
  (159, 15900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Croconaw - Protect - TM007
  (159, 15900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Croconaw - Ice Fang - TM010
  (159, 15900, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 20),
  -- Croconaw - Water Pulse - TM011
  (159, 15900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Croconaw - Low Kick - TM012
  (159, 15900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Croconaw - Thief - TM018
  (159, 15900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Croconaw - Trailblaze - TM020
  (159, 15900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Croconaw - Chilling Water - TM022
  (159, 15900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Croconaw - Facade - TM025
  (159, 15900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Croconaw - Aerial Ace - TM027
  (159, 15900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Croconaw - Metal Claw - TM031
  (159, 15900, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Croconaw - Icy Wind - TM034
  (159, 15900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Croconaw - Rock Tomb - TM036
  (159, 15900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Croconaw - Fling - TM043
  (159, 15900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Croconaw - Endure - TM047
  (159, 15900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Croconaw - Rain Dance - TM050
  (159, 15900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Croconaw - Dig - TM055
  (159, 15900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Croconaw - Brick Break - TM058
  (159, 15900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Croconaw - Shadow Claw - TM061
  (159, 15900, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Croconaw - Psychic Fangs - TM063
  (159, 15900, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Croconaw - Ice Punch - TM069
  (159, 15900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Croconaw - Sleep Talk - TM070
  (159, 15900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Croconaw - Waterfall - TM077
  (159, 15900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 40),
  -- Croconaw - Dragon Claw - TM078
  (159, 15900, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 41),
  -- Croconaw - Rest - TM085
  (159, 15900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Croconaw - Rock Slide - TM086
  (159, 15900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Croconaw - Swords Dance - TM088
  (159, 15900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Croconaw - Dragon Dance - TM100
  (159, 15900, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 45),
  -- Croconaw - Substitute - TM103
  (159, 15900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Croconaw - Crunch - TM108
  (159, 15900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Croconaw - Liquidation - TM110
  (159, 15900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Croconaw - Surf - TM123
  (159, 15900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 49),
  -- Croconaw - Ice Beam - TM135
  (159, 15900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Croconaw - Hydro Pump - TM142
  (159, 15900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 51),
  -- Croconaw - Blizzard - TM143
  (159, 15900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 52),
  -- Croconaw - Water Pledge - TM145
  (159, 15900, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 53),
  -- Croconaw - Tera Blast - TM171
  (159, 15900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Croconaw - Counter - Egg
  (159, 15900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Croconaw - Ancient Power - Egg
  (159, 15900, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Croconaw - Flatter - Egg
  (159, 15900, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Croconaw - Block - Egg
  (159, 15900, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Croconaw - Aqua Jet - Egg
  (159, 15900, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Feraligatr - Scratch - Level 1
  (160, 16000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Water Gun - Level 1
  (160, 16000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Agility - Level 1
  (160, 16000, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Feraligatr - Bite - Level 13
  (160, 16000, 44, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Feraligatr - Scary Face - Level 15
  (160, 16000, 184, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Feraligatr - Ice Fang - Level 21
  (160, 16000, 423, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Feraligatr - Flail - Level 24
  (160, 16000, 175, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Feraligatr - Crunch - Level 32
  (160, 16000, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Feraligatr - Slash - Level 37
  (160, 16000, 163, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Feraligatr - Screech - Level 44
  (160, 16000, 103, 23, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Feraligatr - Thrash - Level 51
  (160, 16000, 37, 23, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Feraligatr - Aqua Tail - Level 59
  (160, 16000, 401, 23, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Feraligatr - Superpower - Level 65
  (160, 16000, 276, 23, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Feraligatr - Hydro Pump - Level 70
  (160, 16000, 56, 23, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Feraligatr - Take Down - TM001
  (160, 16000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Feraligatr - Fake Tears - TM003
  (160, 16000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Feraligatr - Agility - TM004
  (160, 16000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Feraligatr - Mud-Slap - TM005
  (160, 16000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Feraligatr - Scary Face - TM006
  (160, 16000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Feraligatr - Protect - TM007
  (160, 16000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Feraligatr - Ice Fang - TM010
  (160, 16000, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Feraligatr - Water Pulse - TM011
  (160, 16000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Feraligatr - Low Kick - TM012
  (160, 16000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Feraligatr - Thief - TM018
  (160, 16000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Feraligatr - Trailblaze - TM020
  (160, 16000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Feraligatr - Chilling Water - TM022
  (160, 16000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 27),
  -- Feraligatr - Facade - TM025
  (160, 16000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Feraligatr - Aerial Ace - TM027
  (160, 16000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 29),
  -- Feraligatr - Bulldoze - TM028
  (160, 16000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 30),
  -- Feraligatr - Snarl - TM030
  (160, 16000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 31),
  -- Feraligatr - Metal Claw - TM031
  (160, 16000, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 32),
  -- Feraligatr - Icy Wind - TM034
  (160, 16000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 33),
  -- Feraligatr - Rock Tomb - TM036
  (160, 16000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 34),
  -- Feraligatr - Fling - TM043
  (160, 16000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Feraligatr - Dragon Tail - TM044
  (160, 16000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 36),
  -- Feraligatr - Avalanche - TM046
  (160, 16000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 37),
  -- Feraligatr - Endure - TM047
  (160, 16000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Feraligatr - Rain Dance - TM050
  (160, 16000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Feraligatr - Dig - TM055
  (160, 16000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 40),
  -- Feraligatr - Brick Break - TM058
  (160, 16000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 41),
  -- Feraligatr - Shadow Claw - TM061
  (160, 16000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 42),
  -- Feraligatr - Psychic Fangs - TM063
  (160, 16000, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 43),
  -- Feraligatr - Body Slam - TM066
  (160, 16000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Feraligatr - Ice Punch - TM069
  (160, 16000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 45),
  -- Feraligatr - Sleep Talk - TM070
  (160, 16000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 46),
  -- Feraligatr - Waterfall - TM077
  (160, 16000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 47),
  -- Feraligatr - Dragon Claw - TM078
  (160, 16000, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 48),
  -- Feraligatr - Stomping Tantrum - TM084
  (160, 16000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 49),
  -- Feraligatr - Rest - TM085
  (160, 16000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Feraligatr - Rock Slide - TM086
  (160, 16000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 51),
  -- Feraligatr - Swords Dance - TM088
  (160, 16000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 52),
  -- Feraligatr - Dragon Dance - TM100
  (160, 16000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 53),
  -- Feraligatr - Substitute - TM103
  (160, 16000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Feraligatr - Crunch - TM108
  (160, 16000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 55),
  -- Feraligatr - Liquidation - TM110
  (160, 16000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 56),
  -- Feraligatr - Surf - TM123
  (160, 16000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 57),
  -- Feraligatr - Helping Hand - TM130
  (160, 16000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Feraligatr - Ice Beam - TM135
  (160, 16000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 59),
  -- Feraligatr - Hydro Pump - TM142
  (160, 16000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 60),
  -- Feraligatr - Blizzard - TM143
  (160, 16000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 61),
  -- Feraligatr - Water Pledge - TM145
  (160, 16000, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 62),
  -- Feraligatr - Earthquake - TM149
  (160, 16000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 63),
  -- Feraligatr - Giga Impact - TM152
  (160, 16000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Feraligatr - Hydro Cannon - TM154
  (160, 16000, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 65),
  -- Feraligatr - Outrage - TM156
  (160, 16000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 66),
  -- Feraligatr - Focus Blast - TM158
  (160, 16000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 67),
  -- Feraligatr - Hyper Beam - TM163
  (160, 16000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 68),
  -- Feraligatr - Tera Blast - TM171
  (160, 16000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Feraligatr - Counter - Egg
  (160, 16000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Feraligatr - Ancient Power - Egg
  (160, 16000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Feraligatr - Flatter - Egg
  (160, 16000, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Feraligatr - Block - Egg
  (160, 16000, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Feraligatr - Aqua Jet - Egg
  (160, 16000, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sentret - Scratch - Level 1
  (161, 16100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sentret - Defense Curl - Level 4
  (161, 16100, 111, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Sentret - Quick Attack - Level 7
  (161, 16100, 98, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Sentret - Fury Swipes - Level 13
  (161, 16100, 154, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Sentret - Helping Hand - Level 16
  (161, 16100, 270, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Sentret - Follow Me - Level 19
  (161, 16100, 266, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Sentret - Slam - Level 25
  (161, 16100, 21, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sentret - Rest - Level 28
  (161, 16100, 156, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Sentret - Sucker Punch - Level 31
  (161, 16100, 389, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Sentret - Amnesia - Level 36
  (161, 16100, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Sentret - Baton Pass - Level 39
  (161, 16100, 226, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Sentret - Double-Edge - Level 42
  (161, 16100, 38, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Sentret - Hyper Voice - Level 47
  (161, 16100, 304, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Sentret - Take Down - TM001
  (161, 16100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sentret - Charm - TM002
  (161, 16100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Sentret - Protect - TM007
  (161, 16100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Sentret - Water Pulse - TM011
  (161, 16100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Sentret - Thief - TM018
  (161, 16100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Sentret - Trailblaze - TM020
  (161, 16100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Sentret - Chilling Water - TM022
  (161, 16100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Sentret - Charge Beam - TM023
  (161, 16100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Sentret - Facade - TM025
  (161, 16100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Sentret - Swift - TM032
  (161, 16100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Sentret - Fling - TM043
  (161, 16100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Sentret - Endure - TM047
  (161, 16100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Sentret - Sunny Day - TM049
  (161, 16100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Sentret - Rain Dance - TM050
  (161, 16100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Sentret - Dig - TM055
  (161, 16100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Sentret - Brick Break - TM058
  (161, 16100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Sentret - U-turn - TM060
  (161, 16100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Sentret - Shadow Claw - TM061
  (161, 16100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Sentret - Body Slam - TM066
  (161, 16100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Sentret - Fire Punch - TM067
  (161, 16100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Sentret - Thunder Punch - TM068
  (161, 16100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Sentret - Ice Punch - TM069
  (161, 16100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Sentret - Sleep Talk - TM070
  (161, 16100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Sentret - Seed Bomb - TM071
  (161, 16100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Sentret - Grass Knot - TM081
  (161, 16100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Sentret - Rest - TM085
  (161, 16100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Sentret - Substitute - TM103
  (161, 16100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Sentret - Trick - TM109
  (161, 16100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Sentret - Shadow Ball - TM114
  (161, 16100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Sentret - Hyper Voice - TM117
  (161, 16100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Sentret - Surf - TM123
  (161, 16100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 44),
  -- Sentret - Flamethrower - TM125
  (161, 16100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Sentret - Thunderbolt - TM126
  (161, 16100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Sentret - Play Rough - TM127
  (161, 16100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Sentret - Amnesia - TM128
  (161, 16100, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 48),
  -- Sentret - Helping Hand - TM130
  (161, 16100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Sentret - Baton Pass - TM132
  (161, 16100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 50),
  -- Sentret - Reversal - TM134
  (161, 16100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 51),
  -- Sentret - Ice Beam - TM135
  (161, 16100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Sentret - Blizzard - TM143
  (161, 16100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Sentret - Thunder - TM166
  (161, 16100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Sentret - Solar Beam - TM168
  (161, 16100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Sentret - Tera Blast - TM171
  (161, 16100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Sentret - Focus Energy - Egg
  (161, 16100, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sentret - Slash - Egg
  (161, 16100, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sentret - Reversal - Egg
  (161, 16100, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sentret - Last Resort - Egg
  (161, 16100, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sentret - Baby-Doll Eyes - Egg
  (161, 16100, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sentret - Tidy Up - Egg
  (161, 16100, 882, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Furret - Scratch - Level 1
  (162, 16200, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furret - Quick Attack - Level 1
  (162, 16200, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furret - Defense Curl - Level 1
  (162, 16200, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furret - Coil - Level 1
  (162, 16200, 489, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Furret - Fury Swipes - Level 13
  (162, 16200, 154, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Furret - Helping Hand - Level 17
  (162, 16200, 270, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Furret - Follow Me - Level 21
  (162, 16200, 266, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Furret - Rest - Level 32
  (162, 16200, 156, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Furret - Sucker Punch - Level 36
  (162, 16200, 389, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Furret - Amnesia - Level 42
  (162, 16200, 133, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Furret - Baton Pass - Level 46
  (162, 16200, 226, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Furret - Double-Edge - Level 50
  (162, 16200, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Furret - Hyper Voice - Level 56
  (162, 16200, 304, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Furret - Take Down - TM001
  (162, 16200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Furret - Charm - TM002
  (162, 16200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Furret - Agility - TM004
  (162, 16200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Furret - Protect - TM007
  (162, 16200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Furret - Water Pulse - TM011
  (162, 16200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Furret - Thief - TM018
  (162, 16200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Furret - Trailblaze - TM020
  (162, 16200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Furret - Chilling Water - TM022
  (162, 16200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Furret - Charge Beam - TM023
  (162, 16200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Furret - Facade - TM025
  (162, 16200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Furret - Swift - TM032
  (162, 16200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Furret - Fling - TM043
  (162, 16200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Furret - Endure - TM047
  (162, 16200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Furret - Sunny Day - TM049
  (162, 16200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Furret - Rain Dance - TM050
  (162, 16200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Furret - Dig - TM055
  (162, 16200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Furret - Brick Break - TM058
  (162, 16200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Furret - Zen Headbutt - TM059
  (162, 16200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Furret - U-turn - TM060
  (162, 16200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Furret - Shadow Claw - TM061
  (162, 16200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Furret - Body Slam - TM066
  (162, 16200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Furret - Fire Punch - TM067
  (162, 16200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Furret - Thunder Punch - TM068
  (162, 16200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Furret - Ice Punch - TM069
  (162, 16200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Furret - Sleep Talk - TM070
  (162, 16200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Furret - Seed Bomb - TM071
  (162, 16200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Furret - Grass Knot - TM081
  (162, 16200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Furret - Rest - TM085
  (162, 16200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Furret - Substitute - TM103
  (162, 16200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Furret - Trick - TM109
  (162, 16200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 44),
  -- Furret - Shadow Ball - TM114
  (162, 16200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Furret - Hyper Voice - TM117
  (162, 16200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Furret - Surf - TM123
  (162, 16200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 47),
  -- Furret - Flamethrower - TM125
  (162, 16200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 48),
  -- Furret - Thunderbolt - TM126
  (162, 16200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Furret - Play Rough - TM127
  (162, 16200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 50),
  -- Furret - Amnesia - TM128
  (162, 16200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Furret - Helping Hand - TM130
  (162, 16200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Furret - Baton Pass - TM132
  (162, 16200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 53),
  -- Furret - Reversal - TM134
  (162, 16200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 54),
  -- Furret - Ice Beam - TM135
  (162, 16200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 55),
  -- Furret - Blizzard - TM143
  (162, 16200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 56),
  -- Furret - Giga Impact - TM152
  (162, 16200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Furret - Focus Blast - TM158
  (162, 16200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Furret - Hyper Beam - TM163
  (162, 16200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Furret - Thunder - TM166
  (162, 16200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Furret - Solar Beam - TM168
  (162, 16200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Furret - Tera Blast - TM171
  (162, 16200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Furret - Focus Energy - Egg
  (162, 16200, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Furret - Slash - Egg
  (162, 16200, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Furret - Reversal - Egg
  (162, 16200, 179, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Furret - Last Resort - Egg
  (162, 16200, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Furret - Baby-Doll Eyes - Egg
  (162, 16200, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Furret - Tidy Up - Egg
  (162, 16200, 882, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Furret - Agility - Evolution
  (162, 16200, 97, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Peck - Level 1
  (163, 16300, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Tackle - Level 3
  (163, 16300, 33, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Hoothoot - Echoed Voice - Level 6
  (163, 16300, 497, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoothoot - Confusion - Level 9
  (163, 16300, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Hoothoot - Reflect - Level 12
  (163, 16300, 115, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Hoothoot - Defog - Level 15
  (163, 16300, 432, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Hoothoot - Air Slash - Level 18
  (163, 16300, 403, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Hoothoot - Extrasensory - Level 21
  (163, 16300, 326, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Hoothoot - Take Down - Level 24
  (163, 16300, 36, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Hoothoot - Uproar - Level 27
  (163, 16300, 253, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Hoothoot - Roost - Level 30
  (163, 16300, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Hoothoot - Moonblast - Level 33
  (163, 16300, 585, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Hoothoot - Hypnosis - Level 36
  (163, 16300, 95, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Hoothoot - Dream Eater - Level 39
  (163, 16300, 138, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Hoothoot - Take Down - TM001
  (163, 16300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Hoothoot - Agility - TM004
  (163, 16300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Hoothoot - Protect - TM007
  (163, 16300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Hoothoot - Acrobatics - TM014
  (163, 16300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Hoothoot - Psybeam - TM016
  (163, 16300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Hoothoot - Confuse Ray - TM017
  (163, 16300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Hoothoot - Thief - TM018
  (163, 16300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Hoothoot - Facade - TM025
  (163, 16300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Hoothoot - Aerial Ace - TM027
  (163, 16300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Hoothoot - Swift - TM032
  (163, 16300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Hoothoot - Air Cutter - TM040
  (163, 16300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Hoothoot - Stored Power - TM041
  (163, 16300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Hoothoot - Night Shade - TM042
  (163, 16300, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 28),
  -- Hoothoot - Endure - TM047
  (163, 16300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Hoothoot - Sunny Day - TM049
  (163, 16300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Hoothoot - Rain Dance - TM050
  (163, 16300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Hoothoot - Zen Headbutt - TM059
  (163, 16300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Hoothoot - Air Slash - TM065
  (163, 16300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Hoothoot - Sleep Talk - TM070
  (163, 16300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Hoothoot - Reflect - TM074
  (163, 16300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Hoothoot - Rest - TM085
  (163, 16300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Hoothoot - Imprison - TM092
  (163, 16300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 37),
  -- Hoothoot - Fly - TM097
  (163, 16300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Hoothoot - Skill Swap - TM098
  (163, 16300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 39),
  -- Hoothoot - Substitute - TM103
  (163, 16300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Hoothoot - Tailwind - TM113
  (163, 16300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Hoothoot - Shadow Ball - TM114
  (163, 16300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Hoothoot - Hyper Voice - TM117
  (163, 16300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Hoothoot - Heat Wave - TM118
  (163, 16300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Hoothoot - Psychic - TM120
  (163, 16300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Hoothoot - Amnesia - TM128
  (163, 16300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Hoothoot - Calm Mind - TM129
  (163, 16300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Hoothoot - Nasty Plot - TM140
  (163, 16300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 48),
  -- Hoothoot - Hurricane - TM160
  (163, 16300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 49),
  -- Hoothoot - Brave Bird - TM164
  (163, 16300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 50),
  -- Hoothoot - Tera Blast - TM171
  (163, 16300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Hoothoot - Wing Attack - Egg
  (163, 16300, 17, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Hoothoot - Whirlwind - Egg
  (163, 16300, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hoothoot - Supersonic - Egg
  (163, 16300, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hoothoot - Night Shade - Egg
  (163, 16300, 101, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hoothoot - Feather Dance - Egg
  (163, 16300, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Peck - Level 1
  (164, 16400, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Sky Attack - Level 1
  (164, 16400, 143, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Echoed Voice - Level 1
  (164, 16400, 497, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noctowl - Confusion - Level 9
  (164, 16400, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Noctowl - Reflect - Level 12
  (164, 16400, 115, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Noctowl - Defog - Level 15
  (164, 16400, 432, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Noctowl - Air Slash - Level 18
  (164, 16400, 403, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Noctowl - Extrasensory - Level 23
  (164, 16400, 326, 23, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Noctowl - Take Down - Level 28
  (164, 16400, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Noctowl - Uproar - Level 33
  (164, 16400, 253, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Noctowl - Roost - Level 38
  (164, 16400, 355, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Noctowl - Moonblast - Level 43
  (164, 16400, 585, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Noctowl - Hypnosis - Level 48
  (164, 16400, 95, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Noctowl - Dream Eater - Level 53
  (164, 16400, 138, 23, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Noctowl - Take Down - TM001
  (164, 16400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Noctowl - Agility - TM004
  (164, 16400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Noctowl - Scary Face - TM006
  (164, 16400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Noctowl - Protect - TM007
  (164, 16400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Noctowl - Acrobatics - TM014
  (164, 16400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Noctowl - Psybeam - TM016
  (164, 16400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Noctowl - Confuse Ray - TM017
  (164, 16400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Noctowl - Thief - TM018
  (164, 16400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Noctowl - Facade - TM025
  (164, 16400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Noctowl - Aerial Ace - TM027
  (164, 16400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Noctowl - Swift - TM032
  (164, 16400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Noctowl - Air Cutter - TM040
  (164, 16400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Noctowl - Stored Power - TM041
  (164, 16400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Noctowl - Night Shade - TM042
  (164, 16400, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Noctowl - Endure - TM047
  (164, 16400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Noctowl - Sunny Day - TM049
  (164, 16400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Noctowl - Rain Dance - TM050
  (164, 16400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Noctowl - Zen Headbutt - TM059
  (164, 16400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Noctowl - Air Slash - TM065
  (164, 16400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Noctowl - Body Slam - TM066
  (164, 16400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Noctowl - Sleep Talk - TM070
  (164, 16400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Noctowl - Reflect - TM074
  (164, 16400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 38),
  -- Noctowl - Rest - TM085
  (164, 16400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Noctowl - Imprison - TM092
  (164, 16400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Noctowl - Fly - TM097
  (164, 16400, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 41),
  -- Noctowl - Skill Swap - TM098
  (164, 16400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 42),
  -- Noctowl - Substitute - TM103
  (164, 16400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Noctowl - Tailwind - TM113
  (164, 16400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Noctowl - Shadow Ball - TM114
  (164, 16400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Noctowl - Hyper Voice - TM117
  (164, 16400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Noctowl - Heat Wave - TM118
  (164, 16400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 47),
  -- Noctowl - Psychic - TM120
  (164, 16400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Noctowl - Amnesia - TM128
  (164, 16400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 49),
  -- Noctowl - Calm Mind - TM129
  (164, 16400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Noctowl - Nasty Plot - TM140
  (164, 16400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Noctowl - Giga Impact - TM152
  (164, 16400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Noctowl - Hurricane - TM160
  (164, 16400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 53),
  -- Noctowl - Hyper Beam - TM163
  (164, 16400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Noctowl - Brave Bird - TM164
  (164, 16400, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 55),
  -- Noctowl - Tera Blast - TM171
  (164, 16400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Noctowl - Wing Attack - Egg
  (164, 16400, 17, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Noctowl - Whirlwind - Egg
  (164, 16400, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Noctowl - Supersonic - Egg
  (164, 16400, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Noctowl - Night Shade - Egg
  (164, 16400, 101, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Noctowl - Feather Dance - Egg
  (164, 16400, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Absorb - Level 5
  (167, 16700, 71, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spinarak - Infestation - Level 8
  (167, 16700, 611, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spinarak - Scary Face - Level 12
  (167, 16700, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spinarak - Night Shade - Level 15
  (167, 16700, 101, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Spinarak - Shadow Sneak - Level 19
  (167, 16700, 425, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spinarak - Fury Swipes - Level 22
  (167, 16700, 154, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Spinarak - Sucker Punch - Level 26
  (167, 16700, 389, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Spinarak - Agility - Level 29
  (167, 16700, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spinarak - Pin Missile - Level 33
  (167, 16700, 42, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spinarak - Psychic - Level 36
  (167, 16700, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Spinarak - Poison Jab - Level 40
  (167, 16700, 398, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spinarak - Cross Poison - Level 44
  (167, 16700, 440, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Spinarak - Sticky Web - Level 47
  (167, 16700, 564, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Spinarak - Toxic Thread - Level 51
  (167, 16700, 672, 23, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Spinarak - Agility - TM004
  (167, 16700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Spinarak - Scary Face - TM006
  (167, 16700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Spinarak - Protect - TM007
  (167, 16700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Spinarak - Acid Spray - TM013
  (167, 16700, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Spinarak - Struggle Bug - TM015
  (167, 16700, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 21),
  -- Spinarak - Thief - TM018
  (167, 16700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Spinarak - Trailblaze - TM020
  (167, 16700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Spinarak - Pounce - TM021
  (167, 16700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Spinarak - Facade - TM025
  (167, 16700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Spinarak - Hex - TM029
  (167, 16700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Spinarak - Night Shade - TM042
  (167, 16700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Spinarak - Venoshock - TM045
  (167, 16700, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Spinarak - Endure - TM047
  (167, 16700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Spinarak - Sunny Day - TM049
  (167, 16700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Spinarak - Dig - TM055
  (167, 16700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Spinarak - Foul Play - TM062
  (167, 16700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Spinarak - Sleep Talk - TM070
  (167, 16700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Spinarak - Poison Jab - TM083
  (167, 16700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 34),
  -- Spinarak - Rest - TM085
  (167, 16700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Spinarak - Toxic Spikes - TM091
  (167, 16700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 36),
  -- Spinarak - Leech Life - TM095
  (167, 16700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 37),
  -- Spinarak - Substitute - TM103
  (167, 16700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Spinarak - X-Scissor - TM105
  (167, 16700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 39),
  -- Spinarak - Giga Drain - TM111
  (167, 16700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Spinarak - Psychic - TM120
  (167, 16700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 41),
  -- Spinarak - Baton Pass - TM132
  (167, 16700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Spinarak - Sludge Bomb - TM148
  (167, 16700, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 43),
  -- Spinarak - Bug Buzz - TM162
  (167, 16700, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 44),
  -- Spinarak - Solar Beam - TM168
  (167, 16700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Spinarak - Tera Blast - TM171
  (167, 16700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Spinarak - Disable - Egg
  (167, 16700, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinarak - Megahorn - Egg
  (167, 16700, 224, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinarak - Night Slash - Egg
  (167, 16700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinarak - Rage Powder - Egg
  (167, 16700, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spinarak - Lunge - Egg
  (167, 16700, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - Absorb - Level 1
  (168, 16800, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - Focus Energy - Level 1
  (168, 16800, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ariados - Bug Bite - Level 1
  (168, 16800, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ariados - Fell Stinger - Level 1
  (168, 16800, 565, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ariados - Infestation - Level 8
  (168, 16800, 611, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ariados - Scary Face - Level 12
  (168, 16800, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Ariados - Night Shade - Level 15
  (168, 16800, 101, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ariados - Shadow Sneak - Level 19
  (168, 16800, 425, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Ariados - Fury Swipes - Level 23
  (168, 16800, 154, 23, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Ariados - Sucker Punch - Level 28
  (168, 16800, 389, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Ariados - Agility - Level 31
  (168, 16800, 97, 23, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Ariados - Pin Missile - Level 35
  (168, 16800, 42, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Ariados - Psychic - Level 41
  (168, 16800, 94, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ariados - Poison Jab - Level 46
  (168, 16800, 398, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ariados - Cross Poison - Level 50
  (168, 16800, 440, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Ariados - Sticky Web - Level 54
  (168, 16800, 564, 23, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Ariados - Toxic Thread - Level 59
  (168, 16800, 672, 23, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Ariados - Agility - TM004
  (168, 16800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Ariados - Scary Face - TM006
  (168, 16800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Ariados - Protect - TM007
  (168, 16800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Ariados - Acid Spray - TM013
  (168, 16800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 23),
  -- Ariados - Struggle Bug - TM015
  (168, 16800, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 24),
  -- Ariados - Thief - TM018
  (168, 16800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Ariados - Trailblaze - TM020
  (168, 16800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Ariados - Pounce - TM021
  (168, 16800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 27),
  -- Ariados - Facade - TM025
  (168, 16800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Ariados - Hex - TM029
  (168, 16800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 29),
  -- Ariados - Night Shade - TM042
  (168, 16800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Ariados - Venoshock - TM045
  (168, 16800, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Ariados - Endure - TM047
  (168, 16800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Ariados - Sunny Day - TM049
  (168, 16800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Ariados - Smart Strike - TM053
  (168, 16800, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 34),
  -- Ariados - Dig - TM055
  (168, 16800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Ariados - Foul Play - TM062
  (168, 16800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Ariados - Sleep Talk - TM070
  (168, 16800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Ariados - Poison Jab - TM083
  (168, 16800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Ariados - Rest - TM085
  (168, 16800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Ariados - Swords Dance - TM088
  (168, 16800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Ariados - Toxic Spikes - TM091
  (168, 16800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 41),
  -- Ariados - Leech Life - TM095
  (168, 16800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 42),
  -- Ariados - Substitute - TM103
  (168, 16800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Ariados - X-Scissor - TM105
  (168, 16800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 44),
  -- Ariados - Giga Drain - TM111
  (168, 16800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Ariados - Psychic - TM120
  (168, 16800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Ariados - Baton Pass - TM132
  (168, 16800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Ariados - Sludge Bomb - TM148
  (168, 16800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 48),
  -- Ariados - Giga Impact - TM152
  (168, 16800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Ariados - Bug Buzz - TM162
  (168, 16800, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 50),
  -- Ariados - Hyper Beam - TM163
  (168, 16800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Ariados - Solar Beam - TM168
  (168, 16800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Ariados - Tera Blast - TM171
  (168, 16800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Ariados - Disable - Egg
  (168, 16800, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ariados - Megahorn - Egg
  (168, 16800, 224, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ariados - Night Slash - Egg
  (168, 16800, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ariados - Rage Powder - Egg
  (168, 16800, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ariados - Lunge - Egg
  (168, 16800, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ariados - Swords Dance - Evolution
  (168, 16800, 14, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Chinchou - Supersonic - Level 1
  (170, 17000, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Water Gun - Level 1
  (170, 17000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Electro Ball - Level 4
  (170, 17000, 486, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Chinchou - Thunder Wave - Level 8
  (170, 17000, 86, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Chinchou - Bubble Beam - Level 12
  (170, 17000, 61, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chinchou - Confuse Ray - Level 16
  (170, 17000, 109, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Chinchou - Spark - Level 20
  (170, 17000, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chinchou - Charge - Level 24
  (170, 17000, 268, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Chinchou - Discharge - Level 28
  (170, 17000, 435, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chinchou - Aqua Ring - Level 32
  (170, 17000, 392, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Chinchou - Flail - Level 36
  (170, 17000, 175, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Chinchou - Take Down - Level 40
  (170, 17000, 36, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Chinchou - Hydro Pump - Level 44
  (170, 17000, 56, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Chinchou - Take Down - TM001
  (170, 17000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Chinchou - Agility - TM004
  (170, 17000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Chinchou - Protect - TM007
  (170, 17000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Chinchou - Water Pulse - TM011
  (170, 17000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Chinchou - Psybeam - TM016
  (170, 17000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Chinchou - Confuse Ray - TM017
  (170, 17000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Chinchou - Chilling Water - TM022
  (170, 17000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Chinchou - Charge Beam - TM023
  (170, 17000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Chinchou - Facade - TM025
  (170, 17000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Chinchou - Icy Wind - TM034
  (170, 17000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Chinchou - Endure - TM047
  (170, 17000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Chinchou - Volt Switch - TM048
  (170, 17000, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 25),
  -- Chinchou - Rain Dance - TM050
  (170, 17000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Chinchou - Sleep Talk - TM070
  (170, 17000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Chinchou - Electro Ball - TM072
  (170, 17000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 28),
  -- Chinchou - Waterfall - TM077
  (170, 17000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Chinchou - Dazzling Gleam - TM079
  (170, 17000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Chinchou - Thunder Wave - TM082
  (170, 17000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Chinchou - Rest - TM085
  (170, 17000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Chinchou - Eerie Impulse - TM096
  (170, 17000, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 33),
  -- Chinchou - Substitute - TM103
  (170, 17000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Chinchou - Liquidation - TM110
  (170, 17000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 35),
  -- Chinchou - Surf - TM123
  (170, 17000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Chinchou - Thunderbolt - TM126
  (170, 17000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 37),
  -- Chinchou - Amnesia - TM128
  (170, 17000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 38),
  -- Chinchou - Ice Beam - TM135
  (170, 17000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Chinchou - Electric Terrain - TM136
  (170, 17000, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 40),
  -- Chinchou - Hydro Pump - TM142
  (170, 17000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 41),
  -- Chinchou - Blizzard - TM143
  (170, 17000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Chinchou - Wild Charge - TM147
  (170, 17000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 43),
  -- Chinchou - Thunder - TM166
  (170, 17000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 44),
  -- Chinchou - Tera Blast - TM171
  (170, 17000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Chinchou - Mist - Egg
  (170, 17000, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chinchou - Psybeam - Egg
  (170, 17000, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chinchou - Water Pulse - Egg
  (170, 17000, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chinchou - Sucker Punch - Egg
  (170, 17000, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chinchou - Soak - Egg
  (170, 17000, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Water Gun - Level 1
  (171, 17100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Electro Ball - Level 1
  (171, 17100, 486, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lanturn - Eerie Impulse - Level 1
  (171, 17100, 598, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lanturn - Bubble Beam - Level 12
  (171, 17100, 61, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lanturn - Confuse Ray - Level 16
  (171, 17100, 109, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Lanturn - Spark - Level 20
  (171, 17100, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lanturn - Charge - Level 24
  (171, 17100, 268, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lanturn - Discharge - Level 30
  (171, 17100, 435, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Lanturn - Aqua Ring - Level 36
  (171, 17100, 392, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lanturn - Flail - Level 42
  (171, 17100, 175, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Lanturn - Take Down - Level 48
  (171, 17100, 36, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Lanturn - Hydro Pump - Level 54
  (171, 17100, 56, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Lanturn - Take Down - TM001
  (171, 17100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Lanturn - Agility - TM004
  (171, 17100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Lanturn - Protect - TM007
  (171, 17100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Lanturn - Water Pulse - TM011
  (171, 17100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Lanturn - Psybeam - TM016
  (171, 17100, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Lanturn - Confuse Ray - TM017
  (171, 17100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Lanturn - Chilling Water - TM022
  (171, 17100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Lanturn - Charge Beam - TM023
  (171, 17100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Lanturn - Facade - TM025
  (171, 17100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Lanturn - Icy Wind - TM034
  (171, 17100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Lanturn - Endure - TM047
  (171, 17100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Lanturn - Volt Switch - TM048
  (171, 17100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Lanturn - Rain Dance - TM050
  (171, 17100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Lanturn - Sleep Talk - TM070
  (171, 17100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Lanturn - Electro Ball - TM072
  (171, 17100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Lanturn - Waterfall - TM077
  (171, 17100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 30),
  -- Lanturn - Dazzling Gleam - TM079
  (171, 17100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Lanturn - Thunder Wave - TM082
  (171, 17100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Lanturn - Rest - TM085
  (171, 17100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Lanturn - Eerie Impulse - TM096
  (171, 17100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 34),
  -- Lanturn - Substitute - TM103
  (171, 17100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Lanturn - Liquidation - TM110
  (171, 17100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Lanturn - Surf - TM123
  (171, 17100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 37),
  -- Lanturn - Thunderbolt - TM126
  (171, 17100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 38),
  -- Lanturn - Amnesia - TM128
  (171, 17100, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 39),
  -- Lanturn - Ice Beam - TM135
  (171, 17100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Lanturn - Electric Terrain - TM136
  (171, 17100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 41),
  -- Lanturn - Hydro Pump - TM142
  (171, 17100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Lanturn - Blizzard - TM143
  (171, 17100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Lanturn - Wild Charge - TM147
  (171, 17100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 44),
  -- Lanturn - Giga Impact - TM152
  (171, 17100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Lanturn - Hyper Beam - TM163
  (171, 17100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Lanturn - Thunder - TM166
  (171, 17100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 47),
  -- Lanturn - Tera Blast - TM171
  (171, 17100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Lanturn - Mist - Egg
  (171, 17100, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lanturn - Psybeam - Egg
  (171, 17100, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lanturn - Water Pulse - Egg
  (171, 17100, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lanturn - Sucker Punch - Egg
  (171, 17100, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lanturn - Soak - Egg
  (171, 17100, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lanturn - Stockpile - Evolution
  (171, 17100, 254, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Lanturn - Spit Up - Evolution
  (171, 17100, 255, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Lanturn - Swallow - Evolution
  (171, 17100, 256, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Pichu - Tail Whip - Level 1
  (172, 17200, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Play Nice - Level 4
  (172, 17200, 589, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pichu - Sweet Kiss - Level 8
  (172, 17200, 186, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pichu - Nuzzle - Level 12
  (172, 17200, 609, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pichu - Nasty Plot - Level 16
  (172, 17200, 417, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pichu - Charm - Level 20
  (172, 17200, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pichu - Take Down - TM001
  (172, 17200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 8),
  -- Pichu - Charm - TM002
  (172, 17200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 9),
  -- Pichu - Protect - TM007
  (172, 17200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 10),
  -- Pichu - Disarming Voice - TM019
  (172, 17200, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 11),
  -- Pichu - Trailblaze - TM020
  (172, 17200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 12),
  -- Pichu - Facade - TM025
  (172, 17200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 13),
  -- Pichu - Swift - TM032
  (172, 17200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 14),
  -- Pichu - Fling - TM043
  (172, 17200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 15),
  -- Pichu - Endure - TM047
  (172, 17200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 16),
  -- Pichu - Volt Switch - TM048
  (172, 17200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 17),
  -- Pichu - Rain Dance - TM050
  (172, 17200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 18),
  -- Pichu - Body Slam - TM066
  (172, 17200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 19),
  -- Pichu - Thunder Punch - TM068
  (172, 17200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 20),
  -- Pichu - Sleep Talk - TM070
  (172, 17200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Pichu - Electro Ball - TM072
  (172, 17200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 22),
  -- Pichu - Reflect - TM074
  (172, 17200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 23),
  -- Pichu - Light Screen - TM075
  (172, 17200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 24),
  -- Pichu - Grass Knot - TM081
  (172, 17200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 25),
  -- Pichu - Thunder Wave - TM082
  (172, 17200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 26),
  -- Pichu - Rest - TM085
  (172, 17200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Pichu - Substitute - TM103
  (172, 17200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Pichu - Encore - TM122
  (172, 17200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 29),
  -- Pichu - Surf - TM123
  (172, 17200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 30),
  -- Pichu - Thunderbolt - TM126
  (172, 17200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 31),
  -- Pichu - Play Rough - TM127
  (172, 17200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 32),
  -- Pichu - Helping Hand - TM130
  (172, 17200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Pichu - Reversal - TM134
  (172, 17200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 34),
  -- Pichu - Electric Terrain - TM136
  (172, 17200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 35),
  -- Pichu - Nasty Plot - TM140
  (172, 17200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 36),
  -- Pichu - Wild Charge - TM147
  (172, 17200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 37),
  -- Pichu - Thunder - TM166
  (172, 17200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 38),
  -- Pichu - Tera Blast - TM171
  (172, 17200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Pichu - Flail - Egg
  (172, 17200, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pichu - Present - Egg
  (172, 17200, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pichu - Fake Out - Egg
  (172, 17200, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pichu - Charge - Egg
  (172, 17200, 268, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pichu - Wish - Egg
  (172, 17200, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pichu - Tickle - Egg
  (172, 17200, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pichu - Volt Tackle - Egg
  (172, 17200, 344, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pichu - Disarming Voice - Egg
  (172, 17200, 574, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Splash - Level 1
  (173, 17300, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Copycat - Level 1
  (173, 17300, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 4
  (173, 17300, 47, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 8
  (173, 17300, 186, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cleffa - Disarming Voice - Level 12
  (173, 17300, 574, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cleffa - Encore - Level 16
  (173, 17300, 227, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cleffa - Charm - Level 20
  (173, 17300, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cleffa - Charm - TM002
  (173, 17300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 9),
  -- Cleffa - Fake Tears - TM003
  (173, 17300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 10),
  -- Cleffa - Protect - TM007
  (173, 17300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 11),
  -- Cleffa - Water Pulse - TM011
  (173, 17300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 12),
  -- Cleffa - Psybeam - TM016
  (173, 17300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 13),
  -- Cleffa - Disarming Voice - TM019
  (173, 17300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 14),
  -- Cleffa - Chilling Water - TM022
  (173, 17300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 15),
  -- Cleffa - Facade - TM025
  (173, 17300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Cleffa - Swift - TM032
  (173, 17300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Cleffa - Magical Leaf - TM033
  (173, 17300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Cleffa - Icy Wind - TM034
  (173, 17300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Cleffa - Draining Kiss - TM037
  (173, 17300, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 20),
  -- Cleffa - Stored Power - TM041
  (173, 17300, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Cleffa - Fling - TM043
  (173, 17300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Cleffa - Endure - TM047
  (173, 17300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Cleffa - Sunny Day - TM049
  (173, 17300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Cleffa - Rain Dance - TM050
  (173, 17300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Cleffa - Psyshock - TM054
  (173, 17300, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 26),
  -- Cleffa - Dig - TM055
  (173, 17300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Cleffa - Zen Headbutt - TM059
  (173, 17300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Cleffa - Body Slam - TM066
  (173, 17300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Cleffa - Sleep Talk - TM070
  (173, 17300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Cleffa - Reflect - TM074
  (173, 17300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Cleffa - Light Screen - TM075
  (173, 17300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Cleffa - Dazzling Gleam - TM079
  (173, 17300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 33),
  -- Cleffa - Metronome - TM080
  (173, 17300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 34),
  -- Cleffa - Grass Knot - TM081
  (173, 17300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Cleffa - Thunder Wave - TM082
  (173, 17300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Cleffa - Rest - TM085
  (173, 17300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Cleffa - Substitute - TM103
  (173, 17300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Cleffa - Trick - TM109
  (173, 17300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 39),
  -- Cleffa - Shadow Ball - TM114
  (173, 17300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 40),
  -- Cleffa - Hyper Voice - TM117
  (173, 17300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Cleffa - Psychic - TM120
  (173, 17300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Cleffa - Encore - TM122
  (173, 17300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Cleffa - Flamethrower - TM125
  (173, 17300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Cleffa - Play Rough - TM127
  (173, 17300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Cleffa - Amnesia - TM128
  (173, 17300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Cleffa - Calm Mind - TM129
  (173, 17300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Cleffa - Helping Hand - TM130
  (173, 17300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Cleffa - Misty Terrain - TM139
  (173, 17300, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 49),
  -- Cleffa - Fire Blast - TM141
  (173, 17300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Cleffa - Solar Beam - TM168
  (173, 17300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Cleffa - Tera Blast - TM171
  (173, 17300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Cleffa - Present - Egg
  (173, 17300, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cleffa - Wish - Egg
  (173, 17300, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cleffa - Tickle - Egg
  (173, 17300, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cleffa - Heal Pulse - Egg
  (173, 17300, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Igglybuff - Pound - Level 1
  (174, 17400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Copycat - Level 1
  (174, 17400, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Igglybuff - Defense Curl - Level 4
  (174, 17400, 111, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 8
  (174, 17400, 186, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Igglybuff - Disarming Voice - Level 12
  (174, 17400, 574, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Igglybuff - Disable - Level 16
  (174, 17400, 50, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Igglybuff - Charm - Level 20
  (174, 17400, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Igglybuff - Take Down - TM001
  (174, 17400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 9),
  -- Igglybuff - Charm - TM002
  (174, 17400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 10),
  -- Igglybuff - Fake Tears - TM003
  (174, 17400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 11),
  -- Igglybuff - Protect - TM007
  (174, 17400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Igglybuff - Disarming Voice - TM019
  (174, 17400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 13),
  -- Igglybuff - Trailblaze - TM020
  (174, 17400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 14),
  -- Igglybuff - Facade - TM025
  (174, 17400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 15),
  -- Igglybuff - Swift - TM032
  (174, 17400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 16),
  -- Igglybuff - Icy Wind - TM034
  (174, 17400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 17),
  -- Igglybuff - Draining Kiss - TM037
  (174, 17400, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 18),
  -- Igglybuff - Fling - TM043
  (174, 17400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 19),
  -- Igglybuff - Endure - TM047
  (174, 17400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Igglybuff - Sunny Day - TM049
  (174, 17400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Igglybuff - Rain Dance - TM050
  (174, 17400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Igglybuff - Dig - TM055
  (174, 17400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 23),
  -- Igglybuff - Body Slam - TM066
  (174, 17400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Igglybuff - Sleep Talk - TM070
  (174, 17400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Igglybuff - Reflect - TM074
  (174, 17400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 26),
  -- Igglybuff - Light Screen - TM075
  (174, 17400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 27),
  -- Igglybuff - Dazzling Gleam - TM079
  (174, 17400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 28),
  -- Igglybuff - Grass Knot - TM081
  (174, 17400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Igglybuff - Thunder Wave - TM082
  (174, 17400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 30),
  -- Igglybuff - Rest - TM085
  (174, 17400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Igglybuff - Substitute - TM103
  (174, 17400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Igglybuff - Shadow Ball - TM114
  (174, 17400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 33),
  -- Igglybuff - Hyper Voice - TM117
  (174, 17400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 34),
  -- Igglybuff - Psychic - TM120
  (174, 17400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 35),
  -- Igglybuff - Encore - TM122
  (174, 17400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 36),
  -- Igglybuff - Flamethrower - TM125
  (174, 17400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 37),
  -- Igglybuff - Play Rough - TM127
  (174, 17400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 38),
  -- Igglybuff - Helping Hand - TM130
  (174, 17400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Igglybuff - Misty Terrain - TM139
  (174, 17400, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 40),
  -- Igglybuff - Fire Blast - TM141
  (174, 17400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Igglybuff - Wild Charge - TM147
  (174, 17400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 42),
  -- Igglybuff - Solar Beam - TM168
  (174, 17400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 43),
  -- Igglybuff - Tera Blast - TM171
  (174, 17400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Igglybuff - Perish Song - Egg
  (174, 17400, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Igglybuff - Rollout - Egg
  (174, 17400, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Igglybuff - Present - Egg
  (174, 17400, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Igglybuff - Wish - Egg
  (174, 17400, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Igglybuff - Covet - Egg
  (174, 17400, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Igglybuff - Gravity - Egg
  (174, 17400, 356, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Igglybuff - Last Resort - Egg
  (174, 17400, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Igglybuff - Heal Pulse - Egg
  (174, 17400, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 1
  (179, 17900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Wave - Level 4
  (179, 17900, 86, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Shock - Level 8
  (179, 17900, 84, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 11
  (179, 17900, 178, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Mareep - Charge - Level 15
  (179, 17900, 268, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mareep - Take Down - Level 18
  (179, 17900, 36, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Mareep - Electro Ball - Level 22
  (179, 17900, 486, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Mareep - Confuse Ray - Level 25
  (179, 17900, 109, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Mareep - Power Gem - Level 29
  (179, 17900, 408, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Mareep - Discharge - Level 32
  (179, 17900, 435, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mareep - Cotton Guard - Level 36
  (179, 17900, 538, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mareep - Dazzling Gleam - Level 39
  (179, 17900, 605, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Mareep - Light Screen - Level 43
  (179, 17900, 113, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Mareep - Thunder - Level 46
  (179, 17900, 87, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Mareep - Take Down - TM001
  (179, 17900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Mareep - Agility - TM004
  (179, 17900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Mareep - Protect - TM007
  (179, 17900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Mareep - Confuse Ray - TM017
  (179, 17900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Mareep - Trailblaze - TM020
  (179, 17900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Mareep - Charge Beam - TM023
  (179, 17900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Mareep - Facade - TM025
  (179, 17900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Mareep - Endure - TM047
  (179, 17900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Mareep - Volt Switch - TM048
  (179, 17900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Mareep - Sunny Day - TM049
  (179, 17900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Mareep - Rain Dance - TM050
  (179, 17900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Mareep - Dig - TM055
  (179, 17900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Mareep - Body Slam - TM066
  (179, 17900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Mareep - Sleep Talk - TM070
  (179, 17900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Mareep - Electro Ball - TM072
  (179, 17900, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 30),
  -- Mareep - Reflect - TM074
  (179, 17900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Mareep - Light Screen - TM075
  (179, 17900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Mareep - Dazzling Gleam - TM079
  (179, 17900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 33),
  -- Mareep - Thunder Wave - TM082
  (179, 17900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Mareep - Rest - TM085
  (179, 17900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Mareep - Eerie Impulse - TM096
  (179, 17900, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 36),
  -- Mareep - Power Gem - TM101
  (179, 17900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 37),
  -- Mareep - Substitute - TM103
  (179, 17900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Mareep - Thunderbolt - TM126
  (179, 17900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 39),
  -- Mareep - Helping Hand - TM130
  (179, 17900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Mareep - Electric Terrain - TM136
  (179, 17900, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 41),
  -- Mareep - Wild Charge - TM147
  (179, 17900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 42),
  -- Mareep - Thunder - TM166
  (179, 17900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 43),
  -- Mareep - Tera Blast - TM171
  (179, 17900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Mareep - Agility - Egg
  (179, 17900, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mareep - Flatter - Egg
  (179, 17900, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mareep - After You - Egg
  (179, 17900, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mareep - Electroweb - Egg
  (179, 17900, 527, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mareep - Eerie Impulse - Egg
  (179, 17900, 598, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mareep - Electric Terrain - Egg
  (179, 17900, 604, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 6
  (180, 18000, 84, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Wave - Level 9
  (180, 18000, 86, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Flaaffy - Cotton Spore - Level 11
  (180, 18000, 178, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Flaaffy - Charge - Level 16
  (180, 18000, 268, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Flaaffy - Take Down - Level 20
  (180, 18000, 36, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Flaaffy - Electro Ball - Level 25
  (180, 18000, 486, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Flaaffy - Confuse Ray - Level 29
  (180, 18000, 109, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Flaaffy - Power Gem - Level 34
  (180, 18000, 408, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Flaaffy - Discharge - Level 38
  (180, 18000, 435, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Flaaffy - Cotton Guard - Level 43
  (180, 18000, 538, 23, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Flaaffy - Dazzling Gleam - Level 47
  (180, 18000, 605, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Flaaffy - Light Screen - Level 52
  (180, 18000, 113, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Flaaffy - Thunder - Level 56
  (180, 18000, 87, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Flaaffy - Take Down - TM001
  (180, 18000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Flaaffy - Agility - TM004
  (180, 18000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Flaaffy - Protect - TM007
  (180, 18000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Flaaffy - Low Kick - TM012
  (180, 18000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Flaaffy - Confuse Ray - TM017
  (180, 18000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Flaaffy - Trailblaze - TM020
  (180, 18000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Flaaffy - Charge Beam - TM023
  (180, 18000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Flaaffy - Facade - TM025
  (180, 18000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Flaaffy - Swift - TM032
  (180, 18000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Flaaffy - Fling - TM043
  (180, 18000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Flaaffy - Endure - TM047
  (180, 18000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Flaaffy - Volt Switch - TM048
  (180, 18000, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Flaaffy - Sunny Day - TM049
  (180, 18000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Flaaffy - Rain Dance - TM050
  (180, 18000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Flaaffy - Dig - TM055
  (180, 18000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Flaaffy - Brick Break - TM058
  (180, 18000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Flaaffy - Body Slam - TM066
  (180, 18000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Flaaffy - Fire Punch - TM067
  (180, 18000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Flaaffy - Thunder Punch - TM068
  (180, 18000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Flaaffy - Ice Punch - TM069
  (180, 18000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Flaaffy - Sleep Talk - TM070
  (180, 18000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Flaaffy - Electro Ball - TM072
  (180, 18000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 37),
  -- Flaaffy - Reflect - TM074
  (180, 18000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 38),
  -- Flaaffy - Light Screen - TM075
  (180, 18000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Flaaffy - Dazzling Gleam - TM079
  (180, 18000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 40),
  -- Flaaffy - Thunder Wave - TM082
  (180, 18000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 41),
  -- Flaaffy - Rest - TM085
  (180, 18000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Flaaffy - Eerie Impulse - TM096
  (180, 18000, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 43),
  -- Flaaffy - Power Gem - TM101
  (180, 18000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Flaaffy - Substitute - TM103
  (180, 18000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Flaaffy - Thunderbolt - TM126
  (180, 18000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Flaaffy - Helping Hand - TM130
  (180, 18000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Flaaffy - Electric Terrain - TM136
  (180, 18000, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 48),
  -- Flaaffy - Wild Charge - TM147
  (180, 18000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 49),
  -- Flaaffy - Thunder - TM166
  (180, 18000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Flaaffy - Tera Blast - TM171
  (180, 18000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Flaaffy - Agility - Egg
  (180, 18000, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Flaaffy - Flatter - Egg
  (180, 18000, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Flaaffy - After You - Egg
  (180, 18000, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Flaaffy - Electroweb - Egg
  (180, 18000, 527, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Flaaffy - Eerie Impulse - Egg
  (180, 18000, 598, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Flaaffy - Electric Terrain - Egg
  (180, 18000, 604, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ampharos - Fire Punch - Level 1
  (181, 18100, 7, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ampharos - Thunder Shock - Level 1
  (181, 18100, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ampharos - Thunder Wave - Level 1
  (181, 18100, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ampharos - Zap Cannon - Level 1
  (181, 18100, 192, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ampharos - Dragon Pulse - Level 1
  (181, 18100, 406, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ampharos - Magnetic Flux - Level 1
  (181, 18100, 602, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ampharos - Cotton Spore - Level 11
  (181, 18100, 178, 23, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Ampharos - Charge - Level 16
  (181, 18100, 268, 23, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Ampharos - Take Down - Level 20
  (181, 18100, 36, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Ampharos - Electro Ball - Level 25
  (181, 18100, 486, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Ampharos - Confuse Ray - Level 29
  (181, 18100, 109, 23, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Ampharos - Power Gem - Level 35
  (181, 18100, 408, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Ampharos - Discharge - Level 40
  (181, 18100, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Ampharos - Cotton Guard - Level 46
  (181, 18100, 538, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ampharos - Dazzling Gleam - Level 51
  (181, 18100, 605, 23, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Ampharos - Light Screen - Level 57
  (181, 18100, 113, 23, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Ampharos - Thunder - Level 62
  (181, 18100, 87, 23, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Ampharos - Take Down - TM001
  (181, 18100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Ampharos - Agility - TM004
  (181, 18100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 21),
  -- Ampharos - Protect - TM007
  (181, 18100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Ampharos - Low Kick - TM012
  (181, 18100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Ampharos - Confuse Ray - TM017
  (181, 18100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Ampharos - Trailblaze - TM020
  (181, 18100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Ampharos - Charge Beam - TM023
  (181, 18100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Ampharos - Facade - TM025
  (181, 18100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Ampharos - Bulldoze - TM028
  (181, 18100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Ampharos - Swift - TM032
  (181, 18100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Ampharos - Fling - TM043
  (181, 18100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Ampharos - Dragon Tail - TM044
  (181, 18100, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 31),
  -- Ampharos - Endure - TM047
  (181, 18100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Ampharos - Volt Switch - TM048
  (181, 18100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 33),
  -- Ampharos - Sunny Day - TM049
  (181, 18100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Ampharos - Rain Dance - TM050
  (181, 18100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Ampharos - Dig - TM055
  (181, 18100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Ampharos - Brick Break - TM058
  (181, 18100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Ampharos - Body Slam - TM066
  (181, 18100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Ampharos - Fire Punch - TM067
  (181, 18100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Ampharos - Thunder Punch - TM068
  (181, 18100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Ampharos - Ice Punch - TM069
  (181, 18100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Ampharos - Sleep Talk - TM070
  (181, 18100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Ampharos - Electro Ball - TM072
  (181, 18100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 43),
  -- Ampharos - Reflect - TM074
  (181, 18100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 44),
  -- Ampharos - Light Screen - TM075
  (181, 18100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Ampharos - Dazzling Gleam - TM079
  (181, 18100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 46),
  -- Ampharos - Thunder Wave - TM082
  (181, 18100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 47),
  -- Ampharos - Stomping Tantrum - TM084
  (181, 18100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Ampharos - Rest - TM085
  (181, 18100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Ampharos - Eerie Impulse - TM096
  (181, 18100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 50),
  -- Ampharos - Power Gem - TM101
  (181, 18100, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 51),
  -- Ampharos - Substitute - TM103
  (181, 18100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Ampharos - Dragon Pulse - TM115
  (181, 18100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 53),
  -- Ampharos - Thunderbolt - TM126
  (181, 18100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 54),
  -- Ampharos - Helping Hand - TM130
  (181, 18100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Ampharos - Electric Terrain - TM136
  (181, 18100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 56),
  -- Ampharos - Wild Charge - TM147
  (181, 18100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 57),
  -- Ampharos - Giga Impact - TM152
  (181, 18100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Ampharos - Outrage - TM156
  (181, 18100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Ampharos - Focus Blast - TM158
  (181, 18100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Ampharos - Hyper Beam - TM163
  (181, 18100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Ampharos - Thunder - TM166
  (181, 18100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Ampharos - Tera Blast - TM171
  (181, 18100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Ampharos - Agility - Egg
  (181, 18100, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ampharos - Flatter - Egg
  (181, 18100, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ampharos - After You - Egg
  (181, 18100, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ampharos - Electroweb - Egg
  (181, 18100, 527, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ampharos - Eerie Impulse - Egg
  (181, 18100, 598, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ampharos - Electric Terrain - Egg
  (181, 18100, 604, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ampharos - Thunder Punch - Evolution
  (181, 18100, 9, 23, NULL, 7, NULL, NULL, NULL, NULL, 70),
  -- Bellossom - Acid - Level 1
  (182, 18200, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Absorb - Level 1
  (182, 18200, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Mega Drain - Level 1
  (182, 18200, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Growth - Level 1
  (182, 18200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Poison Powder - Level 1
  (182, 18200, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Bellossom - Sleep Powder - Level 1
  (182, 18200, 79, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Bellossom - Petal Dance - Level 1
  (182, 18200, 80, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Bellossom - Toxic - Level 1
  (182, 18200, 92, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Bellossom - Giga Drain - Level 1
  (182, 18200, 202, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Bellossom - Moonlight - Level 1
  (182, 18200, 236, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Bellossom - Quiver Dance - Level 1
  (182, 18200, 483, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Bellossom - Grassy Terrain - Level 1
  (182, 18200, 580, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Bellossom - Moonblast - Level 1
  (182, 18200, 585, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Bellossom - Charm - TM002
  (182, 18200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Bellossom - Protect - TM007
  (182, 18200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Bellossom - Acid Spray - TM013
  (182, 18200, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Bellossom - Trailblaze - TM020
  (182, 18200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Bellossom - Facade - TM025
  (182, 18200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Bellossom - Magical Leaf - TM033
  (182, 18200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Bellossom - Fling - TM043
  (182, 18200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Bellossom - Venoshock - TM045
  (182, 18200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Bellossom - Endure - TM047
  (182, 18200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Bellossom - Sunny Day - TM049
  (182, 18200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Bellossom - Bullet Seed - TM056
  (182, 18200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Bellossom - Sleep Talk - TM070
  (182, 18200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Bellossom - Seed Bomb - TM071
  (182, 18200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Bellossom - Drain Punch - TM073
  (182, 18200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 29),
  -- Bellossom - Dazzling Gleam - TM079
  (182, 18200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Bellossom - Grass Knot - TM081
  (182, 18200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Bellossom - Rest - TM085
  (182, 18200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Bellossom - Swords Dance - TM088
  (182, 18200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Bellossom - Substitute - TM103
  (182, 18200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Bellossom - Giga Drain - TM111
  (182, 18200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Bellossom - Energy Ball - TM119
  (182, 18200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Bellossom - Encore - TM122
  (182, 18200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 37),
  -- Bellossom - Play Rough - TM127
  (182, 18200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 38),
  -- Bellossom - Helping Hand - TM130
  (182, 18200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Bellossom - Pollen Puff - TM131
  (182, 18200, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 40),
  -- Bellossom - Baton Pass - TM132
  (182, 18200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 41),
  -- Bellossom - Grassy Terrain - TM137
  (182, 18200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Bellossom - Sludge Bomb - TM148
  (182, 18200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 43),
  -- Bellossom - Giga Impact - TM152
  (182, 18200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Bellossom - Leaf Storm - TM159
  (182, 18200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 45),
  -- Bellossom - Hyper Beam - TM163
  (182, 18200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Bellossom - Solar Beam - TM168
  (182, 18200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Bellossom - Tera Blast - TM171
  (182, 18200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Bellossom - Leech Seed - Egg
  (182, 18200, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bellossom - Razor Leaf - Egg
  (182, 18200, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bellossom - Flail - Egg
  (182, 18200, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bellossom - Synthesis - Egg
  (182, 18200, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bellossom - Ingrain - Egg
  (182, 18200, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bellossom - Teeter Dance - Egg
  (182, 18200, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bellossom - Tickle - Egg
  (182, 18200, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bellossom - After You - Egg
  (182, 18200, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bellossom - Strength Sap - Egg
  (182, 18200, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Bellossom - Petal Blizzard - Evolution
  (182, 18200, 572, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Marill - Tackle - Level 1
  (183, 18300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Tail Whip - Level 1
  (183, 18300, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marill - Water Gun - Level 1
  (183, 18300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marill - Defense Curl - Level 1
  (183, 18300, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marill - Rollout - Level 1
  (183, 18300, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marill - Helping Hand - Level 1
  (183, 18300, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marill - Bubble Beam - Level 6
  (183, 18300, 61, 23, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Marill - Charm - Level 9
  (183, 18300, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Marill - Slam - Level 12
  (183, 18300, 21, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Marill - Bounce - Level 15
  (183, 18300, 340, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Marill - Aqua Tail - Level 19
  (183, 18300, 401, 23, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Marill - Play Rough - Level 21
  (183, 18300, 583, 23, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Marill - Aqua Ring - Level 24
  (183, 18300, 392, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Marill - Rain Dance - Level 27
  (183, 18300, 240, 23, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Marill - Hydro Pump - Level 30
  (183, 18300, 56, 23, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Marill - Double-Edge - Level 33
  (183, 18300, 38, 23, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Marill - Superpower - Level 36
  (183, 18300, 276, 23, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Marill - Take Down - TM001
  (183, 18300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Marill - Charm - TM002
  (183, 18300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Marill - Fake Tears - TM003
  (183, 18300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Marill - Mud-Slap - TM005
  (183, 18300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Marill - Protect - TM007
  (183, 18300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Marill - Water Pulse - TM011
  (183, 18300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Marill - Disarming Voice - TM019
  (183, 18300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 24),
  -- Marill - Trailblaze - TM020
  (183, 18300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Marill - Chilling Water - TM022
  (183, 18300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Marill - Facade - TM025
  (183, 18300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Marill - Bulldoze - TM028
  (183, 18300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Marill - Swift - TM032
  (183, 18300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Marill - Icy Wind - TM034
  (183, 18300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Marill - Mud Shot - TM035
  (183, 18300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Marill - Draining Kiss - TM037
  (183, 18300, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 32),
  -- Marill - Fling - TM043
  (183, 18300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Marill - Endure - TM047
  (183, 18300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Marill - Rain Dance - TM050
  (183, 18300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Marill - Snowscape - TM052
  (183, 18300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 36),
  -- Marill - Dig - TM055
  (183, 18300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Marill - Brick Break - TM058
  (183, 18300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Marill - Body Slam - TM066
  (183, 18300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Marill - Ice Punch - TM069
  (183, 18300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Marill - Sleep Talk - TM070
  (183, 18300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Marill - Light Screen - TM075
  (183, 18300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Marill - Waterfall - TM077
  (183, 18300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 43),
  -- Marill - Metronome - TM080
  (183, 18300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Marill - Grass Knot - TM081
  (183, 18300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Marill - Rest - TM085
  (183, 18300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Marill - Substitute - TM103
  (183, 18300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Marill - Liquidation - TM110
  (183, 18300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Marill - Hyper Voice - TM117
  (183, 18300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Marill - Encore - TM122
  (183, 18300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Marill - Surf - TM123
  (183, 18300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Marill - Ice Spinner - TM124
  (183, 18300, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 52),
  -- Marill - Play Rough - TM127
  (183, 18300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 53),
  -- Marill - Amnesia - TM128
  (183, 18300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Marill - Helping Hand - TM130
  (183, 18300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Marill - Ice Beam - TM135
  (183, 18300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 56),
  -- Marill - Misty Terrain - TM139
  (183, 18300, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 57),
  -- Marill - Hydro Pump - TM142
  (183, 18300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 58),
  -- Marill - Blizzard - TM143
  (183, 18300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 59),
  -- Marill - Tera Blast - TM171
  (183, 18300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Marill - Sing - Egg
  (183, 18300, 47, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Marill - Supersonic - Egg
  (183, 18300, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Marill - Belly Drum - Egg
  (183, 18300, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Marill - Perish Song - Egg
  (183, 18300, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Marill - Present - Egg
  (183, 18300, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Marill - Tickle - Egg
  (183, 18300, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Marill - Copycat - Egg
  (183, 18300, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Marill - Aqua Jet - Egg
  (183, 18300, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Marill - Soak - Egg
  (183, 18300, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Defense Curl - Level 1
  (184, 18400, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Rollout - Level 1
  (184, 18400, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Azumarill - Helping Hand - Level 1
  (184, 18400, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Azumarill - Bubble Beam - Level 6
  (184, 18400, 61, 23, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Azumarill - Charm - Level 9
  (184, 18400, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Azumarill - Slam - Level 12
  (184, 18400, 21, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Azumarill - Bounce - Level 15
  (184, 18400, 340, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Azumarill - Aqua Tail - Level 21
  (184, 18400, 401, 23, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Azumarill - Play Rough - Level 25
  (184, 18400, 583, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Azumarill - Aqua Ring - Level 30
  (184, 18400, 392, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Azumarill - Rain Dance - Level 35
  (184, 18400, 240, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Azumarill - Hydro Pump - Level 40
  (184, 18400, 56, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Azumarill - Double-Edge - Level 45
  (184, 18400, 38, 23, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Azumarill - Superpower - Level 50
  (184, 18400, 276, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Azumarill - Take Down - TM001
  (184, 18400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Azumarill - Charm - TM002
  (184, 18400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Azumarill - Fake Tears - TM003
  (184, 18400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Azumarill - Mud-Slap - TM005
  (184, 18400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Azumarill - Protect - TM007
  (184, 18400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Azumarill - Water Pulse - TM011
  (184, 18400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Azumarill - Disarming Voice - TM019
  (184, 18400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 24),
  -- Azumarill - Trailblaze - TM020
  (184, 18400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Azumarill - Chilling Water - TM022
  (184, 18400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Azumarill - Facade - TM025
  (184, 18400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Azumarill - Bulldoze - TM028
  (184, 18400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Azumarill - Swift - TM032
  (184, 18400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Azumarill - Icy Wind - TM034
  (184, 18400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Azumarill - Mud Shot - TM035
  (184, 18400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Azumarill - Draining Kiss - TM037
  (184, 18400, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 32),
  -- Azumarill - Fling - TM043
  (184, 18400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Azumarill - Endure - TM047
  (184, 18400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Azumarill - Rain Dance - TM050
  (184, 18400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Azumarill - Snowscape - TM052
  (184, 18400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 36),
  -- Azumarill - Dig - TM055
  (184, 18400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Azumarill - Brick Break - TM058
  (184, 18400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Azumarill - Body Slam - TM066
  (184, 18400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Azumarill - Ice Punch - TM069
  (184, 18400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Azumarill - Sleep Talk - TM070
  (184, 18400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Azumarill - Light Screen - TM075
  (184, 18400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Azumarill - Waterfall - TM077
  (184, 18400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 43),
  -- Azumarill - Metronome - TM080
  (184, 18400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Azumarill - Grass Knot - TM081
  (184, 18400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Azumarill - Rest - TM085
  (184, 18400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Azumarill - Substitute - TM103
  (184, 18400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Azumarill - Liquidation - TM110
  (184, 18400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Azumarill - Hyper Voice - TM117
  (184, 18400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Azumarill - Encore - TM122
  (184, 18400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Azumarill - Surf - TM123
  (184, 18400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Azumarill - Ice Spinner - TM124
  (184, 18400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 52),
  -- Azumarill - Play Rough - TM127
  (184, 18400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 53),
  -- Azumarill - Amnesia - TM128
  (184, 18400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Azumarill - Helping Hand - TM130
  (184, 18400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Azumarill - Ice Beam - TM135
  (184, 18400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 56),
  -- Azumarill - Misty Terrain - TM139
  (184, 18400, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 57),
  -- Azumarill - Hydro Pump - TM142
  (184, 18400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 58),
  -- Azumarill - Blizzard - TM143
  (184, 18400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 59),
  -- Azumarill - Giga Impact - TM152
  (184, 18400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Azumarill - Focus Blast - TM158
  (184, 18400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Azumarill - Hyper Beam - TM163
  (184, 18400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Azumarill - Tera Blast - TM171
  (184, 18400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Azumarill - Sing - Egg
  (184, 18400, 47, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Azumarill - Supersonic - Egg
  (184, 18400, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Azumarill - Belly Drum - Egg
  (184, 18400, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Azumarill - Perish Song - Egg
  (184, 18400, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Azumarill - Present - Egg
  (184, 18400, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Azumarill - Tickle - Egg
  (184, 18400, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Azumarill - Copycat - Egg
  (184, 18400, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Azumarill - Aqua Jet - Egg
  (184, 18400, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Azumarill - Soak - Egg
  (184, 18400, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Flail - Level 1
  (185, 18500, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Fake Tears - Level 1
  (185, 18500, 313, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sudowoodo - Hammer Arm - Level 1
  (185, 18500, 359, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sudowoodo - Copycat - Level 1
  (185, 18500, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sudowoodo - Stone Edge - Level 1
  (185, 18500, 444, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sudowoodo - Wood Hammer - Level 1
  (185, 18500, 452, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sudowoodo - Block - Level 12
  (185, 18500, 335, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Sudowoodo - Mimic - Level 16
  (185, 18500, 102, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sudowoodo - Rock Tomb - Level 20
  (185, 18500, 317, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Sudowoodo - Tearful Look - Level 24
  (185, 18500, 715, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Sudowoodo - Sucker Punch - Level 28
  (185, 18500, 389, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Sudowoodo - Rock Slide - Level 32
  (185, 18500, 157, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Sudowoodo - Low Kick - Level 36
  (185, 18500, 67, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sudowoodo - Counter - Level 40
  (185, 18500, 68, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sudowoodo - Double-Edge - Level 44
  (185, 18500, 38, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Sudowoodo - Head Smash - Level 48
  (185, 18500, 457, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Sudowoodo - Take Down - TM001
  (185, 18500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Sudowoodo - Fake Tears - TM003
  (185, 18500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 19),
  -- Sudowoodo - Mud-Slap - TM005
  (185, 18500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 20),
  -- Sudowoodo - Protect - TM007
  (185, 18500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Sudowoodo - Low Kick - TM012
  (185, 18500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Sudowoodo - Thief - TM018
  (185, 18500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Sudowoodo - Trailblaze - TM020
  (185, 18500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Sudowoodo - Facade - TM025
  (185, 18500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Sudowoodo - Bulldoze - TM028
  (185, 18500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Sudowoodo - Mud Shot - TM035
  (185, 18500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Sudowoodo - Rock Tomb - TM036
  (185, 18500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Sudowoodo - Low Sweep - TM039
  (185, 18500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Sudowoodo - Fling - TM043
  (185, 18500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Sudowoodo - Endure - TM047
  (185, 18500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Sudowoodo - Sunny Day - TM049
  (185, 18500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Sudowoodo - Sandstorm - TM051
  (185, 18500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Sudowoodo - Dig - TM055
  (185, 18500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Sudowoodo - Brick Break - TM058
  (185, 18500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Sudowoodo - Foul Play - TM062
  (185, 18500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Sudowoodo - Body Slam - TM066
  (185, 18500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Sudowoodo - Fire Punch - TM067
  (185, 18500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Sudowoodo - Thunder Punch - TM068
  (185, 18500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Sudowoodo - Ice Punch - TM069
  (185, 18500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Sudowoodo - Sleep Talk - TM070
  (185, 18500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Sudowoodo - Drain Punch - TM073
  (185, 18500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Sudowoodo - Rock Blast - TM076
  (185, 18500, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 43),
  -- Sudowoodo - Grass Knot - TM081
  (185, 18500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Sudowoodo - Stomping Tantrum - TM084
  (185, 18500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Sudowoodo - Rest - TM085
  (185, 18500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Sudowoodo - Rock Slide - TM086
  (185, 18500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Sudowoodo - Taunt - TM087
  (185, 18500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Sudowoodo - Body Press - TM089
  (185, 18500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 49),
  -- Sudowoodo - Spikes - TM090
  (185, 18500, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 50),
  -- Sudowoodo - Power Gem - TM101
  (185, 18500, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 51),
  -- Sudowoodo - Substitute - TM103
  (185, 18500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Sudowoodo - Iron Defense - TM104
  (185, 18500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 53),
  -- Sudowoodo - Stealth Rock - TM116
  (185, 18500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 54),
  -- Sudowoodo - Calm Mind - TM129
  (185, 18500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Sudowoodo - Helping Hand - TM130
  (185, 18500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Sudowoodo - Earth Power - TM133
  (185, 18500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 57),
  -- Sudowoodo - Earthquake - TM149
  (185, 18500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Sudowoodo - Stone Edge - TM150
  (185, 18500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Sudowoodo - Giga Impact - TM152
  (185, 18500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Sudowoodo - Hyper Beam - TM163
  (185, 18500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Sudowoodo - Tera Blast - TM171
  (185, 18500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Sudowoodo - Headbutt - Egg
  (185, 18500, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sudowoodo - Harden - Egg
  (185, 18500, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sudowoodo - Defense Curl - Egg
  (185, 18500, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sudowoodo - Curse - Egg
  (185, 18500, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sudowoodo - Rollout - Egg
  (185, 18500, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sudowoodo - Rock Polish - Egg
  (185, 18500, 397, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sudowoodo - Slam - Evolution
  (185, 18500, 21, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Politoed - Pound - Level 1
  (186, 18600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Hydro Pump - Level 1
  (186, 18600, 56, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Belly Drum - Level 1
  (186, 18600, 187, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Rain Dance - Level 1
  (186, 18600, 240, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Take Down - TM001
  (186, 18600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Politoed - Mud-Slap - TM005
  (186, 18600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 6),
  -- Politoed - Protect - TM007
  (186, 18600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 7),
  -- Politoed - Water Pulse - TM011
  (186, 18600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 8),
  -- Politoed - Low Kick - TM012
  (186, 18600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 9),
  -- Politoed - Thief - TM018
  (186, 18600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 10),
  -- Politoed - Chilling Water - TM022
  (186, 18600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 11),
  -- Politoed - Facade - TM025
  (186, 18600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 12),
  -- Politoed - Bulldoze - TM028
  (186, 18600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 13),
  -- Politoed - Swift - TM032
  (186, 18600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 14),
  -- Politoed - Icy Wind - TM034
  (186, 18600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 15),
  -- Politoed - Mud Shot - TM035
  (186, 18600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 16),
  -- Politoed - Low Sweep - TM039
  (186, 18600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 17),
  -- Politoed - Fling - TM043
  (186, 18600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 18),
  -- Politoed - Endure - TM047
  (186, 18600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Politoed - Rain Dance - TM050
  (186, 18600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 20),
  -- Politoed - Dig - TM055
  (186, 18600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 21),
  -- Politoed - Brick Break - TM058
  (186, 18600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 22),
  -- Politoed - Body Slam - TM066
  (186, 18600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 23),
  -- Politoed - Ice Punch - TM069
  (186, 18600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 24),
  -- Politoed - Sleep Talk - TM070
  (186, 18600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Politoed - Waterfall - TM077
  (186, 18600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 26),
  -- Politoed - Metronome - TM080
  (186, 18600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 27),
  -- Politoed - Rest - TM085
  (186, 18600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Politoed - Substitute - TM103
  (186, 18600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Politoed - Liquidation - TM110
  (186, 18600, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 30),
  -- Politoed - Hyper Voice - TM117
  (186, 18600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 31),
  -- Politoed - Psychic - TM120
  (186, 18600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 32),
  -- Politoed - Encore - TM122
  (186, 18600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 33),
  -- Politoed - Surf - TM123
  (186, 18600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 34),
  -- Politoed - Amnesia - TM128
  (186, 18600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 35),
  -- Politoed - Helping Hand - TM130
  (186, 18600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Politoed - Earth Power - TM133
  (186, 18600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 37),
  -- Politoed - Ice Beam - TM135
  (186, 18600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Politoed - Hydro Pump - TM142
  (186, 18600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Politoed - Blizzard - TM143
  (186, 18600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Politoed - Earthquake - TM149
  (186, 18600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 41),
  -- Politoed - Giga Impact - TM152
  (186, 18600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Politoed - Focus Blast - TM158
  (186, 18600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 43),
  -- Politoed - Hyper Beam - TM163
  (186, 18600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Politoed - Tera Blast - TM171
  (186, 18600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Politoed - Mist - Egg
  (186, 18600, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Politoed - Splash - Egg
  (186, 18600, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Politoed - Endeavor - Egg
  (186, 18600, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Politoed - Muddy Water - Egg
  (186, 18600, 330, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Politoed - Water Pulse - Egg
  (186, 18600, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Politoed - Bounce - Evolution
  (186, 18600, 340, 23, NULL, 7, NULL, NULL, NULL, NULL, 51),
  -- Politoed - Body Slam - Reminder
  (186, 18600, 34, 23, NULL, 9, NULL, NULL, NULL, NULL, 52),
  -- Politoed - Double-Edge - Reminder
  (186, 18600, 38, 23, NULL, 9, NULL, NULL, NULL, NULL, 53),
  -- Politoed - Water Gun - Reminder
  (186, 18600, 55, 23, NULL, 9, NULL, NULL, NULL, NULL, 54),
  -- Politoed - Bubble Beam - Reminder
  (186, 18600, 61, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Politoed - Hypnosis - Reminder
  (186, 18600, 95, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Politoed - Perish Song - Reminder
  (186, 18600, 195, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Politoed - Swagger - Reminder
  (186, 18600, 207, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Politoed - Hyper Voice - Reminder
  (186, 18600, 304, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Politoed - Mud Shot - Reminder
  (186, 18600, 341, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Politoed - Earth Power - Reminder
  (186, 18600, 414, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Hoppip - Tackle - Level 1
  (187, 18700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoppip - Splash - Level 1
  (187, 18700, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoppip - Tail Whip - Level 4
  (187, 18700, 39, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hoppip - Absorb - Level 6
  (187, 18700, 71, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Hoppip - Fairy Wind - Level 8
  (187, 18700, 584, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Hoppip - Poison Powder - Level 10
  (187, 18700, 77, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hoppip - Stun Spore - Level 10
  (187, 18700, 78, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Hoppip - Sleep Powder - Level 10
  (187, 18700, 79, 23, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Hoppip - Bullet Seed - Level 12
  (187, 18700, 331, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Hoppip - Synthesis - Level 15
  (187, 18700, 235, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Hoppip - Leech Seed - Level 19
  (187, 18700, 73, 23, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Hoppip - Mega Drain - Level 22
  (187, 18700, 72, 23, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Hoppip - Acrobatics - Level 24
  (187, 18700, 512, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Hoppip - Cotton Spore - Level 27
  (187, 18700, 178, 23, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Hoppip - U-turn - Level 29
  (187, 18700, 369, 23, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Hoppip - Giga Drain - Level 32
  (187, 18700, 202, 23, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Hoppip - Bounce - Level 35
  (187, 18700, 340, 23, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Hoppip - Memento - Level 38
  (187, 18700, 262, 23, NULL, 1, 38, NULL, NULL, NULL, 18),
  -- Hoppip - Take Down - TM001
  (187, 18700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Hoppip - Charm - TM002
  (187, 18700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Hoppip - Protect - TM007
  (187, 18700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Hoppip - Acrobatics - TM014
  (187, 18700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Hoppip - Thief - TM018
  (187, 18700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Hoppip - Trailblaze - TM020
  (187, 18700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Hoppip - Facade - TM025
  (187, 18700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Hoppip - Aerial Ace - TM027
  (187, 18700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Hoppip - Magical Leaf - TM033
  (187, 18700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Hoppip - Fling - TM043
  (187, 18700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Hoppip - Endure - TM047
  (187, 18700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Hoppip - Sunny Day - TM049
  (187, 18700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Hoppip - Rain Dance - TM050
  (187, 18700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Hoppip - Bullet Seed - TM056
  (187, 18700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Hoppip - U-turn - TM060
  (187, 18700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Hoppip - Sleep Talk - TM070
  (187, 18700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Hoppip - Seed Bomb - TM071
  (187, 18700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Hoppip - Reflect - TM074
  (187, 18700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Hoppip - Light Screen - TM075
  (187, 18700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Hoppip - Dazzling Gleam - TM079
  (187, 18700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Hoppip - Grass Knot - TM081
  (187, 18700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Hoppip - Rest - TM085
  (187, 18700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Hoppip - Swords Dance - TM088
  (187, 18700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Hoppip - Substitute - TM103
  (187, 18700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Hoppip - Giga Drain - TM111
  (187, 18700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Hoppip - Tailwind - TM113
  (187, 18700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Hoppip - Energy Ball - TM119
  (187, 18700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 45),
  -- Hoppip - Encore - TM122
  (187, 18700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Hoppip - Helping Hand - TM130
  (187, 18700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Hoppip - Pollen Puff - TM131
  (187, 18700, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 48),
  -- Hoppip - Baton Pass - TM132
  (187, 18700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Hoppip - Grassy Terrain - TM137
  (187, 18700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 50),
  -- Hoppip - Leaf Storm - TM159
  (187, 18700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 51),
  -- Hoppip - Solar Beam - TM168
  (187, 18700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Hoppip - Tera Blast - TM171
  (187, 18700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Hoppip - Encore - Egg
  (187, 18700, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hoppip - Worry Seed - Egg
  (187, 18700, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hoppip - Seed Bomb - Egg
  (187, 18700, 402, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hoppip - Switcheroo - Egg
  (187, 18700, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Hoppip - Rage Powder - Egg
  (187, 18700, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Hoppip - Cotton Guard - Egg
  (187, 18700, 538, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hoppip - Grassy Terrain - Egg
  (187, 18700, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hoppip - Strength Sap - Egg
  (187, 18700, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Skiploom - Tail Whip - Level 1
  (188, 18800, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiploom - Absorb - Level 1
  (188, 18800, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiploom - Splash - Level 1
  (188, 18800, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skiploom - Synthesis - Level 1
  (188, 18800, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skiploom - Tackle - Level 8
  (188, 18800, 33, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Skiploom - Fairy Wind - Level 10
  (188, 18800, 584, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Skiploom - Poison Powder - Level 12
  (188, 18800, 77, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Skiploom - Stun Spore - Level 12
  (188, 18800, 78, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Skiploom - Sleep Powder - Level 12
  (188, 18800, 79, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Skiploom - Bullet Seed - Level 15
  (188, 18800, 331, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Skiploom - Leech Seed - Level 20
  (188, 18800, 73, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Skiploom - Mega Drain - Level 24
  (188, 18800, 72, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Skiploom - Acrobatics - Level 28
  (188, 18800, 512, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Skiploom - Cotton Spore - Level 31
  (188, 18800, 178, 23, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Skiploom - U-turn - Level 34
  (188, 18800, 369, 23, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Skiploom - Giga Drain - Level 37
  (188, 18800, 202, 23, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Skiploom - Bounce - Level 41
  (188, 18800, 340, 23, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Skiploom - Memento - Level 44
  (188, 18800, 262, 23, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Skiploom - Take Down - TM001
  (188, 18800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Skiploom - Charm - TM002
  (188, 18800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Skiploom - Protect - TM007
  (188, 18800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Skiploom - Acrobatics - TM014
  (188, 18800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Skiploom - Thief - TM018
  (188, 18800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Skiploom - Trailblaze - TM020
  (188, 18800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Skiploom - Facade - TM025
  (188, 18800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Skiploom - Aerial Ace - TM027
  (188, 18800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Skiploom - Magical Leaf - TM033
  (188, 18800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Skiploom - Fling - TM043
  (188, 18800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Skiploom - Endure - TM047
  (188, 18800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Skiploom - Sunny Day - TM049
  (188, 18800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Skiploom - Rain Dance - TM050
  (188, 18800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Skiploom - Bullet Seed - TM056
  (188, 18800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Skiploom - U-turn - TM060
  (188, 18800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Skiploom - Sleep Talk - TM070
  (188, 18800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Skiploom - Seed Bomb - TM071
  (188, 18800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Skiploom - Reflect - TM074
  (188, 18800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Skiploom - Light Screen - TM075
  (188, 18800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Skiploom - Dazzling Gleam - TM079
  (188, 18800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Skiploom - Grass Knot - TM081
  (188, 18800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Skiploom - Rest - TM085
  (188, 18800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Skiploom - Swords Dance - TM088
  (188, 18800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Skiploom - Substitute - TM103
  (188, 18800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Skiploom - Giga Drain - TM111
  (188, 18800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Skiploom - Tailwind - TM113
  (188, 18800, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Skiploom - Energy Ball - TM119
  (188, 18800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 45),
  -- Skiploom - Encore - TM122
  (188, 18800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Skiploom - Helping Hand - TM130
  (188, 18800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Skiploom - Pollen Puff - TM131
  (188, 18800, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 48),
  -- Skiploom - Baton Pass - TM132
  (188, 18800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Skiploom - Grassy Terrain - TM137
  (188, 18800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 50),
  -- Skiploom - Leaf Storm - TM159
  (188, 18800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 51),
  -- Skiploom - Solar Beam - TM168
  (188, 18800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Skiploom - Tera Blast - TM171
  (188, 18800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Skiploom - Encore - Egg
  (188, 18800, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skiploom - Worry Seed - Egg
  (188, 18800, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skiploom - Seed Bomb - Egg
  (188, 18800, 402, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skiploom - Switcheroo - Egg
  (188, 18800, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skiploom - Rage Powder - Egg
  (188, 18800, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skiploom - Cotton Guard - Egg
  (188, 18800, 538, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skiploom - Grassy Terrain - Egg
  (188, 18800, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skiploom - Strength Sap - Egg
  (188, 18800, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Jumpluff - Tail Whip - Level 1
  (189, 18900, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jumpluff - Absorb - Level 1
  (189, 18900, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jumpluff - Splash - Level 1
  (189, 18900, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jumpluff - Synthesis - Level 1
  (189, 18900, 235, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jumpluff - Tackle - Level 8
  (189, 18900, 33, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Jumpluff - Fairy Wind - Level 10
  (189, 18900, 584, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Jumpluff - Poison Powder - Level 12
  (189, 18900, 77, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Jumpluff - Stun Spore - Level 12
  (189, 18900, 78, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Jumpluff - Sleep Powder - Level 12
  (189, 18900, 79, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Jumpluff - Bullet Seed - Level 15
  (189, 18900, 331, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Jumpluff - Leech Seed - Level 20
  (189, 18900, 73, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Jumpluff - Mega Drain - Level 24
  (189, 18900, 72, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Jumpluff - Acrobatics - Level 30
  (189, 18900, 512, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Jumpluff - Cotton Spore - Level 35
  (189, 18900, 178, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Jumpluff - U-turn - Level 39
  (189, 18900, 369, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Jumpluff - Giga Drain - Level 43
  (189, 18900, 202, 23, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Jumpluff - Bounce - Level 49
  (189, 18900, 340, 23, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Jumpluff - Memento - Level 55
  (189, 18900, 262, 23, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Jumpluff - Take Down - TM001
  (189, 18900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Jumpluff - Charm - TM002
  (189, 18900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Jumpluff - Protect - TM007
  (189, 18900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Jumpluff - Acrobatics - TM014
  (189, 18900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Jumpluff - Thief - TM018
  (189, 18900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Jumpluff - Trailblaze - TM020
  (189, 18900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Jumpluff - Facade - TM025
  (189, 18900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Jumpluff - Aerial Ace - TM027
  (189, 18900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Jumpluff - Magical Leaf - TM033
  (189, 18900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Jumpluff - Fling - TM043
  (189, 18900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Jumpluff - Endure - TM047
  (189, 18900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Jumpluff - Sunny Day - TM049
  (189, 18900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Jumpluff - Rain Dance - TM050
  (189, 18900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Jumpluff - Bullet Seed - TM056
  (189, 18900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Jumpluff - U-turn - TM060
  (189, 18900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Jumpluff - Sleep Talk - TM070
  (189, 18900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Jumpluff - Seed Bomb - TM071
  (189, 18900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Jumpluff - Reflect - TM074
  (189, 18900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Jumpluff - Light Screen - TM075
  (189, 18900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Jumpluff - Dazzling Gleam - TM079
  (189, 18900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Jumpluff - Grass Knot - TM081
  (189, 18900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Jumpluff - Rest - TM085
  (189, 18900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Jumpluff - Swords Dance - TM088
  (189, 18900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Jumpluff - Substitute - TM103
  (189, 18900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Jumpluff - Giga Drain - TM111
  (189, 18900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Jumpluff - Tailwind - TM113
  (189, 18900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Jumpluff - Energy Ball - TM119
  (189, 18900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 45),
  -- Jumpluff - Encore - TM122
  (189, 18900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Jumpluff - Helping Hand - TM130
  (189, 18900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Jumpluff - Pollen Puff - TM131
  (189, 18900, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 48),
  -- Jumpluff - Baton Pass - TM132
  (189, 18900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Jumpluff - Grassy Terrain - TM137
  (189, 18900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 50),
  -- Jumpluff - Giga Impact - TM152
  (189, 18900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Jumpluff - Leaf Storm - TM159
  (189, 18900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 52),
  -- Jumpluff - Hyper Beam - TM163
  (189, 18900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Jumpluff - Solar Beam - TM168
  (189, 18900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Jumpluff - Tera Blast - TM171
  (189, 18900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Jumpluff - Encore - Egg
  (189, 18900, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Jumpluff - Worry Seed - Egg
  (189, 18900, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Jumpluff - Seed Bomb - Egg
  (189, 18900, 402, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Jumpluff - Switcheroo - Egg
  (189, 18900, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Jumpluff - Rage Powder - Egg
  (189, 18900, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Jumpluff - Cotton Guard - Egg
  (189, 18900, 538, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Jumpluff - Grassy Terrain - Egg
  (189, 18900, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Jumpluff - Strength Sap - Egg
  (189, 18900, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aipom - Scratch - Level 1
  (190, 19000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Level 1
  (190, 19000, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 4
  (190, 19000, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aipom - Astonish - Level 8
  (190, 19000, 310, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aipom - Baton Pass - Level 11
  (190, 19000, 226, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aipom - Tickle - Level 15
  (190, 19000, 321, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aipom - Fury Swipes - Level 18
  (190, 19000, 154, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aipom - Swift - Level 22
  (190, 19000, 129, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aipom - Screech - Level 25
  (190, 19000, 103, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aipom - Agility - Level 29
  (190, 19000, 97, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aipom - Double Hit - Level 32
  (190, 19000, 458, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aipom - Fling - Level 36
  (190, 19000, 374, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aipom - Nasty Plot - Level 39
  (190, 19000, 417, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aipom - Last Resort - Level 43
  (190, 19000, 387, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aipom - Take Down - TM001
  (190, 19000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Aipom - Agility - TM004
  (190, 19000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Aipom - Mud-Slap - TM005
  (190, 19000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Aipom - Protect - TM007
  (190, 19000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Aipom - Water Pulse - TM011
  (190, 19000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Aipom - Low Kick - TM012
  (190, 19000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Aipom - Acrobatics - TM014
  (190, 19000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Aipom - Thief - TM018
  (190, 19000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Aipom - Trailblaze - TM020
  (190, 19000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Aipom - Chilling Water - TM022
  (190, 19000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Aipom - Facade - TM025
  (190, 19000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Aipom - Aerial Ace - TM027
  (190, 19000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Aipom - Swift - TM032
  (190, 19000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Aipom - Mud Shot - TM035
  (190, 19000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Aipom - Low Sweep - TM039
  (190, 19000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Aipom - Fling - TM043
  (190, 19000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Aipom - Endure - TM047
  (190, 19000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Aipom - Sunny Day - TM049
  (190, 19000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Aipom - Rain Dance - TM050
  (190, 19000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Aipom - Dig - TM055
  (190, 19000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Aipom - Brick Break - TM058
  (190, 19000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Aipom - U-turn - TM060
  (190, 19000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Aipom - Shadow Claw - TM061
  (190, 19000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Aipom - Foul Play - TM062
  (190, 19000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Aipom - Fire Punch - TM067
  (190, 19000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Aipom - Thunder Punch - TM068
  (190, 19000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Aipom - Ice Punch - TM069
  (190, 19000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Aipom - Sleep Talk - TM070
  (190, 19000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Aipom - Seed Bomb - TM071
  (190, 19000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Aipom - Metronome - TM080
  (190, 19000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Aipom - Grass Knot - TM081
  (190, 19000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Aipom - Thunder Wave - TM082
  (190, 19000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Aipom - Rest - TM085
  (190, 19000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Aipom - Taunt - TM087
  (190, 19000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Aipom - Gunk Shot - TM102
  (190, 19000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 49),
  -- Aipom - Substitute - TM103
  (190, 19000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Aipom - Shadow Ball - TM114
  (190, 19000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Aipom - Thunderbolt - TM126
  (190, 19000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Aipom - Helping Hand - TM130
  (190, 19000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Aipom - Baton Pass - TM132
  (190, 19000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 54),
  -- Aipom - Nasty Plot - TM140
  (190, 19000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Aipom - Thunder - TM166
  (190, 19000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Aipom - Solar Beam - TM168
  (190, 19000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 57),
  -- Aipom - Tera Blast - TM171
  (190, 19000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Aipom - Slam - Egg
  (190, 19000, 21, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Aipom - Counter - Egg
  (190, 19000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Aipom - Iron Tail - Egg
  (190, 19000, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aipom - Beat Up - Egg
  (190, 19000, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aipom - Fake Out - Egg
  (190, 19000, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aipom - Bounce - Egg
  (190, 19000, 340, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aipom - Covet - Egg
  (190, 19000, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aipom - Switcheroo - Egg
  (190, 19000, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Aipom - Quick Guard - Egg
  (190, 19000, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sunkern - Tackle - Level 1
  (191, 19100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Level 1
  (191, 19100, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunkern - Absorb - Level 7
  (191, 19100, 71, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Sunkern - Mega Drain - Level 10
  (191, 19100, 72, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sunkern - Razor Leaf - Level 16
  (191, 19100, 75, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Sunkern - Worry Seed - Level 19
  (191, 19100, 388, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Sunkern - Giga Drain - Level 22
  (191, 19100, 202, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Sunkern - Endeavor - Level 25
  (191, 19100, 283, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sunkern - Synthesis - Level 28
  (191, 19100, 235, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sunkern - Solar Beam - Level 31
  (191, 19100, 76, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Sunkern - Double-Edge - Level 34
  (191, 19100, 38, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Sunkern - Sunny Day - Level 36
  (191, 19100, 241, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Sunkern - Seed Bomb - Level 39
  (191, 19100, 402, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Sunkern - Take Down - TM001
  (191, 19100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sunkern - Protect - TM007
  (191, 19100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Sunkern - Trailblaze - TM020
  (191, 19100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Sunkern - Facade - TM025
  (191, 19100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Sunkern - Magical Leaf - TM033
  (191, 19100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Sunkern - Endure - TM047
  (191, 19100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Sunkern - Sunny Day - TM049
  (191, 19100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Sunkern - Rain Dance - TM050
  (191, 19100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Sunkern - Bullet Seed - TM056
  (191, 19100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Sunkern - Sleep Talk - TM070
  (191, 19100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Sunkern - Seed Bomb - TM071
  (191, 19100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 24),
  -- Sunkern - Light Screen - TM075
  (191, 19100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 25),
  -- Sunkern - Grass Knot - TM081
  (191, 19100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 26),
  -- Sunkern - Rest - TM085
  (191, 19100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Sunkern - Substitute - TM103
  (191, 19100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Sunkern - Giga Drain - TM111
  (191, 19100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 29),
  -- Sunkern - Energy Ball - TM119
  (191, 19100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 30),
  -- Sunkern - Encore - TM122
  (191, 19100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 31),
  -- Sunkern - Helping Hand - TM130
  (191, 19100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 32),
  -- Sunkern - Earth Power - TM133
  (191, 19100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 33),
  -- Sunkern - Grassy Terrain - TM137
  (191, 19100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 34),
  -- Sunkern - Leaf Storm - TM159
  (191, 19100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 35),
  -- Sunkern - Solar Beam - TM168
  (191, 19100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 36),
  -- Sunkern - Tera Blast - TM171
  (191, 19100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Sunkern - Leech Seed - Egg
  (191, 19100, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sunkern - Curse - Egg
  (191, 19100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sunkern - Encore - Egg
  (191, 19100, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sunkern - Morning Sun - Egg
  (191, 19100, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sunkern - Ingrain - Egg
  (191, 19100, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sunkern - Grassy Terrain - Egg
  (191, 19100, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sunflora - Pound - Level 1
  (192, 19200, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunflora - Tackle - Level 1
  (192, 19200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunflora - Growth - Level 1
  (192, 19200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sunflora - Ingrain - Level 4
  (192, 19200, 275, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Sunflora - Absorb - Level 7
  (192, 19200, 71, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sunflora - Mega Drain - Level 10
  (192, 19200, 72, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Sunflora - Leech Seed - Level 13
  (192, 19200, 73, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Sunflora - Razor Leaf - Level 16
  (192, 19200, 75, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Sunflora - Worry Seed - Level 19
  (192, 19200, 388, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Sunflora - Giga Drain - Level 22
  (192, 19200, 202, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Sunflora - Bullet Seed - Level 25
  (192, 19200, 331, 23, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Sunflora - Petal Dance - Level 28
  (192, 19200, 80, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Sunflora - Solar Beam - Level 31
  (192, 19200, 76, 23, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Sunflora - Double-Edge - Level 34
  (192, 19200, 38, 23, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Sunflora - Sunny Day - Level 39
  (192, 19200, 241, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sunflora - Leaf Storm - Level 43
  (192, 19200, 437, 23, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Sunflora - Petal Blizzard - Level 50
  (192, 19200, 572, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Sunflora - Take Down - TM001
  (192, 19200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Sunflora - Protect - TM007
  (192, 19200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Sunflora - Trailblaze - TM020
  (192, 19200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Sunflora - Facade - TM025
  (192, 19200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Sunflora - Magical Leaf - TM033
  (192, 19200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Sunflora - Endure - TM047
  (192, 19200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Sunflora - Sunny Day - TM049
  (192, 19200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Sunflora - Rain Dance - TM050
  (192, 19200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Sunflora - Bullet Seed - TM056
  (192, 19200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Sunflora - Sleep Talk - TM070
  (192, 19200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Sunflora - Seed Bomb - TM071
  (192, 19200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Sunflora - Light Screen - TM075
  (192, 19200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Sunflora - Dazzling Gleam - TM079
  (192, 19200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Sunflora - Grass Knot - TM081
  (192, 19200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Sunflora - Rest - TM085
  (192, 19200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Sunflora - Swords Dance - TM088
  (192, 19200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Sunflora - Substitute - TM103
  (192, 19200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Sunflora - Giga Drain - TM111
  (192, 19200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Sunflora - Energy Ball - TM119
  (192, 19200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Sunflora - Encore - TM122
  (192, 19200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 37),
  -- Sunflora - Helping Hand - TM130
  (192, 19200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Sunflora - Earth Power - TM133
  (192, 19200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Sunflora - Grassy Terrain - TM137
  (192, 19200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Sunflora - Sludge Bomb - TM148
  (192, 19200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 41),
  -- Sunflora - Giga Impact - TM152
  (192, 19200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Sunflora - Leaf Storm - TM159
  (192, 19200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 43),
  -- Sunflora - Hyper Beam - TM163
  (192, 19200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Sunflora - Solar Beam - TM168
  (192, 19200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Sunflora - Tera Blast - TM171
  (192, 19200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Sunflora - Leech Seed - Egg
  (192, 19200, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sunflora - Curse - Egg
  (192, 19200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sunflora - Encore - Egg
  (192, 19200, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sunflora - Morning Sun - Egg
  (192, 19200, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sunflora - Ingrain - Egg
  (192, 19200, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sunflora - Grassy Terrain - Egg
  (192, 19200, 580, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Yanma - Tackle - Level 1
  (193, 19300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Quick Attack - Level 6
  (193, 19300, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Yanma - Double Team - Level 11
  (193, 19300, 104, 23, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Yanma - Air Cutter - Level 14
  (193, 19300, 314, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Yanma - Detect - Level 17
  (193, 19300, 197, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Yanma - Supersonic - Level 22
  (193, 19300, 48, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Yanma - Uproar - Level 27
  (193, 19300, 253, 23, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Yanma - Bug Bite - Level 30
  (193, 19300, 450, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Yanma - Ancient Power - Level 33
  (193, 19300, 246, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Yanma - Hypnosis - Level 38
  (193, 19300, 95, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Yanma - Wing Attack - Level 43
  (193, 19300, 17, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Yanma - Screech - Level 46
  (193, 19300, 103, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Yanma - U-turn - Level 49
  (193, 19300, 369, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Yanma - Air Slash - Level 54
  (193, 19300, 403, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Yanma - Bug Buzz - Level 57
  (193, 19300, 405, 23, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Yanma - Take Down - TM001
  (193, 19300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Yanma - Protect - TM007
  (193, 19300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Yanma - Struggle Bug - TM015
  (193, 19300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 18),
  -- Yanma - Thief - TM018
  (193, 19300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Yanma - Pounce - TM021
  (193, 19300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Yanma - Facade - TM025
  (193, 19300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Yanma - Aerial Ace - TM027
  (193, 19300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Yanma - Swift - TM032
  (193, 19300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Yanma - Air Cutter - TM040
  (193, 19300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Yanma - Endure - TM047
  (193, 19300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Yanma - Sunny Day - TM049
  (193, 19300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Yanma - U-turn - TM060
  (193, 19300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Yanma - Air Slash - TM065
  (193, 19300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 28),
  -- Yanma - Sleep Talk - TM070
  (193, 19300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Yanma - Rest - TM085
  (193, 19300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Yanma - Swords Dance - TM088
  (193, 19300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 31),
  -- Yanma - Leech Life - TM095
  (193, 19300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 32),
  -- Yanma - Substitute - TM103
  (193, 19300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Yanma - Giga Drain - TM111
  (193, 19300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Yanma - Tailwind - TM113
  (193, 19300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 35),
  -- Yanma - Shadow Ball - TM114
  (193, 19300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 36),
  -- Yanma - Psychic - TM120
  (193, 19300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Yanma - Reversal - TM134
  (193, 19300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 38),
  -- Yanma - Bug Buzz - TM162
  (193, 19300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 39),
  -- Yanma - Solar Beam - TM168
  (193, 19300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 40),
  -- Yanma - Tera Blast - TM171
  (193, 19300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Yanma - Whirlwind - Egg
  (193, 19300, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Yanma - Double-Edge - Egg
  (193, 19300, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Yanma - Feint - Egg
  (193, 19300, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Rain Dance - Level 4
  (194, 19400, 240, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 8
  (194, 19400, 341, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wooper - Mist - Level 12
  (194, 19400, 54, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wooper - Haze - Level 12
  (194, 19400, 114, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wooper - Slam - Level 16
  (194, 19400, 21, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Wooper - Yawn - Level 21
  (194, 19400, 281, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Wooper - Aqua Tail - Level 24
  (194, 19400, 401, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Wooper - Muddy Water - Level 28
  (194, 19400, 330, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Wooper - Amnesia - Level 32
  (194, 19400, 133, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Wooper - Toxic - Level 36
  (194, 19400, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Wooper - Earthquake - Level 40
  (194, 19400, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Wooper - Take Down - TM001
  (194, 19400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Wooper - Mud-Slap - TM005
  (194, 19400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Wooper - Protect - TM007
  (194, 19400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Wooper - Water Pulse - TM011
  (194, 19400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Wooper - Acid Spray - TM013
  (194, 19400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Wooper - Trailblaze - TM020
  (194, 19400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Wooper - Chilling Water - TM022
  (194, 19400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Wooper - Facade - TM025
  (194, 19400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Wooper - Bulldoze - TM028
  (194, 19400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Wooper - Icy Wind - TM034
  (194, 19400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Wooper - Mud Shot - TM035
  (194, 19400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Wooper - Rock Tomb - TM036
  (194, 19400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Wooper - Avalanche - TM046
  (194, 19400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Wooper - Endure - TM047
  (194, 19400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Wooper - Rain Dance - TM050
  (194, 19400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Wooper - Sandstorm - TM051
  (194, 19400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Wooper - Snowscape - TM052
  (194, 19400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Wooper - Dig - TM055
  (194, 19400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Wooper - Body Slam - TM066
  (194, 19400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Wooper - Sleep Talk - TM070
  (194, 19400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Wooper - Waterfall - TM077
  (194, 19400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Wooper - Stomping Tantrum - TM084
  (194, 19400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Wooper - Rest - TM085
  (194, 19400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Wooper - Rock Slide - TM086
  (194, 19400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Wooper - Spikes - TM090
  (194, 19400, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 38),
  -- Wooper - Substitute - TM103
  (194, 19400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Wooper - Liquidation - TM110
  (194, 19400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Wooper - Stealth Rock - TM116
  (194, 19400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Wooper - Encore - TM122
  (194, 19400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 42),
  -- Wooper - Surf - TM123
  (194, 19400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Wooper - Amnesia - TM128
  (194, 19400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 44),
  -- Wooper - Helping Hand - TM130
  (194, 19400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Wooper - Earth Power - TM133
  (194, 19400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 46),
  -- Wooper - Ice Beam - TM135
  (194, 19400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 47),
  -- Wooper - Hydro Pump - TM142
  (194, 19400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 48),
  -- Wooper - Blizzard - TM143
  (194, 19400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 49),
  -- Wooper - Sludge Bomb - TM148
  (194, 19400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Wooper - Earthquake - TM149
  (194, 19400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Wooper - Stone Edge - TM150
  (194, 19400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Wooper - Tera Blast - TM171
  (194, 19400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Wooper - Double Kick - Egg
  (194, 19400, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper - Counter - Egg
  (194, 19400, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wooper - Recover - Egg
  (194, 19400, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wooper - Curse - Egg
  (194, 19400, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wooper - Ancient Power - Egg
  (194, 19400, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wooper - Stockpile - Egg
  (194, 19400, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wooper - Spit Up - Egg
  (194, 19400, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wooper - Swallow - Egg
  (194, 19400, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Wooper - Acid Spray - Egg
  (194, 19400, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Wooper - After You - Egg
  (194, 19400, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Wooper (Paldean Wooper) - Tail Whip - Level 1
  (194, 19401, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper (Paldean Wooper) - Mud Shot - Level 1
  (194, 19401, 341, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper (Paldean Wooper) - Tackle - Level 4
  (194, 19401, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wooper (Paldean Wooper) - Poison Tail - Level 8
  (194, 19401, 342, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wooper (Paldean Wooper) - Toxic Spikes - Level 12
  (194, 19401, 390, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wooper (Paldean Wooper) - Slam - Level 16
  (194, 19401, 21, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Wooper (Paldean Wooper) - Yawn - Level 21
  (194, 19401, 281, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wooper (Paldean Wooper) - Poison Jab - Level 24
  (194, 19401, 398, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wooper (Paldean Wooper) - Sludge Wave - Level 28
  (194, 19401, 482, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Wooper (Paldean Wooper) - Amnesia - Level 32
  (194, 19401, 133, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Wooper (Paldean Wooper) - Toxic - Level 36
  (194, 19401, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Wooper (Paldean Wooper) - Earthquake - Level 40
  (194, 19401, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wooper (Paldean Wooper) - Take Down - TM001
  (194, 19401, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Wooper (Paldean Wooper) - Mud-Slap - TM005
  (194, 19401, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Wooper (Paldean Wooper) - Protect - TM007
  (194, 19401, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Wooper (Paldean Wooper) - Water Pulse - TM011
  (194, 19401, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Wooper (Paldean Wooper) - Low Kick - TM012
  (194, 19401, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Wooper (Paldean Wooper) - Acid Spray - TM013
  (194, 19401, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Wooper (Paldean Wooper) - Trailblaze - TM020
  (194, 19401, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Wooper (Paldean Wooper) - Chilling Water - TM022
  (194, 19401, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Wooper (Paldean Wooper) - Facade - TM025
  (194, 19401, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Wooper (Paldean Wooper) - Poison Tail - TM026
  (194, 19401, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 22),
  -- Wooper (Paldean Wooper) - Bulldoze - TM028
  (194, 19401, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Wooper (Paldean Wooper) - Mud Shot - TM035
  (194, 19401, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Wooper (Paldean Wooper) - Rock Tomb - TM036
  (194, 19401, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Wooper (Paldean Wooper) - Venoshock - TM045
  (194, 19401, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Wooper (Paldean Wooper) - Endure - TM047
  (194, 19401, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Wooper (Paldean Wooper) - Rain Dance - TM050
  (194, 19401, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Wooper (Paldean Wooper) - Sandstorm - TM051
  (194, 19401, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Wooper (Paldean Wooper) - Dig - TM055
  (194, 19401, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Wooper (Paldean Wooper) - Body Slam - TM066
  (194, 19401, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Wooper (Paldean Wooper) - Sleep Talk - TM070
  (194, 19401, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Wooper (Paldean Wooper) - Waterfall - TM077
  (194, 19401, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 33),
  -- Wooper (Paldean Wooper) - Poison Jab - TM083
  (194, 19401, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 34),
  -- Wooper (Paldean Wooper) - Stomping Tantrum - TM084
  (194, 19401, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Wooper (Paldean Wooper) - Rest - TM085
  (194, 19401, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Wooper (Paldean Wooper) - Rock Slide - TM086
  (194, 19401, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Wooper (Paldean Wooper) - Body Press - TM089
  (194, 19401, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Wooper (Paldean Wooper) - Spikes - TM090
  (194, 19401, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 39),
  -- Wooper (Paldean Wooper) - Toxic Spikes - TM091
  (194, 19401, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 40),
  -- Wooper (Paldean Wooper) - Gunk Shot - TM102
  (194, 19401, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 41),
  -- Wooper (Paldean Wooper) - Substitute - TM103
  (194, 19401, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Wooper (Paldean Wooper) - Liquidation - TM110
  (194, 19401, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 43),
  -- Wooper (Paldean Wooper) - Stealth Rock - TM116
  (194, 19401, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Wooper (Paldean Wooper) - Surf - TM123
  (194, 19401, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Wooper (Paldean Wooper) - Amnesia - TM128
  (194, 19401, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 46),
  -- Wooper (Paldean Wooper) - Helping Hand - TM130
  (194, 19401, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Wooper (Paldean Wooper) - Earth Power - TM133
  (194, 19401, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Wooper (Paldean Wooper) - Hydro Pump - TM142
  (194, 19401, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Wooper (Paldean Wooper) - Sludge Bomb - TM148
  (194, 19401, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Wooper (Paldean Wooper) - Earthquake - TM149
  (194, 19401, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Wooper (Paldean Wooper) - Stone Edge - TM150
  (194, 19401, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Wooper (Paldean Wooper) - Tera Blast - TM171
  (194, 19401, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Wooper (Paldean Wooper) - Double Kick - Egg
  (194, 19401, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper (Paldean Wooper) - Mist - Egg
  (194, 19401, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wooper (Paldean Wooper) - Counter - Egg
  (194, 19401, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wooper (Paldean Wooper) - Recover - Egg
  (194, 19401, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wooper (Paldean Wooper) - Haze - Egg
  (194, 19401, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wooper (Paldean Wooper) - Curse - Egg
  (194, 19401, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wooper (Paldean Wooper) - Ancient Power - Egg
  (194, 19401, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wooper (Paldean Wooper) - Stockpile - Egg
  (194, 19401, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Wooper (Paldean Wooper) - Spit Up - Egg
  (194, 19401, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Wooper (Paldean Wooper) - Swallow - Egg
  (194, 19401, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Wooper (Paldean Wooper) - Acid Spray - Egg
  (194, 19401, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Wooper (Paldean Wooper) - After You - Egg
  (194, 19401, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Rain Dance - Level 1
  (195, 19500, 240, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Shot - Level 1
  (195, 19500, 341, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Quagsire - Mist - Level 12
  (195, 19500, 54, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Quagsire - Haze - Level 12
  (195, 19500, 114, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Quagsire - Slam - Level 16
  (195, 19500, 21, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Quagsire - Yawn - Level 23
  (195, 19500, 281, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Quagsire - Aqua Tail - Level 28
  (195, 19500, 401, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Quagsire - Muddy Water - Level 34
  (195, 19500, 330, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Quagsire - Amnesia - Level 40
  (195, 19500, 133, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Quagsire - Toxic - Level 46
  (195, 19500, 92, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quagsire - Earthquake - Level 52
  (195, 19500, 89, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Quagsire - Take Down - TM001
  (195, 19500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Quagsire - Mud-Slap - TM005
  (195, 19500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Quagsire - Protect - TM007
  (195, 19500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Quagsire - Water Pulse - TM011
  (195, 19500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Quagsire - Acid Spray - TM013
  (195, 19500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Quagsire - Thief - TM018
  (195, 19500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Quagsire - Trailblaze - TM020
  (195, 19500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Quagsire - Chilling Water - TM022
  (195, 19500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Quagsire - Facade - TM025
  (195, 19500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Quagsire - Bulldoze - TM028
  (195, 19500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Quagsire - Icy Wind - TM034
  (195, 19500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Quagsire - Mud Shot - TM035
  (195, 19500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Quagsire - Rock Tomb - TM036
  (195, 19500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Quagsire - Fling - TM043
  (195, 19500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Quagsire - Avalanche - TM046
  (195, 19500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 28),
  -- Quagsire - Endure - TM047
  (195, 19500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Quagsire - Rain Dance - TM050
  (195, 19500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Quagsire - Sandstorm - TM051
  (195, 19500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Quagsire - Snowscape - TM052
  (195, 19500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Quagsire - Dig - TM055
  (195, 19500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Quagsire - Brick Break - TM058
  (195, 19500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Quagsire - Body Slam - TM066
  (195, 19500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Quagsire - Ice Punch - TM069
  (195, 19500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 36),
  -- Quagsire - Sleep Talk - TM070
  (195, 19500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Quagsire - Drain Punch - TM073
  (195, 19500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 38),
  -- Quagsire - Waterfall - TM077
  (195, 19500, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Quagsire - Stomping Tantrum - TM084
  (195, 19500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Quagsire - Rest - TM085
  (195, 19500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Quagsire - Rock Slide - TM086
  (195, 19500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Quagsire - Body Press - TM089
  (195, 19500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Quagsire - Spikes - TM090
  (195, 19500, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 44),
  -- Quagsire - Toxic Spikes - TM091
  (195, 19500, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 45),
  -- Quagsire - Eerie Impulse - TM096
  (195, 19500, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 46),
  -- Quagsire - Substitute - TM103
  (195, 19500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Quagsire - Liquidation - TM110
  (195, 19500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 48),
  -- Quagsire - Stealth Rock - TM116
  (195, 19500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 49),
  -- Quagsire - Encore - TM122
  (195, 19500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Quagsire - Surf - TM123
  (195, 19500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Quagsire - Amnesia - TM128
  (195, 19500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 52),
  -- Quagsire - Helping Hand - TM130
  (195, 19500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Quagsire - Earth Power - TM133
  (195, 19500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 54),
  -- Quagsire - Ice Beam - TM135
  (195, 19500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 55),
  -- Quagsire - Hydro Pump - TM142
  (195, 19500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 56),
  -- Quagsire - Blizzard - TM143
  (195, 19500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 57),
  -- Quagsire - Sludge Bomb - TM148
  (195, 19500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 58),
  -- Quagsire - Earthquake - TM149
  (195, 19500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 59),
  -- Quagsire - Stone Edge - TM150
  (195, 19500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 60),
  -- Quagsire - Giga Impact - TM152
  (195, 19500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Quagsire - Focus Blast - TM158
  (195, 19500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Quagsire - Hyper Beam - TM163
  (195, 19500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Quagsire - Tera Blast - TM171
  (195, 19500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Quagsire - Double Kick - Egg
  (195, 19500, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Quagsire - Counter - Egg
  (195, 19500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Quagsire - Recover - Egg
  (195, 19500, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Quagsire - Curse - Egg
  (195, 19500, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Quagsire - Ancient Power - Egg
  (195, 19500, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Quagsire - Stockpile - Egg
  (195, 19500, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Quagsire - Spit Up - Egg
  (195, 19500, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Quagsire - Swallow - Egg
  (195, 19500, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Quagsire - Acid Spray - Egg
  (195, 19500, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Quagsire - After You - Egg
  (195, 19500, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Take Down - Level 1
  (196, 19600, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Double-Edge - Level 1
  (196, 19600, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Espeon - Bite - Level 1
  (196, 19600, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Espeon - Growl - Level 1
  (196, 19600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Espeon - Charm - Level 1
  (196, 19600, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Espeon - Baton Pass - Level 1
  (196, 19600, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Espeon - Helping Hand - Level 1
  (196, 19600, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Espeon - Covet - Level 1
  (196, 19600, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Espeon - Copycat - Level 1
  (196, 19600, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Espeon - Sand Attack - Level 5
  (196, 19600, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 12),
  -- Espeon - Quick Attack - Level 10
  (196, 19600, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 13),
  -- Espeon - Baby-Doll Eyes - Level 15
  (196, 19600, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 14),
  -- Espeon - Swift - Level 20
  (196, 19600, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Espeon - Psybeam - Level 25
  (196, 19600, 60, 23, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Espeon - Morning Sun - Level 30
  (196, 19600, 234, 23, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Espeon - Power Swap - Level 35
  (196, 19600, 384, 23, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Espeon - Psychic - Level 40
  (196, 19600, 94, 23, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Espeon - Psych Up - Level 45
  (196, 19600, 244, 23, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Espeon - Future Sight - Level 50
  (196, 19600, 248, 23, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Espeon - Last Resort - Level 55
  (196, 19600, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 22),
  -- Espeon - Take Down - TM001
  (196, 19600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Espeon - Charm - TM002
  (196, 19600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Espeon - Fake Tears - TM003
  (196, 19600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 25),
  -- Espeon - Mud-Slap - TM005
  (196, 19600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 26),
  -- Espeon - Protect - TM007
  (196, 19600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 27),
  -- Espeon - Psybeam - TM016
  (196, 19600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 28),
  -- Espeon - Confuse Ray - TM017
  (196, 19600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 29),
  -- Espeon - Trailblaze - TM020
  (196, 19600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Espeon - Facade - TM025
  (196, 19600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Espeon - Swift - TM032
  (196, 19600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Espeon - Magical Leaf - TM033
  (196, 19600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 33),
  -- Espeon - Draining Kiss - TM037
  (196, 19600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 34),
  -- Espeon - Stored Power - TM041
  (196, 19600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 35),
  -- Espeon - Endure - TM047
  (196, 19600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Espeon - Sunny Day - TM049
  (196, 19600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Espeon - Rain Dance - TM050
  (196, 19600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Espeon - Psyshock - TM054
  (196, 19600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 39),
  -- Espeon - Dig - TM055
  (196, 19600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 40),
  -- Espeon - Zen Headbutt - TM059
  (196, 19600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 41),
  -- Espeon - Psychic Fangs - TM063
  (196, 19600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 42),
  -- Espeon - Body Slam - TM066
  (196, 19600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Espeon - Sleep Talk - TM070
  (196, 19600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Espeon - Reflect - TM074
  (196, 19600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 45),
  -- Espeon - Light Screen - TM075
  (196, 19600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 46),
  -- Espeon - Dazzling Gleam - TM079
  (196, 19600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 47),
  -- Espeon - Grass Knot - TM081
  (196, 19600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 48),
  -- Espeon - Thunder Wave - TM082
  (196, 19600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 49),
  -- Espeon - Rest - TM085
  (196, 19600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Espeon - Imprison - TM092
  (196, 19600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 51),
  -- Espeon - Skill Swap - TM098
  (196, 19600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 52),
  -- Espeon - Power Gem - TM101
  (196, 19600, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 53),
  -- Espeon - Substitute - TM103
  (196, 19600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Espeon - Trick - TM109
  (196, 19600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 55),
  -- Espeon - Shadow Ball - TM114
  (196, 19600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 56),
  -- Espeon - Hyper Voice - TM117
  (196, 19600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 57),
  -- Espeon - Psychic - TM120
  (196, 19600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 58),
  -- Espeon - Calm Mind - TM129
  (196, 19600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 59),
  -- Espeon - Helping Hand - TM130
  (196, 19600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 60),
  -- Espeon - Baton Pass - TM132
  (196, 19600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 61),
  -- Espeon - Psychic Terrain - TM138
  (196, 19600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 62),
  -- Espeon - Giga Impact - TM152
  (196, 19600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Espeon - Trick Room - TM161
  (196, 19600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 64),
  -- Espeon - Hyper Beam - TM163
  (196, 19600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Espeon - Tera Blast - TM171
  (196, 19600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Espeon - Double Kick - Egg
  (196, 19600, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Espeon - Curse - Egg
  (196, 19600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Espeon - Flail - Egg
  (196, 19600, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Espeon - Mud-Slap - Egg
  (196, 19600, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Espeon - Detect - Egg
  (196, 19600, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Espeon - Wish - Egg
  (196, 19600, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Espeon - Yawn - Egg
  (196, 19600, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Espeon - Tickle - Egg
  (196, 19600, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Espeon - Confusion - Evolution
  (196, 19600, 93, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Take Down - Level 1
  (197, 19700, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Double-Edge - Level 1
  (197, 19700, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Umbreon - Bite - Level 1
  (197, 19700, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Umbreon - Growl - Level 1
  (197, 19700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Umbreon - Swift - Level 1
  (197, 19700, 129, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Umbreon - Charm - Level 1
  (197, 19700, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Umbreon - Baton Pass - Level 1
  (197, 19700, 226, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Umbreon - Helping Hand - Level 1
  (197, 19700, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Umbreon - Covet - Level 1
  (197, 19700, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Umbreon - Copycat - Level 1
  (197, 19700, 383, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Umbreon - Sand Attack - Level 5
  (197, 19700, 28, 23, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Umbreon - Quick Attack - Level 10
  (197, 19700, 98, 23, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Umbreon - Baby-Doll Eyes - Level 15
  (197, 19700, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Umbreon - Confuse Ray - Level 20
  (197, 19700, 109, 23, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Umbreon - Assurance - Level 25
  (197, 19700, 372, 23, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Umbreon - Moonlight - Level 30
  (197, 19700, 236, 23, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Umbreon - Guard Swap - Level 35
  (197, 19700, 385, 23, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Umbreon - Dark Pulse - Level 40
  (197, 19700, 399, 23, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Umbreon - Screech - Level 45
  (197, 19700, 103, 23, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Umbreon - Mean Look - Level 50
  (197, 19700, 212, 23, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Umbreon - Last Resort - Level 55
  (197, 19700, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Umbreon - Take Down - TM001
  (197, 19700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 24),
  -- Umbreon - Charm - TM002
  (197, 19700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 25),
  -- Umbreon - Fake Tears - TM003
  (197, 19700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 26),
  -- Umbreon - Mud-Slap - TM005
  (197, 19700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 27),
  -- Umbreon - Scary Face - TM006
  (197, 19700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 28),
  -- Umbreon - Protect - TM007
  (197, 19700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 29),
  -- Umbreon - Confuse Ray - TM017
  (197, 19700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 30),
  -- Umbreon - Thief - TM018
  (197, 19700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 31),
  -- Umbreon - Trailblaze - TM020
  (197, 19700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 32),
  -- Umbreon - Facade - TM025
  (197, 19700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 33),
  -- Umbreon - Snarl - TM030
  (197, 19700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Umbreon - Swift - TM032
  (197, 19700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 35),
  -- Umbreon - Stored Power - TM041
  (197, 19700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 36),
  -- Umbreon - Endure - TM047
  (197, 19700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Umbreon - Sunny Day - TM049
  (197, 19700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 38),
  -- Umbreon - Rain Dance - TM050
  (197, 19700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 39),
  -- Umbreon - Dig - TM055
  (197, 19700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 40),
  -- Umbreon - Foul Play - TM062
  (197, 19700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 41),
  -- Umbreon - Body Slam - TM066
  (197, 19700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Umbreon - Sleep Talk - TM070
  (197, 19700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Umbreon - Reflect - TM074
  (197, 19700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 44),
  -- Umbreon - Light Screen - TM075
  (197, 19700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Umbreon - Thunder Wave - TM082
  (197, 19700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Umbreon - Rest - TM085
  (197, 19700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Umbreon - Taunt - TM087
  (197, 19700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Umbreon - Dark Pulse - TM094
  (197, 19700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Umbreon - Skill Swap - TM098
  (197, 19700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 50),
  -- Umbreon - Substitute - TM103
  (197, 19700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Umbreon - Crunch - TM108
  (197, 19700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 52),
  -- Umbreon - Shadow Ball - TM114
  (197, 19700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Umbreon - Hyper Voice - TM117
  (197, 19700, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Umbreon - Psychic - TM120
  (197, 19700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Umbreon - Calm Mind - TM129
  (197, 19700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 56),
  -- Umbreon - Helping Hand - TM130
  (197, 19700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Umbreon - Baton Pass - TM132
  (197, 19700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 58),
  -- Umbreon - Giga Impact - TM152
  (197, 19700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Umbreon - Hyper Beam - TM163
  (197, 19700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Umbreon - Tera Blast - TM171
  (197, 19700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Umbreon - Double Kick - Egg
  (197, 19700, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Umbreon - Curse - Egg
  (197, 19700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Umbreon - Flail - Egg
  (197, 19700, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Umbreon - Mud-Slap - Egg
  (197, 19700, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Umbreon - Detect - Egg
  (197, 19700, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Umbreon - Wish - Egg
  (197, 19700, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Umbreon - Yawn - Egg
  (197, 19700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Umbreon - Tickle - Egg
  (197, 19700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Umbreon - Snarl - Evolution
  (197, 19700, 555, 23, NULL, 7, NULL, NULL, NULL, NULL, 70),
  -- Murkrow - Peck - Level 1
  (198, 19800, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Astonish - Level 1
  (198, 19800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Murkrow - Gust - Level 5
  (198, 19800, 16, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Murkrow - Haze - Level 11
  (198, 19800, 114, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Murkrow - Wing Attack - Level 15
  (198, 19800, 17, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Murkrow - Night Shade - Level 21
  (198, 19800, 101, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Murkrow - Assurance - Level 25
  (198, 19800, 372, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Murkrow - Taunt - Level 31
  (198, 19800, 269, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Murkrow - Mean Look - Level 35
  (198, 19800, 212, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Murkrow - Foul Play - Level 40
  (198, 19800, 492, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Murkrow - Sucker Punch - Level 50
  (198, 19800, 389, 23, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Murkrow - Torment - Level 55
  (198, 19800, 259, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Murkrow - Quash - Level 60
  (198, 19800, 511, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Murkrow - Take Down - TM001
  (198, 19800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Murkrow - Mud-Slap - TM005
  (198, 19800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Murkrow - Scary Face - TM006
  (198, 19800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Murkrow - Protect - TM007
  (198, 19800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Murkrow - Acrobatics - TM014
  (198, 19800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Murkrow - Confuse Ray - TM017
  (198, 19800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Murkrow - Thief - TM018
  (198, 19800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Murkrow - Facade - TM025
  (198, 19800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Murkrow - Aerial Ace - TM027
  (198, 19800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Murkrow - Hex - TM029
  (198, 19800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Murkrow - Snarl - TM030
  (198, 19800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Murkrow - Icy Wind - TM034
  (198, 19800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Murkrow - Air Cutter - TM040
  (198, 19800, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 26),
  -- Murkrow - Night Shade - TM042
  (198, 19800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Murkrow - Endure - TM047
  (198, 19800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Murkrow - Sunny Day - TM049
  (198, 19800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Murkrow - Rain Dance - TM050
  (198, 19800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Murkrow - U-turn - TM060
  (198, 19800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Murkrow - Foul Play - TM062
  (198, 19800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Murkrow - Air Slash - TM065
  (198, 19800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Murkrow - Sleep Talk - TM070
  (198, 19800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Murkrow - Thunder Wave - TM082
  (198, 19800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Murkrow - Rest - TM085
  (198, 19800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Murkrow - Taunt - TM087
  (198, 19800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Murkrow - Dark Pulse - TM094
  (198, 19800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 38),
  -- Murkrow - Fly - TM097
  (198, 19800, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 39),
  -- Murkrow - Substitute - TM103
  (198, 19800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Murkrow - Tailwind - TM113
  (198, 19800, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Murkrow - Shadow Ball - TM114
  (198, 19800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Murkrow - Heat Wave - TM118
  (198, 19800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 43),
  -- Murkrow - Psychic - TM120
  (198, 19800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Murkrow - Calm Mind - TM129
  (198, 19800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Murkrow - Nasty Plot - TM140
  (198, 19800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 46),
  -- Murkrow - Giga Impact - TM152
  (198, 19800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Murkrow - Hurricane - TM160
  (198, 19800, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Murkrow - Hyper Beam - TM163
  (198, 19800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Murkrow - Brave Bird - TM164
  (198, 19800, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 50),
  -- Murkrow - Tera Blast - TM171
  (198, 19800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Murkrow - Whirlwind - Egg
  (198, 19800, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Murkrow - Drill Peck - Egg
  (198, 19800, 65, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Murkrow - Screech - Egg
  (198, 19800, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Murkrow - Confuse Ray - Egg
  (198, 19800, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Murkrow - Sky Attack - Egg
  (198, 19800, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Murkrow - Perish Song - Egg
  (198, 19800, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Murkrow - Flatter - Egg
  (198, 19800, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Murkrow - Feather Dance - Egg
  (198, 19800, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Murkrow - Brave Bird - Egg
  (198, 19800, 413, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Growl - Level 1
  (199, 19900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Water Gun - Level 1
  (199, 19900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking - Swagger - Level 1
  (199, 19900, 207, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking - Power Gem - Level 1
  (199, 19900, 408, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowking - Nasty Plot - Level 1
  (199, 19900, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Slowking - Yawn - Level 9
  (199, 19900, 281, 23, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Slowking - Confusion - Level 12
  (199, 19900, 93, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Slowking - Disable - Level 15
  (199, 19900, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Slowking - Water Pulse - Level 18
  (199, 19900, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Slowking - Headbutt - Level 21
  (199, 19900, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Slowking - Amnesia - Level 27
  (199, 19900, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Slowking - Surf - Level 30
  (199, 19900, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Slowking - Slack Off - Level 33
  (199, 19900, 303, 23, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Slowking - Psychic - Level 36
  (199, 19900, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Slowking - Psych Up - Level 39
  (199, 19900, 244, 23, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Slowking - Rain Dance - Level 42
  (199, 19900, 240, 23, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Slowking - Heal Pulse - Level 45
  (199, 19900, 505, 23, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Slowking - Take Down - TM001
  (199, 19900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Slowking - Protect - TM007
  (199, 19900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Slowking - Water Pulse - TM011
  (199, 19900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Slowking - Psybeam - TM016
  (199, 19900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 23),
  -- Slowking - Chilling Water - TM022
  (199, 19900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Slowking - Facade - TM025
  (199, 19900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Slowking - Bulldoze - TM028
  (199, 19900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Slowking - Swift - TM032
  (199, 19900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Slowking - Icy Wind - TM034
  (199, 19900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Slowking - Mud Shot - TM035
  (199, 19900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Slowking - Rock Tomb - TM036
  (199, 19900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Slowking - Stored Power - TM041
  (199, 19900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 31),
  -- Slowking - Fling - TM043
  (199, 19900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Slowking - Avalanche - TM046
  (199, 19900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 33),
  -- Slowking - Endure - TM047
  (199, 19900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Slowking - Sunny Day - TM049
  (199, 19900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Slowking - Rain Dance - TM050
  (199, 19900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Slowking - Snowscape - TM052
  (199, 19900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 37),
  -- Slowking - Psyshock - TM054
  (199, 19900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 38),
  -- Slowking - Dig - TM055
  (199, 19900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Slowking - Brick Break - TM058
  (199, 19900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Slowking - Zen Headbutt - TM059
  (199, 19900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 41),
  -- Slowking - Foul Play - TM062
  (199, 19900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 42),
  -- Slowking - Body Slam - TM066
  (199, 19900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Slowking - Fire Punch - TM067
  (199, 19900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 44),
  -- Slowking - Thunder Punch - TM068
  (199, 19900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 45),
  -- Slowking - Ice Punch - TM069
  (199, 19900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 46),
  -- Slowking - Sleep Talk - TM070
  (199, 19900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 47),
  -- Slowking - Drain Punch - TM073
  (199, 19900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 48),
  -- Slowking - Reflect - TM074
  (199, 19900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 49),
  -- Slowking - Light Screen - TM075
  (199, 19900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 50),
  -- Slowking - Waterfall - TM077
  (199, 19900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 51),
  -- Slowking - Metronome - TM080
  (199, 19900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 52),
  -- Slowking - Grass Knot - TM081
  (199, 19900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 53),
  -- Slowking - Thunder Wave - TM082
  (199, 19900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 54),
  -- Slowking - Rest - TM085
  (199, 19900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Slowking - Rock Slide - TM086
  (199, 19900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Slowking - Imprison - TM092
  (199, 19900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 57),
  -- Slowking - Skill Swap - TM098
  (199, 19900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 58),
  -- Slowking - Power Gem - TM101
  (199, 19900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 59),
  -- Slowking - Substitute - TM103
  (199, 19900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 60),
  -- Slowking - Iron Defense - TM104
  (199, 19900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 61),
  -- Slowking - Trick - TM109
  (199, 19900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 62),
  -- Slowking - Liquidation - TM110
  (199, 19900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 63),
  -- Slowking - Shadow Ball - TM114
  (199, 19900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 64),
  -- Slowking - Psychic - TM120
  (199, 19900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 65),
  -- Slowking - Surf - TM123
  (199, 19900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 66),
  -- Slowking - Flamethrower - TM125
  (199, 19900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 67),
  -- Slowking - Amnesia - TM128
  (199, 19900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 68),
  -- Slowking - Calm Mind - TM129
  (199, 19900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 69),
  -- Slowking - Helping Hand - TM130
  (199, 19900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 70),
  -- Slowking - Ice Beam - TM135
  (199, 19900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 71),
  -- Slowking - Psychic Terrain - TM138
  (199, 19900, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 72),
  -- Slowking - Nasty Plot - TM140
  (199, 19900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 73),
  -- Slowking - Fire Blast - TM141
  (199, 19900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 74),
  -- Slowking - Hydro Pump - TM142
  (199, 19900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 75),
  -- Slowking - Blizzard - TM143
  (199, 19900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 76),
  -- Slowking - Earthquake - TM149
  (199, 19900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 77),
  -- Slowking - Giga Impact - TM152
  (199, 19900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 78),
  -- Slowking - Focus Blast - TM158
  (199, 19900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 79),
  -- Slowking - Trick Room - TM161
  (199, 19900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 80),
  -- Slowking - Hyper Beam - TM163
  (199, 19900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 81),
  -- Slowking - Tera Blast - TM171
  (199, 19900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 82),
  -- Slowking - Stomp - Egg
  (199, 19900, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Slowking - Belly Drum - Egg
  (199, 19900, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Slowking - Block - Egg
  (199, 19900, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Slowking - Belch - Egg
  (199, 19900, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Slowking - Future Sight - Reminder
  (199, 19900, 248, 23, NULL, 9, NULL, NULL, NULL, NULL, 87),
  -- Slowking - Chilly Reception - Reminder
  (199, 19900, 881, 23, NULL, 9, NULL, NULL, NULL, NULL, 88),
  -- Slowking (Galarian Slowking) - Tackle - Level 1
  (199, 19901, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking (Galarian Slowking) - Growl - Level 1
  (199, 19901, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking (Galarian Slowking) - Acid - Level 1
  (199, 19901, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking (Galarian Slowking) - Curse - Level 1
  (199, 19901, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking (Galarian Slowking) - Swagger - Level 1
  (199, 19901, 207, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking (Galarian Slowking) - Power Gem - Level 1
  (199, 19901, 408, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Slowking (Galarian Slowking) - Nasty Plot - Level 1
  (199, 19901, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Slowking (Galarian Slowking) - Yawn - Level 9
  (199, 19901, 281, 23, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Slowking (Galarian Slowking) - Confusion - Level 12
  (199, 19901, 93, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Slowking (Galarian Slowking) - Disable - Level 15
  (199, 19901, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Slowking (Galarian Slowking) - Water Pulse - Level 18
  (199, 19901, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Slowking (Galarian Slowking) - Headbutt - Level 21
  (199, 19901, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Slowking (Galarian Slowking) - Zen Headbutt - Level 24
  (199, 19901, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Slowking (Galarian Slowking) - Amnesia - Level 27
  (199, 19901, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Slowking (Galarian Slowking) - Surf - Level 30
  (199, 19901, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Slowking (Galarian Slowking) - Slack Off - Level 33
  (199, 19901, 303, 23, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Slowking (Galarian Slowking) - Psychic - Level 36
  (199, 19901, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Slowking (Galarian Slowking) - Psych Up - Level 39
  (199, 19901, 244, 23, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Slowking (Galarian Slowking) - Rain Dance - Level 42
  (199, 19901, 240, 23, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Slowking (Galarian Slowking) - Heal Pulse - Level 45
  (199, 19901, 505, 23, NULL, 1, 45, NULL, NULL, NULL, 20),
  -- Slowking (Galarian Slowking) - Take Down - TM001
  (199, 19901, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Slowking (Galarian Slowking) - Scary Face - TM006
  (199, 19901, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Slowking (Galarian Slowking) - Protect - TM007
  (199, 19901, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Slowking (Galarian Slowking) - Water Pulse - TM011
  (199, 19901, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Slowking (Galarian Slowking) - Acid Spray - TM013
  (199, 19901, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 25),
  -- Slowking (Galarian Slowking) - Psybeam - TM016
  (199, 19901, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 26),
  -- Slowking (Galarian Slowking) - Chilling Water - TM022
  (199, 19901, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 27),
  -- Slowking (Galarian Slowking) - Facade - TM025
  (199, 19901, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Slowking (Galarian Slowking) - Bulldoze - TM028
  (199, 19901, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 29),
  -- Slowking (Galarian Slowking) - Hex - TM029
  (199, 19901, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 30),
  -- Slowking (Galarian Slowking) - Snarl - TM030
  (199, 19901, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 31),
  -- Slowking (Galarian Slowking) - Swift - TM032
  (199, 19901, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Slowking (Galarian Slowking) - Icy Wind - TM034
  (199, 19901, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 33),
  -- Slowking (Galarian Slowking) - Mud Shot - TM035
  (199, 19901, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 34),
  -- Slowking (Galarian Slowking) - Low Sweep - TM039
  (199, 19901, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 35),
  -- Slowking (Galarian Slowking) - Stored Power - TM041
  (199, 19901, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 36),
  -- Slowking (Galarian Slowking) - Fling - TM043
  (199, 19901, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 37),
  -- Slowking (Galarian Slowking) - Venoshock - TM045
  (199, 19901, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 38),
  -- Slowking (Galarian Slowking) - Avalanche - TM046
  (199, 19901, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 39),
  -- Slowking (Galarian Slowking) - Endure - TM047
  (199, 19901, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 40),
  -- Slowking (Galarian Slowking) - Sunny Day - TM049
  (199, 19901, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 41),
  -- Slowking (Galarian Slowking) - Rain Dance - TM050
  (199, 19901, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 42),
  -- Slowking (Galarian Slowking) - Snowscape - TM052
  (199, 19901, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 43),
  -- Slowking (Galarian Slowking) - Psyshock - TM054
  (199, 19901, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 44),
  -- Slowking (Galarian Slowking) - Dig - TM055
  (199, 19901, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 45),
  -- Slowking (Galarian Slowking) - Brick Break - TM058
  (199, 19901, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 46),
  -- Slowking (Galarian Slowking) - Zen Headbutt - TM059
  (199, 19901, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 47),
  -- Slowking (Galarian Slowking) - Foul Play - TM062
  (199, 19901, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 48),
  -- Slowking (Galarian Slowking) - Body Slam - TM066
  (199, 19901, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 49),
  -- Slowking (Galarian Slowking) - Fire Punch - TM067
  (199, 19901, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 50),
  -- Slowking (Galarian Slowking) - Thunder Punch - TM068
  (199, 19901, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 51),
  -- Slowking (Galarian Slowking) - Sleep Talk - TM070
  (199, 19901, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 52),
  -- Slowking (Galarian Slowking) - Drain Punch - TM073
  (199, 19901, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 53),
  -- Slowking (Galarian Slowking) - Light Screen - TM075
  (199, 19901, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 54),
  -- Slowking (Galarian Slowking) - Waterfall - TM077
  (199, 19901, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 55),
  -- Slowking (Galarian Slowking) - Metronome - TM080
  (199, 19901, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 56),
  -- Slowking (Galarian Slowking) - Grass Knot - TM081
  (199, 19901, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 57),
  -- Slowking (Galarian Slowking) - Thunder Wave - TM082
  (199, 19901, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 58),
  -- Slowking (Galarian Slowking) - Poison Jab - TM083
  (199, 19901, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 59),
  -- Slowking (Galarian Slowking) - Stomping Tantrum - TM084
  (199, 19901, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 60),
  -- Slowking (Galarian Slowking) - Rest - TM085
  (199, 19901, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 61),
  -- Slowking (Galarian Slowking) - Taunt - TM087
  (199, 19901, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 62),
  -- Slowking (Galarian Slowking) - Toxic Spikes - TM091
  (199, 19901, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 63),
  -- Slowking (Galarian Slowking) - Imprison - TM092
  (199, 19901, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 64),
  -- Slowking (Galarian Slowking) - Skill Swap - TM098
  (199, 19901, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 65),
  -- Slowking (Galarian Slowking) - Power Gem - TM101
  (199, 19901, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 66),
  -- Slowking (Galarian Slowking) - Gunk Shot - TM102
  (199, 19901, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 67),
  -- Slowking (Galarian Slowking) - Substitute - TM103
  (199, 19901, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 68),
  -- Slowking (Galarian Slowking) - Iron Defense - TM104
  (199, 19901, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 69),
  -- Slowking (Galarian Slowking) - Trick - TM109
  (199, 19901, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 70),
  -- Slowking (Galarian Slowking) - Liquidation - TM110
  (199, 19901, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 71),
  -- Slowking (Galarian Slowking) - Shadow Ball - TM114
  (199, 19901, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 72),
  -- Slowking (Galarian Slowking) - Psychic - TM120
  (199, 19901, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 73),
  -- Slowking (Galarian Slowking) - Surf - TM123
  (199, 19901, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 74),
  -- Slowking (Galarian Slowking) - Flamethrower - TM125
  (199, 19901, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 75),
  -- Slowking (Galarian Slowking) - Amnesia - TM128
  (199, 19901, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 76),
  -- Slowking (Galarian Slowking) - Calm Mind - TM129
  (199, 19901, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 77),
  -- Slowking (Galarian Slowking) - Helping Hand - TM130
  (199, 19901, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 78),
  -- Slowking (Galarian Slowking) - Ice Beam - TM135
  (199, 19901, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 79),
  -- Slowking (Galarian Slowking) - Psychic Terrain - TM138
  (199, 19901, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 80),
  -- Slowking (Galarian Slowking) - Nasty Plot - TM140
  (199, 19901, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 81),
  -- Slowking (Galarian Slowking) - Fire Blast - TM141
  (199, 19901, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 82),
  -- Slowking (Galarian Slowking) - Hydro Pump - TM142
  (199, 19901, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 83),
  -- Slowking (Galarian Slowking) - Blizzard - TM143
  (199, 19901, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 84),
  -- Slowking (Galarian Slowking) - Sludge Bomb - TM148
  (199, 19901, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 85),
  -- Slowking (Galarian Slowking) - Earthquake - TM149
  (199, 19901, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 86),
  -- Slowking (Galarian Slowking) - Giga Impact - TM152
  (199, 19901, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 87),
  -- Slowking (Galarian Slowking) - Focus Blast - TM158
  (199, 19901, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 88),
  -- Slowking (Galarian Slowking) - Trick Room - TM161
  (199, 19901, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 89),
  -- Slowking (Galarian Slowking) - Hyper Beam - TM163
  (199, 19901, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 90),
  -- Slowking (Galarian Slowking) - Tera Blast - TM171
  (199, 19901, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 91),
  -- Slowking (Galarian Slowking) - Stomp - Egg
  (199, 19901, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Slowking (Galarian Slowking) - Belly Drum - Egg
  (199, 19901, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Slowking (Galarian Slowking) - Block - Egg
  (199, 19901, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Slowking (Galarian Slowking) - Belch - Egg
  (199, 19901, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Slowking (Galarian Slowking) - Eerie Spell - Evolution
  (199, 19901, 826, 23, NULL, 7, NULL, NULL, NULL, NULL, 96),
  -- Slowking (Galarian Slowking) - Toxic - Reminder
  (199, 19901, 92, 23, NULL, 9, NULL, NULL, NULL, NULL, 97),
  -- Slowking (Galarian Slowking) - Future Sight - Reminder
  (199, 19901, 248, 23, NULL, 9, NULL, NULL, NULL, NULL, 98),
  -- Slowking (Galarian Slowking) - Chilly Reception - Reminder
  (199, 19901, 881, 23, NULL, 9, NULL, NULL, NULL, NULL, 99),
  -- Misdreavus - Growl - Level 1
  (200, 20000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Confusion - Level 1
  (200, 20000, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Misdreavus - Astonish - Level 10
  (200, 20000, 310, 23, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Misdreavus - Confuse Ray - Level 14
  (200, 20000, 109, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Misdreavus - Mean Look - Level 19
  (200, 20000, 212, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Misdreavus - Hex - Level 23
  (200, 20000, 506, 23, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Misdreavus - Psybeam - Level 28
  (200, 20000, 60, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Misdreavus - Pain Split - Level 32
  (200, 20000, 220, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Misdreavus - Payback - Level 37
  (200, 20000, 371, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Misdreavus - Shadow Ball - Level 41
  (200, 20000, 247, 23, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Misdreavus - Perish Song - Level 46
  (200, 20000, 195, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Misdreavus - Power Gem - Level 50
  (200, 20000, 408, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Misdreavus - Charm - TM002
  (200, 20000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 13),
  -- Misdreavus - Fake Tears - TM003
  (200, 20000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 14),
  -- Misdreavus - Scary Face - TM006
  (200, 20000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Misdreavus - Protect - TM007
  (200, 20000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Misdreavus - Psybeam - TM016
  (200, 20000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 17),
  -- Misdreavus - Confuse Ray - TM017
  (200, 20000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Misdreavus - Thief - TM018
  (200, 20000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Misdreavus - Charge Beam - TM023
  (200, 20000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Misdreavus - Facade - TM025
  (200, 20000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Misdreavus - Hex - TM029
  (200, 20000, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Misdreavus - Swift - TM032
  (200, 20000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Misdreavus - Magical Leaf - TM033
  (200, 20000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 24),
  -- Misdreavus - Icy Wind - TM034
  (200, 20000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Misdreavus - Draining Kiss - TM037
  (200, 20000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 26),
  -- Misdreavus - Stored Power - TM041
  (200, 20000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Misdreavus - Night Shade - TM042
  (200, 20000, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 28),
  -- Misdreavus - Endure - TM047
  (200, 20000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Misdreavus - Sunny Day - TM049
  (200, 20000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Misdreavus - Rain Dance - TM050
  (200, 20000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Misdreavus - Snowscape - TM052
  (200, 20000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Misdreavus - Psyshock - TM054
  (200, 20000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Misdreavus - Foul Play - TM062
  (200, 20000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Misdreavus - Sleep Talk - TM070
  (200, 20000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Misdreavus - Dazzling Gleam - TM079
  (200, 20000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 36),
  -- Misdreavus - Grass Knot - TM081
  (200, 20000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Misdreavus - Thunder Wave - TM082
  (200, 20000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 38),
  -- Misdreavus - Rest - TM085
  (200, 20000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Misdreavus - Taunt - TM087
  (200, 20000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Misdreavus - Imprison - TM092
  (200, 20000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Misdreavus - Dark Pulse - TM094
  (200, 20000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Misdreavus - Skill Swap - TM098
  (200, 20000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Misdreavus - Power Gem - TM101
  (200, 20000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Misdreavus - Substitute - TM103
  (200, 20000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Misdreavus - Will-O-Wisp - TM107
  (200, 20000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 46),
  -- Misdreavus - Trick - TM109
  (200, 20000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 47),
  -- Misdreavus - Shadow Ball - TM114
  (200, 20000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Misdreavus - Hyper Voice - TM117
  (200, 20000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Misdreavus - Energy Ball - TM119
  (200, 20000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 50),
  -- Misdreavus - Psychic - TM120
  (200, 20000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Misdreavus - Thunderbolt - TM126
  (200, 20000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 52),
  -- Misdreavus - Calm Mind - TM129
  (200, 20000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 53),
  -- Misdreavus - Helping Hand - TM130
  (200, 20000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Misdreavus - Nasty Plot - TM140
  (200, 20000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Misdreavus - Phantom Force - TM151
  (200, 20000, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 56),
  -- Misdreavus - Giga Impact - TM152
  (200, 20000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Misdreavus - Trick Room - TM161
  (200, 20000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 58),
  -- Misdreavus - Hyper Beam - TM163
  (200, 20000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Misdreavus - Thunder - TM166
  (200, 20000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Misdreavus - Tera Blast - TM171
  (200, 20000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Misdreavus - Screech - Egg
  (200, 20000, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Misdreavus - Curse - Egg
  (200, 20000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Misdreavus - Spite - Egg
  (200, 20000, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Misdreavus - Destiny Bond - Egg
  (200, 20000, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Misdreavus - Memento - Egg
  (200, 20000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Misdreavus - Imprison - Egg
  (200, 20000, 286, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Misdreavus - Sucker Punch - Egg
  (200, 20000, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Misdreavus - Shadow Sneak - Egg
  (200, 20000, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Misdreavus - Wonder Room - Egg
  (200, 20000, 472, 23, NULL, 5, NULL, NULL, NULL, NULL, 70);
