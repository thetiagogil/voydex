-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII TM catalog for Sun / Moon.
-- Cross-check: Serebii Sun / Moon TM list and PokemonDB Generation 7 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Sun / Moon
-- Rows: 100
-- Scope: Sun / Moon TM catalog used by machine learnset rows.
-- Sun / Moon has 100 TMs and no HMs; TM94 teaches Surf and TM98 teaches Waterfall.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Work Up
  (15002001, 526, 15, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (15002002, 337, 15, NULL, 2, 'TM02', 2),
  -- TM03 Psyshock
  (15002003, 473, 15, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (15002004, 347, 15, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (15002005, 46, 15, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (15002006, 92, 15, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (15002007, 258, 15, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (15002008, 339, 15, NULL, 2, 'TM08', 8),
  -- TM09 Venoshock
  (15002009, 474, 15, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (15002010, 237, 15, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (15002011, 241, 15, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (15002012, 269, 15, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (15002013, 58, 15, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (15002014, 59, 15, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (15002015, 63, 15, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (15002016, 113, 15, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (15002017, 182, 15, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (15002018, 240, 15, NULL, 2, 'TM18', 18),
  -- TM19 Roost
  (15002019, 355, 15, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (15002020, 219, 15, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (15002021, 218, 15, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (15002022, 76, 15, NULL, 2, 'TM22', 22),
  -- TM23 Smack Down
  (15002023, 479, 15, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (15002024, 85, 15, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (15002025, 87, 15, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (15002026, 89, 15, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (15002027, 216, 15, NULL, 2, 'TM27', 27),
  -- TM28 Leech Life
  (15002028, 141, 15, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (15002029, 94, 15, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (15002030, 247, 15, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (15002031, 280, 15, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (15002032, 104, 15, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (15002033, 115, 15, NULL, 2, 'TM33', 33),
  -- TM34 Sludge Wave
  (15002034, 482, 15, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (15002035, 53, 15, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (15002036, 188, 15, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (15002037, 201, 15, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (15002038, 126, 15, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (15002039, 317, 15, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (15002040, 332, 15, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (15002041, 259, 15, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (15002042, 263, 15, NULL, 2, 'TM42', 42),
  -- TM43 Flame Charge
  (15002043, 488, 15, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (15002044, 156, 15, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (15002045, 213, 15, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (15002046, 168, 15, NULL, 2, 'TM46', 46),
  -- TM47 Low Sweep
  (15002047, 490, 15, NULL, 2, 'TM47', 47),
  -- TM48 Round
  (15002048, 496, 15, NULL, 2, 'TM48', 48),
  -- TM49 Echoed Voice
  (15002049, 497, 15, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (15002050, 315, 15, NULL, 2, 'TM50', 50),
  -- TM51 Steel Wing
  (15002051, 211, 15, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (15002052, 411, 15, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (15002053, 412, 15, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (15002054, 206, 15, NULL, 2, 'TM54', 54),
  -- TM55 Scald
  (15002055, 503, 15, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (15002056, 374, 15, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (15002057, 451, 15, NULL, 2, 'TM57', 57),
  -- TM58 Sky Drop
  (15002058, 507, 15, NULL, 2, 'TM58', 58),
  -- TM59 Brutal Swing
  (15002059, 693, 15, NULL, 2, 'TM59', 59),
  -- TM60 Quash
  (15002060, 511, 15, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (15002061, 261, 15, NULL, 2, 'TM61', 61),
  -- TM62 Acrobatics
  (15002062, 512, 15, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (15002063, 373, 15, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (15002064, 153, 15, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (15002065, 421, 15, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (15002066, 371, 15, NULL, 2, 'TM66', 66),
  -- TM67 Smart Strike
  (15002067, 684, 15, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (15002068, 416, 15, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (15002069, 397, 15, NULL, 2, 'TM69', 69),
  -- TM70 Aurora Veil
  (15002070, 694, 15, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (15002071, 444, 15, NULL, 2, 'TM71', 71),
  -- TM72 Volt Switch
  (15002072, 521, 15, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (15002073, 86, 15, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (15002074, 360, 15, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (15002075, 14, 15, NULL, 2, 'TM75', 75),
  -- TM76 Fly
  (15002076, 19, 15, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (15002077, 244, 15, NULL, 2, 'TM77', 77),
  -- TM78 Bulldoze
  (15002078, 523, 15, NULL, 2, 'TM78', 78),
  -- TM79 Frost Breath
  (15002079, 524, 15, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (15002080, 157, 15, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (15002081, 404, 15, NULL, 2, 'TM81', 81),
  -- TM82 Dragon Tail
  (15002082, 525, 15, NULL, 2, 'TM82', 82),
  -- TM83 Infestation
  (15002083, 611, 15, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (15002084, 398, 15, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (15002085, 138, 15, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (15002086, 447, 15, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (15002087, 207, 15, NULL, 2, 'TM87', 87),
  -- TM88 Sleep Talk
  (15002088, 214, 15, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (15002089, 369, 15, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (15002090, 164, 15, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (15002091, 430, 15, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (15002092, 433, 15, NULL, 2, 'TM92', 92),
  -- TM93 Wild Charge
  (15002093, 528, 15, NULL, 2, 'TM93', 93),
  -- TM94 Surf
  (15002094, 57, 15, NULL, 2, 'TM94', 94),
  -- TM95 Snarl
  (15002095, 555, 15, NULL, 2, 'TM95', 95),
  -- TM96 Nature Power
  (15002096, 267, 15, NULL, 2, 'TM96', 96),
  -- TM97 Dark Pulse
  (15002097, 399, 15, NULL, 2, 'TM97', 97),
  -- TM98 Waterfall
  (15002098, 127, 15, NULL, 2, 'TM98', 98),
  -- TM99 Dazzling Gleam
  (15002099, 605, 15, NULL, 2, 'TM99', 99),
  -- TM100 Confide
  (15002100, 590, 15, NULL, 2, 'TM100', 100);
