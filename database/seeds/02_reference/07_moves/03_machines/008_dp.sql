-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV TM/HM catalog for Diamond / Pearl.
-- Cross-check: Serebii Diamond / Pearl TM/HM list and PokemonDB Generation 4 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Diamond / Pearl
-- Rows: 100
-- Scope: Diamond / Pearl TM and HM catalog used by machine learnset rows. HM05 is Defog.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (8002001, 264, 8, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (8002002, 337, 8, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (8002003, 352, 8, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (8002004, 347, 8, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (8002005, 46, 8, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (8002006, 92, 8, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (8002007, 258, 8, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (8002008, 339, 8, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (8002009, 331, 8, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (8002010, 237, 8, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (8002011, 241, 8, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (8002012, 269, 8, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (8002013, 58, 8, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (8002014, 59, 8, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (8002015, 63, 8, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (8002016, 113, 8, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (8002017, 182, 8, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (8002018, 240, 8, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (8002019, 202, 8, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (8002020, 219, 8, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (8002021, 218, 8, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (8002022, 76, 8, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (8002023, 231, 8, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (8002024, 85, 8, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (8002025, 87, 8, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (8002026, 89, 8, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (8002027, 216, 8, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (8002028, 91, 8, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (8002029, 94, 8, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (8002030, 247, 8, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (8002031, 280, 8, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (8002032, 104, 8, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (8002033, 115, 8, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (8002034, 351, 8, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (8002035, 53, 8, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (8002036, 188, 8, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (8002037, 201, 8, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (8002038, 126, 8, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (8002039, 317, 8, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (8002040, 332, 8, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (8002041, 259, 8, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (8002042, 263, 8, NULL, 2, 'TM42', 42),
  -- TM43 Secret Power
  (8002043, 290, 8, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (8002044, 156, 8, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (8002045, 213, 8, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (8002046, 168, 8, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (8002047, 211, 8, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (8002048, 285, 8, NULL, 2, 'TM48', 48),
  -- TM49 Snatch
  (8002049, 289, 8, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (8002050, 315, 8, NULL, 2, 'TM50', 50),
  -- TM51 Roost
  (8002051, 355, 8, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (8002052, 411, 8, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (8002053, 412, 8, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (8002054, 206, 8, NULL, 2, 'TM54', 54),
  -- TM55 Brine
  (8002055, 362, 8, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (8002056, 374, 8, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (8002057, 451, 8, NULL, 2, 'TM57', 57),
  -- TM58 Endure
  (8002058, 203, 8, NULL, 2, 'TM58', 58),
  -- TM59 Dragon Pulse
  (8002059, 406, 8, NULL, 2, 'TM59', 59),
  -- TM60 Drain Punch
  (8002060, 409, 8, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (8002061, 261, 8, NULL, 2, 'TM61', 61),
  -- TM62 Silver Wind
  (8002062, 318, 8, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (8002063, 373, 8, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (8002064, 153, 8, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (8002065, 421, 8, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (8002066, 371, 8, NULL, 2, 'TM66', 66),
  -- TM67 Recycle
  (8002067, 278, 8, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (8002068, 416, 8, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (8002069, 397, 8, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (8002070, 148, 8, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (8002071, 444, 8, NULL, 2, 'TM71', 71),
  -- TM72 Avalanche
  (8002072, 419, 8, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (8002073, 86, 8, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (8002074, 360, 8, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (8002075, 14, 8, NULL, 2, 'TM75', 75),
  -- TM76 Stealth Rock
  (8002076, 446, 8, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (8002077, 244, 8, NULL, 2, 'TM77', 77),
  -- TM78 Captivate
  (8002078, 445, 8, NULL, 2, 'TM78', 78),
  -- TM79 Dark Pulse
  (8002079, 399, 8, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (8002080, 157, 8, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (8002081, 404, 8, NULL, 2, 'TM81', 81),
  -- TM82 Sleep Talk
  (8002082, 214, 8, NULL, 2, 'TM82', 82),
  -- TM83 Natural Gift
  (8002083, 363, 8, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (8002084, 398, 8, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (8002085, 138, 8, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (8002086, 447, 8, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (8002087, 207, 8, NULL, 2, 'TM87', 87),
  -- TM88 Pluck
  (8002088, 365, 8, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (8002089, 369, 8, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (8002090, 164, 8, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (8002091, 430, 8, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (8002092, 433, 8, NULL, 2, 'TM92', 92),
  -- HM01 Cut
  (8003001, 15, 8, NULL, 3, 'HM01', 93),
  -- HM02 Fly
  (8003002, 19, 8, NULL, 3, 'HM02', 94),
  -- HM03 Surf
  (8003003, 57, 8, NULL, 3, 'HM03', 95),
  -- HM04 Strength
  (8003004, 70, 8, NULL, 3, 'HM04', 96),
  -- HM05 Defog
  (8003005, 432, 8, NULL, 3, 'HM05', 97),
  -- HM06 Rock Smash
  (8003006, 249, 8, NULL, 3, 'HM06', 98),
  -- HM07 Waterfall
  (8003007, 127, 8, NULL, 3, 'HM07', 99),
  -- HM08 Rock Climb
  (8003008, 431, 8, NULL, 3, 'HM08', 100);
