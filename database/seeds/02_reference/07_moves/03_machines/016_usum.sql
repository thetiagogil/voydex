-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII TM catalog for Ultra Sun / Ultra Moon.
-- Cross-check: Serebii Ultra Sun / Ultra Moon TM list and PokemonDB Generation 7 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Ultra Sun / Ultra Moon
-- Rows: 100
-- Scope: Ultra Sun / Ultra Moon TM catalog used by machine learnset rows.
-- Ultra Sun / Ultra Moon has 100 TMs and no HMs; TM94 teaches Surf and TM98 teaches Waterfall.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Work Up
  (16002001, 526, 16, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (16002002, 337, 16, NULL, 2, 'TM02', 2),
  -- TM03 Psyshock
  (16002003, 473, 16, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (16002004, 347, 16, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (16002005, 46, 16, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (16002006, 92, 16, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (16002007, 258, 16, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (16002008, 339, 16, NULL, 2, 'TM08', 8),
  -- TM09 Venoshock
  (16002009, 474, 16, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (16002010, 237, 16, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (16002011, 241, 16, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (16002012, 269, 16, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (16002013, 58, 16, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (16002014, 59, 16, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (16002015, 63, 16, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (16002016, 113, 16, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (16002017, 182, 16, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (16002018, 240, 16, NULL, 2, 'TM18', 18),
  -- TM19 Roost
  (16002019, 355, 16, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (16002020, 219, 16, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (16002021, 218, 16, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (16002022, 76, 16, NULL, 2, 'TM22', 22),
  -- TM23 Smack Down
  (16002023, 479, 16, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (16002024, 85, 16, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (16002025, 87, 16, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (16002026, 89, 16, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (16002027, 216, 16, NULL, 2, 'TM27', 27),
  -- TM28 Leech Life
  (16002028, 141, 16, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (16002029, 94, 16, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (16002030, 247, 16, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (16002031, 280, 16, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (16002032, 104, 16, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (16002033, 115, 16, NULL, 2, 'TM33', 33),
  -- TM34 Sludge Wave
  (16002034, 482, 16, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (16002035, 53, 16, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (16002036, 188, 16, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (16002037, 201, 16, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (16002038, 126, 16, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (16002039, 317, 16, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (16002040, 332, 16, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (16002041, 259, 16, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (16002042, 263, 16, NULL, 2, 'TM42', 42),
  -- TM43 Flame Charge
  (16002043, 488, 16, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (16002044, 156, 16, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (16002045, 213, 16, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (16002046, 168, 16, NULL, 2, 'TM46', 46),
  -- TM47 Low Sweep
  (16002047, 490, 16, NULL, 2, 'TM47', 47),
  -- TM48 Round
  (16002048, 496, 16, NULL, 2, 'TM48', 48),
  -- TM49 Echoed Voice
  (16002049, 497, 16, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (16002050, 315, 16, NULL, 2, 'TM50', 50),
  -- TM51 Steel Wing
  (16002051, 211, 16, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (16002052, 411, 16, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (16002053, 412, 16, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (16002054, 206, 16, NULL, 2, 'TM54', 54),
  -- TM55 Scald
  (16002055, 503, 16, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (16002056, 374, 16, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (16002057, 451, 16, NULL, 2, 'TM57', 57),
  -- TM58 Sky Drop
  (16002058, 507, 16, NULL, 2, 'TM58', 58),
  -- TM59 Brutal Swing
  (16002059, 693, 16, NULL, 2, 'TM59', 59),
  -- TM60 Quash
  (16002060, 511, 16, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (16002061, 261, 16, NULL, 2, 'TM61', 61),
  -- TM62 Acrobatics
  (16002062, 512, 16, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (16002063, 373, 16, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (16002064, 153, 16, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (16002065, 421, 16, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (16002066, 371, 16, NULL, 2, 'TM66', 66),
  -- TM67 Smart Strike
  (16002067, 684, 16, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (16002068, 416, 16, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (16002069, 397, 16, NULL, 2, 'TM69', 69),
  -- TM70 Aurora Veil
  (16002070, 694, 16, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (16002071, 444, 16, NULL, 2, 'TM71', 71),
  -- TM72 Volt Switch
  (16002072, 521, 16, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (16002073, 86, 16, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (16002074, 360, 16, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (16002075, 14, 16, NULL, 2, 'TM75', 75),
  -- TM76 Fly
  (16002076, 19, 16, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (16002077, 244, 16, NULL, 2, 'TM77', 77),
  -- TM78 Bulldoze
  (16002078, 523, 16, NULL, 2, 'TM78', 78),
  -- TM79 Frost Breath
  (16002079, 524, 16, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (16002080, 157, 16, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (16002081, 404, 16, NULL, 2, 'TM81', 81),
  -- TM82 Dragon Tail
  (16002082, 525, 16, NULL, 2, 'TM82', 82),
  -- TM83 Infestation
  (16002083, 611, 16, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (16002084, 398, 16, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (16002085, 138, 16, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (16002086, 447, 16, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (16002087, 207, 16, NULL, 2, 'TM87', 87),
  -- TM88 Sleep Talk
  (16002088, 214, 16, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (16002089, 369, 16, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (16002090, 164, 16, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (16002091, 430, 16, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (16002092, 433, 16, NULL, 2, 'TM92', 92),
  -- TM93 Wild Charge
  (16002093, 528, 16, NULL, 2, 'TM93', 93),
  -- TM94 Surf
  (16002094, 57, 16, NULL, 2, 'TM94', 94),
  -- TM95 Snarl
  (16002095, 555, 16, NULL, 2, 'TM95', 95),
  -- TM96 Nature Power
  (16002096, 267, 16, NULL, 2, 'TM96', 96),
  -- TM97 Dark Pulse
  (16002097, 399, 16, NULL, 2, 'TM97', 97),
  -- TM98 Waterfall
  (16002098, 127, 16, NULL, 2, 'TM98', 98),
  -- TM99 Dazzling Gleam
  (16002099, 605, 16, NULL, 2, 'TM99', 99),
  -- TM100 Confide
  (16002100, 590, 16, NULL, 2, 'TM100', 100);
