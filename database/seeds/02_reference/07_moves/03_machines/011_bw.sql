-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V TM/HM catalog for Black / White.
-- Cross-check: Serebii Black / White TM/HM list and PokemonDB Generation 5 move pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Black / White
-- Rows: 101
-- Scope: Black / White TM and HM catalog used by machine learnset rows.
-- Gen V has 95 TMs and 6 HMs. In Black / White, TM95 Snarl requires the unreleased Lock Capsule and is not normally obtainable.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM01 Hone Claws
  (11002001, 468, 11, NULL, 2, 'TM01', 1),
  -- TM02 Dragon Claw
  (11002002, 337, 11, NULL, 2, 'TM02', 2),
  -- TM03 Psyshock
  (11002003, 473, 11, NULL, 2, 'TM03', 3),
  -- TM04 Calm Mind
  (11002004, 347, 11, NULL, 2, 'TM04', 4),
  -- TM05 Roar
  (11002005, 46, 11, NULL, 2, 'TM05', 5),
  -- TM06 Toxic
  (11002006, 92, 11, NULL, 2, 'TM06', 6),
  -- TM07 Hail
  (11002007, 258, 11, NULL, 2, 'TM07', 7),
  -- TM08 Bulk Up
  (11002008, 339, 11, NULL, 2, 'TM08', 8),
  -- TM09 Venoshock
  (11002009, 474, 11, NULL, 2, 'TM09', 9),
  -- TM10 Hidden Power
  (11002010, 237, 11, NULL, 2, 'TM10', 10),
  -- TM11 Sunny Day
  (11002011, 241, 11, NULL, 2, 'TM11', 11),
  -- TM12 Taunt
  (11002012, 269, 11, NULL, 2, 'TM12', 12),
  -- TM13 Ice Beam
  (11002013, 58, 11, NULL, 2, 'TM13', 13),
  -- TM14 Blizzard
  (11002014, 59, 11, NULL, 2, 'TM14', 14),
  -- TM15 Hyper Beam
  (11002015, 63, 11, NULL, 2, 'TM15', 15),
  -- TM16 Light Screen
  (11002016, 113, 11, NULL, 2, 'TM16', 16),
  -- TM17 Protect
  (11002017, 182, 11, NULL, 2, 'TM17', 17),
  -- TM18 Rain Dance
  (11002018, 240, 11, NULL, 2, 'TM18', 18),
  -- TM19 Telekinesis
  (11002019, 477, 11, NULL, 2, 'TM19', 19),
  -- TM20 Safeguard
  (11002020, 219, 11, NULL, 2, 'TM20', 20),
  -- TM21 Frustration
  (11002021, 218, 11, NULL, 2, 'TM21', 21),
  -- TM22 Solar Beam
  (11002022, 76, 11, NULL, 2, 'TM22', 22),
  -- TM23 Smack Down
  (11002023, 479, 11, NULL, 2, 'TM23', 23),
  -- TM24 Thunderbolt
  (11002024, 85, 11, NULL, 2, 'TM24', 24),
  -- TM25 Thunder
  (11002025, 87, 11, NULL, 2, 'TM25', 25),
  -- TM26 Earthquake
  (11002026, 89, 11, NULL, 2, 'TM26', 26),
  -- TM27 Return
  (11002027, 216, 11, NULL, 2, 'TM27', 27),
  -- TM28 Dig
  (11002028, 91, 11, NULL, 2, 'TM28', 28),
  -- TM29 Psychic
  (11002029, 94, 11, NULL, 2, 'TM29', 29),
  -- TM30 Shadow Ball
  (11002030, 247, 11, NULL, 2, 'TM30', 30),
  -- TM31 Brick Break
  (11002031, 280, 11, NULL, 2, 'TM31', 31),
  -- TM32 Double Team
  (11002032, 104, 11, NULL, 2, 'TM32', 32),
  -- TM33 Reflect
  (11002033, 115, 11, NULL, 2, 'TM33', 33),
  -- TM34 Sludge Wave
  (11002034, 482, 11, NULL, 2, 'TM34', 34),
  -- TM35 Flamethrower
  (11002035, 53, 11, NULL, 2, 'TM35', 35),
  -- TM36 Sludge Bomb
  (11002036, 188, 11, NULL, 2, 'TM36', 36),
  -- TM37 Sandstorm
  (11002037, 201, 11, NULL, 2, 'TM37', 37),
  -- TM38 Fire Blast
  (11002038, 126, 11, NULL, 2, 'TM38', 38),
  -- TM39 Rock Tomb
  (11002039, 317, 11, NULL, 2, 'TM39', 39),
  -- TM40 Aerial Ace
  (11002040, 332, 11, NULL, 2, 'TM40', 40),
  -- TM41 Torment
  (11002041, 259, 11, NULL, 2, 'TM41', 41),
  -- TM42 Facade
  (11002042, 263, 11, NULL, 2, 'TM42', 42),
  -- TM43 Flame Charge
  (11002043, 488, 11, NULL, 2, 'TM43', 43),
  -- TM44 Rest
  (11002044, 156, 11, NULL, 2, 'TM44', 44),
  -- TM45 Attract
  (11002045, 213, 11, NULL, 2, 'TM45', 45),
  -- TM46 Thief
  (11002046, 168, 11, NULL, 2, 'TM46', 46),
  -- TM47 Low Sweep
  (11002047, 490, 11, NULL, 2, 'TM47', 47),
  -- TM48 Round
  (11002048, 496, 11, NULL, 2, 'TM48', 48),
  -- TM49 Echoed Voice
  (11002049, 497, 11, NULL, 2, 'TM49', 49),
  -- TM50 Overheat
  (11002050, 315, 11, NULL, 2, 'TM50', 50),
  -- TM51 Ally Switch
  (11002051, 502, 11, NULL, 2, 'TM51', 51),
  -- TM52 Focus Blast
  (11002052, 411, 11, NULL, 2, 'TM52', 52),
  -- TM53 Energy Ball
  (11002053, 412, 11, NULL, 2, 'TM53', 53),
  -- TM54 False Swipe
  (11002054, 206, 11, NULL, 2, 'TM54', 54),
  -- TM55 Scald
  (11002055, 503, 11, NULL, 2, 'TM55', 55),
  -- TM56 Fling
  (11002056, 374, 11, NULL, 2, 'TM56', 56),
  -- TM57 Charge Beam
  (11002057, 451, 11, NULL, 2, 'TM57', 57),
  -- TM58 Sky Drop
  (11002058, 507, 11, NULL, 2, 'TM58', 58),
  -- TM59 Incinerate
  (11002059, 510, 11, NULL, 2, 'TM59', 59),
  -- TM60 Quash
  (11002060, 511, 11, NULL, 2, 'TM60', 60),
  -- TM61 Will-O-Wisp
  (11002061, 261, 11, NULL, 2, 'TM61', 61),
  -- TM62 Acrobatics
  (11002062, 512, 11, NULL, 2, 'TM62', 62),
  -- TM63 Embargo
  (11002063, 373, 11, NULL, 2, 'TM63', 63),
  -- TM64 Explosion
  (11002064, 153, 11, NULL, 2, 'TM64', 64),
  -- TM65 Shadow Claw
  (11002065, 421, 11, NULL, 2, 'TM65', 65),
  -- TM66 Payback
  (11002066, 371, 11, NULL, 2, 'TM66', 66),
  -- TM67 Retaliate
  (11002067, 514, 11, NULL, 2, 'TM67', 67),
  -- TM68 Giga Impact
  (11002068, 416, 11, NULL, 2, 'TM68', 68),
  -- TM69 Rock Polish
  (11002069, 397, 11, NULL, 2, 'TM69', 69),
  -- TM70 Flash
  (11002070, 148, 11, NULL, 2, 'TM70', 70),
  -- TM71 Stone Edge
  (11002071, 444, 11, NULL, 2, 'TM71', 71),
  -- TM72 Volt Switch
  (11002072, 521, 11, NULL, 2, 'TM72', 72),
  -- TM73 Thunder Wave
  (11002073, 86, 11, NULL, 2, 'TM73', 73),
  -- TM74 Gyro Ball
  (11002074, 360, 11, NULL, 2, 'TM74', 74),
  -- TM75 Swords Dance
  (11002075, 14, 11, NULL, 2, 'TM75', 75),
  -- TM76 Struggle Bug
  (11002076, 522, 11, NULL, 2, 'TM76', 76),
  -- TM77 Psych Up
  (11002077, 244, 11, NULL, 2, 'TM77', 77),
  -- TM78 Bulldoze
  (11002078, 523, 11, NULL, 2, 'TM78', 78),
  -- TM79 Frost Breath
  (11002079, 524, 11, NULL, 2, 'TM79', 79),
  -- TM80 Rock Slide
  (11002080, 157, 11, NULL, 2, 'TM80', 80),
  -- TM81 X-Scissor
  (11002081, 404, 11, NULL, 2, 'TM81', 81),
  -- TM82 Dragon Tail
  (11002082, 525, 11, NULL, 2, 'TM82', 82),
  -- TM83 Work Up
  (11002083, 526, 11, NULL, 2, 'TM83', 83),
  -- TM84 Poison Jab
  (11002084, 398, 11, NULL, 2, 'TM84', 84),
  -- TM85 Dream Eater
  (11002085, 138, 11, NULL, 2, 'TM85', 85),
  -- TM86 Grass Knot
  (11002086, 447, 11, NULL, 2, 'TM86', 86),
  -- TM87 Swagger
  (11002087, 207, 11, NULL, 2, 'TM87', 87),
  -- TM88 Pluck
  (11002088, 365, 11, NULL, 2, 'TM88', 88),
  -- TM89 U-turn
  (11002089, 369, 11, NULL, 2, 'TM89', 89),
  -- TM90 Substitute
  (11002090, 164, 11, NULL, 2, 'TM90', 90),
  -- TM91 Flash Cannon
  (11002091, 430, 11, NULL, 2, 'TM91', 91),
  -- TM92 Trick Room
  (11002092, 433, 11, NULL, 2, 'TM92', 92),
  -- TM93 Wild Charge
  (11002093, 528, 11, NULL, 2, 'TM93', 93),
  -- TM94 Rock Smash
  (11002094, 249, 11, NULL, 2, 'TM94', 94),
  -- TM95 Snarl
  (11002095, 555, 11, NULL, 2, 'TM95', 95),
  -- HM01 Cut
  (11003001, 15, 11, NULL, 3, 'HM01', 96),
  -- HM02 Fly
  (11003002, 19, 11, NULL, 3, 'HM02', 97),
  -- HM03 Surf
  (11003003, 57, 11, NULL, 3, 'HM03', 98),
  -- HM04 Strength
  (11003004, 70, 11, NULL, 3, 'HM04', 99),
  -- HM05 Waterfall
  (11003005, 127, 11, NULL, 3, 'HM05', 100),
  -- HM06 Dive
  (11003006, 291, 11, NULL, 3, 'HM06', 101);
