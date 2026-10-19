-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V TM/HM catalog for Black 2 / White 2.
-- Cross-check: Serebii Black 2 / White 2 TM/HM list and PokemonDB Generation 5 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Black 2 / White 2
-- Rows: 101
-- Scope: Black 2 / White 2 TM and HM catalog used by machine learnset rows.
-- Gen V has 95 TMs and 6 HMs; TM95 Snarl is retained as the source-visible TM95.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Hone Claws
  (12002001, 468, 12, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (12002002, 337, 12, NULL, 2, 'TM02', 2),
  -- TM03 Psyshock
  (12002003, 473, 12, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (12002004, 347, 12, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (12002005, 46, 12, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (12002006, 92, 12, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (12002007, 258, 12, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (12002008, 339, 12, NULL, 2, 'TM08', 8),
  -- TM09 Venoshock
  (12002009, 474, 12, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (12002010, 237, 12, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (12002011, 241, 12, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (12002012, 269, 12, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (12002013, 58, 12, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (12002014, 59, 12, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (12002015, 63, 12, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (12002016, 113, 12, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (12002017, 182, 12, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (12002018, 240, 12, NULL, 2, 'TM18', 18),
  -- TM19 Telekinesis
  (12002019, 477, 12, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (12002020, 219, 12, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (12002021, 218, 12, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (12002022, 76, 12, NULL, 2, 'TM22', 22),
  -- TM23 Smack Down
  (12002023, 479, 12, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (12002024, 85, 12, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (12002025, 87, 12, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (12002026, 89, 12, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (12002027, 216, 12, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (12002028, 91, 12, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (12002029, 94, 12, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (12002030, 247, 12, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (12002031, 280, 12, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (12002032, 104, 12, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (12002033, 115, 12, NULL, 2, 'TM33', 33),
  -- TM34 Sludge Wave
  (12002034, 482, 12, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (12002035, 53, 12, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (12002036, 188, 12, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (12002037, 201, 12, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (12002038, 126, 12, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (12002039, 317, 12, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (12002040, 332, 12, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (12002041, 259, 12, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (12002042, 263, 12, NULL, 2, 'TM42', 42),
  -- TM43 Flame Charge
  (12002043, 488, 12, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (12002044, 156, 12, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (12002045, 213, 12, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (12002046, 168, 12, NULL, 2, 'TM46', 46),
  -- TM47 Low Sweep
  (12002047, 490, 12, NULL, 2, 'TM47', 47),
  -- TM48 Round
  (12002048, 496, 12, NULL, 2, 'TM48', 48),
  -- TM49 Echoed Voice
  (12002049, 497, 12, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (12002050, 315, 12, NULL, 2, 'TM50', 50),
  -- TM51 Ally Switch
  (12002051, 502, 12, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (12002052, 411, 12, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (12002053, 412, 12, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (12002054, 206, 12, NULL, 2, 'TM54', 54),
  -- TM55 Scald
  (12002055, 503, 12, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (12002056, 374, 12, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (12002057, 451, 12, NULL, 2, 'TM57', 57),
  -- TM58 Sky Drop
  (12002058, 507, 12, NULL, 2, 'TM58', 58),
  -- TM59 Incinerate
  (12002059, 510, 12, NULL, 2, 'TM59', 59),
  -- TM60 Quash
  (12002060, 511, 12, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (12002061, 261, 12, NULL, 2, 'TM61', 61),
  -- TM62 Acrobatics
  (12002062, 512, 12, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (12002063, 373, 12, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (12002064, 153, 12, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (12002065, 421, 12, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (12002066, 371, 12, NULL, 2, 'TM66', 66),
  -- TM67 Retaliate
  (12002067, 514, 12, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (12002068, 416, 12, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (12002069, 397, 12, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (12002070, 148, 12, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (12002071, 444, 12, NULL, 2, 'TM71', 71),
  -- TM72 Volt Switch
  (12002072, 521, 12, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (12002073, 86, 12, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (12002074, 360, 12, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (12002075, 14, 12, NULL, 2, 'TM75', 75),
  -- TM76 Struggle Bug
  (12002076, 522, 12, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (12002077, 244, 12, NULL, 2, 'TM77', 77),
  -- TM78 Bulldoze
  (12002078, 523, 12, NULL, 2, 'TM78', 78),
  -- TM79 Frost Breath
  (12002079, 524, 12, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (12002080, 157, 12, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (12002081, 404, 12, NULL, 2, 'TM81', 81),
  -- TM82 Dragon Tail
  (12002082, 525, 12, NULL, 2, 'TM82', 82),
  -- TM83 Work Up
  (12002083, 526, 12, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (12002084, 398, 12, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (12002085, 138, 12, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (12002086, 447, 12, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (12002087, 207, 12, NULL, 2, 'TM87', 87),
  -- TM88 Pluck
  (12002088, 365, 12, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (12002089, 369, 12, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (12002090, 164, 12, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (12002091, 430, 12, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (12002092, 433, 12, NULL, 2, 'TM92', 92),
  -- TM93 Wild Charge
  (12002093, 528, 12, NULL, 2, 'TM93', 93),
  -- TM94 Rock Smash
  (12002094, 249, 12, NULL, 2, 'TM94', 94),
  -- TM95 Snarl
  (12002095, 555, 12, NULL, 2, 'TM95', 95),
  -- HM01 Cut
  (12003001, 15, 12, NULL, 3, 'HM01', 96),
  -- HM02 Fly
  (12003002, 19, 12, NULL, 3, 'HM02', 97),
  -- HM03 Surf
  (12003003, 57, 12, NULL, 3, 'HM03', 98),
  -- HM04 Strength
  (12003004, 70, 12, NULL, 3, 'HM04', 99),
  -- HM05 Waterfall
  (12003005, 127, 12, NULL, 3, 'HM05', 100),
  -- HM06 Dive
  (12003006, 291, 12, NULL, 3, 'HM06', 101);
