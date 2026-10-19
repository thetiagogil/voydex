-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 301-350.
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
  -- Delcatty - Fake Out - Starting Move
  (301, 30100, 252, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Delcatty - Sing - Starting Move
  (301, 30100, 47, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Delcatty - Disarming Voice - Starting Move
  (301, 30100, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Delcatty - Fury Swipes - Starting Move
  (301, 30100, 154, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Delcatty - Copycat - Starting Move
  (301, 30100, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Delcatty - Payback - Starting Move
  (301, 30100, 371, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Delcatty - Charm - Starting Move
  (301, 30100, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Delcatty - Facade - Starting Move
  (301, 30100, 263, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Delcatty - Covet - Starting Move
  (301, 30100, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Delcatty - Heal Bell - Starting Move
  (301, 30100, 215, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Delcatty - Double-Edge - Starting Move
  (301, 30100, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Delcatty - Baby-Doll Eyes - Starting Move
  (301, 30100, 608, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Delcatty - Play Rough - Starting Move
  (301, 30100, 583, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Delcatty - Attract - Starting Move
  (301, 30100, 213, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Delcatty - Growl - Starting Move
  (301, 30100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Delcatty - Tail Whip - Starting Move
  (301, 30100, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Delcatty - Tackle - Starting Move
  (301, 30100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Delcatty - Water Pulse - TM03
  (301, 30100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Delcatty - Calm Mind - TM04
  (301, 30100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Delcatty - Work Up - TM10
  (301, 30100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Delcatty - Sunny Day - TM11
  (301, 30100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Delcatty - Ice Beam - TM13
  (301, 30100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Delcatty - Blizzard - TM14
  (301, 30100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Delcatty - Hyper Beam - TM15
  (301, 30100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Delcatty - Protect - TM17
  (301, 30100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Delcatty - Rain Dance - TM18
  (301, 30100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Delcatty - Safeguard - TM20
  (301, 30100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 27),
  -- Delcatty - Solar Beam - TM22
  (301, 30100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Delcatty - Iron Tail - TM23
  (301, 30100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Delcatty - Thunderbolt - TM24
  (301, 30100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Delcatty - Thunder - TM25
  (301, 30100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Delcatty - Dig - TM28
  (301, 30100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Delcatty - Shadow Ball - TM30
  (301, 30100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Delcatty - Double Team - TM32
  (301, 30100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Delcatty - Shock Wave - TM34
  (301, 30100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Delcatty - Facade - TM42
  (301, 30100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Delcatty - Rest - TM44
  (301, 30100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Delcatty - Attract - TM45
  (301, 30100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Delcatty - Charge Beam - TM57
  (301, 30100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Delcatty - Endure - TM58
  (301, 30100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Delcatty - Nasty Plot - TM63
  (301, 30100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 41),
  -- Delcatty - Payback - TM66
  (301, 30100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 42),
  -- Delcatty - Giga Impact - TM68
  (301, 30100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Delcatty - Flash - TM70
  (301, 30100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Delcatty - Thunder Wave - TM73
  (301, 30100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 45),
  -- Delcatty - Psych Up - TM77
  (301, 30100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Delcatty - Sleep Talk - TM82
  (301, 30100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Delcatty - Dream Eater - TM85
  (301, 30100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Delcatty - Grass Knot - TM86
  (301, 30100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Delcatty - Swagger - TM87
  (301, 30100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Delcatty - Substitute - TM90
  (301, 30100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Delcatty - Strength - TM96
  (301, 30100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Delcatty - Rock Smash - TM98
  (301, 30100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Delcatty - Baton Pass - Egg
  (301, 30100, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Delcatty - Cosmic Power - Egg
  (301, 30100, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Delcatty - Fake Out - Egg
  (301, 30100, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Delcatty - Fake Tears - Egg
  (301, 30100, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Delcatty - Helping Hand - Egg
  (301, 30100, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Delcatty - Last Resort - Egg
  (301, 30100, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Delcatty - Simple Beam - Egg
  (301, 30100, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Delcatty - Sucker Punch - Egg
  (301, 30100, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Delcatty - Tickle - Egg
  (301, 30100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Delcatty - Uproar - Egg
  (301, 30100, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Delcatty - Wish - Egg
  (301, 30100, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Delcatty - Zen Headbutt - Egg
  (301, 30100, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sableye - Leer - Starting Move
  (302, 30200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sableye - Scratch - Starting Move
  (302, 30200, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sableye - Astonish - Level 3
  (302, 30200, 310, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sableye - Confuse Ray - Level 6
  (302, 30200, 109, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sableye - Shadow Sneak - Level 9
  (302, 30200, 425, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sableye - Fake Out - Level 12
  (302, 30200, 252, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sableye - Disable - Level 15
  (302, 30200, 50, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sableye - Detect - Level 18
  (302, 30200, 197, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sableye - Night Shade - Level 21
  (302, 30200, 101, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sableye - Fury Swipes - Level 24
  (302, 30200, 154, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sableye - Knock Off - Level 27
  (302, 30200, 282, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sableye - Quash - Level 30
  (302, 30200, 511, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sableye - Shadow Claw - Level 33
  (302, 30200, 421, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sableye - Mean Look - Level 36
  (302, 30200, 212, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sableye - Power Gem - Level 39
  (302, 30200, 408, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sableye - Zen Headbutt - Level 42
  (302, 30200, 428, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sableye - Shadow Ball - Level 45
  (302, 30200, 247, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sableye - Foul Play - Level 48
  (302, 30200, 492, 21, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Sableye - Focus Punch - TM01
  (302, 30200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Sableye - Water Pulse - TM03
  (302, 30200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Sableye - Calm Mind - TM04
  (302, 30200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Sableye - Sunny Day - TM11
  (302, 30200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Sableye - Taunt - TM12
  (302, 30200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Sableye - Protect - TM17
  (302, 30200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Sableye - Rain Dance - TM18
  (302, 30200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Sableye - Dazzling Gleam - TM21
  (302, 30200, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 26),
  -- Sableye - Low Sweep - TM27
  (302, 30200, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 27),
  -- Sableye - Dig - TM28
  (302, 30200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Sableye - Psychic - TM29
  (302, 30200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Sableye - Shadow Ball - TM30
  (302, 30200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Sableye - Brick Break - TM31
  (302, 30200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Sableye - Double Team - TM32
  (302, 30200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Sableye - Shock Wave - TM34
  (302, 30200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Sableye - Rock Tomb - TM39
  (302, 30200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Sableye - Aerial Ace - TM40
  (302, 30200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 35),
  -- Sableye - Torment - TM41
  (302, 30200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Sableye - Facade - TM42
  (302, 30200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Sableye - Rest - TM44
  (302, 30200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Sableye - Attract - TM45
  (302, 30200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Sableye - Thief - TM46
  (302, 30200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Sableye - Fling - TM56
  (302, 30200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Sableye - Endure - TM58
  (302, 30200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Sableye - Drain Punch - TM60
  (302, 30200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 43),
  -- Sableye - Will-O-Wisp - TM61
  (302, 30200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 44),
  -- Sableye - Nasty Plot - TM63
  (302, 30200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 45),
  -- Sableye - Shadow Claw - TM65
  (302, 30200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 46),
  -- Sableye - Payback - TM66
  (302, 30200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 47),
  -- Sableye - Flash - TM70
  (302, 30200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Sableye - Gyro Ball - TM74
  (302, 30200, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 49),
  -- Sableye - Psych Up - TM77
  (302, 30200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Sableye - Snarl - TM78
  (302, 30200, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 51),
  -- Sableye - Dark Pulse - TM79
  (302, 30200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 52),
  -- Sableye - Sleep Talk - TM82
  (302, 30200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Sableye - Poison Jab - TM84
  (302, 30200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 54),
  -- Sableye - Dream Eater - TM85
  (302, 30200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 55),
  -- Sableye - Swagger - TM87
  (302, 30200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Sableye - Substitute - TM90
  (302, 30200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Sableye - Cut - TM93
  (302, 30200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 58),
  -- Sableye - Rock Smash - TM98
  (302, 30200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Sableye - Feint - Egg
  (302, 30200, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sableye - Flatter - Egg
  (302, 30200, 260, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sableye - Imprison - Egg
  (302, 30200, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sableye - Mean Look - Egg
  (302, 30200, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sableye - Metal Burst - Egg
  (302, 30200, 368, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sableye - Moonlight - Egg
  (302, 30200, 236, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sableye - Recover - Egg
  (302, 30200, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sableye - Sucker Punch - Egg
  (302, 30200, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sableye - Trick - Egg
  (302, 30200, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mawile - Astonish - Starting Move
  (303, 30300, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Mawile - Growl - Starting Move
  (303, 30300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Mawile - Fairy Wind - Level 4
  (303, 30300, 584, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mawile - Baton Pass - Level 8
  (303, 30300, 226, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mawile - Bite - Level 12
  (303, 30300, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mawile - Stockpile - Level 16
  (303, 30300, 254, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mawile - Swallow - Level 16
  (303, 30300, 256, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mawile - Spit Up - Level 16
  (303, 30300, 255, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Mawile - Sucker Punch - Level 20
  (303, 30300, 389, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Mawile - Iron Defense - Level 24
  (303, 30300, 334, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mawile - Crunch - Level 28
  (303, 30300, 242, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mawile - Sweet Scent - Level 32
  (303, 30300, 230, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mawile - Iron Head - Level 36
  (303, 30300, 442, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mawile - Taunt - Level 40
  (303, 30300, 269, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Mawile - Fake Tears - Level 44
  (303, 30300, 313, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mawile - Play Rough - Level 48
  (303, 30300, 583, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mawile - Focus Punch - TM01
  (303, 30300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Mawile - Sunny Day - TM11
  (303, 30300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Mawile - Taunt - TM12
  (303, 30300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Mawile - Ice Beam - TM13
  (303, 30300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Mawile - Hyper Beam - TM15
  (303, 30300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Mawile - Protect - TM17
  (303, 30300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Mawile - Rain Dance - TM18
  (303, 30300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Mawile - Solar Beam - TM22
  (303, 30300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Mawile - Shadow Ball - TM30
  (303, 30300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Mawile - Brick Break - TM31
  (303, 30300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Mawile - Double Team - TM32
  (303, 30300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Mawile - Flamethrower - TM35
  (303, 30300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Mawile - Sludge Bomb - TM36
  (303, 30300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Mawile - Sandstorm - TM37
  (303, 30300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Mawile - Fire Blast - TM38
  (303, 30300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Mawile - Rock Tomb - TM39
  (303, 30300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Mawile - Torment - TM41
  (303, 30300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 33),
  -- Mawile - Facade - TM42
  (303, 30300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Mawile - Rest - TM44
  (303, 30300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Mawile - Attract - TM45
  (303, 30300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Mawile - Focus Blast - TM52
  (303, 30300, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Mawile - False Swipe - TM54
  (303, 30300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 38),
  -- Mawile - Fling - TM56
  (303, 30300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Mawile - Charge Beam - TM57
  (303, 30300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 40),
  -- Mawile - Endure - TM58
  (303, 30300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Mawile - Payback - TM66
  (303, 30300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 42),
  -- Mawile - Giga Impact - TM68
  (303, 30300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Mawile - Stone Edge - TM71
  (303, 30300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 44),
  -- Mawile - Swords Dance - TM75
  (303, 30300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Mawile - Stealth Rock - TM76
  (303, 30300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Mawile - Dark Pulse - TM79
  (303, 30300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 47),
  -- Mawile - Rock Slide - TM80
  (303, 30300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Mawile - Sleep Talk - TM82
  (303, 30300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Mawile - Grass Knot - TM86
  (303, 30300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Mawile - Swagger - TM87
  (303, 30300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Mawile - Substitute - TM90
  (303, 30300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Mawile - Flash Cannon - TM91
  (303, 30300, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 53),
  -- Mawile - Strength - TM96
  (303, 30300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Mawile - Rock Smash - TM98
  (303, 30300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Mawile - Ancient Power - Egg
  (303, 30300, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mawile - Fire Fang - Egg
  (303, 30300, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mawile - Guard Swap - Egg
  (303, 30300, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mawile - Ice Fang - Egg
  (303, 30300, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mawile - Metal Burst - Egg
  (303, 30300, 368, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mawile - Misty Terrain - Egg
  (303, 30300, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mawile - Poison Fang - Egg
  (303, 30300, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mawile - Power-Up Punch - Egg
  (303, 30300, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mawile - Seismic Toss - Egg
  (303, 30300, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mawile - Slam - Egg
  (303, 30300, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mawile - Sucker Punch - Egg
  (303, 30300, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mawile - Thunder Fang - Egg
  (303, 30300, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mawile - Tickle - Egg
  (303, 30300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Aron - Tackle - Starting Move
  (304, 30400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Aron - Harden - Starting Move
  (304, 30400, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Aron - Metal Claw - Level 4
  (304, 30400, 232, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aron - Rock Tomb - Level 8
  (304, 30400, 317, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aron - Roar - Level 12
  (304, 30400, 46, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Aron - Headbutt - Level 16
  (304, 30400, 29, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Aron - Protect - Level 20
  (304, 30400, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Aron - Rock Slide - Level 24
  (304, 30400, 157, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Aron - Iron Head - Level 28
  (304, 30400, 442, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Aron - Metal Sound - Level 33
  (304, 30400, 319, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Aron - Take Down - Level 36
  (304, 30400, 36, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Aron - Autotomize - Level 40
  (304, 30400, 475, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Aron - Iron Tail - Level 44
  (304, 30400, 231, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Aron - Iron Defense - Level 48
  (304, 30400, 334, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Aron - Heavy Slam - Level 52
  (304, 30400, 484, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Aron - Double-Edge - Level 56
  (304, 30400, 38, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Aron - Metal Burst - Level 60
  (304, 30400, 368, 21, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Aron - Water Pulse - TM03
  (304, 30400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Aron - Roar - TM05
  (304, 30400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Aron - Sunny Day - TM11
  (304, 30400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Aron - Protect - TM17
  (304, 30400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Aron - Rain Dance - TM18
  (304, 30400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Aron - Iron Tail - TM23
  (304, 30400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Aron - Earthquake - TM26
  (304, 30400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Aron - Dig - TM28
  (304, 30400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Aron - Double Team - TM32
  (304, 30400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Aron - Shock Wave - TM34
  (304, 30400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Aron - Sandstorm - TM37
  (304, 30400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Aron - Rock Tomb - TM39
  (304, 30400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Aron - Aerial Ace - TM40
  (304, 30400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Aron - Facade - TM42
  (304, 30400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Aron - Rest - TM44
  (304, 30400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Aron - Attract - TM45
  (304, 30400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Aron - Endure - TM58
  (304, 30400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Aron - Shadow Claw - TM65
  (304, 30400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Aron - Rock Polish - TM69
  (304, 30400, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 36),
  -- Aron - Stealth Rock - TM76
  (304, 30400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 37),
  -- Aron - Rock Slide - TM80
  (304, 30400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Aron - Sleep Talk - TM82
  (304, 30400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Aron - Bulldoze - TM83
  (304, 30400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 40),
  -- Aron - Swagger - TM87
  (304, 30400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Aron - Substitute - TM90
  (304, 30400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Aron - Cut - TM93
  (304, 30400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Aron - Strength - TM96
  (304, 30400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 44),
  -- Aron - Rock Smash - TM98
  (304, 30400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Aron - Body Slam - Egg
  (304, 30400, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Aron - Curse - Egg
  (304, 30400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Aron - Dragon Rush - Egg
  (304, 30400, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aron - Endeavor - Egg
  (304, 30400, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aron - Head Smash - Egg
  (304, 30400, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aron - Iron Head - Egg
  (304, 30400, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aron - Mud-Slap - Egg
  (304, 30400, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aron - Reversal - Egg
  (304, 30400, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aron - Screech - Egg
  (304, 30400, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aron - Stomp - Egg
  (304, 30400, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aron - Superpower - Egg
  (304, 30400, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lairon - Tackle - Starting Move
  (305, 30500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lairon - Harden - Starting Move
  (305, 30500, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lairon - Metal Claw - Starting Move
  (305, 30500, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lairon - Rock Tomb - Starting Move
  (305, 30500, 317, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lairon - Roar - Level 12
  (305, 30500, 46, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lairon - Headbutt - Level 16
  (305, 30500, 29, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lairon - Protect - Level 20
  (305, 30500, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lairon - Rock Slide - Level 24
  (305, 30500, 157, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lairon - Iron Head - Level 28
  (305, 30500, 442, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lairon - Metal Sound - Level 35
  (305, 30500, 319, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Lairon - Take Down - Level 40
  (305, 30500, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Lairon - Autotomize - Level 46
  (305, 30500, 475, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Lairon - Iron Tail - Level 52
  (305, 30500, 231, 21, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Lairon - Iron Defense - Level 58
  (305, 30500, 334, 21, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Lairon - Heavy Slam - Level 64
  (305, 30500, 484, 21, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Lairon - Double-Edge - Level 70
  (305, 30500, 38, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Lairon - Metal Burst - Level 76
  (305, 30500, 368, 21, NULL, 1, 76, NULL, NULL, NULL, 17),
  -- Lairon - Water Pulse - TM03
  (305, 30500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Lairon - Roar - TM05
  (305, 30500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Lairon - Sunny Day - TM11
  (305, 30500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Lairon - Protect - TM17
  (305, 30500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Lairon - Rain Dance - TM18
  (305, 30500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Lairon - Iron Tail - TM23
  (305, 30500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Lairon - Earthquake - TM26
  (305, 30500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Lairon - Dig - TM28
  (305, 30500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Lairon - Double Team - TM32
  (305, 30500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Lairon - Shock Wave - TM34
  (305, 30500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Lairon - Sandstorm - TM37
  (305, 30500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Lairon - Rock Tomb - TM39
  (305, 30500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Lairon - Aerial Ace - TM40
  (305, 30500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Lairon - Facade - TM42
  (305, 30500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Lairon - Rest - TM44
  (305, 30500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Lairon - Attract - TM45
  (305, 30500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Lairon - Endure - TM58
  (305, 30500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Lairon - Shadow Claw - TM65
  (305, 30500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Lairon - Rock Polish - TM69
  (305, 30500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 36),
  -- Lairon - Stone Edge - TM71
  (305, 30500, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 37),
  -- Lairon - Stealth Rock - TM76
  (305, 30500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Lairon - Rock Slide - TM80
  (305, 30500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Lairon - Sleep Talk - TM82
  (305, 30500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Lairon - Bulldoze - TM83
  (305, 30500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Lairon - Swagger - TM87
  (305, 30500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Lairon - Substitute - TM90
  (305, 30500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Lairon - Cut - TM93
  (305, 30500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Lairon - Strength - TM96
  (305, 30500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Lairon - Rock Smash - TM98
  (305, 30500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Lairon - Body Slam - Egg
  (305, 30500, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lairon - Curse - Egg
  (305, 30500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lairon - Dragon Rush - Egg
  (305, 30500, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lairon - Endeavor - Egg
  (305, 30500, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lairon - Head Smash - Egg
  (305, 30500, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lairon - Iron Head - Egg
  (305, 30500, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lairon - Mud-Slap - Egg
  (305, 30500, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lairon - Reversal - Egg
  (305, 30500, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lairon - Screech - Egg
  (305, 30500, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Lairon - Stomp - Egg
  (305, 30500, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lairon - Superpower - Egg
  (305, 30500, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aggron - Tackle - Starting Move
  (306, 30600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Aggron - Harden - Starting Move
  (306, 30600, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Aggron - Metal Claw - Starting Move
  (306, 30600, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Aggron - Rock Tomb - Starting Move
  (306, 30600, 317, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Aggron - Roar - Level 12
  (306, 30600, 46, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Aggron - Headbutt - Level 16
  (306, 30600, 29, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Aggron - Protect - Level 20
  (306, 30600, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Aggron - Rock Slide - Level 24
  (306, 30600, 157, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Aggron - Iron Head - Level 28
  (306, 30600, 442, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Aggron - Metal Sound - Level 35
  (306, 30600, 319, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Aggron - Take Down - Level 40
  (306, 30600, 36, 21, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Aggron - Autotomize - Level 48
  (306, 30600, 475, 21, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Aggron - Iron Tail - Level 56
  (306, 30600, 231, 21, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Aggron - Iron Defense - Level 64
  (306, 30600, 334, 21, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Aggron - Heavy Slam - Level 72
  (306, 30600, 484, 21, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Aggron - Double-Edge - Level 80
  (306, 30600, 38, 21, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Aggron - Metal Burst - Level 88
  (306, 30600, 368, 21, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Aggron - Focus Punch - TM01
  (306, 30600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Aggron - Dragon Claw - TM02
  (306, 30600, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 19),
  -- Aggron - Water Pulse - TM03
  (306, 30600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Aggron - Roar - TM05
  (306, 30600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Aggron - Sunny Day - TM11
  (306, 30600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Aggron - Taunt - TM12
  (306, 30600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Aggron - Ice Beam - TM13
  (306, 30600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Aggron - Blizzard - TM14
  (306, 30600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Aggron - Hyper Beam - TM15
  (306, 30600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Aggron - Protect - TM17
  (306, 30600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Aggron - Rain Dance - TM18
  (306, 30600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Aggron - Solar Beam - TM22
  (306, 30600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Aggron - Iron Tail - TM23
  (306, 30600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Aggron - Thunderbolt - TM24
  (306, 30600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 31),
  -- Aggron - Thunder - TM25
  (306, 30600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 32),
  -- Aggron - Earthquake - TM26
  (306, 30600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 33),
  -- Aggron - Dig - TM28
  (306, 30600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 34),
  -- Aggron - Brick Break - TM31
  (306, 30600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 35),
  -- Aggron - Double Team - TM32
  (306, 30600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 36),
  -- Aggron - Shock Wave - TM34
  (306, 30600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Aggron - Flamethrower - TM35
  (306, 30600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 38),
  -- Aggron - Sandstorm - TM37
  (306, 30600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 39),
  -- Aggron - Fire Blast - TM38
  (306, 30600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 40),
  -- Aggron - Rock Tomb - TM39
  (306, 30600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 41),
  -- Aggron - Aerial Ace - TM40
  (306, 30600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 42),
  -- Aggron - Facade - TM42
  (306, 30600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 43),
  -- Aggron - Rest - TM44
  (306, 30600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 44),
  -- Aggron - Attract - TM45
  (306, 30600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 45),
  -- Aggron - Focus Blast - TM52
  (306, 30600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 46),
  -- Aggron - Fling - TM56
  (306, 30600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 47),
  -- Aggron - Endure - TM58
  (306, 30600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 48),
  -- Aggron - Dragon Pulse - TM59
  (306, 30600, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 49),
  -- Aggron - Shadow Claw - TM65
  (306, 30600, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 50),
  -- Aggron - Payback - TM66
  (306, 30600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 51),
  -- Aggron - Giga Impact - TM68
  (306, 30600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 52),
  -- Aggron - Rock Polish - TM69
  (306, 30600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 53),
  -- Aggron - Stone Edge - TM71
  (306, 30600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 54),
  -- Aggron - Avalanche - TM72
  (306, 30600, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 55),
  -- Aggron - Thunder Wave - TM73
  (306, 30600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 56),
  -- Aggron - Stealth Rock - TM76
  (306, 30600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 57),
  -- Aggron - Dark Pulse - TM79
  (306, 30600, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 58),
  -- Aggron - Rock Slide - TM80
  (306, 30600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 59),
  -- Aggron - Sleep Talk - TM82
  (306, 30600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 60),
  -- Aggron - Bulldoze - TM83
  (306, 30600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 61),
  -- Aggron - Swagger - TM87
  (306, 30600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Aggron - Substitute - TM90
  (306, 30600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 63),
  -- Aggron - Flash Cannon - TM91
  (306, 30600, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 64),
  -- Aggron - Cut - TM93
  (306, 30600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 65),
  -- Aggron - Surf - TM95
  (306, 30600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 66),
  -- Aggron - Strength - TM96
  (306, 30600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Aggron - Rock Smash - TM98
  (306, 30600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Aggron - Rock Climb - TM100
  (306, 30600, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 69),
  -- Aggron - Body Slam - Egg
  (306, 30600, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Aggron - Curse - Egg
  (306, 30600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Aggron - Dragon Rush - Egg
  (306, 30600, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Aggron - Endeavor - Egg
  (306, 30600, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Aggron - Head Smash - Egg
  (306, 30600, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Aggron - Iron Head - Egg
  (306, 30600, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Aggron - Mud-Slap - Egg
  (306, 30600, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Aggron - Reversal - Egg
  (306, 30600, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Aggron - Screech - Egg
  (306, 30600, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Aggron - Stomp - Egg
  (306, 30600, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Aggron - Superpower - Egg
  (306, 30600, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Meditite - Pound - Starting Move
  (307, 30700, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Meditite - Low Kick - Level 4
  (307, 30700, 67, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Meditite - Confusion - Level 7
  (307, 30700, 93, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Meditite - Detect - Level 9
  (307, 30700, 197, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meditite - Endure - Level 12
  (307, 30700, 203, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meditite - Feint - Level 15
  (307, 30700, 364, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Meditite - Force Palm - Level 17
  (307, 30700, 395, 21, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Meditite - Psybeam - Level 20
  (307, 30700, 60, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Meditite - Calm Mind - Level 23
  (307, 30700, 347, 21, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Meditite - Mind Reader - Level 25
  (307, 30700, 170, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Meditite - High Jump Kick - Level 28
  (307, 30700, 136, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Meditite - Psych Up - Level 31
  (307, 30700, 244, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Meditite - Acupressure - Level 33
  (307, 30700, 367, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Meditite - Power Trick - Level 36
  (307, 30700, 379, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Meditite - Reversal - Level 39
  (307, 30700, 179, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Meditite - Recover - Level 41
  (307, 30700, 105, 21, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Meditite - Counter - Level 44
  (307, 30700, 68, 21, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Meditite - Focus Punch - TM01
  (307, 30700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Meditite - Calm Mind - TM04
  (307, 30700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Meditite - Bulk Up - TM08
  (307, 30700, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 20),
  -- Meditite - Work Up - TM10
  (307, 30700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 21),
  -- Meditite - Sunny Day - TM11
  (307, 30700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Meditite - Light Screen - TM16
  (307, 30700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 23),
  -- Meditite - Protect - TM17
  (307, 30700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Meditite - Rain Dance - TM18
  (307, 30700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Meditite - Low Sweep - TM27
  (307, 30700, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 26),
  -- Meditite - Psychic - TM29
  (307, 30700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Meditite - Shadow Ball - TM30
  (307, 30700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Meditite - Brick Break - TM31
  (307, 30700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Meditite - Double Team - TM32
  (307, 30700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Meditite - Reflect - TM33
  (307, 30700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Meditite - Rock Tomb - TM39
  (307, 30700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Meditite - Facade - TM42
  (307, 30700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Meditite - Rest - TM44
  (307, 30700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Meditite - Attract - TM45
  (307, 30700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Meditite - Focus Blast - TM52
  (307, 30700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 36),
  -- Meditite - Fling - TM56
  (307, 30700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Meditite - Endure - TM58
  (307, 30700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Meditite - Drain Punch - TM60
  (307, 30700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 39),
  -- Meditite - Recycle - TM67
  (307, 30700, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 40),
  -- Meditite - Flash - TM70
  (307, 30700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Meditite - Psych Up - TM77
  (307, 30700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Meditite - Rock Slide - TM80
  (307, 30700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Meditite - Sleep Talk - TM82
  (307, 30700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Meditite - Poison Jab - TM84
  (307, 30700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 45),
  -- Meditite - Dream Eater - TM85
  (307, 30700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Meditite - Grass Knot - TM86
  (307, 30700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 47),
  -- Meditite - Swagger - TM87
  (307, 30700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 48),
  -- Meditite - Substitute - TM90
  (307, 30700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Meditite - Strength - TM96
  (307, 30700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Meditite - Rock Smash - TM98
  (307, 30700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Meditite - Baton Pass - Egg
  (307, 30700, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meditite - Bullet Punch - Egg
  (307, 30700, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meditite - Dynamic Punch - Egg
  (307, 30700, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meditite - Fake Out - Egg
  (307, 30700, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meditite - Fire Punch - Egg
  (307, 30700, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meditite - Guard Swap - Egg
  (307, 30700, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meditite - Ice Punch - Egg
  (307, 30700, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meditite - Power Swap - Egg
  (307, 30700, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meditite - Psycho Cut - Egg
  (307, 30700, 427, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meditite - Quick Guard - Egg
  (307, 30700, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meditite - Thunder Punch - Egg
  (307, 30700, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Medicham - Zen Headbutt - Starting Move
  (308, 30800, 428, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Medicham - Fire Punch - Starting Move
  (308, 30800, 7, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Medicham - Thunder Punch - Starting Move
  (308, 30800, 9, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Medicham - Ice Punch - Starting Move
  (308, 30800, 8, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Medicham - Pound - Starting Move
  (308, 30800, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Medicham - Confusion - Starting Move
  (308, 30800, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Medicham - Detect - Starting Move
  (308, 30800, 197, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Medicham - Low Kick - Level 4
  (308, 30800, 67, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Medicham - Confusion - Level 7
  (308, 30800, 93, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Medicham - Detect - Level 9
  (308, 30800, 197, 21, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Medicham - Endure - Level 12
  (308, 30800, 203, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Medicham - Feint - Level 15
  (308, 30800, 364, 21, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Medicham - Force Palm - Level 17
  (308, 30800, 395, 21, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Medicham - Psybeam - Level 20
  (308, 30800, 60, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Medicham - Calm Mind - Level 23
  (308, 30800, 347, 21, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Medicham - Mind Reader - Level 25
  (308, 30800, 170, 21, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Medicham - High Jump Kick - Level 28
  (308, 30800, 136, 21, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Medicham - Psych Up - Level 31
  (308, 30800, 244, 21, NULL, 1, 31, NULL, NULL, NULL, 18),
  -- Medicham - Acupressure - Level 33
  (308, 30800, 367, 21, NULL, 1, 33, NULL, NULL, NULL, 19),
  -- Medicham - Power Trick - Level 36
  (308, 30800, 379, 21, NULL, 1, 36, NULL, NULL, NULL, 20),
  -- Medicham - Reversal - Level 42
  (308, 30800, 179, 21, NULL, 1, 42, NULL, NULL, NULL, 21),
  -- Medicham - Recover - Level 47
  (308, 30800, 105, 21, NULL, 1, 47, NULL, NULL, NULL, 22),
  -- Medicham - Counter - Level 53
  (308, 30800, 68, 21, NULL, 1, 53, NULL, NULL, NULL, 23),
  -- Medicham - Focus Punch - TM01
  (308, 30800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 24),
  -- Medicham - Calm Mind - TM04
  (308, 30800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 25),
  -- Medicham - Bulk Up - TM08
  (308, 30800, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 26),
  -- Medicham - Work Up - TM10
  (308, 30800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 27),
  -- Medicham - Sunny Day - TM11
  (308, 30800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 28),
  -- Medicham - Hyper Beam - TM15
  (308, 30800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 29),
  -- Medicham - Light Screen - TM16
  (308, 30800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 30),
  -- Medicham - Protect - TM17
  (308, 30800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Medicham - Rain Dance - TM18
  (308, 30800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Medicham - Low Sweep - TM27
  (308, 30800, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 33),
  -- Medicham - Psychic - TM29
  (308, 30800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 34),
  -- Medicham - Shadow Ball - TM30
  (308, 30800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 35),
  -- Medicham - Brick Break - TM31
  (308, 30800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 36),
  -- Medicham - Double Team - TM32
  (308, 30800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Medicham - Reflect - TM33
  (308, 30800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 38),
  -- Medicham - Rock Tomb - TM39
  (308, 30800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Medicham - Facade - TM42
  (308, 30800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Medicham - Rest - TM44
  (308, 30800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Medicham - Attract - TM45
  (308, 30800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Medicham - Focus Blast - TM52
  (308, 30800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 43),
  -- Medicham - Energy Ball - TM53
  (308, 30800, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 44),
  -- Medicham - Fling - TM56
  (308, 30800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 45),
  -- Medicham - Endure - TM58
  (308, 30800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Medicham - Drain Punch - TM60
  (308, 30800, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 47),
  -- Medicham - Recycle - TM67
  (308, 30800, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 48),
  -- Medicham - Giga Impact - TM68
  (308, 30800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 49),
  -- Medicham - Flash - TM70
  (308, 30800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 50),
  -- Medicham - Psych Up - TM77
  (308, 30800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 51),
  -- Medicham - Rock Slide - TM80
  (308, 30800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 52),
  -- Medicham - Sleep Talk - TM82
  (308, 30800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Medicham - Poison Jab - TM84
  (308, 30800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 54),
  -- Medicham - Dream Eater - TM85
  (308, 30800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 55),
  -- Medicham - Grass Knot - TM86
  (308, 30800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 56),
  -- Medicham - Swagger - TM87
  (308, 30800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Medicham - Substitute - TM90
  (308, 30800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Medicham - Strength - TM96
  (308, 30800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Medicham - Rock Smash - TM98
  (308, 30800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Medicham - Baton Pass - Egg
  (308, 30800, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Medicham - Bullet Punch - Egg
  (308, 30800, 418, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Medicham - Dynamic Punch - Egg
  (308, 30800, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Medicham - Fake Out - Egg
  (308, 30800, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Medicham - Fire Punch - Egg
  (308, 30800, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Medicham - Guard Swap - Egg
  (308, 30800, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Medicham - Ice Punch - Egg
  (308, 30800, 8, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Medicham - Power Swap - Egg
  (308, 30800, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Medicham - Psycho Cut - Egg
  (308, 30800, 427, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Medicham - Quick Guard - Egg
  (308, 30800, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Medicham - Thunder Punch - Egg
  (308, 30800, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Electrike - Tackle - Starting Move
  (309, 30900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Starting Move
  (309, 30900, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 4
  (309, 30900, 43, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 8
  (309, 30900, 336, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 12
  (309, 30900, 98, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electrike - Shock Wave - Level 16
  (309, 30900, 351, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electrike - Bite - Level 20
  (309, 30900, 44, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electrike - Thunder Fang - Level 24
  (309, 30900, 422, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electrike - Roar - Level 28
  (309, 30900, 46, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electrike - Discharge - Level 32
  (309, 30900, 435, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Electrike - Charge - Level 36
  (309, 30900, 268, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Electrike - Wild Charge - Level 40
  (309, 30900, 528, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Electrike - Thunder - Level 44
  (309, 30900, 87, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Electrike - Roar - TM05
  (309, 30900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 14),
  -- Electrike - Light Screen - TM16
  (309, 30900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 15),
  -- Electrike - Protect - TM17
  (309, 30900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Electrike - Rain Dance - TM18
  (309, 30900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Electrike - Iron Tail - TM23
  (309, 30900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 18),
  -- Electrike - Thunderbolt - TM24
  (309, 30900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 19),
  -- Electrike - Thunder - TM25
  (309, 30900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 20),
  -- Electrike - Double Team - TM32
  (309, 30900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Electrike - Shock Wave - TM34
  (309, 30900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 22),
  -- Electrike - Flamethrower - TM35
  (309, 30900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 23),
  -- Electrike - Facade - TM42
  (309, 30900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Electrike - Volt Switch - TM43
  (309, 30900, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 25),
  -- Electrike - Rest - TM44
  (309, 30900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Electrike - Attract - TM45
  (309, 30900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Electrike - Thief - TM46
  (309, 30900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Electrike - Charge Beam - TM57
  (309, 30900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 29),
  -- Electrike - Endure - TM58
  (309, 30900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Electrike - Flash - TM70
  (309, 30900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Electrike - Thunder Wave - TM73
  (309, 30900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 32),
  -- Electrike - Snarl - TM78
  (309, 30900, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 33),
  -- Electrike - Sleep Talk - TM82
  (309, 30900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Electrike - Swagger - TM87
  (309, 30900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Electrike - Substitute - TM90
  (309, 30900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Electrike - Strength - TM96
  (309, 30900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 37),
  -- Electrike - Crunch - Egg
  (309, 30900, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Electrike - Curse - Egg
  (309, 30900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Electrike - Discharge - Egg
  (309, 30900, 435, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Electrike - Eerie Impulse - Egg
  (309, 30900, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Electrike - Electro Ball - Egg
  (309, 30900, 486, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Electrike - Fire Fang - Egg
  (309, 30900, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Electrike - Headbutt - Egg
  (309, 30900, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Electrike - Ice Fang - Egg
  (309, 30900, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Electrike - Spark - Egg
  (309, 30900, 209, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Electrike - Swift - Egg
  (309, 30900, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrike - Switcheroo - Egg
  (309, 30900, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electrike - Thunder Fang - Egg
  (309, 30900, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electrike - Uproar - Egg
  (309, 30900, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Manectric - Fire Fang - Starting Move
  (310, 31000, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Manectric - Tackle - Starting Move
  (310, 31000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Manectric - Thunder Wave - Starting Move
  (310, 31000, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Manectric - Leer - Starting Move
  (310, 31000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Manectric - Howl - Starting Move
  (310, 31000, 336, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Manectric - Quick Attack - Level 12
  (310, 31000, 98, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Manectric - Shock Wave - Level 16
  (310, 31000, 351, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Manectric - Bite - Level 20
  (310, 31000, 44, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Manectric - Thunder Fang - Level 24
  (310, 31000, 422, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Manectric - Roar - Level 30
  (310, 31000, 46, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Manectric - Discharge - Level 36
  (310, 31000, 435, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Manectric - Charge - Level 42
  (310, 31000, 268, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Manectric - Wild Charge - Level 48
  (310, 31000, 528, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Manectric - Thunder - Level 54
  (310, 31000, 87, 21, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Manectric - Electric Terrain - Level 60
  (310, 31000, 604, 21, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Manectric - Roar - TM05
  (310, 31000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Manectric - Hyper Beam - TM15
  (310, 31000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Manectric - Light Screen - TM16
  (310, 31000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 18),
  -- Manectric - Protect - TM17
  (310, 31000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Manectric - Rain Dance - TM18
  (310, 31000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Manectric - Iron Tail - TM23
  (310, 31000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Manectric - Thunderbolt - TM24
  (310, 31000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Manectric - Thunder - TM25
  (310, 31000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Manectric - Double Team - TM32
  (310, 31000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Manectric - Shock Wave - TM34
  (310, 31000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 25),
  -- Manectric - Flamethrower - TM35
  (310, 31000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Manectric - Facade - TM42
  (310, 31000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Manectric - Volt Switch - TM43
  (310, 31000, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 28),
  -- Manectric - Rest - TM44
  (310, 31000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Manectric - Attract - TM45
  (310, 31000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Manectric - Thief - TM46
  (310, 31000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Manectric - Overheat - TM50
  (310, 31000, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 32),
  -- Manectric - Charge Beam - TM57
  (310, 31000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 33),
  -- Manectric - Endure - TM58
  (310, 31000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Manectric - Giga Impact - TM68
  (310, 31000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Manectric - Flash - TM70
  (310, 31000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 36),
  -- Manectric - Thunder Wave - TM73
  (310, 31000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 37),
  -- Manectric - Snarl - TM78
  (310, 31000, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 38),
  -- Manectric - Sleep Talk - TM82
  (310, 31000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Manectric - Swagger - TM87
  (310, 31000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Manectric - Substitute - TM90
  (310, 31000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Manectric - Strength - TM96
  (310, 31000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Manectric - Crunch - Egg
  (310, 31000, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Manectric - Curse - Egg
  (310, 31000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Manectric - Discharge - Egg
  (310, 31000, 435, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Manectric - Eerie Impulse - Egg
  (310, 31000, 598, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Manectric - Electro Ball - Egg
  (310, 31000, 486, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Manectric - Fire Fang - Egg
  (310, 31000, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Manectric - Headbutt - Egg
  (310, 31000, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Manectric - Ice Fang - Egg
  (310, 31000, 423, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Manectric - Spark - Egg
  (310, 31000, 209, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Manectric - Swift - Egg
  (310, 31000, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Manectric - Switcheroo - Egg
  (310, 31000, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Manectric - Thunder Fang - Egg
  (310, 31000, 422, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Manectric - Uproar - Egg
  (310, 31000, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Plusle - Nuzzle - Starting Move
  (311, 31100, 609, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Plusle - Play Nice - Starting Move
  (311, 31100, 589, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Plusle - Growl - Starting Move
  (311, 31100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Plusle - Thunder Wave - Starting Move
  (311, 31100, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Plusle - Quick Attack - Starting Move
  (311, 31100, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Plusle - Helping Hand - Level 4
  (311, 31100, 270, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Plusle - Spark - Level 7
  (311, 31100, 209, 21, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Plusle - Encore - Level 10
  (311, 31100, 227, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Plusle - Skill Swap - Level 13
  (311, 31100, 285, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Plusle - Swift - Level 16
  (311, 31100, 129, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Plusle - Electro Ball - Level 19
  (311, 31100, 486, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Plusle - Copycat - Level 22
  (311, 31100, 383, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Plusle - Charm - Level 25
  (311, 31100, 204, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Plusle - Charge - Level 28
  (311, 31100, 268, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Plusle - Discharge - Level 31
  (311, 31100, 435, 21, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Plusle - Baton Pass - Level 34
  (311, 31100, 226, 21, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Plusle - Agility - Level 37
  (311, 31100, 97, 21, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Plusle - Last Resort - Level 40
  (311, 31100, 387, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Plusle - Thunder - Level 43
  (311, 31100, 87, 21, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Plusle - Nasty Plot - Level 46
  (311, 31100, 417, 21, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Plusle - Entrainment - Level 49
  (311, 31100, 494, 21, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Plusle - Light Screen - TM16
  (311, 31100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Plusle - Protect - TM17
  (311, 31100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Plusle - Rain Dance - TM18
  (311, 31100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Plusle - Iron Tail - TM23
  (311, 31100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Plusle - Thunderbolt - TM24
  (311, 31100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Plusle - Thunder - TM25
  (311, 31100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Plusle - Double Team - TM32
  (311, 31100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Plusle - Shock Wave - TM34
  (311, 31100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Plusle - Facade - TM42
  (311, 31100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Plusle - Volt Switch - TM43
  (311, 31100, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 31),
  -- Plusle - Rest - TM44
  (311, 31100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Plusle - Attract - TM45
  (311, 31100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Plusle - Skill Swap - TM48
  (311, 31100, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 34),
  -- Plusle - Fling - TM56
  (311, 31100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Plusle - Charge Beam - TM57
  (311, 31100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 36),
  -- Plusle - Endure - TM58
  (311, 31100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Plusle - Nasty Plot - TM63
  (311, 31100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 38),
  -- Plusle - Flash - TM70
  (311, 31100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Plusle - Thunder Wave - TM73
  (311, 31100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Plusle - Sleep Talk - TM82
  (311, 31100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Plusle - Grass Knot - TM86
  (311, 31100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 42),
  -- Plusle - Swagger - TM87
  (311, 31100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Plusle - Substitute - TM90
  (311, 31100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Plusle - Charm - Egg
  (311, 31100, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Plusle - Discharge - Egg
  (311, 31100, 435, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Plusle - Fake Tears - Egg
  (311, 31100, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Plusle - Sing - Egg
  (311, 31100, 47, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Plusle - Sweet Kiss - Egg
  (311, 31100, 186, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Plusle - Tearful Look - Egg
  (311, 31100, 715, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Plusle - Wish - Egg
  (311, 31100, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minun - Nuzzle - Starting Move
  (312, 31200, 609, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Minun - Play Nice - Starting Move
  (312, 31200, 589, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Minun - Growl - Starting Move
  (312, 31200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Minun - Thunder Wave - Starting Move
  (312, 31200, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Minun - Quick Attack - Starting Move
  (312, 31200, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Minun - Helping Hand - Level 4
  (312, 31200, 270, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Minun - Spark - Level 7
  (312, 31200, 209, 21, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Minun - Encore - Level 10
  (312, 31200, 227, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Minun - Switcheroo - Level 13
  (312, 31200, 415, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Minun - Swift - Level 16
  (312, 31200, 129, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Minun - Electro Ball - Level 19
  (312, 31200, 486, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Minun - Copycat - Level 22
  (312, 31200, 383, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Minun - Fake Tears - Level 25
  (312, 31200, 313, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Minun - Charge - Level 28
  (312, 31200, 268, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Minun - Discharge - Level 31
  (312, 31200, 435, 21, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Minun - Baton Pass - Level 34
  (312, 31200, 226, 21, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Minun - Agility - Level 37
  (312, 31200, 97, 21, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Minun - Last Resort - Level 40
  (312, 31200, 387, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Minun - Thunder - Level 43
  (312, 31200, 87, 21, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Minun - Nasty Plot - Level 46
  (312, 31200, 417, 21, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Minun - Entrainment - Level 49
  (312, 31200, 494, 21, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Minun - Light Screen - TM16
  (312, 31200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Minun - Protect - TM17
  (312, 31200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Minun - Rain Dance - TM18
  (312, 31200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Minun - Iron Tail - TM23
  (312, 31200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Minun - Thunderbolt - TM24
  (312, 31200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Minun - Thunder - TM25
  (312, 31200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Minun - Double Team - TM32
  (312, 31200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Minun - Shock Wave - TM34
  (312, 31200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Minun - Facade - TM42
  (312, 31200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Minun - Volt Switch - TM43
  (312, 31200, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 31),
  -- Minun - Rest - TM44
  (312, 31200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Minun - Attract - TM45
  (312, 31200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Minun - Fling - TM56
  (312, 31200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Minun - Charge Beam - TM57
  (312, 31200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Minun - Endure - TM58
  (312, 31200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Minun - Nasty Plot - TM63
  (312, 31200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 37),
  -- Minun - Flash - TM70
  (312, 31200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Minun - Thunder Wave - TM73
  (312, 31200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Minun - Sleep Talk - TM82
  (312, 31200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Minun - Grass Knot - TM86
  (312, 31200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Minun - Swagger - TM87
  (312, 31200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Minun - Substitute - TM90
  (312, 31200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Minun - Charm - Egg
  (312, 31200, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Minun - Discharge - Egg
  (312, 31200, 435, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Minun - Fake Tears - Egg
  (312, 31200, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Minun - Sing - Egg
  (312, 31200, 47, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minun - Sweet Kiss - Egg
  (312, 31200, 186, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minun - Tearful Look - Egg
  (312, 31200, 715, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minun - Wish - Egg
  (312, 31200, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Volbeat - Play Nice - Starting Move
  (313, 31300, 589, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Volbeat - Tackle - Starting Move
  (313, 31300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Volbeat - Double Team - Level 5
  (313, 31300, 104, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Volbeat - Confuse Ray - Level 8
  (313, 31300, 109, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Volbeat - Quick Attack - Level 12
  (313, 31300, 98, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Volbeat - Struggle Bug - Level 15
  (313, 31300, 522, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Volbeat - Moonlight - Level 19
  (313, 31300, 236, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Volbeat - Tail Glow - Level 22
  (313, 31300, 294, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Volbeat - Encore - Level 26
  (313, 31300, 227, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Volbeat - Protect - Level 29
  (313, 31300, 182, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Volbeat - Zen Headbutt - Level 33
  (313, 31300, 428, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Volbeat - Helping Hand - Level 36
  (313, 31300, 270, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Volbeat - Bug Buzz - Level 40
  (313, 31300, 405, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Volbeat - Play Rough - Level 43
  (313, 31300, 583, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Volbeat - Double-Edge - Level 47
  (313, 31300, 38, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Volbeat - Infestation - Level 50
  (313, 31300, 611, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Volbeat - Focus Punch - TM01
  (313, 31300, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Volbeat - Water Pulse - TM03
  (313, 31300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Volbeat - Sunny Day - TM11
  (313, 31300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Volbeat - Light Screen - TM16
  (313, 31300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Volbeat - Protect - TM17
  (313, 31300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Volbeat - Rain Dance - TM18
  (313, 31300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Volbeat - Giga Drain - TM19
  (313, 31300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Volbeat - Dazzling Gleam - TM21
  (313, 31300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Volbeat - Solar Beam - TM22
  (313, 31300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Volbeat - Thunderbolt - TM24
  (313, 31300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Volbeat - Thunder - TM25
  (313, 31300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Volbeat - Shadow Ball - TM30
  (313, 31300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Volbeat - Brick Break - TM31
  (313, 31300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Volbeat - Double Team - TM32
  (313, 31300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Volbeat - Shock Wave - TM34
  (313, 31300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Volbeat - Aerial Ace - TM40
  (313, 31300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Volbeat - Facade - TM42
  (313, 31300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Volbeat - Rest - TM44
  (313, 31300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Volbeat - Attract - TM45
  (313, 31300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Volbeat - Thief - TM46
  (313, 31300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Volbeat - Roost - TM51
  (313, 31300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 37),
  -- Volbeat - Fling - TM56
  (313, 31300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Volbeat - Charge Beam - TM57
  (313, 31300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Volbeat - Endure - TM58
  (313, 31300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Volbeat - Bug Buzz - TM62
  (313, 31300, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 41),
  -- Volbeat - Flash - TM70
  (313, 31300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Volbeat - Thunder Wave - TM73
  (313, 31300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Volbeat - Psych Up - TM77
  (313, 31300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Volbeat - Sleep Talk - TM82
  (313, 31300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Volbeat - Swagger - TM87
  (313, 31300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Volbeat - U-turn - TM89
  (313, 31300, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 47),
  -- Volbeat - Substitute - TM90
  (313, 31300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Volbeat - Baton Pass - Egg
  (313, 31300, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Volbeat - Encore - Egg
  (313, 31300, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Volbeat - Lunge - Egg
  (313, 31300, 679, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Volbeat - Seismic Toss - Egg
  (313, 31300, 69, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Volbeat - Trick - Egg
  (313, 31300, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Illumise - Play Nice - Starting Move
  (314, 31400, 589, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Illumise - Tackle - Starting Move
  (314, 31400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 12
  (314, 31400, 98, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Illumise - Struggle Bug - Level 15
  (314, 31400, 522, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Illumise - Moonlight - Level 19
  (314, 31400, 236, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Illumise - Wish - Level 22
  (314, 31400, 273, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Illumise - Encore - Level 26
  (314, 31400, 227, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Illumise - Zen Headbutt - Level 33
  (314, 31400, 428, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Illumise - Helping Hand - Level 36
  (314, 31400, 270, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Illumise - Bug Buzz - Level 40
  (314, 31400, 405, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Illumise - Play Rough - Level 43
  (314, 31400, 583, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Illumise - Covet - Level 47
  (314, 31400, 343, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Illumise - Infestation - Level 50
  (314, 31400, 611, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Illumise - Focus Punch - TM01
  (314, 31400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Illumise - Water Pulse - TM03
  (314, 31400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Illumise - Sunny Day - TM11
  (314, 31400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Illumise - Light Screen - TM16
  (314, 31400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Illumise - Protect - TM17
  (314, 31400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Illumise - Rain Dance - TM18
  (314, 31400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Illumise - Giga Drain - TM19
  (314, 31400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Illumise - Dazzling Gleam - TM21
  (314, 31400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 24),
  -- Illumise - Solar Beam - TM22
  (314, 31400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Illumise - Thunderbolt - TM24
  (314, 31400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Illumise - Thunder - TM25
  (314, 31400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Illumise - Shadow Ball - TM30
  (314, 31400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Illumise - Brick Break - TM31
  (314, 31400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Illumise - Double Team - TM32
  (314, 31400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Illumise - Shock Wave - TM34
  (314, 31400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 31),
  -- Illumise - Aerial Ace - TM40
  (314, 31400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Illumise - Facade - TM42
  (314, 31400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Illumise - Rest - TM44
  (314, 31400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Illumise - Attract - TM45
  (314, 31400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Illumise - Thief - TM46
  (314, 31400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 36),
  -- Illumise - Roost - TM51
  (314, 31400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 37),
  -- Illumise - Fling - TM56
  (314, 31400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Illumise - Charge Beam - TM57
  (314, 31400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Illumise - Endure - TM58
  (314, 31400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Illumise - Bug Buzz - TM62
  (314, 31400, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 41),
  -- Illumise - Flash - TM70
  (314, 31400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Illumise - Thunder Wave - TM73
  (314, 31400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Illumise - Psych Up - TM77
  (314, 31400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 44),
  -- Illumise - Sleep Talk - TM82
  (314, 31400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Illumise - Swagger - TM87
  (314, 31400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Illumise - U-turn - TM89
  (314, 31400, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 47),
  -- Illumise - Substitute - TM90
  (314, 31400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Illumise - Aromatherapy - Egg
  (314, 31400, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Illumise - Baton Pass - Egg
  (314, 31400, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Illumise - Confuse Ray - Egg
  (314, 31400, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Illumise - Encore - Egg
  (314, 31400, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Illumise - Fake Tears - Egg
  (314, 31400, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Illumise - Growth - Egg
  (314, 31400, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Poison Sting - Starting Move
  (315, 31500, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Roselia - Absorb - Starting Move
  (315, 31500, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Roselia - Growth - Starting Move
  (315, 31500, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Starting Move
  (315, 31500, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Roselia - Worry Seed - Starting Move
  (315, 31500, 388, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Roselia - Poison Sting - Evolution
  (315, 31500, 40, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Roselia - Mega Drain - Level 5
  (315, 31500, 72, 21, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Roselia - Leech Seed - Level 10
  (315, 31500, 73, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Roselia - Magical Leaf - Level 15
  (315, 31500, 345, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Roselia - Toxic Spikes - Level 20
  (315, 31500, 390, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Roselia - Sweet Scent - Level 25
  (315, 31500, 230, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Roselia - Giga Drain - Level 30
  (315, 31500, 202, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Roselia - Synthesis - Level 35
  (315, 31500, 235, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Roselia - Toxic - Level 40
  (315, 31500, 92, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Roselia - Petal Blizzard - Level 45
  (315, 31500, 572, 21, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Roselia - Aromatherapy - Level 50
  (315, 31500, 312, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Roselia - Ingrain - Level 55
  (315, 31500, 275, 21, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Roselia - Petal Dance - Level 60
  (315, 31500, 80, 21, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Roselia - Toxic - TM06
  (315, 31500, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 19),
  -- Roselia - Bullet Seed - TM09
  (315, 31500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 20),
  -- Roselia - Sunny Day - TM11
  (315, 31500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Roselia - Protect - TM17
  (315, 31500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Roselia - Rain Dance - TM18
  (315, 31500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Roselia - Giga Drain - TM19
  (315, 31500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 24),
  -- Roselia - Dazzling Gleam - TM21
  (315, 31500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Roselia - Solar Beam - TM22
  (315, 31500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Roselia - Shadow Ball - TM30
  (315, 31500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Roselia - Double Team - TM32
  (315, 31500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Roselia - Sludge Bomb - TM36
  (315, 31500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Roselia - Facade - TM42
  (315, 31500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Roselia - Rest - TM44
  (315, 31500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Roselia - Attract - TM45
  (315, 31500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Roselia - Energy Ball - TM53
  (315, 31500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 33),
  -- Roselia - Endure - TM58
  (315, 31500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Roselia - Flash - TM70
  (315, 31500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 35),
  -- Roselia - Swords Dance - TM75
  (315, 31500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 36),
  -- Roselia - Psych Up - TM77
  (315, 31500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 37),
  -- Roselia - Sleep Talk - TM82
  (315, 31500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Roselia - Poison Jab - TM84
  (315, 31500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 39),
  -- Roselia - Grass Knot - TM86
  (315, 31500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 40),
  -- Roselia - Swagger - TM87
  (315, 31500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Roselia - Substitute - TM90
  (315, 31500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Roselia - Cut - TM93
  (315, 31500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Roselia - Cotton Spore - Egg
  (315, 31500, 178, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Roselia - Extrasensory - Egg
  (315, 31500, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Roselia - Leaf Storm - Egg
  (315, 31500, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Roselia - Life Dew - Egg
  (315, 31500, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roselia - Mind Reader - Egg
  (315, 31500, 170, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roselia - Pin Missile - Egg
  (315, 31500, 42, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Roselia - Power Whip - Egg
  (315, 31500, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Roselia - Razor Leaf - Egg
  (315, 31500, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Roselia - Seed Bomb - Egg
  (315, 31500, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roselia - Sleep Powder - Egg
  (315, 31500, 79, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roselia - Spikes - Egg
  (315, 31500, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Synthesis - Egg
  (315, 31500, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gulpin - Pound - Starting Move
  (316, 31600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 5
  (316, 31600, 281, 21, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 8
  (316, 31600, 139, 21, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 10
  (316, 31600, 124, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 12
  (316, 31600, 133, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gulpin - Acid Spray - Level 17
  (316, 31600, 491, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Gulpin - Encore - Level 20
  (316, 31600, 227, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gulpin - Toxic - Level 25
  (316, 31600, 92, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Gulpin - Stockpile - Level 28
  (316, 31600, 254, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gulpin - Spit Up - Level 28
  (316, 31600, 255, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Gulpin - Swallow - Level 28
  (316, 31600, 256, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gulpin - Sludge Bomb - Level 33
  (316, 31600, 188, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gulpin - Gastro Acid - Level 36
  (316, 31600, 380, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gulpin - Belch - Level 41
  (316, 31600, 562, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Gulpin - Pain Split - Level 44
  (316, 31600, 220, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Gulpin - Gunk Shot - Level 49
  (316, 31600, 441, 21, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gulpin - Water Pulse - TM03
  (316, 31600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Gulpin - Toxic - TM06
  (316, 31600, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 18),
  -- Gulpin - Bullet Seed - TM09
  (316, 31600, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 19),
  -- Gulpin - Sunny Day - TM11
  (316, 31600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Gulpin - Ice Beam - TM13
  (316, 31600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Gulpin - Protect - TM17
  (316, 31600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Gulpin - Rain Dance - TM18
  (316, 31600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Gulpin - Solar Beam - TM22
  (316, 31600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Gulpin - Shadow Ball - TM30
  (316, 31600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Gulpin - Double Team - TM32
  (316, 31600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Gulpin - Shock Wave - TM34
  (316, 31600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Gulpin - Sludge Bomb - TM36
  (316, 31600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Gulpin - Facade - TM42
  (316, 31600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Gulpin - Rest - TM44
  (316, 31600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Gulpin - Attract - TM45
  (316, 31600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Gulpin - Endure - TM58
  (316, 31600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Gulpin - Explosion - TM64
  (316, 31600, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 33),
  -- Gulpin - Sleep Talk - TM82
  (316, 31600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Gulpin - Dream Eater - TM85
  (316, 31600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 35),
  -- Gulpin - Swagger - TM87
  (316, 31600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Gulpin - Substitute - TM90
  (316, 31600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Gulpin - Strength - TM96
  (316, 31600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Gulpin - Rock Smash - TM98
  (316, 31600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Gulpin - Acid Armor - Egg
  (316, 31600, 151, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gulpin - Curse - Egg
  (316, 31600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Gulpin - Destiny Bond - Egg
  (316, 31600, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gulpin - Gunk Shot - Egg
  (316, 31600, 441, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gulpin - Mud-Slap - Egg
  (316, 31600, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gulpin - Pain Split - Egg
  (316, 31600, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gulpin - Smog - Egg
  (316, 31600, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gulpin - Venom Drench - Egg
  (316, 31600, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swalot - Body Slam - Starting Move
  (317, 31700, 34, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Swalot - Venom Drench - Starting Move
  (317, 31700, 599, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Swalot - Gunk Shot - Starting Move
  (317, 31700, 441, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Swalot - Pound - Starting Move
  (317, 31700, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Swalot - Yawn - Starting Move
  (317, 31700, 281, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Swalot - Poison Gas - Starting Move
  (317, 31700, 139, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Swalot - Sludge - Starting Move
  (317, 31700, 124, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Swalot - Body Slam - Evolution
  (317, 31700, 34, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Swalot - Yawn - Level 5
  (317, 31700, 281, 21, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Swalot - Poison Gas - Level 8
  (317, 31700, 139, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Swalot - Sludge - Level 10
  (317, 31700, 124, 21, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Swalot - Amnesia - Level 12
  (317, 31700, 133, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Swalot - Acid Spray - Level 17
  (317, 31700, 491, 21, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Swalot - Encore - Level 20
  (317, 31700, 227, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Swalot - Toxic - Level 25
  (317, 31700, 92, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Swalot - Stockpile - Level 30
  (317, 31700, 254, 21, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Swalot - Spit Up - Level 30
  (317, 31700, 255, 21, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Swalot - Swallow - Level 30
  (317, 31700, 256, 21, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Swalot - Sludge Bomb - Level 37
  (317, 31700, 188, 21, NULL, 1, 37, NULL, NULL, NULL, 19),
  -- Swalot - Gastro Acid - Level 42
  (317, 31700, 380, 21, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Swalot - Belch - Level 49
  (317, 31700, 562, 21, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Swalot - Pain Split - Level 54
  (317, 31700, 220, 21, NULL, 1, 54, NULL, NULL, NULL, 22),
  -- Swalot - Gunk Shot - Level 61
  (317, 31700, 441, 21, NULL, 1, 61, NULL, NULL, NULL, 23),
  -- Swalot - Water Pulse - TM03
  (317, 31700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Swalot - Toxic - TM06
  (317, 31700, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 25),
  -- Swalot - Bullet Seed - TM09
  (317, 31700, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 26),
  -- Swalot - Sunny Day - TM11
  (317, 31700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Swalot - Ice Beam - TM13
  (317, 31700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Swalot - Hyper Beam - TM15
  (317, 31700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 29),
  -- Swalot - Protect - TM17
  (317, 31700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 30),
  -- Swalot - Rain Dance - TM18
  (317, 31700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 31),
  -- Swalot - Solar Beam - TM22
  (317, 31700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 32),
  -- Swalot - Earthquake - TM26
  (317, 31700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 33),
  -- Swalot - Shadow Ball - TM30
  (317, 31700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Swalot - Double Team - TM32
  (317, 31700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Swalot - Shock Wave - TM34
  (317, 31700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Swalot - Sludge Bomb - TM36
  (317, 31700, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 37),
  -- Swalot - Facade - TM42
  (317, 31700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 38),
  -- Swalot - Rest - TM44
  (317, 31700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Swalot - Attract - TM45
  (317, 31700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Swalot - Endure - TM58
  (317, 31700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Swalot - Explosion - TM64
  (317, 31700, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 42),
  -- Swalot - Giga Impact - TM68
  (317, 31700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Swalot - Sleep Talk - TM82
  (317, 31700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Swalot - Bulldoze - TM83
  (317, 31700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Swalot - Dream Eater - TM85
  (317, 31700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 46),
  -- Swalot - Swagger - TM87
  (317, 31700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Swalot - Substitute - TM90
  (317, 31700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Swalot - Strength - TM96
  (317, 31700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Swalot - Rock Smash - TM98
  (317, 31700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Swalot - Acid Armor - Egg
  (317, 31700, 151, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swalot - Curse - Egg
  (317, 31700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swalot - Destiny Bond - Egg
  (317, 31700, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Swalot - Gunk Shot - Egg
  (317, 31700, 441, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Swalot - Mud-Slap - Egg
  (317, 31700, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Swalot - Pain Split - Egg
  (317, 31700, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Swalot - Smog - Egg
  (317, 31700, 123, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Swalot - Venom Drench - Egg
  (317, 31700, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Carvanha - Aqua Jet - Starting Move
  (318, 31800, 453, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Carvanha - Leer - Starting Move
  (318, 31800, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Carvanha - Poison Fang - Level 4
  (318, 31800, 305, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carvanha - Scary Face - Level 12
  (318, 31800, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Carvanha - Bite - Level 16
  (318, 31800, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Carvanha - Ice Fang - Level 20
  (318, 31800, 423, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Carvanha - Screech - Level 24
  (318, 31800, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Carvanha - Swagger - Level 28
  (318, 31800, 207, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Carvanha - Crunch - Level 32
  (318, 31800, 242, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Carvanha - Agility - Level 36
  (318, 31800, 97, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Carvanha - Liquidation - Level 40
  (318, 31800, 710, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Carvanha - Take Down - Level 44
  (318, 31800, 36, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Carvanha - Water Pulse - TM03
  (318, 31800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Carvanha - Hail - TM07
  (318, 31800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Carvanha - Taunt - TM12
  (318, 31800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 16),
  -- Carvanha - Ice Beam - TM13
  (318, 31800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Carvanha - Blizzard - TM14
  (318, 31800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Carvanha - Protect - TM17
  (318, 31800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Carvanha - Rain Dance - TM18
  (318, 31800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Carvanha - Double Team - TM32
  (318, 31800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Carvanha - Torment - TM41
  (318, 31800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 22),
  -- Carvanha - Facade - TM42
  (318, 31800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Carvanha - Rest - TM44
  (318, 31800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Carvanha - Attract - TM45
  (318, 31800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Carvanha - Thief - TM46
  (318, 31800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 26),
  -- Carvanha - Scald - TM49
  (318, 31800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 27),
  -- Carvanha - Brine - TM55
  (318, 31800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 28),
  -- Carvanha - Endure - TM58
  (318, 31800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Carvanha - Payback - TM66
  (318, 31800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 30),
  -- Carvanha - Snarl - TM78
  (318, 31800, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 31),
  -- Carvanha - Dark Pulse - TM79
  (318, 31800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 32),
  -- Carvanha - Sleep Talk - TM82
  (318, 31800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Carvanha - Swagger - TM87
  (318, 31800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Carvanha - Substitute - TM90
  (318, 31800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Carvanha - Surf - TM95
  (318, 31800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 36),
  -- Carvanha - Waterfall - TM99
  (318, 31800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 37),
  -- Carvanha - Ancient Power - Egg
  (318, 31800, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Carvanha - Destiny Bond - Egg
  (318, 31800, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Carvanha - Double-Edge - Egg
  (318, 31800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Carvanha - Hydro Pump - Egg
  (318, 31800, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Carvanha - Swift - Egg
  (318, 31800, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carvanha - Thrash - Egg
  (318, 31800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sharpedo - Slash - Starting Move
  (319, 31900, 163, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sharpedo - Night Slash - Starting Move
  (319, 31900, 400, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sharpedo - Aqua Jet - Starting Move
  (319, 31900, 453, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Sharpedo - Leer - Starting Move
  (319, 31900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Sharpedo - Poison Fang - Starting Move
  (319, 31900, 305, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Sharpedo - Focus Energy - Starting Move
  (319, 31900, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Sharpedo - Slash - Evolution
  (319, 31900, 163, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Sharpedo - Scary Face - Level 12
  (319, 31900, 184, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Sharpedo - Bite - Level 16
  (319, 31900, 44, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sharpedo - Ice Fang - Level 20
  (319, 31900, 423, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Sharpedo - Screech - Level 24
  (319, 31900, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Sharpedo - Swagger - Level 28
  (319, 31900, 207, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Sharpedo - Crunch - Level 34
  (319, 31900, 242, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Sharpedo - Agility - Level 40
  (319, 31900, 97, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Sharpedo - Liquidation - Level 46
  (319, 31900, 710, 21, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Sharpedo - Take Down - Level 52
  (319, 31900, 36, 21, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Sharpedo - Water Pulse - TM03
  (319, 31900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Sharpedo - Roar - TM05
  (319, 31900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Sharpedo - Hail - TM07
  (319, 31900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Sharpedo - Taunt - TM12
  (319, 31900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Sharpedo - Ice Beam - TM13
  (319, 31900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Sharpedo - Blizzard - TM14
  (319, 31900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Sharpedo - Hyper Beam - TM15
  (319, 31900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Sharpedo - Protect - TM17
  (319, 31900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Sharpedo - Rain Dance - TM18
  (319, 31900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Sharpedo - Earthquake - TM26
  (319, 31900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Sharpedo - Double Team - TM32
  (319, 31900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Sharpedo - Rock Tomb - TM39
  (319, 31900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Sharpedo - Torment - TM41
  (319, 31900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Sharpedo - Facade - TM42
  (319, 31900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Sharpedo - Rest - TM44
  (319, 31900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Sharpedo - Attract - TM45
  (319, 31900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Sharpedo - Thief - TM46
  (319, 31900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Sharpedo - Scald - TM49
  (319, 31900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 34),
  -- Sharpedo - Brine - TM55
  (319, 31900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 35),
  -- Sharpedo - Endure - TM58
  (319, 31900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Sharpedo - Payback - TM66
  (319, 31900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Sharpedo - Giga Impact - TM68
  (319, 31900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Sharpedo - Avalanche - TM72
  (319, 31900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 39),
  -- Sharpedo - Snarl - TM78
  (319, 31900, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 40),
  -- Sharpedo - Dark Pulse - TM79
  (319, 31900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 41),
  -- Sharpedo - Sleep Talk - TM82
  (319, 31900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Sharpedo - Bulldoze - TM83
  (319, 31900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Sharpedo - Poison Jab - TM84
  (319, 31900, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 44),
  -- Sharpedo - Swagger - TM87
  (319, 31900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Sharpedo - Substitute - TM90
  (319, 31900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Sharpedo - Surf - TM95
  (319, 31900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 47),
  -- Sharpedo - Strength - TM96
  (319, 31900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Sharpedo - Rock Smash - TM98
  (319, 31900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Sharpedo - Waterfall - TM99
  (319, 31900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 50),
  -- Sharpedo - Ancient Power - Egg
  (319, 31900, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sharpedo - Destiny Bond - Egg
  (319, 31900, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sharpedo - Double-Edge - Egg
  (319, 31900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sharpedo - Hydro Pump - Egg
  (319, 31900, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sharpedo - Swift - Egg
  (319, 31900, 129, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sharpedo - Thrash - Egg
  (319, 31900, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wailmer - Splash - Starting Move
  (320, 32000, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 3
  (320, 32000, 45, 21, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Wailmer - Astonish - Level 6
  (320, 32000, 310, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Wailmer - Water Gun - Level 12
  (320, 32000, 55, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Wailmer - Mist - Level 15
  (320, 32000, 54, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wailmer - Water Pulse - Level 18
  (320, 32000, 352, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Wailmer - Heavy Slam - Level 21
  (320, 32000, 484, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wailmer - Brine - Level 24
  (320, 32000, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wailmer - Whirlpool - Level 27
  (320, 32000, 250, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wailmer - Dive - Level 30
  (320, 32000, 291, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Wailmer - Bounce - Level 33
  (320, 32000, 340, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Wailmer - Body Slam - Level 36
  (320, 32000, 34, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Wailmer - Rest - Level 39
  (320, 32000, 156, 21, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Wailmer - Amnesia - Level 42
  (320, 32000, 133, 21, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Wailmer - Hydro Pump - Level 45
  (320, 32000, 56, 21, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Wailmer - Water Spout - Level 48
  (320, 32000, 323, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Wailmer - Water Pulse - TM03
  (320, 32000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Wailmer - Roar - TM05
  (320, 32000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Wailmer - Hail - TM07
  (320, 32000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Wailmer - Ice Beam - TM13
  (320, 32000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Wailmer - Blizzard - TM14
  (320, 32000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Wailmer - Protect - TM17
  (320, 32000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Wailmer - Rain Dance - TM18
  (320, 32000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Wailmer - Earthquake - TM26
  (320, 32000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Wailmer - Double Team - TM32
  (320, 32000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Wailmer - Rock Tomb - TM39
  (320, 32000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Wailmer - Facade - TM42
  (320, 32000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Wailmer - Rest - TM44
  (320, 32000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Wailmer - Attract - TM45
  (320, 32000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Wailmer - Scald - TM49
  (320, 32000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 30),
  -- Wailmer - Brine - TM55
  (320, 32000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 31),
  -- Wailmer - Endure - TM58
  (320, 32000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Wailmer - Avalanche - TM72
  (320, 32000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 33),
  -- Wailmer - Sleep Talk - TM82
  (320, 32000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Wailmer - Bulldoze - TM83
  (320, 32000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 35),
  -- Wailmer - Swagger - TM87
  (320, 32000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Wailmer - Substitute - TM90
  (320, 32000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Wailmer - Surf - TM95
  (320, 32000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Wailmer - Strength - TM96
  (320, 32000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 39),
  -- Wailmer - Rock Smash - TM98
  (320, 32000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 40),
  -- Wailmer - Waterfall - TM99
  (320, 32000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 41),
  -- Wailmer - Aqua Ring - Egg
  (320, 32000, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wailmer - Body Slam - Egg
  (320, 32000, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wailmer - Clear Smog - Egg
  (320, 32000, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wailmer - Curse - Egg
  (320, 32000, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wailmer - Defense Curl - Egg
  (320, 32000, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wailmer - Double-Edge - Egg
  (320, 32000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wailmer - Fissure - Egg
  (320, 32000, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wailmer - Rollout - Egg
  (320, 32000, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wailmer - Snore - Egg
  (320, 32000, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wailmer - Soak - Egg
  (320, 32000, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailmer - Thrash - Egg
  (320, 32000, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailmer - Tickle - Egg
  (320, 32000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailmer - Zen Headbutt - Egg
  (320, 32000, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailord - Soak - Starting Move
  (321, 32100, 487, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wailord - Noble Roar - Starting Move
  (321, 32100, 568, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wailord - Splash - Starting Move
  (321, 32100, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Wailord - Growl - Starting Move
  (321, 32100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Wailord - Astonish - Starting Move
  (321, 32100, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Wailord - Water Gun - Starting Move
  (321, 32100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Wailord - Mist - Level 15
  (321, 32100, 54, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wailord - Water Pulse - Level 18
  (321, 32100, 352, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Wailord - Heavy Slam - Level 21
  (321, 32100, 484, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Wailord - Brine - Level 24
  (321, 32100, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Wailord - Whirlpool - Level 27
  (321, 32100, 250, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Wailord - Dive - Level 30
  (321, 32100, 291, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Wailord - Bounce - Level 33
  (321, 32100, 340, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Wailord - Body Slam - Level 36
  (321, 32100, 34, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Wailord - Rest - Level 39
  (321, 32100, 156, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Wailord - Amnesia - Level 44
  (321, 32100, 133, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Wailord - Hydro Pump - Level 49
  (321, 32100, 56, 21, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Wailord - Water Spout - Level 54
  (321, 32100, 323, 21, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Wailord - Water Pulse - TM03
  (321, 32100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Wailord - Roar - TM05
  (321, 32100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Wailord - Hail - TM07
  (321, 32100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Wailord - Ice Beam - TM13
  (321, 32100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Wailord - Blizzard - TM14
  (321, 32100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Wailord - Hyper Beam - TM15
  (321, 32100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Wailord - Protect - TM17
  (321, 32100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Wailord - Rain Dance - TM18
  (321, 32100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Wailord - Earthquake - TM26
  (321, 32100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Wailord - Double Team - TM32
  (321, 32100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Wailord - Rock Tomb - TM39
  (321, 32100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Wailord - Facade - TM42
  (321, 32100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Wailord - Rest - TM44
  (321, 32100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Wailord - Attract - TM45
  (321, 32100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Wailord - Scald - TM49
  (321, 32100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 33),
  -- Wailord - Brine - TM55
  (321, 32100, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 34),
  -- Wailord - Endure - TM58
  (321, 32100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Wailord - Giga Impact - TM68
  (321, 32100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Wailord - Avalanche - TM72
  (321, 32100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 37),
  -- Wailord - Sleep Talk - TM82
  (321, 32100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Wailord - Bulldoze - TM83
  (321, 32100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 39),
  -- Wailord - Swagger - TM87
  (321, 32100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Wailord - Substitute - TM90
  (321, 32100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Wailord - Surf - TM95
  (321, 32100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 42),
  -- Wailord - Strength - TM96
  (321, 32100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 43),
  -- Wailord - Rock Smash - TM98
  (321, 32100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Wailord - Waterfall - TM99
  (321, 32100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Wailord - Aqua Ring - Egg
  (321, 32100, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wailord - Body Slam - Egg
  (321, 32100, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wailord - Clear Smog - Egg
  (321, 32100, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wailord - Curse - Egg
  (321, 32100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wailord - Defense Curl - Egg
  (321, 32100, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wailord - Double-Edge - Egg
  (321, 32100, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailord - Fissure - Egg
  (321, 32100, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailord - Rollout - Egg
  (321, 32100, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailord - Snore - Egg
  (321, 32100, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailord - Soak - Egg
  (321, 32100, 487, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wailord - Thrash - Egg
  (321, 32100, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wailord - Tickle - Egg
  (321, 32100, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wailord - Zen Headbutt - Egg
  (321, 32100, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Numel - Growl - Starting Move
  (322, 32200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Numel - Tackle - Starting Move
  (322, 32200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Focus Energy - Level 8
  (322, 32200, 116, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Numel - Bulldoze - Level 12
  (322, 32200, 523, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Numel - Flame Wheel - Level 15
  (322, 32200, 172, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 19
  (322, 32200, 133, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Numel - Lava Plume - Level 22
  (322, 32200, 436, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Numel - Earth Power - Level 26
  (322, 32200, 414, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Numel - Curse - Level 29
  (322, 32200, 174, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Numel - Take Down - Level 31
  (322, 32200, 36, 21, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Numel - Yawn - Level 36
  (322, 32200, 281, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Numel - Earthquake - Level 40
  (322, 32200, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Numel - Flamethrower - Level 43
  (322, 32200, 53, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Numel - Double-Edge - Level 47
  (322, 32200, 38, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Numel - Sunny Day - TM11
  (322, 32200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Numel - Protect - TM17
  (322, 32200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Numel - Earthquake - TM26
  (322, 32200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 18),
  -- Numel - Dig - TM28
  (322, 32200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 19),
  -- Numel - Double Team - TM32
  (322, 32200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Numel - Flamethrower - TM35
  (322, 32200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 21),
  -- Numel - Sandstorm - TM37
  (322, 32200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 22),
  -- Numel - Fire Blast - TM38
  (322, 32200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Numel - Rock Tomb - TM39
  (322, 32200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Numel - Facade - TM42
  (322, 32200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Numel - Rest - TM44
  (322, 32200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Numel - Attract - TM45
  (322, 32200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Numel - Overheat - TM50
  (322, 32200, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 28),
  -- Numel - Endure - TM58
  (322, 32200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Numel - Will-O-Wisp - TM61
  (322, 32200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 30),
  -- Numel - Stealth Rock - TM76
  (322, 32200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 31),
  -- Numel - Rock Slide - TM80
  (322, 32200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 32),
  -- Numel - Sleep Talk - TM82
  (322, 32200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Numel - Bulldoze - TM83
  (322, 32200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 34),
  -- Numel - Swagger - TM87
  (322, 32200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Numel - Substitute - TM90
  (322, 32200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Numel - Strength - TM96
  (322, 32200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 37),
  -- Numel - Rock Smash - TM98
  (322, 32200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 38),
  -- Numel - Ancient Power - Egg
  (322, 32200, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Numel - Body Slam - Egg
  (322, 32200, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Numel - Defense Curl - Egg
  (322, 32200, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Numel - Growth - Egg
  (322, 32200, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Numel - Heat Wave - Egg
  (322, 32200, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Numel - Heavy Slam - Egg
  (322, 32200, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Numel - Howl - Egg
  (322, 32200, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Numel - Iron Head - Egg
  (322, 32200, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Numel - Rollout - Egg
  (322, 32200, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Numel - Scary Face - Egg
  (322, 32200, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Numel - Spit Up - Egg
  (322, 32200, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Numel - Stockpile - Egg
  (322, 32200, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Numel - Stomp - Egg
  (322, 32200, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Numel - Swallow - Egg
  (322, 32200, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Numel - Yawn - Egg
  (322, 32200, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Camerupt - Rock Slide - Starting Move
  (323, 32300, 157, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Camerupt - Fissure - Starting Move
  (323, 32300, 90, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Camerupt - Eruption - Starting Move
  (323, 32300, 284, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Camerupt - Flamethrower - Starting Move
  (323, 32300, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Camerupt - Double-Edge - Starting Move
  (323, 32300, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Camerupt - Growl - Starting Move
  (323, 32300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Camerupt - Tackle - Starting Move
  (323, 32300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Camerupt - Ember - Starting Move
  (323, 32300, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Camerupt - Focus Energy - Starting Move
  (323, 32300, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Camerupt - Rock Slide - Evolution
  (323, 32300, 157, 21, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Camerupt - Ember - Level 8
  (323, 32300, 52, 21, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Camerupt - Focus Energy - Level 8
  (323, 32300, 116, 21, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Camerupt - Bulldoze - Level 12
  (323, 32300, 523, 21, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Camerupt - Flame Wheel - Level 15
  (323, 32300, 172, 21, NULL, 1, 15, NULL, NULL, NULL, 14),
  -- Camerupt - Amnesia - Level 19
  (323, 32300, 133, 21, NULL, 1, 19, NULL, NULL, NULL, 15),
  -- Camerupt - Lava Plume - Level 22
  (323, 32300, 436, 21, NULL, 1, 22, NULL, NULL, NULL, 16),
  -- Camerupt - Earth Power - Level 26
  (323, 32300, 414, 21, NULL, 1, 26, NULL, NULL, NULL, 17),
  -- Camerupt - Curse - Level 29
  (323, 32300, 174, 21, NULL, 1, 29, NULL, NULL, NULL, 18),
  -- Camerupt - Take Down - Level 31
  (323, 32300, 36, 21, NULL, 1, 31, NULL, NULL, NULL, 19),
  -- Camerupt - Yawn - Level 39
  (323, 32300, 281, 21, NULL, 1, 39, NULL, NULL, NULL, 20),
  -- Camerupt - Earthquake - Level 46
  (323, 32300, 89, 21, NULL, 1, 46, NULL, NULL, NULL, 21),
  -- Camerupt - Eruption - Level 52
  (323, 32300, 284, 21, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Camerupt - Fissure - Level 59
  (323, 32300, 90, 21, NULL, 1, 59, NULL, NULL, NULL, 23),
  -- Camerupt - Roar - TM05
  (323, 32300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 24),
  -- Camerupt - Sunny Day - TM11
  (323, 32300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Camerupt - Hyper Beam - TM15
  (323, 32300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Camerupt - Protect - TM17
  (323, 32300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Camerupt - Solar Beam - TM22
  (323, 32300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Camerupt - Earthquake - TM26
  (323, 32300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Camerupt - Dig - TM28
  (323, 32300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Camerupt - Double Team - TM32
  (323, 32300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Camerupt - Flamethrower - TM35
  (323, 32300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Camerupt - Sandstorm - TM37
  (323, 32300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Camerupt - Fire Blast - TM38
  (323, 32300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 34),
  -- Camerupt - Rock Tomb - TM39
  (323, 32300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Camerupt - Facade - TM42
  (323, 32300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Camerupt - Rest - TM44
  (323, 32300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Camerupt - Attract - TM45
  (323, 32300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Camerupt - Overheat - TM50
  (323, 32300, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 39),
  -- Camerupt - Endure - TM58
  (323, 32300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Camerupt - Will-O-Wisp - TM61
  (323, 32300, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 41),
  -- Camerupt - Explosion - TM64
  (323, 32300, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 42),
  -- Camerupt - Giga Impact - TM68
  (323, 32300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Camerupt - Rock Polish - TM69
  (323, 32300, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 44),
  -- Camerupt - Stone Edge - TM71
  (323, 32300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 45),
  -- Camerupt - Stealth Rock - TM76
  (323, 32300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Camerupt - Rock Slide - TM80
  (323, 32300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Camerupt - Sleep Talk - TM82
  (323, 32300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Camerupt - Bulldoze - TM83
  (323, 32300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 49),
  -- Camerupt - Swagger - TM87
  (323, 32300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Camerupt - Substitute - TM90
  (323, 32300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Camerupt - Flash Cannon - TM91
  (323, 32300, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 52),
  -- Camerupt - Strength - TM96
  (323, 32300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Camerupt - Rock Smash - TM98
  (323, 32300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Camerupt - Ancient Power - Egg
  (323, 32300, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Camerupt - Body Slam - Egg
  (323, 32300, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Camerupt - Defense Curl - Egg
  (323, 32300, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Camerupt - Growth - Egg
  (323, 32300, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Camerupt - Heat Wave - Egg
  (323, 32300, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Camerupt - Heavy Slam - Egg
  (323, 32300, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Camerupt - Howl - Egg
  (323, 32300, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Camerupt - Iron Head - Egg
  (323, 32300, 442, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Camerupt - Rollout - Egg
  (323, 32300, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Camerupt - Scary Face - Egg
  (323, 32300, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Camerupt - Spit Up - Egg
  (323, 32300, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Camerupt - Stockpile - Egg
  (323, 32300, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Camerupt - Stomp - Egg
  (323, 32300, 23, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Camerupt - Swallow - Egg
  (323, 32300, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Camerupt - Yawn - Egg
  (323, 32300, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Torkoal - Smog - Starting Move
  (324, 32400, 123, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Torkoal - Ember - Starting Move
  (324, 32400, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Torkoal - Withdraw - Level 4
  (324, 32400, 110, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Torkoal - Rapid Spin - Level 8
  (324, 32400, 229, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Torkoal - Smokescreen - Level 12
  (324, 32400, 108, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Torkoal - Clear Smog - Level 16
  (324, 32400, 499, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Torkoal - Flame Wheel - Level 20
  (324, 32400, 172, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Torkoal - Protect - Level 24
  (324, 32400, 182, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Torkoal - Lava Plume - Level 28
  (324, 32400, 436, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Torkoal - Body Slam - Level 32
  (324, 32400, 34, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Torkoal - Iron Defense - Level 36
  (324, 32400, 334, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Torkoal - Flamethrower - Level 40
  (324, 32400, 53, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Torkoal - Curse - Level 44
  (324, 32400, 174, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Torkoal - Heat Wave - Level 48
  (324, 32400, 257, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Torkoal - Amnesia - Level 52
  (324, 32400, 133, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Torkoal - Inferno - Level 56
  (324, 32400, 517, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Torkoal - Shell Smash - Level 60
  (324, 32400, 504, 21, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Torkoal - Eruption - Level 64
  (324, 32400, 284, 21, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Torkoal - Sunny Day - TM11
  (324, 32400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Torkoal - Hyper Beam - TM15
  (324, 32400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Torkoal - Protect - TM17
  (324, 32400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Torkoal - Solar Beam - TM22
  (324, 32400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Torkoal - Iron Tail - TM23
  (324, 32400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Torkoal - Earthquake - TM26
  (324, 32400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Torkoal - Double Team - TM32
  (324, 32400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Torkoal - Flamethrower - TM35
  (324, 32400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Torkoal - Sludge Bomb - TM36
  (324, 32400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Torkoal - Fire Blast - TM38
  (324, 32400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 28),
  -- Torkoal - Rock Tomb - TM39
  (324, 32400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Torkoal - Facade - TM42
  (324, 32400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Torkoal - Rest - TM44
  (324, 32400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Torkoal - Attract - TM45
  (324, 32400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Torkoal - Overheat - TM50
  (324, 32400, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 33),
  -- Torkoal - Endure - TM58
  (324, 32400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Torkoal - Will-O-Wisp - TM61
  (324, 32400, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 35),
  -- Torkoal - Explosion - TM64
  (324, 32400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 36),
  -- Torkoal - Giga Impact - TM68
  (324, 32400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Torkoal - Stone Edge - TM71
  (324, 32400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 38),
  -- Torkoal - Gyro Ball - TM74
  (324, 32400, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 39),
  -- Torkoal - Stealth Rock - TM76
  (324, 32400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Torkoal - Rock Slide - TM80
  (324, 32400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Torkoal - Sleep Talk - TM82
  (324, 32400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Torkoal - Bulldoze - TM83
  (324, 32400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Torkoal - Swagger - TM87
  (324, 32400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Torkoal - Substitute - TM90
  (324, 32400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Torkoal - Strength - TM96
  (324, 32400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Torkoal - Rock Smash - TM98
  (324, 32400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Torkoal - Ancient Power - Egg
  (324, 32400, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torkoal - Clear Smog - Egg
  (324, 32400, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torkoal - Eruption - Egg
  (324, 32400, 284, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torkoal - Fissure - Egg
  (324, 32400, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torkoal - Flail - Egg
  (324, 32400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torkoal - Skull Bash - Egg
  (324, 32400, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torkoal - Superpower - Egg
  (324, 32400, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torkoal - Yawn - Egg
  (324, 32400, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spoink - Splash - Starting Move
  (325, 32500, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Spoink - Confusion - Level 7
  (325, 32500, 93, 21, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Growl - Level 10
  (325, 32500, 45, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 15
  (325, 32500, 244, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 18
  (325, 32500, 109, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Spoink - Magic Coat - Level 21
  (325, 32500, 277, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spoink - Zen Headbutt - Level 26
  (325, 32500, 428, 21, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Spoink - Power Gem - Level 29
  (325, 32500, 408, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spoink - Rest - Level 29
  (325, 32500, 156, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spoink - Snore - Level 33
  (325, 32500, 173, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spoink - Psyshock - Level 38
  (325, 32500, 473, 21, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Spoink - Payback - Level 40
  (325, 32500, 371, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spoink - Psychic - Level 44
  (325, 32500, 94, 21, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Spoink - Bounce - Level 50
  (325, 32500, 340, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Spoink - Calm Mind - TM04
  (325, 32500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Spoink - Sunny Day - TM11
  (325, 32500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Spoink - Taunt - TM12
  (325, 32500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Spoink - Light Screen - TM16
  (325, 32500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Spoink - Protect - TM17
  (325, 32500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Spoink - Rain Dance - TM18
  (325, 32500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Spoink - Iron Tail - TM23
  (325, 32500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Spoink - Psychic - TM29
  (325, 32500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Spoink - Shadow Ball - TM30
  (325, 32500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Spoink - Double Team - TM32
  (325, 32500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Spoink - Reflect - TM33
  (325, 32500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 26),
  -- Spoink - Shock Wave - TM34
  (325, 32500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Spoink - Torment - TM41
  (325, 32500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 28),
  -- Spoink - Facade - TM42
  (325, 32500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Spoink - Rest - TM44
  (325, 32500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Spoink - Attract - TM45
  (325, 32500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Spoink - Thief - TM46
  (325, 32500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Spoink - Skill Swap - TM48
  (325, 32500, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 33),
  -- Spoink - Charge Beam - TM57
  (325, 32500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 34),
  -- Spoink - Endure - TM58
  (325, 32500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Spoink - Payback - TM66
  (325, 32500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Spoink - Recycle - TM67
  (325, 32500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 37),
  -- Spoink - Flash - TM70
  (325, 32500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Spoink - Thunder Wave - TM73
  (325, 32500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Spoink - Psych Up - TM77
  (325, 32500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Spoink - Sleep Talk - TM82
  (325, 32500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Spoink - Dream Eater - TM85
  (325, 32500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 42),
  -- Spoink - Grass Knot - TM86
  (325, 32500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 43),
  -- Spoink - Swagger - TM87
  (325, 32500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Spoink - Substitute - TM90
  (325, 32500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Spoink - Trick Room - TM92
  (325, 32500, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 46),
  -- Spoink - Amnesia - Egg
  (325, 32500, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spoink - Extrasensory - Egg
  (325, 32500, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spoink - Future Sight - Egg
  (325, 32500, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spoink - Mirror Coat - Egg
  (325, 32500, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spoink - Simple Beam - Egg
  (325, 32500, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spoink - Trick - Egg
  (325, 32500, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spoink - Whirlwind - Egg
  (325, 32500, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spoink - Zen Headbutt - Egg
  (325, 32500, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grumpig - Teeter Dance - Starting Move
  (326, 32600, 298, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Grumpig - Belch - Starting Move
  (326, 32600, 562, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Grumpig - Splash - Starting Move
  (326, 32600, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Grumpig - Teeter Dance - Evolution
  (326, 32600, 298, 21, NULL, 7, NULL, NULL, NULL, NULL, 4),
  -- Grumpig - Confusion - Level 7
  (326, 32600, 93, 21, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Grumpig - Growl - Level 10
  (326, 32600, 45, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Grumpig - Psybeam - Level 14
  (326, 32600, 60, 21, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Grumpig - Psych Up - Level 15
  (326, 32600, 244, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Grumpig - Confuse Ray - Level 18
  (326, 32600, 109, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Grumpig - Magic Coat - Level 21
  (326, 32600, 277, 21, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Grumpig - Zen Headbutt - Level 26
  (326, 32600, 428, 21, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Grumpig - Power Gem - Level 29
  (326, 32600, 408, 21, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Grumpig - Rest - Level 35
  (326, 32600, 156, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Grumpig - Snore - Level 35
  (326, 32600, 173, 21, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Grumpig - Psyshock - Level 42
  (326, 32600, 473, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Grumpig - Payback - Level 46
  (326, 32600, 371, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Grumpig - Psychic - Level 52
  (326, 32600, 94, 21, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Grumpig - Bounce - Level 60
  (326, 32600, 340, 21, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Grumpig - Focus Punch - TM01
  (326, 32600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 19),
  -- Grumpig - Calm Mind - TM04
  (326, 32600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 20),
  -- Grumpig - Sunny Day - TM11
  (326, 32600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Grumpig - Taunt - TM12
  (326, 32600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Grumpig - Hyper Beam - TM15
  (326, 32600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Grumpig - Light Screen - TM16
  (326, 32600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Grumpig - Protect - TM17
  (326, 32600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Grumpig - Rain Dance - TM18
  (326, 32600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Grumpig - Iron Tail - TM23
  (326, 32600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Grumpig - Psychic - TM29
  (326, 32600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Grumpig - Shadow Ball - TM30
  (326, 32600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Grumpig - Brick Break - TM31
  (326, 32600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Grumpig - Double Team - TM32
  (326, 32600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Grumpig - Reflect - TM33
  (326, 32600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 32),
  -- Grumpig - Shock Wave - TM34
  (326, 32600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Grumpig - Torment - TM41
  (326, 32600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 34),
  -- Grumpig - Facade - TM42
  (326, 32600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Grumpig - Rest - TM44
  (326, 32600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Grumpig - Attract - TM45
  (326, 32600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Grumpig - Thief - TM46
  (326, 32600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Grumpig - Skill Swap - TM48
  (326, 32600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 39),
  -- Grumpig - Focus Blast - TM52
  (326, 32600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Grumpig - Energy Ball - TM53
  (326, 32600, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 41),
  -- Grumpig - Fling - TM56
  (326, 32600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Grumpig - Charge Beam - TM57
  (326, 32600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 43),
  -- Grumpig - Endure - TM58
  (326, 32600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Grumpig - Drain Punch - TM60
  (326, 32600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 45),
  -- Grumpig - Nasty Plot - TM63
  (326, 32600, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 46),
  -- Grumpig - Payback - TM66
  (326, 32600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 47),
  -- Grumpig - Recycle - TM67
  (326, 32600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 48),
  -- Grumpig - Giga Impact - TM68
  (326, 32600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 49),
  -- Grumpig - Flash - TM70
  (326, 32600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 50),
  -- Grumpig - Thunder Wave - TM73
  (326, 32600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 51),
  -- Grumpig - Psych Up - TM77
  (326, 32600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 52),
  -- Grumpig - Sleep Talk - TM82
  (326, 32600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 53),
  -- Grumpig - Bulldoze - TM83
  (326, 32600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 54),
  -- Grumpig - Dream Eater - TM85
  (326, 32600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 55),
  -- Grumpig - Grass Knot - TM86
  (326, 32600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 56),
  -- Grumpig - Swagger - TM87
  (326, 32600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Grumpig - Substitute - TM90
  (326, 32600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Grumpig - Trick Room - TM92
  (326, 32600, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 59),
  -- Grumpig - Amnesia - Egg
  (326, 32600, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grumpig - Extrasensory - Egg
  (326, 32600, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grumpig - Future Sight - Egg
  (326, 32600, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grumpig - Mirror Coat - Egg
  (326, 32600, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Grumpig - Simple Beam - Egg
  (326, 32600, 493, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Grumpig - Trick - Egg
  (326, 32600, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Grumpig - Whirlwind - Egg
  (326, 32600, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Grumpig - Zen Headbutt - Egg
  (326, 32600, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Spinda - Tackle - Starting Move
  (327, 32700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Spinda - Copycat - Level 5
  (327, 32700, 383, 21, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Spinda - Teeter Dance - Level 10
  (327, 32700, 298, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spinda - Psybeam - Level 14
  (327, 32700, 60, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spinda - Hypnosis - Level 19
  (327, 32700, 95, 21, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spinda - Body Slam - Level 23
  (327, 32700, 34, 21, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinda - Sucker Punch - Level 28
  (327, 32700, 389, 21, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Spinda - Teeter Dance - Level 32
  (327, 32700, 298, 21, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Spinda - Uproar - Level 37
  (327, 32700, 253, 21, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Spinda - Psych Up - Level 41
  (327, 32700, 244, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Spinda - Double-Edge - Level 46
  (327, 32700, 38, 21, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Spinda - Flail - Level 50
  (327, 32700, 175, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spinda - Thrash - Level 55
  (327, 32700, 37, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spinda - Focus Punch - TM01
  (327, 32700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 14),
  -- Spinda - Water Pulse - TM03
  (327, 32700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Spinda - Calm Mind - TM04
  (327, 32700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Spinda - Work Up - TM10
  (327, 32700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Spinda - Sunny Day - TM11
  (327, 32700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Spinda - Protect - TM17
  (327, 32700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Spinda - Rain Dance - TM18
  (327, 32700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Spinda - Safeguard - TM20
  (327, 32700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Spinda - Dig - TM28
  (327, 32700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Spinda - Psychic - TM29
  (327, 32700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Spinda - Shadow Ball - TM30
  (327, 32700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Spinda - Brick Break - TM31
  (327, 32700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Spinda - Double Team - TM32
  (327, 32700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Spinda - Shock Wave - TM34
  (327, 32700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Spinda - Rock Tomb - TM39
  (327, 32700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Spinda - Facade - TM42
  (327, 32700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Spinda - Rest - TM44
  (327, 32700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Spinda - Attract - TM45
  (327, 32700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Spinda - Thief - TM46
  (327, 32700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Spinda - Skill Swap - TM48
  (327, 32700, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 33),
  -- Spinda - Fling - TM56
  (327, 32700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Spinda - Endure - TM58
  (327, 32700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Spinda - Drain Punch - TM60
  (327, 32700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 36),
  -- Spinda - Recycle - TM67
  (327, 32700, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 37),
  -- Spinda - Flash - TM70
  (327, 32700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Spinda - Psych Up - TM77
  (327, 32700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 39),
  -- Spinda - Rock Slide - TM80
  (327, 32700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 40),
  -- Spinda - Sleep Talk - TM82
  (327, 32700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Spinda - Dream Eater - TM85
  (327, 32700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 42),
  -- Spinda - Swagger - TM87
  (327, 32700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Spinda - Substitute - TM90
  (327, 32700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Spinda - Trick Room - TM92
  (327, 32700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 45),
  -- Spinda - Strength - TM96
  (327, 32700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Spinda - Rock Smash - TM98
  (327, 32700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Spinda - Baton Pass - Egg
  (327, 32700, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinda - Disable - Egg
  (327, 32700, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinda - Encore - Egg
  (327, 32700, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spinda - Fake Out - Egg
  (327, 32700, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spinda - Fake Tears - Egg
  (327, 32700, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spinda - Guard Split - Egg
  (327, 32700, 470, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spinda - Icy Wind - Egg
  (327, 32700, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spinda - Psycho Cut - Egg
  (327, 32700, 427, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinda - Psycho Shift - Egg
  (327, 32700, 375, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spinda - Rapid Spin - Egg
  (327, 32700, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spinda - Role Play - Egg
  (327, 32700, 272, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spinda - Trick - Egg
  (327, 32700, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spinda - Wish - Egg
  (327, 32700, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Trapinch - Sand Attack - Starting Move
  (328, 32800, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Trapinch - Astonish - Starting Move
  (328, 32800, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Trapinch - Laser Focus - Level 4
  (328, 32800, 673, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Trapinch - Bite - Level 8
  (328, 32800, 44, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Trapinch - Mud-Slap - Level 12
  (328, 32800, 189, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Trapinch - Sand Tomb - Level 16
  (328, 32800, 328, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Trapinch - Bulldoze - Level 20
  (328, 32800, 523, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Trapinch - Dig - Level 24
  (328, 32800, 91, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Trapinch - Crunch - Level 28
  (328, 32800, 242, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Trapinch - Sandstorm - Level 32
  (328, 32800, 201, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Trapinch - Earth Power - Level 36
  (328, 32800, 414, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Trapinch - Earthquake - Level 40
  (328, 32800, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Trapinch - Superpower - Level 44
  (328, 32800, 276, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Trapinch - Fissure - Level 48
  (328, 32800, 90, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Trapinch - Sunny Day - TM11
  (328, 32800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Trapinch - Hyper Beam - TM15
  (328, 32800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 16),
  -- Trapinch - Protect - TM17
  (328, 32800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Trapinch - Giga Drain - TM19
  (328, 32800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Trapinch - Solar Beam - TM22
  (328, 32800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 19),
  -- Trapinch - Earthquake - TM26
  (328, 32800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 20),
  -- Trapinch - Dig - TM28
  (328, 32800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Trapinch - Double Team - TM32
  (328, 32800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Trapinch - Sandstorm - TM37
  (328, 32800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 23),
  -- Trapinch - Rock Tomb - TM39
  (328, 32800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Trapinch - Facade - TM42
  (328, 32800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Trapinch - Rest - TM44
  (328, 32800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Trapinch - Attract - TM45
  (328, 32800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Trapinch - Endure - TM58
  (328, 32800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Trapinch - Rock Slide - TM80
  (328, 32800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 29),
  -- Trapinch - Sleep Talk - TM82
  (328, 32800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Trapinch - Bulldoze - TM83
  (328, 32800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 31),
  -- Trapinch - Swagger - TM87
  (328, 32800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 32),
  -- Trapinch - Substitute - TM90
  (328, 32800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 33),
  -- Trapinch - Strength - TM96
  (328, 32800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 34),
  -- Trapinch - Rock Smash - TM98
  (328, 32800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 35),
  -- Trapinch - Bug Bite - Egg
  (328, 32800, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Trapinch - Earth Power - Egg
  (328, 32800, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Trapinch - Feint - Egg
  (328, 32800, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Trapinch - Flail - Egg
  (328, 32800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Trapinch - Focus Energy - Egg
  (328, 32800, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Trapinch - Fury Cutter - Egg
  (328, 32800, 210, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Trapinch - Gust - Egg
  (328, 32800, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trapinch - Mud Shot - Egg
  (328, 32800, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trapinch - Quick Attack - Egg
  (328, 32800, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vibrava - Dragon Breath - Starting Move
  (329, 32900, 225, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Vibrava - Laser Focus - Starting Move
  (329, 32900, 673, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Vibrava - Bulldoze - Starting Move
  (329, 32900, 523, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Vibrava - Dig - Starting Move
  (329, 32900, 91, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Vibrava - Crunch - Starting Move
  (329, 32900, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Vibrava - Superpower - Starting Move
  (329, 32900, 276, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Vibrava - Fissure - Starting Move
  (329, 32900, 90, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Vibrava - Sand Attack - Starting Move
  (329, 32900, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Vibrava - Astonish - Starting Move
  (329, 32900, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Vibrava - Supersonic - Starting Move
  (329, 32900, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Vibrava - Bite - Starting Move
  (329, 32900, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Vibrava - Dragon Breath - Evolution
  (329, 32900, 225, 21, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Vibrava - Mud-Slap - Level 12
  (329, 32900, 189, 21, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Vibrava - Sand Tomb - Level 16
  (329, 32900, 328, 21, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Vibrava - Dragon Tail - Level 20
  (329, 32900, 525, 21, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Vibrava - Screech - Level 24
  (329, 32900, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Vibrava - Bug Buzz - Level 28
  (329, 32900, 405, 21, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Vibrava - Sandstorm - Level 32
  (329, 32900, 201, 21, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Vibrava - Earth Power - Level 38
  (329, 32900, 414, 21, NULL, 1, 38, NULL, NULL, NULL, 19),
  -- Vibrava - Earthquake - Level 44
  (329, 32900, 89, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Vibrava - Uproar - Level 50
  (329, 32900, 253, 21, NULL, 1, 50, NULL, NULL, NULL, 21),
  -- Vibrava - Dragon Rush - Level 56
  (329, 32900, 407, 21, NULL, 1, 56, NULL, NULL, NULL, 22),
  -- Vibrava - Boomburst - Level 62
  (329, 32900, 586, 21, NULL, 1, 62, NULL, NULL, NULL, 23),
  -- Vibrava - Sunny Day - TM11
  (329, 32900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Vibrava - Hyper Beam - TM15
  (329, 32900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Vibrava - Protect - TM17
  (329, 32900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Vibrava - Giga Drain - TM19
  (329, 32900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Vibrava - Solar Beam - TM22
  (329, 32900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Vibrava - Earthquake - TM26
  (329, 32900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Vibrava - Dig - TM28
  (329, 32900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Vibrava - Double Team - TM32
  (329, 32900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Vibrava - Sandstorm - TM37
  (329, 32900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Vibrava - Rock Tomb - TM39
  (329, 32900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Vibrava - Facade - TM42
  (329, 32900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Vibrava - Rest - TM44
  (329, 32900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Vibrava - Attract - TM45
  (329, 32900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Vibrava - Steel Wing - TM47
  (329, 32900, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 37),
  -- Vibrava - Roost - TM51
  (329, 32900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 38),
  -- Vibrava - Endure - TM58
  (329, 32900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Vibrava - Dragon Pulse - TM59
  (329, 32900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 40),
  -- Vibrava - Bug Buzz - TM62
  (329, 32900, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 41),
  -- Vibrava - Rock Slide - TM80
  (329, 32900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Vibrava - Sleep Talk - TM82
  (329, 32900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Vibrava - Bulldoze - TM83
  (329, 32900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Vibrava - Swagger - TM87
  (329, 32900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Vibrava - U-turn - TM89
  (329, 32900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 46),
  -- Vibrava - Substitute - TM90
  (329, 32900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Vibrava - Fly - TM94
  (329, 32900, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 48),
  -- Vibrava - Strength - TM96
  (329, 32900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Vibrava - Defog - TM97
  (329, 32900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 50),
  -- Vibrava - Rock Smash - TM98
  (329, 32900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Vibrava - Bug Bite - Egg
  (329, 32900, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vibrava - Earth Power - Egg
  (329, 32900, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vibrava - Feint - Egg
  (329, 32900, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Vibrava - Flail - Egg
  (329, 32900, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Vibrava - Focus Energy - Egg
  (329, 32900, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vibrava - Fury Cutter - Egg
  (329, 32900, 210, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vibrava - Gust - Egg
  (329, 32900, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Vibrava - Mud Shot - Egg
  (329, 32900, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Vibrava - Quick Attack - Egg
  (329, 32900, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Flygon - Dragon Claw - Starting Move
  (330, 33000, 337, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Flygon - Outrage - Starting Move
  (330, 33000, 200, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Flygon - Dragon Breath - Starting Move
  (330, 33000, 225, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Flygon - Dragon Dance - Starting Move
  (330, 33000, 349, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Flygon - Feint - Starting Move
  (330, 33000, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Flygon - Laser Focus - Starting Move
  (330, 33000, 673, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Flygon - Bulldoze - Starting Move
  (330, 33000, 523, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Flygon - Dig - Starting Move
  (330, 33000, 91, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Flygon - Crunch - Starting Move
  (330, 33000, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Flygon - Superpower - Starting Move
  (330, 33000, 276, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Flygon - Fissure - Starting Move
  (330, 33000, 90, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Flygon - Sand Attack - Starting Move
  (330, 33000, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Flygon - Astonish - Starting Move
  (330, 33000, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Flygon - Supersonic - Starting Move
  (330, 33000, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Flygon - Bite - Starting Move
  (330, 33000, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Flygon - Dragon Claw - Evolution
  (330, 33000, 337, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Flygon - Mud-Slap - Level 12
  (330, 33000, 189, 21, NULL, 1, 12, NULL, NULL, NULL, 17),
  -- Flygon - Sand Tomb - Level 16
  (330, 33000, 328, 21, NULL, 1, 16, NULL, NULL, NULL, 18),
  -- Flygon - Dragon Tail - Level 20
  (330, 33000, 525, 21, NULL, 1, 20, NULL, NULL, NULL, 19),
  -- Flygon - Screech - Level 24
  (330, 33000, 103, 21, NULL, 1, 24, NULL, NULL, NULL, 20),
  -- Flygon - Bug Buzz - Level 28
  (330, 33000, 405, 21, NULL, 1, 28, NULL, NULL, NULL, 21),
  -- Flygon - Sandstorm - Level 32
  (330, 33000, 201, 21, NULL, 1, 32, NULL, NULL, NULL, 22),
  -- Flygon - Earth Power - Level 38
  (330, 33000, 414, 21, NULL, 1, 38, NULL, NULL, NULL, 23),
  -- Flygon - Earthquake - Level 44
  (330, 33000, 89, 21, NULL, 1, 44, NULL, NULL, NULL, 24),
  -- Flygon - Uproar - Level 52
  (330, 33000, 253, 21, NULL, 1, 52, NULL, NULL, NULL, 25),
  -- Flygon - Dragon Rush - Level 60
  (330, 33000, 407, 21, NULL, 1, 60, NULL, NULL, NULL, 26),
  -- Flygon - Boomburst - Level 68
  (330, 33000, 586, 21, NULL, 1, 68, NULL, NULL, NULL, 27),
  -- Flygon - Dragon Claw - TM02
  (330, 33000, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 28),
  -- Flygon - Sunny Day - TM11
  (330, 33000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 29),
  -- Flygon - Hyper Beam - TM15
  (330, 33000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Flygon - Protect - TM17
  (330, 33000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Flygon - Giga Drain - TM19
  (330, 33000, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 32),
  -- Flygon - Solar Beam - TM22
  (330, 33000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 33),
  -- Flygon - Iron Tail - TM23
  (330, 33000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 34),
  -- Flygon - Earthquake - TM26
  (330, 33000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 35),
  -- Flygon - Dig - TM28
  (330, 33000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 36),
  -- Flygon - Double Team - TM32
  (330, 33000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 37),
  -- Flygon - Flamethrower - TM35
  (330, 33000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 38),
  -- Flygon - Sandstorm - TM37
  (330, 33000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 39),
  -- Flygon - Fire Blast - TM38
  (330, 33000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 40),
  -- Flygon - Rock Tomb - TM39
  (330, 33000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 41),
  -- Flygon - Aerial Ace - TM40
  (330, 33000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 42),
  -- Flygon - Facade - TM42
  (330, 33000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 43),
  -- Flygon - Rest - TM44
  (330, 33000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 44),
  -- Flygon - Attract - TM45
  (330, 33000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 45),
  -- Flygon - Steel Wing - TM47
  (330, 33000, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 46),
  -- Flygon - Roost - TM51
  (330, 33000, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 47),
  -- Flygon - Endure - TM58
  (330, 33000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 48),
  -- Flygon - Dragon Pulse - TM59
  (330, 33000, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 49),
  -- Flygon - Bug Buzz - TM62
  (330, 33000, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 50),
  -- Flygon - Giga Impact - TM68
  (330, 33000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 51),
  -- Flygon - Stone Edge - TM71
  (330, 33000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 52),
  -- Flygon - Rock Slide - TM80
  (330, 33000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Flygon - Sleep Talk - TM82
  (330, 33000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Flygon - Bulldoze - TM83
  (330, 33000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Flygon - Swagger - TM87
  (330, 33000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Flygon - U-turn - TM89
  (330, 33000, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 57),
  -- Flygon - Substitute - TM90
  (330, 33000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Flygon - Fly - TM94
  (330, 33000, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 59),
  -- Flygon - Strength - TM96
  (330, 33000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 60),
  -- Flygon - Defog - TM97
  (330, 33000, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 61),
  -- Flygon - Rock Smash - TM98
  (330, 33000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 62),
  -- Flygon - Bug Bite - Egg
  (330, 33000, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Flygon - Earth Power - Egg
  (330, 33000, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Flygon - Feint - Egg
  (330, 33000, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Flygon - Flail - Egg
  (330, 33000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Flygon - Focus Energy - Egg
  (330, 33000, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Flygon - Fury Cutter - Egg
  (330, 33000, 210, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Flygon - Gust - Egg
  (330, 33000, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Flygon - Mud Shot - Egg
  (330, 33000, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Flygon - Quick Attack - Egg
  (330, 33000, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Cacnea - Poison Sting - Starting Move
  (331, 33100, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Starting Move
  (331, 33100, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 4
  (331, 33100, 71, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 7
  (331, 33100, 74, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 10
  (331, 33100, 73, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 13
  (331, 33100, 28, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cacnea - Poison Jab - Level 16
  (331, 33100, 398, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cacnea - Assurance - Level 19
  (331, 33100, 372, 21, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Cacnea - Ingrain - Level 22
  (331, 33100, 275, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Cacnea - Payback - Level 26
  (331, 33100, 371, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Cacnea - Spikes - Level 30
  (331, 33100, 191, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Cacnea - Sucker Punch - Level 34
  (331, 33100, 389, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Cacnea - Pin Missile - Level 38
  (331, 33100, 42, 21, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Cacnea - Energy Ball - Level 42
  (331, 33100, 412, 21, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Cacnea - Cotton Spore - Level 46
  (331, 33100, 178, 21, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Cacnea - Sandstorm - Level 50
  (331, 33100, 201, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Cacnea - Destiny Bond - Level 54
  (331, 33100, 194, 21, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Cacnea - Focus Punch - TM01
  (331, 33100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Cacnea - Bullet Seed - TM09
  (331, 33100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 19),
  -- Cacnea - Sunny Day - TM11
  (331, 33100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Cacnea - Protect - TM17
  (331, 33100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Cacnea - Giga Drain - TM19
  (331, 33100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Cacnea - Solar Beam - TM22
  (331, 33100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Cacnea - Brick Break - TM31
  (331, 33100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Cacnea - Double Team - TM32
  (331, 33100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Cacnea - Sandstorm - TM37
  (331, 33100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Cacnea - Facade - TM42
  (331, 33100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Cacnea - Rest - TM44
  (331, 33100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Cacnea - Attract - TM45
  (331, 33100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Cacnea - Energy Ball - TM53
  (331, 33100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Cacnea - Fling - TM56
  (331, 33100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 31),
  -- Cacnea - Endure - TM58
  (331, 33100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Cacnea - Drain Punch - TM60
  (331, 33100, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 33),
  -- Cacnea - Nasty Plot - TM63
  (331, 33100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 34),
  -- Cacnea - Payback - TM66
  (331, 33100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Cacnea - Flash - TM70
  (331, 33100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 36),
  -- Cacnea - Swords Dance - TM75
  (331, 33100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Cacnea - Dark Pulse - TM79
  (331, 33100, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 38),
  -- Cacnea - Sleep Talk - TM82
  (331, 33100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Cacnea - Poison Jab - TM84
  (331, 33100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 40),
  -- Cacnea - Grass Knot - TM86
  (331, 33100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Cacnea - Swagger - TM87
  (331, 33100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Cacnea - Substitute - TM90
  (331, 33100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Cacnea - Cut - TM93
  (331, 33100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Cacnea - Acid - Egg
  (331, 33100, 51, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cacnea - Belch - Egg
  (331, 33100, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cacnea - Block - Egg
  (331, 33100, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cacnea - Counter - Egg
  (331, 33100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cacnea - Disable - Egg
  (331, 33100, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cacnea - Dynamic Punch - Egg
  (331, 33100, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cacnea - Fell Stinger - Egg
  (331, 33100, 565, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cacnea - Low Kick - Egg
  (331, 33100, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cacnea - Magical Leaf - Egg
  (331, 33100, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cacnea - Power-Up Punch - Egg
  (331, 33100, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cacnea - Seed Bomb - Egg
  (331, 33100, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cacnea - Switcheroo - Egg
  (331, 33100, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cacnea - Teeter Dance - Egg
  (331, 33100, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cacnea - Worry Seed - Egg
  (331, 33100, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cacturne - Spiky Shield - Starting Move
  (332, 33200, 596, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cacturne - Destiny Bond - Starting Move
  (332, 33200, 194, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cacturne - Revenge - Starting Move
  (332, 33200, 279, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Cacturne - Poison Sting - Starting Move
  (332, 33200, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Cacturne - Leer - Starting Move
  (332, 33200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Cacturne - Absorb - Starting Move
  (332, 33200, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Cacturne - Growth - Starting Move
  (332, 33200, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Cacturne - Spiky Shield - Evolution
  (332, 33200, 596, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Cacturne - Absorb - Level 4
  (332, 33200, 71, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Cacturne - Growth - Level 7
  (332, 33200, 74, 21, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Cacturne - Leech Seed - Level 10
  (332, 33200, 73, 21, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Cacturne - Sand Attack - Level 13
  (332, 33200, 28, 21, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Cacturne - Poison Jab - Level 16
  (332, 33200, 398, 21, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Cacturne - Assurance - Level 19
  (332, 33200, 372, 21, NULL, 1, 19, NULL, NULL, NULL, 14),
  -- Cacturne - Ingrain - Level 22
  (332, 33200, 275, 21, NULL, 1, 22, NULL, NULL, NULL, 15),
  -- Cacturne - Payback - Level 26
  (332, 33200, 371, 21, NULL, 1, 26, NULL, NULL, NULL, 16),
  -- Cacturne - Spikes - Level 30
  (332, 33200, 191, 21, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Cacturne - Sucker Punch - Level 35
  (332, 33200, 389, 21, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Cacturne - Pin Missile - Level 38
  (332, 33200, 42, 21, NULL, 1, 38, NULL, NULL, NULL, 19),
  -- Cacturne - Energy Ball - Level 44
  (332, 33200, 412, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Cacturne - Cotton Spore - Level 49
  (332, 33200, 178, 21, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Cacturne - Sandstorm - Level 54
  (332, 33200, 201, 21, NULL, 1, 54, NULL, NULL, NULL, 22),
  -- Cacturne - Destiny Bond - Level 59
  (332, 33200, 194, 21, NULL, 1, 59, NULL, NULL, NULL, 23),
  -- Cacturne - Focus Punch - TM01
  (332, 33200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 24),
  -- Cacturne - Bullet Seed - TM09
  (332, 33200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 25),
  -- Cacturne - Sunny Day - TM11
  (332, 33200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 26),
  -- Cacturne - Hyper Beam - TM15
  (332, 33200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Cacturne - Protect - TM17
  (332, 33200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Cacturne - Giga Drain - TM19
  (332, 33200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 29),
  -- Cacturne - Solar Beam - TM22
  (332, 33200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 30),
  -- Cacturne - Brick Break - TM31
  (332, 33200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Cacturne - Double Team - TM32
  (332, 33200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Cacturne - Sandstorm - TM37
  (332, 33200, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Cacturne - Facade - TM42
  (332, 33200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Cacturne - Rest - TM44
  (332, 33200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Cacturne - Attract - TM45
  (332, 33200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Cacturne - Focus Blast - TM52
  (332, 33200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Cacturne - Energy Ball - TM53
  (332, 33200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Cacturne - Fling - TM56
  (332, 33200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Cacturne - Endure - TM58
  (332, 33200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Cacturne - Drain Punch - TM60
  (332, 33200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 41),
  -- Cacturne - Nasty Plot - TM63
  (332, 33200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 42),
  -- Cacturne - Payback - TM66
  (332, 33200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 43),
  -- Cacturne - Giga Impact - TM68
  (332, 33200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Cacturne - Flash - TM70
  (332, 33200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Cacturne - Swords Dance - TM75
  (332, 33200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 46),
  -- Cacturne - Dark Pulse - TM79
  (332, 33200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 47),
  -- Cacturne - Sleep Talk - TM82
  (332, 33200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Cacturne - Poison Jab - TM84
  (332, 33200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 49),
  -- Cacturne - Grass Knot - TM86
  (332, 33200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Cacturne - Swagger - TM87
  (332, 33200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Cacturne - Substitute - TM90
  (332, 33200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Cacturne - Cut - TM93
  (332, 33200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Cacturne - Strength - TM96
  (332, 33200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Cacturne - Acid - Egg
  (332, 33200, 51, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cacturne - Belch - Egg
  (332, 33200, 562, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cacturne - Block - Egg
  (332, 33200, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cacturne - Counter - Egg
  (332, 33200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cacturne - Disable - Egg
  (332, 33200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cacturne - Dynamic Punch - Egg
  (332, 33200, 223, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cacturne - Fell Stinger - Egg
  (332, 33200, 565, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cacturne - Low Kick - Egg
  (332, 33200, 67, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cacturne - Magical Leaf - Egg
  (332, 33200, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cacturne - Power-Up Punch - Egg
  (332, 33200, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Cacturne - Seed Bomb - Egg
  (332, 33200, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Cacturne - Switcheroo - Egg
  (332, 33200, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Cacturne - Teeter Dance - Egg
  (332, 33200, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Cacturne - Worry Seed - Egg
  (332, 33200, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Swablu - Peck - Starting Move
  (333, 33300, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Swablu - Growl - Starting Move
  (333, 33300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Swablu - Disarming Voice - Level 4
  (333, 33300, 574, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swablu - Mist - Level 8
  (333, 33300, 54, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 12
  (333, 33300, 31, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Swablu - Round - Level 16
  (333, 33300, 496, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Swablu - Dragon Breath - Level 20
  (333, 33300, 225, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Swablu - Safeguard - Level 24
  (333, 33300, 219, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Swablu - Sing - Level 28
  (333, 33300, 47, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swablu - Cotton Guard - Level 32
  (333, 33300, 538, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Swablu - Take Down - Level 36
  (333, 33300, 36, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Swablu - Moonblast - Level 40
  (333, 33300, 585, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swablu - Perish Song - Level 44
  (333, 33300, 195, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Swablu - Sunny Day - TM11
  (333, 33300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Swablu - Ice Beam - TM13
  (333, 33300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 15),
  -- Swablu - Protect - TM17
  (333, 33300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Swablu - Rain Dance - TM18
  (333, 33300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Swablu - Safeguard - TM20
  (333, 33300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 18),
  -- Swablu - Dazzling Gleam - TM21
  (333, 33300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 19),
  -- Swablu - Solar Beam - TM22
  (333, 33300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Swablu - Double Team - TM32
  (333, 33300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Swablu - Aerial Ace - TM40
  (333, 33300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 22),
  -- Swablu - Facade - TM42
  (333, 33300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Swablu - Rest - TM44
  (333, 33300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Swablu - Attract - TM45
  (333, 33300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Swablu - Thief - TM46
  (333, 33300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 26),
  -- Swablu - Steel Wing - TM47
  (333, 33300, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 27),
  -- Swablu - Roost - TM51
  (333, 33300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 28),
  -- Swablu - False Swipe - TM54
  (333, 33300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 29),
  -- Swablu - Endure - TM58
  (333, 33300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Swablu - Dragon Pulse - TM59
  (333, 33300, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 31),
  -- Swablu - Psych Up - TM77
  (333, 33300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 32),
  -- Swablu - Sleep Talk - TM82
  (333, 33300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Swablu - Dream Eater - TM85
  (333, 33300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 34),
  -- Swablu - Swagger - TM87
  (333, 33300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Swablu - Pluck - TM88
  (333, 33300, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 36),
  -- Swablu - Substitute - TM90
  (333, 33300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Swablu - Fly - TM94
  (333, 33300, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 38),
  -- Swablu - Agility - Egg
  (333, 33300, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Swablu - Astonish - Egg
  (333, 33300, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Swablu - Dragon Rush - Egg
  (333, 33300, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Swablu - Feather Dance - Egg
  (333, 33300, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Swablu - Haze - Egg
  (333, 33300, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swablu - Hyper Voice - Egg
  (333, 33300, 304, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swablu - Play Rough - Egg
  (333, 33300, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swablu - Power Swap - Egg
  (333, 33300, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Tailwind - Egg
  (333, 33300, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Altaria - Dragon Pulse - Starting Move
  (334, 33400, 406, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Altaria - Hurricane - Starting Move
  (334, 33400, 542, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Altaria - Pluck - Starting Move
  (334, 33400, 365, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Altaria - Peck - Starting Move
  (334, 33400, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Altaria - Growl - Starting Move
  (334, 33400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Altaria - Disarming Voice - Starting Move
  (334, 33400, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Altaria - Mist - Starting Move
  (334, 33400, 54, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Altaria - Dragon Pulse - Evolution
  (334, 33400, 406, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Altaria - Fury Attack - Level 12
  (334, 33400, 31, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Altaria - Round - Level 16
  (334, 33400, 496, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Altaria - Dragon Breath - Level 20
  (334, 33400, 225, 21, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Altaria - Safeguard - Level 24
  (334, 33400, 219, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Altaria - Sing - Level 28
  (334, 33400, 47, 21, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Altaria - Cotton Guard - Level 32
  (334, 33400, 538, 21, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Altaria - Take Down - Level 38
  (334, 33400, 36, 21, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Altaria - Moonblast - Level 44
  (334, 33400, 585, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Altaria - Perish Song - Level 50
  (334, 33400, 195, 21, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Altaria - Sky Attack - Level 56
  (334, 33400, 143, 21, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Altaria - Dragon Claw - TM02
  (334, 33400, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 19),
  -- Altaria - Roar - TM05
  (334, 33400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Altaria - Sunny Day - TM11
  (334, 33400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Altaria - Ice Beam - TM13
  (334, 33400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Altaria - Hyper Beam - TM15
  (334, 33400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Altaria - Protect - TM17
  (334, 33400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Altaria - Rain Dance - TM18
  (334, 33400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Altaria - Safeguard - TM20
  (334, 33400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Altaria - Dazzling Gleam - TM21
  (334, 33400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 27),
  -- Altaria - Solar Beam - TM22
  (334, 33400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Altaria - Iron Tail - TM23
  (334, 33400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Altaria - Earthquake - TM26
  (334, 33400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Altaria - Double Team - TM32
  (334, 33400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Altaria - Flamethrower - TM35
  (334, 33400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Altaria - Fire Blast - TM38
  (334, 33400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 33),
  -- Altaria - Aerial Ace - TM40
  (334, 33400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 34),
  -- Altaria - Facade - TM42
  (334, 33400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Altaria - Rest - TM44
  (334, 33400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Altaria - Attract - TM45
  (334, 33400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Altaria - Thief - TM46
  (334, 33400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Altaria - Steel Wing - TM47
  (334, 33400, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 39),
  -- Altaria - Roost - TM51
  (334, 33400, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 40),
  -- Altaria - False Swipe - TM54
  (334, 33400, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 41),
  -- Altaria - Endure - TM58
  (334, 33400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Altaria - Dragon Pulse - TM59
  (334, 33400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 43),
  -- Altaria - Giga Impact - TM68
  (334, 33400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Altaria - Psych Up - TM77
  (334, 33400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Altaria - Sleep Talk - TM82
  (334, 33400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Altaria - Bulldoze - TM83
  (334, 33400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Altaria - Dream Eater - TM85
  (334, 33400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Altaria - Swagger - TM87
  (334, 33400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Altaria - Pluck - TM88
  (334, 33400, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 50),
  -- Altaria - Substitute - TM90
  (334, 33400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Altaria - Fly - TM94
  (334, 33400, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 52),
  -- Altaria - Rock Smash - TM98
  (334, 33400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Altaria - Agility - Egg
  (334, 33400, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Altaria - Astonish - Egg
  (334, 33400, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Altaria - Dragon Dance - Egg
  (334, 33400, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Altaria - Dragon Rush - Egg
  (334, 33400, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Altaria - Feather Dance - Egg
  (334, 33400, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Altaria - Haze - Egg
  (334, 33400, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Altaria - Hyper Voice - Egg
  (334, 33400, 304, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Altaria - Play Rough - Egg
  (334, 33400, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Altaria - Power Swap - Egg
  (334, 33400, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Altaria - Tailwind - Egg
  (334, 33400, 366, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zangoose - Scratch - Starting Move
  (335, 33500, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Starting Move
  (335, 33500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Fury Cutter - Level 8
  (335, 33500, 210, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zangoose - Hone Claws - Level 12
  (335, 33500, 468, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zangoose - Aerial Ace - Level 15
  (335, 33500, 332, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zangoose - Slash - Level 19
  (335, 33500, 163, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zangoose - Revenge - Level 22
  (335, 33500, 279, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zangoose - Crush Claw - Level 26
  (335, 33500, 306, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zangoose - False Swipe - Level 29
  (335, 33500, 206, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zangoose - Facade - Level 33
  (335, 33500, 263, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zangoose - Detect - Level 36
  (335, 33500, 197, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zangoose - X-Scissor - Level 40
  (335, 33500, 404, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zangoose - Taunt - Level 43
  (335, 33500, 269, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Zangoose - Swords Dance - Level 47
  (335, 33500, 14, 21, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Zangoose - Close Combat - Level 50
  (335, 33500, 370, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Zangoose - Focus Punch - TM01
  (335, 33500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Zangoose - Water Pulse - TM03
  (335, 33500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Zangoose - Roar - TM05
  (335, 33500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Zangoose - Work Up - TM10
  (335, 33500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Zangoose - Sunny Day - TM11
  (335, 33500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Zangoose - Taunt - TM12
  (335, 33500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Zangoose - Ice Beam - TM13
  (335, 33500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Zangoose - Blizzard - TM14
  (335, 33500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Zangoose - Protect - TM17
  (335, 33500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Zangoose - Rain Dance - TM18
  (335, 33500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Zangoose - Giga Drain - TM19
  (335, 33500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Zangoose - Solar Beam - TM22
  (335, 33500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Zangoose - Iron Tail - TM23
  (335, 33500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Zangoose - Thunderbolt - TM24
  (335, 33500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Zangoose - Thunder - TM25
  (335, 33500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Zangoose - Dig - TM28
  (335, 33500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Zangoose - Shadow Ball - TM30
  (335, 33500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Zangoose - Brick Break - TM31
  (335, 33500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Zangoose - Double Team - TM32
  (335, 33500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Zangoose - Shock Wave - TM34
  (335, 33500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Zangoose - Flamethrower - TM35
  (335, 33500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 37),
  -- Zangoose - Fire Blast - TM38
  (335, 33500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 38),
  -- Zangoose - Rock Tomb - TM39
  (335, 33500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Zangoose - Aerial Ace - TM40
  (335, 33500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 40),
  -- Zangoose - Facade - TM42
  (335, 33500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Zangoose - Rest - TM44
  (335, 33500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Zangoose - Attract - TM45
  (335, 33500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Zangoose - Thief - TM46
  (335, 33500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 44),
  -- Zangoose - Focus Blast - TM52
  (335, 33500, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 45),
  -- Zangoose - False Swipe - TM54
  (335, 33500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 46),
  -- Zangoose - Fling - TM56
  (335, 33500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 47),
  -- Zangoose - Endure - TM58
  (335, 33500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 48),
  -- Zangoose - Shadow Claw - TM65
  (335, 33500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 49),
  -- Zangoose - Payback - TM66
  (335, 33500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 50),
  -- Zangoose - Thunder Wave - TM73
  (335, 33500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 51),
  -- Zangoose - Swords Dance - TM75
  (335, 33500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 52),
  -- Zangoose - Rock Slide - TM80
  (335, 33500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 53),
  -- Zangoose - X-Scissor - TM81
  (335, 33500, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 54),
  -- Zangoose - Sleep Talk - TM82
  (335, 33500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 55),
  -- Zangoose - Poison Jab - TM84
  (335, 33500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 56),
  -- Zangoose - Swagger - TM87
  (335, 33500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 57),
  -- Zangoose - Substitute - TM90
  (335, 33500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 58),
  -- Zangoose - Strength - TM96
  (335, 33500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 59),
  -- Zangoose - Rock Smash - TM98
  (335, 33500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Zangoose - Rock Climb - TM100
  (335, 33500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 61),
  -- Zangoose - Belly Drum - Egg
  (335, 33500, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Zangoose - Counter - Egg
  (335, 33500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zangoose - Curse - Egg
  (335, 33500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Zangoose - Disable - Egg
  (335, 33500, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Zangoose - Double Hit - Egg
  (335, 33500, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zangoose - Double Kick - Egg
  (335, 33500, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zangoose - Feint - Egg
  (335, 33500, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zangoose - Final Gambit - Egg
  (335, 33500, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zangoose - Flail - Egg
  (335, 33500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Zangoose - Fury Swipes - Egg
  (335, 33500, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Zangoose - Metal Claw - Egg
  (335, 33500, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Zangoose - Night Slash - Egg
  (335, 33500, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Zangoose - Quick Guard - Egg
  (335, 33500, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Seviper - Wrap - Starting Move
  (336, 33600, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Seviper - Swagger - Starting Move
  (336, 33600, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 4
  (336, 33600, 44, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Seviper - Lick - Level 6
  (336, 33600, 122, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Seviper - Poison Tail - Level 9
  (336, 33600, 342, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Seviper - Feint - Level 11
  (336, 33600, 364, 21, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Seviper - Screech - Level 14
  (336, 33600, 103, 21, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Seviper - Venoshock - Level 16
  (336, 33600, 474, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Seviper - Glare - Level 19
  (336, 33600, 137, 21, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Seviper - Poison Fang - Level 21
  (336, 33600, 305, 21, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Seviper - Venom Drench - Level 24
  (336, 33600, 599, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Seviper - Night Slash - Level 26
  (336, 33600, 400, 21, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Seviper - Gastro Acid - Level 29
  (336, 33600, 380, 21, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Seviper - Poison Jab - Level 31
  (336, 33600, 398, 21, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Seviper - Haze - Level 34
  (336, 33600, 114, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Seviper - Swords Dance - Level 36
  (336, 33600, 14, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Seviper - Crunch - Level 39
  (336, 33600, 242, 21, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Seviper - Belch - Level 41
  (336, 33600, 562, 21, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Seviper - Coil - Level 44
  (336, 33600, 489, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Seviper - Sludge Bomb - Level 46
  (336, 33600, 188, 21, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Seviper - Sunny Day - TM11
  (336, 33600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Seviper - Taunt - TM12
  (336, 33600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Seviper - Protect - TM17
  (336, 33600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Seviper - Rain Dance - TM18
  (336, 33600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Seviper - Giga Drain - TM19
  (336, 33600, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 25),
  -- Seviper - Iron Tail - TM23
  (336, 33600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Seviper - Earthquake - TM26
  (336, 33600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Seviper - Dig - TM28
  (336, 33600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Seviper - Double Team - TM32
  (336, 33600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Seviper - Flamethrower - TM35
  (336, 33600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Seviper - Sludge Bomb - TM36
  (336, 33600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 31),
  -- Seviper - Facade - TM42
  (336, 33600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Seviper - Rest - TM44
  (336, 33600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Seviper - Attract - TM45
  (336, 33600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Seviper - Thief - TM46
  (336, 33600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Seviper - Endure - TM58
  (336, 33600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Seviper - Payback - TM66
  (336, 33600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Seviper - Swords Dance - TM75
  (336, 33600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Seviper - Dark Pulse - TM79
  (336, 33600, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 39),
  -- Seviper - X-Scissor - TM81
  (336, 33600, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 40),
  -- Seviper - Sleep Talk - TM82
  (336, 33600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Seviper - Bulldoze - TM83
  (336, 33600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 42),
  -- Seviper - Poison Jab - TM84
  (336, 33600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 43),
  -- Seviper - Swagger - TM87
  (336, 33600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Seviper - Substitute - TM90
  (336, 33600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Seviper - Strength - TM96
  (336, 33600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Seviper - Rock Smash - TM98
  (336, 33600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Seviper - Assurance - Egg
  (336, 33600, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seviper - Body Slam - Egg
  (336, 33600, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seviper - Final Gambit - Egg
  (336, 33600, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seviper - Night Slash - Egg
  (336, 33600, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seviper - Scary Face - Egg
  (336, 33600, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seviper - Spit Up - Egg
  (336, 33600, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seviper - Stockpile - Egg
  (336, 33600, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seviper - Swallow - Egg
  (336, 33600, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seviper - Switcheroo - Egg
  (336, 33600, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Lunatone - Moonblast - Starting Move
  (337, 33700, 585, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lunatone - Moonlight - Starting Move
  (337, 33700, 236, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lunatone - Tackle - Starting Move
  (337, 33700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Lunatone - Harden - Starting Move
  (337, 33700, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Lunatone - Confusion - Starting Move
  (337, 33700, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Lunatone - Rock Throw - Starting Move
  (337, 33700, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Lunatone - Hypnosis - Level 5
  (337, 33700, 95, 21, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Lunatone - Rock Polish - Level 10
  (337, 33700, 397, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Lunatone - Rock Slide - Level 15
  (337, 33700, 157, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Lunatone - Psyshock - Level 20
  (337, 33700, 473, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Lunatone - Cosmic Power - Level 25
  (337, 33700, 322, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lunatone - Psychic - Level 30
  (337, 33700, 94, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Lunatone - Stone Edge - Level 35
  (337, 33700, 444, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Lunatone - Future Sight - Level 40
  (337, 33700, 248, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lunatone - Magic Room - Level 45
  (337, 33700, 478, 21, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lunatone - Explosion - Level 50
  (337, 33700, 153, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Lunatone - Calm Mind - TM04
  (337, 33700, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Lunatone - Hail - TM07
  (337, 33700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Lunatone - Ice Beam - TM13
  (337, 33700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Lunatone - Blizzard - TM14
  (337, 33700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Lunatone - Hyper Beam - TM15
  (337, 33700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Lunatone - Light Screen - TM16
  (337, 33700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Lunatone - Protect - TM17
  (337, 33700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Lunatone - Rain Dance - TM18
  (337, 33700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Lunatone - Safeguard - TM20
  (337, 33700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Lunatone - Earthquake - TM26
  (337, 33700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Lunatone - Psychic - TM29
  (337, 33700, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Lunatone - Shadow Ball - TM30
  (337, 33700, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Lunatone - Double Team - TM32
  (337, 33700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Lunatone - Reflect - TM33
  (337, 33700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 30),
  -- Lunatone - Sandstorm - TM37
  (337, 33700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 31),
  -- Lunatone - Rock Tomb - TM39
  (337, 33700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Lunatone - Facade - TM42
  (337, 33700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Lunatone - Rest - TM44
  (337, 33700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Lunatone - Skill Swap - TM48
  (337, 33700, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 35),
  -- Lunatone - Charge Beam - TM57
  (337, 33700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 36),
  -- Lunatone - Endure - TM58
  (337, 33700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Lunatone - Nasty Plot - TM63
  (337, 33700, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 38),
  -- Lunatone - Explosion - TM64
  (337, 33700, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Lunatone - Recycle - TM67
  (337, 33700, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 40),
  -- Lunatone - Giga Impact - TM68
  (337, 33700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Lunatone - Rock Polish - TM69
  (337, 33700, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 42),
  -- Lunatone - Flash - TM70
  (337, 33700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Lunatone - Stone Edge - TM71
  (337, 33700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 44),
  -- Lunatone - Gyro Ball - TM74
  (337, 33700, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 45),
  -- Lunatone - Stealth Rock - TM76
  (337, 33700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Lunatone - Psych Up - TM77
  (337, 33700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 47),
  -- Lunatone - Rock Slide - TM80
  (337, 33700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Lunatone - Sleep Talk - TM82
  (337, 33700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Lunatone - Bulldoze - TM83
  (337, 33700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Lunatone - Dream Eater - TM85
  (337, 33700, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 51),
  -- Lunatone - Grass Knot - TM86
  (337, 33700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 52),
  -- Lunatone - Swagger - TM87
  (337, 33700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Lunatone - Substitute - TM90
  (337, 33700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Lunatone - Trick Room - TM92
  (337, 33700, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 55),
  -- Solrock - Flare Blitz - Starting Move
  (338, 33800, 394, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Solrock - Morning Sun - Starting Move
  (338, 33800, 234, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Solrock - Tackle - Starting Move
  (338, 33800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Solrock - Harden - Starting Move
  (338, 33800, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Solrock - Confusion - Starting Move
  (338, 33800, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Solrock - Rock Throw - Starting Move
  (338, 33800, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Solrock - Hypnosis - Level 5
  (338, 33800, 95, 21, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Solrock - Rock Polish - Level 10
  (338, 33800, 397, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Solrock - Rock Slide - Level 15
  (338, 33800, 157, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Solrock - Zen Headbutt - Level 20
  (338, 33800, 428, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Solrock - Cosmic Power - Level 25
  (338, 33800, 322, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Solrock - Psychic - Level 30
  (338, 33800, 94, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Solrock - Stone Edge - Level 35
  (338, 33800, 444, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Solrock - Solar Beam - Level 40
  (338, 33800, 76, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Solrock - Wonder Room - Level 45
  (338, 33800, 472, 21, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Solrock - Explosion - Level 50
  (338, 33800, 153, 21, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Solrock - Calm Mind - TM04
  (338, 33800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Solrock - Sunny Day - TM11
  (338, 33800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Solrock - Hyper Beam - TM15
  (338, 33800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Solrock - Light Screen - TM16
  (338, 33800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Solrock - Protect - TM17
  (338, 33800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Solrock - Rain Dance - TM18
  (338, 33800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Solrock - Safeguard - TM20
  (338, 33800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Solrock - Solar Beam - TM22
  (338, 33800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Solrock - Earthquake - TM26
  (338, 33800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Solrock - Psychic - TM29
  (338, 33800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 26),
  -- Solrock - Shadow Ball - TM30
  (338, 33800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Solrock - Double Team - TM32
  (338, 33800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Solrock - Reflect - TM33
  (338, 33800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 29),
  -- Solrock - Flamethrower - TM35
  (338, 33800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Solrock - Sandstorm - TM37
  (338, 33800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 31),
  -- Solrock - Fire Blast - TM38
  (338, 33800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 32),
  -- Solrock - Rock Tomb - TM39
  (338, 33800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Solrock - Facade - TM42
  (338, 33800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Solrock - Rest - TM44
  (338, 33800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Solrock - Skill Swap - TM48
  (338, 33800, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Solrock - Overheat - TM50
  (338, 33800, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 37),
  -- Solrock - Charge Beam - TM57
  (338, 33800, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 38),
  -- Solrock - Endure - TM58
  (338, 33800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Solrock - Will-O-Wisp - TM61
  (338, 33800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 40),
  -- Solrock - Explosion - TM64
  (338, 33800, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 41),
  -- Solrock - Recycle - TM67
  (338, 33800, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 42),
  -- Solrock - Giga Impact - TM68
  (338, 33800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Solrock - Rock Polish - TM69
  (338, 33800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 44),
  -- Solrock - Flash - TM70
  (338, 33800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Solrock - Stone Edge - TM71
  (338, 33800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 46),
  -- Solrock - Gyro Ball - TM74
  (338, 33800, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 47),
  -- Solrock - Swords Dance - TM75
  (338, 33800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 48),
  -- Solrock - Stealth Rock - TM76
  (338, 33800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 49),
  -- Solrock - Psych Up - TM77
  (338, 33800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Solrock - Rock Slide - TM80
  (338, 33800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Solrock - Sleep Talk - TM82
  (338, 33800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Solrock - Bulldoze - TM83
  (338, 33800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Solrock - Dream Eater - TM85
  (338, 33800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 54),
  -- Solrock - Grass Knot - TM86
  (338, 33800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 55),
  -- Solrock - Swagger - TM87
  (338, 33800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 56),
  -- Solrock - Substitute - TM90
  (338, 33800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 57),
  -- Solrock - Trick Room - TM92
  (338, 33800, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 58),
  -- Barboach - Mud-Slap - Starting Move
  (339, 33900, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Barboach - Water Gun - Starting Move
  (339, 33900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Barboach - Rest - Level 6
  (339, 33900, 156, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Snore - Level 6
  (339, 33900, 173, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Barboach - Water Pulse - Level 12
  (339, 33900, 352, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 18
  (339, 33900, 133, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barboach - Aqua Tail - Level 24
  (339, 33900, 401, 21, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Barboach - Muddy Water - Level 31
  (339, 33900, 330, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Barboach - Earthquake - Level 36
  (339, 33900, 89, 21, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Barboach - Future Sight - Level 42
  (339, 33900, 248, 21, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Barboach - Fissure - Level 48
  (339, 33900, 90, 21, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Barboach - Water Pulse - TM03
  (339, 33900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 12),
  -- Barboach - Hail - TM07
  (339, 33900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 13),
  -- Barboach - Ice Beam - TM13
  (339, 33900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 14),
  -- Barboach - Blizzard - TM14
  (339, 33900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 15),
  -- Barboach - Protect - TM17
  (339, 33900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Barboach - Rain Dance - TM18
  (339, 33900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Barboach - Earthquake - TM26
  (339, 33900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 18),
  -- Barboach - Double Team - TM32
  (339, 33900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Barboach - Sandstorm - TM37
  (339, 33900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 20),
  -- Barboach - Rock Tomb - TM39
  (339, 33900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 21),
  -- Barboach - Facade - TM42
  (339, 33900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Barboach - Rest - TM44
  (339, 33900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Barboach - Attract - TM45
  (339, 33900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Barboach - Scald - TM49
  (339, 33900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 25),
  -- Barboach - Endure - TM58
  (339, 33900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Barboach - Sleep Talk - TM82
  (339, 33900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Barboach - Bulldoze - TM83
  (339, 33900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 28),
  -- Barboach - Swagger - TM87
  (339, 33900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Barboach - Substitute - TM90
  (339, 33900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Barboach - Surf - TM95
  (339, 33900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 31),
  -- Barboach - Waterfall - TM99
  (339, 33900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 32),
  -- Barboach - Dragon Dance - Egg
  (339, 33900, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Barboach - Earth Power - Egg
  (339, 33900, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Barboach - Flail - Egg
  (339, 33900, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Barboach - Hydro Pump - Egg
  (339, 33900, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Barboach - Mud Shot - Egg
  (339, 33900, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Barboach - Muddy Water - Egg
  (339, 33900, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Barboach - Spark - Egg
  (339, 33900, 209, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Barboach - Take Down - Egg
  (339, 33900, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Barboach - Thrash - Egg
  (339, 33900, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Barboach - Whirlpool - Egg
  (339, 33900, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Whiscash - Thrash - Starting Move
  (340, 34000, 37, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Whiscash - Belch - Starting Move
  (340, 34000, 562, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Whiscash - Zen Headbutt - Starting Move
  (340, 34000, 428, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Whiscash - Tickle - Starting Move
  (340, 34000, 321, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Whiscash - Mud-Slap - Starting Move
  (340, 34000, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Whiscash - Water Gun - Starting Move
  (340, 34000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Whiscash - Rest - Starting Move
  (340, 34000, 156, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Whiscash - Snore - Starting Move
  (340, 34000, 173, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Whiscash - Thrash - Evolution
  (340, 34000, 37, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Whiscash - Water Pulse - Level 12
  (340, 34000, 352, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Whiscash - Amnesia - Level 18
  (340, 34000, 133, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Whiscash - Aqua Tail - Level 24
  (340, 34000, 401, 21, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Whiscash - Muddy Water - Level 33
  (340, 34000, 330, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Whiscash - Earthquake - Level 40
  (340, 34000, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Whiscash - Future Sight - Level 48
  (340, 34000, 248, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Whiscash - Fissure - Level 56
  (340, 34000, 90, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Whiscash - Water Pulse - TM03
  (340, 34000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Whiscash - Hail - TM07
  (340, 34000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Whiscash - Ice Beam - TM13
  (340, 34000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Whiscash - Blizzard - TM14
  (340, 34000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Whiscash - Hyper Beam - TM15
  (340, 34000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Whiscash - Protect - TM17
  (340, 34000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Whiscash - Rain Dance - TM18
  (340, 34000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Whiscash - Earthquake - TM26
  (340, 34000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Whiscash - Double Team - TM32
  (340, 34000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Whiscash - Sandstorm - TM37
  (340, 34000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 26),
  -- Whiscash - Rock Tomb - TM39
  (340, 34000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Whiscash - Facade - TM42
  (340, 34000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Whiscash - Rest - TM44
  (340, 34000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Whiscash - Attract - TM45
  (340, 34000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Whiscash - Scald - TM49
  (340, 34000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Whiscash - Endure - TM58
  (340, 34000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Whiscash - Giga Impact - TM68
  (340, 34000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Whiscash - Stone Edge - TM71
  (340, 34000, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 34),
  -- Whiscash - Rock Slide - TM80
  (340, 34000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 35),
  -- Whiscash - Sleep Talk - TM82
  (340, 34000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Whiscash - Bulldoze - TM83
  (340, 34000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 37),
  -- Whiscash - Swagger - TM87
  (340, 34000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Whiscash - Substitute - TM90
  (340, 34000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Whiscash - Surf - TM95
  (340, 34000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 40),
  -- Whiscash - Strength - TM96
  (340, 34000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 41),
  -- Whiscash - Rock Smash - TM98
  (340, 34000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Whiscash - Waterfall - TM99
  (340, 34000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 43),
  -- Whiscash - Dragon Dance - Egg
  (340, 34000, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Whiscash - Earth Power - Egg
  (340, 34000, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whiscash - Flail - Egg
  (340, 34000, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whiscash - Hydro Pump - Egg
  (340, 34000, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Whiscash - Mud Shot - Egg
  (340, 34000, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Whiscash - Muddy Water - Egg
  (340, 34000, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Whiscash - Spark - Egg
  (340, 34000, 209, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Whiscash - Take Down - Egg
  (340, 34000, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Whiscash - Thrash - Egg
  (340, 34000, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Whiscash - Whirlpool - Egg
  (340, 34000, 250, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Water Gun - Starting Move
  (341, 34100, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Starting Move
  (341, 34100, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Corphish - Leer - Level 4
  (341, 34100, 43, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Corphish - Taunt - Level 8
  (341, 34100, 269, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 12
  (341, 34100, 61, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Corphish - Knock Off - Level 16
  (341, 34100, 282, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Corphish - Double Hit - Level 20
  (341, 34100, 458, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Corphish - Protect - Level 24
  (341, 34100, 182, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 28
  (341, 34100, 400, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Corphish - Razor Shell - Level 32
  (341, 34100, 534, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Corphish - Swords Dance - Level 36
  (341, 34100, 14, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Corphish - Crunch - Level 40
  (341, 34100, 242, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Corphish - Crabhammer - Level 44
  (341, 34100, 152, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Corphish - Endeavor - Level 48
  (341, 34100, 283, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Corphish - Guillotine - Level 52
  (341, 34100, 12, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Corphish - Water Pulse - TM03
  (341, 34100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Corphish - Hail - TM07
  (341, 34100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Corphish - Taunt - TM12
  (341, 34100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Corphish - Ice Beam - TM13
  (341, 34100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Corphish - Blizzard - TM14
  (341, 34100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Corphish - Protect - TM17
  (341, 34100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Corphish - Rain Dance - TM18
  (341, 34100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Corphish - Dig - TM28
  (341, 34100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Corphish - Brick Break - TM31
  (341, 34100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Corphish - Double Team - TM32
  (341, 34100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Corphish - Sludge Bomb - TM36
  (341, 34100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Corphish - Rock Tomb - TM39
  (341, 34100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Corphish - Aerial Ace - TM40
  (341, 34100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Corphish - Facade - TM42
  (341, 34100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Corphish - Rest - TM44
  (341, 34100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Corphish - Attract - TM45
  (341, 34100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Corphish - Scald - TM49
  (341, 34100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 32),
  -- Corphish - False Swipe - TM54
  (341, 34100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 33),
  -- Corphish - Fling - TM56
  (341, 34100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Corphish - Endure - TM58
  (341, 34100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Corphish - Payback - TM66
  (341, 34100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 36),
  -- Corphish - Swords Dance - TM75
  (341, 34100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 37),
  -- Corphish - Rock Slide - TM80
  (341, 34100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Corphish - X-Scissor - TM81
  (341, 34100, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 39),
  -- Corphish - Sleep Talk - TM82
  (341, 34100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Corphish - Swagger - TM87
  (341, 34100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Corphish - Substitute - TM90
  (341, 34100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Corphish - Cut - TM93
  (341, 34100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Corphish - Surf - TM95
  (341, 34100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Corphish - Strength - TM96
  (341, 34100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Corphish - Rock Smash - TM98
  (341, 34100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Corphish - Waterfall - TM99
  (341, 34100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Corphish - Ancient Power - Egg
  (341, 34100, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Corphish - Aqua Jet - Egg
  (341, 34100, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Corphish - Body Slam - Egg
  (341, 34100, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Corphish - Double-Edge - Egg
  (341, 34100, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corphish - Dragon Dance - Egg
  (341, 34100, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corphish - Endeavor - Egg
  (341, 34100, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Knock Off - Egg
  (341, 34100, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Metal Claw - Egg
  (341, 34100, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Slash - Egg
  (341, 34100, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corphish - Superpower - Egg
  (341, 34100, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corphish - Switcheroo - Egg
  (341, 34100, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Crawdaunt - Swift - Starting Move
  (342, 34200, 129, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Crawdaunt - Water Gun - Starting Move
  (342, 34200, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Crawdaunt - Harden - Starting Move
  (342, 34200, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Crawdaunt - Leer - Starting Move
  (342, 34200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Crawdaunt - Taunt - Starting Move
  (342, 34200, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Crawdaunt - Swift - Evolution
  (342, 34200, 129, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Crawdaunt - Bubble Beam - Level 12
  (342, 34200, 61, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Crawdaunt - Knock Off - Level 16
  (342, 34200, 282, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Crawdaunt - Double Hit - Level 20
  (342, 34200, 458, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Crawdaunt - Protect - Level 24
  (342, 34200, 182, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Crawdaunt - Night Slash - Level 28
  (342, 34200, 400, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Crawdaunt - Razor Shell - Level 34
  (342, 34200, 534, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Crawdaunt - Swords Dance - Level 40
  (342, 34200, 14, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Crawdaunt - Crunch - Level 46
  (342, 34200, 242, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Crawdaunt - Crabhammer - Level 52
  (342, 34200, 152, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Crawdaunt - Endeavor - Level 58
  (342, 34200, 283, 21, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Crawdaunt - Guillotine - Level 64
  (342, 34200, 12, 21, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Crawdaunt - Water Pulse - TM03
  (342, 34200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Crawdaunt - Hail - TM07
  (342, 34200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Crawdaunt - Taunt - TM12
  (342, 34200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Crawdaunt - Ice Beam - TM13
  (342, 34200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Crawdaunt - Blizzard - TM14
  (342, 34200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Crawdaunt - Hyper Beam - TM15
  (342, 34200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Crawdaunt - Protect - TM17
  (342, 34200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Crawdaunt - Rain Dance - TM18
  (342, 34200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Crawdaunt - Dig - TM28
  (342, 34200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Crawdaunt - Brick Break - TM31
  (342, 34200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Crawdaunt - Double Team - TM32
  (342, 34200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Crawdaunt - Sludge Bomb - TM36
  (342, 34200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 29),
  -- Crawdaunt - Rock Tomb - TM39
  (342, 34200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Crawdaunt - Aerial Ace - TM40
  (342, 34200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Crawdaunt - Facade - TM42
  (342, 34200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Crawdaunt - Rest - TM44
  (342, 34200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Crawdaunt - Attract - TM45
  (342, 34200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Crawdaunt - Scald - TM49
  (342, 34200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Crawdaunt - False Swipe - TM54
  (342, 34200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 36),
  -- Crawdaunt - Fling - TM56
  (342, 34200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 37),
  -- Crawdaunt - Endure - TM58
  (342, 34200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Crawdaunt - Nasty Plot - TM63
  (342, 34200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 39),
  -- Crawdaunt - Payback - TM66
  (342, 34200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 40),
  -- Crawdaunt - Giga Impact - TM68
  (342, 34200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Crawdaunt - Avalanche - TM72
  (342, 34200, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 42),
  -- Crawdaunt - Swords Dance - TM75
  (342, 34200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 43),
  -- Crawdaunt - Snarl - TM78
  (342, 34200, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 44),
  -- Crawdaunt - Dark Pulse - TM79
  (342, 34200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 45),
  -- Crawdaunt - Rock Slide - TM80
  (342, 34200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 46),
  -- Crawdaunt - X-Scissor - TM81
  (342, 34200, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 47),
  -- Crawdaunt - Sleep Talk - TM82
  (342, 34200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Crawdaunt - Swagger - TM87
  (342, 34200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Crawdaunt - Substitute - TM90
  (342, 34200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Crawdaunt - Cut - TM93
  (342, 34200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 51),
  -- Crawdaunt - Surf - TM95
  (342, 34200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 52),
  -- Crawdaunt - Strength - TM96
  (342, 34200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 53),
  -- Crawdaunt - Rock Smash - TM98
  (342, 34200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 54),
  -- Crawdaunt - Waterfall - TM99
  (342, 34200, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 55),
  -- Crawdaunt - Ancient Power - Egg
  (342, 34200, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Crawdaunt - Aqua Jet - Egg
  (342, 34200, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Crawdaunt - Body Slam - Egg
  (342, 34200, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Crawdaunt - Double-Edge - Egg
  (342, 34200, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Crawdaunt - Dragon Dance - Egg
  (342, 34200, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Crawdaunt - Endeavor - Egg
  (342, 34200, 283, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Crawdaunt - Knock Off - Egg
  (342, 34200, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Crawdaunt - Metal Claw - Egg
  (342, 34200, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Crawdaunt - Slash - Egg
  (342, 34200, 163, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Crawdaunt - Superpower - Egg
  (342, 34200, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Crawdaunt - Switcheroo - Egg
  (342, 34200, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Baltoy - Harden - Starting Move
  (343, 34300, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Baltoy - Mud-Slap - Starting Move
  (343, 34300, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 3
  (343, 34300, 229, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Baltoy - Confusion - Level 6
  (343, 34300, 93, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Baltoy - Rock Tomb - Level 9
  (343, 34300, 317, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Baltoy - Power Trick - Level 12
  (343, 34300, 379, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Baltoy - Psybeam - Level 15
  (343, 34300, 60, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 18
  (343, 34300, 246, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Baltoy - Imprison - Level 21
  (343, 34300, 286, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Baltoy - Cosmic Power - Level 24
  (343, 34300, 322, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Baltoy - Extrasensory - Level 27
  (343, 34300, 326, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Baltoy - Earth Power - Level 30
  (343, 34300, 414, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Baltoy - Self-Destruct - Level 33
  (343, 34300, 120, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Baltoy - Guard Split - Level 36
  (343, 34300, 470, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Baltoy - Power Split - Level 36
  (343, 34300, 471, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Baltoy - Sandstorm - Level 39
  (343, 34300, 201, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Baltoy - Explosion - Level 42
  (343, 34300, 153, 21, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Baltoy - Calm Mind - TM04
  (343, 34300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Baltoy - Sunny Day - TM11
  (343, 34300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Baltoy - Ice Beam - TM13
  (343, 34300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Baltoy - Light Screen - TM16
  (343, 34300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Baltoy - Protect - TM17
  (343, 34300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Baltoy - Rain Dance - TM18
  (343, 34300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Baltoy - Safeguard - TM20
  (343, 34300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Baltoy - Dazzling Gleam - TM21
  (343, 34300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Baltoy - Solar Beam - TM22
  (343, 34300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Baltoy - Earthquake - TM26
  (343, 34300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Baltoy - Dig - TM28
  (343, 34300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Baltoy - Psychic - TM29
  (343, 34300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 29),
  -- Baltoy - Shadow Ball - TM30
  (343, 34300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 30),
  -- Baltoy - Double Team - TM32
  (343, 34300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Baltoy - Reflect - TM33
  (343, 34300, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 32),
  -- Baltoy - Sandstorm - TM37
  (343, 34300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Baltoy - Rock Tomb - TM39
  (343, 34300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Baltoy - Facade - TM42
  (343, 34300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Baltoy - Rest - TM44
  (343, 34300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Baltoy - Skill Swap - TM48
  (343, 34300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 37),
  -- Baltoy - Charge Beam - TM57
  (343, 34300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 38),
  -- Baltoy - Endure - TM58
  (343, 34300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Baltoy - Explosion - TM64
  (343, 34300, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 40),
  -- Baltoy - Recycle - TM67
  (343, 34300, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 41),
  -- Baltoy - Rock Polish - TM69
  (343, 34300, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 42),
  -- Baltoy - Flash - TM70
  (343, 34300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Baltoy - Gyro Ball - TM74
  (343, 34300, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 44),
  -- Baltoy - Stealth Rock - TM76
  (343, 34300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 45),
  -- Baltoy - Psych Up - TM77
  (343, 34300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Baltoy - Rock Slide - TM80
  (343, 34300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Baltoy - Sleep Talk - TM82
  (343, 34300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Baltoy - Bulldoze - TM83
  (343, 34300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 49),
  -- Baltoy - Dream Eater - TM85
  (343, 34300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 50),
  -- Baltoy - Grass Knot - TM86
  (343, 34300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Baltoy - Swagger - TM87
  (343, 34300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Baltoy - Substitute - TM90
  (343, 34300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Baltoy - Trick Room - TM92
  (343, 34300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 54),
  -- Claydol - Hyper Beam - Starting Move
  (344, 34400, 63, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Claydol - Teleport - Starting Move
  (344, 34400, 100, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Claydol - Harden - Starting Move
  (344, 34400, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Claydol - Mud-Slap - Starting Move
  (344, 34400, 189, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Claydol - Rapid Spin - Starting Move
  (344, 34400, 229, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Claydol - Confusion - Starting Move
  (344, 34400, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Claydol - Hyper Beam - Evolution
  (344, 34400, 63, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Claydol - Rock Tomb - Level 9
  (344, 34400, 317, 21, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Claydol - Power Trick - Level 12
  (344, 34400, 379, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Claydol - Psybeam - Level 15
  (344, 34400, 60, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Claydol - Ancient Power - Level 18
  (344, 34400, 246, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Claydol - Imprison - Level 21
  (344, 34400, 286, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Claydol - Cosmic Power - Level 24
  (344, 34400, 322, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Claydol - Extrasensory - Level 27
  (344, 34400, 326, 21, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Claydol - Earth Power - Level 30
  (344, 34400, 414, 21, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Claydol - Self-Destruct - Level 33
  (344, 34400, 120, 21, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Claydol - Guard Split - Level 38
  (344, 34400, 470, 21, NULL, 1, 38, NULL, NULL, NULL, 17),
  -- Claydol - Power Split - Level 38
  (344, 34400, 471, 21, NULL, 1, 38, NULL, NULL, NULL, 18),
  -- Claydol - Sandstorm - Level 43
  (344, 34400, 201, 21, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Claydol - Explosion - Level 48
  (344, 34400, 153, 21, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Claydol - Calm Mind - TM04
  (344, 34400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Claydol - Sunny Day - TM11
  (344, 34400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Claydol - Ice Beam - TM13
  (344, 34400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Claydol - Hyper Beam - TM15
  (344, 34400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Claydol - Light Screen - TM16
  (344, 34400, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Claydol - Protect - TM17
  (344, 34400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Claydol - Rain Dance - TM18
  (344, 34400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Claydol - Safeguard - TM20
  (344, 34400, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Claydol - Dazzling Gleam - TM21
  (344, 34400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 29),
  -- Claydol - Solar Beam - TM22
  (344, 34400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 30),
  -- Claydol - Earthquake - TM26
  (344, 34400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Claydol - Dig - TM28
  (344, 34400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Claydol - Psychic - TM29
  (344, 34400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 33),
  -- Claydol - Shadow Ball - TM30
  (344, 34400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Claydol - Double Team - TM32
  (344, 34400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Claydol - Reflect - TM33
  (344, 34400, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Claydol - Sandstorm - TM37
  (344, 34400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 37),
  -- Claydol - Rock Tomb - TM39
  (344, 34400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 38),
  -- Claydol - Facade - TM42
  (344, 34400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Claydol - Rest - TM44
  (344, 34400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Claydol - Skill Swap - TM48
  (344, 34400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Claydol - Charge Beam - TM57
  (344, 34400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 42),
  -- Claydol - Endure - TM58
  (344, 34400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Claydol - Nasty Plot - TM63
  (344, 34400, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 44),
  -- Claydol - Explosion - TM64
  (344, 34400, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 45),
  -- Claydol - Recycle - TM67
  (344, 34400, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 46),
  -- Claydol - Giga Impact - TM68
  (344, 34400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Claydol - Rock Polish - TM69
  (344, 34400, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 48),
  -- Claydol - Flash - TM70
  (344, 34400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 49),
  -- Claydol - Stone Edge - TM71
  (344, 34400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 50),
  -- Claydol - Gyro Ball - TM74
  (344, 34400, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 51),
  -- Claydol - Stealth Rock - TM76
  (344, 34400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 52),
  -- Claydol - Psych Up - TM77
  (344, 34400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 53),
  -- Claydol - Rock Slide - TM80
  (344, 34400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 54),
  -- Claydol - Sleep Talk - TM82
  (344, 34400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 55),
  -- Claydol - Bulldoze - TM83
  (344, 34400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 56),
  -- Claydol - Dream Eater - TM85
  (344, 34400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 57),
  -- Claydol - Grass Knot - TM86
  (344, 34400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 58),
  -- Claydol - Swagger - TM87
  (344, 34400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 59),
  -- Claydol - Substitute - TM90
  (344, 34400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 60),
  -- Claydol - Trick Room - TM92
  (344, 34400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 61),
  -- Claydol - Strength - TM96
  (344, 34400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 62),
  -- Claydol - Rock Smash - TM98
  (344, 34400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 63),
  -- Lileep - Wrap - Starting Move
  (345, 34500, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Lileep - Astonish - Starting Move
  (345, 34500, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 4
  (345, 34500, 51, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Lileep - Confuse Ray - Level 8
  (345, 34500, 109, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lileep - Ingrain - Level 12
  (345, 34500, 275, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lileep - Ancient Power - Level 16
  (345, 34500, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lileep - Mega Drain - Level 20
  (345, 34500, 72, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lileep - Brine - Level 24
  (345, 34500, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lileep - Amnesia - Level 28
  (345, 34500, 133, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lileep - Gastro Acid - Level 32
  (345, 34500, 380, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Lileep - Giga Drain - Level 36
  (345, 34500, 202, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lileep - Stockpile - Level 41
  (345, 34500, 254, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Lileep - Spit Up - Level 41
  (345, 34500, 255, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Lileep - Swallow - Level 41
  (345, 34500, 256, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Lileep - Energy Ball - Level 44
  (345, 34500, 412, 21, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Lileep - Bullet Seed - TM09
  (345, 34500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Lileep - Sunny Day - TM11
  (345, 34500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Lileep - Protect - TM17
  (345, 34500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Lileep - Giga Drain - TM19
  (345, 34500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Lileep - Solar Beam - TM22
  (345, 34500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 20),
  -- Lileep - Double Team - TM32
  (345, 34500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Lileep - Sludge Bomb - TM36
  (345, 34500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 22),
  -- Lileep - Sandstorm - TM37
  (345, 34500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 23),
  -- Lileep - Rock Tomb - TM39
  (345, 34500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Lileep - Facade - TM42
  (345, 34500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Lileep - Rest - TM44
  (345, 34500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Lileep - Attract - TM45
  (345, 34500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Lileep - Energy Ball - TM53
  (345, 34500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 28),
  -- Lileep - Brine - TM55
  (345, 34500, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 29),
  -- Lileep - Endure - TM58
  (345, 34500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Lileep - Rock Polish - TM69
  (345, 34500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 31),
  -- Lileep - Flash - TM70
  (345, 34500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Lileep - Swords Dance - TM75
  (345, 34500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 33),
  -- Lileep - Stealth Rock - TM76
  (345, 34500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 34),
  -- Lileep - Rock Slide - TM80
  (345, 34500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 35),
  -- Lileep - Sleep Talk - TM82
  (345, 34500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Lileep - Grass Knot - TM86
  (345, 34500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 37),
  -- Lileep - Swagger - TM87
  (345, 34500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Lileep - Substitute - TM90
  (345, 34500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 39),
  -- Lileep - Bind - Egg
  (345, 34500, 20, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Lileep - Curse - Egg
  (345, 34500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lileep - Mega Drain - Egg
  (345, 34500, 72, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lileep - Mirror Coat - Egg
  (345, 34500, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lileep - Recover - Egg
  (345, 34500, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lileep - Tickle - Egg
  (345, 34500, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cradily - Leech Seed - Starting Move
  (346, 34600, 73, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Cradily - Wrap - Starting Move
  (346, 34600, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Cradily - Astonish - Starting Move
  (346, 34600, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Cradily - Acid - Starting Move
  (346, 34600, 51, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Cradily - Confuse Ray - Starting Move
  (346, 34600, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Cradily - Ingrain - Level 12
  (346, 34600, 275, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cradily - Ancient Power - Level 16
  (346, 34600, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cradily - Mega Drain - Level 20
  (346, 34600, 72, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cradily - Brine - Level 24
  (346, 34600, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cradily - Amnesia - Level 28
  (346, 34600, 133, 21, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Cradily - Gastro Acid - Level 32
  (346, 34600, 380, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Cradily - Giga Drain - Level 36
  (346, 34600, 202, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Cradily - Stockpile - Level 43
  (346, 34600, 254, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Cradily - Spit Up - Level 43
  (346, 34600, 255, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Cradily - Swallow - Level 43
  (346, 34600, 256, 21, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Cradily - Energy Ball - Level 48
  (346, 34600, 412, 21, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Cradily - Bullet Seed - TM09
  (346, 34600, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Cradily - Sunny Day - TM11
  (346, 34600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Cradily - Hyper Beam - TM15
  (346, 34600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Cradily - Protect - TM17
  (346, 34600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Cradily - Giga Drain - TM19
  (346, 34600, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Cradily - Solar Beam - TM22
  (346, 34600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Cradily - Earthquake - TM26
  (346, 34600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Cradily - Dig - TM28
  (346, 34600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Cradily - Double Team - TM32
  (346, 34600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Cradily - Sludge Bomb - TM36
  (346, 34600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Cradily - Sandstorm - TM37
  (346, 34600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 27),
  -- Cradily - Rock Tomb - TM39
  (346, 34600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Cradily - Facade - TM42
  (346, 34600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Cradily - Rest - TM44
  (346, 34600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Cradily - Attract - TM45
  (346, 34600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Cradily - Energy Ball - TM53
  (346, 34600, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 32),
  -- Cradily - Brine - TM55
  (346, 34600, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Cradily - Endure - TM58
  (346, 34600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Cradily - Giga Impact - TM68
  (346, 34600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Cradily - Rock Polish - TM69
  (346, 34600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 36),
  -- Cradily - Flash - TM70
  (346, 34600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Cradily - Stone Edge - TM71
  (346, 34600, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 38),
  -- Cradily - Swords Dance - TM75
  (346, 34600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Cradily - Stealth Rock - TM76
  (346, 34600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Cradily - Rock Slide - TM80
  (346, 34600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Cradily - Sleep Talk - TM82
  (346, 34600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Cradily - Bulldoze - TM83
  (346, 34600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Cradily - Grass Knot - TM86
  (346, 34600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 44),
  -- Cradily - Swagger - TM87
  (346, 34600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Cradily - Substitute - TM90
  (346, 34600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Cradily - Strength - TM96
  (346, 34600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Cradily - Rock Smash - TM98
  (346, 34600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Cradily - Bind - Egg
  (346, 34600, 20, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cradily - Curse - Egg
  (346, 34600, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cradily - Mega Drain - Egg
  (346, 34600, 72, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cradily - Mirror Coat - Egg
  (346, 34600, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cradily - Recover - Egg
  (346, 34600, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cradily - Tickle - Egg
  (346, 34600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Anorith - Fury Cutter - Starting Move
  (347, 34700, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Anorith - Harden - Starting Move
  (347, 34700, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Anorith - Water Gun - Level 4
  (347, 34700, 55, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Anorith - Smack Down - Level 8
  (347, 34700, 479, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Anorith - Metal Claw - Level 12
  (347, 34700, 232, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Anorith - Ancient Power - Level 16
  (347, 34700, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Anorith - Bug Bite - Level 20
  (347, 34700, 450, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Anorith - Brine - Level 24
  (347, 34700, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Anorith - Slash - Level 28
  (347, 34700, 163, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Anorith - Crush Claw - Level 32
  (347, 34700, 306, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Anorith - Rock Blast - Level 36
  (347, 34700, 350, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Anorith - Protect - Level 41
  (347, 34700, 182, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Anorith - X-Scissor - Level 44
  (347, 34700, 404, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Anorith - Water Pulse - TM03
  (347, 34700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Anorith - Sunny Day - TM11
  (347, 34700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Anorith - Protect - TM17
  (347, 34700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Anorith - Dig - TM28
  (347, 34700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 17),
  -- Anorith - Brick Break - TM31
  (347, 34700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 18),
  -- Anorith - Double Team - TM32
  (347, 34700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Anorith - Sandstorm - TM37
  (347, 34700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 20),
  -- Anorith - Rock Tomb - TM39
  (347, 34700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 21),
  -- Anorith - Aerial Ace - TM40
  (347, 34700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 22),
  -- Anorith - Facade - TM42
  (347, 34700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Anorith - Rest - TM44
  (347, 34700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Anorith - Attract - TM45
  (347, 34700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Anorith - False Swipe - TM54
  (347, 34700, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 26),
  -- Anorith - Brine - TM55
  (347, 34700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 27),
  -- Anorith - Endure - TM58
  (347, 34700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Anorith - Rock Polish - TM69
  (347, 34700, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 29),
  -- Anorith - Swords Dance - TM75
  (347, 34700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 30),
  -- Anorith - Stealth Rock - TM76
  (347, 34700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 31),
  -- Anorith - Rock Slide - TM80
  (347, 34700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 32),
  -- Anorith - X-Scissor - TM81
  (347, 34700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 33),
  -- Anorith - Sleep Talk - TM82
  (347, 34700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Anorith - Swagger - TM87
  (347, 34700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Anorith - Substitute - TM90
  (347, 34700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Anorith - Cut - TM93
  (347, 34700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Anorith - Rock Smash - TM98
  (347, 34700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 38),
  -- Anorith - Aqua Jet - Egg
  (347, 34700, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Anorith - Cross Poison - Egg
  (347, 34700, 440, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Anorith - Curse - Egg
  (347, 34700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Anorith - Iron Defense - Egg
  (347, 34700, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Anorith - Knock Off - Egg
  (347, 34700, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Anorith - Rapid Spin - Egg
  (347, 34700, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Anorith - Sand Attack - Egg
  (347, 34700, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Anorith - Screech - Egg
  (347, 34700, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Armaldo - Fury Cutter - Starting Move
  (348, 34800, 210, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Armaldo - Harden - Starting Move
  (348, 34800, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Armaldo - Water Gun - Starting Move
  (348, 34800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Armaldo - Smack Down - Starting Move
  (348, 34800, 479, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Armaldo - Metal Claw - Level 12
  (348, 34800, 232, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Armaldo - Ancient Power - Level 16
  (348, 34800, 246, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Armaldo - Bug Bite - Level 20
  (348, 34800, 450, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Armaldo - Brine - Level 24
  (348, 34800, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Armaldo - Slash - Level 28
  (348, 34800, 163, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Armaldo - Crush Claw - Level 32
  (348, 34800, 306, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Armaldo - Rock Blast - Level 36
  (348, 34800, 350, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Armaldo - Protect - Level 43
  (348, 34800, 182, 21, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Armaldo - X-Scissor - Level 48
  (348, 34800, 404, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Armaldo - Water Pulse - TM03
  (348, 34800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Armaldo - Sunny Day - TM11
  (348, 34800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Armaldo - Hyper Beam - TM15
  (348, 34800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 16),
  -- Armaldo - Protect - TM17
  (348, 34800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Armaldo - Iron Tail - TM23
  (348, 34800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 18),
  -- Armaldo - Earthquake - TM26
  (348, 34800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 19),
  -- Armaldo - Dig - TM28
  (348, 34800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 20),
  -- Armaldo - Brick Break - TM31
  (348, 34800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 21),
  -- Armaldo - Double Team - TM32
  (348, 34800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Armaldo - Sandstorm - TM37
  (348, 34800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 23),
  -- Armaldo - Rock Tomb - TM39
  (348, 34800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Armaldo - Aerial Ace - TM40
  (348, 34800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Armaldo - Facade - TM42
  (348, 34800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Armaldo - Rest - TM44
  (348, 34800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Armaldo - Attract - TM45
  (348, 34800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Armaldo - False Swipe - TM54
  (348, 34800, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 29),
  -- Armaldo - Brine - TM55
  (348, 34800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 30),
  -- Armaldo - Endure - TM58
  (348, 34800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Armaldo - Shadow Claw - TM65
  (348, 34800, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 32),
  -- Armaldo - Giga Impact - TM68
  (348, 34800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Armaldo - Rock Polish - TM69
  (348, 34800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 34),
  -- Armaldo - Stone Edge - TM71
  (348, 34800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 35),
  -- Armaldo - Swords Dance - TM75
  (348, 34800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 36),
  -- Armaldo - Stealth Rock - TM76
  (348, 34800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 37),
  -- Armaldo - Rock Slide - TM80
  (348, 34800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Armaldo - X-Scissor - TM81
  (348, 34800, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 39),
  -- Armaldo - Sleep Talk - TM82
  (348, 34800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Armaldo - Bulldoze - TM83
  (348, 34800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Armaldo - Swagger - TM87
  (348, 34800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Armaldo - Substitute - TM90
  (348, 34800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Armaldo - Flash Cannon - TM91
  (348, 34800, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 44),
  -- Armaldo - Cut - TM93
  (348, 34800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Armaldo - Strength - TM96
  (348, 34800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Armaldo - Rock Smash - TM98
  (348, 34800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Armaldo - Aqua Jet - Egg
  (348, 34800, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Armaldo - Cross Poison - Egg
  (348, 34800, 440, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Armaldo - Curse - Egg
  (348, 34800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Armaldo - Iron Defense - Egg
  (348, 34800, 334, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Armaldo - Knock Off - Egg
  (348, 34800, 282, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Armaldo - Rapid Spin - Egg
  (348, 34800, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Armaldo - Sand Attack - Egg
  (348, 34800, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Armaldo - Screech - Egg
  (348, 34800, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Feebas - Splash - Starting Move
  (349, 34900, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 21, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 25
  (349, 34900, 175, 21, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Feebas - Water Pulse - TM03
  (349, 34900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 4),
  -- Feebas - Hail - TM07
  (349, 34900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 5),
  -- Feebas - Ice Beam - TM13
  (349, 34900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 6),
  -- Feebas - Blizzard - TM14
  (349, 34900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 7),
  -- Feebas - Light Screen - TM16
  (349, 34900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 8),
  -- Feebas - Protect - TM17
  (349, 34900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 9),
  -- Feebas - Rain Dance - TM18
  (349, 34900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 10),
  -- Feebas - Iron Tail - TM23
  (349, 34900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 11),
  -- Feebas - Double Team - TM32
  (349, 34900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 12),
  -- Feebas - Facade - TM42
  (349, 34900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 13),
  -- Feebas - Rest - TM44
  (349, 34900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 14),
  -- Feebas - Attract - TM45
  (349, 34900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 15),
  -- Feebas - Scald - TM49
  (349, 34900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 16),
  -- Feebas - Brine - TM55
  (349, 34900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 17),
  -- Feebas - Endure - TM58
  (349, 34900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 18),
  -- Feebas - Dragon Pulse - TM59
  (349, 34900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 19),
  -- Feebas - Sleep Talk - TM82
  (349, 34900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 20),
  -- Feebas - Swagger - TM87
  (349, 34900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 21),
  -- Feebas - Substitute - TM90
  (349, 34900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 22),
  -- Feebas - Surf - TM95
  (349, 34900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 23),
  -- Feebas - Waterfall - TM99
  (349, 34900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 24),
  -- Feebas - Confuse Ray - Egg
  (349, 34900, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Feebas - Dragon Breath - Egg
  (349, 34900, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Feebas - Haze - Egg
  (349, 34900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Feebas - Hypnosis - Egg
  (349, 34900, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Feebas - Mirror Coat - Egg
  (349, 34900, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Feebas - Mist - Egg
  (349, 34900, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Feebas - Tickle - Egg
  (349, 34900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Milotic - Water Pulse - Starting Move
  (350, 35000, 352, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Milotic - Flail - Starting Move
  (350, 35000, 175, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Milotic - Splash - Starting Move
  (350, 35000, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Milotic - Tackle - Starting Move
  (350, 35000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Milotic - Wrap - Starting Move
  (350, 35000, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Milotic - Water Gun - Starting Move
  (350, 35000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Milotic - Water Pulse - Evolution
  (350, 35000, 352, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Milotic - Disarming Voice - Level 4
  (350, 35000, 574, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Milotic - Twister - Level 8
  (350, 35000, 239, 21, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Milotic - Aqua Ring - Level 12
  (350, 35000, 392, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Milotic - Attract - Level 16
  (350, 35000, 213, 21, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Milotic - Life Dew - Level 20
  (350, 35000, 791, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Milotic - Dragon Tail - Level 24
  (350, 35000, 525, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Milotic - Recover - Level 28
  (350, 35000, 105, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Milotic - Aqua Tail - Level 32
  (350, 35000, 401, 21, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Milotic - Safeguard - Level 36
  (350, 35000, 219, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Milotic - Surf - Level 40
  (350, 35000, 57, 21, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Milotic - Rain Dance - Level 44
  (350, 35000, 240, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Milotic - Coil - Level 48
  (350, 35000, 489, 21, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Milotic - Hydro Pump - Level 52
  (350, 35000, 56, 21, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Milotic - Water Pulse - TM03
  (350, 35000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Milotic - Hail - TM07
  (350, 35000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Milotic - Ice Beam - TM13
  (350, 35000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Milotic - Blizzard - TM14
  (350, 35000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Milotic - Hyper Beam - TM15
  (350, 35000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Milotic - Light Screen - TM16
  (350, 35000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 26),
  -- Milotic - Protect - TM17
  (350, 35000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Milotic - Rain Dance - TM18
  (350, 35000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Milotic - Safeguard - TM20
  (350, 35000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 29),
  -- Milotic - Iron Tail - TM23
  (350, 35000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Milotic - Double Team - TM32
  (350, 35000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Milotic - Facade - TM42
  (350, 35000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Milotic - Rest - TM44
  (350, 35000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Milotic - Attract - TM45
  (350, 35000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Milotic - Scald - TM49
  (350, 35000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Milotic - Brine - TM55
  (350, 35000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 36),
  -- Milotic - Endure - TM58
  (350, 35000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Milotic - Dragon Pulse - TM59
  (350, 35000, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 38),
  -- Milotic - Giga Impact - TM68
  (350, 35000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Milotic - Avalanche - TM72
  (350, 35000, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 40),
  -- Milotic - Psych Up - TM77
  (350, 35000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Milotic - Sleep Talk - TM82
  (350, 35000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Milotic - Bulldoze - TM83
  (350, 35000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Milotic - Swagger - TM87
  (350, 35000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Milotic - Substitute - TM90
  (350, 35000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Milotic - Surf - TM95
  (350, 35000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Milotic - Waterfall - TM99
  (350, 35000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Milotic - Confuse Ray - Egg
  (350, 35000, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Milotic - Dragon Breath - Egg
  (350, 35000, 225, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Milotic - Haze - Egg
  (350, 35000, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Milotic - Hypnosis - Egg
  (350, 35000, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Milotic - Mirror Coat - Egg
  (350, 35000, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Milotic - Mist - Egg
  (350, 35000, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Milotic - Tickle - Egg
  (350, 35000, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 54);
