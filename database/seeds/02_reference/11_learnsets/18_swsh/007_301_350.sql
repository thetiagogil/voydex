-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Curated Generation VIII learnset baseline, cross-checked structurally against Bulbapedia, Serebii, and PokemonDB game learnset pages.
-- Machine normalization: Bulbapedia Generation VIII TM/TR catalog data.
-- Migration source: legacy Voydex Gen VIII learnset seeds, normalized to clean machine ids and current form identifiers.
-- Product scope: battle-only Zacian/Zamazenta Crowned legacy rows are excluded until battle-only forms are supported.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield learnsets for default forms, species 301-350.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Sableye - Scratch - Level 1
  (302, 30200, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Astonish - Level 3
  (302, 30200, 310, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sableye - Confuse Ray - Level 6
  (302, 30200, 109, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sableye - Shadow Sneak - Level 9
  (302, 30200, 425, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sableye - Fake Out - Level 12
  (302, 30200, 252, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sableye - Disable - Level 15
  (302, 30200, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sableye - Detect - Level 18
  (302, 30200, 197, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sableye - Night Shade - Level 21
  (302, 30200, 101, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sableye - Fury Swipes - Level 24
  (302, 30200, 154, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sableye - Knock Off - Level 27
  (302, 30200, 282, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sableye - Quash - Level 30
  (302, 30200, 511, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sableye - Shadow Claw - Level 33
  (302, 30200, 421, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sableye - Mean Look - Level 36
  (302, 30200, 212, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sableye - Power Gem - Level 39
  (302, 30200, 408, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sableye - Zen Headbutt - Level 42
  (302, 30200, 428, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sableye - Shadow Ball - Level 45
  (302, 30200, 247, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sableye - Foul Play - Level 48
  (302, 30200, 492, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Sableye - Mega Punch - TM00
  (302, 30200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Sableye - Mega Kick - TM01
  (302, 30200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Sableye - Fire Punch - TM03
  (302, 30200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Sableye - Ice Punch - TM04
  (302, 30200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Sableye - Thunder Punch - TM05
  (302, 30200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Sableye - Dig - TM15
  (302, 30200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Sableye - Rest - TM21
  (302, 30200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Sableye - Thief - TM23
  (302, 30200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Sableye - Snore - TM24
  (302, 30200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Sableye - Protect - TM25
  (302, 30200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Sableye - Icy Wind - TM27
  (302, 30200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Sableye - Attract - TM31
  (302, 30200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Sableye - Rain Dance - TM33
  (302, 30200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Sableye - Sunny Day - TM34
  (302, 30200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Sableye - Will-O-Wisp - TM38
  (302, 30200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Sableye - Facade - TM39
  (302, 30200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Sableye - Helping Hand - TM41
  (302, 30200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Sableye - Brick Break - TM43
  (302, 30200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Sableye - Imprison - TM44
  (302, 30200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 37),
  -- Sableye - Rock Tomb - TM48
  (302, 30200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Sableye - Payback - TM57
  (302, 30200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Sableye - Fling - TM59
  (302, 30200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Sableye - Drain Punch - TM63
  (302, 30200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Sableye - Shadow Claw - TM65
  (302, 30200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 42),
  -- Sableye - Wonder Room - TM71
  (302, 30200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 43),
  -- Sableye - Low Sweep - TM75
  (302, 30200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Sableye - Round - TM76
  (302, 30200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Sableye - Hex - TM77
  (302, 30200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 46),
  -- Sableye - Retaliate - TM79
  (302, 30200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Sableye - Snarl - TM85
  (302, 30200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 48),
  -- Sableye - Body Slam - TR01
  (302, 30200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Sableye - Low Kick - TR07
  (302, 30200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 50),
  -- Sableye - Psychic - TR11
  (302, 30200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Sableye - Metronome - TR14
  (302, 30200, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 52),
  -- Sableye - Substitute - TR20
  (302, 30200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Sableye - Endure - TR26
  (302, 30200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Sableye - Sleep Talk - TR27
  (302, 30200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Sableye - Encore - TR30
  (302, 30200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 56),
  -- Sableye - Shadow Ball - TR33
  (302, 30200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Sableye - Taunt - TR37
  (302, 30200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Sableye - Trick - TR38
  (302, 30200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 59),
  -- Sableye - Calm Mind - TR49
  (302, 30200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 60),
  -- Sableye - Gyro Ball - TR52
  (302, 30200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 61),
  -- Sableye - Poison Jab - TR57
  (302, 30200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 62),
  -- Sableye - Dark Pulse - TR58
  (302, 30200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 63),
  -- Sableye - Power Gem - TR63
  (302, 30200, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 64),
  -- Sableye - Nasty Plot - TR68
  (302, 30200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 65),
  -- Sableye - Zen Headbutt - TR69
  (302, 30200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Sableye - Foul Play - TR81
  (302, 30200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 67),
  -- Sableye - Ally Switch - TR83
  (302, 30200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 68),
  -- Sableye - Dazzling Gleam - TR92
  (302, 30200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 69),
  -- Sableye - Recover - Egg
  (302, 30200, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sableye - Torment - Egg
  (302, 30200, 259, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sableye - Flatter - Egg
  (302, 30200, 260, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sableye - Feint - Egg
  (302, 30200, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sableye - Metal Burst - Egg
  (302, 30200, 368, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sableye - Sucker Punch - Egg
  (302, 30200, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mawile - Growl - Level 1
  (303, 30300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Astonish - Level 1
  (303, 30300, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mawile - Fairy Wind - Level 4
  (303, 30300, 584, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mawile - Baton Pass - Level 8
  (303, 30300, 226, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mawile - Bite - Level 12
  (303, 30300, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mawile - Stockpile - Level 16
  (303, 30300, 254, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mawile - Spit Up - Level 16
  (303, 30300, 255, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mawile - Swallow - Level 16
  (303, 30300, 256, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Mawile - Sucker Punch - Level 20
  (303, 30300, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Mawile - Iron Defense - Level 24
  (303, 30300, 334, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mawile - Crunch - Level 28
  (303, 30300, 242, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mawile - Sweet Scent - Level 32
  (303, 30300, 230, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mawile - Iron Head - Level 36
  (303, 30300, 442, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mawile - Taunt - Level 40
  (303, 30300, 269, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Mawile - Fake Tears - Level 44
  (303, 30300, 313, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mawile - Play Rough - Level 48
  (303, 30300, 583, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mawile - Mega Punch - TM00
  (303, 30300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Mawile - Mega Kick - TM01
  (303, 30300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Mawile - Ice Punch - TM04
  (303, 30300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Mawile - Thunder Punch - TM05
  (303, 30300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Mawile - Hyper Beam - TM08
  (303, 30300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Mawile - Giga Impact - TM09
  (303, 30300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Mawile - Solar Beam - TM11
  (303, 30300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Mawile - Rest - TM21
  (303, 30300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Mawile - Rock Slide - TM22
  (303, 30300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Mawile - Snore - TM24
  (303, 30300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Mawile - Protect - TM25
  (303, 30300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Mawile - Icy Wind - TM27
  (303, 30300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Mawile - Attract - TM31
  (303, 30300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Mawile - Sandstorm - TM32
  (303, 30300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Mawile - Rain Dance - TM33
  (303, 30300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Mawile - Sunny Day - TM34
  (303, 30300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Mawile - Facade - TM39
  (303, 30300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Mawile - Helping Hand - TM41
  (303, 30300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Mawile - Brick Break - TM43
  (303, 30300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Mawile - Fake Tears - TM47
  (303, 30300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 36),
  -- Mawile - Rock Tomb - TM48
  (303, 30300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Mawile - Payback - TM57
  (303, 30300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Mawile - Assurance - TM58
  (303, 30300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Mawile - Fling - TM59
  (303, 30300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Mawile - Guard Swap - TM61
  (303, 30300, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 41),
  -- Mawile - Thunder Fang - TM66
  (303, 30300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 42),
  -- Mawile - Ice Fang - TM67
  (303, 30300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 43),
  -- Mawile - Fire Fang - TM68
  (303, 30300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 44),
  -- Mawile - Round - TM76
  (303, 30300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Mawile - Draining Kiss - TM87
  (303, 30300, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 46),
  -- Mawile - Misty Terrain - TM89
  (303, 30300, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 47),
  -- Mawile - False Swipe - TM94
  (303, 30300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 48),
  -- Mawile - Brutal Swing - TM97
  (303, 30300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 49),
  -- Mawile - Swords Dance - TR00
  (303, 30300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Mawile - Body Slam - TR01
  (303, 30300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Mawile - Flamethrower - TR02
  (303, 30300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 52),
  -- Mawile - Ice Beam - TR05
  (303, 30300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 53),
  -- Mawile - Fire Blast - TR15
  (303, 30300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 54),
  -- Mawile - Substitute - TR20
  (303, 30300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Mawile - Sludge Bomb - TR22
  (303, 30300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 56),
  -- Mawile - Endure - TR26
  (303, 30300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Mawile - Sleep Talk - TR27
  (303, 30300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Mawile - Baton Pass - TR29
  (303, 30300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 59),
  -- Mawile - Crunch - TR32
  (303, 30300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 60),
  -- Mawile - Shadow Ball - TR33
  (303, 30300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 61),
  -- Mawile - Taunt - TR37
  (303, 30300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 62),
  -- Mawile - Iron Defense - TR46
  (303, 30300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 63),
  -- Mawile - Dark Pulse - TR58
  (303, 30300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 64),
  -- Mawile - Focus Blast - TR64
  (303, 30300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Mawile - Flash Cannon - TR70
  (303, 30300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 66),
  -- Mawile - Iron Head - TR74
  (303, 30300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 67),
  -- Mawile - Stone Edge - TR75
  (303, 30300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 68),
  -- Mawile - Stealth Rock - TR76
  (303, 30300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 69),
  -- Mawile - Grass Knot - TR77
  (303, 30300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 70),
  -- Mawile - Foul Play - TR81
  (303, 30300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 71),
  -- Mawile - Play Rough - TR90
  (303, 30300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 72),
  -- Mawile - Psychic Fangs - TR97
  (303, 30300, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 73),
  -- Mawile - Slam - Egg
  (303, 30300, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mawile - Seismic Toss - Egg
  (303, 30300, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mawile - Ancient Power - Egg
  (303, 30300, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mawile - Tickle - Egg
  (303, 30300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mawile - Power-Up Punch - Egg
  (303, 30300, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mawile - Steel Beam - Tutor
  (303, 30300, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 79),
  -- Aron - Tackle - Level 1
  (304, 30400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Harden - Level 1
  (304, 30400, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aron - Metal Claw - Level 4
  (304, 30400, 232, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aron - Rock Tomb - Level 8
  (304, 30400, 317, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aron - Roar - Level 12
  (304, 30400, 46, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Aron - Headbutt - Level 16
  (304, 30400, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Aron - Protect - Level 20
  (304, 30400, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Aron - Rock Slide - Level 24
  (304, 30400, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Aron - Iron Head - Level 28
  (304, 30400, 442, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Aron - Metal Sound - Level 33
  (304, 30400, 319, 18, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Aron - Take Down - Level 36
  (304, 30400, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Aron - Autotomize - Level 40
  (304, 30400, 475, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Aron - Iron Tail - Level 44
  (304, 30400, 231, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Aron - Iron Defense - Level 48
  (304, 30400, 334, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Aron - Heavy Slam - Level 52
  (304, 30400, 484, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Aron - Double-Edge - Level 56
  (304, 30400, 38, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Aron - Metal Burst - Level 60
  (304, 30400, 368, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Aron - Dig - TM15
  (304, 30400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Aron - Screech - TM16
  (304, 30400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Aron - Rest - TM21
  (304, 30400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Aron - Rock Slide - TM22
  (304, 30400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Aron - Snore - TM24
  (304, 30400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Aron - Protect - TM25
  (304, 30400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Aron - Attract - TM31
  (304, 30400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Aron - Sandstorm - TM32
  (304, 30400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Aron - Rain Dance - TM33
  (304, 30400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Aron - Sunny Day - TM34
  (304, 30400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Aron - Facade - TM39
  (304, 30400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Aron - Rock Tomb - TM48
  (304, 30400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Aron - Shadow Claw - TM65
  (304, 30400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 30),
  -- Aron - Round - TM76
  (304, 30400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Aron - Bulldoze - TM81
  (304, 30400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 32),
  -- Aron - Body Slam - TR01
  (304, 30400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Aron - Earthquake - TR10
  (304, 30400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 34),
  -- Aron - Substitute - TR20
  (304, 30400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Aron - Reversal - TR21
  (304, 30400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 36),
  -- Aron - Endure - TR26
  (304, 30400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Aron - Sleep Talk - TR27
  (304, 30400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Aron - Iron Tail - TR31
  (304, 30400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Aron - Uproar - TR35
  (304, 30400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 40),
  -- Aron - Superpower - TR39
  (304, 30400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 41),
  -- Aron - Iron Defense - TR46
  (304, 30400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Aron - Earth Power - TR67
  (304, 30400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Aron - Iron Head - TR74
  (304, 30400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 44),
  -- Aron - Stealth Rock - TR76
  (304, 30400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 45),
  -- Aron - Heavy Slam - TR79
  (304, 30400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 46),
  -- Aron - Body Press - TR99
  (304, 30400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 47),
  -- Aron - Stomp - Egg
  (304, 30400, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aron - Curse - Egg
  (304, 30400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aron - Mud-Slap - Egg
  (304, 30400, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aron - Endeavor - Egg
  (304, 30400, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aron - Dragon Rush - Egg
  (304, 30400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aron - Head Smash - Egg
  (304, 30400, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aron - Steel Beam - Tutor
  (304, 30400, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Metal Claw - Level 1
  (305, 30500, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Rock Tomb - Level 1
  (305, 30500, 317, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lairon - Roar - Level 12
  (305, 30500, 46, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lairon - Headbutt - Level 16
  (305, 30500, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lairon - Protect - Level 20
  (305, 30500, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lairon - Rock Slide - Level 24
  (305, 30500, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lairon - Iron Head - Level 28
  (305, 30500, 442, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lairon - Metal Sound - Level 35
  (305, 30500, 319, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Lairon - Take Down - Level 40
  (305, 30500, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Lairon - Autotomize - Level 46
  (305, 30500, 475, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Lairon - Iron Tail - Level 52
  (305, 30500, 231, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Lairon - Iron Defense - Level 58
  (305, 30500, 334, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Lairon - Heavy Slam - Level 64
  (305, 30500, 484, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Lairon - Double-Edge - Level 70
  (305, 30500, 38, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Lairon - Metal Burst - Level 76
  (305, 30500, 368, 18, NULL, 1, 76, NULL, NULL, NULL, 17),
  -- Lairon - Dig - TM15
  (305, 30500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Lairon - Screech - TM16
  (305, 30500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Lairon - Rest - TM21
  (305, 30500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Lairon - Rock Slide - TM22
  (305, 30500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Lairon - Snore - TM24
  (305, 30500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Lairon - Protect - TM25
  (305, 30500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Lairon - Attract - TM31
  (305, 30500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Lairon - Sandstorm - TM32
  (305, 30500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Lairon - Rain Dance - TM33
  (305, 30500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Lairon - Sunny Day - TM34
  (305, 30500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Lairon - Facade - TM39
  (305, 30500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Lairon - Rock Tomb - TM48
  (305, 30500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Lairon - Sand Tomb - TM49
  (305, 30500, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 30),
  -- Lairon - Rock Blast - TM54
  (305, 30500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 31),
  -- Lairon - Shadow Claw - TM65
  (305, 30500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Lairon - Round - TM76
  (305, 30500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Lairon - Bulldoze - TM81
  (305, 30500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Lairon - Stomping Tantrum - TM98
  (305, 30500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Lairon - Body Slam - TR01
  (305, 30500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Lairon - Earthquake - TR10
  (305, 30500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Lairon - Substitute - TR20
  (305, 30500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Lairon - Reversal - TR21
  (305, 30500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 39),
  -- Lairon - Endure - TR26
  (305, 30500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Lairon - Sleep Talk - TR27
  (305, 30500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Lairon - Iron Tail - TR31
  (305, 30500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 42),
  -- Lairon - Uproar - TR35
  (305, 30500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Lairon - Superpower - TR39
  (305, 30500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 44),
  -- Lairon - Iron Defense - TR46
  (305, 30500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Lairon - Earth Power - TR67
  (305, 30500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 46),
  -- Lairon - Iron Head - TR74
  (305, 30500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 47),
  -- Lairon - Stone Edge - TR75
  (305, 30500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 48),
  -- Lairon - Stealth Rock - TR76
  (305, 30500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 49),
  -- Lairon - Heavy Slam - TR79
  (305, 30500, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 50),
  -- Lairon - Body Press - TR99
  (305, 30500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 51),
  -- Lairon - Steel Beam - Tutor
  (305, 30500, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 52),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Metal Claw - Level 1
  (306, 30600, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Rock Tomb - Level 1
  (306, 30600, 317, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aggron - Roar - Level 12
  (306, 30600, 46, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Aggron - Headbutt - Level 16
  (306, 30600, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Aggron - Protect - Level 20
  (306, 30600, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Aggron - Rock Slide - Level 24
  (306, 30600, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Aggron - Iron Head - Level 28
  (306, 30600, 442, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Aggron - Metal Sound - Level 35
  (306, 30600, 319, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Aggron - Take Down - Level 40
  (306, 30600, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Aggron - Autotomize - Level 48
  (306, 30600, 475, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Aggron - Iron Tail - Level 56
  (306, 30600, 231, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Aggron - Iron Defense - Level 64
  (306, 30600, 334, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Aggron - Heavy Slam - Level 72
  (306, 30600, 484, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Aggron - Double-Edge - Level 80
  (306, 30600, 38, 18, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Aggron - Metal Burst - Level 88
  (306, 30600, 368, 18, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Aggron - Mega Punch - TM00
  (306, 30600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Aggron - Mega Kick - TM01
  (306, 30600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Aggron - Fire Punch - TM03
  (306, 30600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Aggron - Ice Punch - TM04
  (306, 30600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Aggron - Thunder Punch - TM05
  (306, 30600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Aggron - Hyper Beam - TM08
  (306, 30600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Aggron - Giga Impact - TM09
  (306, 30600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Aggron - Solar Beam - TM11
  (306, 30600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 25),
  -- Aggron - Thunder Wave - TM14
  (306, 30600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 26),
  -- Aggron - Dig - TM15
  (306, 30600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 27),
  -- Aggron - Screech - TM16
  (306, 30600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 28),
  -- Aggron - Rest - TM21
  (306, 30600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Aggron - Rock Slide - TM22
  (306, 30600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 30),
  -- Aggron - Snore - TM24
  (306, 30600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Aggron - Protect - TM25
  (306, 30600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Aggron - Scary Face - TM26
  (306, 30600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 33),
  -- Aggron - Icy Wind - TM27
  (306, 30600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 34),
  -- Aggron - Attract - TM31
  (306, 30600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Aggron - Sandstorm - TM32
  (306, 30600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 36),
  -- Aggron - Rain Dance - TM33
  (306, 30600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 37),
  -- Aggron - Sunny Day - TM34
  (306, 30600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 38),
  -- Aggron - Whirlpool - TM36
  (306, 30600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 39),
  -- Aggron - Facade - TM39
  (306, 30600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Aggron - Brick Break - TM43
  (306, 30600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 41),
  -- Aggron - Rock Tomb - TM48
  (306, 30600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 42),
  -- Aggron - Sand Tomb - TM49
  (306, 30600, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 43),
  -- Aggron - Rock Blast - TM54
  (306, 30600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 44),
  -- Aggron - Payback - TM57
  (306, 30600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 45),
  -- Aggron - Fling - TM59
  (306, 30600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 46),
  -- Aggron - Avalanche - TM64
  (306, 30600, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 47),
  -- Aggron - Shadow Claw - TM65
  (306, 30600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 48),
  -- Aggron - Round - TM76
  (306, 30600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 49),
  -- Aggron - Bulldoze - TM81
  (306, 30600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Aggron - Smart Strike - TM96
  (306, 30600, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 51),
  -- Aggron - Brutal Swing - TM97
  (306, 30600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 52),
  -- Aggron - Stomping Tantrum - TM98
  (306, 30600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 53),
  -- Aggron - Body Slam - TR01
  (306, 30600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 54),
  -- Aggron - Flamethrower - TR02
  (306, 30600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 55),
  -- Aggron - Hydro Pump - TR03
  (306, 30600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 56),
  -- Aggron - Surf - TR04
  (306, 30600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 57),
  -- Aggron - Ice Beam - TR05
  (306, 30600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 58),
  -- Aggron - Blizzard - TR06
  (306, 30600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 59),
  -- Aggron - Low Kick - TR07
  (306, 30600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 60),
  -- Aggron - Thunderbolt - TR08
  (306, 30600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 61),
  -- Aggron - Thunder - TR09
  (306, 30600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 62),
  -- Aggron - Earthquake - TR10
  (306, 30600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 63),
  -- Aggron - Fire Blast - TR15
  (306, 30600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 64),
  -- Aggron - Substitute - TR20
  (306, 30600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 65),
  -- Aggron - Reversal - TR21
  (306, 30600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 66),
  -- Aggron - Outrage - TR24
  (306, 30600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 67),
  -- Aggron - Endure - TR26
  (306, 30600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 68),
  -- Aggron - Sleep Talk - TR27
  (306, 30600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 69),
  -- Aggron - Iron Tail - TR31
  (306, 30600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 70),
  -- Aggron - Crunch - TR32
  (306, 30600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 71),
  -- Aggron - Uproar - TR35
  (306, 30600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 72),
  -- Aggron - Taunt - TR37
  (306, 30600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 73),
  -- Aggron - Superpower - TR39
  (306, 30600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 74),
  -- Aggron - Iron Defense - TR46
  (306, 30600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 75),
  -- Aggron - Dragon Claw - TR47
  (306, 30600, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 76),
  -- Aggron - Dark Pulse - TR58
  (306, 30600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 77),
  -- Aggron - Dragon Pulse - TR62
  (306, 30600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 78),
  -- Aggron - Focus Blast - TR64
  (306, 30600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 79),
  -- Aggron - Earth Power - TR67
  (306, 30600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 80),
  -- Aggron - Flash Cannon - TR70
  (306, 30600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 81),
  -- Aggron - Iron Head - TR74
  (306, 30600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 82),
  -- Aggron - Stone Edge - TR75
  (306, 30600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 83),
  -- Aggron - Stealth Rock - TR76
  (306, 30600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 84),
  -- Aggron - Heavy Slam - TR79
  (306, 30600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 85),
  -- Aggron - High Horsepower - TR94
  (306, 30600, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 86),
  -- Aggron - Body Press - TR99
  (306, 30600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 87),
  -- Aggron - Steel Beam - Tutor
  (306, 30600, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 88),
  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Level 1
  (309, 30900, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 4
  (309, 30900, 43, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 8
  (309, 30900, 336, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 12
  (309, 30900, 98, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electrike - Shock Wave - Level 16
  (309, 30900, 351, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electrike - Bite - Level 20
  (309, 30900, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electrike - Thunder Fang - Level 24
  (309, 30900, 422, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electrike - Roar - Level 28
  (309, 30900, 46, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electrike - Discharge - Level 32
  (309, 30900, 435, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Electrike - Charge - Level 36
  (309, 30900, 268, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Electrike - Wild Charge - Level 40
  (309, 30900, 528, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Electrike - Thunder - Level 44
  (309, 30900, 87, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Electrike - Thunder Wave - TM14
  (309, 30900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Electrike - Light Screen - TM17
  (309, 30900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Electrike - Rest - TM21
  (309, 30900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Electrike - Thief - TM23
  (309, 30900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Electrike - Snore - TM24
  (309, 30900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Electrike - Protect - TM25
  (309, 30900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Electrike - Attract - TM31
  (309, 30900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Electrike - Rain Dance - TM33
  (309, 30900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Electrike - Facade - TM39
  (309, 30900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Electrike - Swift - TM40
  (309, 30900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Electrike - Thunder Fang - TM66
  (309, 30900, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 24),
  -- Electrike - Ice Fang - TM67
  (309, 30900, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 25),
  -- Electrike - Fire Fang - TM68
  (309, 30900, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 26),
  -- Electrike - Round - TM76
  (309, 30900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Electrike - Volt Switch - TM80
  (309, 30900, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 28),
  -- Electrike - Snarl - TM85
  (309, 30900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 29),
  -- Electrike - Eerie Impulse - TM93
  (309, 30900, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 30),
  -- Electrike - Body Slam - TR01
  (309, 30900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 31),
  -- Electrike - Flamethrower - TR02
  (309, 30900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 32),
  -- Electrike - Thunderbolt - TR08
  (309, 30900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Electrike - Thunder - TR09
  (309, 30900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Electrike - Agility - TR12
  (309, 30900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 35),
  -- Electrike - Substitute - TR20
  (309, 30900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Electrike - Endure - TR26
  (309, 30900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Electrike - Sleep Talk - TR27
  (309, 30900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Electrike - Iron Tail - TR31
  (309, 30900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Electrike - Crunch - TR32
  (309, 30900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Electrike - Uproar - TR35
  (309, 30900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Electrike - Electro Ball - TR80
  (309, 30900, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 42),
  -- Electrike - Wild Charge - TR86
  (309, 30900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 43),
  -- Electrike - Psychic Fangs - TR97
  (309, 30900, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 44),
  -- Electrike - Headbutt - Egg
  (309, 30900, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Electrike - Curse - Egg
  (309, 30900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Electrike - Spark - Egg
  (309, 30900, 209, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrike - Switcheroo - Egg
  (309, 30900, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Thunder Wave - Level 1
  (310, 31000, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Howl - Level 1
  (310, 31000, 336, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Fire Fang - Level 1
  (310, 31000, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Manectric - Quick Attack - Level 12
  (310, 31000, 98, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Manectric - Shock Wave - Level 16
  (310, 31000, 351, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Manectric - Bite - Level 20
  (310, 31000, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Manectric - Thunder Fang - Level 24
  (310, 31000, 422, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Manectric - Roar - Level 30
  (310, 31000, 46, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Manectric - Discharge - Level 36
  (310, 31000, 435, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Manectric - Charge - Level 42
  (310, 31000, 268, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Manectric - Wild Charge - Level 48
  (310, 31000, 528, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Manectric - Thunder - Level 54
  (310, 31000, 87, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Manectric - Electric Terrain - Level 60
  (310, 31000, 604, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Manectric - Hyper Beam - TM08
  (310, 31000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Manectric - Giga Impact - TM09
  (310, 31000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Manectric - Thunder Wave - TM14
  (310, 31000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Manectric - Light Screen - TM17
  (310, 31000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Manectric - Rest - TM21
  (310, 31000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Manectric - Thief - TM23
  (310, 31000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Manectric - Snore - TM24
  (310, 31000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Manectric - Protect - TM25
  (310, 31000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Manectric - Scary Face - TM26
  (310, 31000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Manectric - Attract - TM31
  (310, 31000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Manectric - Rain Dance - TM33
  (310, 31000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Manectric - Facade - TM39
  (310, 31000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Manectric - Swift - TM40
  (310, 31000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Manectric - Thunder Fang - TM66
  (310, 31000, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 29),
  -- Manectric - Ice Fang - TM67
  (310, 31000, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 30),
  -- Manectric - Fire Fang - TM68
  (310, 31000, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 31),
  -- Manectric - Round - TM76
  (310, 31000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Manectric - Volt Switch - TM80
  (310, 31000, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 33),
  -- Manectric - Snarl - TM85
  (310, 31000, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 34),
  -- Manectric - Electric Terrain - TM90
  (310, 31000, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 35),
  -- Manectric - Eerie Impulse - TM93
  (310, 31000, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 36),
  -- Manectric - Body Slam - TR01
  (310, 31000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Manectric - Flamethrower - TR02
  (310, 31000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 38),
  -- Manectric - Thunderbolt - TR08
  (310, 31000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 39),
  -- Manectric - Thunder - TR09
  (310, 31000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 40),
  -- Manectric - Agility - TR12
  (310, 31000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Manectric - Substitute - TR20
  (310, 31000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Manectric - Endure - TR26
  (310, 31000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Manectric - Sleep Talk - TR27
  (310, 31000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Manectric - Iron Tail - TR31
  (310, 31000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Manectric - Crunch - TR32
  (310, 31000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Manectric - Uproar - TR35
  (310, 31000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 47),
  -- Manectric - Hyper Voice - TR42
  (310, 31000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Manectric - Overheat - TR43
  (310, 31000, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 49),
  -- Manectric - Electro Ball - TR80
  (310, 31000, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 50),
  -- Manectric - Wild Charge - TR86
  (310, 31000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 51),
  -- Manectric - Psychic Fangs - TR97
  (310, 31000, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 52),
  -- Roselia - Poison Sting - Level 1
  (315, 31500, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roselia - Growth - Level 1
  (315, 31500, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 1
  (315, 31500, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roselia - Worry Seed - Level 1
  (315, 31500, 388, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Roselia - Mega Drain - Level 5
  (315, 31500, 72, 18, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Roselia - Leech Seed - Level 10
  (315, 31500, 73, 18, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Roselia - Magical Leaf - Level 15
  (315, 31500, 345, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Roselia - Toxic Spikes - Level 20
  (315, 31500, 390, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Roselia - Sweet Scent - Level 25
  (315, 31500, 230, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Roselia - Giga Drain - Level 30
  (315, 31500, 202, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Roselia - Synthesis - Level 35
  (315, 31500, 235, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Roselia - Toxic - Level 40
  (315, 31500, 92, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Roselia - Petal Blizzard - Level 45
  (315, 31500, 572, 18, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Roselia - Aromatherapy - Level 50
  (315, 31500, 312, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Roselia - Ingrain - Level 55
  (315, 31500, 275, 18, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Roselia - Petal Dance - Level 60
  (315, 31500, 80, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Roselia - Poison Sting - Evolution
  (315, 31500, 40, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Roselia - Pin Missile - TM07
  (315, 31500, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 19),
  -- Roselia - Magical Leaf - TM10
  (315, 31500, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 20),
  -- Roselia - Solar Beam - TM11
  (315, 31500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Roselia - Rest - TM21
  (315, 31500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Roselia - Snore - TM24
  (315, 31500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Roselia - Protect - TM25
  (315, 31500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Roselia - Giga Drain - TM28
  (315, 31500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Roselia - Attract - TM31
  (315, 31500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Roselia - Rain Dance - TM33
  (315, 31500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Roselia - Sunny Day - TM34
  (315, 31500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Roselia - Facade - TM39
  (315, 31500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Roselia - Swift - TM40
  (315, 31500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Roselia - Weather Ball - TM46
  (315, 31500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Roselia - Bullet Seed - TM50
  (315, 31500, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Roselia - Venoshock - TM74
  (315, 31500, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 33),
  -- Roselia - Round - TM76
  (315, 31500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Roselia - Swords Dance - TR00
  (315, 31500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Roselia - Body Slam - TR01
  (315, 31500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Roselia - Substitute - TR20
  (315, 31500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Roselia - Sludge Bomb - TR22
  (315, 31500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 38),
  -- Roselia - Spikes - TR23
  (315, 31500, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 39),
  -- Roselia - Endure - TR26
  (315, 31500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Roselia - Sleep Talk - TR27
  (315, 31500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Roselia - Shadow Ball - TR33
  (315, 31500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Roselia - Uproar - TR35
  (315, 31500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Roselia - Toxic Spikes - TR54
  (315, 31500, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 44),
  -- Roselia - Poison Jab - TR57
  (315, 31500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Roselia - Seed Bomb - TR59
  (315, 31500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 46),
  -- Roselia - Energy Ball - TR65
  (315, 31500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Roselia - Leaf Storm - TR71
  (315, 31500, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 48),
  -- Roselia - Power Whip - TR72
  (315, 31500, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 49),
  -- Roselia - Grass Knot - TR77
  (315, 31500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 50),
  -- Roselia - Dazzling Gleam - TR92
  (315, 31500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 51),
  -- Roselia - Razor Leaf - Egg
  (315, 31500, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roselia - Sleep Powder - Egg
  (315, 31500, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roselia - Cotton Spore - Egg
  (315, 31500, 178, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Synthesis - Egg
  (315, 31500, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Roselia - Extrasensory - Egg
  (315, 31500, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Roselia - Life Dew - Egg
  (315, 31500, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Aqua Jet - Level 1
  (318, 31800, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Poison Fang - Level 4
  (318, 31800, 305, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carvanha - Scary Face - Level 12
  (318, 31800, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Carvanha - Bite - Level 16
  (318, 31800, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Carvanha - Ice Fang - Level 20
  (318, 31800, 423, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Carvanha - Screech - Level 24
  (318, 31800, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Carvanha - Swagger - Level 28
  (318, 31800, 207, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Carvanha - Crunch - Level 32
  (318, 31800, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Carvanha - Agility - Level 36
  (318, 31800, 97, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Carvanha - Liquidation - Level 40
  (318, 31800, 710, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Carvanha - Take Down - Level 44
  (318, 31800, 36, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Carvanha - Screech - TM16
  (318, 31800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 14),
  -- Carvanha - Rest - TM21
  (318, 31800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Carvanha - Thief - TM23
  (318, 31800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Carvanha - Snore - TM24
  (318, 31800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Carvanha - Protect - TM25
  (318, 31800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Carvanha - Scary Face - TM26
  (318, 31800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 19),
  -- Carvanha - Icy Wind - TM27
  (318, 31800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Carvanha - Attract - TM31
  (318, 31800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Carvanha - Rain Dance - TM33
  (318, 31800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Carvanha - Hail - TM35
  (318, 31800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Carvanha - Whirlpool - TM36
  (318, 31800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 24),
  -- Carvanha - Facade - TM39
  (318, 31800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Carvanha - Swift - TM40
  (318, 31800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Carvanha - Dive - TM45
  (318, 31800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Carvanha - Bounce - TM52
  (318, 31800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 28),
  -- Carvanha - Brine - TM55
  (318, 31800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 29),
  -- Carvanha - Payback - TM57
  (318, 31800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Carvanha - Assurance - TM58
  (318, 31800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Carvanha - Ice Fang - TM67
  (318, 31800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 32),
  -- Carvanha - Round - TM76
  (318, 31800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Carvanha - Retaliate - TM79
  (318, 31800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Carvanha - Snarl - TM85
  (318, 31800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 35),
  -- Carvanha - Hydro Pump - TR03
  (318, 31800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Carvanha - Surf - TR04
  (318, 31800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Carvanha - Ice Beam - TR05
  (318, 31800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Carvanha - Blizzard - TR06
  (318, 31800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Carvanha - Agility - TR12
  (318, 31800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Carvanha - Focus Energy - TR13
  (318, 31800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 41),
  -- Carvanha - Waterfall - TR16
  (318, 31800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 42),
  -- Carvanha - Substitute - TR20
  (318, 31800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Carvanha - Endure - TR26
  (318, 31800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Carvanha - Sleep Talk - TR27
  (318, 31800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Carvanha - Crunch - TR32
  (318, 31800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Carvanha - Uproar - TR35
  (318, 31800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 47),
  -- Carvanha - Taunt - TR37
  (318, 31800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 48),
  -- Carvanha - Dark Pulse - TR58
  (318, 31800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 49),
  -- Carvanha - Zen Headbutt - TR69
  (318, 31800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Carvanha - Scald - TR84
  (318, 31800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 51),
  -- Carvanha - Psychic Fangs - TR97
  (318, 31800, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 52),
  -- Carvanha - Liquidation - TR98
  (318, 31800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 53),
  -- Carvanha - Thrash - Egg
  (318, 31800, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Carvanha - Double-Edge - Egg
  (318, 31800, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Carvanha - Destiny Bond - Egg
  (318, 31800, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Carvanha - Ancient Power - Egg
  (318, 31800, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Carvanha - Water Pulse - Egg
  (318, 31800, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Focus Energy - Level 1
  (319, 31900, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Slash - Level 1
  (319, 31900, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Poison Fang - Level 1
  (319, 31900, 305, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sharpedo - Night Slash - Level 1
  (319, 31900, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sharpedo - Aqua Jet - Level 1
  (319, 31900, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sharpedo - Scary Face - Level 12
  (319, 31900, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Sharpedo - Bite - Level 16
  (319, 31900, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Sharpedo - Ice Fang - Level 20
  (319, 31900, 423, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Sharpedo - Screech - Level 24
  (319, 31900, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sharpedo - Swagger - Level 28
  (319, 31900, 207, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sharpedo - Crunch - Level 34
  (319, 31900, 242, 18, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Sharpedo - Agility - Level 40
  (319, 31900, 97, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Sharpedo - Liquidation - Level 46
  (319, 31900, 710, 18, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Sharpedo - Take Down - Level 52
  (319, 31900, 36, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Sharpedo - Slash - Evolution
  (319, 31900, 163, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Sharpedo - Hyper Beam - TM08
  (319, 31900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Sharpedo - Giga Impact - TM09
  (319, 31900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Sharpedo - Screech - TM16
  (319, 31900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Sharpedo - Rest - TM21
  (319, 31900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Sharpedo - Thief - TM23
  (319, 31900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Sharpedo - Snore - TM24
  (319, 31900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Sharpedo - Protect - TM25
  (319, 31900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Sharpedo - Scary Face - TM26
  (319, 31900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Sharpedo - Icy Wind - TM27
  (319, 31900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Sharpedo - Attract - TM31
  (319, 31900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Sharpedo - Rain Dance - TM33
  (319, 31900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Sharpedo - Hail - TM35
  (319, 31900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Sharpedo - Whirlpool - TM36
  (319, 31900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Sharpedo - Facade - TM39
  (319, 31900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Sharpedo - Swift - TM40
  (319, 31900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Sharpedo - Dive - TM45
  (319, 31900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 32),
  -- Sharpedo - Rock Tomb - TM48
  (319, 31900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Sharpedo - Bounce - TM52
  (319, 31900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 34),
  -- Sharpedo - Brine - TM55
  (319, 31900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Sharpedo - Payback - TM57
  (319, 31900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Sharpedo - Assurance - TM58
  (319, 31900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Sharpedo - Avalanche - TM64
  (319, 31900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 38),
  -- Sharpedo - Ice Fang - TM67
  (319, 31900, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 39),
  -- Sharpedo - Round - TM76
  (319, 31900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Sharpedo - Retaliate - TM79
  (319, 31900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Sharpedo - Bulldoze - TM81
  (319, 31900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Sharpedo - Snarl - TM85
  (319, 31900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 43),
  -- Sharpedo - Hydro Pump - TR03
  (319, 31900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Sharpedo - Surf - TR04
  (319, 31900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Sharpedo - Ice Beam - TR05
  (319, 31900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Sharpedo - Blizzard - TR06
  (319, 31900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Sharpedo - Earthquake - TR10
  (319, 31900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Sharpedo - Agility - TR12
  (319, 31900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 49),
  -- Sharpedo - Focus Energy - TR13
  (319, 31900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Sharpedo - Waterfall - TR16
  (319, 31900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Sharpedo - Substitute - TR20
  (319, 31900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Sharpedo - Endure - TR26
  (319, 31900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Sharpedo - Sleep Talk - TR27
  (319, 31900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Sharpedo - Crunch - TR32
  (319, 31900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 55),
  -- Sharpedo - Uproar - TR35
  (319, 31900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 56),
  -- Sharpedo - Taunt - TR37
  (319, 31900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 57),
  -- Sharpedo - Close Combat - TR53
  (319, 31900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 58),
  -- Sharpedo - Poison Jab - TR57
  (319, 31900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 59),
  -- Sharpedo - Dark Pulse - TR58
  (319, 31900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 60),
  -- Sharpedo - Zen Headbutt - TR69
  (319, 31900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 61),
  -- Sharpedo - Scald - TR84
  (319, 31900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 62),
  -- Sharpedo - Psychic Fangs - TR97
  (319, 31900, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 63),
  -- Sharpedo - Liquidation - TR98
  (319, 31900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 64),
  -- Wailmer - Splash - Level 1
  (320, 32000, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 3
  (320, 32000, 45, 18, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Wailmer - Astonish - Level 6
  (320, 32000, 310, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Wailmer - Water Gun - Level 12
  (320, 32000, 55, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Wailmer - Mist - Level 15
  (320, 32000, 54, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wailmer - Water Pulse - Level 18
  (320, 32000, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Wailmer - Heavy Slam - Level 21
  (320, 32000, 484, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wailmer - Brine - Level 24
  (320, 32000, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wailmer - Whirlpool - Level 27
  (320, 32000, 250, 18, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wailmer - Dive - Level 30
  (320, 32000, 291, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Wailmer - Bounce - Level 33
  (320, 32000, 340, 18, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Wailmer - Body Slam - Level 36
  (320, 32000, 34, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Wailmer - Rest - Level 39
  (320, 32000, 156, 18, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Wailmer - Amnesia - Level 42
  (320, 32000, 133, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Wailmer - Hydro Pump - Level 45
  (320, 32000, 56, 18, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Wailmer - Water Spout - Level 48
  (320, 32000, 323, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Wailmer - Self-Destruct - TM20
  (320, 32000, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 17),
  -- Wailmer - Rest - TM21
  (320, 32000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Wailmer - Snore - TM24
  (320, 32000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Wailmer - Protect - TM25
  (320, 32000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Wailmer - Icy Wind - TM27
  (320, 32000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Wailmer - Attract - TM31
  (320, 32000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Wailmer - Rain Dance - TM33
  (320, 32000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Wailmer - Hail - TM35
  (320, 32000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Wailmer - Whirlpool - TM36
  (320, 32000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Wailmer - Facade - TM39
  (320, 32000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Wailmer - Dive - TM45
  (320, 32000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Wailmer - Weather Ball - TM46
  (320, 32000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 28),
  -- Wailmer - Rock Tomb - TM48
  (320, 32000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Wailmer - Bounce - TM52
  (320, 32000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Wailmer - Brine - TM55
  (320, 32000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Wailmer - Avalanche - TM64
  (320, 32000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 32),
  -- Wailmer - Round - TM76
  (320, 32000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Wailmer - Bulldoze - TM81
  (320, 32000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Wailmer - Body Slam - TR01
  (320, 32000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Wailmer - Hydro Pump - TR03
  (320, 32000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Wailmer - Surf - TR04
  (320, 32000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Wailmer - Ice Beam - TR05
  (320, 32000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Wailmer - Blizzard - TR06
  (320, 32000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Wailmer - Earthquake - TR10
  (320, 32000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Wailmer - Waterfall - TR16
  (320, 32000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 41),
  -- Wailmer - Amnesia - TR17
  (320, 32000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Wailmer - Substitute - TR20
  (320, 32000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Wailmer - Endure - TR26
  (320, 32000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Wailmer - Sleep Talk - TR27
  (320, 32000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Wailmer - Hyper Voice - TR42
  (320, 32000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 46),
  -- Wailmer - Zen Headbutt - TR69
  (320, 32000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 47),
  -- Wailmer - Heavy Slam - TR79
  (320, 32000, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 48),
  -- Wailmer - Scald - TR84
  (320, 32000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 49),
  -- Wailmer - Body Press - TR99
  (320, 32000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 50),
  -- Wailmer - Thrash - Egg
  (320, 32000, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailmer - Double-Edge - Egg
  (320, 32000, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailmer - Fissure - Egg
  (320, 32000, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailmer - Defense Curl - Egg
  (320, 32000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailmer - Curse - Egg
  (320, 32000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wailmer - Rollout - Egg
  (320, 32000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wailmer - Tickle - Egg
  (320, 32000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wailmer - Aqua Ring - Egg
  (320, 32000, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wailmer - Soak - Egg
  (320, 32000, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wailord - Growl - Level 1
  (321, 32100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailord - Water Gun - Level 1
  (321, 32100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wailord - Splash - Level 1
  (321, 32100, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wailord - Astonish - Level 1
  (321, 32100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wailord - Soak - Level 1
  (321, 32100, 487, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wailord - Noble Roar - Level 1
  (321, 32100, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wailord - Mist - Level 15
  (321, 32100, 54, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wailord - Water Pulse - Level 18
  (321, 32100, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Wailord - Heavy Slam - Level 21
  (321, 32100, 484, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Wailord - Brine - Level 24
  (321, 32100, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Wailord - Whirlpool - Level 27
  (321, 32100, 250, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Wailord - Dive - Level 30
  (321, 32100, 291, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Wailord - Bounce - Level 33
  (321, 32100, 340, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Wailord - Body Slam - Level 36
  (321, 32100, 34, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Wailord - Rest - Level 39
  (321, 32100, 156, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Wailord - Amnesia - Level 44
  (321, 32100, 133, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Wailord - Hydro Pump - Level 49
  (321, 32100, 56, 18, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Wailord - Water Spout - Level 54
  (321, 32100, 323, 18, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Wailord - Hyper Beam - TM08
  (321, 32100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Wailord - Giga Impact - TM09
  (321, 32100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Wailord - Self-Destruct - TM20
  (321, 32100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 21),
  -- Wailord - Rest - TM21
  (321, 32100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Wailord - Snore - TM24
  (321, 32100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Wailord - Protect - TM25
  (321, 32100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Wailord - Icy Wind - TM27
  (321, 32100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Wailord - Attract - TM31
  (321, 32100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Wailord - Rain Dance - TM33
  (321, 32100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Wailord - Hail - TM35
  (321, 32100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Wailord - Whirlpool - TM36
  (321, 32100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Wailord - Facade - TM39
  (321, 32100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Wailord - Dive - TM45
  (321, 32100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Wailord - Weather Ball - TM46
  (321, 32100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Wailord - Rock Tomb - TM48
  (321, 32100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Wailord - Bounce - TM52
  (321, 32100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 34),
  -- Wailord - Brine - TM55
  (321, 32100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Wailord - Avalanche - TM64
  (321, 32100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 36),
  -- Wailord - Round - TM76
  (321, 32100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Wailord - Bulldoze - TM81
  (321, 32100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Wailord - Body Slam - TR01
  (321, 32100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Wailord - Hydro Pump - TR03
  (321, 32100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 40),
  -- Wailord - Surf - TR04
  (321, 32100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Wailord - Ice Beam - TR05
  (321, 32100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Wailord - Blizzard - TR06
  (321, 32100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Wailord - Earthquake - TR10
  (321, 32100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Wailord - Waterfall - TR16
  (321, 32100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 45),
  -- Wailord - Amnesia - TR17
  (321, 32100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Wailord - Substitute - TR20
  (321, 32100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Wailord - Endure - TR26
  (321, 32100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Wailord - Sleep Talk - TR27
  (321, 32100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Wailord - Hyper Voice - TR42
  (321, 32100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Wailord - Zen Headbutt - TR69
  (321, 32100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 51),
  -- Wailord - Iron Head - TR74
  (321, 32100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Wailord - Heavy Slam - TR79
  (321, 32100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 53),
  -- Wailord - Scald - TR84
  (321, 32100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 54),
  -- Wailord - Liquidation - TR98
  (321, 32100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 55),
  -- Wailord - Body Press - TR99
  (321, 32100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 56),
  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Smog - Level 1
  (324, 32400, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torkoal - Withdraw - Level 4
  (324, 32400, 110, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Torkoal - Rapid Spin - Level 8
  (324, 32400, 229, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Torkoal - Smokescreen - Level 12
  (324, 32400, 108, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Torkoal - Clear Smog - Level 16
  (324, 32400, 499, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Torkoal - Flame Wheel - Level 20
  (324, 32400, 172, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Torkoal - Protect - Level 24
  (324, 32400, 182, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Torkoal - Lava Plume - Level 28
  (324, 32400, 436, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Torkoal - Body Slam - Level 32
  (324, 32400, 34, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Torkoal - Iron Defense - Level 36
  (324, 32400, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Torkoal - Flamethrower - Level 40
  (324, 32400, 53, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Torkoal - Curse - Level 44
  (324, 32400, 174, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Torkoal - Heat Wave - Level 48
  (324, 32400, 257, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Torkoal - Amnesia - Level 52
  (324, 32400, 133, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Torkoal - Inferno - Level 56
  (324, 32400, 517, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Torkoal - Shell Smash - Level 60
  (324, 32400, 504, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Torkoal - Eruption - Level 64
  (324, 32400, 284, 18, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Torkoal - Hyper Beam - TM08
  (324, 32400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Torkoal - Giga Impact - TM09
  (324, 32400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Torkoal - Solar Beam - TM11
  (324, 32400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Torkoal - Fire Spin - TM13
  (324, 32400, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 22),
  -- Torkoal - Self-Destruct - TM20
  (324, 32400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Torkoal - Rest - TM21
  (324, 32400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Torkoal - Rock Slide - TM22
  (324, 32400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Torkoal - Snore - TM24
  (324, 32400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Torkoal - Protect - TM25
  (324, 32400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Torkoal - Attract - TM31
  (324, 32400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Torkoal - Sunny Day - TM34
  (324, 32400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Torkoal - Will-O-Wisp - TM38
  (324, 32400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Torkoal - Facade - TM39
  (324, 32400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Torkoal - Weather Ball - TM46
  (324, 32400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Torkoal - Rock Tomb - TM48
  (324, 32400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Torkoal - Round - TM76
  (324, 32400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Torkoal - Bulldoze - TM81
  (324, 32400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Torkoal - Stomping Tantrum - TM98
  (324, 32400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Torkoal - Body Slam - TR01
  (324, 32400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Torkoal - Flamethrower - TR02
  (324, 32400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 38),
  -- Torkoal - Earthquake - TR10
  (324, 32400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Torkoal - Fire Blast - TR15
  (324, 32400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 40),
  -- Torkoal - Amnesia - TR17
  (324, 32400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 41),
  -- Torkoal - Substitute - TR20
  (324, 32400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Torkoal - Sludge Bomb - TR22
  (324, 32400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Torkoal - Endure - TR26
  (324, 32400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Torkoal - Sleep Talk - TR27
  (324, 32400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Torkoal - Iron Tail - TR31
  (324, 32400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Torkoal - Heat Wave - TR36
  (324, 32400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 47),
  -- Torkoal - Superpower - TR39
  (324, 32400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Torkoal - Overheat - TR43
  (324, 32400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 49),
  -- Torkoal - Iron Defense - TR46
  (324, 32400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Torkoal - Gyro Ball - TR52
  (324, 32400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 51),
  -- Torkoal - Earth Power - TR67
  (324, 32400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Torkoal - Stone Edge - TR75
  (324, 32400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Torkoal - Stealth Rock - TR76
  (324, 32400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Torkoal - Heat Crash - TR88
  (324, 32400, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 55),
  -- Torkoal - Body Press - TR99
  (324, 32400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 56),
  -- Torkoal - Fissure - Egg
  (324, 32400, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torkoal - Skull Bash - Egg
  (324, 32400, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Torkoal - Flail - Egg
  (324, 32400, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Torkoal - Ancient Power - Egg
  (324, 32400, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Torkoal - Yawn - Egg
  (324, 32400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Trapinch - Sand Attack - Level 1
  (328, 32800, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Astonish - Level 1
  (328, 32800, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trapinch - Laser Focus - Level 4
  (328, 32800, 673, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Trapinch - Bite - Level 8
  (328, 32800, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Trapinch - Mud-Slap - Level 12
  (328, 32800, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Trapinch - Sand Tomb - Level 16
  (328, 32800, 328, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Trapinch - Bulldoze - Level 20
  (328, 32800, 523, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Trapinch - Dig - Level 24
  (328, 32800, 91, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Trapinch - Crunch - Level 28
  (328, 32800, 242, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Trapinch - Sandstorm - Level 32
  (328, 32800, 201, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Trapinch - Earth Power - Level 36
  (328, 32800, 414, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Trapinch - Earthquake - Level 40
  (328, 32800, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Trapinch - Superpower - Level 44
  (328, 32800, 276, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Trapinch - Fissure - Level 48
  (328, 32800, 90, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Trapinch - Hyper Beam - TM08
  (328, 32800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Trapinch - Solar Beam - TM11
  (328, 32800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 16),
  -- Trapinch - Dig - TM15
  (328, 32800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Trapinch - Rest - TM21
  (328, 32800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Trapinch - Rock Slide - TM22
  (328, 32800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Trapinch - Snore - TM24
  (328, 32800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Trapinch - Protect - TM25
  (328, 32800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Trapinch - Giga Drain - TM28
  (328, 32800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 22),
  -- Trapinch - Attract - TM31
  (328, 32800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Trapinch - Sandstorm - TM32
  (328, 32800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Trapinch - Sunny Day - TM34
  (328, 32800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Trapinch - Facade - TM39
  (328, 32800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Trapinch - Rock Tomb - TM48
  (328, 32800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Trapinch - Sand Tomb - TM49
  (328, 32800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Trapinch - Mud Shot - TM53
  (328, 32800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Trapinch - Round - TM76
  (328, 32800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Trapinch - Bulldoze - TM81
  (328, 32800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Trapinch - Body Slam - TR01
  (328, 32800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Trapinch - Earthquake - TR10
  (328, 32800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 33),
  -- Trapinch - Focus Energy - TR13
  (328, 32800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 34),
  -- Trapinch - Substitute - TR20
  (328, 32800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Trapinch - Endure - TR26
  (328, 32800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Trapinch - Sleep Talk - TR27
  (328, 32800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Trapinch - Crunch - TR32
  (328, 32800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 38),
  -- Trapinch - Superpower - TR39
  (328, 32800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 39),
  -- Trapinch - Earth Power - TR67
  (328, 32800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 40),
  -- Trapinch - Gust - Egg
  (328, 32800, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Trapinch - Quick Attack - Egg
  (328, 32800, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trapinch - Flail - Egg
  (328, 32800, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trapinch - Fury Cutter - Egg
  (328, 32800, 210, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trapinch - Feint - Egg
  (328, 32800, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trapinch - Bug Bite - Egg
  (328, 32800, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Trapinch - First Impression - Egg
  (328, 32800, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Bite - Level 1
  (329, 32900, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Supersonic - Level 1
  (329, 32900, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Fissure - Level 1
  (329, 32900, 90, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vibrava - Dig - Level 1
  (329, 32900, 91, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vibrava - Dragon Breath - Level 1
  (329, 32900, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vibrava - Crunch - Level 1
  (329, 32900, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vibrava - Superpower - Level 1
  (329, 32900, 276, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Vibrava - Astonish - Level 1
  (329, 32900, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Vibrava - Bulldoze - Level 1
  (329, 32900, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Vibrava - Laser Focus - Level 1
  (329, 32900, 673, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Vibrava - Mud-Slap - Level 12
  (329, 32900, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Vibrava - Sand Tomb - Level 16
  (329, 32900, 328, 18, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Vibrava - Dragon Tail - Level 20
  (329, 32900, 525, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Vibrava - Screech - Level 24
  (329, 32900, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Vibrava - Bug Buzz - Level 28
  (329, 32900, 405, 18, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Vibrava - Sandstorm - Level 32
  (329, 32900, 201, 18, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Vibrava - Earth Power - Level 38
  (329, 32900, 414, 18, NULL, 1, 38, NULL, NULL, NULL, 18),
  -- Vibrava - Earthquake - Level 44
  (329, 32900, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Vibrava - Uproar - Level 50
  (329, 32900, 253, 18, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Vibrava - Dragon Rush - Level 56
  (329, 32900, 407, 18, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Vibrava - Boomburst - Level 62
  (329, 32900, 586, 18, NULL, 1, 62, NULL, NULL, NULL, 22),
  -- Vibrava - Dragon Breath - Evolution
  (329, 32900, 225, 18, NULL, 7, NULL, NULL, NULL, NULL, 23),
  -- Vibrava - Fly - TM06
  (329, 32900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 24),
  -- Vibrava - Hyper Beam - TM08
  (329, 32900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Vibrava - Solar Beam - TM11
  (329, 32900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 26),
  -- Vibrava - Dig - TM15
  (329, 32900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 27),
  -- Vibrava - Screech - TM16
  (329, 32900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 28),
  -- Vibrava - Rest - TM21
  (329, 32900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Vibrava - Rock Slide - TM22
  (329, 32900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 30),
  -- Vibrava - Snore - TM24
  (329, 32900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Vibrava - Protect - TM25
  (329, 32900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Vibrava - Giga Drain - TM28
  (329, 32900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 33),
  -- Vibrava - Steel Wing - TM30
  (329, 32900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 34),
  -- Vibrava - Attract - TM31
  (329, 32900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Vibrava - Sandstorm - TM32
  (329, 32900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 36),
  -- Vibrava - Sunny Day - TM34
  (329, 32900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Vibrava - Facade - TM39
  (329, 32900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Vibrava - Swift - TM40
  (329, 32900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Vibrava - Rock Tomb - TM48
  (329, 32900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Vibrava - Sand Tomb - TM49
  (329, 32900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 41),
  -- Vibrava - Mud Shot - TM53
  (329, 32900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 42),
  -- Vibrava - U-turn - TM56
  (329, 32900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 43),
  -- Vibrava - Round - TM76
  (329, 32900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Vibrava - Bulldoze - TM81
  (329, 32900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Vibrava - Air Slash - TM95
  (329, 32900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 46),
  -- Vibrava - Body Slam - TR01
  (329, 32900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Vibrava - Earthquake - TR10
  (329, 32900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Vibrava - Focus Energy - TR13
  (329, 32900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 49),
  -- Vibrava - Substitute - TR20
  (329, 32900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Vibrava - Outrage - TR24
  (329, 32900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 51),
  -- Vibrava - Endure - TR26
  (329, 32900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Vibrava - Sleep Talk - TR27
  (329, 32900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Vibrava - Crunch - TR32
  (329, 32900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 54),
  -- Vibrava - Uproar - TR35
  (329, 32900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 55),
  -- Vibrava - Heat Wave - TR36
  (329, 32900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 56),
  -- Vibrava - Superpower - TR39
  (329, 32900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 57),
  -- Vibrava - Bug Buzz - TR61
  (329, 32900, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 58),
  -- Vibrava - Dragon Pulse - TR62
  (329, 32900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 59),
  -- Vibrava - Earth Power - TR67
  (329, 32900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Vibrava - Throat Chop - TR95
  (329, 32900, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 61),
  -- Vibrava - Draco Meteor - Tutor
  (329, 32900, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 62),
  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Bite - Level 1
  (330, 33000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Supersonic - Level 1
  (330, 33000, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Fissure - Level 1
  (330, 33000, 90, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flygon - Dig - Level 1
  (330, 33000, 91, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flygon - Dragon Breath - Level 1
  (330, 33000, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Flygon - Crunch - Level 1
  (330, 33000, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Flygon - Superpower - Level 1
  (330, 33000, 276, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Flygon - Astonish - Level 1
  (330, 33000, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Flygon - Dragon Claw - Level 1
  (330, 33000, 337, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Flygon - Dragon Dance - Level 1
  (330, 33000, 349, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Flygon - Feint - Level 1
  (330, 33000, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Flygon - Bulldoze - Level 1
  (330, 33000, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Flygon - Laser Focus - Level 1
  (330, 33000, 673, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Flygon - Mud-Slap - Level 12
  (330, 33000, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 15),
  -- Flygon - Sand Tomb - Level 16
  (330, 33000, 328, 18, NULL, 1, 16, NULL, NULL, NULL, 16),
  -- Flygon - Dragon Tail - Level 20
  (330, 33000, 525, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Flygon - Screech - Level 24
  (330, 33000, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 18),
  -- Flygon - Bug Buzz - Level 28
  (330, 33000, 405, 18, NULL, 1, 28, NULL, NULL, NULL, 19),
  -- Flygon - Sandstorm - Level 32
  (330, 33000, 201, 18, NULL, 1, 32, NULL, NULL, NULL, 20),
  -- Flygon - Earth Power - Level 38
  (330, 33000, 414, 18, NULL, 1, 38, NULL, NULL, NULL, 21),
  -- Flygon - Earthquake - Level 44
  (330, 33000, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 22),
  -- Flygon - Uproar - Level 52
  (330, 33000, 253, 18, NULL, 1, 52, NULL, NULL, NULL, 23),
  -- Flygon - Dragon Rush - Level 60
  (330, 33000, 407, 18, NULL, 1, 60, NULL, NULL, NULL, 24),
  -- Flygon - Boomburst - Level 68
  (330, 33000, 586, 18, NULL, 1, 68, NULL, NULL, NULL, 25),
  -- Flygon - Dragon Claw - Evolution
  (330, 33000, 337, 18, NULL, 7, NULL, NULL, NULL, NULL, 26),
  -- Flygon - Mega Punch - TM00
  (330, 33000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 27),
  -- Flygon - Mega Kick - TM01
  (330, 33000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 28),
  -- Flygon - Fire Punch - TM03
  (330, 33000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 29),
  -- Flygon - Thunder Punch - TM05
  (330, 33000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 30),
  -- Flygon - Fly - TM06
  (330, 33000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 31),
  -- Flygon - Hyper Beam - TM08
  (330, 33000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 32),
  -- Flygon - Giga Impact - TM09
  (330, 33000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 33),
  -- Flygon - Solar Beam - TM11
  (330, 33000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 34),
  -- Flygon - Fire Spin - TM13
  (330, 33000, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 35),
  -- Flygon - Dig - TM15
  (330, 33000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 36),
  -- Flygon - Screech - TM16
  (330, 33000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 37),
  -- Flygon - Rest - TM21
  (330, 33000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 38),
  -- Flygon - Rock Slide - TM22
  (330, 33000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 39),
  -- Flygon - Snore - TM24
  (330, 33000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 40),
  -- Flygon - Protect - TM25
  (330, 33000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 41),
  -- Flygon - Giga Drain - TM28
  (330, 33000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 42),
  -- Flygon - Steel Wing - TM30
  (330, 33000, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 43),
  -- Flygon - Attract - TM31
  (330, 33000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 44),
  -- Flygon - Sandstorm - TM32
  (330, 33000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 45),
  -- Flygon - Sunny Day - TM34
  (330, 33000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 46),
  -- Flygon - Facade - TM39
  (330, 33000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 47),
  -- Flygon - Swift - TM40
  (330, 33000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 48),
  -- Flygon - Rock Tomb - TM48
  (330, 33000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 49),
  -- Flygon - Sand Tomb - TM49
  (330, 33000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 50),
  -- Flygon - Mud Shot - TM53
  (330, 33000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 51),
  -- Flygon - U-turn - TM56
  (330, 33000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 52),
  -- Flygon - Round - TM76
  (330, 33000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 53),
  -- Flygon - Bulldoze - TM81
  (330, 33000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 54),
  -- Flygon - Air Slash - TM95
  (330, 33000, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 55),
  -- Flygon - Brutal Swing - TM97
  (330, 33000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 56),
  -- Flygon - Breaking Swipe - TM99
  (330, 33000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 57),
  -- Flygon - Body Slam - TR01
  (330, 33000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 58),
  -- Flygon - Flamethrower - TR02
  (330, 33000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 59),
  -- Flygon - Earthquake - TR10
  (330, 33000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 60),
  -- Flygon - Focus Energy - TR13
  (330, 33000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 61),
  -- Flygon - Fire Blast - TR15
  (330, 33000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 62),
  -- Flygon - Substitute - TR20
  (330, 33000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 63),
  -- Flygon - Outrage - TR24
  (330, 33000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 64),
  -- Flygon - Endure - TR26
  (330, 33000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 65),
  -- Flygon - Sleep Talk - TR27
  (330, 33000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 66),
  -- Flygon - Iron Tail - TR31
  (330, 33000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 67),
  -- Flygon - Crunch - TR32
  (330, 33000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 68),
  -- Flygon - Uproar - TR35
  (330, 33000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 69),
  -- Flygon - Heat Wave - TR36
  (330, 33000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 70),
  -- Flygon - Superpower - TR39
  (330, 33000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 71),
  -- Flygon - Dragon Claw - TR47
  (330, 33000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 72),
  -- Flygon - Dragon Dance - TR51
  (330, 33000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 73),
  -- Flygon - Bug Buzz - TR61
  (330, 33000, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 74),
  -- Flygon - Dragon Pulse - TR62
  (330, 33000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 75),
  -- Flygon - Earth Power - TR67
  (330, 33000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 76),
  -- Flygon - Stone Edge - TR75
  (330, 33000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 77),
  -- Flygon - Throat Chop - TR95
  (330, 33000, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 78),
  -- Flygon - Draco Meteor - Tutor
  (330, 33000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 79),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Disarming Voice - Level 4
  (333, 33300, 574, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swablu - Mist - Level 8
  (333, 33300, 54, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 12
  (333, 33300, 31, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Swablu - Round - Level 16
  (333, 33300, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Swablu - Dragon Breath - Level 20
  (333, 33300, 225, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Swablu - Safeguard - Level 24
  (333, 33300, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Swablu - Sing - Level 28
  (333, 33300, 47, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swablu - Cotton Guard - Level 32
  (333, 33300, 538, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Swablu - Take Down - Level 36
  (333, 33300, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Swablu - Moonblast - Level 40
  (333, 33300, 585, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swablu - Perish Song - Level 44
  (333, 33300, 195, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Swablu - Fly - TM06
  (333, 33300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Swablu - Solar Beam - TM11
  (333, 33300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Swablu - Safeguard - TM19
  (333, 33300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 16),
  -- Swablu - Rest - TM21
  (333, 33300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Swablu - Thief - TM23
  (333, 33300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Swablu - Snore - TM24
  (333, 33300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Swablu - Protect - TM25
  (333, 33300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Swablu - Steel Wing - TM30
  (333, 33300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 21),
  -- Swablu - Attract - TM31
  (333, 33300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Swablu - Rain Dance - TM33
  (333, 33300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Swablu - Sunny Day - TM34
  (333, 33300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Swablu - Facade - TM39
  (333, 33300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Swablu - Swift - TM40
  (333, 33300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Swablu - Power Swap - TM60
  (333, 33300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 27),
  -- Swablu - Round - TM76
  (333, 33300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Swablu - False Swipe - TM94
  (333, 33300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 29),
  -- Swablu - Body Slam - TR01
  (333, 33300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 30),
  -- Swablu - Ice Beam - TR05
  (333, 33300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 31),
  -- Swablu - Agility - TR12
  (333, 33300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 32),
  -- Swablu - Substitute - TR20
  (333, 33300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Swablu - Outrage - TR24
  (333, 33300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 34),
  -- Swablu - Endure - TR26
  (333, 33300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Swablu - Sleep Talk - TR27
  (333, 33300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Swablu - Uproar - TR35
  (333, 33300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 37),
  -- Swablu - Heat Wave - TR36
  (333, 33300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 38),
  -- Swablu - Hyper Voice - TR42
  (333, 33300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 39),
  -- Swablu - Dragon Pulse - TR62
  (333, 33300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 40),
  -- Swablu - Play Rough - TR90
  (333, 33300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 41),
  -- Swablu - Dazzling Gleam - TR92
  (333, 33300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 42),
  -- Swablu - Haze - Egg
  (333, 33300, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swablu - Feather Dance - Egg
  (333, 33300, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swablu - Astonish - Egg
  (333, 33300, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swablu - Roost - Egg
  (333, 33300, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Tailwind - Egg
  (333, 33300, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swablu - Dragon Rush - Egg
  (333, 33300, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swablu - Defog - Egg
  (333, 33300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Mist - Level 1
  (334, 33400, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Pluck - Level 1
  (334, 33400, 365, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Dragon Pulse - Level 1
  (334, 33400, 406, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Altaria - Disarming Voice - Level 1
  (334, 33400, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Altaria - Fury Attack - Level 12
  (334, 33400, 31, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Altaria - Round - Level 16
  (334, 33400, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Altaria - Dragon Breath - Level 20
  (334, 33400, 225, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Altaria - Safeguard - Level 24
  (334, 33400, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Altaria - Sing - Level 28
  (334, 33400, 47, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Altaria - Cotton Guard - Level 32
  (334, 33400, 538, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Altaria - Take Down - Level 38
  (334, 33400, 36, 18, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Altaria - Moonblast - Level 44
  (334, 33400, 585, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Altaria - Perish Song - Level 50
  (334, 33400, 195, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Altaria - Sky Attack - Level 56
  (334, 33400, 143, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Altaria - Dragon Pulse - Evolution
  (334, 33400, 406, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Altaria - Fly - TM06
  (334, 33400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Altaria - Hyper Beam - TM08
  (334, 33400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Altaria - Giga Impact - TM09
  (334, 33400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Altaria - Solar Beam - TM11
  (334, 33400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Altaria - Fire Spin - TM13
  (334, 33400, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 22),
  -- Altaria - Safeguard - TM19
  (334, 33400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Altaria - Rest - TM21
  (334, 33400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Altaria - Thief - TM23
  (334, 33400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Altaria - Snore - TM24
  (334, 33400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Altaria - Protect - TM25
  (334, 33400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Altaria - Steel Wing - TM30
  (334, 33400, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Altaria - Attract - TM31
  (334, 33400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Altaria - Rain Dance - TM33
  (334, 33400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Altaria - Sunny Day - TM34
  (334, 33400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Altaria - Facade - TM39
  (334, 33400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Altaria - Swift - TM40
  (334, 33400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Altaria - Power Swap - TM60
  (334, 33400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 34),
  -- Altaria - Wonder Room - TM71
  (334, 33400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 35),
  -- Altaria - Round - TM76
  (334, 33400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Altaria - Bulldoze - TM81
  (334, 33400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Altaria - False Swipe - TM94
  (334, 33400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 38),
  -- Altaria - Breaking Swipe - TM99
  (334, 33400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 39),
  -- Altaria - Body Slam - TR01
  (334, 33400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Altaria - Flamethrower - TR02
  (334, 33400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 41),
  -- Altaria - Ice Beam - TR05
  (334, 33400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Altaria - Earthquake - TR10
  (334, 33400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Altaria - Agility - TR12
  (334, 33400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 44),
  -- Altaria - Fire Blast - TR15
  (334, 33400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 45),
  -- Altaria - Substitute - TR20
  (334, 33400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Altaria - Outrage - TR24
  (334, 33400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Altaria - Endure - TR26
  (334, 33400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Altaria - Sleep Talk - TR27
  (334, 33400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Altaria - Iron Tail - TR31
  (334, 33400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Altaria - Uproar - TR35
  (334, 33400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Altaria - Heat Wave - TR36
  (334, 33400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 52),
  -- Altaria - Hyper Voice - TR42
  (334, 33400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Altaria - Dragon Claw - TR47
  (334, 33400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Altaria - Dragon Dance - TR51
  (334, 33400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 55),
  -- Altaria - Dragon Pulse - TR62
  (334, 33400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 56),
  -- Altaria - Hurricane - TR89
  (334, 33400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 57),
  -- Altaria - Play Rough - TR90
  (334, 33400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 58),
  -- Altaria - Dazzling Gleam - TR92
  (334, 33400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 59),
  -- Altaria - Draco Meteor - Tutor
  (334, 33400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 60),
  -- Lunatone - Tackle - Level 1
  (337, 33700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunatone - Rock Throw - Level 1
  (337, 33700, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunatone - Confusion - Level 1
  (337, 33700, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunatone - Harden - Level 1
  (337, 33700, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lunatone - Moonlight - Level 1
  (337, 33700, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lunatone - Moonblast - Level 1
  (337, 33700, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lunatone - Hypnosis - Level 5
  (337, 33700, 95, 18, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Lunatone - Rock Polish - Level 10
  (337, 33700, 397, 18, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Lunatone - Rock Slide - Level 15
  (337, 33700, 157, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Lunatone - Psyshock - Level 20
  (337, 33700, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Lunatone - Cosmic Power - Level 25
  (337, 33700, 322, 18, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lunatone - Psychic - Level 30
  (337, 33700, 94, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Lunatone - Stone Edge - Level 35
  (337, 33700, 444, 18, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Lunatone - Future Sight - Level 40
  (337, 33700, 248, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lunatone - Magic Room - Level 45
  (337, 33700, 478, 18, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lunatone - Explosion - Level 50
  (337, 33700, 153, 18, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Lunatone - Hyper Beam - TM08
  (337, 33700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Lunatone - Giga Impact - TM09
  (337, 33700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Lunatone - Light Screen - TM17
  (337, 33700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Lunatone - Reflect - TM18
  (337, 33700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Lunatone - Safeguard - TM19
  (337, 33700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Lunatone - Self-Destruct - TM20
  (337, 33700, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Lunatone - Rest - TM21
  (337, 33700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Lunatone - Rock Slide - TM22
  (337, 33700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Lunatone - Snore - TM24
  (337, 33700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Lunatone - Protect - TM25
  (337, 33700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Lunatone - Icy Wind - TM27
  (337, 33700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Lunatone - Sandstorm - TM32
  (337, 33700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Lunatone - Rain Dance - TM33
  (337, 33700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Lunatone - Hail - TM35
  (337, 33700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Lunatone - Facade - TM39
  (337, 33700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Lunatone - Swift - TM40
  (337, 33700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Lunatone - Helping Hand - TM41
  (337, 33700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Lunatone - Weather Ball - TM46
  (337, 33700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Lunatone - Rock Tomb - TM48
  (337, 33700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Lunatone - Sand Tomb - TM49
  (337, 33700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 36),
  -- Lunatone - Rock Blast - TM54
  (337, 33700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 37),
  -- Lunatone - Power Swap - TM60
  (337, 33700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 38),
  -- Lunatone - Trick Room - TM70
  (337, 33700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Lunatone - Magic Room - TM72
  (337, 33700, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 40),
  -- Lunatone - Round - TM76
  (337, 33700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Lunatone - Acrobatics - TM78
  (337, 33700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 42),
  -- Lunatone - Bulldoze - TM81
  (337, 33700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Lunatone - Psychic Terrain - TM91
  (337, 33700, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 44),
  -- Lunatone - Stomping Tantrum - TM98
  (337, 33700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 45),
  -- Lunatone - Body Slam - TR01
  (337, 33700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Lunatone - Ice Beam - TR05
  (337, 33700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Lunatone - Blizzard - TR06
  (337, 33700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Lunatone - Earthquake - TR10
  (337, 33700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Lunatone - Psychic - TR11
  (337, 33700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 50),
  -- Lunatone - Substitute - TR20
  (337, 33700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Lunatone - Psyshock - TR25
  (337, 33700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 52),
  -- Lunatone - Endure - TR26
  (337, 33700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Lunatone - Sleep Talk - TR27
  (337, 33700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Lunatone - Baton Pass - TR29
  (337, 33700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Lunatone - Shadow Ball - TR33
  (337, 33700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 56),
  -- Lunatone - Future Sight - TR34
  (337, 33700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 57),
  -- Lunatone - Skill Swap - TR40
  (337, 33700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 58),
  -- Lunatone - Cosmic Power - TR44
  (337, 33700, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 59),
  -- Lunatone - Calm Mind - TR49
  (337, 33700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 60),
  -- Lunatone - Gyro Ball - TR52
  (337, 33700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 61),
  -- Lunatone - Power Gem - TR63
  (337, 33700, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 62),
  -- Lunatone - Earth Power - TR67
  (337, 33700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 63),
  -- Lunatone - Nasty Plot - TR68
  (337, 33700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 64),
  -- Lunatone - Zen Headbutt - TR69
  (337, 33700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Lunatone - Iron Head - TR74
  (337, 33700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Lunatone - Stone Edge - TR75
  (337, 33700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Lunatone - Stealth Rock - TR76
  (337, 33700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Lunatone - Grass Knot - TR77
  (337, 33700, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 69),
  -- Lunatone - Stored Power - TR82
  (337, 33700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 70),
  -- Lunatone - Ally Switch - TR83
  (337, 33700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 71),
  -- Solrock - Tackle - Level 1
  (338, 33800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solrock - Rock Throw - Level 1
  (338, 33800, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solrock - Confusion - Level 1
  (338, 33800, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solrock - Harden - Level 1
  (338, 33800, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Solrock - Morning Sun - Level 1
  (338, 33800, 234, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Solrock - Flare Blitz - Level 1
  (338, 33800, 394, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Solrock - Hypnosis - Level 5
  (338, 33800, 95, 18, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Solrock - Rock Polish - Level 10
  (338, 33800, 397, 18, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Solrock - Rock Slide - Level 15
  (338, 33800, 157, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Solrock - Zen Headbutt - Level 20
  (338, 33800, 428, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Solrock - Cosmic Power - Level 25
  (338, 33800, 322, 18, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Solrock - Psychic - Level 30
  (338, 33800, 94, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Solrock - Stone Edge - Level 35
  (338, 33800, 444, 18, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Solrock - Solar Beam - Level 40
  (338, 33800, 76, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Solrock - Wonder Room - Level 45
  (338, 33800, 472, 18, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Solrock - Explosion - Level 50
  (338, 33800, 153, 18, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Solrock - Hyper Beam - TM08
  (338, 33800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Solrock - Giga Impact - TM09
  (338, 33800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Solrock - Solar Beam - TM11
  (338, 33800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Solrock - Fire Spin - TM13
  (338, 33800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 20),
  -- Solrock - Light Screen - TM17
  (338, 33800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Solrock - Reflect - TM18
  (338, 33800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Solrock - Safeguard - TM19
  (338, 33800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Solrock - Self-Destruct - TM20
  (338, 33800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Solrock - Rest - TM21
  (338, 33800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Solrock - Rock Slide - TM22
  (338, 33800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Solrock - Snore - TM24
  (338, 33800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Solrock - Protect - TM25
  (338, 33800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Solrock - Sandstorm - TM32
  (338, 33800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Solrock - Rain Dance - TM33
  (338, 33800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Solrock - Sunny Day - TM34
  (338, 33800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Solrock - Will-O-Wisp - TM38
  (338, 33800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Solrock - Facade - TM39
  (338, 33800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Solrock - Swift - TM40
  (338, 33800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Solrock - Helping Hand - TM41
  (338, 33800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Solrock - Weather Ball - TM46
  (338, 33800, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Solrock - Rock Tomb - TM48
  (338, 33800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Solrock - Sand Tomb - TM49
  (338, 33800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 38),
  -- Solrock - Rock Blast - TM54
  (338, 33800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 39),
  -- Solrock - Power Swap - TM60
  (338, 33800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 40),
  -- Solrock - Trick Room - TM70
  (338, 33800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 41),
  -- Solrock - Wonder Room - TM71
  (338, 33800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Solrock - Round - TM76
  (338, 33800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Solrock - Acrobatics - TM78
  (338, 33800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 44),
  -- Solrock - Bulldoze - TM81
  (338, 33800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Solrock - Psychic Terrain - TM91
  (338, 33800, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 46),
  -- Solrock - Stomping Tantrum - TM98
  (338, 33800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 47),
  -- Solrock - Swords Dance - TR00
  (338, 33800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 48),
  -- Solrock - Body Slam - TR01
  (338, 33800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Solrock - Flamethrower - TR02
  (338, 33800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 50),
  -- Solrock - Earthquake - TR10
  (338, 33800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 51),
  -- Solrock - Psychic - TR11
  (338, 33800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 52),
  -- Solrock - Fire Blast - TR15
  (338, 33800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 53),
  -- Solrock - Substitute - TR20
  (338, 33800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Solrock - Psyshock - TR25
  (338, 33800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 55),
  -- Solrock - Endure - TR26
  (338, 33800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Solrock - Sleep Talk - TR27
  (338, 33800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Solrock - Baton Pass - TR29
  (338, 33800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 58),
  -- Solrock - Shadow Ball - TR33
  (338, 33800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Solrock - Heat Wave - TR36
  (338, 33800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 60),
  -- Solrock - Skill Swap - TR40
  (338, 33800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 61),
  -- Solrock - Overheat - TR43
  (338, 33800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 62),
  -- Solrock - Cosmic Power - TR44
  (338, 33800, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 63),
  -- Solrock - Iron Defense - TR46
  (338, 33800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 64),
  -- Solrock - Calm Mind - TR49
  (338, 33800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 65),
  -- Solrock - Gyro Ball - TR52
  (338, 33800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 66),
  -- Solrock - Flare Blitz - TR55
  (338, 33800, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 67),
  -- Solrock - Earth Power - TR67
  (338, 33800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 68),
  -- Solrock - Zen Headbutt - TR69
  (338, 33800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 69),
  -- Solrock - Iron Head - TR74
  (338, 33800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Solrock - Stone Edge - TR75
  (338, 33800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 71),
  -- Solrock - Stealth Rock - TR76
  (338, 33800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 72),
  -- Solrock - Grass Knot - TR77
  (338, 33800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 73),
  -- Solrock - Stored Power - TR82
  (338, 33800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 74),
  -- Solrock - Ally Switch - TR83
  (338, 33800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 75),
  -- Barboach - Water Gun - Level 1
  (339, 33900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barboach - Rest - Level 6
  (339, 33900, 156, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Snore - Level 6
  (339, 33900, 173, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Barboach - Water Pulse - Level 12
  (339, 33900, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 18
  (339, 33900, 133, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barboach - Aqua Tail - Level 24
  (339, 33900, 401, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Barboach - Muddy Water - Level 31
  (339, 33900, 330, 18, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Barboach - Earthquake - Level 36
  (339, 33900, 89, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Barboach - Future Sight - Level 42
  (339, 33900, 248, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Barboach - Fissure - Level 48
  (339, 33900, 90, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Barboach - Rest - TM21
  (339, 33900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 12),
  -- Barboach - Snore - TM24
  (339, 33900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 13),
  -- Barboach - Protect - TM25
  (339, 33900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 14),
  -- Barboach - Icy Wind - TM27
  (339, 33900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 15),
  -- Barboach - Attract - TM31
  (339, 33900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 16),
  -- Barboach - Sandstorm - TM32
  (339, 33900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 17),
  -- Barboach - Rain Dance - TM33
  (339, 33900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 18),
  -- Barboach - Hail - TM35
  (339, 33900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 19),
  -- Barboach - Whirlpool - TM36
  (339, 33900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 20),
  -- Barboach - Facade - TM39
  (339, 33900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Barboach - Dive - TM45
  (339, 33900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 22),
  -- Barboach - Rock Tomb - TM48
  (339, 33900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 23),
  -- Barboach - Bounce - TM52
  (339, 33900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 24),
  -- Barboach - Mud Shot - TM53
  (339, 33900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Barboach - Round - TM76
  (339, 33900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Barboach - Bulldoze - TM81
  (339, 33900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 27),
  -- Barboach - Hydro Pump - TR03
  (339, 33900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 28),
  -- Barboach - Surf - TR04
  (339, 33900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Barboach - Ice Beam - TR05
  (339, 33900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 30),
  -- Barboach - Blizzard - TR06
  (339, 33900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 31),
  -- Barboach - Earthquake - TR10
  (339, 33900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 32),
  -- Barboach - Waterfall - TR16
  (339, 33900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 33),
  -- Barboach - Amnesia - TR17
  (339, 33900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 34),
  -- Barboach - Substitute - TR20
  (339, 33900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Barboach - Endure - TR26
  (339, 33900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Barboach - Sleep Talk - TR27
  (339, 33900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Barboach - Future Sight - TR34
  (339, 33900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 38),
  -- Barboach - Muddy Water - TR45
  (339, 33900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 39),
  -- Barboach - Dragon Dance - TR51
  (339, 33900, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 40),
  -- Barboach - Earth Power - TR67
  (339, 33900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 41),
  -- Barboach - Scald - TR84
  (339, 33900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Barboach - Take Down - Egg
  (339, 33900, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Barboach - Thrash - Egg
  (339, 33900, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Barboach - Flail - Egg
  (339, 33900, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Barboach - Spark - Egg
  (339, 33900, 209, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whiscash - Thrash - Level 1
  (340, 34000, 37, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Water Gun - Level 1
  (340, 34000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Rest - Level 1
  (340, 34000, 156, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Snore - Level 1
  (340, 34000, 173, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Whiscash - Zen Headbutt - Level 1
  (340, 34000, 428, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Whiscash - Belch - Level 1
  (340, 34000, 562, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Whiscash - Water Pulse - Level 12
  (340, 34000, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Whiscash - Amnesia - Level 18
  (340, 34000, 133, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Whiscash - Aqua Tail - Level 24
  (340, 34000, 401, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Whiscash - Muddy Water - Level 33
  (340, 34000, 330, 18, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Whiscash - Earthquake - Level 40
  (340, 34000, 89, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Whiscash - Future Sight - Level 48
  (340, 34000, 248, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Whiscash - Fissure - Level 56
  (340, 34000, 90, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Whiscash - Thrash - Evolution
  (340, 34000, 37, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Whiscash - Hyper Beam - TM08
  (340, 34000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Whiscash - Giga Impact - TM09
  (340, 34000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Whiscash - Rest - TM21
  (340, 34000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Whiscash - Rock Slide - TM22
  (340, 34000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Whiscash - Snore - TM24
  (340, 34000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Whiscash - Protect - TM25
  (340, 34000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Whiscash - Icy Wind - TM27
  (340, 34000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Whiscash - Attract - TM31
  (340, 34000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Whiscash - Sandstorm - TM32
  (340, 34000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Whiscash - Rain Dance - TM33
  (340, 34000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Whiscash - Hail - TM35
  (340, 34000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 27),
  -- Whiscash - Whirlpool - TM36
  (340, 34000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Whiscash - Facade - TM39
  (340, 34000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Whiscash - Dive - TM45
  (340, 34000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Whiscash - Weather Ball - TM46
  (340, 34000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Whiscash - Rock Tomb - TM48
  (340, 34000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Whiscash - Sand Tomb - TM49
  (340, 34000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 33),
  -- Whiscash - Bounce - TM52
  (340, 34000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 34),
  -- Whiscash - Mud Shot - TM53
  (340, 34000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 35),
  -- Whiscash - Round - TM76
  (340, 34000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Whiscash - Bulldoze - TM81
  (340, 34000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Whiscash - Stomping Tantrum - TM98
  (340, 34000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Whiscash - Hydro Pump - TR03
  (340, 34000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 39),
  -- Whiscash - Surf - TR04
  (340, 34000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 40),
  -- Whiscash - Ice Beam - TR05
  (340, 34000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 41),
  -- Whiscash - Blizzard - TR06
  (340, 34000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 42),
  -- Whiscash - Earthquake - TR10
  (340, 34000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Whiscash - Waterfall - TR16
  (340, 34000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 44),
  -- Whiscash - Amnesia - TR17
  (340, 34000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 45),
  -- Whiscash - Substitute - TR20
  (340, 34000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Whiscash - Endure - TR26
  (340, 34000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Whiscash - Sleep Talk - TR27
  (340, 34000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Whiscash - Future Sight - TR34
  (340, 34000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 49),
  -- Whiscash - Uproar - TR35
  (340, 34000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Whiscash - Muddy Water - TR45
  (340, 34000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 51),
  -- Whiscash - Dragon Dance - TR51
  (340, 34000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 52),
  -- Whiscash - Earth Power - TR67
  (340, 34000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Whiscash - Zen Headbutt - TR69
  (340, 34000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Whiscash - Stone Edge - TR75
  (340, 34000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Whiscash - Scald - TR84
  (340, 34000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 56),
  -- Whiscash - Liquidation - TR98
  (340, 34000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 57),
  -- Corphish - Water Gun - Level 1
  (341, 34100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 1
  (341, 34100, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corphish - Leer - Level 4
  (341, 34100, 43, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Corphish - Taunt - Level 8
  (341, 34100, 269, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 12
  (341, 34100, 61, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Corphish - Knock Off - Level 16
  (341, 34100, 282, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Corphish - Double Hit - Level 20
  (341, 34100, 458, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Corphish - Protect - Level 24
  (341, 34100, 182, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 28
  (341, 34100, 400, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Corphish - Razor Shell - Level 32
  (341, 34100, 534, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Corphish - Swords Dance - Level 36
  (341, 34100, 14, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Corphish - Crunch - Level 40
  (341, 34100, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Corphish - Crabhammer - Level 44
  (341, 34100, 152, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Corphish - Endeavor - Level 48
  (341, 34100, 283, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Corphish - Guillotine - Level 52
  (341, 34100, 12, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Corphish - Dig - TM15
  (341, 34100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Corphish - Rest - TM21
  (341, 34100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Corphish - Rock Slide - TM22
  (341, 34100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Corphish - Snore - TM24
  (341, 34100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Corphish - Protect - TM25
  (341, 34100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Corphish - Icy Wind - TM27
  (341, 34100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Corphish - Attract - TM31
  (341, 34100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Corphish - Rain Dance - TM33
  (341, 34100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Corphish - Hail - TM35
  (341, 34100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Corphish - Whirlpool - TM36
  (341, 34100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Corphish - Facade - TM39
  (341, 34100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Corphish - Brick Break - TM43
  (341, 34100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 27),
  -- Corphish - Rock Tomb - TM48
  (341, 34100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Corphish - Mud Shot - TM53
  (341, 34100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Corphish - Payback - TM57
  (341, 34100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Corphish - Fling - TM59
  (341, 34100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Corphish - Round - TM76
  (341, 34100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Corphish - Razor Shell - TM83
  (341, 34100, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 33),
  -- Corphish - False Swipe - TM94
  (341, 34100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 34),
  -- Corphish - Swords Dance - TR00
  (341, 34100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Corphish - Body Slam - TR01
  (341, 34100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Corphish - Hydro Pump - TR03
  (341, 34100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 37),
  -- Corphish - Surf - TR04
  (341, 34100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Corphish - Ice Beam - TR05
  (341, 34100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Corphish - Blizzard - TR06
  (341, 34100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Corphish - Waterfall - TR16
  (341, 34100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 41),
  -- Corphish - Substitute - TR20
  (341, 34100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Corphish - Sludge Bomb - TR22
  (341, 34100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Corphish - Endure - TR26
  (341, 34100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Corphish - Sleep Talk - TR27
  (341, 34100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Corphish - Crunch - TR32
  (341, 34100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Corphish - Taunt - TR37
  (341, 34100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Corphish - Superpower - TR39
  (341, 34100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 48),
  -- Corphish - Muddy Water - TR45
  (341, 34100, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Corphish - Iron Defense - TR46
  (341, 34100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Corphish - Dragon Dance - TR51
  (341, 34100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 51),
  -- Corphish - X-Scissor - TR60
  (341, 34100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 52),
  -- Corphish - Scald - TR84
  (341, 34100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Corphish - Double-Edge - Egg
  (341, 34100, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Slash - Egg
  (341, 34100, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Metal Claw - Egg
  (341, 34100, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corphish - Ancient Power - Egg
  (341, 34100, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corphish - Switcheroo - Egg
  (341, 34100, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corphish - Aqua Jet - Egg
  (341, 34100, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Water Gun - Level 1
  (342, 34200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Swift - Level 1
  (342, 34200, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Taunt - Level 1
  (342, 34200, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crawdaunt - Bubble Beam - Level 12
  (342, 34200, 61, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Crawdaunt - Knock Off - Level 16
  (342, 34200, 282, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Crawdaunt - Double Hit - Level 20
  (342, 34200, 458, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Crawdaunt - Protect - Level 24
  (342, 34200, 182, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Crawdaunt - Night Slash - Level 28
  (342, 34200, 400, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Crawdaunt - Razor Shell - Level 34
  (342, 34200, 534, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Crawdaunt - Swords Dance - Level 40
  (342, 34200, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Crawdaunt - Crunch - Level 46
  (342, 34200, 242, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Crawdaunt - Crabhammer - Level 52
  (342, 34200, 152, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Crawdaunt - Endeavor - Level 58
  (342, 34200, 283, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Crawdaunt - Guillotine - Level 64
  (342, 34200, 12, 18, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Crawdaunt - Swift - Evolution
  (342, 34200, 129, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Crawdaunt - Hyper Beam - TM08
  (342, 34200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Crawdaunt - Giga Impact - TM09
  (342, 34200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Crawdaunt - Dig - TM15
  (342, 34200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Crawdaunt - Rest - TM21
  (342, 34200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Crawdaunt - Rock Slide - TM22
  (342, 34200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Crawdaunt - Snore - TM24
  (342, 34200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Crawdaunt - Protect - TM25
  (342, 34200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Crawdaunt - Icy Wind - TM27
  (342, 34200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Crawdaunt - Attract - TM31
  (342, 34200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Crawdaunt - Rain Dance - TM33
  (342, 34200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Crawdaunt - Hail - TM35
  (342, 34200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Crawdaunt - Whirlpool - TM36
  (342, 34200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Crawdaunt - Facade - TM39
  (342, 34200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Crawdaunt - Swift - TM40
  (342, 34200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Crawdaunt - Revenge - TM42
  (342, 34200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 32),
  -- Crawdaunt - Brick Break - TM43
  (342, 34200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Crawdaunt - Dive - TM45
  (342, 34200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 34),
  -- Crawdaunt - Rock Tomb - TM48
  (342, 34200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Crawdaunt - Mud Shot - TM53
  (342, 34200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Crawdaunt - Payback - TM57
  (342, 34200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Crawdaunt - Fling - TM59
  (342, 34200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Crawdaunt - Avalanche - TM64
  (342, 34200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 39),
  -- Crawdaunt - Round - TM76
  (342, 34200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Crawdaunt - Retaliate - TM79
  (342, 34200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Crawdaunt - Razor Shell - TM83
  (342, 34200, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 42),
  -- Crawdaunt - Snarl - TM85
  (342, 34200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 43),
  -- Crawdaunt - False Swipe - TM94
  (342, 34200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 44),
  -- Crawdaunt - Swords Dance - TR00
  (342, 34200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Crawdaunt - Body Slam - TR01
  (342, 34200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Crawdaunt - Hydro Pump - TR03
  (342, 34200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Crawdaunt - Surf - TR04
  (342, 34200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Crawdaunt - Ice Beam - TR05
  (342, 34200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Crawdaunt - Blizzard - TR06
  (342, 34200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Crawdaunt - Waterfall - TR16
  (342, 34200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Crawdaunt - Substitute - TR20
  (342, 34200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Crawdaunt - Sludge Bomb - TR22
  (342, 34200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 53),
  -- Crawdaunt - Endure - TR26
  (342, 34200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Crawdaunt - Sleep Talk - TR27
  (342, 34200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Crawdaunt - Crunch - TR32
  (342, 34200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 56),
  -- Crawdaunt - Taunt - TR37
  (342, 34200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 57),
  -- Crawdaunt - Superpower - TR39
  (342, 34200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 58),
  -- Crawdaunt - Muddy Water - TR45
  (342, 34200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 59),
  -- Crawdaunt - Iron Defense - TR46
  (342, 34200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 60),
  -- Crawdaunt - Dragon Dance - TR51
  (342, 34200, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 61),
  -- Crawdaunt - Close Combat - TR53
  (342, 34200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 62),
  -- Crawdaunt - Dark Pulse - TR58
  (342, 34200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 63),
  -- Crawdaunt - X-Scissor - TR60
  (342, 34200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 64),
  -- Crawdaunt - Nasty Plot - TR68
  (342, 34200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 65),
  -- Crawdaunt - Sludge Wave - TR78
  (342, 34200, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 66),
  -- Crawdaunt - Scald - TR84
  (342, 34200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 67),
  -- Crawdaunt - Liquidation - TR98
  (342, 34200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 68),
  -- Baltoy - Harden - Level 1
  (343, 34300, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baltoy - Mud-Slap - Level 1
  (343, 34300, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 3
  (343, 34300, 229, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Baltoy - Confusion - Level 6
  (343, 34300, 93, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Baltoy - Rock Tomb - Level 9
  (343, 34300, 317, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Baltoy - Power Trick - Level 12
  (343, 34300, 379, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Baltoy - Psybeam - Level 15
  (343, 34300, 60, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 18
  (343, 34300, 246, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Baltoy - Imprison - Level 21
  (343, 34300, 286, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Baltoy - Cosmic Power - Level 24
  (343, 34300, 322, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Baltoy - Extrasensory - Level 27
  (343, 34300, 326, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Baltoy - Earth Power - Level 30
  (343, 34300, 414, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Baltoy - Self-Destruct - Level 33
  (343, 34300, 120, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Baltoy - Guard Split - Level 36
  (343, 34300, 470, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Baltoy - Power Split - Level 36
  (343, 34300, 471, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Baltoy - Sandstorm - Level 39
  (343, 34300, 201, 18, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Baltoy - Explosion - Level 42
  (343, 34300, 153, 18, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Baltoy - Solar Beam - TM11
  (343, 34300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Baltoy - Dig - TM15
  (343, 34300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Baltoy - Light Screen - TM17
  (343, 34300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Baltoy - Reflect - TM18
  (343, 34300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Baltoy - Safeguard - TM19
  (343, 34300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Baltoy - Self-Destruct - TM20
  (343, 34300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Baltoy - Rest - TM21
  (343, 34300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Baltoy - Rock Slide - TM22
  (343, 34300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Baltoy - Snore - TM24
  (343, 34300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Baltoy - Protect - TM25
  (343, 34300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Baltoy - Sandstorm - TM32
  (343, 34300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Baltoy - Rain Dance - TM33
  (343, 34300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Baltoy - Sunny Day - TM34
  (343, 34300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Baltoy - Facade - TM39
  (343, 34300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Baltoy - Imprison - TM44
  (343, 34300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Baltoy - Rock Tomb - TM48
  (343, 34300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Baltoy - Sand Tomb - TM49
  (343, 34300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 34),
  -- Baltoy - Power Swap - TM60
  (343, 34300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 35),
  -- Baltoy - Guard Swap - TM61
  (343, 34300, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 36),
  -- Baltoy - Trick Room - TM70
  (343, 34300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Baltoy - Wonder Room - TM71
  (343, 34300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 38),
  -- Baltoy - Round - TM76
  (343, 34300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Baltoy - Hex - TM77
  (343, 34300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Baltoy - Bulldoze - TM81
  (343, 34300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Baltoy - Psychic Terrain - TM91
  (343, 34300, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 42),
  -- Baltoy - Eerie Impulse - TM93
  (343, 34300, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 43),
  -- Baltoy - Ice Beam - TR05
  (343, 34300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Baltoy - Earthquake - TR10
  (343, 34300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Baltoy - Psychic - TR11
  (343, 34300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Baltoy - Substitute - TR20
  (343, 34300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Baltoy - Psyshock - TR25
  (343, 34300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 48),
  -- Baltoy - Endure - TR26
  (343, 34300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Baltoy - Sleep Talk - TR27
  (343, 34300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Baltoy - Shadow Ball - TR33
  (343, 34300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Baltoy - Trick - TR38
  (343, 34300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Baltoy - Skill Swap - TR40
  (343, 34300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Baltoy - Cosmic Power - TR44
  (343, 34300, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 54),
  -- Baltoy - Calm Mind - TR49
  (343, 34300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Baltoy - Gyro Ball - TR52
  (343, 34300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 56),
  -- Baltoy - Earth Power - TR67
  (343, 34300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Baltoy - Zen Headbutt - TR69
  (343, 34300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Baltoy - Stealth Rock - TR76
  (343, 34300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Baltoy - Grass Knot - TR77
  (343, 34300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Baltoy - Ally Switch - TR83
  (343, 34300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 61),
  -- Baltoy - Drill Run - TR87
  (343, 34300, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 62),
  -- Baltoy - Dazzling Gleam - TR92
  (343, 34300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 63),
  -- Claydol - Hyper Beam - Level 1
  (344, 34400, 63, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Claydol - Confusion - Level 1
  (344, 34400, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Claydol - Teleport - Level 1
  (344, 34400, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Claydol - Harden - Level 1
  (344, 34400, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Claydol - Mud-Slap - Level 1
  (344, 34400, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Claydol - Rapid Spin - Level 1
  (344, 34400, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Claydol - Rock Tomb - Level 9
  (344, 34400, 317, 18, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Claydol - Power Trick - Level 12
  (344, 34400, 379, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Claydol - Psybeam - Level 15
  (344, 34400, 60, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Claydol - Ancient Power - Level 18
  (344, 34400, 246, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Claydol - Imprison - Level 21
  (344, 34400, 286, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Claydol - Cosmic Power - Level 24
  (344, 34400, 322, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Claydol - Extrasensory - Level 27
  (344, 34400, 326, 18, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Claydol - Earth Power - Level 30
  (344, 34400, 414, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Claydol - Self-Destruct - Level 33
  (344, 34400, 120, 18, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Claydol - Guard Split - Level 38
  (344, 34400, 470, 18, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Claydol - Power Split - Level 38
  (344, 34400, 471, 18, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Claydol - Sandstorm - Level 43
  (344, 34400, 201, 18, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Claydol - Explosion - Level 48
  (344, 34400, 153, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Claydol - Hyper Beam - Evolution
  (344, 34400, 63, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Claydol - Hyper Beam - TM08
  (344, 34400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Claydol - Giga Impact - TM09
  (344, 34400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Claydol - Solar Beam - TM11
  (344, 34400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Claydol - Dig - TM15
  (344, 34400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Claydol - Light Screen - TM17
  (344, 34400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Claydol - Reflect - TM18
  (344, 34400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 26),
  -- Claydol - Safeguard - TM19
  (344, 34400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 27),
  -- Claydol - Self-Destruct - TM20
  (344, 34400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 28),
  -- Claydol - Rest - TM21
  (344, 34400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Claydol - Rock Slide - TM22
  (344, 34400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 30),
  -- Claydol - Snore - TM24
  (344, 34400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Claydol - Protect - TM25
  (344, 34400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Claydol - Sandstorm - TM32
  (344, 34400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Claydol - Rain Dance - TM33
  (344, 34400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Claydol - Sunny Day - TM34
  (344, 34400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Claydol - Facade - TM39
  (344, 34400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Claydol - Imprison - TM44
  (344, 34400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 37),
  -- Claydol - Rock Tomb - TM48
  (344, 34400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Claydol - Sand Tomb - TM49
  (344, 34400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 39),
  -- Claydol - Power Swap - TM60
  (344, 34400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 40),
  -- Claydol - Guard Swap - TM61
  (344, 34400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 41),
  -- Claydol - Trick Room - TM70
  (344, 34400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 42),
  -- Claydol - Wonder Room - TM71
  (344, 34400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 43),
  -- Claydol - Round - TM76
  (344, 34400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Claydol - Hex - TM77
  (344, 34400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 45),
  -- Claydol - Bulldoze - TM81
  (344, 34400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 46),
  -- Claydol - Psychic Terrain - TM91
  (344, 34400, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 47),
  -- Claydol - Eerie Impulse - TM93
  (344, 34400, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 48),
  -- Claydol - Ice Beam - TR05
  (344, 34400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Claydol - Earthquake - TR10
  (344, 34400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Claydol - Psychic - TR11
  (344, 34400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Claydol - Substitute - TR20
  (344, 34400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Claydol - Psyshock - TR25
  (344, 34400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 53),
  -- Claydol - Endure - TR26
  (344, 34400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Claydol - Sleep Talk - TR27
  (344, 34400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Claydol - Shadow Ball - TR33
  (344, 34400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 56),
  -- Claydol - Future Sight - TR34
  (344, 34400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 57),
  -- Claydol - Trick - TR38
  (344, 34400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 58),
  -- Claydol - Skill Swap - TR40
  (344, 34400, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 59),
  -- Claydol - Cosmic Power - TR44
  (344, 34400, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 60),
  -- Claydol - Iron Defense - TR46
  (344, 34400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 61),
  -- Claydol - Calm Mind - TR49
  (344, 34400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Claydol - Gyro Ball - TR52
  (344, 34400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 63),
  -- Claydol - Earth Power - TR67
  (344, 34400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 64),
  -- Claydol - Nasty Plot - TR68
  (344, 34400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 65),
  -- Claydol - Zen Headbutt - TR69
  (344, 34400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Claydol - Stone Edge - TR75
  (344, 34400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Claydol - Stealth Rock - TR76
  (344, 34400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Claydol - Grass Knot - TR77
  (344, 34400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 69),
  -- Claydol - Stored Power - TR82
  (344, 34400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 70),
  -- Claydol - Ally Switch - TR83
  (344, 34400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 71),
  -- Claydol - Drill Run - TR87
  (344, 34400, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 72),
  -- Claydol - Dazzling Gleam - TR92
  (344, 34400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 73),
  -- Claydol - Body Press - TR99
  (344, 34400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 74),
  -- Lileep - Wrap - Level 1
  (345, 34500, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lileep - Astonish - Level 1
  (345, 34500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 4
  (345, 34500, 51, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Lileep - Confuse Ray - Level 8
  (345, 34500, 109, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lileep - Ingrain - Level 12
  (345, 34500, 275, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lileep - Ancient Power - Level 16
  (345, 34500, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lileep - Mega Drain - Level 20
  (345, 34500, 72, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lileep - Brine - Level 24
  (345, 34500, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lileep - Amnesia - Level 28
  (345, 34500, 133, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lileep - Gastro Acid - Level 32
  (345, 34500, 380, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Lileep - Giga Drain - Level 36
  (345, 34500, 202, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lileep - Stockpile - Level 41
  (345, 34500, 254, 18, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Lileep - Spit Up - Level 41
  (345, 34500, 255, 18, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Lileep - Swallow - Level 41
  (345, 34500, 256, 18, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Lileep - Energy Ball - Level 44
  (345, 34500, 412, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Lileep - Solar Beam - TM11
  (345, 34500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 16),
  -- Lileep - Rest - TM21
  (345, 34500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Lileep - Rock Slide - TM22
  (345, 34500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Lileep - Snore - TM24
  (345, 34500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Lileep - Protect - TM25
  (345, 34500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Lileep - Giga Drain - TM28
  (345, 34500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Lileep - Attract - TM31
  (345, 34500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Lileep - Sandstorm - TM32
  (345, 34500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Lileep - Sunny Day - TM34
  (345, 34500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Lileep - Facade - TM39
  (345, 34500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Lileep - Rock Tomb - TM48
  (345, 34500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Lileep - Bullet Seed - TM50
  (345, 34500, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 27),
  -- Lileep - Mud Shot - TM53
  (345, 34500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Lileep - Rock Blast - TM54
  (345, 34500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Lileep - Brine - TM55
  (345, 34500, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 30),
  -- Lileep - Round - TM76
  (345, 34500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Lileep - Swords Dance - TR00
  (345, 34500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Lileep - Body Slam - TR01
  (345, 34500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Lileep - Amnesia - TR17
  (345, 34500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 34),
  -- Lileep - Substitute - TR20
  (345, 34500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Lileep - Sludge Bomb - TR22
  (345, 34500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 36),
  -- Lileep - Endure - TR26
  (345, 34500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Lileep - Sleep Talk - TR27
  (345, 34500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Lileep - Seed Bomb - TR59
  (345, 34500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 39),
  -- Lileep - Energy Ball - TR65
  (345, 34500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Lileep - Earth Power - TR67
  (345, 34500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 41),
  -- Lileep - Stealth Rock - TR76
  (345, 34500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 42),
  -- Lileep - Grass Knot - TR77
  (345, 34500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 43),
  -- Lileep - Bind - Egg
  (345, 34500, 20, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lileep - Recover - Egg
  (345, 34500, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lileep - Curse - Egg
  (345, 34500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lileep - Mirror Coat - Egg
  (345, 34500, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lileep - Tickle - Egg
  (345, 34500, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cradily - Wrap - Level 1
  (346, 34600, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cradily - Acid - Level 1
  (346, 34600, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cradily - Leech Seed - Level 1
  (346, 34600, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cradily - Confuse Ray - Level 1
  (346, 34600, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cradily - Astonish - Level 1
  (346, 34600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cradily - Ingrain - Level 12
  (346, 34600, 275, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cradily - Ancient Power - Level 16
  (346, 34600, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cradily - Mega Drain - Level 20
  (346, 34600, 72, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cradily - Brine - Level 24
  (346, 34600, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cradily - Amnesia - Level 28
  (346, 34600, 133, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Cradily - Gastro Acid - Level 32
  (346, 34600, 380, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Cradily - Giga Drain - Level 36
  (346, 34600, 202, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Cradily - Stockpile - Level 43
  (346, 34600, 254, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Cradily - Spit Up - Level 43
  (346, 34600, 255, 18, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Cradily - Swallow - Level 43
  (346, 34600, 256, 18, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Cradily - Energy Ball - Level 48
  (346, 34600, 412, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Cradily - Hyper Beam - TM08
  (346, 34600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Cradily - Giga Impact - TM09
  (346, 34600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Cradily - Solar Beam - TM11
  (346, 34600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Cradily - Dig - TM15
  (346, 34600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Cradily - Rest - TM21
  (346, 34600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Cradily - Rock Slide - TM22
  (346, 34600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Cradily - Snore - TM24
  (346, 34600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Cradily - Protect - TM25
  (346, 34600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Cradily - Giga Drain - TM28
  (346, 34600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Cradily - Attract - TM31
  (346, 34600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Cradily - Sandstorm - TM32
  (346, 34600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Cradily - Sunny Day - TM34
  (346, 34600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Cradily - Facade - TM39
  (346, 34600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Cradily - Rock Tomb - TM48
  (346, 34600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Cradily - Bullet Seed - TM50
  (346, 34600, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 31),
  -- Cradily - Mud Shot - TM53
  (346, 34600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 32),
  -- Cradily - Rock Blast - TM54
  (346, 34600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 33),
  -- Cradily - Brine - TM55
  (346, 34600, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 34),
  -- Cradily - Round - TM76
  (346, 34600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Cradily - Bulldoze - TM81
  (346, 34600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Cradily - Grassy Terrain - TM88
  (346, 34600, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 37),
  -- Cradily - Swords Dance - TR00
  (346, 34600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Cradily - Body Slam - TR01
  (346, 34600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Cradily - Earthquake - TR10
  (346, 34600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Cradily - Amnesia - TR17
  (346, 34600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 41),
  -- Cradily - Substitute - TR20
  (346, 34600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Cradily - Sludge Bomb - TR22
  (346, 34600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Cradily - Endure - TR26
  (346, 34600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Cradily - Sleep Talk - TR27
  (346, 34600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Cradily - Seed Bomb - TR59
  (346, 34600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 46),
  -- Cradily - Energy Ball - TR65
  (346, 34600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Cradily - Earth Power - TR67
  (346, 34600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 48),
  -- Cradily - Power Whip - TR72
  (346, 34600, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 49),
  -- Cradily - Stone Edge - TR75
  (346, 34600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 50),
  -- Cradily - Stealth Rock - TR76
  (346, 34600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 51),
  -- Cradily - Grass Knot - TR77
  (346, 34600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 52),
  -- Cradily - Sludge Wave - TR78
  (346, 34600, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 53),
  -- Anorith - Harden - Level 1
  (347, 34700, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Anorith - Fury Cutter - Level 1
  (347, 34700, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Anorith - Water Gun - Level 4
  (347, 34700, 55, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Anorith - Smack Down - Level 8
  (347, 34700, 479, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Anorith - Metal Claw - Level 12
  (347, 34700, 232, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Anorith - Ancient Power - Level 16
  (347, 34700, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Anorith - Bug Bite - Level 20
  (347, 34700, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Anorith - Brine - Level 24
  (347, 34700, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Anorith - Slash - Level 28
  (347, 34700, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Anorith - Crush Claw - Level 32
  (347, 34700, 306, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Anorith - Rock Blast - Level 36
  (347, 34700, 350, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Anorith - Protect - Level 41
  (347, 34700, 182, 18, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Anorith - X-Scissor - Level 44
  (347, 34700, 404, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Anorith - Dig - TM15
  (347, 34700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Anorith - Screech - TM16
  (347, 34700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Anorith - Rest - TM21
  (347, 34700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Anorith - Rock Slide - TM22
  (347, 34700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Anorith - Snore - TM24
  (347, 34700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Anorith - Protect - TM25
  (347, 34700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Anorith - Attract - TM31
  (347, 34700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Anorith - Sandstorm - TM32
  (347, 34700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Anorith - Sunny Day - TM34
  (347, 34700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Anorith - Facade - TM39
  (347, 34700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Anorith - Brick Break - TM43
  (347, 34700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 24),
  -- Anorith - Rock Tomb - TM48
  (347, 34700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 25),
  -- Anorith - Mud Shot - TM53
  (347, 34700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Anorith - Rock Blast - TM54
  (347, 34700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 27),
  -- Anorith - Brine - TM55
  (347, 34700, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 28),
  -- Anorith - Cross Poison - TM73
  (347, 34700, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 29),
  -- Anorith - Round - TM76
  (347, 34700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Anorith - False Swipe - TM94
  (347, 34700, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 31),
  -- Anorith - Swords Dance - TR00
  (347, 34700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Anorith - Body Slam - TR01
  (347, 34700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Anorith - Substitute - TR20
  (347, 34700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Anorith - Endure - TR26
  (347, 34700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Anorith - Sleep Talk - TR27
  (347, 34700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Anorith - Iron Defense - TR46
  (347, 34700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Anorith - X-Scissor - TR60
  (347, 34700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 38),
  -- Anorith - Earth Power - TR67
  (347, 34700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 39),
  -- Anorith - Stealth Rock - TR76
  (347, 34700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 40),
  -- Anorith - Sand Attack - Egg
  (347, 34700, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Anorith - Curse - Egg
  (347, 34700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Anorith - Rapid Spin - Egg
  (347, 34700, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Anorith - Knock Off - Egg
  (347, 34700, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Anorith - Water Pulse - Egg
  (347, 34700, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Anorith - Aqua Jet - Egg
  (347, 34700, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Armaldo - Water Gun - Level 1
  (348, 34800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armaldo - Harden - Level 1
  (348, 34800, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armaldo - Fury Cutter - Level 1
  (348, 34800, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armaldo - Smack Down - Level 1
  (348, 34800, 479, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armaldo - Metal Claw - Level 12
  (348, 34800, 232, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Armaldo - Ancient Power - Level 16
  (348, 34800, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Armaldo - Bug Bite - Level 20
  (348, 34800, 450, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Armaldo - Brine - Level 24
  (348, 34800, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Armaldo - Slash - Level 28
  (348, 34800, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Armaldo - Crush Claw - Level 32
  (348, 34800, 306, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Armaldo - Rock Blast - Level 36
  (348, 34800, 350, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Armaldo - Protect - Level 43
  (348, 34800, 182, 18, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Armaldo - X-Scissor - Level 48
  (348, 34800, 404, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Armaldo - Hyper Beam - TM08
  (348, 34800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Armaldo - Giga Impact - TM09
  (348, 34800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Armaldo - Dig - TM15
  (348, 34800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Armaldo - Screech - TM16
  (348, 34800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Armaldo - Rest - TM21
  (348, 34800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Armaldo - Rock Slide - TM22
  (348, 34800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Armaldo - Snore - TM24
  (348, 34800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Armaldo - Protect - TM25
  (348, 34800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Armaldo - Attract - TM31
  (348, 34800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Armaldo - Sandstorm - TM32
  (348, 34800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Armaldo - Sunny Day - TM34
  (348, 34800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Armaldo - Facade - TM39
  (348, 34800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Armaldo - Brick Break - TM43
  (348, 34800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Armaldo - Rock Tomb - TM48
  (348, 34800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Armaldo - Mud Shot - TM53
  (348, 34800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Armaldo - Rock Blast - TM54
  (348, 34800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Armaldo - Brine - TM55
  (348, 34800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 30),
  -- Armaldo - Shadow Claw - TM65
  (348, 34800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Armaldo - Cross Poison - TM73
  (348, 34800, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 32),
  -- Armaldo - Round - TM76
  (348, 34800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Armaldo - Bulldoze - TM81
  (348, 34800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Armaldo - False Swipe - TM94
  (348, 34800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Armaldo - Brutal Swing - TM97
  (348, 34800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 36),
  -- Armaldo - Stomping Tantrum - TM98
  (348, 34800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 37),
  -- Armaldo - Swords Dance - TR00
  (348, 34800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Armaldo - Body Slam - TR01
  (348, 34800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Armaldo - Low Kick - TR07
  (348, 34800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 40),
  -- Armaldo - Earthquake - TR10
  (348, 34800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Armaldo - Substitute - TR20
  (348, 34800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Armaldo - Endure - TR26
  (348, 34800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Armaldo - Sleep Talk - TR27
  (348, 34800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Armaldo - Iron Tail - TR31
  (348, 34800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Armaldo - Superpower - TR39
  (348, 34800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Armaldo - Iron Defense - TR46
  (348, 34800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 47),
  -- Armaldo - X-Scissor - TR60
  (348, 34800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 48),
  -- Armaldo - Earth Power - TR67
  (348, 34800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 49),
  -- Armaldo - Flash Cannon - TR70
  (348, 34800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 50),
  -- Armaldo - Stone Edge - TR75
  (348, 34800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 51),
  -- Armaldo - Stealth Rock - TR76
  (348, 34800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 52),
  -- Armaldo - Liquidation - TR98
  (348, 34800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 53),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 18, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 25
  (349, 34900, 175, 18, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Feebas - Light Screen - TM17
  (349, 34900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 4),
  -- Feebas - Rest - TM21
  (349, 34900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 5),
  -- Feebas - Snore - TM24
  (349, 34900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 6),
  -- Feebas - Protect - TM25
  (349, 34900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 7),
  -- Feebas - Icy Wind - TM27
  (349, 34900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 8),
  -- Feebas - Attract - TM31
  (349, 34900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 9),
  -- Feebas - Rain Dance - TM33
  (349, 34900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 10),
  -- Feebas - Hail - TM35
  (349, 34900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 11),
  -- Feebas - Whirlpool - TM36
  (349, 34900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 12),
  -- Feebas - Facade - TM39
  (349, 34900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 13),
  -- Feebas - Swift - TM40
  (349, 34900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 14),
  -- Feebas - Dive - TM45
  (349, 34900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 15),
  -- Feebas - Mud Shot - TM53
  (349, 34900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 16),
  -- Feebas - Brine - TM55
  (349, 34900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 17),
  -- Feebas - Round - TM76
  (349, 34900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 18),
  -- Feebas - Surf - TR04
  (349, 34900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 19),
  -- Feebas - Ice Beam - TR05
  (349, 34900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 20),
  -- Feebas - Blizzard - TR06
  (349, 34900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 21),
  -- Feebas - Waterfall - TR16
  (349, 34900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 22),
  -- Feebas - Substitute - TR20
  (349, 34900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 23),
  -- Feebas - Endure - TR26
  (349, 34900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 24),
  -- Feebas - Sleep Talk - TR27
  (349, 34900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 25),
  -- Feebas - Iron Tail - TR31
  (349, 34900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 26),
  -- Feebas - Muddy Water - TR45
  (349, 34900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 27),
  -- Feebas - Dragon Pulse - TR62
  (349, 34900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 28),
  -- Feebas - Scald - TR84
  (349, 34900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 29),
  -- Feebas - Mist - Egg
  (349, 34900, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Feebas - Hypnosis - Egg
  (349, 34900, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Feebas - Confuse Ray - Egg
  (349, 34900, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Feebas - Haze - Egg
  (349, 34900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Feebas - Dragon Breath - Egg
  (349, 34900, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Feebas - Mirror Coat - Egg
  (349, 34900, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Feebas - Tickle - Egg
  (349, 34900, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Milotic - Tackle - Level 1
  (350, 35000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Wrap - Level 1
  (350, 35000, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Milotic - Splash - Level 1
  (350, 35000, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Milotic - Flail - Level 1
  (350, 35000, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Milotic - Water Pulse - Level 1
  (350, 35000, 352, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Milotic - Disarming Voice - Level 4
  (350, 35000, 574, 18, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Milotic - Twister - Level 8
  (350, 35000, 239, 18, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Milotic - Aqua Ring - Level 12
  (350, 35000, 392, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Milotic - Attract - Level 16
  (350, 35000, 213, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Milotic - Life Dew - Level 20
  (350, 35000, 791, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Milotic - Dragon Tail - Level 24
  (350, 35000, 525, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Milotic - Recover - Level 28
  (350, 35000, 105, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Milotic - Aqua Tail - Level 32
  (350, 35000, 401, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Milotic - Safeguard - Level 36
  (350, 35000, 219, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Milotic - Surf - Level 40
  (350, 35000, 57, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Milotic - Rain Dance - Level 44
  (350, 35000, 240, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Milotic - Coil - Level 48
  (350, 35000, 489, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Milotic - Hydro Pump - Level 52
  (350, 35000, 56, 18, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Milotic - Water Pulse - Evolution
  (350, 35000, 352, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Milotic - Hyper Beam - TM08
  (350, 35000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Milotic - Giga Impact - TM09
  (350, 35000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Milotic - Light Screen - TM17
  (350, 35000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Milotic - Safeguard - TM19
  (350, 35000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Milotic - Rest - TM21
  (350, 35000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Milotic - Snore - TM24
  (350, 35000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Milotic - Protect - TM25
  (350, 35000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Milotic - Icy Wind - TM27
  (350, 35000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Milotic - Attract - TM31
  (350, 35000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Milotic - Rain Dance - TM33
  (350, 35000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Milotic - Hail - TM35
  (350, 35000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Milotic - Whirlpool - TM36
  (350, 35000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 32),
  -- Milotic - Facade - TM39
  (350, 35000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Milotic - Swift - TM40
  (350, 35000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Milotic - Helping Hand - TM41
  (350, 35000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Milotic - Imprison - TM44
  (350, 35000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 36),
  -- Milotic - Dive - TM45
  (350, 35000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 37),
  -- Milotic - Weather Ball - TM46
  (350, 35000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 38),
  -- Milotic - Mud Shot - TM53
  (350, 35000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 39),
  -- Milotic - Brine - TM55
  (350, 35000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 40),
  -- Milotic - Avalanche - TM64
  (350, 35000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 41),
  -- Milotic - Round - TM76
  (350, 35000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Milotic - Bulldoze - TM81
  (350, 35000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Milotic - Brutal Swing - TM97
  (350, 35000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 44),
  -- Milotic - Breaking Swipe - TM99
  (350, 35000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 45),
  -- Milotic - Body Slam - TR01
  (350, 35000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Milotic - Hydro Pump - TR03
  (350, 35000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Milotic - Surf - TR04
  (350, 35000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Milotic - Ice Beam - TR05
  (350, 35000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Milotic - Blizzard - TR06
  (350, 35000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Milotic - Waterfall - TR16
  (350, 35000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Milotic - Substitute - TR20
  (350, 35000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Milotic - Endure - TR26
  (350, 35000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Milotic - Sleep Talk - TR27
  (350, 35000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Milotic - Iron Tail - TR31
  (350, 35000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 55),
  -- Milotic - Muddy Water - TR45
  (350, 35000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 56),
  -- Milotic - Dragon Dance - TR51
  (350, 35000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 57),
  -- Milotic - Dragon Pulse - TR62
  (350, 35000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 58),
  -- Milotic - Iron Head - TR74
  (350, 35000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Milotic - Scald - TR84
  (350, 35000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 60);

-- ============================================================================
-- Source Audit Corrections
-- ============================================================================
-- Rows below are source-verified Sword / Shield learnset rows omitted from the legacy migration.
-- They preserve current-species Generation VIII source tables, including evolved/form learn paths.
INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Lairon - Stomp - Egg
  (305, 30500, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lairon - Curse - Egg
  (305, 30500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lairon - Mud-Slap - Egg
  (305, 30500, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lairon - Endeavor - Egg
  (305, 30500, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lairon - Dragon Rush - Egg
  (305, 30500, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Lairon - Head Smash - Egg
  (305, 30500, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Aggron - Stomp - Egg
  (306, 30600, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Aggron - Curse - Egg
  (306, 30600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Aggron - Mud-Slap - Egg
  (306, 30600, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Aggron - Endeavor - Egg
  (306, 30600, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Aggron - Dragon Rush - Egg
  (306, 30600, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Aggron - Head Smash - Egg
  (306, 30600, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Manectric - Headbutt - Egg
  (310, 31000, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Manectric - Curse - Egg
  (310, 31000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Manectric - Spark - Egg
  (310, 31000, 209, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Manectric - Switcheroo - Egg
  (310, 31000, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sharpedo - Thrash - Egg
  (319, 31900, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sharpedo - Double-Edge - Egg
  (319, 31900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sharpedo - Destiny Bond - Egg
  (319, 31900, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sharpedo - Ancient Power - Egg
  (319, 31900, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sharpedo - Water Pulse - Egg
  (319, 31900, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Wailord - Thrash - Egg
  (321, 32100, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wailord - Double-Edge - Egg
  (321, 32100, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Wailord - Fissure - Egg
  (321, 32100, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wailord - Defense Curl - Egg
  (321, 32100, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wailord - Curse - Egg
  (321, 32100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Wailord - Rollout - Egg
  (321, 32100, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Wailord - Tickle - Egg
  (321, 32100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Wailord - Aqua Ring - Egg
  (321, 32100, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Wailord - Soak - Egg
  (321, 32100, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Vibrava - Gust - Egg
  (329, 32900, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Vibrava - Quick Attack - Egg
  (329, 32900, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Vibrava - Flail - Egg
  (329, 32900, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Vibrava - Fury Cutter - Egg
  (329, 32900, 210, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Vibrava - Feint - Egg
  (329, 32900, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Vibrava - Bug Bite - Egg
  (329, 32900, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Vibrava - First Impression - Egg
  (329, 32900, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Flygon - Outrage - Level 1
  (330, 33000, 200, 18, NULL, 1, 1, NULL, NULL, NULL, 80),
  -- Flygon - Gust - Egg
  (330, 33000, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Flygon - Quick Attack - Egg
  (330, 33000, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Flygon - Flail - Egg
  (330, 33000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Flygon - Fury Cutter - Egg
  (330, 33000, 210, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Flygon - Feint - Egg
  (330, 33000, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Flygon - Bug Bite - Egg
  (330, 33000, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Flygon - First Impression - Egg
  (330, 33000, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Altaria - Hurricane - Level 1
  (334, 33400, 542, 18, NULL, 1, 1, NULL, NULL, NULL, 61),
  -- Altaria - Haze - Egg
  (334, 33400, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Altaria - Feather Dance - Egg
  (334, 33400, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Altaria - Astonish - Egg
  (334, 33400, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Altaria - Roost - Egg
  (334, 33400, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Altaria - Tailwind - Egg
  (334, 33400, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Altaria - Dragon Rush - Egg
  (334, 33400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Altaria - Defog - Egg
  (334, 33400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Whiscash - Take Down - Egg
  (340, 34000, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Whiscash - Thrash - Egg
  (340, 34000, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Whiscash - Flail - Egg
  (340, 34000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Whiscash - Spark - Egg
  (340, 34000, 209, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Crawdaunt - Double-Edge - Egg
  (342, 34200, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Crawdaunt - Slash - Egg
  (342, 34200, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Crawdaunt - Metal Claw - Egg
  (342, 34200, 232, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Crawdaunt - Ancient Power - Egg
  (342, 34200, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Crawdaunt - Switcheroo - Egg
  (342, 34200, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Crawdaunt - Aqua Jet - Egg
  (342, 34200, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Cradily - Bind - Egg
  (346, 34600, 20, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cradily - Recover - Egg
  (346, 34600, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cradily - Curse - Egg
  (346, 34600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cradily - Mirror Coat - Egg
  (346, 34600, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cradily - Tickle - Egg
  (346, 34600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Armaldo - Sand Attack - Egg
  (348, 34800, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Armaldo - Curse - Egg
  (348, 34800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Armaldo - Rapid Spin - Egg
  (348, 34800, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Armaldo - Knock Off - Egg
  (348, 34800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Armaldo - Water Pulse - Egg
  (348, 34800, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Armaldo - Aqua Jet - Egg
  (348, 34800, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Milotic - Mist - Egg
  (350, 35000, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Milotic - Hypnosis - Egg
  (350, 35000, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Milotic - Confuse Ray - Egg
  (350, 35000, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Milotic - Haze - Egg
  (350, 35000, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Milotic - Dragon Breath - Egg
  (350, 35000, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Milotic - Mirror Coat - Egg
  (350, 35000, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Milotic - Tickle - Egg
  (350, 35000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 67);
