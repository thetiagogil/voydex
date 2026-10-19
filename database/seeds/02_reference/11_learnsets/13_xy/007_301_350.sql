-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 301-350.
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
  -- Delcatty - Double Slap - Level 1
  (301, 30100, 3, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delcatty - Sing - Level 1
  (301, 30100, 47, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delcatty - Fake Out - Level 1
  (301, 30100, 252, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delcatty - Calm Mind - TM04
  (301, 30100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 4),
  -- Delcatty - Toxic - TM06
  (301, 30100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 5),
  -- Delcatty - Hidden Power - TM10
  (301, 30100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 6),
  -- Delcatty - Sunny Day - TM11
  (301, 30100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 7),
  -- Delcatty - Ice Beam - TM13
  (301, 30100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 8),
  -- Delcatty - Blizzard - TM14
  (301, 30100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 9),
  -- Delcatty - Hyper Beam - TM15
  (301, 30100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 10),
  -- Delcatty - Protect - TM17
  (301, 30100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Delcatty - Rain Dance - TM18
  (301, 30100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 12),
  -- Delcatty - Safeguard - TM20
  (301, 30100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 13),
  -- Delcatty - Frustration - TM21
  (301, 30100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 14),
  -- Delcatty - Solar Beam - TM22
  (301, 30100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 15),
  -- Delcatty - Thunderbolt - TM24
  (301, 30100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 16),
  -- Delcatty - Thunder - TM25
  (301, 30100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 17),
  -- Delcatty - Return - TM27
  (301, 30100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 18),
  -- Delcatty - Dig - TM28
  (301, 30100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 19),
  -- Delcatty - Shadow Ball - TM30
  (301, 30100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 20),
  -- Delcatty - Double Team - TM32
  (301, 30100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Delcatty - Facade - TM42
  (301, 30100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Delcatty - Rest - TM44
  (301, 30100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Delcatty - Attract - TM45
  (301, 30100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Delcatty - Round - TM48
  (301, 30100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Delcatty - Echoed Voice - TM49
  (301, 30100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 26),
  -- Delcatty - Charge Beam - TM57
  (301, 30100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 27),
  -- Delcatty - Payback - TM66
  (301, 30100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 28),
  -- Delcatty - Retaliate - TM67
  (301, 30100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 29),
  -- Delcatty - Giga Impact - TM68
  (301, 30100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 30),
  -- Delcatty - Flash - TM70
  (301, 30100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Delcatty - Thunder Wave - TM73
  (301, 30100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 32),
  -- Delcatty - Psych Up - TM77
  (301, 30100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 33),
  -- Delcatty - Dream Eater - TM85
  (301, 30100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 34),
  -- Delcatty - Grass Knot - TM86
  (301, 30100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 35),
  -- Delcatty - Swagger - TM87
  (301, 30100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Delcatty - Sleep Talk - TM88
  (301, 30100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Delcatty - Substitute - TM90
  (301, 30100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Delcatty - Wild Charge - TM93
  (301, 30100, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 39),
  -- Delcatty - Rock Smash - TM94
  (301, 30100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Delcatty - Confide - TM100
  (301, 30100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Delcatty - Strength - HM04
  (301, 30100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 42),
  -- Sableye - Scratch - Level 1
  (302, 30200, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Mean Look - Level 1
  (302, 30200, 212, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sableye - Zen Headbutt - Level 1
  (302, 30200, 428, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sableye - Foresight - Level 4
  (302, 30200, 193, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Sableye - Night Shade - Level 8
  (302, 30200, 101, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Sableye - Astonish - Level 11
  (302, 30200, 310, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Sableye - Fury Swipes - Level 15
  (302, 30200, 154, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Sableye - Fake Out - Level 18
  (302, 30200, 252, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Sableye - Detect - Level 22
  (302, 30200, 197, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Sableye - Shadow Sneak - Level 25
  (302, 30200, 425, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Sableye - Knock Off - Level 29
  (302, 30200, 282, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Sableye - Feint Attack - Level 32
  (302, 30200, 185, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Sableye - Punishment - Level 36
  (302, 30200, 386, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sableye - Shadow Claw - Level 39
  (302, 30200, 421, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sableye - Power Gem - Level 43
  (302, 30200, 408, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Sableye - Confuse Ray - Level 46
  (302, 30200, 109, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Sableye - Foul Play - Level 50
  (302, 30200, 492, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Sableye - Zen Headbutt - Level 53
  (302, 30200, 428, 13, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Sableye - Shadow Ball - Level 57
  (302, 30200, 247, 13, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Sableye - Mean Look - Level 60
  (302, 30200, 212, 13, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Sableye - Hone Claws - TM01
  (302, 30200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 22),
  -- Sableye - Calm Mind - TM04
  (302, 30200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 23),
  -- Sableye - Toxic - TM06
  (302, 30200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Sableye - Hidden Power - TM10
  (302, 30200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Sableye - Sunny Day - TM11
  (302, 30200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Sableye - Taunt - TM12
  (302, 30200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 27),
  -- Sableye - Protect - TM17
  (302, 30200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Sableye - Rain Dance - TM18
  (302, 30200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Sableye - Frustration - TM21
  (302, 30200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Sableye - Return - TM27
  (302, 30200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Sableye - Dig - TM28
  (302, 30200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Sableye - Psychic - TM29
  (302, 30200, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 33),
  -- Sableye - Shadow Ball - TM30
  (302, 30200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 34),
  -- Sableye - Brick Break - TM31
  (302, 30200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 35),
  -- Sableye - Double Team - TM32
  (302, 30200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Sableye - Rock Tomb - TM39
  (302, 30200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Sableye - Aerial Ace - TM40
  (302, 30200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Sableye - Torment - TM41
  (302, 30200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 39),
  -- Sableye - Facade - TM42
  (302, 30200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Sableye - Rest - TM44
  (302, 30200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Sableye - Attract - TM45
  (302, 30200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 42),
  -- Sableye - Thief - TM46
  (302, 30200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 43),
  -- Sableye - Low Sweep - TM47
  (302, 30200, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 44),
  -- Sableye - Round - TM48
  (302, 30200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Sableye - Fling - TM56
  (302, 30200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Sableye - Incinerate - TM59
  (302, 30200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 47),
  -- Sableye - Will-O-Wisp - TM61
  (302, 30200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 48),
  -- Sableye - Embargo - TM63
  (302, 30200, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 49),
  -- Sableye - Shadow Claw - TM65
  (302, 30200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 50),
  -- Sableye - Payback - TM66
  (302, 30200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 51),
  -- Sableye - Retaliate - TM67
  (302, 30200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 52),
  -- Sableye - Flash - TM70
  (302, 30200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 53),
  -- Sableye - Psych Up - TM77
  (302, 30200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Sableye - Poison Jab - TM84
  (302, 30200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 55),
  -- Sableye - Dream Eater - TM85
  (302, 30200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 56),
  -- Sableye - Swagger - TM87
  (302, 30200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Sableye - Sleep Talk - TM88
  (302, 30200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Sableye - Substitute - TM90
  (302, 30200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Sableye - Rock Smash - TM94
  (302, 30200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Sableye - Snarl - TM95
  (302, 30200, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 61),
  -- Sableye - Dark Pulse - TM97
  (302, 30200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 62),
  -- Sableye - Power-Up Punch - TM98
  (302, 30200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 63),
  -- Sableye - Dazzling Gleam - TM99
  (302, 30200, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 64),
  -- Sableye - Confide - TM100
  (302, 30200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Sableye - Cut - HM01
  (302, 30200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 66),
  -- Sableye - Recover - Egg
  (302, 30200, 105, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sableye - Mean Look - Egg
  (302, 30200, 212, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sableye - Moonlight - Egg
  (302, 30200, 236, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sableye - Flatter - Egg
  (302, 30200, 260, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sableye - Trick - Egg
  (302, 30200, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sableye - Imprison - Egg
  (302, 30200, 286, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sableye - Feint - Egg
  (302, 30200, 364, 13, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sableye - Metal Burst - Egg
  (302, 30200, 368, 13, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sableye - Sucker Punch - Egg
  (302, 30200, 389, 13, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Sableye - Nasty Plot - Egg
  (302, 30200, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Sableye - Captivate - Egg
  (302, 30200, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mawile - Growl - Level 1
  (303, 30300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Taunt - Level 1
  (303, 30300, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mawile - Astonish - Level 1
  (303, 30300, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mawile - Iron Head - Level 1
  (303, 30300, 442, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mawile - Play Rough - Level 1
  (303, 30300, 583, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mawile - Fairy Wind - Level 1
  (303, 30300, 584, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mawile - Fake Tears - Level 6
  (303, 30300, 313, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Mawile - Bite - Level 11
  (303, 30300, 44, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Mawile - Sweet Scent - Level 16
  (303, 30300, 230, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Mawile - Vise Grip - Level 21
  (303, 30300, 11, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Mawile - Feint Attack - Level 26
  (303, 30300, 185, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Mawile - Baton Pass - Level 31
  (303, 30300, 226, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Mawile - Crunch - Level 36
  (303, 30300, 242, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mawile - Iron Defense - Level 41
  (303, 30300, 334, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Mawile - Sucker Punch - Level 46
  (303, 30300, 389, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Mawile - Stockpile - Level 50
  (303, 30300, 254, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Mawile - Spit Up - Level 50
  (303, 30300, 255, 13, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Mawile - Swallow - Level 50
  (303, 30300, 256, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Mawile - Iron Head - Level 56
  (303, 30300, 442, 13, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Mawile - Play Rough - Level 60
  (303, 30300, 583, 13, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Mawile - Toxic - TM06
  (303, 30300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Mawile - Hidden Power - TM10
  (303, 30300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Mawile - Sunny Day - TM11
  (303, 30300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Mawile - Taunt - TM12
  (303, 30300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Mawile - Ice Beam - TM13
  (303, 30300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Mawile - Hyper Beam - TM15
  (303, 30300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Mawile - Protect - TM17
  (303, 30300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Mawile - Rain Dance - TM18
  (303, 30300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Mawile - Frustration - TM21
  (303, 30300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Mawile - Solar Beam - TM22
  (303, 30300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Mawile - Return - TM27
  (303, 30300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Mawile - Shadow Ball - TM30
  (303, 30300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Mawile - Brick Break - TM31
  (303, 30300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Mawile - Double Team - TM32
  (303, 30300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Mawile - Flamethrower - TM35
  (303, 30300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Mawile - Sludge Bomb - TM36
  (303, 30300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 36),
  -- Mawile - Sandstorm - TM37
  (303, 30300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 37),
  -- Mawile - Fire Blast - TM38
  (303, 30300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 38),
  -- Mawile - Rock Tomb - TM39
  (303, 30300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Mawile - Torment - TM41
  (303, 30300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Mawile - Facade - TM42
  (303, 30300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Mawile - Rest - TM44
  (303, 30300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Mawile - Attract - TM45
  (303, 30300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Mawile - Round - TM48
  (303, 30300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Mawile - Focus Blast - TM52
  (303, 30300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 45),
  -- Mawile - False Swipe - TM54
  (303, 30300, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 46),
  -- Mawile - Fling - TM56
  (303, 30300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 47),
  -- Mawile - Charge Beam - TM57
  (303, 30300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 48),
  -- Mawile - Incinerate - TM59
  (303, 30300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 49),
  -- Mawile - Embargo - TM63
  (303, 30300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 50),
  -- Mawile - Payback - TM66
  (303, 30300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 51),
  -- Mawile - Giga Impact - TM68
  (303, 30300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 52),
  -- Mawile - Stone Edge - TM71
  (303, 30300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 53),
  -- Mawile - Swords Dance - TM75
  (303, 30300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 54),
  -- Mawile - Psych Up - TM77
  (303, 30300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 55),
  -- Mawile - Rock Slide - TM80
  (303, 30300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 56),
  -- Mawile - Grass Knot - TM86
  (303, 30300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 57),
  -- Mawile - Swagger - TM87
  (303, 30300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 58),
  -- Mawile - Sleep Talk - TM88
  (303, 30300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 59),
  -- Mawile - Substitute - TM90
  (303, 30300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 60),
  -- Mawile - Flash Cannon - TM91
  (303, 30300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 61),
  -- Mawile - Rock Smash - TM94
  (303, 30300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Mawile - Dark Pulse - TM97
  (303, 30300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 63),
  -- Mawile - Power-Up Punch - TM98
  (303, 30300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 64),
  -- Mawile - Confide - TM100
  (303, 30300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Mawile - Strength - HM04
  (303, 30300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Mawile - Slam - Egg
  (303, 30300, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mawile - Seismic Toss - Egg
  (303, 30300, 69, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mawile - Ancient Power - Egg
  (303, 30300, 246, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mawile - Poison Fang - Egg
  (303, 30300, 305, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mawile - Tickle - Egg
  (303, 30300, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mawile - Metal Burst - Egg
  (303, 30300, 368, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mawile - Guard Swap - Egg
  (303, 30300, 385, 13, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mawile - Punishment - Egg
  (303, 30300, 386, 13, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mawile - Sucker Punch - Egg
  (303, 30300, 389, 13, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mawile - Thunder Fang - Egg
  (303, 30300, 422, 13, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mawile - Ice Fang - Egg
  (303, 30300, 423, 13, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mawile - Fire Fang - Egg
  (303, 30300, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Mawile - Captivate - Egg
  (303, 30300, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Mawile - Misty Terrain - Egg
  (303, 30300, 581, 13, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Aron - Tackle - Level 1
  (304, 30400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Harden - Level 1
  (304, 30400, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aron - Mud-Slap - Level 4
  (304, 30400, 189, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aron - Headbutt - Level 8
  (304, 30400, 29, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aron - Metal Claw - Level 11
  (304, 30400, 232, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aron - Iron Defense - Level 15
  (304, 30400, 334, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aron - Roar - Level 18
  (304, 30400, 46, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aron - Take Down - Level 22
  (304, 30400, 36, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aron - Iron Head - Level 25
  (304, 30400, 442, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aron - Protect - Level 29
  (304, 30400, 182, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aron - Metal Sound - Level 32
  (304, 30400, 319, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aron - Iron Tail - Level 36
  (304, 30400, 231, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aron - Autotomize - Level 39
  (304, 30400, 475, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aron - Heavy Slam - Level 43
  (304, 30400, 484, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aron - Double-Edge - Level 46
  (304, 30400, 38, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Aron - Metal Burst - Level 50
  (304, 30400, 368, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Aron - Hone Claws - TM01
  (304, 30400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Aron - Roar - TM05
  (304, 30400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 18),
  -- Aron - Toxic - TM06
  (304, 30400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Aron - Hidden Power - TM10
  (304, 30400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Aron - Sunny Day - TM11
  (304, 30400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Aron - Protect - TM17
  (304, 30400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Aron - Rain Dance - TM18
  (304, 30400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Aron - Frustration - TM21
  (304, 30400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Aron - Earthquake - TM26
  (304, 30400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 25),
  -- Aron - Return - TM27
  (304, 30400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Aron - Dig - TM28
  (304, 30400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Aron - Double Team - TM32
  (304, 30400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Aron - Sandstorm - TM37
  (304, 30400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Aron - Rock Tomb - TM39
  (304, 30400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Aron - Aerial Ace - TM40
  (304, 30400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Aron - Facade - TM42
  (304, 30400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Aron - Rest - TM44
  (304, 30400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Aron - Attract - TM45
  (304, 30400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Aron - Round - TM48
  (304, 30400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Aron - Shadow Claw - TM65
  (304, 30400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 36),
  -- Aron - Rock Polish - TM69
  (304, 30400, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 37),
  -- Aron - Bulldoze - TM78
  (304, 30400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 38),
  -- Aron - Rock Slide - TM80
  (304, 30400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Aron - Swagger - TM87
  (304, 30400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Aron - Sleep Talk - TM88
  (304, 30400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Aron - Substitute - TM90
  (304, 30400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Aron - Rock Smash - TM94
  (304, 30400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Aron - Confide - TM100
  (304, 30400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Aron - Cut - HM01
  (304, 30400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 45),
  -- Aron - Strength - HM04
  (304, 30400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Aron - Stomp - Egg
  (304, 30400, 23, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Aron - Body Slam - Egg
  (304, 30400, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aron - Screech - Egg
  (304, 30400, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aron - Curse - Egg
  (304, 30400, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aron - Reversal - Egg
  (304, 30400, 179, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aron - Smelling Salts - Egg
  (304, 30400, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aron - Superpower - Egg
  (304, 30400, 276, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aron - Endeavor - Egg
  (304, 30400, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aron - Dragon Rush - Egg
  (304, 30400, 407, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aron - Iron Head - Egg
  (304, 30400, 442, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aron - Stealth Rock - Egg
  (304, 30400, 446, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aron - Head Smash - Egg
  (304, 30400, 457, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Lairon - Headbutt - Level 1
  (305, 30500, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Mud-Slap - Level 1
  (305, 30500, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lairon - Mud-Slap - Level 4
  (305, 30500, 189, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Lairon - Headbutt - Level 8
  (305, 30500, 29, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Lairon - Metal Claw - Level 11
  (305, 30500, 232, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Lairon - Iron Defense - Level 15
  (305, 30500, 334, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Lairon - Roar - Level 18
  (305, 30500, 46, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Lairon - Take Down - Level 22
  (305, 30500, 36, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Lairon - Iron Head - Level 25
  (305, 30500, 442, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lairon - Protect - Level 29
  (305, 30500, 182, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lairon - Metal Sound - Level 34
  (305, 30500, 319, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Lairon - Iron Tail - Level 40
  (305, 30500, 231, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lairon - Autotomize - Level 45
  (305, 30500, 475, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lairon - Heavy Slam - Level 51
  (305, 30500, 484, 13, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Lairon - Double-Edge - Level 56
  (305, 30500, 38, 13, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Lairon - Metal Burst - Level 62
  (305, 30500, 368, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Lairon - Hone Claws - TM01
  (305, 30500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Lairon - Roar - TM05
  (305, 30500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Lairon - Toxic - TM06
  (305, 30500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Lairon - Hidden Power - TM10
  (305, 30500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Lairon - Sunny Day - TM11
  (305, 30500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Lairon - Protect - TM17
  (305, 30500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Lairon - Rain Dance - TM18
  (305, 30500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Lairon - Frustration - TM21
  (305, 30500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Lairon - Earthquake - TM26
  (305, 30500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Lairon - Return - TM27
  (305, 30500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Lairon - Dig - TM28
  (305, 30500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Lairon - Double Team - TM32
  (305, 30500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Lairon - Sandstorm - TM37
  (305, 30500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 31),
  -- Lairon - Rock Tomb - TM39
  (305, 30500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Lairon - Aerial Ace - TM40
  (305, 30500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Lairon - Facade - TM42
  (305, 30500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Lairon - Rest - TM44
  (305, 30500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Lairon - Attract - TM45
  (305, 30500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Lairon - Round - TM48
  (305, 30500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Lairon - Shadow Claw - TM65
  (305, 30500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 38),
  -- Lairon - Rock Polish - TM69
  (305, 30500, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 39),
  -- Lairon - Stone Edge - TM71
  (305, 30500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 40),
  -- Lairon - Bulldoze - TM78
  (305, 30500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 41),
  -- Lairon - Rock Slide - TM80
  (305, 30500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 42),
  -- Lairon - Swagger - TM87
  (305, 30500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Lairon - Sleep Talk - TM88
  (305, 30500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Lairon - Substitute - TM90
  (305, 30500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Lairon - Rock Smash - TM94
  (305, 30500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Lairon - Confide - TM100
  (305, 30500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Lairon - Cut - HM01
  (305, 30500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 48),
  -- Lairon - Strength - HM04
  (305, 30500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 49),
  -- Aggron - Headbutt - Level 1
  (306, 30600, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Mud-Slap - Level 1
  (306, 30600, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aggron - Mud-Slap - Level 4
  (306, 30600, 189, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Aggron - Headbutt - Level 8
  (306, 30600, 29, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Aggron - Metal Claw - Level 11
  (306, 30600, 232, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Aggron - Iron Defense - Level 15
  (306, 30600, 334, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Aggron - Roar - Level 18
  (306, 30600, 46, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Aggron - Take Down - Level 22
  (306, 30600, 36, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Aggron - Iron Head - Level 25
  (306, 30600, 442, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Aggron - Protect - Level 29
  (306, 30600, 182, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Aggron - Metal Sound - Level 34
  (306, 30600, 319, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Aggron - Iron Tail - Level 40
  (306, 30600, 231, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Aggron - Autotomize - Level 48
  (306, 30600, 475, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Aggron - Heavy Slam - Level 57
  (306, 30600, 484, 13, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Aggron - Double-Edge - Level 65
  (306, 30600, 38, 13, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Aggron - Metal Burst - Level 74
  (306, 30600, 368, 13, NULL, 1, 74, NULL, NULL, NULL, 18),
  -- Aggron - Hone Claws - TM01
  (306, 30600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Aggron - Dragon Claw - TM02
  (306, 30600, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 20),
  -- Aggron - Roar - TM05
  (306, 30600, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Aggron - Toxic - TM06
  (306, 30600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Aggron - Hidden Power - TM10
  (306, 30600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Aggron - Sunny Day - TM11
  (306, 30600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Aggron - Taunt - TM12
  (306, 30600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 25),
  -- Aggron - Ice Beam - TM13
  (306, 30600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Aggron - Blizzard - TM14
  (306, 30600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Aggron - Hyper Beam - TM15
  (306, 30600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Aggron - Protect - TM17
  (306, 30600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Aggron - Rain Dance - TM18
  (306, 30600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Aggron - Frustration - TM21
  (306, 30600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Aggron - Solar Beam - TM22
  (306, 30600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 32),
  -- Aggron - Smack Down - TM23
  (306, 30600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 33),
  -- Aggron - Thunderbolt - TM24
  (306, 30600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 34),
  -- Aggron - Thunder - TM25
  (306, 30600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 35),
  -- Aggron - Earthquake - TM26
  (306, 30600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 36),
  -- Aggron - Return - TM27
  (306, 30600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 37),
  -- Aggron - Dig - TM28
  (306, 30600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 38),
  -- Aggron - Brick Break - TM31
  (306, 30600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 39),
  -- Aggron - Double Team - TM32
  (306, 30600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Aggron - Flamethrower - TM35
  (306, 30600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 41),
  -- Aggron - Sandstorm - TM37
  (306, 30600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 42),
  -- Aggron - Fire Blast - TM38
  (306, 30600, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 43),
  -- Aggron - Rock Tomb - TM39
  (306, 30600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 44),
  -- Aggron - Aerial Ace - TM40
  (306, 30600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 45),
  -- Aggron - Facade - TM42
  (306, 30600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 46),
  -- Aggron - Rest - TM44
  (306, 30600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 47),
  -- Aggron - Attract - TM45
  (306, 30600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 48),
  -- Aggron - Round - TM48
  (306, 30600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 49),
  -- Aggron - Focus Blast - TM52
  (306, 30600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 50),
  -- Aggron - Fling - TM56
  (306, 30600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 51),
  -- Aggron - Incinerate - TM59
  (306, 30600, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 52),
  -- Aggron - Shadow Claw - TM65
  (306, 30600, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 53),
  -- Aggron - Payback - TM66
  (306, 30600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 54),
  -- Aggron - Giga Impact - TM68
  (306, 30600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 55),
  -- Aggron - Rock Polish - TM69
  (306, 30600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 56),
  -- Aggron - Stone Edge - TM71
  (306, 30600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 57),
  -- Aggron - Thunder Wave - TM73
  (306, 30600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 58),
  -- Aggron - Bulldoze - TM78
  (306, 30600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 59),
  -- Aggron - Rock Slide - TM80
  (306, 30600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 60),
  -- Aggron - Dragon Tail - TM82
  (306, 30600, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 61),
  -- Aggron - Swagger - TM87
  (306, 30600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 62),
  -- Aggron - Sleep Talk - TM88
  (306, 30600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 63),
  -- Aggron - Substitute - TM90
  (306, 30600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 64),
  -- Aggron - Flash Cannon - TM91
  (306, 30600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 65),
  -- Aggron - Rock Smash - TM94
  (306, 30600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 66),
  -- Aggron - Dark Pulse - TM97
  (306, 30600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 67),
  -- Aggron - Power-Up Punch - TM98
  (306, 30600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 68),
  -- Aggron - Confide - TM100
  (306, 30600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 69),
  -- Aggron - Cut - HM01
  (306, 30600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 70),
  -- Aggron - Surf - HM03
  (306, 30600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 71),
  -- Aggron - Strength - HM04
  (306, 30600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 72),
  -- Meditite - Bide - Level 1
  (307, 30700, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Meditate - Level 4
  (307, 30700, 96, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Meditite - Confusion - Level 8
  (307, 30700, 93, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Meditite - Detect - Level 11
  (307, 30700, 197, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Meditite - Hidden Power - Level 15
  (307, 30700, 237, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Meditite - Mind Reader - Level 18
  (307, 30700, 170, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Meditite - Feint - Level 22
  (307, 30700, 364, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meditite - Calm Mind - Level 25
  (307, 30700, 347, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meditite - Force Palm - Level 29
  (307, 30700, 395, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meditite - High Jump Kick - Level 32
  (307, 30700, 136, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meditite - Psych Up - Level 36
  (307, 30700, 244, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meditite - Acupressure - Level 39
  (307, 30700, 367, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Meditite - Power Trick - Level 43
  (307, 30700, 379, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Meditite - Reversal - Level 46
  (307, 30700, 179, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Meditite - Recover - Level 50
  (307, 30700, 105, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Meditite - Psyshock - TM03
  (307, 30700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 16),
  -- Meditite - Calm Mind - TM04
  (307, 30700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Meditite - Toxic - TM06
  (307, 30700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Meditite - Bulk Up - TM08
  (307, 30700, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 19),
  -- Meditite - Hidden Power - TM10
  (307, 30700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Meditite - Sunny Day - TM11
  (307, 30700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Meditite - Light Screen - TM16
  (307, 30700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Meditite - Protect - TM17
  (307, 30700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Meditite - Rain Dance - TM18
  (307, 30700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Meditite - Frustration - TM21
  (307, 30700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Meditite - Return - TM27
  (307, 30700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Meditite - Psychic - TM29
  (307, 30700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Meditite - Shadow Ball - TM30
  (307, 30700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Meditite - Brick Break - TM31
  (307, 30700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Meditite - Double Team - TM32
  (307, 30700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Meditite - Reflect - TM33
  (307, 30700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Meditite - Rock Tomb - TM39
  (307, 30700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Meditite - Facade - TM42
  (307, 30700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Meditite - Rest - TM44
  (307, 30700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Meditite - Attract - TM45
  (307, 30700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Meditite - Low Sweep - TM47
  (307, 30700, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 36),
  -- Meditite - Round - TM48
  (307, 30700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Meditite - Focus Blast - TM52
  (307, 30700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 38),
  -- Meditite - Fling - TM56
  (307, 30700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Meditite - Retaliate - TM67
  (307, 30700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 40),
  -- Meditite - Flash - TM70
  (307, 30700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Meditite - Psych Up - TM77
  (307, 30700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 42),
  -- Meditite - Rock Slide - TM80
  (307, 30700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 43),
  -- Meditite - Poison Jab - TM84
  (307, 30700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 44),
  -- Meditite - Dream Eater - TM85
  (307, 30700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 45),
  -- Meditite - Grass Knot - TM86
  (307, 30700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Meditite - Swagger - TM87
  (307, 30700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Meditite - Sleep Talk - TM88
  (307, 30700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Meditite - Substitute - TM90
  (307, 30700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Meditite - Rock Smash - TM94
  (307, 30700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Meditite - Power-Up Punch - TM98
  (307, 30700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 51),
  -- Meditite - Confide - TM100
  (307, 30700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Meditite - Strength - HM04
  (307, 30700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Meditite - Fire Punch - Egg
  (307, 30700, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meditite - Ice Punch - Egg
  (307, 30700, 8, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meditite - Thunder Punch - Egg
  (307, 30700, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meditite - Foresight - Egg
  (307, 30700, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meditite - Dynamic Punch - Egg
  (307, 30700, 223, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meditite - Baton Pass - Egg
  (307, 30700, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meditite - Fake Out - Egg
  (307, 30700, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meditite - Secret Power - Egg
  (307, 30700, 290, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meditite - Power Swap - Egg
  (307, 30700, 384, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meditite - Guard Swap - Egg
  (307, 30700, 385, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Meditite - Drain Punch - Egg
  (307, 30700, 409, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Meditite - Bullet Punch - Egg
  (307, 30700, 418, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Meditite - Psycho Cut - Egg
  (307, 30700, 427, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Meditite - Quick Guard - Egg
  (307, 30700, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Medicham - Fire Punch - Level 1
  (308, 30800, 7, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Ice Punch - Level 1
  (308, 30800, 8, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Thunder Punch - Level 1
  (308, 30800, 9, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Medicham - Meditate - Level 1
  (308, 30800, 96, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Medicham - Bide - Level 1
  (308, 30800, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Medicham - Detect - Level 1
  (308, 30800, 197, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Medicham - Zen Headbutt - Level 1
  (308, 30800, 428, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Medicham - Meditate - Level 4
  (308, 30800, 96, 13, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Medicham - Confusion - Level 8
  (308, 30800, 93, 13, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Medicham - Detect - Level 11
  (308, 30800, 197, 13, NULL, 1, 11, NULL, NULL, NULL, 11),
  -- Medicham - Hidden Power - Level 15
  (308, 30800, 237, 13, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Medicham - Mind Reader - Level 18
  (308, 30800, 170, 13, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Medicham - Feint - Level 22
  (308, 30800, 364, 13, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Medicham - Calm Mind - Level 25
  (308, 30800, 347, 13, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Medicham - Force Palm - Level 29
  (308, 30800, 395, 13, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Medicham - High Jump Kick - Level 32
  (308, 30800, 136, 13, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Medicham - Psych Up - Level 36
  (308, 30800, 244, 13, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Medicham - Acupressure - Level 42
  (308, 30800, 367, 13, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Medicham - Power Trick - Level 49
  (308, 30800, 379, 13, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Medicham - Reversal - Level 55
  (308, 30800, 179, 13, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Medicham - Recover - Level 62
  (308, 30800, 105, 13, NULL, 1, 62, NULL, NULL, NULL, 22),
  -- Medicham - Psyshock - TM03
  (308, 30800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 23),
  -- Medicham - Calm Mind - TM04
  (308, 30800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 24),
  -- Medicham - Toxic - TM06
  (308, 30800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 25),
  -- Medicham - Bulk Up - TM08
  (308, 30800, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 26),
  -- Medicham - Hidden Power - TM10
  (308, 30800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 27),
  -- Medicham - Sunny Day - TM11
  (308, 30800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 28),
  -- Medicham - Hyper Beam - TM15
  (308, 30800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Medicham - Light Screen - TM16
  (308, 30800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 30),
  -- Medicham - Protect - TM17
  (308, 30800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 31),
  -- Medicham - Rain Dance - TM18
  (308, 30800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 32),
  -- Medicham - Frustration - TM21
  (308, 30800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 33),
  -- Medicham - Return - TM27
  (308, 30800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Medicham - Psychic - TM29
  (308, 30800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Medicham - Shadow Ball - TM30
  (308, 30800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Medicham - Brick Break - TM31
  (308, 30800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Medicham - Double Team - TM32
  (308, 30800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Medicham - Reflect - TM33
  (308, 30800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 39),
  -- Medicham - Rock Tomb - TM39
  (308, 30800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 40),
  -- Medicham - Facade - TM42
  (308, 30800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Medicham - Rest - TM44
  (308, 30800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Medicham - Attract - TM45
  (308, 30800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Medicham - Low Sweep - TM47
  (308, 30800, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 44),
  -- Medicham - Round - TM48
  (308, 30800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Medicham - Focus Blast - TM52
  (308, 30800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 46),
  -- Medicham - Energy Ball - TM53
  (308, 30800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 47),
  -- Medicham - Fling - TM56
  (308, 30800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 48),
  -- Medicham - Retaliate - TM67
  (308, 30800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 49),
  -- Medicham - Giga Impact - TM68
  (308, 30800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 50),
  -- Medicham - Flash - TM70
  (308, 30800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 51),
  -- Medicham - Psych Up - TM77
  (308, 30800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Medicham - Rock Slide - TM80
  (308, 30800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 53),
  -- Medicham - Poison Jab - TM84
  (308, 30800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 54),
  -- Medicham - Dream Eater - TM85
  (308, 30800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 55),
  -- Medicham - Grass Knot - TM86
  (308, 30800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 56),
  -- Medicham - Swagger - TM87
  (308, 30800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Medicham - Sleep Talk - TM88
  (308, 30800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Medicham - Substitute - TM90
  (308, 30800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Medicham - Rock Smash - TM94
  (308, 30800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 60),
  -- Medicham - Power-Up Punch - TM98
  (308, 30800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 61),
  -- Medicham - Confide - TM100
  (308, 30800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Medicham - Strength - HM04
  (308, 30800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 63),
  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Level 4
  (309, 30900, 86, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 9
  (309, 30900, 43, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 12
  (309, 30900, 336, 13, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 17
  (309, 30900, 98, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electrike - Spark - Level 20
  (309, 30900, 209, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Electrike - Odor Sleuth - Level 25
  (309, 30900, 316, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Electrike - Bite - Level 28
  (309, 30900, 44, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Electrike - Thunder Fang - Level 33
  (309, 30900, 422, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Electrike - Roar - Level 36
  (309, 30900, 46, 13, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Electrike - Discharge - Level 41
  (309, 30900, 435, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Electrike - Charge - Level 44
  (309, 30900, 268, 13, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Electrike - Wild Charge - Level 49
  (309, 30900, 528, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Electrike - Thunder - Level 52
  (309, 30900, 87, 13, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Electrike - Roar - TM05
  (309, 30900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Electrike - Toxic - TM06
  (309, 30900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Electrike - Hidden Power - TM10
  (309, 30900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Electrike - Light Screen - TM16
  (309, 30900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 18),
  -- Electrike - Protect - TM17
  (309, 30900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Electrike - Rain Dance - TM18
  (309, 30900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Electrike - Frustration - TM21
  (309, 30900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Electrike - Thunderbolt - TM24
  (309, 30900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 22),
  -- Electrike - Thunder - TM25
  (309, 30900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 23),
  -- Electrike - Return - TM27
  (309, 30900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Electrike - Double Team - TM32
  (309, 30900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Electrike - Flamethrower - TM35
  (309, 30900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 26),
  -- Electrike - Facade - TM42
  (309, 30900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Electrike - Rest - TM44
  (309, 30900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Electrike - Attract - TM45
  (309, 30900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Electrike - Thief - TM46
  (309, 30900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 30),
  -- Electrike - Round - TM48
  (309, 30900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Electrike - Charge Beam - TM57
  (309, 30900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 32),
  -- Electrike - Flash - TM70
  (309, 30900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Electrike - Volt Switch - TM72
  (309, 30900, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 34),
  -- Electrike - Thunder Wave - TM73
  (309, 30900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 35),
  -- Electrike - Swagger - TM87
  (309, 30900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Electrike - Sleep Talk - TM88
  (309, 30900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Electrike - Substitute - TM90
  (309, 30900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Electrike - Wild Charge - TM93
  (309, 30900, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 39),
  -- Electrike - Snarl - TM95
  (309, 30900, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 40),
  -- Electrike - Confide - TM100
  (309, 30900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Electrike - Strength - HM04
  (309, 30900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 42),
  -- Electrike - Headbutt - Egg
  (309, 30900, 29, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Electrike - Swift - Egg
  (309, 30900, 129, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Electrike - Curse - Egg
  (309, 30900, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Electrike - Crunch - Egg
  (309, 30900, 242, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Electrike - Uproar - Egg
  (309, 30900, 253, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrike - Shock Wave - Egg
  (309, 30900, 351, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electrike - Switcheroo - Egg
  (309, 30900, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electrike - Thunder Fang - Egg
  (309, 30900, 422, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Electrike - Ice Fang - Egg
  (309, 30900, 423, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electrike - Fire Fang - Egg
  (309, 30900, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electrike - Discharge - Egg
  (309, 30900, 435, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electrike - Flame Burst - Egg
  (309, 30900, 481, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electrike - Electro Ball - Egg
  (309, 30900, 486, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Electrike - Eerie Impulse - Egg
  (309, 30900, 598, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Thunder Wave - Level 1
  (310, 31000, 86, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Howl - Level 1
  (310, 31000, 336, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Fire Fang - Level 1
  (310, 31000, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Manectric - Electric Terrain - Level 1
  (310, 31000, 604, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Manectric - Thunder Wave - Level 4
  (310, 31000, 86, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Manectric - Leer - Level 9
  (310, 31000, 43, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Manectric - Howl - Level 12
  (310, 31000, 336, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Manectric - Quick Attack - Level 17
  (310, 31000, 98, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Manectric - Spark - Level 20
  (310, 31000, 209, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Manectric - Odor Sleuth - Level 25
  (310, 31000, 316, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Manectric - Bite - Level 30
  (310, 31000, 44, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Manectric - Thunder Fang - Level 37
  (310, 31000, 422, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Manectric - Roar - Level 42
  (310, 31000, 46, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Manectric - Discharge - Level 49
  (310, 31000, 435, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Manectric - Charge - Level 54
  (310, 31000, 268, 13, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Manectric - Wild Charge - Level 61
  (310, 31000, 528, 13, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Manectric - Thunder - Level 66
  (310, 31000, 87, 13, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Manectric - Electric Terrain - Level 70
  (310, 31000, 604, 13, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Manectric - Roar - TM05
  (310, 31000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Manectric - Toxic - TM06
  (310, 31000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Manectric - Hidden Power - TM10
  (310, 31000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Manectric - Hyper Beam - TM15
  (310, 31000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Manectric - Light Screen - TM16
  (310, 31000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Manectric - Protect - TM17
  (310, 31000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Manectric - Rain Dance - TM18
  (310, 31000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Manectric - Frustration - TM21
  (310, 31000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Manectric - Thunderbolt - TM24
  (310, 31000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Manectric - Thunder - TM25
  (310, 31000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Manectric - Return - TM27
  (310, 31000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Manectric - Double Team - TM32
  (310, 31000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Manectric - Flamethrower - TM35
  (310, 31000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Manectric - Facade - TM42
  (310, 31000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Manectric - Rest - TM44
  (310, 31000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Manectric - Attract - TM45
  (310, 31000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Manectric - Thief - TM46
  (310, 31000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Manectric - Round - TM48
  (310, 31000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Manectric - Overheat - TM50
  (310, 31000, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Manectric - Charge Beam - TM57
  (310, 31000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 40),
  -- Manectric - Giga Impact - TM68
  (310, 31000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Manectric - Flash - TM70
  (310, 31000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Manectric - Volt Switch - TM72
  (310, 31000, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 43),
  -- Manectric - Thunder Wave - TM73
  (310, 31000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Manectric - Swagger - TM87
  (310, 31000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Manectric - Sleep Talk - TM88
  (310, 31000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Manectric - Substitute - TM90
  (310, 31000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Manectric - Wild Charge - TM93
  (310, 31000, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 48),
  -- Manectric - Snarl - TM95
  (310, 31000, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 49),
  -- Manectric - Confide - TM100
  (310, 31000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Manectric - Strength - HM04
  (310, 31000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Plusle - Growl - Level 1
  (311, 31100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Plusle - Nasty Plot - Level 1
  (311, 31100, 417, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Plusle - Entrainment - Level 1
  (311, 31100, 494, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Plusle - Play Nice - Level 1
  (311, 31100, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Plusle - Nuzzle - Level 1
  (311, 31100, 609, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Plusle - Thunder Wave - Level 3
  (311, 31100, 86, 13, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Plusle - Quick Attack - Level 7
  (311, 31100, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Plusle - Helping Hand - Level 10
  (311, 31100, 270, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Plusle - Spark - Level 15
  (311, 31100, 209, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Plusle - Encore - Level 17
  (311, 31100, 227, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Plusle - Play Nice - Level 21
  (311, 31100, 589, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Plusle - Copycat - Level 24
  (311, 31100, 383, 13, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Plusle - Electro Ball - Level 29
  (311, 31100, 486, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Plusle - Swift - Level 31
  (311, 31100, 129, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Plusle - Fake Tears - Level 35
  (311, 31100, 313, 13, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Plusle - Charge - Level 38
  (311, 31100, 268, 13, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Plusle - Thunder - Level 42
  (311, 31100, 87, 13, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Plusle - Baton Pass - Level 44
  (311, 31100, 226, 13, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Plusle - Agility - Level 48
  (311, 31100, 97, 13, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Plusle - Last Resort - Level 50
  (311, 31100, 387, 13, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Plusle - Nasty Plot - Level 56
  (311, 31100, 417, 13, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Plusle - Entrainment - Level 63
  (311, 31100, 494, 13, NULL, 1, 63, NULL, NULL, NULL, 22),
  -- Plusle - Toxic - TM06
  (311, 31100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Plusle - Hidden Power - TM10
  (311, 31100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Plusle - Light Screen - TM16
  (311, 31100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Plusle - Protect - TM17
  (311, 31100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Plusle - Rain Dance - TM18
  (311, 31100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Plusle - Frustration - TM21
  (311, 31100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Plusle - Thunderbolt - TM24
  (311, 31100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Plusle - Thunder - TM25
  (311, 31100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Plusle - Return - TM27
  (311, 31100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Plusle - Double Team - TM32
  (311, 31100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Plusle - Facade - TM42
  (311, 31100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Plusle - Rest - TM44
  (311, 31100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Plusle - Attract - TM45
  (311, 31100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Plusle - Round - TM48
  (311, 31100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Plusle - Echoed Voice - TM49
  (311, 31100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Plusle - Fling - TM56
  (311, 31100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Plusle - Charge Beam - TM57
  (311, 31100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Plusle - Flash - TM70
  (311, 31100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Plusle - Volt Switch - TM72
  (311, 31100, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 41),
  -- Plusle - Thunder Wave - TM73
  (311, 31100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 42),
  -- Plusle - Grass Knot - TM86
  (311, 31100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Plusle - Swagger - TM87
  (311, 31100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Plusle - Sleep Talk - TM88
  (311, 31100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Plusle - Substitute - TM90
  (311, 31100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Plusle - Wild Charge - TM93
  (311, 31100, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 47),
  -- Plusle - Confide - TM100
  (311, 31100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Plusle - Sing - Egg
  (311, 31100, 47, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Plusle - Sweet Kiss - Egg
  (311, 31100, 186, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Plusle - Wish - Egg
  (311, 31100, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Plusle - Lucky Chant - Egg
  (311, 31100, 381, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Plusle - Discharge - Egg
  (311, 31100, 435, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Minun - Growl - Level 1
  (312, 31200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minun - Nasty Plot - Level 1
  (312, 31200, 417, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Minun - Entrainment - Level 1
  (312, 31200, 494, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Minun - Play Nice - Level 1
  (312, 31200, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Minun - Nuzzle - Level 1
  (312, 31200, 609, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Minun - Thunder Wave - Level 3
  (312, 31200, 86, 13, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Minun - Quick Attack - Level 7
  (312, 31200, 98, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Minun - Helping Hand - Level 10
  (312, 31200, 270, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Minun - Spark - Level 15
  (312, 31200, 209, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Minun - Encore - Level 17
  (312, 31200, 227, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Minun - Charm - Level 21
  (312, 31200, 204, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Minun - Copycat - Level 24
  (312, 31200, 383, 13, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Minun - Electro Ball - Level 29
  (312, 31200, 486, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Minun - Swift - Level 31
  (312, 31200, 129, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Minun - Fake Tears - Level 35
  (312, 31200, 313, 13, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Minun - Charge - Level 38
  (312, 31200, 268, 13, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Minun - Thunder - Level 42
  (312, 31200, 87, 13, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Minun - Baton Pass - Level 44
  (312, 31200, 226, 13, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Minun - Agility - Level 48
  (312, 31200, 97, 13, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Minun - Trump Card - Level 51
  (312, 31200, 376, 13, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Minun - Nasty Plot - Level 56
  (312, 31200, 417, 13, NULL, 1, 56, NULL, NULL, NULL, 21),
  -- Minun - Entrainment - Level 63
  (312, 31200, 494, 13, NULL, 1, 63, NULL, NULL, NULL, 22),
  -- Minun - Toxic - TM06
  (312, 31200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Minun - Hidden Power - TM10
  (312, 31200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Minun - Light Screen - TM16
  (312, 31200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Minun - Protect - TM17
  (312, 31200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Minun - Rain Dance - TM18
  (312, 31200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Minun - Frustration - TM21
  (312, 31200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Minun - Thunderbolt - TM24
  (312, 31200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Minun - Thunder - TM25
  (312, 31200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Minun - Return - TM27
  (312, 31200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Minun - Double Team - TM32
  (312, 31200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Minun - Facade - TM42
  (312, 31200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Minun - Rest - TM44
  (312, 31200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Minun - Attract - TM45
  (312, 31200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Minun - Round - TM48
  (312, 31200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Minun - Echoed Voice - TM49
  (312, 31200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Minun - Fling - TM56
  (312, 31200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Minun - Charge Beam - TM57
  (312, 31200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Minun - Flash - TM70
  (312, 31200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Minun - Volt Switch - TM72
  (312, 31200, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 41),
  -- Minun - Thunder Wave - TM73
  (312, 31200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 42),
  -- Minun - Grass Knot - TM86
  (312, 31200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Minun - Swagger - TM87
  (312, 31200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Minun - Sleep Talk - TM88
  (312, 31200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Minun - Substitute - TM90
  (312, 31200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Minun - Wild Charge - TM93
  (312, 31200, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 47),
  -- Minun - Confide - TM100
  (312, 31200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Minun - Sing - Egg
  (312, 31200, 47, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minun - Sweet Kiss - Egg
  (312, 31200, 186, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minun - Wish - Egg
  (312, 31200, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minun - Lucky Chant - Egg
  (312, 31200, 381, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Minun - Discharge - Egg
  (312, 31200, 435, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Volbeat - Tackle - Level 1
  (313, 31300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volbeat - Flash - Level 1
  (313, 31300, 148, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volbeat - Double Team - Level 5
  (313, 31300, 104, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Volbeat - Confuse Ray - Level 9
  (313, 31300, 109, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Volbeat - Moonlight - Level 13
  (313, 31300, 236, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Volbeat - Quick Attack - Level 17
  (313, 31300, 98, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Volbeat - Tail Glow - Level 21
  (313, 31300, 294, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Volbeat - Signal Beam - Level 25
  (313, 31300, 324, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Volbeat - Protect - Level 29
  (313, 31300, 182, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Volbeat - Helping Hand - Level 33
  (313, 31300, 270, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Volbeat - Zen Headbutt - Level 37
  (313, 31300, 428, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Volbeat - Bug Buzz - Level 41
  (313, 31300, 405, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Volbeat - Double-Edge - Level 45
  (313, 31300, 38, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Volbeat - Toxic - TM06
  (313, 31300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Volbeat - Hidden Power - TM10
  (313, 31300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Volbeat - Sunny Day - TM11
  (313, 31300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Volbeat - Light Screen - TM16
  (313, 31300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 17),
  -- Volbeat - Protect - TM17
  (313, 31300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Volbeat - Rain Dance - TM18
  (313, 31300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Volbeat - Roost - TM19
  (313, 31300, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 20),
  -- Volbeat - Frustration - TM21
  (313, 31300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Volbeat - Solar Beam - TM22
  (313, 31300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Volbeat - Thunderbolt - TM24
  (313, 31300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Volbeat - Thunder - TM25
  (313, 31300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 24),
  -- Volbeat - Return - TM27
  (313, 31300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Volbeat - Shadow Ball - TM30
  (313, 31300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Volbeat - Brick Break - TM31
  (313, 31300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Volbeat - Double Team - TM32
  (313, 31300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Volbeat - Aerial Ace - TM40
  (313, 31300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Volbeat - Facade - TM42
  (313, 31300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Volbeat - Rest - TM44
  (313, 31300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Volbeat - Attract - TM45
  (313, 31300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Volbeat - Thief - TM46
  (313, 31300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 33),
  -- Volbeat - Round - TM48
  (313, 31300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Volbeat - Fling - TM56
  (313, 31300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 35),
  -- Volbeat - Charge Beam - TM57
  (313, 31300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 36),
  -- Volbeat - Acrobatics - TM62
  (313, 31300, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 37),
  -- Volbeat - Flash - TM70
  (313, 31300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Volbeat - Thunder Wave - TM73
  (313, 31300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 39),
  -- Volbeat - Struggle Bug - TM76
  (313, 31300, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 40),
  -- Volbeat - Psych Up - TM77
  (313, 31300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Volbeat - Swagger - TM87
  (313, 31300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Volbeat - Sleep Talk - TM88
  (313, 31300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Volbeat - U-turn - TM89
  (313, 31300, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 44),
  -- Volbeat - Substitute - TM90
  (313, 31300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Volbeat - Power-Up Punch - TM98
  (313, 31300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 46),
  -- Volbeat - Dazzling Gleam - TM99
  (313, 31300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 47),
  -- Volbeat - Confide - TM100
  (313, 31300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Volbeat - Seismic Toss - Egg
  (313, 31300, 69, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Volbeat - Dizzy Punch - Egg
  (313, 31300, 146, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Volbeat - Baton Pass - Egg
  (313, 31300, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Volbeat - Encore - Egg
  (313, 31300, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Volbeat - Trick - Egg
  (313, 31300, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Volbeat - Silver Wind - Egg
  (313, 31300, 318, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Volbeat - Bug Buzz - Egg
  (313, 31300, 405, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Illumise - Play Nice - Level 1
  (314, 31400, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Illumise - Moonlight - Level 13
  (314, 31400, 236, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 17
  (314, 31400, 98, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Illumise - Wish - Level 21
  (314, 31400, 273, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Illumise - Encore - Level 25
  (314, 31400, 227, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Illumise - Helping Hand - Level 33
  (314, 31400, 270, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Illumise - Zen Headbutt - Level 37
  (314, 31400, 428, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Illumise - Bug Buzz - Level 41
  (314, 31400, 405, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Illumise - Covet - Level 45
  (314, 31400, 343, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Illumise - Toxic - TM06
  (314, 31400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Illumise - Hidden Power - TM10
  (314, 31400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Illumise - Sunny Day - TM11
  (314, 31400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Illumise - Light Screen - TM16
  (314, 31400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 16),
  -- Illumise - Protect - TM17
  (314, 31400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Illumise - Rain Dance - TM18
  (314, 31400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Illumise - Roost - TM19
  (314, 31400, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 19),
  -- Illumise - Frustration - TM21
  (314, 31400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Illumise - Solar Beam - TM22
  (314, 31400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Illumise - Thunderbolt - TM24
  (314, 31400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 22),
  -- Illumise - Thunder - TM25
  (314, 31400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 23),
  -- Illumise - Return - TM27
  (314, 31400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Illumise - Shadow Ball - TM30
  (314, 31400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Illumise - Brick Break - TM31
  (314, 31400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Illumise - Double Team - TM32
  (314, 31400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Illumise - Aerial Ace - TM40
  (314, 31400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Illumise - Facade - TM42
  (314, 31400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Illumise - Rest - TM44
  (314, 31400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Illumise - Attract - TM45
  (314, 31400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Illumise - Thief - TM46
  (314, 31400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Illumise - Round - TM48
  (314, 31400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Illumise - Fling - TM56
  (314, 31400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Illumise - Charge Beam - TM57
  (314, 31400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 35),
  -- Illumise - Acrobatics - TM62
  (314, 31400, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 36),
  -- Illumise - Flash - TM70
  (314, 31400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 37),
  -- Illumise - Thunder Wave - TM73
  (314, 31400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Illumise - Struggle Bug - TM76
  (314, 31400, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 39),
  -- Illumise - Psych Up - TM77
  (314, 31400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 40),
  -- Illumise - Swagger - TM87
  (314, 31400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Illumise - Sleep Talk - TM88
  (314, 31400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Illumise - U-turn - TM89
  (314, 31400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 43),
  -- Illumise - Substitute - TM90
  (314, 31400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Illumise - Power-Up Punch - TM98
  (314, 31400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 45),
  -- Illumise - Dazzling Gleam - TM99
  (314, 31400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 46),
  -- Illumise - Confide - TM100
  (314, 31400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Illumise - Growth - Egg
  (314, 31400, 74, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Illumise - Confuse Ray - Egg
  (314, 31400, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Illumise - Baton Pass - Egg
  (314, 31400, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Illumise - Encore - Egg
  (314, 31400, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Illumise - Fake Tears - Egg
  (314, 31400, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Illumise - Silver Wind - Egg
  (314, 31400, 318, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Illumise - Bug Buzz - Egg
  (314, 31400, 405, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Illumise - Captivate - Egg
  (314, 31400, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Growth - Level 4
  (315, 31500, 74, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Roselia - Poison Sting - Level 7
  (315, 31500, 40, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 10
  (315, 31500, 78, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Roselia - Mega Drain - Level 13
  (315, 31500, 72, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Roselia - Leech Seed - Level 16
  (315, 31500, 73, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Roselia - Magical Leaf - Level 19
  (315, 31500, 345, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Roselia - Grass Whistle - Level 22
  (315, 31500, 320, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Roselia - Giga Drain - Level 25
  (315, 31500, 202, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Roselia - Toxic Spikes - Level 28
  (315, 31500, 390, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Roselia - Sweet Scent - Level 31
  (315, 31500, 230, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Roselia - Ingrain - Level 34
  (315, 31500, 275, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Roselia - Petal Dance - Level 37
  (315, 31500, 80, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Roselia - Toxic - Level 40
  (315, 31500, 92, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Roselia - Aromatherapy - Level 43
  (315, 31500, 312, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Roselia - Synthesis - Level 46
  (315, 31500, 235, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Roselia - Petal Blizzard - Level 50
  (315, 31500, 572, 13, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Roselia - Toxic - TM06
  (315, 31500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Roselia - Venoshock - TM09
  (315, 31500, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 19),
  -- Roselia - Hidden Power - TM10
  (315, 31500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Roselia - Sunny Day - TM11
  (315, 31500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Roselia - Protect - TM17
  (315, 31500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Roselia - Rain Dance - TM18
  (315, 31500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Roselia - Frustration - TM21
  (315, 31500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Roselia - Solar Beam - TM22
  (315, 31500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Roselia - Return - TM27
  (315, 31500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Roselia - Shadow Ball - TM30
  (315, 31500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Roselia - Double Team - TM32
  (315, 31500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Roselia - Sludge Bomb - TM36
  (315, 31500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 29),
  -- Roselia - Facade - TM42
  (315, 31500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Roselia - Rest - TM44
  (315, 31500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Roselia - Attract - TM45
  (315, 31500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Roselia - Round - TM48
  (315, 31500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Roselia - Energy Ball - TM53
  (315, 31500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 34),
  -- Roselia - Flash - TM70
  (315, 31500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 35),
  -- Roselia - Swords Dance - TM75
  (315, 31500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 36),
  -- Roselia - Psych Up - TM77
  (315, 31500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 37),
  -- Roselia - Poison Jab - TM84
  (315, 31500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 38),
  -- Roselia - Grass Knot - TM86
  (315, 31500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Roselia - Swagger - TM87
  (315, 31500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Roselia - Sleep Talk - TM88
  (315, 31500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Roselia - Substitute - TM90
  (315, 31500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Roselia - Nature Power - TM96
  (315, 31500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 43),
  -- Roselia - Dazzling Gleam - TM99
  (315, 31500, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 44),
  -- Roselia - Confide - TM100
  (315, 31500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Roselia - Cut - HM01
  (315, 31500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Roselia - Pin Missile - Egg
  (315, 31500, 42, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roselia - Razor Leaf - Egg
  (315, 31500, 75, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roselia - Sleep Powder - Egg
  (315, 31500, 79, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Roselia - Mind Reader - Egg
  (315, 31500, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Roselia - Cotton Spore - Egg
  (315, 31500, 178, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Roselia - Spikes - Egg
  (315, 31500, 191, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roselia - Giga Drain - Egg
  (315, 31500, 202, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roselia - Synthesis - Egg
  (315, 31500, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Grass Whistle - Egg
  (315, 31500, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Roselia - Extrasensory - Egg
  (315, 31500, 326, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Roselia - Bullet Seed - Egg
  (315, 31500, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Roselia - Natural Gift - Egg
  (315, 31500, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Roselia - Seed Bomb - Egg
  (315, 31500, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Roselia - Leaf Storm - Egg
  (315, 31500, 437, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gulpin - Pound - Level 1
  (316, 31600, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 6
  (316, 31600, 281, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 9
  (316, 31600, 139, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 14
  (316, 31600, 124, 13, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 17
  (316, 31600, 133, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Gulpin - Encore - Level 23
  (316, 31600, 227, 13, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Gulpin - Toxic - Level 28
  (316, 31600, 92, 13, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gulpin - Acid Spray - Level 34
  (316, 31600, 491, 13, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gulpin - Stockpile - Level 39
  (316, 31600, 254, 13, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Gulpin - Spit Up - Level 39
  (316, 31600, 255, 13, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Gulpin - Swallow - Level 39
  (316, 31600, 256, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Gulpin - Belch - Level 40
  (316, 31600, 562, 13, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gulpin - Sludge Bomb - Level 44
  (316, 31600, 188, 13, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gulpin - Gastro Acid - Level 49
  (316, 31600, 380, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Gulpin - Wring Out - Level 54
  (316, 31600, 378, 13, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Gulpin - Gunk Shot - Level 59
  (316, 31600, 441, 13, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Gulpin - Toxic - TM06
  (316, 31600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Gulpin - Venoshock - TM09
  (316, 31600, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 18),
  -- Gulpin - Hidden Power - TM10
  (316, 31600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Gulpin - Sunny Day - TM11
  (316, 31600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Gulpin - Ice Beam - TM13
  (316, 31600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Gulpin - Protect - TM17
  (316, 31600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Gulpin - Rain Dance - TM18
  (316, 31600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Gulpin - Frustration - TM21
  (316, 31600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Gulpin - Solar Beam - TM22
  (316, 31600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Gulpin - Return - TM27
  (316, 31600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Gulpin - Shadow Ball - TM30
  (316, 31600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Gulpin - Double Team - TM32
  (316, 31600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Gulpin - Sludge Wave - TM34
  (316, 31600, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 29),
  -- Gulpin - Sludge Bomb - TM36
  (316, 31600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 30),
  -- Gulpin - Facade - TM42
  (316, 31600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Gulpin - Rest - TM44
  (316, 31600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Gulpin - Attract - TM45
  (316, 31600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Gulpin - Round - TM48
  (316, 31600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Gulpin - Explosion - TM64
  (316, 31600, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 35),
  -- Gulpin - Infestation - TM83
  (316, 31600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 36),
  -- Gulpin - Dream Eater - TM85
  (316, 31600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 37),
  -- Gulpin - Swagger - TM87
  (316, 31600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Gulpin - Sleep Talk - TM88
  (316, 31600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Gulpin - Substitute - TM90
  (316, 31600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Gulpin - Rock Smash - TM94
  (316, 31600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Gulpin - Power-Up Punch - TM98
  (316, 31600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 42),
  -- Gulpin - Confide - TM100
  (316, 31600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Gulpin - Strength - HM04
  (316, 31600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 44),
  -- Gulpin - Smog - Egg
  (316, 31600, 123, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gulpin - Acid Armor - Egg
  (316, 31600, 151, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gulpin - Curse - Egg
  (316, 31600, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gulpin - Mud-Slap - Egg
  (316, 31600, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gulpin - Destiny Bond - Egg
  (316, 31600, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gulpin - Pain Split - Egg
  (316, 31600, 220, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gulpin - Gunk Shot - Egg
  (316, 31600, 441, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gulpin - Venom Drench - Egg
  (316, 31600, 599, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swalot - Pound - Level 1
  (317, 31700, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Sludge - Level 1
  (317, 31700, 124, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Poison Gas - Level 1
  (317, 31700, 139, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swalot - Yawn - Level 1
  (317, 31700, 281, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swalot - Wring Out - Level 1
  (317, 31700, 378, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swalot - Gunk Shot - Level 1
  (317, 31700, 441, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Swalot - Yawn - Level 6
  (317, 31700, 281, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Swalot - Poison Gas - Level 9
  (317, 31700, 139, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Swalot - Sludge - Level 14
  (317, 31700, 124, 13, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Swalot - Amnesia - Level 17
  (317, 31700, 133, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Swalot - Encore - Level 23
  (317, 31700, 227, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Swalot - Body Slam - Level 26
  (317, 31700, 34, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Swalot - Toxic - Level 30
  (317, 31700, 92, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Swalot - Acid Spray - Level 38
  (317, 31700, 491, 13, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Swalot - Stockpile - Level 45
  (317, 31700, 254, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Swalot - Spit Up - Level 45
  (317, 31700, 255, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Swalot - Swallow - Level 45
  (317, 31700, 256, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Swalot - Belch - Level 46
  (317, 31700, 562, 13, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Swalot - Sludge Bomb - Level 52
  (317, 31700, 188, 13, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Swalot - Gastro Acid - Level 59
  (317, 31700, 380, 13, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Swalot - Wring Out - Level 66
  (317, 31700, 378, 13, NULL, 1, 66, NULL, NULL, NULL, 21),
  -- Swalot - Gunk Shot - Level 73
  (317, 31700, 441, 13, NULL, 1, 73, NULL, NULL, NULL, 22),
  -- Swalot - Toxic - TM06
  (317, 31700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Swalot - Venoshock - TM09
  (317, 31700, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 24),
  -- Swalot - Hidden Power - TM10
  (317, 31700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Swalot - Sunny Day - TM11
  (317, 31700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Swalot - Ice Beam - TM13
  (317, 31700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 27),
  -- Swalot - Hyper Beam - TM15
  (317, 31700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Swalot - Protect - TM17
  (317, 31700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Swalot - Rain Dance - TM18
  (317, 31700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Swalot - Frustration - TM21
  (317, 31700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Swalot - Solar Beam - TM22
  (317, 31700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 32),
  -- Swalot - Earthquake - TM26
  (317, 31700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 33),
  -- Swalot - Return - TM27
  (317, 31700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Swalot - Shadow Ball - TM30
  (317, 31700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Swalot - Double Team - TM32
  (317, 31700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Swalot - Sludge Wave - TM34
  (317, 31700, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 37),
  -- Swalot - Sludge Bomb - TM36
  (317, 31700, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 38),
  -- Swalot - Facade - TM42
  (317, 31700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Swalot - Rest - TM44
  (317, 31700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Swalot - Attract - TM45
  (317, 31700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Swalot - Round - TM48
  (317, 31700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Swalot - Explosion - TM64
  (317, 31700, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 43),
  -- Swalot - Giga Impact - TM68
  (317, 31700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Swalot - Bulldoze - TM78
  (317, 31700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Swalot - Infestation - TM83
  (317, 31700, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 46),
  -- Swalot - Dream Eater - TM85
  (317, 31700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Swalot - Swagger - TM87
  (317, 31700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Swalot - Sleep Talk - TM88
  (317, 31700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Swalot - Substitute - TM90
  (317, 31700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Swalot - Rock Smash - TM94
  (317, 31700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Swalot - Power-Up Punch - TM98
  (317, 31700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Swalot - Confide - TM100
  (317, 31700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Swalot - Strength - HM04
  (317, 31700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Bite - Level 1
  (318, 31800, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Rage - Level 6
  (318, 31800, 99, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carvanha - Scary Face - Level 11
  (318, 31800, 184, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Carvanha - Ice Fang - Level 16
  (318, 31800, 423, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Carvanha - Screech - Level 18
  (318, 31800, 103, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Carvanha - Swagger - Level 21
  (318, 31800, 207, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Carvanha - Assurance - Level 26
  (318, 31800, 372, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Carvanha - Crunch - Level 28
  (318, 31800, 242, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Carvanha - Aqua Jet - Level 31
  (318, 31800, 453, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Carvanha - Agility - Level 36
  (318, 31800, 97, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Carvanha - Take Down - Level 38
  (318, 31800, 36, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Carvanha - Toxic - TM06
  (318, 31800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Carvanha - Hail - TM07
  (318, 31800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 15),
  -- Carvanha - Hidden Power - TM10
  (318, 31800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Carvanha - Taunt - TM12
  (318, 31800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 17),
  -- Carvanha - Ice Beam - TM13
  (318, 31800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Carvanha - Blizzard - TM14
  (318, 31800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Carvanha - Protect - TM17
  (318, 31800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Carvanha - Rain Dance - TM18
  (318, 31800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Carvanha - Frustration - TM21
  (318, 31800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Carvanha - Return - TM27
  (318, 31800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Carvanha - Double Team - TM32
  (318, 31800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Carvanha - Torment - TM41
  (318, 31800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 25),
  -- Carvanha - Facade - TM42
  (318, 31800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Carvanha - Rest - TM44
  (318, 31800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Carvanha - Attract - TM45
  (318, 31800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Carvanha - Thief - TM46
  (318, 31800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 29),
  -- Carvanha - Round - TM48
  (318, 31800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Carvanha - Scald - TM55
  (318, 31800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 31),
  -- Carvanha - Payback - TM66
  (318, 31800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 32),
  -- Carvanha - Retaliate - TM67
  (318, 31800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 33),
  -- Carvanha - Swagger - TM87
  (318, 31800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Carvanha - Sleep Talk - TM88
  (318, 31800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Carvanha - Substitute - TM90
  (318, 31800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Carvanha - Snarl - TM95
  (318, 31800, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 37),
  -- Carvanha - Dark Pulse - TM97
  (318, 31800, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 38),
  -- Carvanha - Confide - TM100
  (318, 31800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Carvanha - Surf - HM03
  (318, 31800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Carvanha - Waterfall - HM05
  (318, 31800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Carvanha - Thrash - Egg
  (318, 31800, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carvanha - Double-Edge - Egg
  (318, 31800, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carvanha - Hydro Pump - Egg
  (318, 31800, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carvanha - Swift - Egg
  (318, 31800, 129, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carvanha - Destiny Bond - Egg
  (318, 31800, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carvanha - Ancient Power - Egg
  (318, 31800, 246, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carvanha - Brine - Egg
  (318, 31800, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Bite - Level 1
  (319, 31900, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Rage - Level 1
  (319, 31900, 99, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Focus Energy - Level 1
  (319, 31900, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sharpedo - Feint - Level 1
  (319, 31900, 364, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sharpedo - Night Slash - Level 1
  (319, 31900, 400, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sharpedo - Rage - Level 6
  (319, 31900, 99, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Sharpedo - Focus Energy - Level 8
  (319, 31900, 116, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Sharpedo - Scary Face - Level 11
  (319, 31900, 184, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Sharpedo - Ice Fang - Level 16
  (319, 31900, 423, 13, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Sharpedo - Screech - Level 18
  (319, 31900, 103, 13, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Sharpedo - Swagger - Level 21
  (319, 31900, 207, 13, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Sharpedo - Assurance - Level 26
  (319, 31900, 372, 13, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Sharpedo - Crunch - Level 28
  (319, 31900, 242, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Sharpedo - Slash - Level 30
  (319, 31900, 163, 13, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Sharpedo - Aqua Jet - Level 34
  (319, 31900, 453, 13, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Sharpedo - Taunt - Level 40
  (319, 31900, 269, 13, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Sharpedo - Agility - Level 45
  (319, 31900, 97, 13, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Sharpedo - Skull Bash - Level 50
  (319, 31900, 130, 13, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Sharpedo - Night Slash - Level 56
  (319, 31900, 400, 13, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Sharpedo - Roar - TM05
  (319, 31900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Sharpedo - Toxic - TM06
  (319, 31900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Sharpedo - Hail - TM07
  (319, 31900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 23),
  -- Sharpedo - Hidden Power - TM10
  (319, 31900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Sharpedo - Taunt - TM12
  (319, 31900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 25),
  -- Sharpedo - Ice Beam - TM13
  (319, 31900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Sharpedo - Blizzard - TM14
  (319, 31900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 27),
  -- Sharpedo - Hyper Beam - TM15
  (319, 31900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Sharpedo - Protect - TM17
  (319, 31900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Sharpedo - Rain Dance - TM18
  (319, 31900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Sharpedo - Frustration - TM21
  (319, 31900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Sharpedo - Earthquake - TM26
  (319, 31900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Sharpedo - Return - TM27
  (319, 31900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Sharpedo - Double Team - TM32
  (319, 31900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Sharpedo - Rock Tomb - TM39
  (319, 31900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 35),
  -- Sharpedo - Torment - TM41
  (319, 31900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Sharpedo - Facade - TM42
  (319, 31900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Sharpedo - Rest - TM44
  (319, 31900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Sharpedo - Attract - TM45
  (319, 31900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Sharpedo - Thief - TM46
  (319, 31900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Sharpedo - Round - TM48
  (319, 31900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Sharpedo - Scald - TM55
  (319, 31900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 42),
  -- Sharpedo - Payback - TM66
  (319, 31900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Sharpedo - Retaliate - TM67
  (319, 31900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 44),
  -- Sharpedo - Giga Impact - TM68
  (319, 31900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 45),
  -- Sharpedo - Bulldoze - TM78
  (319, 31900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 46),
  -- Sharpedo - Poison Jab - TM84
  (319, 31900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 47),
  -- Sharpedo - Swagger - TM87
  (319, 31900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Sharpedo - Sleep Talk - TM88
  (319, 31900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Sharpedo - Substitute - TM90
  (319, 31900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Sharpedo - Rock Smash - TM94
  (319, 31900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Sharpedo - Snarl - TM95
  (319, 31900, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 52),
  -- Sharpedo - Dark Pulse - TM97
  (319, 31900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 53),
  -- Sharpedo - Confide - TM100
  (319, 31900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Sharpedo - Surf - HM03
  (319, 31900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 55),
  -- Sharpedo - Strength - HM04
  (319, 31900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 56),
  -- Sharpedo - Waterfall - HM05
  (319, 31900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 57),
  -- Wailmer - Splash - Level 1
  (320, 32000, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 4
  (320, 32000, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Wailmer - Water Gun - Level 7
  (320, 32000, 55, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Wailmer - Rollout - Level 11
  (320, 32000, 205, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Wailmer - Whirlpool - Level 14
  (320, 32000, 250, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Wailmer - Astonish - Level 17
  (320, 32000, 310, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Wailmer - Water Pulse - Level 21
  (320, 32000, 352, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wailmer - Mist - Level 24
  (320, 32000, 54, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wailmer - Rest - Level 27
  (320, 32000, 156, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wailmer - Brine - Level 31
  (320, 32000, 362, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Wailmer - Water Spout - Level 34
  (320, 32000, 323, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Wailmer - Amnesia - Level 37
  (320, 32000, 133, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Wailmer - Dive - Level 41
  (320, 32000, 291, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Wailmer - Bounce - Level 44
  (320, 32000, 340, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Wailmer - Hydro Pump - Level 47
  (320, 32000, 56, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Wailmer - Heavy Slam - Level 50
  (320, 32000, 484, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Wailmer - Roar - TM05
  (320, 32000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Wailmer - Toxic - TM06
  (320, 32000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Wailmer - Hail - TM07
  (320, 32000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 19),
  -- Wailmer - Hidden Power - TM10
  (320, 32000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Wailmer - Ice Beam - TM13
  (320, 32000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Wailmer - Blizzard - TM14
  (320, 32000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Wailmer - Protect - TM17
  (320, 32000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Wailmer - Rain Dance - TM18
  (320, 32000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Wailmer - Frustration - TM21
  (320, 32000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Wailmer - Earthquake - TM26
  (320, 32000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Wailmer - Return - TM27
  (320, 32000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Wailmer - Double Team - TM32
  (320, 32000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Wailmer - Rock Tomb - TM39
  (320, 32000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Wailmer - Facade - TM42
  (320, 32000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Wailmer - Rest - TM44
  (320, 32000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Wailmer - Attract - TM45
  (320, 32000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Wailmer - Round - TM48
  (320, 32000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Wailmer - Echoed Voice - TM49
  (320, 32000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Wailmer - Scald - TM55
  (320, 32000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 35),
  -- Wailmer - Bulldoze - TM78
  (320, 32000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 36),
  -- Wailmer - Swagger - TM87
  (320, 32000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Wailmer - Sleep Talk - TM88
  (320, 32000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Wailmer - Substitute - TM90
  (320, 32000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Wailmer - Rock Smash - TM94
  (320, 32000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Wailmer - Confide - TM100
  (320, 32000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Wailmer - Surf - HM03
  (320, 32000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 42),
  -- Wailmer - Strength - HM04
  (320, 32000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 43),
  -- Wailmer - Waterfall - HM05
  (320, 32000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 44),
  -- Wailmer - Body Slam - Egg
  (320, 32000, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wailmer - Thrash - Egg
  (320, 32000, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wailmer - Double-Edge - Egg
  (320, 32000, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wailmer - Fissure - Egg
  (320, 32000, 90, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wailmer - Defense Curl - Egg
  (320, 32000, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wailmer - Snore - Egg
  (320, 32000, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wailmer - Curse - Egg
  (320, 32000, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailmer - Sleep Talk - Egg
  (320, 32000, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailmer - Tickle - Egg
  (320, 32000, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailmer - Aqua Ring - Egg
  (320, 32000, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailmer - Zen Headbutt - Egg
  (320, 32000, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wailmer - Soak - Egg
  (320, 32000, 487, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wailmer - Clear Smog - Egg
  (320, 32000, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wailord - Growl - Level 1
  (321, 32100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailord - Water Gun - Level 1
  (321, 32100, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wailord - Splash - Level 1
  (321, 32100, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wailord - Rollout - Level 1
  (321, 32100, 205, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wailord - Growl - Level 4
  (321, 32100, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Wailord - Water Gun - Level 7
  (321, 32100, 55, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Wailord - Rollout - Level 11
  (321, 32100, 205, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Wailord - Whirlpool - Level 14
  (321, 32100, 250, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Wailord - Astonish - Level 17
  (321, 32100, 310, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Wailord - Water Pulse - Level 21
  (321, 32100, 352, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Wailord - Mist - Level 24
  (321, 32100, 54, 13, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Wailord - Rest - Level 27
  (321, 32100, 156, 13, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Wailord - Brine - Level 31
  (321, 32100, 362, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Wailord - Water Spout - Level 34
  (321, 32100, 323, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Wailord - Amnesia - Level 37
  (321, 32100, 133, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Wailord - Dive - Level 46
  (321, 32100, 291, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Wailord - Bounce - Level 54
  (321, 32100, 340, 13, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Wailord - Hydro Pump - Level 62
  (321, 32100, 56, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Wailord - Heavy Slam - Level 70
  (321, 32100, 484, 13, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Wailord - Roar - TM05
  (321, 32100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Wailord - Toxic - TM06
  (321, 32100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Wailord - Hail - TM07
  (321, 32100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 22),
  -- Wailord - Hidden Power - TM10
  (321, 32100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Wailord - Ice Beam - TM13
  (321, 32100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Wailord - Blizzard - TM14
  (321, 32100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Wailord - Hyper Beam - TM15
  (321, 32100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Wailord - Protect - TM17
  (321, 32100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Wailord - Rain Dance - TM18
  (321, 32100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Wailord - Frustration - TM21
  (321, 32100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Wailord - Earthquake - TM26
  (321, 32100, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Wailord - Return - TM27
  (321, 32100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Wailord - Double Team - TM32
  (321, 32100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Wailord - Rock Tomb - TM39
  (321, 32100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Wailord - Facade - TM42
  (321, 32100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Wailord - Rest - TM44
  (321, 32100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Wailord - Attract - TM45
  (321, 32100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Wailord - Round - TM48
  (321, 32100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Wailord - Echoed Voice - TM49
  (321, 32100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 38),
  -- Wailord - Scald - TM55
  (321, 32100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 39),
  -- Wailord - Giga Impact - TM68
  (321, 32100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Wailord - Bulldoze - TM78
  (321, 32100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 41),
  -- Wailord - Swagger - TM87
  (321, 32100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Wailord - Sleep Talk - TM88
  (321, 32100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Wailord - Substitute - TM90
  (321, 32100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Wailord - Rock Smash - TM94
  (321, 32100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Wailord - Confide - TM100
  (321, 32100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Wailord - Surf - HM03
  (321, 32100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Wailord - Strength - HM04
  (321, 32100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Wailord - Waterfall - HM05
  (321, 32100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 49),
  -- Numel - Tackle - Level 1
  (322, 32200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Magnitude - Level 8
  (322, 32200, 222, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Numel - Focus Energy - Level 12
  (322, 32200, 116, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Numel - Flame Burst - Level 15
  (322, 32200, 481, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 19
  (322, 32200, 133, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Numel - Lava Plume - Level 22
  (322, 32200, 436, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Numel - Earth Power - Level 26
  (322, 32200, 414, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Numel - Curse - Level 29
  (322, 32200, 174, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Numel - Take Down - Level 31
  (322, 32200, 36, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Numel - Yawn - Level 36
  (322, 32200, 281, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Numel - Earthquake - Level 40
  (322, 32200, 89, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Numel - Flamethrower - Level 43
  (322, 32200, 53, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Numel - Double-Edge - Level 47
  (322, 32200, 38, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Numel - Toxic - TM06
  (322, 32200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Numel - Hidden Power - TM10
  (322, 32200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Numel - Sunny Day - TM11
  (322, 32200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Numel - Protect - TM17
  (322, 32200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Numel - Frustration - TM21
  (322, 32200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Numel - Earthquake - TM26
  (322, 32200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 21),
  -- Numel - Return - TM27
  (322, 32200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Numel - Dig - TM28
  (322, 32200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Numel - Double Team - TM32
  (322, 32200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Numel - Flamethrower - TM35
  (322, 32200, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 25),
  -- Numel - Sandstorm - TM37
  (322, 32200, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 26),
  -- Numel - Fire Blast - TM38
  (322, 32200, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 27),
  -- Numel - Rock Tomb - TM39
  (322, 32200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Numel - Facade - TM42
  (322, 32200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Numel - Flame Charge - TM43
  (322, 32200, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 30),
  -- Numel - Rest - TM44
  (322, 32200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Numel - Attract - TM45
  (322, 32200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Numel - Round - TM48
  (322, 32200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Numel - Echoed Voice - TM49
  (322, 32200, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Numel - Overheat - TM50
  (322, 32200, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 35),
  -- Numel - Incinerate - TM59
  (322, 32200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 36),
  -- Numel - Will-O-Wisp - TM61
  (322, 32200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 37),
  -- Numel - Bulldoze - TM78
  (322, 32200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 38),
  -- Numel - Rock Slide - TM80
  (322, 32200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Numel - Swagger - TM87
  (322, 32200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Numel - Sleep Talk - TM88
  (322, 32200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Numel - Substitute - TM90
  (322, 32200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Numel - Rock Smash - TM94
  (322, 32200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Numel - Nature Power - TM96
  (322, 32200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 44),
  -- Numel - Confide - TM100
  (322, 32200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Numel - Strength - HM04
  (322, 32200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Numel - Stomp - Egg
  (322, 32200, 23, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Numel - Body Slam - Egg
  (322, 32200, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Numel - Growth - Egg
  (322, 32200, 74, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Numel - Defense Curl - Egg
  (322, 32200, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Numel - Scary Face - Egg
  (322, 32200, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Numel - Endure - Egg
  (322, 32200, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Numel - Rollout - Egg
  (322, 32200, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Numel - Ancient Power - Egg
  (322, 32200, 246, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Numel - Stockpile - Egg
  (322, 32200, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Numel - Spit Up - Egg
  (322, 32200, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Numel - Swallow - Egg
  (322, 32200, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Numel - Heat Wave - Egg
  (322, 32200, 257, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Numel - Yawn - Egg
  (322, 32200, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Numel - Howl - Egg
  (322, 32200, 336, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Numel - Mud Bomb - Egg
  (322, 32200, 426, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Numel - Iron Head - Egg
  (322, 32200, 442, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 1
  (323, 32300, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Camerupt - Fissure - Level 1
  (323, 32300, 90, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Camerupt - Magnitude - Level 1
  (323, 32300, 222, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Camerupt - Eruption - Level 1
  (323, 32300, 284, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Camerupt - Ember - Level 5
  (323, 32300, 52, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Camerupt - Magnitude - Level 8
  (323, 32300, 222, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Camerupt - Focus Energy - Level 12
  (323, 32300, 116, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Camerupt - Flame Burst - Level 15
  (323, 32300, 481, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Camerupt - Amnesia - Level 19
  (323, 32300, 133, 13, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Camerupt - Lava Plume - Level 22
  (323, 32300, 436, 13, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Camerupt - Earth Power - Level 26
  (323, 32300, 414, 13, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Camerupt - Curse - Level 29
  (323, 32300, 174, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Camerupt - Take Down - Level 31
  (323, 32300, 36, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Camerupt - Rock Slide - Level 33
  (323, 32300, 157, 13, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Camerupt - Yawn - Level 39
  (323, 32300, 281, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Camerupt - Earthquake - Level 46
  (323, 32300, 89, 13, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Camerupt - Eruption - Level 52
  (323, 32300, 284, 13, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Camerupt - Fissure - Level 59
  (323, 32300, 90, 13, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Camerupt - Roar - TM05
  (323, 32300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Camerupt - Toxic - TM06
  (323, 32300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Camerupt - Hidden Power - TM10
  (323, 32300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Camerupt - Sunny Day - TM11
  (323, 32300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Camerupt - Hyper Beam - TM15
  (323, 32300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Camerupt - Protect - TM17
  (323, 32300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Camerupt - Frustration - TM21
  (323, 32300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Camerupt - Solar Beam - TM22
  (323, 32300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Camerupt - Earthquake - TM26
  (323, 32300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Camerupt - Return - TM27
  (323, 32300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Camerupt - Dig - TM28
  (323, 32300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Camerupt - Double Team - TM32
  (323, 32300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Camerupt - Flamethrower - TM35
  (323, 32300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Camerupt - Sandstorm - TM37
  (323, 32300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 34),
  -- Camerupt - Fire Blast - TM38
  (323, 32300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 35),
  -- Camerupt - Rock Tomb - TM39
  (323, 32300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Camerupt - Facade - TM42
  (323, 32300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Camerupt - Flame Charge - TM43
  (323, 32300, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 38),
  -- Camerupt - Rest - TM44
  (323, 32300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Camerupt - Attract - TM45
  (323, 32300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Camerupt - Round - TM48
  (323, 32300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Camerupt - Echoed Voice - TM49
  (323, 32300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Camerupt - Overheat - TM50
  (323, 32300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 43),
  -- Camerupt - Incinerate - TM59
  (323, 32300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Camerupt - Will-O-Wisp - TM61
  (323, 32300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 45),
  -- Camerupt - Explosion - TM64
  (323, 32300, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 46),
  -- Camerupt - Giga Impact - TM68
  (323, 32300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Camerupt - Rock Polish - TM69
  (323, 32300, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 48),
  -- Camerupt - Stone Edge - TM71
  (323, 32300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 49),
  -- Camerupt - Bulldoze - TM78
  (323, 32300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Camerupt - Rock Slide - TM80
  (323, 32300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Camerupt - Swagger - TM87
  (323, 32300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Camerupt - Sleep Talk - TM88
  (323, 32300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Camerupt - Substitute - TM90
  (323, 32300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Camerupt - Flash Cannon - TM91
  (323, 32300, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 55),
  -- Camerupt - Rock Smash - TM94
  (323, 32300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 56),
  -- Camerupt - Nature Power - TM96
  (323, 32300, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 57),
  -- Camerupt - Confide - TM100
  (323, 32300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Camerupt - Strength - HM04
  (323, 32300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Flail - Level 1
  (324, 32400, 175, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torkoal - Protect - Level 1
  (324, 32400, 182, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torkoal - Heat Wave - Level 1
  (324, 32400, 257, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torkoal - Shell Smash - Level 1
  (324, 32400, 504, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Torkoal - Inferno - Level 1
  (324, 32400, 517, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Torkoal - Smog - Level 4
  (324, 32400, 123, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Torkoal - Withdraw - Level 7
  (324, 32400, 110, 13, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Torkoal - Curse - Level 12
  (324, 32400, 174, 13, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Torkoal - Fire Spin - Level 17
  (324, 32400, 83, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Torkoal - Smokescreen - Level 20
  (324, 32400, 108, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Torkoal - Flame Wheel - Level 23
  (324, 32400, 172, 13, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Torkoal - Rapid Spin - Level 25
  (324, 32400, 229, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Torkoal - Flamethrower - Level 28
  (324, 32400, 53, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Torkoal - Body Slam - Level 33
  (324, 32400, 34, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Torkoal - Protect - Level 36
  (324, 32400, 182, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Torkoal - Lava Plume - Level 39
  (324, 32400, 436, 13, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Torkoal - Iron Defense - Level 44
  (324, 32400, 334, 13, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Torkoal - Amnesia - Level 49
  (324, 32400, 133, 13, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Torkoal - Flail - Level 52
  (324, 32400, 175, 13, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Torkoal - Heat Wave - Level 55
  (324, 32400, 257, 13, NULL, 1, 55, NULL, NULL, NULL, 21),
  -- Torkoal - Inferno - Level 60
  (324, 32400, 517, 13, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Torkoal - Shell Smash - Level 65
  (324, 32400, 504, 13, NULL, 1, 65, NULL, NULL, NULL, 23),
  -- Torkoal - Toxic - TM06
  (324, 32400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 24),
  -- Torkoal - Hidden Power - TM10
  (324, 32400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 25),
  -- Torkoal - Sunny Day - TM11
  (324, 32400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 26),
  -- Torkoal - Hyper Beam - TM15
  (324, 32400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Torkoal - Protect - TM17
  (324, 32400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Torkoal - Frustration - TM21
  (324, 32400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Torkoal - Solar Beam - TM22
  (324, 32400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Torkoal - Earthquake - TM26
  (324, 32400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Torkoal - Return - TM27
  (324, 32400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Torkoal - Double Team - TM32
  (324, 32400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Torkoal - Flamethrower - TM35
  (324, 32400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Torkoal - Sludge Bomb - TM36
  (324, 32400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 35),
  -- Torkoal - Fire Blast - TM38
  (324, 32400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Torkoal - Rock Tomb - TM39
  (324, 32400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Torkoal - Facade - TM42
  (324, 32400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Torkoal - Flame Charge - TM43
  (324, 32400, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 39),
  -- Torkoal - Rest - TM44
  (324, 32400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Torkoal - Attract - TM45
  (324, 32400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Torkoal - Round - TM48
  (324, 32400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Torkoal - Overheat - TM50
  (324, 32400, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 43),
  -- Torkoal - Incinerate - TM59
  (324, 32400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Torkoal - Will-O-Wisp - TM61
  (324, 32400, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 45),
  -- Torkoal - Explosion - TM64
  (324, 32400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 46),
  -- Torkoal - Giga Impact - TM68
  (324, 32400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Torkoal - Stone Edge - TM71
  (324, 32400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 48),
  -- Torkoal - Gyro Ball - TM74
  (324, 32400, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 49),
  -- Torkoal - Bulldoze - TM78
  (324, 32400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Torkoal - Rock Slide - TM80
  (324, 32400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Torkoal - Swagger - TM87
  (324, 32400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Torkoal - Sleep Talk - TM88
  (324, 32400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Torkoal - Substitute - TM90
  (324, 32400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Torkoal - Rock Smash - TM94
  (324, 32400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Torkoal - Nature Power - TM96
  (324, 32400, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 56),
  -- Torkoal - Confide - TM100
  (324, 32400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Torkoal - Strength - HM04
  (324, 32400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Torkoal - Fissure - Egg
  (324, 32400, 90, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Torkoal - Skull Bash - Egg
  (324, 32400, 130, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Torkoal - Endure - Egg
  (324, 32400, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Torkoal - Sleep Talk - Egg
  (324, 32400, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Torkoal - Superpower - Egg
  (324, 32400, 276, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Torkoal - Yawn - Egg
  (324, 32400, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Torkoal - Eruption - Egg
  (324, 32400, 284, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Torkoal - Flame Burst - Egg
  (324, 32400, 481, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Torkoal - Clear Smog - Egg
  (324, 32400, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Spoink - Splash - Level 1
  (325, 32500, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Psywave - Level 7
  (325, 32500, 149, 13, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Odor Sleuth - Level 10
  (325, 32500, 316, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 13, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 15
  (325, 32500, 244, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 18
  (325, 32500, 109, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Spoink - Magic Coat - Level 21
  (325, 32500, 277, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spoink - Zen Headbutt - Level 26
  (325, 32500, 428, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Spoink - Rest - Level 29
  (325, 32500, 156, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spoink - Snore - Level 29
  (325, 32500, 173, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spoink - Power Gem - Level 33
  (325, 32500, 408, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spoink - Psyshock - Level 38
  (325, 32500, 473, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Spoink - Payback - Level 40
  (325, 32500, 371, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spoink - Psychic - Level 44
  (325, 32500, 94, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Spoink - Bounce - Level 50
  (325, 32500, 340, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Spoink - Psyshock - TM03
  (325, 32500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 16),
  -- Spoink - Calm Mind - TM04
  (325, 32500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 17),
  -- Spoink - Toxic - TM06
  (325, 32500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Spoink - Hidden Power - TM10
  (325, 32500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Spoink - Sunny Day - TM11
  (325, 32500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Spoink - Taunt - TM12
  (325, 32500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Spoink - Light Screen - TM16
  (325, 32500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Spoink - Protect - TM17
  (325, 32500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Spoink - Rain Dance - TM18
  (325, 32500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Spoink - Frustration - TM21
  (325, 32500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Spoink - Return - TM27
  (325, 32500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Spoink - Psychic - TM29
  (325, 32500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Spoink - Shadow Ball - TM30
  (325, 32500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Spoink - Double Team - TM32
  (325, 32500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Spoink - Reflect - TM33
  (325, 32500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 30),
  -- Spoink - Torment - TM41
  (325, 32500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Spoink - Facade - TM42
  (325, 32500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Spoink - Rest - TM44
  (325, 32500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Spoink - Attract - TM45
  (325, 32500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Spoink - Thief - TM46
  (325, 32500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Spoink - Round - TM48
  (325, 32500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Spoink - Charge Beam - TM57
  (325, 32500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 37),
  -- Spoink - Payback - TM66
  (325, 32500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 38),
  -- Spoink - Flash - TM70
  (325, 32500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Spoink - Thunder Wave - TM73
  (325, 32500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 40),
  -- Spoink - Psych Up - TM77
  (325, 32500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Spoink - Dream Eater - TM85
  (325, 32500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 42),
  -- Spoink - Grass Knot - TM86
  (325, 32500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Spoink - Swagger - TM87
  (325, 32500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Spoink - Sleep Talk - TM88
  (325, 32500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Spoink - Substitute - TM90
  (325, 32500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Spoink - Trick Room - TM92
  (325, 32500, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 47),
  -- Spoink - Confide - TM100
  (325, 32500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Spoink - Whirlwind - Egg
  (325, 32500, 18, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spoink - Amnesia - Egg
  (325, 32500, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spoink - Endure - Egg
  (325, 32500, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spoink - Mirror Coat - Egg
  (325, 32500, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spoink - Future Sight - Egg
  (325, 32500, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spoink - Trick - Egg
  (325, 32500, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spoink - Skill Swap - Egg
  (325, 32500, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spoink - Extrasensory - Egg
  (325, 32500, 326, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spoink - Lucky Chant - Egg
  (325, 32500, 381, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spoink - Zen Headbutt - Egg
  (325, 32500, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spoink - Simple Beam - Egg
  (325, 32500, 493, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grumpig - Psybeam - Level 1
  (326, 32600, 60, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Psywave - Level 1
  (326, 32600, 149, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grumpig - Odor Sleuth - Level 1
  (326, 32600, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grumpig - Psywave - Level 7
  (326, 32600, 149, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Grumpig - Odor Sleuth - Level 10
  (326, 32600, 316, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Grumpig - Psybeam - Level 14
  (326, 32600, 60, 13, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Grumpig - Psych Up - Level 15
  (326, 32600, 244, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Grumpig - Confuse Ray - Level 18
  (326, 32600, 109, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Grumpig - Magic Coat - Level 21
  (326, 32600, 277, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Grumpig - Zen Headbutt - Level 26
  (326, 32600, 428, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Grumpig - Rest - Level 29
  (326, 32600, 156, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Grumpig - Snore - Level 29
  (326, 32600, 173, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Grumpig - Power Gem - Level 35
  (326, 32600, 408, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Grumpig - Psyshock - Level 42
  (326, 32600, 473, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Grumpig - Payback - Level 46
  (326, 32600, 371, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Grumpig - Psychic - Level 52
  (326, 32600, 94, 13, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Grumpig - Bounce - Level 60
  (326, 32600, 340, 13, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Grumpig - Psyshock - TM03
  (326, 32600, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Grumpig - Calm Mind - TM04
  (326, 32600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Grumpig - Toxic - TM06
  (326, 32600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Grumpig - Hidden Power - TM10
  (326, 32600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Grumpig - Sunny Day - TM11
  (326, 32600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Grumpig - Taunt - TM12
  (326, 32600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Grumpig - Hyper Beam - TM15
  (326, 32600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Grumpig - Light Screen - TM16
  (326, 32600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 26),
  -- Grumpig - Protect - TM17
  (326, 32600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Grumpig - Rain Dance - TM18
  (326, 32600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Grumpig - Frustration - TM21
  (326, 32600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Grumpig - Return - TM27
  (326, 32600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Grumpig - Psychic - TM29
  (326, 32600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Grumpig - Shadow Ball - TM30
  (326, 32600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Grumpig - Brick Break - TM31
  (326, 32600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Grumpig - Double Team - TM32
  (326, 32600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Grumpig - Reflect - TM33
  (326, 32600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 35),
  -- Grumpig - Torment - TM41
  (326, 32600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Grumpig - Facade - TM42
  (326, 32600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Grumpig - Rest - TM44
  (326, 32600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Grumpig - Attract - TM45
  (326, 32600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Grumpig - Thief - TM46
  (326, 32600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Grumpig - Round - TM48
  (326, 32600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Grumpig - Focus Blast - TM52
  (326, 32600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 42),
  -- Grumpig - Energy Ball - TM53
  (326, 32600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 43),
  -- Grumpig - Fling - TM56
  (326, 32600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Grumpig - Charge Beam - TM57
  (326, 32600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 45),
  -- Grumpig - Payback - TM66
  (326, 32600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 46),
  -- Grumpig - Giga Impact - TM68
  (326, 32600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Grumpig - Flash - TM70
  (326, 32600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 48),
  -- Grumpig - Thunder Wave - TM73
  (326, 32600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 49),
  -- Grumpig - Psych Up - TM77
  (326, 32600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 50),
  -- Grumpig - Bulldoze - TM78
  (326, 32600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 51),
  -- Grumpig - Dream Eater - TM85
  (326, 32600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 52),
  -- Grumpig - Grass Knot - TM86
  (326, 32600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 53),
  -- Grumpig - Swagger - TM87
  (326, 32600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 54),
  -- Grumpig - Sleep Talk - TM88
  (326, 32600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 55),
  -- Grumpig - Substitute - TM90
  (326, 32600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Grumpig - Trick Room - TM92
  (326, 32600, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 57),
  -- Grumpig - Power-Up Punch - TM98
  (326, 32600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 58),
  -- Grumpig - Confide - TM100
  (326, 32600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 59),
  -- Spinda - Tackle - Level 1
  (327, 32700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinda - Uproar - Level 5
  (327, 32700, 253, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Spinda - Copycat - Level 10
  (327, 32700, 383, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spinda - Feint Attack - Level 14
  (327, 32700, 185, 13, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spinda - Psybeam - Level 19
  (327, 32700, 60, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spinda - Hypnosis - Level 23
  (327, 32700, 95, 13, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinda - Dizzy Punch - Level 28
  (327, 32700, 146, 13, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Spinda - Sucker Punch - Level 32
  (327, 32700, 389, 13, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Spinda - Teeter Dance - Level 37
  (327, 32700, 298, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Spinda - Psych Up - Level 41
  (327, 32700, 244, 13, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Spinda - Double-Edge - Level 46
  (327, 32700, 38, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Spinda - Thrash - Level 50
  (327, 32700, 37, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spinda - Flail - Level 50
  (327, 32700, 175, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Spinda - Calm Mind - TM04
  (327, 32700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 14),
  -- Spinda - Toxic - TM06
  (327, 32700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Spinda - Hidden Power - TM10
  (327, 32700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Spinda - Sunny Day - TM11
  (327, 32700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 17),
  -- Spinda - Protect - TM17
  (327, 32700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Spinda - Rain Dance - TM18
  (327, 32700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Spinda - Safeguard - TM20
  (327, 32700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 20),
  -- Spinda - Frustration - TM21
  (327, 32700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Spinda - Return - TM27
  (327, 32700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Spinda - Dig - TM28
  (327, 32700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Spinda - Psychic - TM29
  (327, 32700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Spinda - Shadow Ball - TM30
  (327, 32700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Spinda - Brick Break - TM31
  (327, 32700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Spinda - Double Team - TM32
  (327, 32700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Spinda - Rock Tomb - TM39
  (327, 32700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Spinda - Facade - TM42
  (327, 32700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Spinda - Rest - TM44
  (327, 32700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Spinda - Attract - TM45
  (327, 32700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Spinda - Thief - TM46
  (327, 32700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 32),
  -- Spinda - Round - TM48
  (327, 32700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Spinda - Fling - TM56
  (327, 32700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Spinda - Retaliate - TM67
  (327, 32700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Spinda - Flash - TM70
  (327, 32700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Spinda - Psych Up - TM77
  (327, 32700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 37),
  -- Spinda - Rock Slide - TM80
  (327, 32700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Spinda - Dream Eater - TM85
  (327, 32700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 39),
  -- Spinda - Swagger - TM87
  (327, 32700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Spinda - Substitute - TM90
  (327, 32700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Spinda - Trick Room - TM92
  (327, 32700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 42),
  -- Spinda - Wild Charge - TM93
  (327, 32700, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 43),
  -- Spinda - Rock Smash - TM94
  (327, 32700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Spinda - Power-Up Punch - TM98
  (327, 32700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 45),
  -- Spinda - Confide - TM100
  (327, 32700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Spinda - Strength - HM04
  (327, 32700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Spinda - Disable - Egg
  (327, 32700, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinda - Icy Wind - Egg
  (327, 32700, 196, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinda - Baton Pass - Egg
  (327, 32700, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spinda - Encore - Egg
  (327, 32700, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spinda - Rapid Spin - Egg
  (327, 32700, 229, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spinda - Fake Out - Egg
  (327, 32700, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spinda - Smelling Salts - Egg
  (327, 32700, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spinda - Trick - Egg
  (327, 32700, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinda - Role Play - Egg
  (327, 32700, 272, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spinda - Wish - Egg
  (327, 32700, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spinda - Assist - Egg
  (327, 32700, 274, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spinda - Fake Tears - Egg
  (327, 32700, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spinda - Water Pulse - Egg
  (327, 32700, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Spinda - Psycho Shift - Egg
  (327, 32700, 375, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Spinda - Psycho Cut - Egg
  (327, 32700, 427, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Spinda - Guard Split - Egg
  (327, 32700, 470, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Trapinch - Bite - Level 1
  (328, 32800, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Fissure - Level 1
  (328, 32800, 90, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trapinch - Superpower - Level 1
  (328, 32800, 276, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trapinch - Feint - Level 1
  (328, 32800, 364, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Trapinch - Sand Attack - Level 4
  (328, 32800, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Trapinch - Feint Attack - Level 7
  (328, 32800, 185, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Trapinch - Sand Tomb - Level 10
  (328, 32800, 328, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Trapinch - Mud-Slap - Level 13
  (328, 32800, 189, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Trapinch - Bide - Level 17
  (328, 32800, 117, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Trapinch - Bulldoze - Level 21
  (328, 32800, 523, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Trapinch - Rock Slide - Level 25
  (328, 32800, 157, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Trapinch - Dig - Level 29
  (328, 32800, 91, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Trapinch - Crunch - Level 34
  (328, 32800, 242, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Trapinch - Earth Power - Level 39
  (328, 32800, 414, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Trapinch - Sandstorm - Level 44
  (328, 32800, 201, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Trapinch - Hyper Beam - Level 49
  (328, 32800, 63, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Trapinch - Earthquake - Level 55
  (328, 32800, 89, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Trapinch - Feint - Level 61
  (328, 32800, 364, 13, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Trapinch - Superpower - Level 67
  (328, 32800, 276, 13, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Trapinch - Fissure - Level 73
  (328, 32800, 90, 13, NULL, 1, 73, NULL, NULL, NULL, 20),
  -- Trapinch - Toxic - TM06
  (328, 32800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Trapinch - Hidden Power - TM10
  (328, 32800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Trapinch - Sunny Day - TM11
  (328, 32800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Trapinch - Hyper Beam - TM15
  (328, 32800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Trapinch - Protect - TM17
  (328, 32800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Trapinch - Frustration - TM21
  (328, 32800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Trapinch - Solar Beam - TM22
  (328, 32800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Trapinch - Earthquake - TM26
  (328, 32800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Trapinch - Return - TM27
  (328, 32800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Trapinch - Dig - TM28
  (328, 32800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 30),
  -- Trapinch - Double Team - TM32
  (328, 32800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Trapinch - Sandstorm - TM37
  (328, 32800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 32),
  -- Trapinch - Rock Tomb - TM39
  (328, 32800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Trapinch - Facade - TM42
  (328, 32800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Trapinch - Rest - TM44
  (328, 32800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Trapinch - Attract - TM45
  (328, 32800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Trapinch - Round - TM48
  (328, 32800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Trapinch - Struggle Bug - TM76
  (328, 32800, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 38),
  -- Trapinch - Bulldoze - TM78
  (328, 32800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 39),
  -- Trapinch - Rock Slide - TM80
  (328, 32800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Trapinch - Swagger - TM87
  (328, 32800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Trapinch - Sleep Talk - TM88
  (328, 32800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Trapinch - Substitute - TM90
  (328, 32800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Trapinch - Rock Smash - TM94
  (328, 32800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Trapinch - Confide - TM100
  (328, 32800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Trapinch - Strength - HM04
  (328, 32800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Trapinch - Gust - Egg
  (328, 32800, 16, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Trapinch - Quick Attack - Egg
  (328, 32800, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Trapinch - Focus Energy - Egg
  (328, 32800, 116, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Trapinch - Flail - Egg
  (328, 32800, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Trapinch - Endure - Egg
  (328, 32800, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Trapinch - Fury Cutter - Egg
  (328, 32800, 210, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Trapinch - Signal Beam - Egg
  (328, 32800, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Trapinch - Mud Shot - Egg
  (328, 32800, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Trapinch - Earth Power - Egg
  (328, 32800, 414, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Trapinch - Bug Bite - Egg
  (328, 32800, 450, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Feint Attack - Level 1
  (329, 32900, 185, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Sand Tomb - Level 1
  (329, 32900, 328, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Sand Attack - Level 4
  (329, 32900, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Vibrava - Feint Attack - Level 7
  (329, 32900, 185, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Vibrava - Sand Tomb - Level 10
  (329, 32900, 328, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Vibrava - Mud-Slap - Level 13
  (329, 32900, 189, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Vibrava - Bide - Level 17
  (329, 32900, 117, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Vibrava - Bulldoze - Level 21
  (329, 32900, 523, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Vibrava - Rock Slide - Level 25
  (329, 32900, 157, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Vibrava - Supersonic - Level 29
  (329, 32900, 48, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Vibrava - Screech - Level 34
  (329, 32900, 103, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Vibrava - Dragon Breath - Level 35
  (329, 32900, 225, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Vibrava - Earth Power - Level 39
  (329, 32900, 414, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Vibrava - Sandstorm - Level 44
  (329, 32900, 201, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Vibrava - Hyper Beam - Level 49
  (329, 32900, 63, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Vibrava - Toxic - TM06
  (329, 32900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Vibrava - Hidden Power - TM10
  (329, 32900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Vibrava - Sunny Day - TM11
  (329, 32900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Vibrava - Hyper Beam - TM15
  (329, 32900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Vibrava - Protect - TM17
  (329, 32900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Vibrava - Roost - TM19
  (329, 32900, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 22),
  -- Vibrava - Frustration - TM21
  (329, 32900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Vibrava - Solar Beam - TM22
  (329, 32900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 24),
  -- Vibrava - Earthquake - TM26
  (329, 32900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 25),
  -- Vibrava - Return - TM27
  (329, 32900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Vibrava - Dig - TM28
  (329, 32900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Vibrava - Double Team - TM32
  (329, 32900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Vibrava - Sandstorm - TM37
  (329, 32900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Vibrava - Rock Tomb - TM39
  (329, 32900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Vibrava - Facade - TM42
  (329, 32900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Vibrava - Rest - TM44
  (329, 32900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Vibrava - Attract - TM45
  (329, 32900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Vibrava - Round - TM48
  (329, 32900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Vibrava - Steel Wing - TM51
  (329, 32900, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 35),
  -- Vibrava - Struggle Bug - TM76
  (329, 32900, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 36),
  -- Vibrava - Bulldoze - TM78
  (329, 32900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Vibrava - Rock Slide - TM80
  (329, 32900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Vibrava - Swagger - TM87
  (329, 32900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Vibrava - Sleep Talk - TM88
  (329, 32900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Vibrava - U-turn - TM89
  (329, 32900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 41),
  -- Vibrava - Substitute - TM90
  (329, 32900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Vibrava - Rock Smash - TM94
  (329, 32900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Vibrava - Confide - TM100
  (329, 32900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Vibrava - Fly - HM02
  (329, 32900, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 45),
  -- Vibrava - Strength - HM04
  (329, 32900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Vibrava - Draco Meteor - Tutor
  (329, 32900, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 47),
  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Feint Attack - Level 1
  (330, 33000, 185, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Sand Tomb - Level 1
  (330, 33000, 328, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Sand Attack - Level 4
  (330, 33000, 28, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Flygon - Feint Attack - Level 7
  (330, 33000, 185, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Flygon - Sand Tomb - Level 10
  (330, 33000, 328, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Flygon - Mud-Slap - Level 13
  (330, 33000, 189, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Flygon - Bide - Level 17
  (330, 33000, 117, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Flygon - Bulldoze - Level 21
  (330, 33000, 523, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Flygon - Rock Slide - Level 25
  (330, 33000, 157, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Flygon - Supersonic - Level 29
  (330, 33000, 48, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Flygon - Screech - Level 34
  (330, 33000, 103, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Flygon - Dragon Breath - Level 35
  (330, 33000, 225, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Flygon - Earth Power - Level 39
  (330, 33000, 414, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Flygon - Sandstorm - Level 44
  (330, 33000, 201, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Flygon - Dragon Tail - Level 45
  (330, 33000, 525, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Flygon - Hyper Beam - Level 49
  (330, 33000, 63, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Flygon - Dragon Claw - Level 55
  (330, 33000, 337, 13, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Flygon - Hone Claws - TM01
  (330, 33000, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Flygon - Dragon Claw - TM02
  (330, 33000, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 20),
  -- Flygon - Toxic - TM06
  (330, 33000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Flygon - Hidden Power - TM10
  (330, 33000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Flygon - Sunny Day - TM11
  (330, 33000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Flygon - Hyper Beam - TM15
  (330, 33000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Flygon - Protect - TM17
  (330, 33000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Flygon - Roost - TM19
  (330, 33000, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 26),
  -- Flygon - Frustration - TM21
  (330, 33000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Flygon - Solar Beam - TM22
  (330, 33000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Flygon - Earthquake - TM26
  (330, 33000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Flygon - Return - TM27
  (330, 33000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Flygon - Dig - TM28
  (330, 33000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Flygon - Double Team - TM32
  (330, 33000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Flygon - Flamethrower - TM35
  (330, 33000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 33),
  -- Flygon - Sandstorm - TM37
  (330, 33000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 34),
  -- Flygon - Fire Blast - TM38
  (330, 33000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 35),
  -- Flygon - Rock Tomb - TM39
  (330, 33000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Flygon - Aerial Ace - TM40
  (330, 33000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Flygon - Facade - TM42
  (330, 33000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Flygon - Rest - TM44
  (330, 33000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Flygon - Attract - TM45
  (330, 33000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Flygon - Round - TM48
  (330, 33000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Flygon - Steel Wing - TM51
  (330, 33000, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 42),
  -- Flygon - Incinerate - TM59
  (330, 33000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 43),
  -- Flygon - Giga Impact - TM68
  (330, 33000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Flygon - Stone Edge - TM71
  (330, 33000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 45),
  -- Flygon - Struggle Bug - TM76
  (330, 33000, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 46),
  -- Flygon - Bulldoze - TM78
  (330, 33000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 47),
  -- Flygon - Rock Slide - TM80
  (330, 33000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Flygon - Dragon Tail - TM82
  (330, 33000, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 49),
  -- Flygon - Swagger - TM87
  (330, 33000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Flygon - Sleep Talk - TM88
  (330, 33000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Flygon - U-turn - TM89
  (330, 33000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 52),
  -- Flygon - Substitute - TM90
  (330, 33000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Flygon - Rock Smash - TM94
  (330, 33000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Flygon - Power-Up Punch - TM98
  (330, 33000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Flygon - Confide - TM100
  (330, 33000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Flygon - Fly - HM02
  (330, 33000, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 57),
  -- Flygon - Strength - HM04
  (330, 33000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 58),
  -- Flygon - Draco Meteor - Tutor
  (330, 33000, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 59),
  -- Cacnea - Poison Sting - Level 1
  (331, 33100, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Level 1
  (331, 33100, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 5
  (331, 33100, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 9
  (331, 33100, 74, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 13
  (331, 33100, 73, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 17
  (331, 33100, 28, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cacnea - Pin Missile - Level 21
  (331, 33100, 42, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cacnea - Ingrain - Level 25
  (331, 33100, 275, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cacnea - Feint Attack - Level 29
  (331, 33100, 185, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cacnea - Spikes - Level 33
  (331, 33100, 191, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Cacnea - Sucker Punch - Level 37
  (331, 33100, 389, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Cacnea - Payback - Level 41
  (331, 33100, 371, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Cacnea - Needle Arm - Level 45
  (331, 33100, 302, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Cacnea - Cotton Spore - Level 49
  (331, 33100, 178, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cacnea - Sandstorm - Level 53
  (331, 33100, 201, 13, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Cacnea - Destiny Bond - Level 57
  (331, 33100, 194, 13, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Cacnea - Toxic - TM06
  (331, 33100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Cacnea - Venoshock - TM09
  (331, 33100, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 18),
  -- Cacnea - Hidden Power - TM10
  (331, 33100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Cacnea - Sunny Day - TM11
  (331, 33100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Cacnea - Protect - TM17
  (331, 33100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Cacnea - Frustration - TM21
  (331, 33100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Cacnea - Solar Beam - TM22
  (331, 33100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Cacnea - Return - TM27
  (331, 33100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Cacnea - Brick Break - TM31
  (331, 33100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 25),
  -- Cacnea - Double Team - TM32
  (331, 33100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Cacnea - Sandstorm - TM37
  (331, 33100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 27),
  -- Cacnea - Facade - TM42
  (331, 33100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Cacnea - Rest - TM44
  (331, 33100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Cacnea - Attract - TM45
  (331, 33100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Cacnea - Round - TM48
  (331, 33100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Cacnea - Energy Ball - TM53
  (331, 33100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Cacnea - Fling - TM56
  (331, 33100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 33),
  -- Cacnea - Payback - TM66
  (331, 33100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 34),
  -- Cacnea - Flash - TM70
  (331, 33100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 35),
  -- Cacnea - Swords Dance - TM75
  (331, 33100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 36),
  -- Cacnea - Poison Jab - TM84
  (331, 33100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 37),
  -- Cacnea - Grass Knot - TM86
  (331, 33100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 38),
  -- Cacnea - Swagger - TM87
  (331, 33100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Cacnea - Sleep Talk - TM88
  (331, 33100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Cacnea - Substitute - TM90
  (331, 33100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Cacnea - Nature Power - TM96
  (331, 33100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 42),
  -- Cacnea - Dark Pulse - TM97
  (331, 33100, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 43),
  -- Cacnea - Power-Up Punch - TM98
  (331, 33100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 44),
  -- Cacnea - Confide - TM100
  (331, 33100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Cacnea - Cut - HM01
  (331, 33100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Cacnea - Disable - Egg
  (331, 33100, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cacnea - Acid - Egg
  (331, 33100, 51, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cacnea - Low Kick - Egg
  (331, 33100, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cacnea - Counter - Egg
  (331, 33100, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cacnea - Dynamic Punch - Egg
  (331, 33100, 223, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cacnea - Smelling Salts - Egg
  (331, 33100, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cacnea - Teeter Dance - Egg
  (331, 33100, 298, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cacnea - Grass Whistle - Egg
  (331, 33100, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cacnea - Block - Egg
  (331, 33100, 335, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cacnea - Magical Leaf - Egg
  (331, 33100, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cacnea - Worry Seed - Egg
  (331, 33100, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cacnea - Seed Bomb - Egg
  (331, 33100, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cacnea - Switcheroo - Egg
  (331, 33100, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cacnea - Nasty Plot - Egg
  (331, 33100, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cacnea - Belch - Egg
  (331, 33100, 562, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cacnea - Rototiller - Egg
  (331, 33100, 563, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cacnea - Fell Stinger - Egg
  (331, 33100, 565, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cacturne - Poison Sting - Level 1
  (332, 33200, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacturne - Leer - Level 1
  (332, 33200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacturne - Absorb - Level 1
  (332, 33200, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cacturne - Growth - Level 1
  (332, 33200, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cacturne - Destiny Bond - Level 1
  (332, 33200, 194, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cacturne - Revenge - Level 1
  (332, 33200, 279, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cacturne - Absorb - Level 5
  (332, 33200, 71, 13, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Cacturne - Growth - Level 9
  (332, 33200, 74, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Cacturne - Leech Seed - Level 13
  (332, 33200, 73, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Cacturne - Sand Attack - Level 17
  (332, 33200, 28, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Cacturne - Pin Missile - Level 21
  (332, 33200, 42, 13, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Cacturne - Ingrain - Level 25
  (332, 33200, 275, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Cacturne - Feint Attack - Level 29
  (332, 33200, 185, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Cacturne - Spikes - Level 35
  (332, 33200, 191, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Cacturne - Sucker Punch - Level 41
  (332, 33200, 389, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Cacturne - Payback - Level 47
  (332, 33200, 371, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Cacturne - Needle Arm - Level 53
  (332, 33200, 302, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Cacturne - Cotton Spore - Level 59
  (332, 33200, 178, 13, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Cacturne - Sandstorm - Level 65
  (332, 33200, 201, 13, NULL, 1, 65, NULL, NULL, NULL, 19),
  -- Cacturne - Destiny Bond - Level 71
  (332, 33200, 194, 13, NULL, 1, 71, NULL, NULL, NULL, 20),
  -- Cacturne - Toxic - TM06
  (332, 33200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Cacturne - Venoshock - TM09
  (332, 33200, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 22),
  -- Cacturne - Hidden Power - TM10
  (332, 33200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Cacturne - Sunny Day - TM11
  (332, 33200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Cacturne - Hyper Beam - TM15
  (332, 33200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Cacturne - Protect - TM17
  (332, 33200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Cacturne - Frustration - TM21
  (332, 33200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Cacturne - Solar Beam - TM22
  (332, 33200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Cacturne - Return - TM27
  (332, 33200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Cacturne - Brick Break - TM31
  (332, 33200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Cacturne - Double Team - TM32
  (332, 33200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Cacturne - Sandstorm - TM37
  (332, 33200, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 32),
  -- Cacturne - Facade - TM42
  (332, 33200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Cacturne - Rest - TM44
  (332, 33200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Cacturne - Attract - TM45
  (332, 33200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Cacturne - Round - TM48
  (332, 33200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Cacturne - Focus Blast - TM52
  (332, 33200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 37),
  -- Cacturne - Energy Ball - TM53
  (332, 33200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Cacturne - Fling - TM56
  (332, 33200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Cacturne - Embargo - TM63
  (332, 33200, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 40),
  -- Cacturne - Payback - TM66
  (332, 33200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 41),
  -- Cacturne - Retaliate - TM67
  (332, 33200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Cacturne - Giga Impact - TM68
  (332, 33200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Cacturne - Flash - TM70
  (332, 33200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Cacturne - Swords Dance - TM75
  (332, 33200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 45),
  -- Cacturne - Poison Jab - TM84
  (332, 33200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 46),
  -- Cacturne - Grass Knot - TM86
  (332, 33200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Cacturne - Swagger - TM87
  (332, 33200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Cacturne - Sleep Talk - TM88
  (332, 33200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Cacturne - Substitute - TM90
  (332, 33200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Cacturne - Nature Power - TM96
  (332, 33200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 51),
  -- Cacturne - Dark Pulse - TM97
  (332, 33200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 52),
  -- Cacturne - Power-Up Punch - TM98
  (332, 33200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 53),
  -- Cacturne - Confide - TM100
  (332, 33200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Cacturne - Cut - HM01
  (332, 33200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 55),
  -- Cacturne - Strength - HM04
  (332, 33200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 56),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Astonish - Level 4
  (333, 33300, 310, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swablu - Sing - Level 8
  (333, 33300, 47, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 10
  (333, 33300, 31, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Swablu - Safeguard - Level 13
  (333, 33300, 219, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Swablu - Mist - Level 15
  (333, 33300, 54, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swablu - Round - Level 18
  (333, 33300, 496, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Swablu - Natural Gift - Level 21
  (333, 33300, 363, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Swablu - Take Down - Level 25
  (333, 33300, 36, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Swablu - Refresh - Level 29
  (333, 33300, 287, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Swablu - Mirror Move - Level 34
  (333, 33300, 119, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Swablu - Cotton Guard - Level 39
  (333, 33300, 538, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Swablu - Dragon Pulse - Level 42
  (333, 33300, 406, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Swablu - Perish Song - Level 48
  (333, 33300, 195, 13, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Swablu - Moonblast - Level 50
  (333, 33300, 585, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Swablu - Toxic - TM06
  (333, 33300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Swablu - Hidden Power - TM10
  (333, 33300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Swablu - Sunny Day - TM11
  (333, 33300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Swablu - Ice Beam - TM13
  (333, 33300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Swablu - Protect - TM17
  (333, 33300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Swablu - Rain Dance - TM18
  (333, 33300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Swablu - Roost - TM19
  (333, 33300, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 23),
  -- Swablu - Safeguard - TM20
  (333, 33300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Swablu - Frustration - TM21
  (333, 33300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Swablu - Solar Beam - TM22
  (333, 33300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Swablu - Return - TM27
  (333, 33300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Swablu - Double Team - TM32
  (333, 33300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Swablu - Aerial Ace - TM40
  (333, 33300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Swablu - Facade - TM42
  (333, 33300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Swablu - Rest - TM44
  (333, 33300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Swablu - Attract - TM45
  (333, 33300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Swablu - Thief - TM46
  (333, 33300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 33),
  -- Swablu - Round - TM48
  (333, 33300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Swablu - Echoed Voice - TM49
  (333, 33300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 35),
  -- Swablu - Steel Wing - TM51
  (333, 33300, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 36),
  -- Swablu - Psych Up - TM77
  (333, 33300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 37),
  -- Swablu - Dream Eater - TM85
  (333, 33300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 38),
  -- Swablu - Swagger - TM87
  (333, 33300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Swablu - Sleep Talk - TM88
  (333, 33300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Swablu - Substitute - TM90
  (333, 33300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Swablu - Dazzling Gleam - TM99
  (333, 33300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 42),
  -- Swablu - Confide - TM100
  (333, 33300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Swablu - Fly - HM02
  (333, 33300, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 44),
  -- Swablu - Agility - Egg
  (333, 33300, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swablu - Rage - Egg
  (333, 33300, 99, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Haze - Egg
  (333, 33300, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swablu - Steel Wing - Egg
  (333, 33300, 211, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swablu - Pursuit - Egg
  (333, 33300, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swablu - Feather Dance - Egg
  (333, 33300, 297, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swablu - Hyper Voice - Egg
  (333, 33300, 304, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swablu - Roost - Egg
  (333, 33300, 355, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swablu - Power Swap - Egg
  (333, 33300, 384, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Swablu - Dragon Rush - Egg
  (333, 33300, 407, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Sing - Level 1
  (334, 33400, 47, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Sky Attack - Level 1
  (334, 33400, 143, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Astonish - Level 1
  (334, 33400, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Altaria - Pluck - Level 1
  (334, 33400, 365, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Altaria - Astonish - Level 4
  (334, 33400, 310, 13, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Altaria - Sing - Level 8
  (334, 33400, 47, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Altaria - Fury Attack - Level 10
  (334, 33400, 31, 13, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Altaria - Safeguard - Level 13
  (334, 33400, 219, 13, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Altaria - Mist - Level 15
  (334, 33400, 54, 13, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Altaria - Round - Level 18
  (334, 33400, 496, 13, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Altaria - Natural Gift - Level 21
  (334, 33400, 363, 13, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Altaria - Take Down - Level 25
  (334, 33400, 36, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Altaria - Refresh - Level 29
  (334, 33400, 287, 13, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Altaria - Dragon Dance - Level 34
  (334, 33400, 349, 13, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Altaria - Dragon Breath - Level 35
  (334, 33400, 225, 13, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Altaria - Cotton Guard - Level 42
  (334, 33400, 538, 13, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Altaria - Dragon Pulse - Level 48
  (334, 33400, 406, 13, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Altaria - Perish Song - Level 57
  (334, 33400, 195, 13, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Altaria - Moonblast - Level 60
  (334, 33400, 585, 13, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Altaria - Sky Attack - Level 64
  (334, 33400, 143, 13, NULL, 1, 64, NULL, NULL, NULL, 22),
  -- Altaria - Hone Claws - TM01
  (334, 33400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 23),
  -- Altaria - Dragon Claw - TM02
  (334, 33400, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 24),
  -- Altaria - Roar - TM05
  (334, 33400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 25),
  -- Altaria - Toxic - TM06
  (334, 33400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Altaria - Hidden Power - TM10
  (334, 33400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 27),
  -- Altaria - Sunny Day - TM11
  (334, 33400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 28),
  -- Altaria - Ice Beam - TM13
  (334, 33400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 29),
  -- Altaria - Hyper Beam - TM15
  (334, 33400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 30),
  -- Altaria - Protect - TM17
  (334, 33400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 31),
  -- Altaria - Rain Dance - TM18
  (334, 33400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 32),
  -- Altaria - Roost - TM19
  (334, 33400, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 33),
  -- Altaria - Safeguard - TM20
  (334, 33400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 34),
  -- Altaria - Frustration - TM21
  (334, 33400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 35),
  -- Altaria - Solar Beam - TM22
  (334, 33400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 36),
  -- Altaria - Earthquake - TM26
  (334, 33400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 37),
  -- Altaria - Return - TM27
  (334, 33400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 38),
  -- Altaria - Double Team - TM32
  (334, 33400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 39),
  -- Altaria - Flamethrower - TM35
  (334, 33400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 40),
  -- Altaria - Fire Blast - TM38
  (334, 33400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 41),
  -- Altaria - Aerial Ace - TM40
  (334, 33400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 42),
  -- Altaria - Facade - TM42
  (334, 33400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 43),
  -- Altaria - Rest - TM44
  (334, 33400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 44),
  -- Altaria - Attract - TM45
  (334, 33400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 45),
  -- Altaria - Thief - TM46
  (334, 33400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 46),
  -- Altaria - Round - TM48
  (334, 33400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 47),
  -- Altaria - Echoed Voice - TM49
  (334, 33400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 48),
  -- Altaria - Steel Wing - TM51
  (334, 33400, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 49),
  -- Altaria - Incinerate - TM59
  (334, 33400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 50),
  -- Altaria - Giga Impact - TM68
  (334, 33400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Altaria - Psych Up - TM77
  (334, 33400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Altaria - Bulldoze - TM78
  (334, 33400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 53),
  -- Altaria - Dream Eater - TM85
  (334, 33400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 54),
  -- Altaria - Swagger - TM87
  (334, 33400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Altaria - Sleep Talk - TM88
  (334, 33400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Altaria - Substitute - TM90
  (334, 33400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Altaria - Rock Smash - TM94
  (334, 33400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 58),
  -- Altaria - Dazzling Gleam - TM99
  (334, 33400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 59),
  -- Altaria - Confide - TM100
  (334, 33400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 60),
  -- Altaria - Fly - HM02
  (334, 33400, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 61),
  -- Altaria - Draco Meteor - Tutor
  (334, 33400, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 62),
  -- Zangoose - Scratch - Level 1
  (335, 33500, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 1
  (335, 33500, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Fury Cutter - Level 8
  (335, 33500, 210, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zangoose - Pursuit - Level 12
  (335, 33500, 228, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zangoose - Slash - Level 15
  (335, 33500, 163, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zangoose - Embargo - Level 19
  (335, 33500, 373, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zangoose - Crush Claw - Level 22
  (335, 33500, 306, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zangoose - Revenge - Level 26
  (335, 33500, 279, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zangoose - False Swipe - Level 29
  (335, 33500, 206, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zangoose - Detect - Level 33
  (335, 33500, 197, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zangoose - X-Scissor - Level 36
  (335, 33500, 404, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zangoose - Taunt - Level 40
  (335, 33500, 269, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zangoose - Swords Dance - Level 43
  (335, 33500, 14, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Zangoose - Close Combat - Level 47
  (335, 33500, 370, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Zangoose - Hone Claws - TM01
  (335, 33500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Zangoose - Roar - TM05
  (335, 33500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Zangoose - Toxic - TM06
  (335, 33500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Zangoose - Hidden Power - TM10
  (335, 33500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Zangoose - Sunny Day - TM11
  (335, 33500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Zangoose - Taunt - TM12
  (335, 33500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Zangoose - Ice Beam - TM13
  (335, 33500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Zangoose - Blizzard - TM14
  (335, 33500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Zangoose - Protect - TM17
  (335, 33500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Zangoose - Rain Dance - TM18
  (335, 33500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Zangoose - Frustration - TM21
  (335, 33500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Zangoose - Solar Beam - TM22
  (335, 33500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Zangoose - Thunderbolt - TM24
  (335, 33500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Zangoose - Thunder - TM25
  (335, 33500, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Zangoose - Return - TM27
  (335, 33500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Zangoose - Dig - TM28
  (335, 33500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Zangoose - Shadow Ball - TM30
  (335, 33500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Zangoose - Brick Break - TM31
  (335, 33500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Zangoose - Double Team - TM32
  (335, 33500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Zangoose - Flamethrower - TM35
  (335, 33500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Zangoose - Fire Blast - TM38
  (335, 33500, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Zangoose - Rock Tomb - TM39
  (335, 33500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Zangoose - Aerial Ace - TM40
  (335, 33500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Zangoose - Facade - TM42
  (335, 33500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Zangoose - Rest - TM44
  (335, 33500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Zangoose - Attract - TM45
  (335, 33500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 41),
  -- Zangoose - Thief - TM46
  (335, 33500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 42),
  -- Zangoose - Round - TM48
  (335, 33500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Zangoose - Focus Blast - TM52
  (335, 33500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Zangoose - False Swipe - TM54
  (335, 33500, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 45),
  -- Zangoose - Fling - TM56
  (335, 33500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Zangoose - Incinerate - TM59
  (335, 33500, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 47),
  -- Zangoose - Embargo - TM63
  (335, 33500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 48),
  -- Zangoose - Shadow Claw - TM65
  (335, 33500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 49),
  -- Zangoose - Payback - TM66
  (335, 33500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 50),
  -- Zangoose - Retaliate - TM67
  (335, 33500, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 51),
  -- Zangoose - Swords Dance - TM75
  (335, 33500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 52),
  -- Zangoose - Rock Slide - TM80
  (335, 33500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 53),
  -- Zangoose - X-Scissor - TM81
  (335, 33500, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 54),
  -- Zangoose - Poison Jab - TM84
  (335, 33500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 55),
  -- Zangoose - Swagger - TM87
  (335, 33500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 56),
  -- Zangoose - Sleep Talk - TM88
  (335, 33500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 57),
  -- Zangoose - Substitute - TM90
  (335, 33500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Zangoose - Rock Smash - TM94
  (335, 33500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 59),
  -- Zangoose - Power-Up Punch - TM98
  (335, 33500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 60),
  -- Zangoose - Confide - TM100
  (335, 33500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Zangoose - Strength - HM04
  (335, 33500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 62),
  -- Zangoose - Razor Wind - Egg
  (335, 33500, 13, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zangoose - Double Kick - Egg
  (335, 33500, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Zangoose - Disable - Egg
  (335, 33500, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Zangoose - Counter - Egg
  (335, 33500, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zangoose - Fury Swipes - Egg
  (335, 33500, 154, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zangoose - Curse - Egg
  (335, 33500, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zangoose - Flail - Egg
  (335, 33500, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zangoose - Iron Tail - Egg
  (335, 33500, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Zangoose - Metal Claw - Egg
  (335, 33500, 232, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Zangoose - Feint - Egg
  (335, 33500, 364, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Zangoose - Night Slash - Egg
  (335, 33500, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Zangoose - Double Hit - Egg
  (335, 33500, 458, 13, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Zangoose - Quick Guard - Egg
  (335, 33500, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Zangoose - Final Gambit - Egg
  (335, 33500, 515, 13, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Seviper - Wrap - Level 1
  (336, 33600, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Swagger - Level 1
  (336, 33600, 207, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 5
  (336, 33600, 44, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Seviper - Lick - Level 9
  (336, 33600, 122, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Seviper - Poison Tail - Level 12
  (336, 33600, 342, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Seviper - Screech - Level 16
  (336, 33600, 103, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Seviper - Venoshock - Level 20
  (336, 33600, 474, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Seviper - Glare - Level 23
  (336, 33600, 137, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seviper - Poison Fang - Level 27
  (336, 33600, 305, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seviper - Venom Drench - Level 28
  (336, 33600, 599, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Seviper - Night Slash - Level 31
  (336, 33600, 400, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Seviper - Gastro Acid - Level 34
  (336, 33600, 380, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Seviper - Haze - Level 38
  (336, 33600, 114, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Seviper - Poison Jab - Level 42
  (336, 33600, 398, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Seviper - Crunch - Level 45
  (336, 33600, 242, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Seviper - Belch - Level 46
  (336, 33600, 562, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Seviper - Coil - Level 48
  (336, 33600, 489, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Seviper - Wring Out - Level 50
  (336, 33600, 378, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Seviper - Toxic - TM06
  (336, 33600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Seviper - Venoshock - TM09
  (336, 33600, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 20),
  -- Seviper - Hidden Power - TM10
  (336, 33600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Seviper - Sunny Day - TM11
  (336, 33600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Seviper - Taunt - TM12
  (336, 33600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Seviper - Protect - TM17
  (336, 33600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Seviper - Rain Dance - TM18
  (336, 33600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Seviper - Frustration - TM21
  (336, 33600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Seviper - Earthquake - TM26
  (336, 33600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Seviper - Return - TM27
  (336, 33600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Seviper - Dig - TM28
  (336, 33600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Seviper - Double Team - TM32
  (336, 33600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Seviper - Sludge Wave - TM34
  (336, 33600, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 31),
  -- Seviper - Flamethrower - TM35
  (336, 33600, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 32),
  -- Seviper - Sludge Bomb - TM36
  (336, 33600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Seviper - Facade - TM42
  (336, 33600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Seviper - Rest - TM44
  (336, 33600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Seviper - Attract - TM45
  (336, 33600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Seviper - Thief - TM46
  (336, 33600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 37),
  -- Seviper - Round - TM48
  (336, 33600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Seviper - Payback - TM66
  (336, 33600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Seviper - Retaliate - TM67
  (336, 33600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 40),
  -- Seviper - Bulldoze - TM78
  (336, 33600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 41),
  -- Seviper - X-Scissor - TM81
  (336, 33600, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 42),
  -- Seviper - Dragon Tail - TM82
  (336, 33600, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 43),
  -- Seviper - Infestation - TM83
  (336, 33600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 44),
  -- Seviper - Poison Jab - TM84
  (336, 33600, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 45),
  -- Seviper - Swagger - TM87
  (336, 33600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Seviper - Sleep Talk - TM88
  (336, 33600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Seviper - Substitute - TM90
  (336, 33600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Seviper - Rock Smash - TM94
  (336, 33600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Seviper - Dark Pulse - TM97
  (336, 33600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 50),
  -- Seviper - Confide - TM100
  (336, 33600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Seviper - Strength - HM04
  (336, 33600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Seviper - Body Slam - Egg
  (336, 33600, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seviper - Scary Face - Egg
  (336, 33600, 184, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seviper - Iron Tail - Egg
  (336, 33600, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seviper - Stockpile - Egg
  (336, 33600, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Seviper - Spit Up - Egg
  (336, 33600, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Seviper - Swallow - Egg
  (336, 33600, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Seviper - Assurance - Egg
  (336, 33600, 372, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Seviper - Wring Out - Egg
  (336, 33600, 378, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Seviper - Punishment - Egg
  (336, 33600, 386, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Seviper - Night Slash - Egg
  (336, 33600, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Seviper - Switcheroo - Egg
  (336, 33600, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Seviper - Final Gambit - Egg
  (336, 33600, 515, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lunatone - Tackle - Level 1
  (337, 33700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunatone - Rock Throw - Level 1
  (337, 33700, 88, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunatone - Confusion - Level 1
  (337, 33700, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunatone - Harden - Level 1
  (337, 33700, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lunatone - Magic Room - Level 1
  (337, 33700, 478, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lunatone - Rock Throw - Level 5
  (337, 33700, 88, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Lunatone - Hypnosis - Level 9
  (337, 33700, 95, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Lunatone - Rock Polish - Level 13
  (337, 33700, 397, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lunatone - Psywave - Level 17
  (337, 33700, 149, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Lunatone - Embargo - Level 21
  (337, 33700, 373, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Lunatone - Rock Slide - Level 25
  (337, 33700, 157, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lunatone - Cosmic Power - Level 29
  (337, 33700, 322, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lunatone - Psychic - Level 33
  (337, 33700, 94, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Lunatone - Heal Block - Level 37
  (337, 33700, 377, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Lunatone - Stone Edge - Level 41
  (337, 33700, 444, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Lunatone - Future Sight - Level 45
  (337, 33700, 248, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Lunatone - Explosion - Level 49
  (337, 33700, 153, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Lunatone - Moonblast - Level 50
  (337, 33700, 585, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Lunatone - Magic Room - Level 53
  (337, 33700, 478, 13, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Lunatone - Psyshock - TM03
  (337, 33700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 20),
  -- Lunatone - Calm Mind - TM04
  (337, 33700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 21),
  -- Lunatone - Toxic - TM06
  (337, 33700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Lunatone - Hidden Power - TM10
  (337, 33700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Lunatone - Ice Beam - TM13
  (337, 33700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Lunatone - Blizzard - TM14
  (337, 33700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Lunatone - Hyper Beam - TM15
  (337, 33700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Lunatone - Light Screen - TM16
  (337, 33700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 27),
  -- Lunatone - Protect - TM17
  (337, 33700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Lunatone - Rain Dance - TM18
  (337, 33700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Lunatone - Safeguard - TM20
  (337, 33700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 30),
  -- Lunatone - Frustration - TM21
  (337, 33700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 31),
  -- Lunatone - Smack Down - TM23
  (337, 33700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 32),
  -- Lunatone - Earthquake - TM26
  (337, 33700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 33),
  -- Lunatone - Return - TM27
  (337, 33700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Lunatone - Psychic - TM29
  (337, 33700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Lunatone - Shadow Ball - TM30
  (337, 33700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Lunatone - Double Team - TM32
  (337, 33700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Lunatone - Reflect - TM33
  (337, 33700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 38),
  -- Lunatone - Sandstorm - TM37
  (337, 33700, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 39),
  -- Lunatone - Rock Tomb - TM39
  (337, 33700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 40),
  -- Lunatone - Facade - TM42
  (337, 33700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Lunatone - Rest - TM44
  (337, 33700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Lunatone - Round - TM48
  (337, 33700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Lunatone - Charge Beam - TM57
  (337, 33700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 44),
  -- Lunatone - Acrobatics - TM62
  (337, 33700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Lunatone - Embargo - TM63
  (337, 33700, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 46),
  -- Lunatone - Explosion - TM64
  (337, 33700, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 47),
  -- Lunatone - Giga Impact - TM68
  (337, 33700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Lunatone - Rock Polish - TM69
  (337, 33700, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 49),
  -- Lunatone - Flash - TM70
  (337, 33700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Lunatone - Stone Edge - TM71
  (337, 33700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 51),
  -- Lunatone - Gyro Ball - TM74
  (337, 33700, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 52),
  -- Lunatone - Psych Up - TM77
  (337, 33700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 53),
  -- Lunatone - Bulldoze - TM78
  (337, 33700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 54),
  -- Lunatone - Rock Slide - TM80
  (337, 33700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 55),
  -- Lunatone - Dream Eater - TM85
  (337, 33700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 56),
  -- Lunatone - Grass Knot - TM86
  (337, 33700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 57),
  -- Lunatone - Swagger - TM87
  (337, 33700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 58),
  -- Lunatone - Sleep Talk - TM88
  (337, 33700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 59),
  -- Lunatone - Substitute - TM90
  (337, 33700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 60),
  -- Lunatone - Trick Room - TM92
  (337, 33700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 61),
  -- Lunatone - Confide - TM100
  (337, 33700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Solrock - Tackle - Level 1
  (338, 33800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solrock - Rock Throw - Level 1
  (338, 33800, 88, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solrock - Confusion - Level 1
  (338, 33800, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solrock - Harden - Level 1
  (338, 33800, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Solrock - Wonder Room - Level 1
  (338, 33800, 472, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Solrock - Rock Throw - Level 5
  (338, 33800, 88, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Solrock - Fire Spin - Level 9
  (338, 33800, 83, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Solrock - Rock Polish - Level 13
  (338, 33800, 397, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Solrock - Psywave - Level 17
  (338, 33800, 149, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Solrock - Embargo - Level 21
  (338, 33800, 373, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Solrock - Rock Slide - Level 25
  (338, 33800, 157, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Solrock - Cosmic Power - Level 29
  (338, 33800, 322, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Solrock - Psychic - Level 33
  (338, 33800, 94, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Solrock - Heal Block - Level 37
  (338, 33800, 377, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Solrock - Stone Edge - Level 41
  (338, 33800, 444, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Solrock - Solar Beam - Level 45
  (338, 33800, 76, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Solrock - Explosion - Level 49
  (338, 33800, 153, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Solrock - Wonder Room - Level 53
  (338, 33800, 472, 13, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Solrock - Psyshock - TM03
  (338, 33800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Solrock - Calm Mind - TM04
  (338, 33800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 20),
  -- Solrock - Toxic - TM06
  (338, 33800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Solrock - Hidden Power - TM10
  (338, 33800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Solrock - Sunny Day - TM11
  (338, 33800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Solrock - Hyper Beam - TM15
  (338, 33800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Solrock - Light Screen - TM16
  (338, 33800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Solrock - Protect - TM17
  (338, 33800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Solrock - Safeguard - TM20
  (338, 33800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Solrock - Frustration - TM21
  (338, 33800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Solrock - Solar Beam - TM22
  (338, 33800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Solrock - Smack Down - TM23
  (338, 33800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 30),
  -- Solrock - Earthquake - TM26
  (338, 33800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Solrock - Return - TM27
  (338, 33800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Solrock - Psychic - TM29
  (338, 33800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 33),
  -- Solrock - Shadow Ball - TM30
  (338, 33800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 34),
  -- Solrock - Double Team - TM32
  (338, 33800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Solrock - Reflect - TM33
  (338, 33800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Solrock - Flamethrower - TM35
  (338, 33800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 37),
  -- Solrock - Sandstorm - TM37
  (338, 33800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 38),
  -- Solrock - Fire Blast - TM38
  (338, 33800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 39),
  -- Solrock - Rock Tomb - TM39
  (338, 33800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 40),
  -- Solrock - Facade - TM42
  (338, 33800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Solrock - Rest - TM44
  (338, 33800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Solrock - Round - TM48
  (338, 33800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Solrock - Overheat - TM50
  (338, 33800, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 44),
  -- Solrock - Charge Beam - TM57
  (338, 33800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 45),
  -- Solrock - Incinerate - TM59
  (338, 33800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 46),
  -- Solrock - Will-O-Wisp - TM61
  (338, 33800, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 47),
  -- Solrock - Acrobatics - TM62
  (338, 33800, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 48),
  -- Solrock - Embargo - TM63
  (338, 33800, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 49),
  -- Solrock - Explosion - TM64
  (338, 33800, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 50),
  -- Solrock - Giga Impact - TM68
  (338, 33800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Solrock - Rock Polish - TM69
  (338, 33800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 52),
  -- Solrock - Flash - TM70
  (338, 33800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 53),
  -- Solrock - Stone Edge - TM71
  (338, 33800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 54),
  -- Solrock - Gyro Ball - TM74
  (338, 33800, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 55),
  -- Solrock - Psych Up - TM77
  (338, 33800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 56),
  -- Solrock - Bulldoze - TM78
  (338, 33800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 57),
  -- Solrock - Rock Slide - TM80
  (338, 33800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 58),
  -- Solrock - Dream Eater - TM85
  (338, 33800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 59),
  -- Solrock - Grass Knot - TM86
  (338, 33800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 60),
  -- Solrock - Swagger - TM87
  (338, 33800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 61),
  -- Solrock - Sleep Talk - TM88
  (338, 33800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 62),
  -- Solrock - Substitute - TM90
  (338, 33800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 63),
  -- Solrock - Trick Room - TM92
  (338, 33800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 64),
  -- Solrock - Confide - TM100
  (338, 33800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud Sport - Level 6
  (339, 33900, 300, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Barboach - Water Sport - Level 6
  (339, 33900, 346, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Water Gun - Level 10
  (339, 33900, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Barboach - Mud Bomb - Level 14
  (339, 33900, 426, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 18
  (339, 33900, 133, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barboach - Water Pulse - Level 22
  (339, 33900, 352, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Barboach - Magnitude - Level 26
  (339, 33900, 222, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Barboach - Rest - Level 31
  (339, 33900, 156, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Barboach - Snore - Level 31
  (339, 33900, 173, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Barboach - Aqua Tail - Level 35
  (339, 33900, 401, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Barboach - Earthquake - Level 39
  (339, 33900, 89, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Barboach - Future Sight - Level 43
  (339, 33900, 248, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Barboach - Fissure - Level 47
  (339, 33900, 90, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Barboach - Toxic - TM06
  (339, 33900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Barboach - Hail - TM07
  (339, 33900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Barboach - Hidden Power - TM10
  (339, 33900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Barboach - Ice Beam - TM13
  (339, 33900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Barboach - Blizzard - TM14
  (339, 33900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Barboach - Protect - TM17
  (339, 33900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Barboach - Rain Dance - TM18
  (339, 33900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Barboach - Frustration - TM21
  (339, 33900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Barboach - Earthquake - TM26
  (339, 33900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 23),
  -- Barboach - Return - TM27
  (339, 33900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Barboach - Double Team - TM32
  (339, 33900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Barboach - Sandstorm - TM37
  (339, 33900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 26),
  -- Barboach - Rock Tomb - TM39
  (339, 33900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Barboach - Facade - TM42
  (339, 33900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Barboach - Rest - TM44
  (339, 33900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Barboach - Attract - TM45
  (339, 33900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Barboach - Round - TM48
  (339, 33900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Barboach - Scald - TM55
  (339, 33900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 32),
  -- Barboach - Bulldoze - TM78
  (339, 33900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 33),
  -- Barboach - Swagger - TM87
  (339, 33900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Barboach - Sleep Talk - TM88
  (339, 33900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Barboach - Substitute - TM90
  (339, 33900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Barboach - Confide - TM100
  (339, 33900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Barboach - Surf - HM03
  (339, 33900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 38),
  -- Barboach - Waterfall - HM05
  (339, 33900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 39),
  -- Barboach - Take Down - Egg
  (339, 33900, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Barboach - Thrash - Egg
  (339, 33900, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Barboach - Hydro Pump - Egg
  (339, 33900, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Barboach - Flail - Egg
  (339, 33900, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Barboach - Spark - Egg
  (339, 33900, 209, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Barboach - Whirlpool - Egg
  (339, 33900, 250, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Barboach - Muddy Water - Egg
  (339, 33900, 330, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Barboach - Mud Shot - Egg
  (339, 33900, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Barboach - Dragon Dance - Egg
  (339, 33900, 349, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Barboach - Earth Power - Egg
  (339, 33900, 414, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Mud Sport - Level 1
  (340, 34000, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Water Sport - Level 1
  (340, 34000, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Zen Headbutt - Level 1
  (340, 34000, 428, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whiscash - Mud Sport - Level 6
  (340, 34000, 300, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Whiscash - Water Sport - Level 6
  (340, 34000, 346, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Whiscash - Water Gun - Level 10
  (340, 34000, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Whiscash - Mud Bomb - Level 14
  (340, 34000, 426, 13, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Whiscash - Amnesia - Level 18
  (340, 34000, 133, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Whiscash - Water Pulse - Level 22
  (340, 34000, 352, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Whiscash - Magnitude - Level 26
  (340, 34000, 222, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Whiscash - Rest - Level 33
  (340, 34000, 156, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Whiscash - Snore - Level 33
  (340, 34000, 173, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Whiscash - Aqua Tail - Level 39
  (340, 34000, 401, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Whiscash - Earthquake - Level 45
  (340, 34000, 89, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Whiscash - Future Sight - Level 51
  (340, 34000, 248, 13, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Whiscash - Fissure - Level 57
  (340, 34000, 90, 13, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Whiscash - Toxic - TM06
  (340, 34000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Whiscash - Hail - TM07
  (340, 34000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Whiscash - Hidden Power - TM10
  (340, 34000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Whiscash - Ice Beam - TM13
  (340, 34000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Whiscash - Blizzard - TM14
  (340, 34000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Whiscash - Hyper Beam - TM15
  (340, 34000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Whiscash - Protect - TM17
  (340, 34000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Whiscash - Rain Dance - TM18
  (340, 34000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Whiscash - Frustration - TM21
  (340, 34000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Whiscash - Earthquake - TM26
  (340, 34000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Whiscash - Return - TM27
  (340, 34000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Whiscash - Double Team - TM32
  (340, 34000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Whiscash - Sandstorm - TM37
  (340, 34000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 31),
  -- Whiscash - Rock Tomb - TM39
  (340, 34000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Whiscash - Facade - TM42
  (340, 34000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Whiscash - Rest - TM44
  (340, 34000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Whiscash - Attract - TM45
  (340, 34000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Whiscash - Round - TM48
  (340, 34000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Whiscash - Scald - TM55
  (340, 34000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 37),
  -- Whiscash - Giga Impact - TM68
  (340, 34000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 38),
  -- Whiscash - Stone Edge - TM71
  (340, 34000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 39),
  -- Whiscash - Bulldoze - TM78
  (340, 34000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 40),
  -- Whiscash - Rock Slide - TM80
  (340, 34000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 41),
  -- Whiscash - Swagger - TM87
  (340, 34000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Whiscash - Sleep Talk - TM88
  (340, 34000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Whiscash - Substitute - TM90
  (340, 34000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Whiscash - Rock Smash - TM94
  (340, 34000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Whiscash - Confide - TM100
  (340, 34000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Whiscash - Surf - HM03
  (340, 34000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Whiscash - Strength - HM04
  (340, 34000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Whiscash - Waterfall - HM05
  (340, 34000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 49),
  -- Corphish - Bubble - Level 1
  (341, 34100, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 7
  (341, 34100, 106, 13, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Corphish - Vise Grip - Level 10
  (341, 34100, 11, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Corphish - Leer - Level 13
  (341, 34100, 43, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 20
  (341, 34100, 61, 13, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Corphish - Protect - Level 23
  (341, 34100, 182, 13, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Corphish - Knock Off - Level 26
  (341, 34100, 282, 13, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Corphish - Taunt - Level 32
  (341, 34100, 269, 13, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 35
  (341, 34100, 400, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Corphish - Crabhammer - Level 38
  (341, 34100, 152, 13, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Corphish - Swords Dance - Level 44
  (341, 34100, 14, 13, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Corphish - Crunch - Level 47
  (341, 34100, 242, 13, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Corphish - Guillotine - Level 53
  (341, 34100, 12, 13, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Corphish - Hone Claws - TM01
  (341, 34100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Corphish - Toxic - TM06
  (341, 34100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Corphish - Hail - TM07
  (341, 34100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Corphish - Hidden Power - TM10
  (341, 34100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Corphish - Taunt - TM12
  (341, 34100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 18),
  -- Corphish - Ice Beam - TM13
  (341, 34100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Corphish - Blizzard - TM14
  (341, 34100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Corphish - Protect - TM17
  (341, 34100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Corphish - Rain Dance - TM18
  (341, 34100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Corphish - Frustration - TM21
  (341, 34100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Corphish - Return - TM27
  (341, 34100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Corphish - Dig - TM28
  (341, 34100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Corphish - Brick Break - TM31
  (341, 34100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Corphish - Double Team - TM32
  (341, 34100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Corphish - Sludge Bomb - TM36
  (341, 34100, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 28),
  -- Corphish - Rock Tomb - TM39
  (341, 34100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Corphish - Aerial Ace - TM40
  (341, 34100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Corphish - Facade - TM42
  (341, 34100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Corphish - Rest - TM44
  (341, 34100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Corphish - Attract - TM45
  (341, 34100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Corphish - Round - TM48
  (341, 34100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Corphish - False Swipe - TM54
  (341, 34100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 35),
  -- Corphish - Scald - TM55
  (341, 34100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 36),
  -- Corphish - Fling - TM56
  (341, 34100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Corphish - Payback - TM66
  (341, 34100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 38),
  -- Corphish - Swords Dance - TM75
  (341, 34100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 39),
  -- Corphish - Rock Slide - TM80
  (341, 34100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 40),
  -- Corphish - X-Scissor - TM81
  (341, 34100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 41),
  -- Corphish - Swagger - TM87
  (341, 34100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Corphish - Sleep Talk - TM88
  (341, 34100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Corphish - Substitute - TM90
  (341, 34100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Corphish - Rock Smash - TM94
  (341, 34100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Corphish - Confide - TM100
  (341, 34100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Corphish - Cut - HM01
  (341, 34100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Corphish - Surf - HM03
  (341, 34100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 48),
  -- Corphish - Strength - HM04
  (341, 34100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 49),
  -- Corphish - Waterfall - HM05
  (341, 34100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 50),
  -- Corphish - Body Slam - Egg
  (341, 34100, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corphish - Double-Edge - Egg
  (341, 34100, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corphish - Metal Claw - Egg
  (341, 34100, 232, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Ancient Power - Egg
  (341, 34100, 246, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Superpower - Egg
  (341, 34100, 276, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Knock Off - Egg
  (341, 34100, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corphish - Endeavor - Egg
  (341, 34100, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corphish - Mud Sport - Egg
  (341, 34100, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corphish - Dragon Dance - Egg
  (341, 34100, 349, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corphish - Trump Card - Egg
  (341, 34100, 376, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corphish - Switcheroo - Egg
  (341, 34100, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Corphish - Aqua Jet - Egg
  (341, 34100, 453, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Corphish - Chip Away - Egg
  (341, 34100, 498, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Crawdaunt - Vise Grip - Level 1
  (342, 34200, 11, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Guillotine - Level 1
  (342, 34200, 12, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Bubble - Level 1
  (342, 34200, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crawdaunt - Harden - Level 7
  (342, 34200, 106, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Crawdaunt - Vise Grip - Level 10
  (342, 34200, 11, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Crawdaunt - Leer - Level 13
  (342, 34200, 43, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crawdaunt - Bubble Beam - Level 20
  (342, 34200, 61, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Crawdaunt - Protect - Level 23
  (342, 34200, 182, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Crawdaunt - Knock Off - Level 26
  (342, 34200, 282, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Crawdaunt - Swift - Level 30
  (342, 34200, 129, 13, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Crawdaunt - Taunt - Level 34
  (342, 34200, 269, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Crawdaunt - Night Slash - Level 39
  (342, 34200, 400, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Crawdaunt - Crabhammer - Level 44
  (342, 34200, 152, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Crawdaunt - Swords Dance - Level 52
  (342, 34200, 14, 13, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Crawdaunt - Crunch - Level 57
  (342, 34200, 242, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Crawdaunt - Guillotine - Level 65
  (342, 34200, 12, 13, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Crawdaunt - Hone Claws - TM01
  (342, 34200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 19),
  -- Crawdaunt - Toxic - TM06
  (342, 34200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Crawdaunt - Hail - TM07
  (342, 34200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Crawdaunt - Hidden Power - TM10
  (342, 34200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Crawdaunt - Taunt - TM12
  (342, 34200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Crawdaunt - Ice Beam - TM13
  (342, 34200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Crawdaunt - Blizzard - TM14
  (342, 34200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 25),
  -- Crawdaunt - Hyper Beam - TM15
  (342, 34200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Crawdaunt - Protect - TM17
  (342, 34200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Crawdaunt - Rain Dance - TM18
  (342, 34200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Crawdaunt - Frustration - TM21
  (342, 34200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Crawdaunt - Return - TM27
  (342, 34200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Crawdaunt - Dig - TM28
  (342, 34200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Crawdaunt - Brick Break - TM31
  (342, 34200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Crawdaunt - Double Team - TM32
  (342, 34200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Crawdaunt - Sludge Wave - TM34
  (342, 34200, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 34),
  -- Crawdaunt - Sludge Bomb - TM36
  (342, 34200, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 35),
  -- Crawdaunt - Rock Tomb - TM39
  (342, 34200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Crawdaunt - Aerial Ace - TM40
  (342, 34200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Crawdaunt - Facade - TM42
  (342, 34200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Crawdaunt - Rest - TM44
  (342, 34200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Crawdaunt - Attract - TM45
  (342, 34200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 40),
  -- Crawdaunt - Round - TM48
  (342, 34200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Crawdaunt - False Swipe - TM54
  (342, 34200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 42),
  -- Crawdaunt - Scald - TM55
  (342, 34200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 43),
  -- Crawdaunt - Fling - TM56
  (342, 34200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Crawdaunt - Payback - TM66
  (342, 34200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Crawdaunt - Retaliate - TM67
  (342, 34200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Crawdaunt - Giga Impact - TM68
  (342, 34200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Crawdaunt - Swords Dance - TM75
  (342, 34200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 48),
  -- Crawdaunt - Rock Slide - TM80
  (342, 34200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Crawdaunt - X-Scissor - TM81
  (342, 34200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 50),
  -- Crawdaunt - Swagger - TM87
  (342, 34200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Crawdaunt - Sleep Talk - TM88
  (342, 34200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Crawdaunt - Substitute - TM90
  (342, 34200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Crawdaunt - Rock Smash - TM94
  (342, 34200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 54),
  -- Crawdaunt - Snarl - TM95
  (342, 34200, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 55),
  -- Crawdaunt - Nature Power - TM96
  (342, 34200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 56),
  -- Crawdaunt - Dark Pulse - TM97
  (342, 34200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 57),
  -- Crawdaunt - Confide - TM100
  (342, 34200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Crawdaunt - Cut - HM01
  (342, 34200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 59),
  -- Crawdaunt - Surf - HM03
  (342, 34200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 60),
  -- Crawdaunt - Strength - HM04
  (342, 34200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 61),
  -- Crawdaunt - Waterfall - HM05
  (342, 34200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 62),
  -- Baltoy - Confusion - Level 1
  (343, 34300, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baltoy - Harden - Level 1
  (343, 34300, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 4
  (343, 34300, 229, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Baltoy - Mud-Slap - Level 7
  (343, 34300, 189, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Baltoy - Rock Tomb - Level 10
  (343, 34300, 317, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Baltoy - Psybeam - Level 13
  (343, 34300, 60, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Baltoy - Power Trick - Level 17
  (343, 34300, 379, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 21
  (343, 34300, 246, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Baltoy - Self-Destruct - Level 25
  (343, 34300, 120, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Baltoy - Extrasensory - Level 28
  (343, 34300, 326, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Baltoy - Cosmic Power - Level 31
  (343, 34300, 322, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Baltoy - Guard Split - Level 34
  (343, 34300, 470, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Baltoy - Power Split - Level 34
  (343, 34300, 471, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Baltoy - Earth Power - Level 37
  (343, 34300, 414, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Baltoy - Sandstorm - Level 41
  (343, 34300, 201, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Baltoy - Heal Block - Level 45
  (343, 34300, 377, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Baltoy - Explosion - Level 49
  (343, 34300, 153, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Baltoy - Psyshock - TM03
  (343, 34300, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Baltoy - Calm Mind - TM04
  (343, 34300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Baltoy - Toxic - TM06
  (343, 34300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Baltoy - Hidden Power - TM10
  (343, 34300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Baltoy - Sunny Day - TM11
  (343, 34300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Baltoy - Ice Beam - TM13
  (343, 34300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Baltoy - Light Screen - TM16
  (343, 34300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Baltoy - Protect - TM17
  (343, 34300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Baltoy - Rain Dance - TM18
  (343, 34300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Baltoy - Safeguard - TM20
  (343, 34300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Baltoy - Frustration - TM21
  (343, 34300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Baltoy - Solar Beam - TM22
  (343, 34300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Baltoy - Smack Down - TM23
  (343, 34300, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 30),
  -- Baltoy - Earthquake - TM26
  (343, 34300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Baltoy - Return - TM27
  (343, 34300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Baltoy - Dig - TM28
  (343, 34300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 33),
  -- Baltoy - Psychic - TM29
  (343, 34300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 34),
  -- Baltoy - Shadow Ball - TM30
  (343, 34300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Baltoy - Double Team - TM32
  (343, 34300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Baltoy - Reflect - TM33
  (343, 34300, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 37),
  -- Baltoy - Sandstorm - TM37
  (343, 34300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 38),
  -- Baltoy - Rock Tomb - TM39
  (343, 34300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Baltoy - Facade - TM42
  (343, 34300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Baltoy - Rest - TM44
  (343, 34300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Baltoy - Round - TM48
  (343, 34300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 42),
  -- Baltoy - Charge Beam - TM57
  (343, 34300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 43),
  -- Baltoy - Explosion - TM64
  (343, 34300, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 44),
  -- Baltoy - Rock Polish - TM69
  (343, 34300, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 45),
  -- Baltoy - Flash - TM70
  (343, 34300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 46),
  -- Baltoy - Gyro Ball - TM74
  (343, 34300, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 47),
  -- Baltoy - Psych Up - TM77
  (343, 34300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 48),
  -- Baltoy - Bulldoze - TM78
  (343, 34300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 49),
  -- Baltoy - Rock Slide - TM80
  (343, 34300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 50),
  -- Baltoy - Dream Eater - TM85
  (343, 34300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 51),
  -- Baltoy - Grass Knot - TM86
  (343, 34300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 52),
  -- Baltoy - Swagger - TM87
  (343, 34300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Baltoy - Sleep Talk - TM88
  (343, 34300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Baltoy - Substitute - TM90
  (343, 34300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 55),
  -- Baltoy - Trick Room - TM92
  (343, 34300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 56),
  -- Baltoy - Dazzling Gleam - TM99
  (343, 34300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 57),
  -- Baltoy - Confide - TM100
  (343, 34300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Claydol - Confusion - Level 1
  (344, 34400, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Claydol - Teleport - Level 1
  (344, 34400, 100, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Claydol - Harden - Level 1
  (344, 34400, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Claydol - Rapid Spin - Level 1
  (344, 34400, 229, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Claydol - Rapid Spin - Level 4
  (344, 34400, 229, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Claydol - Mud-Slap - Level 7
  (344, 34400, 189, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Claydol - Rock Tomb - Level 10
  (344, 34400, 317, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Claydol - Psybeam - Level 13
  (344, 34400, 60, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Claydol - Power Trick - Level 17
  (344, 34400, 379, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Claydol - Ancient Power - Level 21
  (344, 34400, 246, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Claydol - Self-Destruct - Level 25
  (344, 34400, 120, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Claydol - Extrasensory - Level 28
  (344, 34400, 326, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Claydol - Cosmic Power - Level 31
  (344, 34400, 322, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Claydol - Guard Split - Level 34
  (344, 34400, 470, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Claydol - Power Split - Level 34
  (344, 34400, 471, 13, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Claydol - Hyper Beam - Level 36
  (344, 34400, 63, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Claydol - Earth Power - Level 40
  (344, 34400, 414, 13, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Claydol - Sandstorm - Level 47
  (344, 34400, 201, 13, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Claydol - Heal Block - Level 54
  (344, 34400, 377, 13, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Claydol - Explosion - Level 61
  (344, 34400, 153, 13, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Claydol - Psyshock - TM03
  (344, 34400, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 21),
  -- Claydol - Calm Mind - TM04
  (344, 34400, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Claydol - Toxic - TM06
  (344, 34400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Claydol - Hidden Power - TM10
  (344, 34400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Claydol - Sunny Day - TM11
  (344, 34400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Claydol - Ice Beam - TM13
  (344, 34400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 26),
  -- Claydol - Hyper Beam - TM15
  (344, 34400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Claydol - Light Screen - TM16
  (344, 34400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 28),
  -- Claydol - Protect - TM17
  (344, 34400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Claydol - Rain Dance - TM18
  (344, 34400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Claydol - Safeguard - TM20
  (344, 34400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 31),
  -- Claydol - Frustration - TM21
  (344, 34400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Claydol - Solar Beam - TM22
  (344, 34400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 33),
  -- Claydol - Smack Down - TM23
  (344, 34400, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 34),
  -- Claydol - Earthquake - TM26
  (344, 34400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 35),
  -- Claydol - Return - TM27
  (344, 34400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 36),
  -- Claydol - Dig - TM28
  (344, 34400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 37),
  -- Claydol - Psychic - TM29
  (344, 34400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 38),
  -- Claydol - Shadow Ball - TM30
  (344, 34400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 39),
  -- Claydol - Double Team - TM32
  (344, 34400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 40),
  -- Claydol - Reflect - TM33
  (344, 34400, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 41),
  -- Claydol - Sandstorm - TM37
  (344, 34400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 42),
  -- Claydol - Rock Tomb - TM39
  (344, 34400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 43),
  -- Claydol - Facade - TM42
  (344, 34400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 44),
  -- Claydol - Rest - TM44
  (344, 34400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 45),
  -- Claydol - Round - TM48
  (344, 34400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Claydol - Charge Beam - TM57
  (344, 34400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 47),
  -- Claydol - Explosion - TM64
  (344, 34400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 48),
  -- Claydol - Giga Impact - TM68
  (344, 34400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 49),
  -- Claydol - Rock Polish - TM69
  (344, 34400, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 50),
  -- Claydol - Flash - TM70
  (344, 34400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 51),
  -- Claydol - Stone Edge - TM71
  (344, 34400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 52),
  -- Claydol - Gyro Ball - TM74
  (344, 34400, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 53),
  -- Claydol - Psych Up - TM77
  (344, 34400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Claydol - Bulldoze - TM78
  (344, 34400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 55),
  -- Claydol - Rock Slide - TM80
  (344, 34400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 56),
  -- Claydol - Dream Eater - TM85
  (344, 34400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 57),
  -- Claydol - Grass Knot - TM86
  (344, 34400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 58),
  -- Claydol - Swagger - TM87
  (344, 34400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Claydol - Sleep Talk - TM88
  (344, 34400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Claydol - Substitute - TM90
  (344, 34400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Claydol - Trick Room - TM92
  (344, 34400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 62),
  -- Claydol - Rock Smash - TM94
  (344, 34400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 63),
  -- Claydol - Dazzling Gleam - TM99
  (344, 34400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 64),
  -- Claydol - Confide - TM100
  (344, 34400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Claydol - Strength - HM04
  (344, 34400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Lileep - Constrict - Level 1
  (345, 34500, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lileep - Astonish - Level 1
  (345, 34500, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 8
  (345, 34500, 51, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Lileep - Ingrain - Level 15
  (345, 34500, 275, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lileep - Confuse Ray - Level 22
  (345, 34500, 109, 13, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Lileep - Amnesia - Level 29
  (345, 34500, 133, 13, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lileep - Gastro Acid - Level 36
  (345, 34500, 380, 13, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Lileep - Ancient Power - Level 43
  (345, 34500, 246, 13, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Lileep - Energy Ball - Level 50
  (345, 34500, 412, 13, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Lileep - Stockpile - Level 57
  (345, 34500, 254, 13, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Lileep - Spit Up - Level 57
  (345, 34500, 255, 13, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Lileep - Swallow - Level 57
  (345, 34500, 256, 13, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Lileep - Wring Out - Level 64
  (345, 34500, 378, 13, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Lileep - Toxic - TM06
  (345, 34500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Lileep - Hidden Power - TM10
  (345, 34500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Lileep - Sunny Day - TM11
  (345, 34500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Lileep - Protect - TM17
  (345, 34500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Lileep - Frustration - TM21
  (345, 34500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Lileep - Solar Beam - TM22
  (345, 34500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 19),
  -- Lileep - Smack Down - TM23
  (345, 34500, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 20),
  -- Lileep - Return - TM27
  (345, 34500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Lileep - Double Team - TM32
  (345, 34500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Lileep - Sludge Bomb - TM36
  (345, 34500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 23),
  -- Lileep - Sandstorm - TM37
  (345, 34500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 24),
  -- Lileep - Rock Tomb - TM39
  (345, 34500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 25),
  -- Lileep - Facade - TM42
  (345, 34500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Lileep - Rest - TM44
  (345, 34500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Lileep - Attract - TM45
  (345, 34500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Lileep - Round - TM48
  (345, 34500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Lileep - Energy Ball - TM53
  (345, 34500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 30),
  -- Lileep - Rock Polish - TM69
  (345, 34500, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 31),
  -- Lileep - Flash - TM70
  (345, 34500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 32),
  -- Lileep - Swords Dance - TM75
  (345, 34500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Lileep - Rock Slide - TM80
  (345, 34500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 34),
  -- Lileep - Infestation - TM83
  (345, 34500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 35),
  -- Lileep - Grass Knot - TM86
  (345, 34500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 36),
  -- Lileep - Swagger - TM87
  (345, 34500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Lileep - Sleep Talk - TM88
  (345, 34500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Lileep - Substitute - TM90
  (345, 34500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Lileep - Confide - TM100
  (345, 34500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Lileep - Mega Drain - Egg
  (345, 34500, 72, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lileep - Recover - Egg
  (345, 34500, 105, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lileep - Barrier - Egg
  (345, 34500, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lileep - Curse - Egg
  (345, 34500, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lileep - Endure - Egg
  (345, 34500, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lileep - Mirror Coat - Egg
  (345, 34500, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lileep - Tickle - Egg
  (345, 34500, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lileep - Wring Out - Egg
  (345, 34500, 378, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lileep - Stealth Rock - Egg
  (345, 34500, 446, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cradily - Acid - Level 1
  (346, 34600, 51, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cradily - Constrict - Level 1
  (346, 34600, 132, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cradily - Stockpile - Level 1
  (346, 34600, 254, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cradily - Spit Up - Level 1
  (346, 34600, 255, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cradily - Swallow - Level 1
  (346, 34600, 256, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cradily - Ingrain - Level 1
  (346, 34600, 275, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cradily - Astonish - Level 1
  (346, 34600, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cradily - Wring Out - Level 1
  (346, 34600, 378, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Cradily - Acid - Level 8
  (346, 34600, 51, 13, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Cradily - Ingrain - Level 15
  (346, 34600, 275, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Cradily - Confuse Ray - Level 22
  (346, 34600, 109, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Cradily - Amnesia - Level 29
  (346, 34600, 133, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Cradily - Ancient Power - Level 36
  (346, 34600, 246, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Cradily - Gastro Acid - Level 46
  (346, 34600, 380, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Cradily - Energy Ball - Level 56
  (346, 34600, 412, 13, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Cradily - Stockpile - Level 66
  (346, 34600, 254, 13, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Cradily - Spit Up - Level 66
  (346, 34600, 255, 13, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Cradily - Swallow - Level 66
  (346, 34600, 256, 13, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Cradily - Wring Out - Level 76
  (346, 34600, 378, 13, NULL, 1, 76, NULL, NULL, NULL, 19),
  -- Cradily - Toxic - TM06
  (346, 34600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Cradily - Hidden Power - TM10
  (346, 34600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Cradily - Sunny Day - TM11
  (346, 34600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Cradily - Hyper Beam - TM15
  (346, 34600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Cradily - Protect - TM17
  (346, 34600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Cradily - Frustration - TM21
  (346, 34600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Cradily - Solar Beam - TM22
  (346, 34600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 26),
  -- Cradily - Smack Down - TM23
  (346, 34600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 27),
  -- Cradily - Earthquake - TM26
  (346, 34600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Cradily - Return - TM27
  (346, 34600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Cradily - Double Team - TM32
  (346, 34600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Cradily - Sludge Wave - TM34
  (346, 34600, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 31),
  -- Cradily - Sludge Bomb - TM36
  (346, 34600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 32),
  -- Cradily - Sandstorm - TM37
  (346, 34600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 33),
  -- Cradily - Rock Tomb - TM39
  (346, 34600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Cradily - Facade - TM42
  (346, 34600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Cradily - Rest - TM44
  (346, 34600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Cradily - Attract - TM45
  (346, 34600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Cradily - Round - TM48
  (346, 34600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Cradily - Energy Ball - TM53
  (346, 34600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Cradily - Giga Impact - TM68
  (346, 34600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Cradily - Rock Polish - TM69
  (346, 34600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Cradily - Flash - TM70
  (346, 34600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Cradily - Stone Edge - TM71
  (346, 34600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 43),
  -- Cradily - Swords Dance - TM75
  (346, 34600, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 44),
  -- Cradily - Bulldoze - TM78
  (346, 34600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Cradily - Rock Slide - TM80
  (346, 34600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Cradily - Infestation - TM83
  (346, 34600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 47),
  -- Cradily - Grass Knot - TM86
  (346, 34600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Cradily - Swagger - TM87
  (346, 34600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Cradily - Sleep Talk - TM88
  (346, 34600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Cradily - Substitute - TM90
  (346, 34600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Cradily - Rock Smash - TM94
  (346, 34600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 52),
  -- Cradily - Confide - TM100
  (346, 34600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Cradily - Strength - HM04
  (346, 34600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Anorith - Scratch - Level 1
  (347, 34700, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Anorith - Harden - Level 1
  (347, 34700, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Anorith - Mud Sport - Level 7
  (347, 34700, 300, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Anorith - Water Gun - Level 13
  (347, 34700, 55, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Anorith - Metal Claw - Level 19
  (347, 34700, 232, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Anorith - Protect - Level 25
  (347, 34700, 182, 13, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Anorith - Ancient Power - Level 31
  (347, 34700, 246, 13, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Anorith - Fury Cutter - Level 37
  (347, 34700, 210, 13, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Anorith - Slash - Level 43
  (347, 34700, 163, 13, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Anorith - Rock Blast - Level 49
  (347, 34700, 350, 13, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Anorith - Crush Claw - Level 55
  (347, 34700, 306, 13, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Anorith - X-Scissor - Level 61
  (347, 34700, 404, 13, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Anorith - Hone Claws - TM01
  (347, 34700, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 13),
  -- Anorith - Toxic - TM06
  (347, 34700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Anorith - Hidden Power - TM10
  (347, 34700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Anorith - Sunny Day - TM11
  (347, 34700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Anorith - Protect - TM17
  (347, 34700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Anorith - Frustration - TM21
  (347, 34700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 18),
  -- Anorith - Smack Down - TM23
  (347, 34700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 19),
  -- Anorith - Return - TM27
  (347, 34700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Anorith - Dig - TM28
  (347, 34700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 21),
  -- Anorith - Brick Break - TM31
  (347, 34700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 22),
  -- Anorith - Double Team - TM32
  (347, 34700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Anorith - Sandstorm - TM37
  (347, 34700, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 24),
  -- Anorith - Rock Tomb - TM39
  (347, 34700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 25),
  -- Anorith - Aerial Ace - TM40
  (347, 34700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 26),
  -- Anorith - Facade - TM42
  (347, 34700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Anorith - Rest - TM44
  (347, 34700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Anorith - Attract - TM45
  (347, 34700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Anorith - Round - TM48
  (347, 34700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Anorith - False Swipe - TM54
  (347, 34700, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 31),
  -- Anorith - Rock Polish - TM69
  (347, 34700, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 32),
  -- Anorith - Swords Dance - TM75
  (347, 34700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Anorith - Struggle Bug - TM76
  (347, 34700, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 34),
  -- Anorith - Rock Slide - TM80
  (347, 34700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Anorith - X-Scissor - TM81
  (347, 34700, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 36),
  -- Anorith - Swagger - TM87
  (347, 34700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Anorith - Sleep Talk - TM88
  (347, 34700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Anorith - Substitute - TM90
  (347, 34700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Anorith - Rock Smash - TM94
  (347, 34700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Anorith - Confide - TM100
  (347, 34700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Anorith - Cut - HM01
  (347, 34700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 42),
  -- Anorith - Sand Attack - Egg
  (347, 34700, 28, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Anorith - Screech - Egg
  (347, 34700, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Anorith - Curse - Egg
  (347, 34700, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Anorith - Rapid Spin - Egg
  (347, 34700, 229, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Anorith - Knock Off - Egg
  (347, 34700, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Anorith - Iron Defense - Egg
  (347, 34700, 334, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Anorith - Water Pulse - Egg
  (347, 34700, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Anorith - Cross Poison - Egg
  (347, 34700, 440, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Anorith - Aqua Jet - Egg
  (347, 34700, 453, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Armaldo - Scratch - Level 1
  (348, 34800, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armaldo - Water Gun - Level 1
  (348, 34800, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armaldo - Harden - Level 1
  (348, 34800, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armaldo - Mud Sport - Level 1
  (348, 34800, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armaldo - Crush Claw - Level 1
  (348, 34800, 306, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Armaldo - Mud Sport - Level 7
  (348, 34800, 300, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Armaldo - Water Gun - Level 13
  (348, 34800, 55, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Armaldo - Metal Claw - Level 19
  (348, 34800, 232, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Armaldo - Protect - Level 25
  (348, 34800, 182, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Armaldo - Ancient Power - Level 31
  (348, 34800, 246, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Armaldo - Fury Cutter - Level 37
  (348, 34800, 210, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Armaldo - Slash - Level 46
  (348, 34800, 163, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Armaldo - Rock Blast - Level 55
  (348, 34800, 350, 13, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Armaldo - Crush Claw - Level 67
  (348, 34800, 306, 13, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Armaldo - X-Scissor - Level 73
  (348, 34800, 404, 13, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Armaldo - Hone Claws - TM01
  (348, 34800, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Armaldo - Toxic - TM06
  (348, 34800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Armaldo - Hidden Power - TM10
  (348, 34800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Armaldo - Sunny Day - TM11
  (348, 34800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Armaldo - Hyper Beam - TM15
  (348, 34800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Armaldo - Protect - TM17
  (348, 34800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Armaldo - Frustration - TM21
  (348, 34800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Armaldo - Smack Down - TM23
  (348, 34800, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 23),
  -- Armaldo - Earthquake - TM26
  (348, 34800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Armaldo - Return - TM27
  (348, 34800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Armaldo - Dig - TM28
  (348, 34800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Armaldo - Brick Break - TM31
  (348, 34800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Armaldo - Double Team - TM32
  (348, 34800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Armaldo - Sandstorm - TM37
  (348, 34800, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Armaldo - Rock Tomb - TM39
  (348, 34800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Armaldo - Aerial Ace - TM40
  (348, 34800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Armaldo - Facade - TM42
  (348, 34800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Armaldo - Rest - TM44
  (348, 34800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Armaldo - Attract - TM45
  (348, 34800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Armaldo - Round - TM48
  (348, 34800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Armaldo - False Swipe - TM54
  (348, 34800, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 36),
  -- Armaldo - Giga Impact - TM68
  (348, 34800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Armaldo - Rock Polish - TM69
  (348, 34800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 38),
  -- Armaldo - Stone Edge - TM71
  (348, 34800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 39),
  -- Armaldo - Swords Dance - TM75
  (348, 34800, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 40),
  -- Armaldo - Struggle Bug - TM76
  (348, 34800, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 41),
  -- Armaldo - Bulldoze - TM78
  (348, 34800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 42),
  -- Armaldo - Rock Slide - TM80
  (348, 34800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 43),
  -- Armaldo - X-Scissor - TM81
  (348, 34800, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 44),
  -- Armaldo - Swagger - TM87
  (348, 34800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Armaldo - Sleep Talk - TM88
  (348, 34800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Armaldo - Substitute - TM90
  (348, 34800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Armaldo - Flash Cannon - TM91
  (348, 34800, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 48),
  -- Armaldo - Rock Smash - TM94
  (348, 34800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Armaldo - Confide - TM100
  (348, 34800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Armaldo - Cut - HM01
  (348, 34800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Armaldo - Strength - HM04
  (348, 34800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 13, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 30
  (349, 34900, 175, 13, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Feebas - Toxic - TM06
  (349, 34900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 4),
  -- Feebas - Hail - TM07
  (349, 34900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 5),
  -- Feebas - Hidden Power - TM10
  (349, 34900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 6),
  -- Feebas - Ice Beam - TM13
  (349, 34900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 7),
  -- Feebas - Blizzard - TM14
  (349, 34900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 8),
  -- Feebas - Light Screen - TM16
  (349, 34900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 9),
  -- Feebas - Protect - TM17
  (349, 34900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 10),
  -- Feebas - Rain Dance - TM18
  (349, 34900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 11),
  -- Feebas - Frustration - TM21
  (349, 34900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 12),
  -- Feebas - Return - TM27
  (349, 34900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 13),
  -- Feebas - Double Team - TM32
  (349, 34900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 14),
  -- Feebas - Facade - TM42
  (349, 34900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 15),
  -- Feebas - Rest - TM44
  (349, 34900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 16),
  -- Feebas - Attract - TM45
  (349, 34900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 17),
  -- Feebas - Round - TM48
  (349, 34900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 18),
  -- Feebas - Scald - TM55
  (349, 34900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 19),
  -- Feebas - Swagger - TM87
  (349, 34900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 20),
  -- Feebas - Sleep Talk - TM88
  (349, 34900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 21),
  -- Feebas - Substitute - TM90
  (349, 34900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 22),
  -- Feebas - Confide - TM100
  (349, 34900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 23),
  -- Feebas - Surf - HM03
  (349, 34900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 24),
  -- Feebas - Waterfall - HM05
  (349, 34900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 25),
  -- Feebas - Mist - Egg
  (349, 34900, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Feebas - Hypnosis - Egg
  (349, 34900, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Feebas - Confuse Ray - Egg
  (349, 34900, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Feebas - Haze - Egg
  (349, 34900, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Feebas - Dragon Breath - Egg
  (349, 34900, 225, 13, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Feebas - Iron Tail - Egg
  (349, 34900, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Feebas - Mirror Coat - Egg
  (349, 34900, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Feebas - Mud Sport - Egg
  (349, 34900, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Feebas - Tickle - Egg
  (349, 34900, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Feebas - Brine - Egg
  (349, 34900, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Feebas - Dragon Pulse - Egg
  (349, 34900, 406, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Feebas - Captivate - Egg
  (349, 34900, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Water Sport - Level 5
  (350, 35000, 346, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Milotic - Refresh - Level 9
  (350, 35000, 287, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Milotic - Water Pulse - Level 13
  (350, 35000, 352, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Milotic - Twister - Level 17
  (350, 35000, 239, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Milotic - Recover - Level 21
  (350, 35000, 105, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Milotic - Captivate - Level 25
  (350, 35000, 445, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Milotic - Aqua Tail - Level 29
  (350, 35000, 401, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Milotic - Rain Dance - Level 33
  (350, 35000, 240, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Milotic - Hydro Pump - Level 37
  (350, 35000, 56, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Milotic - Attract - Level 41
  (350, 35000, 213, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Milotic - Safeguard - Level 45
  (350, 35000, 219, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Milotic - Aqua Ring - Level 49
  (350, 35000, 392, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Milotic - Toxic - TM06
  (350, 35000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Milotic - Hail - TM07
  (350, 35000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 15),
  -- Milotic - Hidden Power - TM10
  (350, 35000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Milotic - Ice Beam - TM13
  (350, 35000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Milotic - Blizzard - TM14
  (350, 35000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Milotic - Hyper Beam - TM15
  (350, 35000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 19),
  -- Milotic - Light Screen - TM16
  (350, 35000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 20),
  -- Milotic - Protect - TM17
  (350, 35000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Milotic - Rain Dance - TM18
  (350, 35000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Milotic - Safeguard - TM20
  (350, 35000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 23),
  -- Milotic - Frustration - TM21
  (350, 35000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Milotic - Return - TM27
  (350, 35000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Milotic - Double Team - TM32
  (350, 35000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Milotic - Facade - TM42
  (350, 35000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Milotic - Rest - TM44
  (350, 35000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Milotic - Attract - TM45
  (350, 35000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Milotic - Round - TM48
  (350, 35000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Milotic - Scald - TM55
  (350, 35000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 31),
  -- Milotic - Giga Impact - TM68
  (350, 35000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 32),
  -- Milotic - Psych Up - TM77
  (350, 35000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 33),
  -- Milotic - Bulldoze - TM78
  (350, 35000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 34),
  -- Milotic - Dragon Tail - TM82
  (350, 35000, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 35),
  -- Milotic - Swagger - TM87
  (350, 35000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Milotic - Sleep Talk - TM88
  (350, 35000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Milotic - Substitute - TM90
  (350, 35000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Milotic - Confide - TM100
  (350, 35000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Milotic - Surf - HM03
  (350, 35000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Milotic - Waterfall - HM05
  (350, 35000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41);
