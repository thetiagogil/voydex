-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV TM/HM catalog for HeartGold / SoulSilver.
-- Cross-check: Serebii HeartGold / SoulSilver TM/HM list and PokemonDB Generation 4 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: HeartGold / SoulSilver
-- Rows: 100
-- Scope: HeartGold / SoulSilver TM and HM catalog used by machine learnset rows. HM05 is Whirlpool.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (10002001, 264, 10, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (10002002, 337, 10, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (10002003, 352, 10, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (10002004, 347, 10, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (10002005, 46, 10, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (10002006, 92, 10, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (10002007, 258, 10, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (10002008, 339, 10, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (10002009, 331, 10, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (10002010, 237, 10, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (10002011, 241, 10, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (10002012, 269, 10, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (10002013, 58, 10, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (10002014, 59, 10, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (10002015, 63, 10, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (10002016, 113, 10, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (10002017, 182, 10, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (10002018, 240, 10, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (10002019, 202, 10, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (10002020, 219, 10, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (10002021, 218, 10, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (10002022, 76, 10, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (10002023, 231, 10, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (10002024, 85, 10, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (10002025, 87, 10, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (10002026, 89, 10, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (10002027, 216, 10, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (10002028, 91, 10, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (10002029, 94, 10, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (10002030, 247, 10, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (10002031, 280, 10, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (10002032, 104, 10, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (10002033, 115, 10, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (10002034, 351, 10, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (10002035, 53, 10, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (10002036, 188, 10, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (10002037, 201, 10, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (10002038, 126, 10, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (10002039, 317, 10, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (10002040, 332, 10, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (10002041, 259, 10, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (10002042, 263, 10, NULL, 2, 'TM42', 42),
  -- TM43 Secret Power
  (10002043, 290, 10, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (10002044, 156, 10, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (10002045, 213, 10, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (10002046, 168, 10, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (10002047, 211, 10, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (10002048, 285, 10, NULL, 2, 'TM48', 48),
  -- TM49 Snatch
  (10002049, 289, 10, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (10002050, 315, 10, NULL, 2, 'TM50', 50),
  -- TM51 Roost
  (10002051, 355, 10, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (10002052, 411, 10, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (10002053, 412, 10, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (10002054, 206, 10, NULL, 2, 'TM54', 54),
  -- TM55 Brine
  (10002055, 362, 10, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (10002056, 374, 10, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (10002057, 451, 10, NULL, 2, 'TM57', 57),
  -- TM58 Endure
  (10002058, 203, 10, NULL, 2, 'TM58', 58),
  -- TM59 Dragon Pulse
  (10002059, 406, 10, NULL, 2, 'TM59', 59),
  -- TM60 Drain Punch
  (10002060, 409, 10, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (10002061, 261, 10, NULL, 2, 'TM61', 61),
  -- TM62 Silver Wind
  (10002062, 318, 10, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (10002063, 373, 10, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (10002064, 153, 10, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (10002065, 421, 10, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (10002066, 371, 10, NULL, 2, 'TM66', 66),
  -- TM67 Recycle
  (10002067, 278, 10, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (10002068, 416, 10, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (10002069, 397, 10, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (10002070, 148, 10, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (10002071, 444, 10, NULL, 2, 'TM71', 71),
  -- TM72 Avalanche
  (10002072, 419, 10, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (10002073, 86, 10, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (10002074, 360, 10, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (10002075, 14, 10, NULL, 2, 'TM75', 75),
  -- TM76 Stealth Rock
  (10002076, 446, 10, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (10002077, 244, 10, NULL, 2, 'TM77', 77),
  -- TM78 Captivate
  (10002078, 445, 10, NULL, 2, 'TM78', 78),
  -- TM79 Dark Pulse
  (10002079, 399, 10, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (10002080, 157, 10, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (10002081, 404, 10, NULL, 2, 'TM81', 81),
  -- TM82 Sleep Talk
  (10002082, 214, 10, NULL, 2, 'TM82', 82),
  -- TM83 Natural Gift
  (10002083, 363, 10, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (10002084, 398, 10, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (10002085, 138, 10, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (10002086, 447, 10, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (10002087, 207, 10, NULL, 2, 'TM87', 87),
  -- TM88 Pluck
  (10002088, 365, 10, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (10002089, 369, 10, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (10002090, 164, 10, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (10002091, 430, 10, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (10002092, 433, 10, NULL, 2, 'TM92', 92),
  -- HM01 Cut
  (10003001, 15, 10, NULL, 3, 'HM01', 93),
  -- HM02 Fly
  (10003002, 19, 10, NULL, 3, 'HM02', 94),
  -- HM03 Surf
  (10003003, 57, 10, NULL, 3, 'HM03', 95),
  -- HM04 Strength
  (10003004, 70, 10, NULL, 3, 'HM04', 96),
  -- HM05 Whirlpool
  (10003005, 250, 10, NULL, 3, 'HM05', 97),
  -- HM06 Rock Smash
  (10003006, 249, 10, NULL, 3, 'HM06', 98),
  -- HM07 Waterfall
  (10003007, 127, 10, NULL, 3, 'HM07', 99),
  -- HM08 Rock Climb
  (10003008, 431, 10, NULL, 3, 'HM08', 100);
