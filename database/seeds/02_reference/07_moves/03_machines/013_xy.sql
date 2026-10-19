-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI TM/HM catalog for X / Y.
-- Cross-check: Serebii X / Y TM/HM list and PokemonDB Generation 6 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: X / Y
-- Rows: 105
-- Scope: X / Y TM and HM catalog used by machine learnset rows.
-- X / Y has 100 TMs and 5 HMs. TM94 teaches Rock Smash.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Hone Claws
  (13002001, 468, 13, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (13002002, 337, 13, NULL, 2, 'TM02', 2),
  -- TM03 Psyshock
  (13002003, 473, 13, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (13002004, 347, 13, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (13002005, 46, 13, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (13002006, 92, 13, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (13002007, 258, 13, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (13002008, 339, 13, NULL, 2, 'TM08', 8),
  -- TM09 Venoshock
  (13002009, 474, 13, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (13002010, 237, 13, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (13002011, 241, 13, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (13002012, 269, 13, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (13002013, 58, 13, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (13002014, 59, 13, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (13002015, 63, 13, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (13002016, 113, 13, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (13002017, 182, 13, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (13002018, 240, 13, NULL, 2, 'TM18', 18),
  -- TM19 Roost
  (13002019, 355, 13, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (13002020, 219, 13, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (13002021, 218, 13, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (13002022, 76, 13, NULL, 2, 'TM22', 22),
  -- TM23 Smack Down
  (13002023, 479, 13, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (13002024, 85, 13, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (13002025, 87, 13, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (13002026, 89, 13, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (13002027, 216, 13, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (13002028, 91, 13, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (13002029, 94, 13, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (13002030, 247, 13, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (13002031, 280, 13, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (13002032, 104, 13, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (13002033, 115, 13, NULL, 2, 'TM33', 33),
  -- TM34 Sludge Wave
  (13002034, 482, 13, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (13002035, 53, 13, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (13002036, 188, 13, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (13002037, 201, 13, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (13002038, 126, 13, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (13002039, 317, 13, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (13002040, 332, 13, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (13002041, 259, 13, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (13002042, 263, 13, NULL, 2, 'TM42', 42),
  -- TM43 Flame Charge
  (13002043, 488, 13, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (13002044, 156, 13, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (13002045, 213, 13, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (13002046, 168, 13, NULL, 2, 'TM46', 46),
  -- TM47 Low Sweep
  (13002047, 490, 13, NULL, 2, 'TM47', 47),
  -- TM48 Round
  (13002048, 496, 13, NULL, 2, 'TM48', 48),
  -- TM49 Echoed Voice
  (13002049, 497, 13, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (13002050, 315, 13, NULL, 2, 'TM50', 50),
  -- TM51 Steel Wing
  (13002051, 211, 13, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (13002052, 411, 13, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (13002053, 412, 13, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (13002054, 206, 13, NULL, 2, 'TM54', 54),
  -- TM55 Scald
  (13002055, 503, 13, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (13002056, 374, 13, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (13002057, 451, 13, NULL, 2, 'TM57', 57),
  -- TM58 Sky Drop
  (13002058, 507, 13, NULL, 2, 'TM58', 58),
  -- TM59 Incinerate
  (13002059, 510, 13, NULL, 2, 'TM59', 59),
  -- TM60 Quash
  (13002060, 511, 13, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (13002061, 261, 13, NULL, 2, 'TM61', 61),
  -- TM62 Acrobatics
  (13002062, 512, 13, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (13002063, 373, 13, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (13002064, 153, 13, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (13002065, 421, 13, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (13002066, 371, 13, NULL, 2, 'TM66', 66),
  -- TM67 Retaliate
  (13002067, 514, 13, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (13002068, 416, 13, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (13002069, 397, 13, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (13002070, 148, 13, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (13002071, 444, 13, NULL, 2, 'TM71', 71),
  -- TM72 Volt Switch
  (13002072, 521, 13, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (13002073, 86, 13, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (13002074, 360, 13, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (13002075, 14, 13, NULL, 2, 'TM75', 75),
  -- TM76 Struggle Bug
  (13002076, 522, 13, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (13002077, 244, 13, NULL, 2, 'TM77', 77),
  -- TM78 Bulldoze
  (13002078, 523, 13, NULL, 2, 'TM78', 78),
  -- TM79 Frost Breath
  (13002079, 524, 13, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (13002080, 157, 13, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (13002081, 404, 13, NULL, 2, 'TM81', 81),
  -- TM82 Dragon Tail
  (13002082, 525, 13, NULL, 2, 'TM82', 82),
  -- TM83 Infestation
  (13002083, 611, 13, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (13002084, 398, 13, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (13002085, 138, 13, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (13002086, 447, 13, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (13002087, 207, 13, NULL, 2, 'TM87', 87),
  -- TM88 Sleep Talk
  (13002088, 214, 13, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (13002089, 369, 13, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (13002090, 164, 13, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (13002091, 430, 13, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (13002092, 433, 13, NULL, 2, 'TM92', 92),
  -- TM93 Wild Charge
  (13002093, 528, 13, NULL, 2, 'TM93', 93),
  -- TM94 Rock Smash
  (13002094, 249, 13, NULL, 2, 'TM94', 94),
  -- TM95 Snarl
  (13002095, 555, 13, NULL, 2, 'TM95', 95),
  -- TM96 Nature Power
  (13002096, 267, 13, NULL, 2, 'TM96', 96),
  -- TM97 Dark Pulse
  (13002097, 399, 13, NULL, 2, 'TM97', 97),
  -- TM98 Power-Up Punch
  (13002098, 612, 13, NULL, 2, 'TM98', 98),
  -- TM99 Dazzling Gleam
  (13002099, 605, 13, NULL, 2, 'TM99', 99),
  -- TM100 Confide
  (13002100, 590, 13, NULL, 2, 'TM100', 100),
  -- HM01 Cut
  (13003001, 15, 13, NULL, 3, 'HM01', 101),
  -- HM02 Fly
  (13003002, 19, 13, NULL, 3, 'HM02', 102),
  -- HM03 Surf
  (13003003, 57, 13, NULL, 3, 'HM03', 103),
  -- HM04 Strength
  (13003004, 70, 13, NULL, 3, 'HM04', 104),
  -- HM05 Waterfall
  (13003005, 127, 13, NULL, 3, 'HM05', 105);
