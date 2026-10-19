-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI TM/HM catalog for Omega Ruby / Alpha Sapphire.
-- Cross-check: Serebii Omega Ruby / Alpha Sapphire TM/HM list and PokemonDB Generation 6 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Omega Ruby / Alpha Sapphire
-- Rows: 107
-- Scope: Omega Ruby / Alpha Sapphire TM and HM catalog used by machine learnset rows.
-- ORAS has 100 TMs and 7 HMs. TM94 teaches Secret Power; Rock Smash is HM06 and Dive is HM07.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Hone Claws
  (14002001, 468, 14, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (14002002, 337, 14, NULL, 2, 'TM02', 2),
  -- TM03 Psyshock
  (14002003, 473, 14, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (14002004, 347, 14, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (14002005, 46, 14, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (14002006, 92, 14, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (14002007, 258, 14, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (14002008, 339, 14, NULL, 2, 'TM08', 8),
  -- TM09 Venoshock
  (14002009, 474, 14, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (14002010, 237, 14, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (14002011, 241, 14, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (14002012, 269, 14, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (14002013, 58, 14, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (14002014, 59, 14, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (14002015, 63, 14, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (14002016, 113, 14, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (14002017, 182, 14, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (14002018, 240, 14, NULL, 2, 'TM18', 18),
  -- TM19 Roost
  (14002019, 355, 14, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (14002020, 219, 14, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (14002021, 218, 14, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (14002022, 76, 14, NULL, 2, 'TM22', 22),
  -- TM23 Smack Down
  (14002023, 479, 14, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (14002024, 85, 14, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (14002025, 87, 14, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (14002026, 89, 14, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (14002027, 216, 14, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (14002028, 91, 14, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (14002029, 94, 14, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (14002030, 247, 14, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (14002031, 280, 14, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (14002032, 104, 14, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (14002033, 115, 14, NULL, 2, 'TM33', 33),
  -- TM34 Sludge Wave
  (14002034, 482, 14, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (14002035, 53, 14, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (14002036, 188, 14, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (14002037, 201, 14, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (14002038, 126, 14, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (14002039, 317, 14, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (14002040, 332, 14, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (14002041, 259, 14, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (14002042, 263, 14, NULL, 2, 'TM42', 42),
  -- TM43 Flame Charge
  (14002043, 488, 14, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (14002044, 156, 14, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (14002045, 213, 14, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (14002046, 168, 14, NULL, 2, 'TM46', 46),
  -- TM47 Low Sweep
  (14002047, 490, 14, NULL, 2, 'TM47', 47),
  -- TM48 Round
  (14002048, 496, 14, NULL, 2, 'TM48', 48),
  -- TM49 Echoed Voice
  (14002049, 497, 14, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (14002050, 315, 14, NULL, 2, 'TM50', 50),
  -- TM51 Steel Wing
  (14002051, 211, 14, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (14002052, 411, 14, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (14002053, 412, 14, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (14002054, 206, 14, NULL, 2, 'TM54', 54),
  -- TM55 Scald
  (14002055, 503, 14, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (14002056, 374, 14, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (14002057, 451, 14, NULL, 2, 'TM57', 57),
  -- TM58 Sky Drop
  (14002058, 507, 14, NULL, 2, 'TM58', 58),
  -- TM59 Incinerate
  (14002059, 510, 14, NULL, 2, 'TM59', 59),
  -- TM60 Quash
  (14002060, 511, 14, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (14002061, 261, 14, NULL, 2, 'TM61', 61),
  -- TM62 Acrobatics
  (14002062, 512, 14, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (14002063, 373, 14, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (14002064, 153, 14, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (14002065, 421, 14, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (14002066, 371, 14, NULL, 2, 'TM66', 66),
  -- TM67 Retaliate
  (14002067, 514, 14, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (14002068, 416, 14, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (14002069, 397, 14, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (14002070, 148, 14, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (14002071, 444, 14, NULL, 2, 'TM71', 71),
  -- TM72 Volt Switch
  (14002072, 521, 14, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (14002073, 86, 14, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (14002074, 360, 14, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (14002075, 14, 14, NULL, 2, 'TM75', 75),
  -- TM76 Struggle Bug
  (14002076, 522, 14, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (14002077, 244, 14, NULL, 2, 'TM77', 77),
  -- TM78 Bulldoze
  (14002078, 523, 14, NULL, 2, 'TM78', 78),
  -- TM79 Frost Breath
  (14002079, 524, 14, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (14002080, 157, 14, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (14002081, 404, 14, NULL, 2, 'TM81', 81),
  -- TM82 Dragon Tail
  (14002082, 525, 14, NULL, 2, 'TM82', 82),
  -- TM83 Infestation
  (14002083, 611, 14, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (14002084, 398, 14, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (14002085, 138, 14, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (14002086, 447, 14, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (14002087, 207, 14, NULL, 2, 'TM87', 87),
  -- TM88 Sleep Talk
  (14002088, 214, 14, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (14002089, 369, 14, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (14002090, 164, 14, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (14002091, 430, 14, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (14002092, 433, 14, NULL, 2, 'TM92', 92),
  -- TM93 Wild Charge
  (14002093, 528, 14, NULL, 2, 'TM93', 93),
  -- TM94 Secret Power
  (14002094, 290, 14, NULL, 2, 'TM94', 94),
  -- TM95 Snarl
  (14002095, 555, 14, NULL, 2, 'TM95', 95),
  -- TM96 Nature Power
  (14002096, 267, 14, NULL, 2, 'TM96', 96),
  -- TM97 Dark Pulse
  (14002097, 399, 14, NULL, 2, 'TM97', 97),
  -- TM98 Power-Up Punch
  (14002098, 612, 14, NULL, 2, 'TM98', 98),
  -- TM99 Dazzling Gleam
  (14002099, 605, 14, NULL, 2, 'TM99', 99),
  -- TM100 Confide
  (14002100, 590, 14, NULL, 2, 'TM100', 100),
  -- HM01 Cut
  (14003001, 15, 14, NULL, 3, 'HM01', 101),
  -- HM02 Fly
  (14003002, 19, 14, NULL, 3, 'HM02', 102),
  -- HM03 Surf
  (14003003, 57, 14, NULL, 3, 'HM03', 103),
  -- HM04 Strength
  (14003004, 70, 14, NULL, 3, 'HM04', 104),
  -- HM05 Waterfall
  (14003005, 127, 14, NULL, 3, 'HM05', 105),
  -- HM06 Rock Smash
  (14003006, 249, 14, NULL, 3, 'HM06', 106),
  -- HM07 Dive
  (14003007, 291, 14, NULL, 3, 'HM07', 107);
