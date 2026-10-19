-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of TMs in Pokémon Brilliant Diamond and Shining Pearl.
-- Cross-check: Serebii Brilliant Diamond / Shining Pearl TM list and PokemonDB BDSP TM list.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Brilliant Diamond / Shining Pearl
-- Rows: 100
-- Scope: Brilliant Diamond / Shining Pearl TM catalog used by machine learnset rows.
-- BDSP has 100 TMs (TM01-TM100). Hidden Moves are represented as TMs in this catalog, not HMs.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Focus Punch
  (21002001, 264, 21, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (21002002, 337, 21, NULL, 2, 'TM02', 2),
  -- TM03 Water Pulse
  (21002003, 352, 21, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (21002004, 347, 21, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (21002005, 46, 21, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (21002006, 92, 21, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (21002007, 258, 21, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (21002008, 339, 21, NULL, 2, 'TM08', 8),
  -- TM09 Bullet Seed
  (21002009, 331, 21, NULL, 2, 'TM09', 9),
  -- TM10 Work Up
  (21002010, 526, 21, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (21002011, 241, 21, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (21002012, 269, 21, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (21002013, 58, 21, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (21002014, 59, 21, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (21002015, 63, 21, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (21002016, 113, 21, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (21002017, 182, 21, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (21002018, 240, 21, NULL, 2, 'TM18', 18),
  -- TM19 Giga Drain
  (21002019, 202, 21, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (21002020, 219, 21, NULL, 2, 'TM20', 20),
  -- TM21 Dazzling Gleam
  (21002021, 605, 21, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (21002022, 76, 21, NULL, 2, 'TM22', 22),
  -- TM23 Iron Tail
  (21002023, 231, 21, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (21002024, 85, 21, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (21002025, 87, 21, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (21002026, 89, 21, NULL, 2, 'TM26', 26),
  -- TM27 Low Sweep
  (21002027, 490, 21, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (21002028, 91, 21, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (21002029, 94, 21, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (21002030, 247, 21, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (21002031, 280, 21, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (21002032, 104, 21, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (21002033, 115, 21, NULL, 2, 'TM33', 33),
  -- TM34 Shock Wave
  (21002034, 351, 21, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (21002035, 53, 21, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (21002036, 188, 21, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (21002037, 201, 21, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (21002038, 126, 21, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (21002039, 317, 21, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (21002040, 332, 21, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (21002041, 259, 21, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (21002042, 263, 21, NULL, 2, 'TM42', 42),
  -- TM43 Volt Switch
  (21002043, 521, 21, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (21002044, 156, 21, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (21002045, 213, 21, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (21002046, 168, 21, NULL, 2, 'TM46', 46),
  -- TM47 Steel Wing
  (21002047, 211, 21, NULL, 2, 'TM47', 47),
  -- TM48 Skill Swap
  (21002048, 285, 21, NULL, 2, 'TM48', 48),
  -- TM49 Scald
  (21002049, 503, 21, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (21002050, 315, 21, NULL, 2, 'TM50', 50),
  -- TM51 Roost
  (21002051, 355, 21, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (21002052, 411, 21, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (21002053, 412, 21, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (21002054, 206, 21, NULL, 2, 'TM54', 54),
  -- TM55 Brine
  (21002055, 362, 21, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (21002056, 374, 21, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (21002057, 451, 21, NULL, 2, 'TM57', 57),
  -- TM58 Endure
  (21002058, 203, 21, NULL, 2, 'TM58', 58),
  -- TM59 Dragon Pulse
  (21002059, 406, 21, NULL, 2, 'TM59', 59),
  -- TM60 Drain Punch
  (21002060, 409, 21, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (21002061, 261, 21, NULL, 2, 'TM61', 61),
  -- TM62 Bug Buzz
  (21002062, 405, 21, NULL, 2, 'TM62', 62),
  -- TM63 Nasty Plot
  (21002063, 417, 21, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (21002064, 153, 21, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (21002065, 421, 21, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (21002066, 371, 21, NULL, 2, 'TM66', 66),
  -- TM67 Recycle
  (21002067, 278, 21, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (21002068, 416, 21, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (21002069, 397, 21, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (21002070, 148, 21, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (21002071, 444, 21, NULL, 2, 'TM71', 71),
  -- TM72 Avalanche
  (21002072, 419, 21, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (21002073, 86, 21, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (21002074, 360, 21, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (21002075, 14, 21, NULL, 2, 'TM75', 75),
  -- TM76 Stealth Rock
  (21002076, 446, 21, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (21002077, 244, 21, NULL, 2, 'TM77', 77),
  -- TM78 Snarl
  (21002078, 555, 21, NULL, 2, 'TM78', 78),
  -- TM79 Dark Pulse
  (21002079, 399, 21, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (21002080, 157, 21, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (21002081, 404, 21, NULL, 2, 'TM81', 81),
  -- TM82 Sleep Talk
  (21002082, 214, 21, NULL, 2, 'TM82', 82),
  -- TM83 Bulldoze
  (21002083, 523, 21, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (21002084, 398, 21, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (21002085, 138, 21, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (21002086, 447, 21, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (21002087, 207, 21, NULL, 2, 'TM87', 87),
  -- TM88 Pluck
  (21002088, 365, 21, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (21002089, 369, 21, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (21002090, 164, 21, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (21002091, 430, 21, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (21002092, 433, 21, NULL, 2, 'TM92', 92),
  -- TM93 Cut
  (21002093, 15, 21, NULL, 2, 'TM93', 93),
  -- TM94 Fly
  (21002094, 19, 21, NULL, 2, 'TM94', 94),
  -- TM95 Surf
  (21002095, 57, 21, NULL, 2, 'TM95', 95),
  -- TM96 Strength
  (21002096, 70, 21, NULL, 2, 'TM96', 96),
  -- TM97 Defog
  (21002097, 432, 21, NULL, 2, 'TM97', 97),
  -- TM98 Rock Smash
  (21002098, 249, 21, NULL, 2, 'TM98', 98),
  -- TM99 Waterfall
  (21002099, 127, 21, NULL, 2, 'TM99', 99),
  -- TM100 Rock Climb
  (21002100, 431, 21, NULL, 2, 'TM100', 100);
