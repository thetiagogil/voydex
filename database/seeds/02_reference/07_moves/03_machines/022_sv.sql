-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of TMs in Pokémon Scarlet and Violet.
-- Cross-check: Serebii Scarlet / Violet TM lists and PokemonDB Scarlet / Violet TM list.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Scarlet / Violet
-- Rows: 171
-- Scope: Scarlet / Violet TM catalog used by machine learnset rows for base Scarlet / Violet.
-- Scarlet / Violet has 171 TMs in this scope and no HMs or TRs.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM001 Take Down
  (23002001, 36, 23, NULL, 2, 'TM001', 1),
  -- TM002 Charm
  (23002002, 204, 23, NULL, 2, 'TM002', 2),
  -- TM003 Fake Tears
  (23002003, 313, 23, NULL, 2, 'TM003', 3),
  -- TM004 Agility
  (23002004, 97, 23, NULL, 2, 'TM004', 4),
  -- TM005 Mud-Slap
  (23002005, 189, 23, NULL, 2, 'TM005', 5),
  -- TM006 Scary Face
  (23002006, 184, 23, NULL, 2, 'TM006', 6),
  -- TM007 Protect
  (23002007, 182, 23, NULL, 2, 'TM007', 7),
  -- TM008 Fire Fang
  (23002008, 424, 23, NULL, 2, 'TM008', 8),
  -- TM009 Thunder Fang
  (23002009, 422, 23, NULL, 2, 'TM009', 9),
  -- TM010 Ice Fang
  (23002010, 423, 23, NULL, 2, 'TM010', 10),
  -- TM011 Water Pulse
  (23002011, 352, 23, NULL, 2, 'TM011', 11),
  -- TM012 Low Kick
  (23002012, 67, 23, NULL, 2, 'TM012', 12),
  -- TM013 Acid Spray
  (23002013, 491, 23, NULL, 2, 'TM013', 13),
  -- TM014 Acrobatics
  (23002014, 512, 23, NULL, 2, 'TM014', 14),
  -- TM015 Struggle Bug
  (23002015, 522, 23, NULL, 2, 'TM015', 15),
  -- TM016 Psybeam
  (23002016, 60, 23, NULL, 2, 'TM016', 16),
  -- TM017 Confuse Ray
  (23002017, 109, 23, NULL, 2, 'TM017', 17),
  -- TM018 Thief
  (23002018, 168, 23, NULL, 2, 'TM018', 18),
  -- TM019 Disarming Voice
  (23002019, 574, 23, NULL, 2, 'TM019', 19),
  -- TM020 Trailblaze
  (23002020, 885, 23, NULL, 2, 'TM020', 20),
  -- TM021 Pounce
  (23002021, 884, 23, NULL, 2, 'TM021', 21),
  -- TM022 Chilling Water
  (23002022, 886, 23, NULL, 2, 'TM022', 22),
  -- TM023 Charge Beam
  (23002023, 451, 23, NULL, 2, 'TM023', 23),
  -- TM024 Fire Spin
  (23002024, 83, 23, NULL, 2, 'TM024', 24),
  -- TM025 Facade
  (23002025, 263, 23, NULL, 2, 'TM025', 25),
  -- TM026 Poison Tail
  (23002026, 342, 23, NULL, 2, 'TM026', 26),
  -- TM027 Aerial Ace
  (23002027, 332, 23, NULL, 2, 'TM027', 27),
  -- TM028 Bulldoze
  (23002028, 523, 23, NULL, 2, 'TM028', 28),
  -- TM029 Hex
  (23002029, 506, 23, NULL, 2, 'TM029', 29),
  -- TM030 Snarl
  (23002030, 555, 23, NULL, 2, 'TM030', 30),
  -- TM031 Metal Claw
  (23002031, 232, 23, NULL, 2, 'TM031', 31),
  -- TM032 Swift
  (23002032, 129, 23, NULL, 2, 'TM032', 32),
  -- TM033 Magical Leaf
  (23002033, 345, 23, NULL, 2, 'TM033', 33),
  -- TM034 Icy Wind
  (23002034, 196, 23, NULL, 2, 'TM034', 34),
  -- TM035 Mud Shot
  (23002035, 341, 23, NULL, 2, 'TM035', 35),
  -- TM036 Rock Tomb
  (23002036, 317, 23, NULL, 2, 'TM036', 36),
  -- TM037 Draining Kiss
  (23002037, 577, 23, NULL, 2, 'TM037', 37),
  -- TM038 Flame Charge
  (23002038, 488, 23, NULL, 2, 'TM038', 38),
  -- TM039 Low Sweep
  (23002039, 490, 23, NULL, 2, 'TM039', 39),
  -- TM040 Air Cutter
  (23002040, 314, 23, NULL, 2, 'TM040', 40),
  -- TM041 Stored Power
  (23002041, 500, 23, NULL, 2, 'TM041', 41),
  -- TM042 Night Shade
  (23002042, 101, 23, NULL, 2, 'TM042', 42),
  -- TM043 Fling
  (23002043, 374, 23, NULL, 2, 'TM043', 43),
  -- TM044 Dragon Tail
  (23002044, 525, 23, NULL, 2, 'TM044', 44),
  -- TM045 Venoshock
  (23002045, 474, 23, NULL, 2, 'TM045', 45),
  -- TM046 Avalanche
  (23002046, 419, 23, NULL, 2, 'TM046', 46),
  -- TM047 Endure
  (23002047, 203, 23, NULL, 2, 'TM047', 47),
  -- TM048 Volt Switch
  (23002048, 521, 23, NULL, 2, 'TM048', 48),
  -- TM049 Sunny Day
  (23002049, 241, 23, NULL, 2, 'TM049', 49),
  -- TM050 Rain Dance
  (23002050, 240, 23, NULL, 2, 'TM050', 50),
  -- TM051 Sandstorm
  (23002051, 201, 23, NULL, 2, 'TM051', 51),
  -- TM052 Snowscape
  (23002052, 883, 23, NULL, 2, 'TM052', 52),
  -- TM053 Smart Strike
  (23002053, 684, 23, NULL, 2, 'TM053', 53),
  -- TM054 Psyshock
  (23002054, 473, 23, NULL, 2, 'TM054', 54),
  -- TM055 Dig
  (23002055, 91, 23, NULL, 2, 'TM055', 55),
  -- TM056 Bullet Seed
  (23002056, 331, 23, NULL, 2, 'TM056', 56),
  -- TM057 False Swipe
  (23002057, 206, 23, NULL, 2, 'TM057', 57),
  -- TM058 Brick Break
  (23002058, 280, 23, NULL, 2, 'TM058', 58),
  -- TM059 Zen Headbutt
  (23002059, 428, 23, NULL, 2, 'TM059', 59),
  -- TM060 U-turn
  (23002060, 369, 23, NULL, 2, 'TM060', 60),
  -- TM061 Shadow Claw
  (23002061, 421, 23, NULL, 2, 'TM061', 61),
  -- TM062 Foul Play
  (23002062, 492, 23, NULL, 2, 'TM062', 62),
  -- TM063 Psychic Fangs
  (23002063, 706, 23, NULL, 2, 'TM063', 63),
  -- TM064 Bulk Up
  (23002064, 339, 23, NULL, 2, 'TM064', 64),
  -- TM065 Air Slash
  (23002065, 403, 23, NULL, 2, 'TM065', 65),
  -- TM066 Body Slam
  (23002066, 34, 23, NULL, 2, 'TM066', 66),
  -- TM067 Fire Punch
  (23002067, 7, 23, NULL, 2, 'TM067', 67),
  -- TM068 Thunder Punch
  (23002068, 9, 23, NULL, 2, 'TM068', 68),
  -- TM069 Ice Punch
  (23002069, 8, 23, NULL, 2, 'TM069', 69),
  -- TM070 Sleep Talk
  (23002070, 214, 23, NULL, 2, 'TM070', 70),
  -- TM071 Seed Bomb
  (23002071, 402, 23, NULL, 2, 'TM071', 71),
  -- TM072 Electro Ball
  (23002072, 486, 23, NULL, 2, 'TM072', 72),
  -- TM073 Drain Punch
  (23002073, 409, 23, NULL, 2, 'TM073', 73),
  -- TM074 Reflect
  (23002074, 115, 23, NULL, 2, 'TM074', 74),
  -- TM075 Light Screen
  (23002075, 113, 23, NULL, 2, 'TM075', 75),
  -- TM076 Rock Blast
  (23002076, 350, 23, NULL, 2, 'TM076', 76),
  -- TM077 Waterfall
  (23002077, 127, 23, NULL, 2, 'TM077', 77),
  -- TM078 Dragon Claw
  (23002078, 337, 23, NULL, 2, 'TM078', 78),
  -- TM079 Dazzling Gleam
  (23002079, 605, 23, NULL, 2, 'TM079', 79),
  -- TM080 Metronome
  (23002080, 118, 23, NULL, 2, 'TM080', 80),
  -- TM081 Grass Knot
  (23002081, 447, 23, NULL, 2, 'TM081', 81),
  -- TM082 Thunder Wave
  (23002082, 86, 23, NULL, 2, 'TM082', 82),
  -- TM083 Poison Jab
  (23002083, 398, 23, NULL, 2, 'TM083', 83),
  -- TM084 Stomping Tantrum
  (23002084, 707, 23, NULL, 2, 'TM084', 84),
  -- TM085 Rest
  (23002085, 156, 23, NULL, 2, 'TM085', 85),
  -- TM086 Rock Slide
  (23002086, 157, 23, NULL, 2, 'TM086', 86),
  -- TM087 Taunt
  (23002087, 269, 23, NULL, 2, 'TM087', 87),
  -- TM088 Swords Dance
  (23002088, 14, 23, NULL, 2, 'TM088', 88),
  -- TM089 Body Press
  (23002089, 776, 23, NULL, 2, 'TM089', 89),
  -- TM090 Spikes
  (23002090, 191, 23, NULL, 2, 'TM090', 90),
  -- TM091 Toxic Spikes
  (23002091, 390, 23, NULL, 2, 'TM091', 91),
  -- TM092 Imprison
  (23002092, 286, 23, NULL, 2, 'TM092', 92),
  -- TM093 Flash Cannon
  (23002093, 430, 23, NULL, 2, 'TM093', 93),
  -- TM094 Dark Pulse
  (23002094, 399, 23, NULL, 2, 'TM094', 94),
  -- TM095 Leech Life
  (23002095, 141, 23, NULL, 2, 'TM095', 95),
  -- TM096 Eerie Impulse
  (23002096, 598, 23, NULL, 2, 'TM096', 96),
  -- TM097 Fly
  (23002097, 19, 23, NULL, 2, 'TM097', 97),
  -- TM098 Skill Swap
  (23002098, 285, 23, NULL, 2, 'TM098', 98),
  -- TM099 Iron Head
  (23002099, 442, 23, NULL, 2, 'TM099', 99),
  -- TM100 Dragon Dance
  (23002100, 349, 23, NULL, 2, 'TM100', 100),
  -- TM101 Power Gem
  (23002101, 408, 23, NULL, 2, 'TM101', 101),
  -- TM102 Gunk Shot
  (23002102, 441, 23, NULL, 2, 'TM102', 102),
  -- TM103 Substitute
  (23002103, 164, 23, NULL, 2, 'TM103', 103),
  -- TM104 Iron Defense
  (23002104, 334, 23, NULL, 2, 'TM104', 104),
  -- TM105 X-Scissor
  (23002105, 404, 23, NULL, 2, 'TM105', 105),
  -- TM106 Drill Run
  (23002106, 529, 23, NULL, 2, 'TM106', 106),
  -- TM107 Will-O-Wisp
  (23002107, 261, 23, NULL, 2, 'TM107', 107),
  -- TM108 Crunch
  (23002108, 242, 23, NULL, 2, 'TM108', 108),
  -- TM109 Trick
  (23002109, 271, 23, NULL, 2, 'TM109', 109),
  -- TM110 Liquidation
  (23002110, 710, 23, NULL, 2, 'TM110', 110),
  -- TM111 Giga Drain
  (23002111, 202, 23, NULL, 2, 'TM111', 111),
  -- TM112 Aura Sphere
  (23002112, 396, 23, NULL, 2, 'TM112', 112),
  -- TM113 Tailwind
  (23002113, 366, 23, NULL, 2, 'TM113', 113),
  -- TM114 Shadow Ball
  (23002114, 247, 23, NULL, 2, 'TM114', 114),
  -- TM115 Dragon Pulse
  (23002115, 406, 23, NULL, 2, 'TM115', 115),
  -- TM116 Stealth Rock
  (23002116, 446, 23, NULL, 2, 'TM116', 116),
  -- TM117 Hyper Voice
  (23002117, 304, 23, NULL, 2, 'TM117', 117),
  -- TM118 Heat Wave
  (23002118, 257, 23, NULL, 2, 'TM118', 118),
  -- TM119 Energy Ball
  (23002119, 412, 23, NULL, 2, 'TM119', 119),
  -- TM120 Psychic
  (23002120, 94, 23, NULL, 2, 'TM120', 120),
  -- TM121 Heavy Slam
  (23002121, 484, 23, NULL, 2, 'TM121', 121),
  -- TM122 Encore
  (23002122, 227, 23, NULL, 2, 'TM122', 122),
  -- TM123 Surf
  (23002123, 57, 23, NULL, 2, 'TM123', 123),
  -- TM124 Ice Spinner
  (23002124, 861, 23, NULL, 2, 'TM124', 124),
  -- TM125 Flamethrower
  (23002125, 53, 23, NULL, 2, 'TM125', 125),
  -- TM126 Thunderbolt
  (23002126, 85, 23, NULL, 2, 'TM126', 126),
  -- TM127 Play Rough
  (23002127, 583, 23, NULL, 2, 'TM127', 127),
  -- TM128 Amnesia
  (23002128, 133, 23, NULL, 2, 'TM128', 128),
  -- TM129 Calm Mind
  (23002129, 347, 23, NULL, 2, 'TM129', 129),
  -- TM130 Helping Hand
  (23002130, 270, 23, NULL, 2, 'TM130', 130),
  -- TM131 Pollen Puff
  (23002131, 676, 23, NULL, 2, 'TM131', 131),
  -- TM132 Baton Pass
  (23002132, 226, 23, NULL, 2, 'TM132', 132),
  -- TM133 Earth Power
  (23002133, 414, 23, NULL, 2, 'TM133', 133),
  -- TM134 Reversal
  (23002134, 179, 23, NULL, 2, 'TM134', 134),
  -- TM135 Ice Beam
  (23002135, 58, 23, NULL, 2, 'TM135', 135),
  -- TM136 Electric Terrain
  (23002136, 604, 23, NULL, 2, 'TM136', 136),
  -- TM137 Grassy Terrain
  (23002137, 580, 23, NULL, 2, 'TM137', 137),
  -- TM138 Psychic Terrain
  (23002138, 678, 23, NULL, 2, 'TM138', 138),
  -- TM139 Misty Terrain
  (23002139, 581, 23, NULL, 2, 'TM139', 139),
  -- TM140 Nasty Plot
  (23002140, 417, 23, NULL, 2, 'TM140', 140),
  -- TM141 Fire Blast
  (23002141, 126, 23, NULL, 2, 'TM141', 141),
  -- TM142 Hydro Pump
  (23002142, 56, 23, NULL, 2, 'TM142', 142),
  -- TM143 Blizzard
  (23002143, 59, 23, NULL, 2, 'TM143', 143),
  -- TM144 Fire Pledge
  (23002144, 519, 23, NULL, 2, 'TM144', 144),
  -- TM145 Water Pledge
  (23002145, 518, 23, NULL, 2, 'TM145', 145),
  -- TM146 Grass Pledge
  (23002146, 520, 23, NULL, 2, 'TM146', 146),
  -- TM147 Wild Charge
  (23002147, 528, 23, NULL, 2, 'TM147', 147),
  -- TM148 Sludge Bomb
  (23002148, 188, 23, NULL, 2, 'TM148', 148),
  -- TM149 Earthquake
  (23002149, 89, 23, NULL, 2, 'TM149', 149),
  -- TM150 Stone Edge
  (23002150, 444, 23, NULL, 2, 'TM150', 150),
  -- TM151 Phantom Force
  (23002151, 566, 23, NULL, 2, 'TM151', 151),
  -- TM152 Giga Impact
  (23002152, 416, 23, NULL, 2, 'TM152', 152),
  -- TM153 Blast Burn
  (23002153, 307, 23, NULL, 2, 'TM153', 153),
  -- TM154 Hydro Cannon
  (23002154, 308, 23, NULL, 2, 'TM154', 154),
  -- TM155 Frenzy Plant
  (23002155, 338, 23, NULL, 2, 'TM155', 155),
  -- TM156 Outrage
  (23002156, 200, 23, NULL, 2, 'TM156', 156),
  -- TM157 Overheat
  (23002157, 315, 23, NULL, 2, 'TM157', 157),
  -- TM158 Focus Blast
  (23002158, 411, 23, NULL, 2, 'TM158', 158),
  -- TM159 Leaf Storm
  (23002159, 437, 23, NULL, 2, 'TM159', 159),
  -- TM160 Hurricane
  (23002160, 542, 23, NULL, 2, 'TM160', 160),
  -- TM161 Trick Room
  (23002161, 433, 23, NULL, 2, 'TM161', 161),
  -- TM162 Bug Buzz
  (23002162, 405, 23, NULL, 2, 'TM162', 162),
  -- TM163 Hyper Beam
  (23002163, 63, 23, NULL, 2, 'TM163', 163),
  -- TM164 Brave Bird
  (23002164, 413, 23, NULL, 2, 'TM164', 164),
  -- TM165 Flare Blitz
  (23002165, 394, 23, NULL, 2, 'TM165', 165),
  -- TM166 Thunder
  (23002166, 87, 23, NULL, 2, 'TM166', 166),
  -- TM167 Close Combat
  (23002167, 370, 23, NULL, 2, 'TM167', 167),
  -- TM168 Solar Beam
  (23002168, 76, 23, NULL, 2, 'TM168', 168),
  -- TM169 Draco Meteor
  (23002169, 434, 23, NULL, 2, 'TM169', 169),
  -- TM170 Steel Beam
  (23002170, 796, 23, NULL, 2, 'TM170', 170),
  -- TM171 Tera Blast
  (23002171, 851, 23, NULL, 2, 'TM171', 171);
