-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of TMs and TRs in Pokémon Sword and Shield.
-- Cross-check: Serebii Sword / Shield TM and TR lists and PokemonDB Sword / Shield TM/TR list.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.move_machines
-- Version Group: Sword / Shield
-- Rows: 200
-- Scope: Sword / Shield TM/TR catalog used by machine learnset rows for base Sword / Shield.
-- Sword / Shield has 100 TMs (TM00-TM99), 100 TRs (TR00-TR99), and no HMs.
-- ============================================================================
INSERT INTO reference.move_machines (id, move_id, version_group_id, game_id, learn_method_id, machine_label, sort_order)
VALUES
  -- TM00 Mega Punch
  (18002000, 5, 18, NULL, 2, 'TM00', 1),
  -- TM01 Mega Kick
  (18002001, 25, 18, NULL, 2, 'TM01', 2),
  -- TM02 Pay Day
  (18002002, 6, 18, NULL, 2, 'TM02', 3),
  -- TM03 Fire Punch
  (18002003, 7, 18, NULL, 2, 'TM03', 4),
  -- TM04 Ice Punch
  (18002004, 8, 18, NULL, 2, 'TM04', 5),
  -- TM05 Thunder Punch
  (18002005, 9, 18, NULL, 2, 'TM05', 6),
  -- TM06 Fly
  (18002006, 19, 18, NULL, 2, 'TM06', 7),
  -- TM07 Pin Missile
  (18002007, 42, 18, NULL, 2, 'TM07', 8),
  -- TM08 Hyper Beam
  (18002008, 63, 18, NULL, 2, 'TM08', 9),
  -- TM09 Giga Impact
  (18002009, 416, 18, NULL, 2, 'TM09', 10),
  -- TM10 Magical Leaf
  (18002010, 345, 18, NULL, 2, 'TM10', 11),
  -- TM11 Solar Beam
  (18002011, 76, 18, NULL, 2, 'TM11', 12),
  -- TM12 Solar Blade
  (18002012, 669, 18, NULL, 2, 'TM12', 13),
  -- TM13 Fire Spin
  (18002013, 83, 18, NULL, 2, 'TM13', 14),
  -- TM14 Thunder Wave
  (18002014, 86, 18, NULL, 2, 'TM14', 15),
  -- TM15 Dig
  (18002015, 91, 18, NULL, 2, 'TM15', 16),
  -- TM16 Screech
  (18002016, 103, 18, NULL, 2, 'TM16', 17),
  -- TM17 Light Screen
  (18002017, 113, 18, NULL, 2, 'TM17', 18),
  -- TM18 Reflect
  (18002018, 115, 18, NULL, 2, 'TM18', 19),
  -- TM19 Safeguard
  (18002019, 219, 18, NULL, 2, 'TM19', 20),
  -- TM20 Self-Destruct
  (18002020, 120, 18, NULL, 2, 'TM20', 21),
  -- TM21 Rest
  (18002021, 156, 18, NULL, 2, 'TM21', 22),
  -- TM22 Rock Slide
  (18002022, 157, 18, NULL, 2, 'TM22', 23),
  -- TM23 Thief
  (18002023, 168, 18, NULL, 2, 'TM23', 24),
  -- TM24 Snore
  (18002024, 173, 18, NULL, 2, 'TM24', 25),
  -- TM25 Protect
  (18002025, 182, 18, NULL, 2, 'TM25', 26),
  -- TM26 Scary Face
  (18002026, 184, 18, NULL, 2, 'TM26', 27),
  -- TM27 Icy Wind
  (18002027, 196, 18, NULL, 2, 'TM27', 28),
  -- TM28 Giga Drain
  (18002028, 202, 18, NULL, 2, 'TM28', 29),
  -- TM29 Charm
  (18002029, 204, 18, NULL, 2, 'TM29', 30),
  -- TM30 Steel Wing
  (18002030, 211, 18, NULL, 2, 'TM30', 31),
  -- TM31 Attract
  (18002031, 213, 18, NULL, 2, 'TM31', 32),
  -- TM32 Sandstorm
  (18002032, 201, 18, NULL, 2, 'TM32', 33),
  -- TM33 Rain Dance
  (18002033, 240, 18, NULL, 2, 'TM33', 34),
  -- TM34 Sunny Day
  (18002034, 241, 18, NULL, 2, 'TM34', 35),
  -- TM35 Hail
  (18002035, 258, 18, NULL, 2, 'TM35', 36),
  -- TM36 Whirlpool
  (18002036, 250, 18, NULL, 2, 'TM36', 37),
  -- TM37 Beat Up
  (18002037, 251, 18, NULL, 2, 'TM37', 38),
  -- TM38 Will-O-Wisp
  (18002038, 261, 18, NULL, 2, 'TM38', 39),
  -- TM39 Facade
  (18002039, 263, 18, NULL, 2, 'TM39', 40),
  -- TM40 Swift
  (18002040, 129, 18, NULL, 2, 'TM40', 41),
  -- TM41 Helping Hand
  (18002041, 270, 18, NULL, 2, 'TM41', 42),
  -- TM42 Revenge
  (18002042, 279, 18, NULL, 2, 'TM42', 43),
  -- TM43 Brick Break
  (18002043, 280, 18, NULL, 2, 'TM43', 44),
  -- TM44 Imprison
  (18002044, 286, 18, NULL, 2, 'TM44', 45),
  -- TM45 Dive
  (18002045, 291, 18, NULL, 2, 'TM45', 46),
  -- TM46 Weather Ball
  (18002046, 311, 18, NULL, 2, 'TM46', 47),
  -- TM47 Fake Tears
  (18002047, 313, 18, NULL, 2, 'TM47', 48),
  -- TM48 Rock Tomb
  (18002048, 317, 18, NULL, 2, 'TM48', 49),
  -- TM49 Sand Tomb
  (18002049, 328, 18, NULL, 2, 'TM49', 50),
  -- TM50 Bullet Seed
  (18002050, 331, 18, NULL, 2, 'TM50', 51),
  -- TM51 Icicle Spear
  (18002051, 333, 18, NULL, 2, 'TM51', 52),
  -- TM52 Bounce
  (18002052, 340, 18, NULL, 2, 'TM52', 53),
  -- TM53 Mud Shot
  (18002053, 341, 18, NULL, 2, 'TM53', 54),
  -- TM54 Rock Blast
  (18002054, 350, 18, NULL, 2, 'TM54', 55),
  -- TM55 Brine
  (18002055, 362, 18, NULL, 2, 'TM55', 56),
  -- TM56 U-turn
  (18002056, 369, 18, NULL, 2, 'TM56', 57),
  -- TM57 Payback
  (18002057, 371, 18, NULL, 2, 'TM57', 58),
  -- TM58 Assurance
  (18002058, 372, 18, NULL, 2, 'TM58', 59),
  -- TM59 Fling
  (18002059, 374, 18, NULL, 2, 'TM59', 60),
  -- TM60 Power Swap
  (18002060, 384, 18, NULL, 2, 'TM60', 61),
  -- TM61 Guard Swap
  (18002061, 385, 18, NULL, 2, 'TM61', 62),
  -- TM62 Speed Swap
  (18002062, 683, 18, NULL, 2, 'TM62', 63),
  -- TM63 Drain Punch
  (18002063, 409, 18, NULL, 2, 'TM63', 64),
  -- TM64 Avalanche
  (18002064, 419, 18, NULL, 2, 'TM64', 65),
  -- TM65 Shadow Claw
  (18002065, 421, 18, NULL, 2, 'TM65', 66),
  -- TM66 Thunder Fang
  (18002066, 422, 18, NULL, 2, 'TM66', 67),
  -- TM67 Ice Fang
  (18002067, 423, 18, NULL, 2, 'TM67', 68),
  -- TM68 Fire Fang
  (18002068, 424, 18, NULL, 2, 'TM68', 69),
  -- TM69 Psycho Cut
  (18002069, 427, 18, NULL, 2, 'TM69', 70),
  -- TM70 Trick Room
  (18002070, 433, 18, NULL, 2, 'TM70', 71),
  -- TM71 Wonder Room
  (18002071, 472, 18, NULL, 2, 'TM71', 72),
  -- TM72 Magic Room
  (18002072, 478, 18, NULL, 2, 'TM72', 73),
  -- TM73 Cross Poison
  (18002073, 440, 18, NULL, 2, 'TM73', 74),
  -- TM74 Venoshock
  (18002074, 474, 18, NULL, 2, 'TM74', 75),
  -- TM75 Low Sweep
  (18002075, 490, 18, NULL, 2, 'TM75', 76),
  -- TM76 Round
  (18002076, 496, 18, NULL, 2, 'TM76', 77),
  -- TM77 Hex
  (18002077, 506, 18, NULL, 2, 'TM77', 78),
  -- TM78 Acrobatics
  (18002078, 512, 18, NULL, 2, 'TM78', 79),
  -- TM79 Retaliate
  (18002079, 514, 18, NULL, 2, 'TM79', 80),
  -- TM80 Volt Switch
  (18002080, 521, 18, NULL, 2, 'TM80', 81),
  -- TM81 Bulldoze
  (18002081, 523, 18, NULL, 2, 'TM81', 82),
  -- TM82 Electroweb
  (18002082, 527, 18, NULL, 2, 'TM82', 83),
  -- TM83 Razor Shell
  (18002083, 534, 18, NULL, 2, 'TM83', 84),
  -- TM84 Tail Slap
  (18002084, 541, 18, NULL, 2, 'TM84', 85),
  -- TM85 Snarl
  (18002085, 555, 18, NULL, 2, 'TM85', 86),
  -- TM86 Phantom Force
  (18002086, 566, 18, NULL, 2, 'TM86', 87),
  -- TM87 Draining Kiss
  (18002087, 577, 18, NULL, 2, 'TM87', 88),
  -- TM88 Grassy Terrain
  (18002088, 580, 18, NULL, 2, 'TM88', 89),
  -- TM89 Misty Terrain
  (18002089, 581, 18, NULL, 2, 'TM89', 90),
  -- TM90 Electric Terrain
  (18002090, 604, 18, NULL, 2, 'TM90', 91),
  -- TM91 Psychic Terrain
  (18002091, 678, 18, NULL, 2, 'TM91', 92),
  -- TM92 Mystical Fire
  (18002092, 595, 18, NULL, 2, 'TM92', 93),
  -- TM93 Eerie Impulse
  (18002093, 598, 18, NULL, 2, 'TM93', 94),
  -- TM94 False Swipe
  (18002094, 206, 18, NULL, 2, 'TM94', 95),
  -- TM95 Air Slash
  (18002095, 403, 18, NULL, 2, 'TM95', 96),
  -- TM96 Smart Strike
  (18002096, 684, 18, NULL, 2, 'TM96', 97),
  -- TM97 Brutal Swing
  (18002097, 693, 18, NULL, 2, 'TM97', 98),
  -- TM98 Stomping Tantrum
  (18002098, 707, 18, NULL, 2, 'TM98', 99),
  -- TM99 Breaking Swipe
  (18002099, 784, 18, NULL, 2, 'TM99', 100),
  -- TR00 Swords Dance
  (18004000, 14, 18, NULL, 4, 'TR00', 101),
  -- TR01 Body Slam
  (18004001, 34, 18, NULL, 4, 'TR01', 102),
  -- TR02 Flamethrower
  (18004002, 53, 18, NULL, 4, 'TR02', 103),
  -- TR03 Hydro Pump
  (18004003, 56, 18, NULL, 4, 'TR03', 104),
  -- TR04 Surf
  (18004004, 57, 18, NULL, 4, 'TR04', 105),
  -- TR05 Ice Beam
  (18004005, 58, 18, NULL, 4, 'TR05', 106),
  -- TR06 Blizzard
  (18004006, 59, 18, NULL, 4, 'TR06', 107),
  -- TR07 Low Kick
  (18004007, 67, 18, NULL, 4, 'TR07', 108),
  -- TR08 Thunderbolt
  (18004008, 85, 18, NULL, 4, 'TR08', 109),
  -- TR09 Thunder
  (18004009, 87, 18, NULL, 4, 'TR09', 110),
  -- TR10 Earthquake
  (18004010, 89, 18, NULL, 4, 'TR10', 111),
  -- TR11 Psychic
  (18004011, 94, 18, NULL, 4, 'TR11', 112),
  -- TR12 Agility
  (18004012, 97, 18, NULL, 4, 'TR12', 113),
  -- TR13 Focus Energy
  (18004013, 116, 18, NULL, 4, 'TR13', 114),
  -- TR14 Metronome
  (18004014, 118, 18, NULL, 4, 'TR14', 115),
  -- TR15 Fire Blast
  (18004015, 126, 18, NULL, 4, 'TR15', 116),
  -- TR16 Waterfall
  (18004016, 127, 18, NULL, 4, 'TR16', 117),
  -- TR17 Amnesia
  (18004017, 133, 18, NULL, 4, 'TR17', 118),
  -- TR18 Leech Life
  (18004018, 141, 18, NULL, 4, 'TR18', 119),
  -- TR19 Tri Attack
  (18004019, 161, 18, NULL, 4, 'TR19', 120),
  -- TR20 Substitute
  (18004020, 164, 18, NULL, 4, 'TR20', 121),
  -- TR21 Reversal
  (18004021, 179, 18, NULL, 4, 'TR21', 122),
  -- TR22 Sludge Bomb
  (18004022, 188, 18, NULL, 4, 'TR22', 123),
  -- TR23 Spikes
  (18004023, 191, 18, NULL, 4, 'TR23', 124),
  -- TR24 Outrage
  (18004024, 200, 18, NULL, 4, 'TR24', 125),
  -- TR25 Psyshock
  (18004025, 473, 18, NULL, 4, 'TR25', 126),
  -- TR26 Endure
  (18004026, 203, 18, NULL, 4, 'TR26', 127),
  -- TR27 Sleep Talk
  (18004027, 214, 18, NULL, 4, 'TR27', 128),
  -- TR28 Megahorn
  (18004028, 224, 18, NULL, 4, 'TR28', 129),
  -- TR29 Baton Pass
  (18004029, 226, 18, NULL, 4, 'TR29', 130),
  -- TR30 Encore
  (18004030, 227, 18, NULL, 4, 'TR30', 131),
  -- TR31 Iron Tail
  (18004031, 231, 18, NULL, 4, 'TR31', 132),
  -- TR32 Crunch
  (18004032, 242, 18, NULL, 4, 'TR32', 133),
  -- TR33 Shadow Ball
  (18004033, 247, 18, NULL, 4, 'TR33', 134),
  -- TR34 Future Sight
  (18004034, 248, 18, NULL, 4, 'TR34', 135),
  -- TR35 Uproar
  (18004035, 253, 18, NULL, 4, 'TR35', 136),
  -- TR36 Heat Wave
  (18004036, 257, 18, NULL, 4, 'TR36', 137),
  -- TR37 Taunt
  (18004037, 269, 18, NULL, 4, 'TR37', 138),
  -- TR38 Trick
  (18004038, 271, 18, NULL, 4, 'TR38', 139),
  -- TR39 Superpower
  (18004039, 276, 18, NULL, 4, 'TR39', 140),
  -- TR40 Skill Swap
  (18004040, 285, 18, NULL, 4, 'TR40', 141),
  -- TR41 Blaze Kick
  (18004041, 299, 18, NULL, 4, 'TR41', 142),
  -- TR42 Hyper Voice
  (18004042, 304, 18, NULL, 4, 'TR42', 143),
  -- TR43 Overheat
  (18004043, 315, 18, NULL, 4, 'TR43', 144),
  -- TR44 Cosmic Power
  (18004044, 322, 18, NULL, 4, 'TR44', 145),
  -- TR45 Muddy Water
  (18004045, 330, 18, NULL, 4, 'TR45', 146),
  -- TR46 Iron Defense
  (18004046, 334, 18, NULL, 4, 'TR46', 147),
  -- TR47 Dragon Claw
  (18004047, 337, 18, NULL, 4, 'TR47', 148),
  -- TR48 Bulk Up
  (18004048, 339, 18, NULL, 4, 'TR48', 149),
  -- TR49 Calm Mind
  (18004049, 347, 18, NULL, 4, 'TR49', 150),
  -- TR50 Leaf Blade
  (18004050, 348, 18, NULL, 4, 'TR50', 151),
  -- TR51 Dragon Dance
  (18004051, 349, 18, NULL, 4, 'TR51', 152),
  -- TR52 Gyro Ball
  (18004052, 360, 18, NULL, 4, 'TR52', 153),
  -- TR53 Close Combat
  (18004053, 370, 18, NULL, 4, 'TR53', 154),
  -- TR54 Toxic Spikes
  (18004054, 390, 18, NULL, 4, 'TR54', 155),
  -- TR55 Flare Blitz
  (18004055, 394, 18, NULL, 4, 'TR55', 156),
  -- TR56 Aura Sphere
  (18004056, 396, 18, NULL, 4, 'TR56', 157),
  -- TR57 Poison Jab
  (18004057, 398, 18, NULL, 4, 'TR57', 158),
  -- TR58 Dark Pulse
  (18004058, 399, 18, NULL, 4, 'TR58', 159),
  -- TR59 Seed Bomb
  (18004059, 402, 18, NULL, 4, 'TR59', 160),
  -- TR60 X-Scissor
  (18004060, 404, 18, NULL, 4, 'TR60', 161),
  -- TR61 Bug Buzz
  (18004061, 405, 18, NULL, 4, 'TR61', 162),
  -- TR62 Dragon Pulse
  (18004062, 406, 18, NULL, 4, 'TR62', 163),
  -- TR63 Power Gem
  (18004063, 408, 18, NULL, 4, 'TR63', 164),
  -- TR64 Focus Blast
  (18004064, 411, 18, NULL, 4, 'TR64', 165),
  -- TR65 Energy Ball
  (18004065, 412, 18, NULL, 4, 'TR65', 166),
  -- TR66 Brave Bird
  (18004066, 413, 18, NULL, 4, 'TR66', 167),
  -- TR67 Earth Power
  (18004067, 414, 18, NULL, 4, 'TR67', 168),
  -- TR68 Nasty Plot
  (18004068, 417, 18, NULL, 4, 'TR68', 169),
  -- TR69 Zen Headbutt
  (18004069, 428, 18, NULL, 4, 'TR69', 170),
  -- TR70 Flash Cannon
  (18004070, 430, 18, NULL, 4, 'TR70', 171),
  -- TR71 Leaf Storm
  (18004071, 437, 18, NULL, 4, 'TR71', 172),
  -- TR72 Power Whip
  (18004072, 438, 18, NULL, 4, 'TR72', 173),
  -- TR73 Gunk Shot
  (18004073, 441, 18, NULL, 4, 'TR73', 174),
  -- TR74 Iron Head
  (18004074, 442, 18, NULL, 4, 'TR74', 175),
  -- TR75 Stone Edge
  (18004075, 444, 18, NULL, 4, 'TR75', 176),
  -- TR76 Stealth Rock
  (18004076, 446, 18, NULL, 4, 'TR76', 177),
  -- TR77 Grass Knot
  (18004077, 447, 18, NULL, 4, 'TR77', 178),
  -- TR78 Sludge Wave
  (18004078, 482, 18, NULL, 4, 'TR78', 179),
  -- TR79 Heavy Slam
  (18004079, 484, 18, NULL, 4, 'TR79', 180),
  -- TR80 Electro Ball
  (18004080, 486, 18, NULL, 4, 'TR80', 181),
  -- TR81 Foul Play
  (18004081, 492, 18, NULL, 4, 'TR81', 182),
  -- TR82 Stored Power
  (18004082, 500, 18, NULL, 4, 'TR82', 183),
  -- TR83 Ally Switch
  (18004083, 502, 18, NULL, 4, 'TR83', 184),
  -- TR84 Scald
  (18004084, 503, 18, NULL, 4, 'TR84', 185),
  -- TR85 Work Up
  (18004085, 526, 18, NULL, 4, 'TR85', 186),
  -- TR86 Wild Charge
  (18004086, 528, 18, NULL, 4, 'TR86', 187),
  -- TR87 Drill Run
  (18004087, 529, 18, NULL, 4, 'TR87', 188),
  -- TR88 Heat Crash
  (18004088, 535, 18, NULL, 4, 'TR88', 189),
  -- TR89 Hurricane
  (18004089, 542, 18, NULL, 4, 'TR89', 190),
  -- TR90 Play Rough
  (18004090, 583, 18, NULL, 4, 'TR90', 191),
  -- TR91 Venom Drench
  (18004091, 599, 18, NULL, 4, 'TR91', 192),
  -- TR92 Dazzling Gleam
  (18004092, 605, 18, NULL, 4, 'TR92', 193),
  -- TR93 Darkest Lariat
  (18004093, 663, 18, NULL, 4, 'TR93', 194),
  -- TR94 High Horsepower
  (18004094, 667, 18, NULL, 4, 'TR94', 195),
  -- TR95 Throat Chop
  (18004095, 675, 18, NULL, 4, 'TR95', 196),
  -- TR96 Pollen Puff
  (18004096, 676, 18, NULL, 4, 'TR96', 197),
  -- TR97 Psychic Fangs
  (18004097, 706, 18, NULL, 4, 'TR97', 198),
  -- TR98 Liquidation
  (18004098, 710, 18, NULL, 4, 'TR98', 199),
  -- TR99 Body Press
  (18004099, 776, 18, NULL, 4, 'TR99', 200);
