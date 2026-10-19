-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of TMs, Generation IX Pokémon Legends: Z-A table.
-- Cross-check: Bulbapedia move pages and PokemonDB move pages where available.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Pokémon Legends: Z-A
-- Rows: 160
-- Scope: Pokémon Legends: Z-A TM catalog used by machine learnset rows.
-- Pokémon Legends: Z-A has 160 TMs in this scope and no HMs or TRs.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM001 Headbutt
  (26002001, 29, 26, NULL, 2, 'TM001', 1),
  -- TM002 Dragon Claw
  (26002002, 337, 26, NULL, 2, 'TM002', 2),
  -- TM003 Psyshock
  (26002003, 473, 26, NULL, 2, 'TM003', 3),
  -- TM004 Rock Smash
  (26002004, 249, 26, NULL, 2, 'TM004', 4),
  -- TM005 Roar
  (26002005, 46, 26, NULL, 2, 'TM005', 5),
  -- TM006 Calm Mind
  (26002006, 347, 26, NULL, 2, 'TM006', 6),
  -- TM007 Toxic
  (26002007, 92, 26, NULL, 2, 'TM007', 7),
  -- TM008 Thunder Wave
  (26002008, 86, 26, NULL, 2, 'TM008', 8),
  -- TM009 Flip Turn
  (26002009, 812, 26, NULL, 2, 'TM009', 9),
  -- TM010 Brick Break
  (26002010, 280, 26, NULL, 2, 'TM010', 10),
  -- TM011 Bulk Up
  (26002011, 339, 26, NULL, 2, 'TM011', 11),
  -- TM012 Rock Slide
  (26002012, 157, 26, NULL, 2, 'TM012', 12),
  -- TM013 Ice Beam
  (26002013, 58, 26, NULL, 2, 'TM013', 13),
  -- TM014 Fire Fang
  (26002014, 424, 26, NULL, 2, 'TM014', 14),
  -- TM015 Ice Fang
  (26002015, 423, 26, NULL, 2, 'TM015', 15),
  -- TM016 Light Screen
  (26002016, 113, 26, NULL, 2, 'TM016', 16),
  -- TM017 Protect
  (26002017, 182, 26, NULL, 2, 'TM017', 17),
  -- TM018 Power-Up Punch
  (26002018, 612, 26, NULL, 2, 'TM018', 18),
  -- TM019 Power Gem
  (26002019, 408, 26, NULL, 2, 'TM019', 19),
  -- TM020 Play Rough
  (26002020, 583, 26, NULL, 2, 'TM020', 20),
  -- TM021 Thunder Fang
  (26002021, 422, 26, NULL, 2, 'TM021', 21),
  -- TM022 Aerial Ace
  (26002022, 332, 26, NULL, 2, 'TM022', 22),
  -- TM023 Thunder Punch
  (26002023, 9, 26, NULL, 2, 'TM023', 23),
  -- TM024 Ice Punch
  (26002024, 8, 26, NULL, 2, 'TM024', 24),
  -- TM025 Crunch
  (26002025, 242, 26, NULL, 2, 'TM025', 25),
  -- TM026 Energy Ball
  (26002026, 412, 26, NULL, 2, 'TM026', 26),
  -- TM027 Swift
  (26002027, 129, 26, NULL, 2, 'TM027', 27),
  -- TM028 Dig
  (26002028, 91, 26, NULL, 2, 'TM028', 28),
  -- TM029 Fire Punch
  (26002029, 7, 26, NULL, 2, 'TM029', 29),
  -- TM030 Swords Dance
  (26002030, 14, 26, NULL, 2, 'TM030', 30),
  -- TM031 Reflect
  (26002031, 115, 26, NULL, 2, 'TM031', 31),
  -- TM032 Double Team
  (26002032, 104, 26, NULL, 2, 'TM032', 32),
  -- TM033 Body Slam
  (26002033, 34, 26, NULL, 2, 'TM033', 33),
  -- TM034 Night Slash
  (26002034, 400, 26, NULL, 2, 'TM034', 34),
  -- TM035 Endure
  (26002035, 203, 26, NULL, 2, 'TM035', 35),
  -- TM036 Rock Tomb
  (26002036, 317, 26, NULL, 2, 'TM036', 36),
  -- TM037 Stealth Rock
  (26002037, 446, 26, NULL, 2, 'TM037', 37),
  -- TM038 Fire Blast
  (26002038, 126, 26, NULL, 2, 'TM038', 38),
  -- TM039 Discharge
  (26002039, 435, 26, NULL, 2, 'TM039', 39),
  -- TM040 Bullet Seed
  (26002040, 331, 26, NULL, 2, 'TM040', 40),
  -- TM041 Water Pulse
  (26002041, 352, 26, NULL, 2, 'TM041', 41),
  -- TM042 Giga Drain
  (26002042, 202, 26, NULL, 2, 'TM042', 42),
  -- TM043 Fly
  (26002043, 19, 26, NULL, 2, 'TM043', 43),
  -- TM044 Hyper Beam
  (26002044, 63, 26, NULL, 2, 'TM044', 44),
  -- TM045 Knock Off
  (26002045, 282, 26, NULL, 2, 'TM045', 45),
  -- TM046 Mud Shot
  (26002046, 341, 26, NULL, 2, 'TM046', 46),
  -- TM047 Agility
  (26002047, 97, 26, NULL, 2, 'TM047', 47),
  -- TM048 Self-Destruct
  (26002048, 120, 26, NULL, 2, 'TM048', 48),
  -- TM049 Icy Wind
  (26002049, 196, 26, NULL, 2, 'TM049', 49),
  -- TM050 Overheat
  (26002050, 315, 26, NULL, 2, 'TM050', 50),
  -- TM051 Safeguard
  (26002051, 219, 26, NULL, 2, 'TM051', 51),
  -- TM052 Earth Power
  (26002052, 414, 26, NULL, 2, 'TM052', 52),
  -- TM053 Sludge Bomb
  (26002053, 188, 26, NULL, 2, 'TM053', 53),
  -- TM054 Draco Meteor
  (26002054, 434, 26, NULL, 2, 'TM054', 54),
  -- TM055 Giga Impact
  (26002055, 416, 26, NULL, 2, 'TM055', 55),
  -- TM056 Double-Edge
  (26002056, 38, 26, NULL, 2, 'TM056', 56),
  -- TM057 Will-O-Wisp
  (26002057, 261, 26, NULL, 2, 'TM057', 57),
  -- TM058 Iron Head
  (26002058, 442, 26, NULL, 2, 'TM058', 58),
  -- TM059 Zen Headbutt
  (26002059, 428, 26, NULL, 2, 'TM059', 59),
  -- TM060 Future Sight
  (26002060, 248, 26, NULL, 2, 'TM060', 60),
  -- TM061 Shadow Claw
  (26002061, 421, 26, NULL, 2, 'TM061', 61),
  -- TM062 Flamethrower
  (26002062, 53, 26, NULL, 2, 'TM062', 62),
  -- TM063 Psychic
  (26002063, 94, 26, NULL, 2, 'TM063', 63),
  -- TM064 Solar Beam
  (26002064, 76, 26, NULL, 2, 'TM064', 64),
  -- TM065 Stone Edge
  (26002065, 444, 26, NULL, 2, 'TM065', 65),
  -- TM066 Volt Switch
  (26002066, 521, 26, NULL, 2, 'TM066', 66),
  -- TM067 Thunderbolt
  (26002067, 85, 26, NULL, 2, 'TM067', 67),
  -- TM068 Heat Wave
  (26002068, 257, 26, NULL, 2, 'TM068', 68),
  -- TM069 Earthquake
  (26002069, 89, 26, NULL, 2, 'TM069', 69),
  -- TM070 Whirlpool
  (26002070, 250, 26, NULL, 2, 'TM070', 70),
  -- TM071 Hyper Voice
  (26002071, 304, 26, NULL, 2, 'TM071', 71),
  -- TM072 Fire Spin
  (26002072, 83, 26, NULL, 2, 'TM072', 72),
  -- TM073 Surf
  (26002073, 57, 26, NULL, 2, 'TM073', 73),
  -- TM074 Shadow Ball
  (26002074, 247, 26, NULL, 2, 'TM074', 74),
  -- TM075 Dragon Pulse
  (26002075, 406, 26, NULL, 2, 'TM075', 75),
  -- TM076 Liquidation
  (26002076, 710, 26, NULL, 2, 'TM076', 76),
  -- TM077 Poison Jab
  (26002077, 398, 26, NULL, 2, 'TM077', 77),
  -- TM078 Bulldoze
  (26002078, 523, 26, NULL, 2, 'TM078', 78),
  -- TM079 Hurricane
  (26002079, 542, 26, NULL, 2, 'TM079', 79),
  -- TM080 Iron Defense
  (26002080, 334, 26, NULL, 2, 'TM080', 80),
  -- TM081 X-Scissor
  (26002081, 404, 26, NULL, 2, 'TM081', 81),
  -- TM082 U-turn
  (26002082, 369, 26, NULL, 2, 'TM082', 82),
  -- TM083 Nasty Plot
  (26002083, 417, 26, NULL, 2, 'TM083', 83),
  -- TM084 Flash Cannon
  (26002084, 430, 26, NULL, 2, 'TM084', 84),
  -- TM085 Substitute
  (26002085, 164, 26, NULL, 2, 'TM085', 85),
  -- TM086 Wild Charge
  (26002086, 528, 26, NULL, 2, 'TM086', 86),
  -- TM087 Iron Tail
  (26002087, 231, 26, NULL, 2, 'TM087', 87),
  -- TM088 Spikes
  (26002088, 191, 26, NULL, 2, 'TM088', 88),
  -- TM089 Toxic Spikes
  (26002089, 390, 26, NULL, 2, 'TM089', 89),
  -- TM090 Dark Pulse
  (26002090, 399, 26, NULL, 2, 'TM090', 90),
  -- TM091 Curse
  (26002091, 174, 26, NULL, 2, 'TM091', 91),
  -- TM092 Dazzling Gleam
  (26002092, 605, 26, NULL, 2, 'TM092', 92),
  -- TM093 Outrage
  (26002093, 200, 26, NULL, 2, 'TM093', 93),
  -- TM094 Whirlwind
  (26002094, 18, 26, NULL, 2, 'TM094', 94),
  -- TM095 Taunt
  (26002095, 269, 26, NULL, 2, 'TM095', 95),
  -- TM096 Hydro Pump
  (26002096, 56, 26, NULL, 2, 'TM096', 96),
  -- TM097 Heal Block
  (26002097, 377, 26, NULL, 2, 'TM097', 97),
  -- TM098 Waterfall
  (26002098, 127, 26, NULL, 2, 'TM098', 98),
  -- TM099 Metronome
  (26002099, 118, 26, NULL, 2, 'TM099', 99),
  -- TM100 Gunk Shot
  (26002100, 441, 26, NULL, 2, 'TM100', 100),
  -- TM101 Electroweb
  (26002101, 527, 26, NULL, 2, 'TM101', 101),
  -- TM102 Focus Blast
  (26002102, 411, 26, NULL, 2, 'TM102', 102),
  -- TM103 Work Up
  (26002103, 526, 26, NULL, 2, 'TM103', 103),
  -- TM104 Flare Blitz
  (26002104, 394, 26, NULL, 2, 'TM104', 104),
  -- TM105 Blizzard
  (26002105, 59, 26, NULL, 2, 'TM105', 105),
  -- TM106 Thunder
  (26002106, 87, 26, NULL, 2, 'TM106', 106),
  -- TM107 Close Combat
  (26002107, 370, 26, NULL, 2, 'TM107', 107),
  -- TM108 Comet Punch
  (26002108, 4, 26, NULL, 2, 'TM108', 108),
  -- TM109 Facade
  (26002109, 263, 26, NULL, 2, 'TM109', 109),
  -- TM110 Chilling Water
  (26002110, 886, 26, NULL, 2, 'TM110', 110),
  -- TM111 Sing
  (26002111, 47, 26, NULL, 2, 'TM111', 111),
  -- TM112 Acid Spray
  (26002112, 491, 26, NULL, 2, 'TM112', 112),
  -- TM113 Low Sweep
  (26002113, 490, 26, NULL, 2, 'TM113', 113),
  -- TM114 Flame Charge
  (26002114, 488, 26, NULL, 2, 'TM114', 114),
  -- TM115 Trailblaze
  (26002115, 885, 26, NULL, 2, 'TM115', 115),
  -- TM116 Pay Day
  (26002116, 6, 26, NULL, 2, 'TM116', 116),
  -- TM117 Silver Wind
  (26002117, 318, 26, NULL, 2, 'TM117', 117),
  -- TM118 Shadow Punch
  (26002118, 325, 26, NULL, 2, 'TM118', 118),
  -- TM119 Ominous Wind
  (26002119, 466, 26, NULL, 2, 'TM119', 119),
  -- TM120 Ancient Power
  (26002120, 246, 26, NULL, 2, 'TM120', 120),
  -- TM121 Torment
  (26002121, 259, 26, NULL, 2, 'TM121', 121),
  -- TM122 False Swipe
  (26002122, 206, 26, NULL, 2, 'TM122', 122),
  -- TM123 Poison Fang
  (26002123, 305, 26, NULL, 2, 'TM123', 123),
  -- TM124 Psychic Fangs
  (26002124, 706, 26, NULL, 2, 'TM124', 124),
  -- TM125 Mimic
  (26002125, 102, 26, NULL, 2, 'TM125', 125),
  -- TM126 Magnet Bomb
  (26002126, 443, 26, NULL, 2, 'TM126', 126),
  -- TM127 Dream Eater
  (26002127, 138, 26, NULL, 2, 'TM127', 127),
  -- TM128 Seed Bomb
  (26002128, 402, 26, NULL, 2, 'TM128', 128),
  -- TM129 Circle Throw
  (26002129, 509, 26, NULL, 2, 'TM129', 129),
  -- TM130 Charge Beam
  (26002130, 451, 26, NULL, 2, 'TM130', 130),
  -- TM131 Drain Punch
  (26002131, 409, 26, NULL, 2, 'TM131', 131),
  -- TM132 Double Hit
  (26002132, 458, 26, NULL, 2, 'TM132', 132),
  -- TM133 Blaze Kick
  (26002133, 299, 26, NULL, 2, 'TM133', 133),
  -- TM134 Dual Wingbeat
  (26002134, 814, 26, NULL, 2, 'TM134', 134),
  -- TM135 Dual Chop
  (26002135, 530, 26, NULL, 2, 'TM135', 135),
  -- TM136 Scorching Sands
  (26002136, 815, 26, NULL, 2, 'TM136', 136),
  -- TM137 Storm Throw
  (26002137, 480, 26, NULL, 2, 'TM137', 137),
  -- TM138 Frost Breath
  (26002138, 524, 26, NULL, 2, 'TM138', 138),
  -- TM139 Swagger
  (26002139, 207, 26, NULL, 2, 'TM139', 139),
  -- TM140 Muddy Water
  (26002140, 330, 26, NULL, 2, 'TM140', 140),
  -- TM141 Fake Out
  (26002141, 252, 26, NULL, 2, 'TM141', 141),
  -- TM142 First Impression
  (26002142, 660, 26, NULL, 2, 'TM142', 142),
  -- TM143 Scale Shot
  (26002143, 799, 26, NULL, 2, 'TM143', 143),
  -- TM144 Triple Axel
  (26002144, 813, 26, NULL, 2, 'TM144', 144),
  -- TM145 Razor Wind
  (26002145, 13, 26, NULL, 2, 'TM145', 145),
  -- TM146 Skull Bash
  (26002146, 130, 26, NULL, 2, 'TM146', 146),
  -- TM147 Tri Attack
  (26002147, 161, 26, NULL, 2, 'TM147', 147),
  -- TM148 Scald
  (26002148, 503, 26, NULL, 2, 'TM148', 148),
  -- TM149 Icicle Spear
  (26002149, 333, 26, NULL, 2, 'TM149', 149),
  -- TM150 Vacuum Wave
  (26002150, 410, 26, NULL, 2, 'TM150', 150),
  -- TM151 Petal Dance
  (26002151, 80, 26, NULL, 2, 'TM151', 151),
  -- TM152 Solar Blade
  (26002152, 669, 26, NULL, 2, 'TM152', 152),
  -- TM153 Sky Attack
  (26002153, 143, 26, NULL, 2, 'TM153', 153),
  -- TM154 Fissure
  (26002154, 90, 26, NULL, 2, 'TM154', 154),
  -- TM155 Sheer Cold
  (26002155, 329, 26, NULL, 2, 'TM155', 155),
  -- TM156 Meteor Beam
  (26002156, 800, 26, NULL, 2, 'TM156', 156),
  -- TM157 Steel Beam
  (26002157, 796, 26, NULL, 2, 'TM157', 157),
  -- TM158 Blast Burn
  (26002158, 307, 26, NULL, 2, 'TM158', 158),
  -- TM159 Hydro Cannon
  (26002159, 308, 26, NULL, 2, 'TM159', 159),
  -- TM160 Frenzy Plant
  (26002160, 338, 26, NULL, 2, 'TM160', 160);
