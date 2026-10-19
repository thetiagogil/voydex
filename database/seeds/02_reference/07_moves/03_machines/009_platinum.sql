-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV TM/HM catalog for Platinum.
-- Cross-check: Serebii Platinum TM/HM list and PokemonDB Generation 4 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Platinum
-- Rows: 100
-- Scope: Platinum TM and HM catalog used by machine learnset rows. HM05 is Defog.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (9002001, 264, 9, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (9002002, 337, 9, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (9002003, 352, 9, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (9002004, 347, 9, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (9002005, 46, 9, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (9002006, 92, 9, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (9002007, 258, 9, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (9002008, 339, 9, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (9002009, 331, 9, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (9002010, 237, 9, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (9002011, 241, 9, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (9002012, 269, 9, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (9002013, 58, 9, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (9002014, 59, 9, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (9002015, 63, 9, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (9002016, 113, 9, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (9002017, 182, 9, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (9002018, 240, 9, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (9002019, 202, 9, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (9002020, 219, 9, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (9002021, 218, 9, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (9002022, 76, 9, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (9002023, 231, 9, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (9002024, 85, 9, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (9002025, 87, 9, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (9002026, 89, 9, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (9002027, 216, 9, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (9002028, 91, 9, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (9002029, 94, 9, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (9002030, 247, 9, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (9002031, 280, 9, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (9002032, 104, 9, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (9002033, 115, 9, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (9002034, 351, 9, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (9002035, 53, 9, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (9002036, 188, 9, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (9002037, 201, 9, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (9002038, 126, 9, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (9002039, 317, 9, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (9002040, 332, 9, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (9002041, 259, 9, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (9002042, 263, 9, NULL, 2, 'TM42', 42),
  -- TM43 Secret Power
  (9002043, 290, 9, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (9002044, 156, 9, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (9002045, 213, 9, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (9002046, 168, 9, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (9002047, 211, 9, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (9002048, 285, 9, NULL, 2, 'TM48', 48),
  -- TM49 Snatch
  (9002049, 289, 9, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (9002050, 315, 9, NULL, 2, 'TM50', 50),
  -- TM51 Roost
  (9002051, 355, 9, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (9002052, 411, 9, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (9002053, 412, 9, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (9002054, 206, 9, NULL, 2, 'TM54', 54),
  -- TM55 Brine
  (9002055, 362, 9, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (9002056, 374, 9, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (9002057, 451, 9, NULL, 2, 'TM57', 57),
  -- TM58 Endure
  (9002058, 203, 9, NULL, 2, 'TM58', 58),
  -- TM59 Dragon Pulse
  (9002059, 406, 9, NULL, 2, 'TM59', 59),
  -- TM60 Drain Punch
  (9002060, 409, 9, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (9002061, 261, 9, NULL, 2, 'TM61', 61),
  -- TM62 Silver Wind
  (9002062, 318, 9, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (9002063, 373, 9, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (9002064, 153, 9, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (9002065, 421, 9, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (9002066, 371, 9, NULL, 2, 'TM66', 66),
  -- TM67 Recycle
  (9002067, 278, 9, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (9002068, 416, 9, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (9002069, 397, 9, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (9002070, 148, 9, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (9002071, 444, 9, NULL, 2, 'TM71', 71),
  -- TM72 Avalanche
  (9002072, 419, 9, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (9002073, 86, 9, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (9002074, 360, 9, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (9002075, 14, 9, NULL, 2, 'TM75', 75),
  -- TM76 Stealth Rock
  (9002076, 446, 9, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (9002077, 244, 9, NULL, 2, 'TM77', 77),
  -- TM78 Captivate
  (9002078, 445, 9, NULL, 2, 'TM78', 78),
  -- TM79 Dark Pulse
  (9002079, 399, 9, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (9002080, 157, 9, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (9002081, 404, 9, NULL, 2, 'TM81', 81),
  -- TM82 Sleep Talk
  (9002082, 214, 9, NULL, 2, 'TM82', 82),
  -- TM83 Natural Gift
  (9002083, 363, 9, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (9002084, 398, 9, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (9002085, 138, 9, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (9002086, 447, 9, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (9002087, 207, 9, NULL, 2, 'TM87', 87),
  -- TM88 Pluck
  (9002088, 365, 9, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (9002089, 369, 9, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (9002090, 164, 9, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (9002091, 430, 9, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (9002092, 433, 9, NULL, 2, 'TM92', 92),
  -- HM01 Cut
  (9003001, 15, 9, NULL, 3, 'HM01', 93),
  -- HM02 Fly
  (9003002, 19, 9, NULL, 3, 'HM02', 94),
  -- HM03 Surf
  (9003003, 57, 9, NULL, 3, 'HM03', 95),
  -- HM04 Strength
  (9003004, 70, 9, NULL, 3, 'HM04', 96),
  -- HM05 Defog
  (9003005, 432, 9, NULL, 3, 'HM05', 97),
  -- HM06 Rock Smash
  (9003006, 249, 9, NULL, 3, 'HM06', 98),
  -- HM07 Waterfall
  (9003007, 127, 9, NULL, 3, 'HM07', 99),
  -- HM08 Rock Climb
  (9003008, 431, 9, NULL, 3, 'HM08', 100);
