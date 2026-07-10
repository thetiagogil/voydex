-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Ultra Sun / Ultra Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon learnsets for default forms, species 301-350.
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
  (301, 30100, 3, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delcatty - Sing - Level 1
  (301, 30100, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delcatty - Attract - Level 1
  (301, 30100, 213, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delcatty - Fake Out - Level 1
  (301, 30100, 252, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Delcatty - Work Up - TM01
  (301, 30100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 5),
  -- Delcatty - Calm Mind - TM04
  (301, 30100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 6),
  -- Delcatty - Toxic - TM06
  (301, 30100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 7),
  -- Delcatty - Hidden Power - TM10
  (301, 30100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 8),
  -- Delcatty - Sunny Day - TM11
  (301, 30100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 9),
  -- Delcatty - Ice Beam - TM13
  (301, 30100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 10),
  -- Delcatty - Blizzard - TM14
  (301, 30100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 11),
  -- Delcatty - Hyper Beam - TM15
  (301, 30100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 12),
  -- Delcatty - Protect - TM17
  (301, 30100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 13),
  -- Delcatty - Rain Dance - TM18
  (301, 30100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 14),
  -- Delcatty - Safeguard - TM20
  (301, 30100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 15),
  -- Delcatty - Frustration - TM21
  (301, 30100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 16),
  -- Delcatty - Solar Beam - TM22
  (301, 30100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 17),
  -- Delcatty - Thunderbolt - TM24
  (301, 30100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 18),
  -- Delcatty - Thunder - TM25
  (301, 30100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 19),
  -- Delcatty - Return - TM27
  (301, 30100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Delcatty - Shadow Ball - TM30
  (301, 30100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 21),
  -- Delcatty - Double Team - TM32
  (301, 30100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Delcatty - Facade - TM42
  (301, 30100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Delcatty - Rest - TM44
  (301, 30100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Delcatty - Attract - TM45
  (301, 30100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Delcatty - Round - TM48
  (301, 30100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Delcatty - Echoed Voice - TM49
  (301, 30100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 27),
  -- Delcatty - Charge Beam - TM57
  (301, 30100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 28),
  -- Delcatty - Payback - TM66
  (301, 30100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 29),
  -- Delcatty - Giga Impact - TM68
  (301, 30100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 30),
  -- Delcatty - Thunder Wave - TM73
  (301, 30100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 31),
  -- Delcatty - Psych Up - TM77
  (301, 30100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 32),
  -- Delcatty - Dream Eater - TM85
  (301, 30100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 33),
  -- Delcatty - Grass Knot - TM86
  (301, 30100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 34),
  -- Delcatty - Swagger - TM87
  (301, 30100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Delcatty - Sleep Talk - TM88
  (301, 30100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Delcatty - Substitute - TM90
  (301, 30100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Delcatty - Wild Charge - TM93
  (301, 30100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 38),
  -- Delcatty - Confide - TM100
  (301, 30100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Delcatty - Snore - Tutor
  (301, 30100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Delcatty - Icy Wind - Tutor
  (301, 30100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Delcatty - Heal Bell - Tutor
  (301, 30100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Delcatty - Iron Tail - Tutor
  (301, 30100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Delcatty - Uproar - Tutor
  (301, 30100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Delcatty - Helping Hand - Tutor
  (301, 30100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Delcatty - Hyper Voice - Tutor
  (301, 30100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Delcatty - Covet - Tutor
  (301, 30100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Delcatty - Shock Wave - Tutor
  (301, 30100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Delcatty - Water Pulse - Tutor
  (301, 30100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Delcatty - Last Resort - Tutor
  (301, 30100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Delcatty - Zen Headbutt - Tutor
  (301, 30100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Delcatty - Laser Focus - Tutor
  (301, 30100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Delcatty - Stomping Tantrum - Tutor
  (301, 30100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Sableye - Scratch - Level 1
  (302, 30200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Foresight - Level 4
  (302, 30200, 193, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sableye - Night Shade - Level 6
  (302, 30200, 101, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sableye - Astonish - Level 9
  (302, 30200, 310, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sableye - Fury Swipes - Level 11
  (302, 30200, 154, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Sableye - Detect - Level 14
  (302, 30200, 197, 16, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Sableye - Shadow Sneak - Level 16
  (302, 30200, 425, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Sableye - Feint Attack - Level 19
  (302, 30200, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Sableye - Fake Out - Level 21
  (302, 30200, 252, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sableye - Punishment - Level 24
  (302, 30200, 386, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Sableye - Knock Off - Level 26
  (302, 30200, 282, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Sableye - Shadow Claw - Level 29
  (302, 30200, 421, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Sableye - Confuse Ray - Level 31
  (302, 30200, 109, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Sableye - Zen Headbutt - Level 34
  (302, 30200, 428, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Sableye - Power Gem - Level 36
  (302, 30200, 408, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Sableye - Shadow Ball - Level 39
  (302, 30200, 247, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Sableye - Foul Play - Level 41
  (302, 30200, 492, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Sableye - Quash - Level 44
  (302, 30200, 511, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Sableye - Mean Look - Level 46
  (302, 30200, 212, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Sableye - Calm Mind - TM04
  (302, 30200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Sableye - Toxic - TM06
  (302, 30200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Sableye - Hidden Power - TM10
  (302, 30200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Sableye - Sunny Day - TM11
  (302, 30200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Sableye - Taunt - TM12
  (302, 30200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Sableye - Protect - TM17
  (302, 30200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Sableye - Rain Dance - TM18
  (302, 30200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Sableye - Frustration - TM21
  (302, 30200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Sableye - Return - TM27
  (302, 30200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Sableye - Psychic - TM29
  (302, 30200, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Sableye - Shadow Ball - TM30
  (302, 30200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Sableye - Brick Break - TM31
  (302, 30200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Sableye - Double Team - TM32
  (302, 30200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Sableye - Rock Tomb - TM39
  (302, 30200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Sableye - Aerial Ace - TM40
  (302, 30200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Sableye - Torment - TM41
  (302, 30200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Sableye - Facade - TM42
  (302, 30200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Sableye - Rest - TM44
  (302, 30200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Sableye - Attract - TM45
  (302, 30200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Sableye - Thief - TM46
  (302, 30200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Sableye - Low Sweep - TM47
  (302, 30200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 41),
  -- Sableye - Round - TM48
  (302, 30200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Sableye - Fling - TM56
  (302, 30200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Sableye - Quash - TM60
  (302, 30200, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 44),
  -- Sableye - Will-O-Wisp - TM61
  (302, 30200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 45),
  -- Sableye - Embargo - TM63
  (302, 30200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 46),
  -- Sableye - Shadow Claw - TM65
  (302, 30200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Sableye - Payback - TM66
  (302, 30200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Sableye - Psych Up - TM77
  (302, 30200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Sableye - Poison Jab - TM84
  (302, 30200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 50),
  -- Sableye - Dream Eater - TM85
  (302, 30200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 51),
  -- Sableye - Swagger - TM87
  (302, 30200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Sableye - Sleep Talk - TM88
  (302, 30200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Sableye - Substitute - TM90
  (302, 30200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Sableye - Snarl - TM95
  (302, 30200, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 55),
  -- Sableye - Dark Pulse - TM97
  (302, 30200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 56),
  -- Sableye - Dazzling Gleam - TM99
  (302, 30200, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 57),
  -- Sableye - Confide - TM100
  (302, 30200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Sableye - Recover - Egg
  (302, 30200, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sableye - Mean Look - Egg
  (302, 30200, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sableye - Moonlight - Egg
  (302, 30200, 236, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sableye - Flatter - Egg
  (302, 30200, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sableye - Trick - Egg
  (302, 30200, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sableye - Imprison - Egg
  (302, 30200, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sableye - Feint - Egg
  (302, 30200, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sableye - Metal Burst - Egg
  (302, 30200, 368, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sableye - Sucker Punch - Egg
  (302, 30200, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sableye - Nasty Plot - Egg
  (302, 30200, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sableye - Captivate - Egg
  (302, 30200, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sableye - Fire Punch - Tutor
  (302, 30200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Sableye - Ice Punch - Tutor
  (302, 30200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Sableye - Thunder Punch - Tutor
  (302, 30200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Sableye - Low Kick - Tutor
  (302, 30200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Sableye - Snore - Tutor
  (302, 30200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Sableye - Spite - Tutor
  (302, 30200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Sableye - Icy Wind - Tutor
  (302, 30200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Sableye - Pain Split - Tutor
  (302, 30200, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Sableye - Focus Punch - Tutor
  (302, 30200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Sableye - Trick - Tutor
  (302, 30200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Sableye - Role Play - Tutor
  (302, 30200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Sableye - Magic Coat - Tutor
  (302, 30200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Sableye - Knock Off - Tutor
  (302, 30200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Sableye - Snatch - Tutor
  (302, 30200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Sableye - Signal Beam - Tutor
  (302, 30200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Sableye - Shock Wave - Tutor
  (302, 30200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Sableye - Water Pulse - Tutor
  (302, 30200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Sableye - Gravity - Tutor
  (302, 30200, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Sableye - Zen Headbutt - Tutor
  (302, 30200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Sableye - Wonder Room - Tutor
  (302, 30200, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Sableye - Telekinesis - Tutor
  (302, 30200, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Sableye - Foul Play - Tutor
  (302, 30200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Sableye - Ally Switch - Tutor
  (302, 30200, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),

  -- Mawile - Growl - Level 1
  (303, 30300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Taunt - Level 1
  (303, 30300, 269, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mawile - Astonish - Level 1
  (303, 30300, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mawile - Iron Head - Level 1
  (303, 30300, 442, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mawile - Play Rough - Level 1
  (303, 30300, 583, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mawile - Fairy Wind - Level 1
  (303, 30300, 584, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mawile - Fake Tears - Level 5
  (303, 30300, 313, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Mawile - Bite - Level 9
  (303, 30300, 44, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Mawile - Sweet Scent - Level 13
  (303, 30300, 230, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Mawile - Vise Grip - Level 17
  (303, 30300, 11, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Mawile - Feint Attack - Level 21
  (303, 30300, 185, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Mawile - Baton Pass - Level 25
  (303, 30300, 226, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Mawile - Crunch - Level 29
  (303, 30300, 242, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Mawile - Iron Defense - Level 33
  (303, 30300, 334, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Mawile - Sucker Punch - Level 37
  (303, 30300, 389, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Mawile - Stockpile - Level 41
  (303, 30300, 254, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Mawile - Spit Up - Level 41
  (303, 30300, 255, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Mawile - Swallow - Level 41
  (303, 30300, 256, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Mawile - Iron Head - Level 45
  (303, 30300, 442, 16, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Mawile - Play Rough - Level 49
  (303, 30300, 583, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Mawile - Toxic - TM06
  (303, 30300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Mawile - Hidden Power - TM10
  (303, 30300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Mawile - Sunny Day - TM11
  (303, 30300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Mawile - Taunt - TM12
  (303, 30300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Mawile - Ice Beam - TM13
  (303, 30300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 25),
  -- Mawile - Hyper Beam - TM15
  (303, 30300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Mawile - Protect - TM17
  (303, 30300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Mawile - Rain Dance - TM18
  (303, 30300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Mawile - Frustration - TM21
  (303, 30300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Mawile - Solar Beam - TM22
  (303, 30300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Mawile - Return - TM27
  (303, 30300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Mawile - Shadow Ball - TM30
  (303, 30300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Mawile - Brick Break - TM31
  (303, 30300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Mawile - Double Team - TM32
  (303, 30300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Mawile - Flamethrower - TM35
  (303, 30300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 35),
  -- Mawile - Sludge Bomb - TM36
  (303, 30300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 36),
  -- Mawile - Sandstorm - TM37
  (303, 30300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 37),
  -- Mawile - Fire Blast - TM38
  (303, 30300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Mawile - Rock Tomb - TM39
  (303, 30300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Mawile - Torment - TM41
  (303, 30300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 40),
  -- Mawile - Facade - TM42
  (303, 30300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Mawile - Rest - TM44
  (303, 30300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Mawile - Attract - TM45
  (303, 30300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Mawile - Round - TM48
  (303, 30300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Mawile - Focus Blast - TM52
  (303, 30300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 45),
  -- Mawile - False Swipe - TM54
  (303, 30300, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 46),
  -- Mawile - Fling - TM56
  (303, 30300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Mawile - Charge Beam - TM57
  (303, 30300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 48),
  -- Mawile - Embargo - TM63
  (303, 30300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 49),
  -- Mawile - Payback - TM66
  (303, 30300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 50),
  -- Mawile - Giga Impact - TM68
  (303, 30300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Mawile - Stone Edge - TM71
  (303, 30300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 52),
  -- Mawile - Swords Dance - TM75
  (303, 30300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 53),
  -- Mawile - Psych Up - TM77
  (303, 30300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 54),
  -- Mawile - Rock Slide - TM80
  (303, 30300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Mawile - Grass Knot - TM86
  (303, 30300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Mawile - Swagger - TM87
  (303, 30300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Mawile - Sleep Talk - TM88
  (303, 30300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Mawile - Substitute - TM90
  (303, 30300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Mawile - Flash Cannon - TM91
  (303, 30300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 60),
  -- Mawile - Dark Pulse - TM97
  (303, 30300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Mawile - Confide - TM100
  (303, 30300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Mawile - Slam - Egg
  (303, 30300, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mawile - Seismic Toss - Egg
  (303, 30300, 69, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mawile - Ancient Power - Egg
  (303, 30300, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mawile - Poison Fang - Egg
  (303, 30300, 305, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mawile - Tickle - Egg
  (303, 30300, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mawile - Metal Burst - Egg
  (303, 30300, 368, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mawile - Guard Swap - Egg
  (303, 30300, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mawile - Punishment - Egg
  (303, 30300, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mawile - Sucker Punch - Egg
  (303, 30300, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Mawile - Thunder Fang - Egg
  (303, 30300, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mawile - Ice Fang - Egg
  (303, 30300, 423, 16, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Mawile - Fire Fang - Egg
  (303, 30300, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Mawile - Captivate - Egg
  (303, 30300, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Mawile - Misty Terrain - Egg
  (303, 30300, 581, 16, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Mawile - Power-Up Punch - Egg
  (303, 30300, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Mawile - Ice Punch - Tutor
  (303, 30300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Mawile - Thunder Punch - Tutor
  (303, 30300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Mawile - Super Fang - Tutor
  (303, 30300, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Mawile - Snore - Tutor
  (303, 30300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Mawile - Icy Wind - Tutor
  (303, 30300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Mawile - Pain Split - Tutor
  (303, 30300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Mawile - Focus Punch - Tutor
  (303, 30300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Mawile - Knock Off - Tutor
  (303, 30300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Mawile - Snatch - Tutor
  (303, 30300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Mawile - Iron Defense - Tutor
  (303, 30300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Mawile - Last Resort - Tutor
  (303, 30300, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Mawile - Magnet Rise - Tutor
  (303, 30300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Mawile - Iron Head - Tutor
  (303, 30300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Mawile - Stealth Rock - Tutor
  (303, 30300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Mawile - Foul Play - Tutor
  (303, 30300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Mawile - Laser Focus - Tutor
  (303, 30300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),

  -- Aron - Tackle - Level 1
  (304, 30400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Harden - Level 1
  (304, 30400, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aron - Mud-Slap - Level 4
  (304, 30400, 189, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aron - Headbutt - Level 7
  (304, 30400, 29, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Aron - Metal Claw - Level 10
  (304, 30400, 232, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Aron - Rock Tomb - Level 13
  (304, 30400, 317, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Aron - Protect - Level 16
  (304, 30400, 182, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Aron - Roar - Level 19
  (304, 30400, 46, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Aron - Iron Head - Level 22
  (304, 30400, 442, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Aron - Rock Slide - Level 25
  (304, 30400, 157, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Aron - Take Down - Level 28
  (304, 30400, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Aron - Metal Sound - Level 31
  (304, 30400, 319, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Aron - Iron Tail - Level 34
  (304, 30400, 231, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Aron - Iron Defense - Level 37
  (304, 30400, 334, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Aron - Double-Edge - Level 40
  (304, 30400, 38, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Aron - Autotomize - Level 43
  (304, 30400, 475, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Aron - Heavy Slam - Level 46
  (304, 30400, 484, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Aron - Metal Burst - Level 49
  (304, 30400, 368, 16, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Aron - Roar - TM05
  (304, 30400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Aron - Toxic - TM06
  (304, 30400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Aron - Hidden Power - TM10
  (304, 30400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Aron - Sunny Day - TM11
  (304, 30400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Aron - Protect - TM17
  (304, 30400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Aron - Rain Dance - TM18
  (304, 30400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Aron - Frustration - TM21
  (304, 30400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Aron - Earthquake - TM26
  (304, 30400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Aron - Return - TM27
  (304, 30400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Aron - Double Team - TM32
  (304, 30400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Aron - Sandstorm - TM37
  (304, 30400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 29),
  -- Aron - Rock Tomb - TM39
  (304, 30400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Aron - Aerial Ace - TM40
  (304, 30400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Aron - Facade - TM42
  (304, 30400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Aron - Rest - TM44
  (304, 30400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Aron - Attract - TM45
  (304, 30400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Aron - Round - TM48
  (304, 30400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Aron - Shadow Claw - TM65
  (304, 30400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 36),
  -- Aron - Rock Polish - TM69
  (304, 30400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 37),
  -- Aron - Bulldoze - TM78
  (304, 30400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 38),
  -- Aron - Rock Slide - TM80
  (304, 30400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 39),
  -- Aron - Swagger - TM87
  (304, 30400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Aron - Sleep Talk - TM88
  (304, 30400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Aron - Substitute - TM90
  (304, 30400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Aron - Confide - TM100
  (304, 30400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Aron - Stomp - Egg
  (304, 30400, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Aron - Body Slam - Egg
  (304, 30400, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Aron - Screech - Egg
  (304, 30400, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Aron - Curse - Egg
  (304, 30400, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Aron - Reversal - Egg
  (304, 30400, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aron - Smelling Salts - Egg
  (304, 30400, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aron - Superpower - Egg
  (304, 30400, 276, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aron - Endeavor - Egg
  (304, 30400, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aron - Dragon Rush - Egg
  (304, 30400, 407, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aron - Iron Head - Egg
  (304, 30400, 442, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aron - Stealth Rock - Egg
  (304, 30400, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aron - Head Smash - Egg
  (304, 30400, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aron - Snore - Tutor
  (304, 30400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Aron - Spite - Tutor
  (304, 30400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Aron - Iron Tail - Tutor
  (304, 30400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Aron - Uproar - Tutor
  (304, 30400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Aron - Superpower - Tutor
  (304, 30400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Aron - Endeavor - Tutor
  (304, 30400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Aron - Iron Defense - Tutor
  (304, 30400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Aron - Shock Wave - Tutor
  (304, 30400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Aron - Water Pulse - Tutor
  (304, 30400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Aron - Magnet Rise - Tutor
  (304, 30400, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Aron - Earth Power - Tutor
  (304, 30400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Aron - Iron Head - Tutor
  (304, 30400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Aron - Stealth Rock - Tutor
  (304, 30400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Lairon - Headbutt - Level 1
  (305, 30500, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Mud-Slap - Level 1
  (305, 30500, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lairon - Mud-Slap - Level 4
  (305, 30500, 189, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Lairon - Headbutt - Level 7
  (305, 30500, 29, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Lairon - Metal Claw - Level 10
  (305, 30500, 232, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Lairon - Rock Tomb - Level 13
  (305, 30500, 317, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Lairon - Protect - Level 16
  (305, 30500, 182, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Lairon - Roar - Level 19
  (305, 30500, 46, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Lairon - Iron Head - Level 22
  (305, 30500, 442, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Lairon - Rock Slide - Level 25
  (305, 30500, 157, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Lairon - Take Down - Level 28
  (305, 30500, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Lairon - Metal Sound - Level 31
  (305, 30500, 319, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Lairon - Iron Tail - Level 35
  (305, 30500, 231, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Lairon - Iron Defense - Level 39
  (305, 30500, 334, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Lairon - Double-Edge - Level 43
  (305, 30500, 38, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Lairon - Autotomize - Level 47
  (305, 30500, 475, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Lairon - Heavy Slam - Level 51
  (305, 30500, 484, 16, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Lairon - Metal Burst - Level 55
  (305, 30500, 368, 16, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Lairon - Roar - TM05
  (305, 30500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Lairon - Toxic - TM06
  (305, 30500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Lairon - Hidden Power - TM10
  (305, 30500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Lairon - Sunny Day - TM11
  (305, 30500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Lairon - Protect - TM17
  (305, 30500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Lairon - Rain Dance - TM18
  (305, 30500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Lairon - Frustration - TM21
  (305, 30500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Lairon - Earthquake - TM26
  (305, 30500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Lairon - Return - TM27
  (305, 30500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Lairon - Double Team - TM32
  (305, 30500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Lairon - Sandstorm - TM37
  (305, 30500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Lairon - Rock Tomb - TM39
  (305, 30500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Lairon - Aerial Ace - TM40
  (305, 30500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Lairon - Facade - TM42
  (305, 30500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Lairon - Rest - TM44
  (305, 30500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Lairon - Attract - TM45
  (305, 30500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Lairon - Round - TM48
  (305, 30500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Lairon - Shadow Claw - TM65
  (305, 30500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 38),
  -- Lairon - Rock Polish - TM69
  (305, 30500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 39),
  -- Lairon - Stone Edge - TM71
  (305, 30500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Lairon - Bulldoze - TM78
  (305, 30500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 41),
  -- Lairon - Rock Slide - TM80
  (305, 30500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 42),
  -- Lairon - Swagger - TM87
  (305, 30500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Lairon - Sleep Talk - TM88
  (305, 30500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Lairon - Substitute - TM90
  (305, 30500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Lairon - Confide - TM100
  (305, 30500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Lairon - Snore - Tutor
  (305, 30500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Lairon - Spite - Tutor
  (305, 30500, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Lairon - Iron Tail - Tutor
  (305, 30500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Lairon - Uproar - Tutor
  (305, 30500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Lairon - Superpower - Tutor
  (305, 30500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Lairon - Endeavor - Tutor
  (305, 30500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Lairon - Iron Defense - Tutor
  (305, 30500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Lairon - Shock Wave - Tutor
  (305, 30500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Lairon - Water Pulse - Tutor
  (305, 30500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Lairon - Magnet Rise - Tutor
  (305, 30500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Lairon - Earth Power - Tutor
  (305, 30500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Lairon - Iron Head - Tutor
  (305, 30500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Lairon - Stealth Rock - Tutor
  (305, 30500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Lairon - Stomping Tantrum - Tutor
  (305, 30500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Aggron - Headbutt - Level 1
  (306, 30600, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Mud-Slap - Level 1
  (306, 30600, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aggron - Mud-Slap - Level 4
  (306, 30600, 189, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Aggron - Headbutt - Level 7
  (306, 30600, 29, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Aggron - Metal Claw - Level 10
  (306, 30600, 232, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Aggron - Rock Tomb - Level 13
  (306, 30600, 317, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Aggron - Protect - Level 16
  (306, 30600, 182, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Aggron - Roar - Level 19
  (306, 30600, 46, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Aggron - Iron Head - Level 22
  (306, 30600, 442, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Aggron - Rock Slide - Level 25
  (306, 30600, 157, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Aggron - Take Down - Level 28
  (306, 30600, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Aggron - Metal Sound - Level 31
  (306, 30600, 319, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Aggron - Iron Tail - Level 35
  (306, 30600, 231, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Aggron - Iron Defense - Level 39
  (306, 30600, 334, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Aggron - Double-Edge - Level 45
  (306, 30600, 38, 16, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Aggron - Autotomize - Level 51
  (306, 30600, 475, 16, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Aggron - Heavy Slam - Level 57
  (306, 30600, 484, 16, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Aggron - Metal Burst - Level 63
  (306, 30600, 368, 16, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Aggron - Dragon Claw - TM02
  (306, 30600, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Aggron - Roar - TM05
  (306, 30600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Aggron - Toxic - TM06
  (306, 30600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Aggron - Hidden Power - TM10
  (306, 30600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Aggron - Sunny Day - TM11
  (306, 30600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Aggron - Taunt - TM12
  (306, 30600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Aggron - Ice Beam - TM13
  (306, 30600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Aggron - Blizzard - TM14
  (306, 30600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Aggron - Hyper Beam - TM15
  (306, 30600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Aggron - Protect - TM17
  (306, 30600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Aggron - Rain Dance - TM18
  (306, 30600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Aggron - Frustration - TM21
  (306, 30600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Aggron - Solar Beam - TM22
  (306, 30600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 33),
  -- Aggron - Smack Down - TM23
  (306, 30600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 34),
  -- Aggron - Thunderbolt - TM24
  (306, 30600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 35),
  -- Aggron - Thunder - TM25
  (306, 30600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 36),
  -- Aggron - Earthquake - TM26
  (306, 30600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 37),
  -- Aggron - Return - TM27
  (306, 30600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 38),
  -- Aggron - Brick Break - TM31
  (306, 30600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 39),
  -- Aggron - Double Team - TM32
  (306, 30600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 40),
  -- Aggron - Flamethrower - TM35
  (306, 30600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 41),
  -- Aggron - Sandstorm - TM37
  (306, 30600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 42),
  -- Aggron - Fire Blast - TM38
  (306, 30600, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 43),
  -- Aggron - Rock Tomb - TM39
  (306, 30600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 44),
  -- Aggron - Aerial Ace - TM40
  (306, 30600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 45),
  -- Aggron - Facade - TM42
  (306, 30600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 46),
  -- Aggron - Rest - TM44
  (306, 30600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 47),
  -- Aggron - Attract - TM45
  (306, 30600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 48),
  -- Aggron - Round - TM48
  (306, 30600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 49),
  -- Aggron - Focus Blast - TM52
  (306, 30600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 50),
  -- Aggron - Fling - TM56
  (306, 30600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 51),
  -- Aggron - Brutal Swing - TM59
  (306, 30600, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 52),
  -- Aggron - Shadow Claw - TM65
  (306, 30600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 53),
  -- Aggron - Payback - TM66
  (306, 30600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 54),
  -- Aggron - Smart Strike - TM67
  (306, 30600, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 55),
  -- Aggron - Giga Impact - TM68
  (306, 30600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 56),
  -- Aggron - Rock Polish - TM69
  (306, 30600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 57),
  -- Aggron - Stone Edge - TM71
  (306, 30600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 58),
  -- Aggron - Thunder Wave - TM73
  (306, 30600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 59),
  -- Aggron - Bulldoze - TM78
  (306, 30600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 60),
  -- Aggron - Rock Slide - TM80
  (306, 30600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 61),
  -- Aggron - Dragon Tail - TM82
  (306, 30600, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 62),
  -- Aggron - Swagger - TM87
  (306, 30600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 63),
  -- Aggron - Sleep Talk - TM88
  (306, 30600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 64),
  -- Aggron - Substitute - TM90
  (306, 30600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 65),
  -- Aggron - Flash Cannon - TM91
  (306, 30600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 66),
  -- Aggron - Surf - TM94
  (306, 30600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 67),
  -- Aggron - Dark Pulse - TM97
  (306, 30600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 68),
  -- Aggron - Confide - TM100
  (306, 30600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 69),
  -- Aggron - Fire Punch - Tutor
  (306, 30600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Aggron - Ice Punch - Tutor
  (306, 30600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Aggron - Thunder Punch - Tutor
  (306, 30600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Aggron - Low Kick - Tutor
  (306, 30600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Aggron - Snore - Tutor
  (306, 30600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Aggron - Spite - Tutor
  (306, 30600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Aggron - Icy Wind - Tutor
  (306, 30600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Aggron - Outrage - Tutor
  (306, 30600, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Aggron - Iron Tail - Tutor
  (306, 30600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Aggron - Uproar - Tutor
  (306, 30600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Aggron - Focus Punch - Tutor
  (306, 30600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Aggron - Superpower - Tutor
  (306, 30600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Aggron - Endeavor - Tutor
  (306, 30600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Aggron - Iron Defense - Tutor
  (306, 30600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Aggron - Block - Tutor
  (306, 30600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Aggron - Shock Wave - Tutor
  (306, 30600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Aggron - Water Pulse - Tutor
  (306, 30600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Aggron - Magnet Rise - Tutor
  (306, 30600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Aggron - Aqua Tail - Tutor
  (306, 30600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Aggron - Dragon Pulse - Tutor
  (306, 30600, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Aggron - Earth Power - Tutor
  (306, 30600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Aggron - Iron Head - Tutor
  (306, 30600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Aggron - Stealth Rock - Tutor
  (306, 30600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Aggron - Stomping Tantrum - Tutor
  (306, 30600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),

  -- Meditite - Bide - Level 1
  (307, 30700, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Meditate - Level 4
  (307, 30700, 96, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Meditite - Confusion - Level 7
  (307, 30700, 93, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Meditite - Detect - Level 9
  (307, 30700, 197, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meditite - Endure - Level 12
  (307, 30700, 203, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meditite - Feint - Level 15
  (307, 30700, 364, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Meditite - Force Palm - Level 17
  (307, 30700, 395, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Meditite - Hidden Power - Level 20
  (307, 30700, 237, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Meditite - Calm Mind - Level 23
  (307, 30700, 347, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Meditite - Mind Reader - Level 25
  (307, 30700, 170, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Meditite - High Jump Kick - Level 28
  (307, 30700, 136, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Meditite - Psych Up - Level 31
  (307, 30700, 244, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Meditite - Acupressure - Level 33
  (307, 30700, 367, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Meditite - Power Trick - Level 36
  (307, 30700, 379, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Meditite - Reversal - Level 39
  (307, 30700, 179, 16, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Meditite - Recover - Level 41
  (307, 30700, 105, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Meditite - Counter - Level 44
  (307, 30700, 68, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Meditite - Work Up - TM01
  (307, 30700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Meditite - Psyshock - TM03
  (307, 30700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 19),
  -- Meditite - Calm Mind - TM04
  (307, 30700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Meditite - Toxic - TM06
  (307, 30700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Meditite - Bulk Up - TM08
  (307, 30700, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 22),
  -- Meditite - Hidden Power - TM10
  (307, 30700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Meditite - Sunny Day - TM11
  (307, 30700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Meditite - Light Screen - TM16
  (307, 30700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Meditite - Protect - TM17
  (307, 30700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Meditite - Rain Dance - TM18
  (307, 30700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Meditite - Frustration - TM21
  (307, 30700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Meditite - Return - TM27
  (307, 30700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Meditite - Psychic - TM29
  (307, 30700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 30),
  -- Meditite - Shadow Ball - TM30
  (307, 30700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 31),
  -- Meditite - Brick Break - TM31
  (307, 30700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Meditite - Double Team - TM32
  (307, 30700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Meditite - Reflect - TM33
  (307, 30700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Meditite - Rock Tomb - TM39
  (307, 30700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Meditite - Facade - TM42
  (307, 30700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Meditite - Rest - TM44
  (307, 30700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Meditite - Attract - TM45
  (307, 30700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Meditite - Low Sweep - TM47
  (307, 30700, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 39),
  -- Meditite - Round - TM48
  (307, 30700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Meditite - Focus Blast - TM52
  (307, 30700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 41),
  -- Meditite - Fling - TM56
  (307, 30700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Meditite - Psych Up - TM77
  (307, 30700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Meditite - Rock Slide - TM80
  (307, 30700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Meditite - Poison Jab - TM84
  (307, 30700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 45),
  -- Meditite - Dream Eater - TM85
  (307, 30700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 46),
  -- Meditite - Grass Knot - TM86
  (307, 30700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Meditite - Swagger - TM87
  (307, 30700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Meditite - Sleep Talk - TM88
  (307, 30700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Meditite - Substitute - TM90
  (307, 30700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Meditite - Confide - TM100
  (307, 30700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Meditite - Fire Punch - Egg
  (307, 30700, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meditite - Ice Punch - Egg
  (307, 30700, 8, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meditite - Thunder Punch - Egg
  (307, 30700, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meditite - Foresight - Egg
  (307, 30700, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meditite - Dynamic Punch - Egg
  (307, 30700, 223, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meditite - Baton Pass - Egg
  (307, 30700, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meditite - Fake Out - Egg
  (307, 30700, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meditite - Secret Power - Egg
  (307, 30700, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meditite - Power Swap - Egg
  (307, 30700, 384, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meditite - Guard Swap - Egg
  (307, 30700, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meditite - Drain Punch - Egg
  (307, 30700, 409, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meditite - Bullet Punch - Egg
  (307, 30700, 418, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Meditite - Psycho Cut - Egg
  (307, 30700, 427, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Meditite - Quick Guard - Egg
  (307, 30700, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Meditite - Fire Punch - Tutor
  (307, 30700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Meditite - Ice Punch - Tutor
  (307, 30700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Meditite - Thunder Punch - Tutor
  (307, 30700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Meditite - Low Kick - Tutor
  (307, 30700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Meditite - Snore - Tutor
  (307, 30700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Meditite - Pain Split - Tutor
  (307, 30700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Meditite - Focus Punch - Tutor
  (307, 30700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Meditite - Helping Hand - Tutor
  (307, 30700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Meditite - Trick - Tutor
  (307, 30700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Meditite - Role Play - Tutor
  (307, 30700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Meditite - Magic Coat - Tutor
  (307, 30700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Meditite - Recycle - Tutor
  (307, 30700, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Meditite - Signal Beam - Tutor
  (307, 30700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Meditite - Gravity - Tutor
  (307, 30700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Meditite - Drain Punch - Tutor
  (307, 30700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Meditite - Zen Headbutt - Tutor
  (307, 30700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Meditite - Telekinesis - Tutor
  (307, 30700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),

  -- Medicham - Fire Punch - Level 1
  (308, 30800, 7, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Ice Punch - Level 1
  (308, 30800, 8, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Thunder Punch - Level 1
  (308, 30800, 9, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Medicham - Meditate - Level 1
  (308, 30800, 96, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Medicham - Bide - Level 1
  (308, 30800, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Medicham - Detect - Level 1
  (308, 30800, 197, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Medicham - Zen Headbutt - Level 1
  (308, 30800, 428, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Medicham - Meditate - Level 4
  (308, 30800, 96, 16, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Medicham - Confusion - Level 7
  (308, 30800, 93, 16, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Medicham - Detect - Level 9
  (308, 30800, 197, 16, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Medicham - Endure - Level 12
  (308, 30800, 203, 16, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Medicham - Feint - Level 15
  (308, 30800, 364, 16, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Medicham - Force Palm - Level 17
  (308, 30800, 395, 16, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Medicham - Hidden Power - Level 20
  (308, 30800, 237, 16, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Medicham - Calm Mind - Level 23
  (308, 30800, 347, 16, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Medicham - Mind Reader - Level 25
  (308, 30800, 170, 16, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Medicham - High Jump Kick - Level 28
  (308, 30800, 136, 16, NULL, 1, 28, NULL, NULL, NULL, 18),
  -- Medicham - Psych Up - Level 31
  (308, 30800, 244, 16, NULL, 1, 31, NULL, NULL, NULL, 19),
  -- Medicham - Acupressure - Level 33
  (308, 30800, 367, 16, NULL, 1, 33, NULL, NULL, NULL, 20),
  -- Medicham - Power Trick - Level 36
  (308, 30800, 379, 16, NULL, 1, 36, NULL, NULL, NULL, 21),
  -- Medicham - Reversal - Level 42
  (308, 30800, 179, 16, NULL, 1, 42, NULL, NULL, NULL, 22),
  -- Medicham - Recover - Level 47
  (308, 30800, 105, 16, NULL, 1, 47, NULL, NULL, NULL, 23),
  -- Medicham - Counter - Level 53
  (308, 30800, 68, 16, NULL, 1, 53, NULL, NULL, NULL, 24),
  -- Medicham - Work Up - TM01
  (308, 30800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 25),
  -- Medicham - Psyshock - TM03
  (308, 30800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 26),
  -- Medicham - Calm Mind - TM04
  (308, 30800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 27),
  -- Medicham - Toxic - TM06
  (308, 30800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 28),
  -- Medicham - Bulk Up - TM08
  (308, 30800, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 29),
  -- Medicham - Hidden Power - TM10
  (308, 30800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 30),
  -- Medicham - Sunny Day - TM11
  (308, 30800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 31),
  -- Medicham - Hyper Beam - TM15
  (308, 30800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 32),
  -- Medicham - Light Screen - TM16
  (308, 30800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 33),
  -- Medicham - Protect - TM17
  (308, 30800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 34),
  -- Medicham - Rain Dance - TM18
  (308, 30800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 35),
  -- Medicham - Frustration - TM21
  (308, 30800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 36),
  -- Medicham - Return - TM27
  (308, 30800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Medicham - Psychic - TM29
  (308, 30800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 38),
  -- Medicham - Shadow Ball - TM30
  (308, 30800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 39),
  -- Medicham - Brick Break - TM31
  (308, 30800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 40),
  -- Medicham - Double Team - TM32
  (308, 30800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 41),
  -- Medicham - Reflect - TM33
  (308, 30800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 42),
  -- Medicham - Rock Tomb - TM39
  (308, 30800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 43),
  -- Medicham - Facade - TM42
  (308, 30800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 44),
  -- Medicham - Rest - TM44
  (308, 30800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 45),
  -- Medicham - Attract - TM45
  (308, 30800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 46),
  -- Medicham - Low Sweep - TM47
  (308, 30800, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 47),
  -- Medicham - Round - TM48
  (308, 30800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 48),
  -- Medicham - Focus Blast - TM52
  (308, 30800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 49),
  -- Medicham - Energy Ball - TM53
  (308, 30800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 50),
  -- Medicham - Fling - TM56
  (308, 30800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 51),
  -- Medicham - Giga Impact - TM68
  (308, 30800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Medicham - Psych Up - TM77
  (308, 30800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Medicham - Rock Slide - TM80
  (308, 30800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 54),
  -- Medicham - Poison Jab - TM84
  (308, 30800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 55),
  -- Medicham - Dream Eater - TM85
  (308, 30800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 56),
  -- Medicham - Grass Knot - TM86
  (308, 30800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 57),
  -- Medicham - Swagger - TM87
  (308, 30800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Medicham - Sleep Talk - TM88
  (308, 30800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Medicham - Substitute - TM90
  (308, 30800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Medicham - Confide - TM100
  (308, 30800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Medicham - Fire Punch - Tutor
  (308, 30800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Medicham - Ice Punch - Tutor
  (308, 30800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Medicham - Thunder Punch - Tutor
  (308, 30800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Medicham - Low Kick - Tutor
  (308, 30800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Medicham - Snore - Tutor
  (308, 30800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Medicham - Pain Split - Tutor
  (308, 30800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Medicham - Focus Punch - Tutor
  (308, 30800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Medicham - Helping Hand - Tutor
  (308, 30800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Medicham - Trick - Tutor
  (308, 30800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Medicham - Role Play - Tutor
  (308, 30800, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Medicham - Magic Coat - Tutor
  (308, 30800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Medicham - Recycle - Tutor
  (308, 30800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Medicham - Signal Beam - Tutor
  (308, 30800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Medicham - Gravity - Tutor
  (308, 30800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Medicham - Drain Punch - Tutor
  (308, 30800, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Medicham - Zen Headbutt - Tutor
  (308, 30800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Medicham - Telekinesis - Tutor
  (308, 30800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Medicham - Laser Focus - Tutor
  (308, 30800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Level 1
  (309, 30900, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 4
  (309, 30900, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 7
  (309, 30900, 336, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 10
  (309, 30900, 98, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Electrike - Spark - Level 13
  (309, 30900, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Electrike - Odor Sleuth - Level 16
  (309, 30900, 316, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Electrike - Thunder Fang - Level 19
  (309, 30900, 422, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Electrike - Bite - Level 24
  (309, 30900, 44, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Electrike - Discharge - Level 29
  (309, 30900, 435, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Electrike - Roar - Level 34
  (309, 30900, 46, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Electrike - Wild Charge - Level 39
  (309, 30900, 528, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Electrike - Charge - Level 44
  (309, 30900, 268, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Electrike - Thunder - Level 49
  (309, 30900, 87, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Electrike - Roar - TM05
  (309, 30900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 15),
  -- Electrike - Toxic - TM06
  (309, 30900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Electrike - Hidden Power - TM10
  (309, 30900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Electrike - Light Screen - TM16
  (309, 30900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 18),
  -- Electrike - Protect - TM17
  (309, 30900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Electrike - Rain Dance - TM18
  (309, 30900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Electrike - Frustration - TM21
  (309, 30900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Electrike - Thunderbolt - TM24
  (309, 30900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 22),
  -- Electrike - Thunder - TM25
  (309, 30900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 23),
  -- Electrike - Return - TM27
  (309, 30900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Electrike - Double Team - TM32
  (309, 30900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Electrike - Flamethrower - TM35
  (309, 30900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 26),
  -- Electrike - Facade - TM42
  (309, 30900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Electrike - Rest - TM44
  (309, 30900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Electrike - Attract - TM45
  (309, 30900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Electrike - Thief - TM46
  (309, 30900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Electrike - Round - TM48
  (309, 30900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Electrike - Charge Beam - TM57
  (309, 30900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 32),
  -- Electrike - Volt Switch - TM72
  (309, 30900, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 33),
  -- Electrike - Thunder Wave - TM73
  (309, 30900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 34),
  -- Electrike - Swagger - TM87
  (309, 30900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Electrike - Sleep Talk - TM88
  (309, 30900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Electrike - Substitute - TM90
  (309, 30900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Electrike - Wild Charge - TM93
  (309, 30900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 38),
  -- Electrike - Snarl - TM95
  (309, 30900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 39),
  -- Electrike - Confide - TM100
  (309, 30900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Electrike - Headbutt - Egg
  (309, 30900, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Electrike - Swift - Egg
  (309, 30900, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Electrike - Curse - Egg
  (309, 30900, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Electrike - Crunch - Egg
  (309, 30900, 242, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Electrike - Uproar - Egg
  (309, 30900, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Electrike - Shock Wave - Egg
  (309, 30900, 351, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Electrike - Switcheroo - Egg
  (309, 30900, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrike - Thunder Fang - Egg
  (309, 30900, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electrike - Ice Fang - Egg
  (309, 30900, 423, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electrike - Fire Fang - Egg
  (309, 30900, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Electrike - Discharge - Egg
  (309, 30900, 435, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electrike - Flame Burst - Egg
  (309, 30900, 481, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electrike - Electro Ball - Egg
  (309, 30900, 486, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electrike - Eerie Impulse - Egg
  (309, 30900, 598, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electrike - Snore - Tutor
  (309, 30900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Electrike - Iron Tail - Tutor
  (309, 30900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Electrike - Uproar - Tutor
  (309, 30900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Electrike - Signal Beam - Tutor
  (309, 30900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Electrike - Shock Wave - Tutor
  (309, 30900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Electrike - Magnet Rise - Tutor
  (309, 30900, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Thunder Wave - Level 1
  (310, 31000, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Howl - Level 1
  (310, 31000, 336, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Fire Fang - Level 1
  (310, 31000, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Manectric - Electric Terrain - Level 1
  (310, 31000, 604, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Manectric - Leer - Level 4
  (310, 31000, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Manectric - Howl - Level 7
  (310, 31000, 336, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Manectric - Quick Attack - Level 10
  (310, 31000, 98, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Manectric - Spark - Level 13
  (310, 31000, 209, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Manectric - Odor Sleuth - Level 16
  (310, 31000, 316, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Manectric - Thunder Fang - Level 19
  (310, 31000, 422, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Manectric - Bite - Level 24
  (310, 31000, 44, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Manectric - Discharge - Level 30
  (310, 31000, 435, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Manectric - Roar - Level 36
  (310, 31000, 46, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Manectric - Wild Charge - Level 42
  (310, 31000, 528, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Manectric - Charge - Level 48
  (310, 31000, 268, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Manectric - Thunder - Level 54
  (310, 31000, 87, 16, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Manectric - Electric Terrain - Level 60
  (310, 31000, 604, 16, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Manectric - Roar - TM05
  (310, 31000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Manectric - Toxic - TM06
  (310, 31000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Manectric - Hidden Power - TM10
  (310, 31000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Manectric - Hyper Beam - TM15
  (310, 31000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Manectric - Light Screen - TM16
  (310, 31000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Manectric - Protect - TM17
  (310, 31000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Manectric - Rain Dance - TM18
  (310, 31000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Manectric - Frustration - TM21
  (310, 31000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Manectric - Thunderbolt - TM24
  (310, 31000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Manectric - Thunder - TM25
  (310, 31000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Manectric - Return - TM27
  (310, 31000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Manectric - Double Team - TM32
  (310, 31000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Manectric - Flamethrower - TM35
  (310, 31000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 32),
  -- Manectric - Facade - TM42
  (310, 31000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Manectric - Rest - TM44
  (310, 31000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Manectric - Attract - TM45
  (310, 31000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Manectric - Thief - TM46
  (310, 31000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Manectric - Round - TM48
  (310, 31000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Manectric - Overheat - TM50
  (310, 31000, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 38),
  -- Manectric - Charge Beam - TM57
  (310, 31000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Manectric - Giga Impact - TM68
  (310, 31000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Manectric - Volt Switch - TM72
  (310, 31000, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 41),
  -- Manectric - Thunder Wave - TM73
  (310, 31000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 42),
  -- Manectric - Swagger - TM87
  (310, 31000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Manectric - Sleep Talk - TM88
  (310, 31000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Manectric - Substitute - TM90
  (310, 31000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Manectric - Wild Charge - TM93
  (310, 31000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 46),
  -- Manectric - Snarl - TM95
  (310, 31000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 47),
  -- Manectric - Confide - TM100
  (310, 31000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Manectric - Snore - Tutor
  (310, 31000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Manectric - Iron Tail - Tutor
  (310, 31000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Manectric - Uproar - Tutor
  (310, 31000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Manectric - Signal Beam - Tutor
  (310, 31000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Manectric - Shock Wave - Tutor
  (310, 31000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Manectric - Magnet Rise - Tutor
  (310, 31000, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Manectric - Laser Focus - Tutor
  (310, 31000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Plusle - Growl - Level 1
  (311, 31100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Plusle - Thunder Wave - Level 1
  (311, 31100, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Plusle - Quick Attack - Level 1
  (311, 31100, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Plusle - Play Nice - Level 1
  (311, 31100, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Plusle - Nuzzle - Level 1
  (311, 31100, 609, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Plusle - Helping Hand - Level 4
  (311, 31100, 270, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Plusle - Spark - Level 7
  (311, 31100, 209, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Plusle - Encore - Level 10
  (311, 31100, 227, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Plusle - Bestow - Level 13
  (311, 31100, 516, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Plusle - Swift - Level 16
  (311, 31100, 129, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Plusle - Electro Ball - Level 19
  (311, 31100, 486, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Plusle - Copycat - Level 22
  (311, 31100, 383, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Plusle - Charm - Level 25
  (311, 31100, 204, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Plusle - Charge - Level 28
  (311, 31100, 268, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Plusle - Discharge - Level 31
  (311, 31100, 435, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Plusle - Baton Pass - Level 34
  (311, 31100, 226, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Plusle - Agility - Level 37
  (311, 31100, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Plusle - Last Resort - Level 40
  (311, 31100, 387, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Plusle - Thunder - Level 43
  (311, 31100, 87, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Plusle - Nasty Plot - Level 46
  (311, 31100, 417, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Plusle - Entrainment - Level 49
  (311, 31100, 494, 16, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Plusle - Toxic - TM06
  (311, 31100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Plusle - Hidden Power - TM10
  (311, 31100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Plusle - Light Screen - TM16
  (311, 31100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Plusle - Protect - TM17
  (311, 31100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Plusle - Rain Dance - TM18
  (311, 31100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Plusle - Frustration - TM21
  (311, 31100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Plusle - Thunderbolt - TM24
  (311, 31100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Plusle - Thunder - TM25
  (311, 31100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Plusle - Return - TM27
  (311, 31100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Plusle - Double Team - TM32
  (311, 31100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Plusle - Facade - TM42
  (311, 31100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Plusle - Rest - TM44
  (311, 31100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Plusle - Attract - TM45
  (311, 31100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Plusle - Round - TM48
  (311, 31100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Plusle - Echoed Voice - TM49
  (311, 31100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Plusle - Fling - TM56
  (311, 31100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Plusle - Charge Beam - TM57
  (311, 31100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 38),
  -- Plusle - Volt Switch - TM72
  (311, 31100, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 39),
  -- Plusle - Thunder Wave - TM73
  (311, 31100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Plusle - Grass Knot - TM86
  (311, 31100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 41),
  -- Plusle - Swagger - TM87
  (311, 31100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Plusle - Sleep Talk - TM88
  (311, 31100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Plusle - Substitute - TM90
  (311, 31100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Plusle - Wild Charge - TM93
  (311, 31100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 45),
  -- Plusle - Confide - TM100
  (311, 31100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Plusle - Sing - Egg
  (311, 31100, 47, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Plusle - Sweet Kiss - Egg
  (311, 31100, 186, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Plusle - Charm - Egg
  (311, 31100, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Plusle - Wish - Egg
  (311, 31100, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Plusle - Fake Tears - Egg
  (311, 31100, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Plusle - Lucky Chant - Egg
  (311, 31100, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Plusle - Discharge - Egg
  (311, 31100, 435, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Plusle - Tearful Look - Egg
  (311, 31100, 715, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Plusle - Thunder Punch - Tutor
  (311, 31100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Plusle - Snore - Tutor
  (311, 31100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Plusle - Iron Tail - Tutor
  (311, 31100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Plusle - Uproar - Tutor
  (311, 31100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Plusle - Helping Hand - Tutor
  (311, 31100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Plusle - Signal Beam - Tutor
  (311, 31100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Plusle - Covet - Tutor
  (311, 31100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Plusle - Shock Wave - Tutor
  (311, 31100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Plusle - Last Resort - Tutor
  (311, 31100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Plusle - Magnet Rise - Tutor
  (311, 31100, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Plusle - Electroweb - Tutor
  (311, 31100, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Minun - Growl - Level 1
  (312, 31200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minun - Thunder Wave - Level 1
  (312, 31200, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Minun - Quick Attack - Level 1
  (312, 31200, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Minun - Play Nice - Level 1
  (312, 31200, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Minun - Nuzzle - Level 1
  (312, 31200, 609, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Minun - Helping Hand - Level 4
  (312, 31200, 270, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Minun - Spark - Level 7
  (312, 31200, 209, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Minun - Encore - Level 10
  (312, 31200, 227, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Minun - Switcheroo - Level 13
  (312, 31200, 415, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Minun - Swift - Level 16
  (312, 31200, 129, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Minun - Electro Ball - Level 19
  (312, 31200, 486, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Minun - Copycat - Level 22
  (312, 31200, 383, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Minun - Fake Tears - Level 25
  (312, 31200, 313, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Minun - Charge - Level 28
  (312, 31200, 268, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Minun - Discharge - Level 31
  (312, 31200, 435, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Minun - Baton Pass - Level 34
  (312, 31200, 226, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Minun - Agility - Level 37
  (312, 31200, 97, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Minun - Trump Card - Level 40
  (312, 31200, 376, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Minun - Thunder - Level 43
  (312, 31200, 87, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Minun - Nasty Plot - Level 46
  (312, 31200, 417, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Minun - Entrainment - Level 49
  (312, 31200, 494, 16, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Minun - Toxic - TM06
  (312, 31200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Minun - Hidden Power - TM10
  (312, 31200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Minun - Light Screen - TM16
  (312, 31200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Minun - Protect - TM17
  (312, 31200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Minun - Rain Dance - TM18
  (312, 31200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Minun - Frustration - TM21
  (312, 31200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Minun - Thunderbolt - TM24
  (312, 31200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Minun - Thunder - TM25
  (312, 31200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Minun - Return - TM27
  (312, 31200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Minun - Double Team - TM32
  (312, 31200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Minun - Facade - TM42
  (312, 31200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Minun - Rest - TM44
  (312, 31200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Minun - Attract - TM45
  (312, 31200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Minun - Round - TM48
  (312, 31200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Minun - Echoed Voice - TM49
  (312, 31200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Minun - Fling - TM56
  (312, 31200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Minun - Charge Beam - TM57
  (312, 31200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 38),
  -- Minun - Volt Switch - TM72
  (312, 31200, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 39),
  -- Minun - Thunder Wave - TM73
  (312, 31200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Minun - Grass Knot - TM86
  (312, 31200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 41),
  -- Minun - Swagger - TM87
  (312, 31200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Minun - Sleep Talk - TM88
  (312, 31200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Minun - Substitute - TM90
  (312, 31200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Minun - Wild Charge - TM93
  (312, 31200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 45),
  -- Minun - Confide - TM100
  (312, 31200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Minun - Sing - Egg
  (312, 31200, 47, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minun - Sweet Kiss - Egg
  (312, 31200, 186, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minun - Charm - Egg
  (312, 31200, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minun - Wish - Egg
  (312, 31200, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minun - Fake Tears - Egg
  (312, 31200, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minun - Lucky Chant - Egg
  (312, 31200, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Minun - Discharge - Egg
  (312, 31200, 435, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Minun - Tearful Look - Egg
  (312, 31200, 715, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Minun - Thunder Punch - Tutor
  (312, 31200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Minun - Snore - Tutor
  (312, 31200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Minun - Iron Tail - Tutor
  (312, 31200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Minun - Uproar - Tutor
  (312, 31200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Minun - Helping Hand - Tutor
  (312, 31200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Minun - Signal Beam - Tutor
  (312, 31200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Minun - Covet - Tutor
  (312, 31200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Minun - Shock Wave - Tutor
  (312, 31200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Minun - Last Resort - Tutor
  (312, 31200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Minun - Magnet Rise - Tutor
  (312, 31200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Minun - Electroweb - Tutor
  (312, 31200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Volbeat - Tackle - Level 1
  (313, 31300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volbeat - Flash - Level 1
  (313, 31300, 148, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volbeat - Double Team - Level 5
  (313, 31300, 104, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Volbeat - Confuse Ray - Level 8
  (313, 31300, 109, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Volbeat - Quick Attack - Level 12
  (313, 31300, 98, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Volbeat - Struggle Bug - Level 15
  (313, 31300, 522, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Volbeat - Moonlight - Level 19
  (313, 31300, 236, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Volbeat - Tail Glow - Level 22
  (313, 31300, 294, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Volbeat - Signal Beam - Level 26
  (313, 31300, 324, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Volbeat - Protect - Level 29
  (313, 31300, 182, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Volbeat - Zen Headbutt - Level 33
  (313, 31300, 428, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Volbeat - Helping Hand - Level 36
  (313, 31300, 270, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Volbeat - Bug Buzz - Level 40
  (313, 31300, 405, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Volbeat - Play Rough - Level 43
  (313, 31300, 583, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Volbeat - Double-Edge - Level 47
  (313, 31300, 38, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Volbeat - Infestation - Level 50
  (313, 31300, 611, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Volbeat - Toxic - TM06
  (313, 31300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Volbeat - Hidden Power - TM10
  (313, 31300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Volbeat - Sunny Day - TM11
  (313, 31300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Volbeat - Light Screen - TM16
  (313, 31300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Volbeat - Protect - TM17
  (313, 31300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Volbeat - Rain Dance - TM18
  (313, 31300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Volbeat - Roost - TM19
  (313, 31300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Volbeat - Frustration - TM21
  (313, 31300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Volbeat - Solar Beam - TM22
  (313, 31300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Volbeat - Thunderbolt - TM24
  (313, 31300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Volbeat - Thunder - TM25
  (313, 31300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Volbeat - Return - TM27
  (313, 31300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Volbeat - Shadow Ball - TM30
  (313, 31300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Volbeat - Brick Break - TM31
  (313, 31300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Volbeat - Double Team - TM32
  (313, 31300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Volbeat - Aerial Ace - TM40
  (313, 31300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Volbeat - Facade - TM42
  (313, 31300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Volbeat - Rest - TM44
  (313, 31300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Volbeat - Attract - TM45
  (313, 31300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Volbeat - Thief - TM46
  (313, 31300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Volbeat - Round - TM48
  (313, 31300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Volbeat - Fling - TM56
  (313, 31300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Volbeat - Charge Beam - TM57
  (313, 31300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Volbeat - Acrobatics - TM62
  (313, 31300, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Volbeat - Thunder Wave - TM73
  (313, 31300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Volbeat - Psych Up - TM77
  (313, 31300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Volbeat - Infestation - TM83
  (313, 31300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 43),
  -- Volbeat - Swagger - TM87
  (313, 31300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Volbeat - Sleep Talk - TM88
  (313, 31300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Volbeat - U-turn - TM89
  (313, 31300, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 46),
  -- Volbeat - Substitute - TM90
  (313, 31300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Volbeat - Dazzling Gleam - TM99
  (313, 31300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 48),
  -- Volbeat - Confide - TM100
  (313, 31300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Volbeat - Seismic Toss - Egg
  (313, 31300, 69, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Volbeat - Dizzy Punch - Egg
  (313, 31300, 146, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Volbeat - Baton Pass - Egg
  (313, 31300, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Volbeat - Encore - Egg
  (313, 31300, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Volbeat - Trick - Egg
  (313, 31300, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Volbeat - Silver Wind - Egg
  (313, 31300, 318, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Volbeat - Bug Buzz - Egg
  (313, 31300, 405, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Volbeat - Lunge - Egg
  (313, 31300, 679, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Volbeat - Ice Punch - Tutor
  (313, 31300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Volbeat - Thunder Punch - Tutor
  (313, 31300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Volbeat - Snore - Tutor
  (313, 31300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Volbeat - Giga Drain - Tutor
  (313, 31300, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Volbeat - Focus Punch - Tutor
  (313, 31300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Volbeat - Helping Hand - Tutor
  (313, 31300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Volbeat - Trick - Tutor
  (313, 31300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Volbeat - Signal Beam - Tutor
  (313, 31300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Volbeat - Shock Wave - Tutor
  (313, 31300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Volbeat - Water Pulse - Tutor
  (313, 31300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Volbeat - Tailwind - Tutor
  (313, 31300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Volbeat - Zen Headbutt - Tutor
  (313, 31300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Volbeat - Defog - Tutor
  (313, 31300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Volbeat - Bug Bite - Tutor
  (313, 31300, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Illumise - Tackle - Level 1
  (314, 31400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Illumise - Play Nice - Level 1
  (314, 31400, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 12
  (314, 31400, 98, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Illumise - Struggle Bug - Level 15
  (314, 31400, 522, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Illumise - Moonlight - Level 19
  (314, 31400, 236, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Illumise - Wish - Level 22
  (314, 31400, 273, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Illumise - Encore - Level 26
  (314, 31400, 227, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Illumise - Zen Headbutt - Level 33
  (314, 31400, 428, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Illumise - Helping Hand - Level 36
  (314, 31400, 270, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Illumise - Bug Buzz - Level 40
  (314, 31400, 405, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Illumise - Play Rough - Level 43
  (314, 31400, 583, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Illumise - Covet - Level 47
  (314, 31400, 343, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Illumise - Infestation - Level 50
  (314, 31400, 611, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Illumise - Toxic - TM06
  (314, 31400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Illumise - Hidden Power - TM10
  (314, 31400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Illumise - Sunny Day - TM11
  (314, 31400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Illumise - Light Screen - TM16
  (314, 31400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Illumise - Protect - TM17
  (314, 31400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Illumise - Rain Dance - TM18
  (314, 31400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Illumise - Roost - TM19
  (314, 31400, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Illumise - Frustration - TM21
  (314, 31400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Illumise - Solar Beam - TM22
  (314, 31400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Illumise - Thunderbolt - TM24
  (314, 31400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Illumise - Thunder - TM25
  (314, 31400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Illumise - Return - TM27
  (314, 31400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Illumise - Shadow Ball - TM30
  (314, 31400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Illumise - Brick Break - TM31
  (314, 31400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Illumise - Double Team - TM32
  (314, 31400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Illumise - Aerial Ace - TM40
  (314, 31400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Illumise - Facade - TM42
  (314, 31400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Illumise - Rest - TM44
  (314, 31400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Illumise - Attract - TM45
  (314, 31400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Illumise - Thief - TM46
  (314, 31400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Illumise - Round - TM48
  (314, 31400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Illumise - Fling - TM56
  (314, 31400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Illumise - Charge Beam - TM57
  (314, 31400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Illumise - Acrobatics - TM62
  (314, 31400, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 40),
  -- Illumise - Thunder Wave - TM73
  (314, 31400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Illumise - Psych Up - TM77
  (314, 31400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Illumise - Infestation - TM83
  (314, 31400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 43),
  -- Illumise - Swagger - TM87
  (314, 31400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Illumise - Sleep Talk - TM88
  (314, 31400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Illumise - U-turn - TM89
  (314, 31400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 46),
  -- Illumise - Substitute - TM90
  (314, 31400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Illumise - Dazzling Gleam - TM99
  (314, 31400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 48),
  -- Illumise - Confide - TM100
  (314, 31400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Illumise - Growth - Egg
  (314, 31400, 74, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Illumise - Confuse Ray - Egg
  (314, 31400, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Illumise - Baton Pass - Egg
  (314, 31400, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Illumise - Encore - Egg
  (314, 31400, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Illumise - Aromatherapy - Egg
  (314, 31400, 312, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Illumise - Fake Tears - Egg
  (314, 31400, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Illumise - Silver Wind - Egg
  (314, 31400, 318, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Illumise - Bug Buzz - Egg
  (314, 31400, 405, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Illumise - Captivate - Egg
  (314, 31400, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Illumise - Ice Punch - Tutor
  (314, 31400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Illumise - Thunder Punch - Tutor
  (314, 31400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Illumise - Snore - Tutor
  (314, 31400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Illumise - Giga Drain - Tutor
  (314, 31400, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Illumise - Focus Punch - Tutor
  (314, 31400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Illumise - Helping Hand - Tutor
  (314, 31400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Illumise - Covet - Tutor
  (314, 31400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Illumise - Shock Wave - Tutor
  (314, 31400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Illumise - Water Pulse - Tutor
  (314, 31400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Illumise - Tailwind - Tutor
  (314, 31400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Illumise - Zen Headbutt - Tutor
  (314, 31400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Illumise - Defog - Tutor
  (314, 31400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Illumise - Bug Bite - Tutor
  (314, 31400, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Growth - Level 4
  (315, 31500, 74, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Roselia - Poison Sting - Level 7
  (315, 31500, 40, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 10
  (315, 31500, 78, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Roselia - Mega Drain - Level 13
  (315, 31500, 72, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Roselia - Leech Seed - Level 16
  (315, 31500, 73, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Roselia - Magical Leaf - Level 19
  (315, 31500, 345, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Roselia - Grass Whistle - Level 22
  (315, 31500, 320, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Roselia - Giga Drain - Level 25
  (315, 31500, 202, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Roselia - Toxic Spikes - Level 28
  (315, 31500, 390, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Roselia - Sweet Scent - Level 31
  (315, 31500, 230, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Roselia - Ingrain - Level 34
  (315, 31500, 275, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Roselia - Petal Blizzard - Level 37
  (315, 31500, 572, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Roselia - Toxic - Level 40
  (315, 31500, 92, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Roselia - Aromatherapy - Level 43
  (315, 31500, 312, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Roselia - Synthesis - Level 46
  (315, 31500, 235, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Roselia - Petal Dance - Level 50
  (315, 31500, 80, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Roselia - Toxic - TM06
  (315, 31500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Roselia - Venoshock - TM09
  (315, 31500, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Roselia - Hidden Power - TM10
  (315, 31500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Roselia - Sunny Day - TM11
  (315, 31500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Roselia - Protect - TM17
  (315, 31500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Roselia - Rain Dance - TM18
  (315, 31500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Roselia - Frustration - TM21
  (315, 31500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Roselia - Solar Beam - TM22
  (315, 31500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Roselia - Return - TM27
  (315, 31500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Roselia - Shadow Ball - TM30
  (315, 31500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Roselia - Double Team - TM32
  (315, 31500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Roselia - Sludge Bomb - TM36
  (315, 31500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Roselia - Facade - TM42
  (315, 31500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Roselia - Rest - TM44
  (315, 31500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Roselia - Attract - TM45
  (315, 31500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Roselia - Round - TM48
  (315, 31500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Roselia - Energy Ball - TM53
  (315, 31500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 34),
  -- Roselia - Swords Dance - TM75
  (315, 31500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 35),
  -- Roselia - Psych Up - TM77
  (315, 31500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 36),
  -- Roselia - Poison Jab - TM84
  (315, 31500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 37),
  -- Roselia - Grass Knot - TM86
  (315, 31500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Roselia - Swagger - TM87
  (315, 31500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Roselia - Sleep Talk - TM88
  (315, 31500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Roselia - Substitute - TM90
  (315, 31500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Roselia - Nature Power - TM96
  (315, 31500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 42),
  -- Roselia - Dazzling Gleam - TM99
  (315, 31500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 43),
  -- Roselia - Confide - TM100
  (315, 31500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Roselia - Pin Missile - Egg
  (315, 31500, 42, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Roselia - Razor Leaf - Egg
  (315, 31500, 75, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Roselia - Sleep Powder - Egg
  (315, 31500, 79, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roselia - Mind Reader - Egg
  (315, 31500, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roselia - Cotton Spore - Egg
  (315, 31500, 178, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Roselia - Spikes - Egg
  (315, 31500, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Roselia - Giga Drain - Egg
  (315, 31500, 202, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Roselia - Synthesis - Egg
  (315, 31500, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roselia - Grass Whistle - Egg
  (315, 31500, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roselia - Extrasensory - Egg
  (315, 31500, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Bullet Seed - Egg
  (315, 31500, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Roselia - Natural Gift - Egg
  (315, 31500, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Roselia - Seed Bomb - Egg
  (315, 31500, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Roselia - Leaf Storm - Egg
  (315, 31500, 437, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Roselia - Power Whip - Egg
  (315, 31500, 438, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Roselia - Snore - Tutor
  (315, 31500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Roselia - Giga Drain - Tutor
  (315, 31500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Roselia - Synthesis - Tutor
  (315, 31500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Roselia - Covet - Tutor
  (315, 31500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Roselia - Worry Seed - Tutor
  (315, 31500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Roselia - Seed Bomb - Tutor
  (315, 31500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Gulpin - Pound - Level 1
  (316, 31600, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 5
  (316, 31600, 281, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 8
  (316, 31600, 139, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 10
  (316, 31600, 124, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 12
  (316, 31600, 133, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gulpin - Acid Spray - Level 17
  (316, 31600, 491, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Gulpin - Encore - Level 20
  (316, 31600, 227, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gulpin - Toxic - Level 25
  (316, 31600, 92, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Gulpin - Stockpile - Level 28
  (316, 31600, 254, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gulpin - Spit Up - Level 28
  (316, 31600, 255, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Gulpin - Swallow - Level 28
  (316, 31600, 256, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gulpin - Sludge Bomb - Level 33
  (316, 31600, 188, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gulpin - Gastro Acid - Level 36
  (316, 31600, 380, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gulpin - Belch - Level 41
  (316, 31600, 562, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Gulpin - Wring Out - Level 44
  (316, 31600, 378, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Gulpin - Gunk Shot - Level 49
  (316, 31600, 441, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gulpin - Toxic - TM06
  (316, 31600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Gulpin - Venoshock - TM09
  (316, 31600, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 18),
  -- Gulpin - Hidden Power - TM10
  (316, 31600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Gulpin - Sunny Day - TM11
  (316, 31600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Gulpin - Ice Beam - TM13
  (316, 31600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Gulpin - Protect - TM17
  (316, 31600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Gulpin - Rain Dance - TM18
  (316, 31600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Gulpin - Frustration - TM21
  (316, 31600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Gulpin - Solar Beam - TM22
  (316, 31600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Gulpin - Return - TM27
  (316, 31600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Gulpin - Shadow Ball - TM30
  (316, 31600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Gulpin - Double Team - TM32
  (316, 31600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Gulpin - Sludge Wave - TM34
  (316, 31600, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 29),
  -- Gulpin - Sludge Bomb - TM36
  (316, 31600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Gulpin - Facade - TM42
  (316, 31600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Gulpin - Rest - TM44
  (316, 31600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Gulpin - Attract - TM45
  (316, 31600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Gulpin - Round - TM48
  (316, 31600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Gulpin - Explosion - TM64
  (316, 31600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 35),
  -- Gulpin - Infestation - TM83
  (316, 31600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 36),
  -- Gulpin - Dream Eater - TM85
  (316, 31600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 37),
  -- Gulpin - Swagger - TM87
  (316, 31600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Gulpin - Sleep Talk - TM88
  (316, 31600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Gulpin - Substitute - TM90
  (316, 31600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Gulpin - Confide - TM100
  (316, 31600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Gulpin - Smog - Egg
  (316, 31600, 123, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gulpin - Acid Armor - Egg
  (316, 31600, 151, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gulpin - Curse - Egg
  (316, 31600, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gulpin - Mud-Slap - Egg
  (316, 31600, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gulpin - Destiny Bond - Egg
  (316, 31600, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gulpin - Pain Split - Egg
  (316, 31600, 220, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gulpin - Gunk Shot - Egg
  (316, 31600, 441, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gulpin - Venom Drench - Egg
  (316, 31600, 599, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gulpin - Fire Punch - Tutor
  (316, 31600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Gulpin - Ice Punch - Tutor
  (316, 31600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Gulpin - Thunder Punch - Tutor
  (316, 31600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Gulpin - Snore - Tutor
  (316, 31600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Gulpin - Giga Drain - Tutor
  (316, 31600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Gulpin - Pain Split - Tutor
  (316, 31600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Gulpin - Snatch - Tutor
  (316, 31600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Gulpin - Shock Wave - Tutor
  (316, 31600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Gulpin - Water Pulse - Tutor
  (316, 31600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Gulpin - Gastro Acid - Tutor
  (316, 31600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Gulpin - Seed Bomb - Tutor
  (316, 31600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Gulpin - Gunk Shot - Tutor
  (316, 31600, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Swalot - Pound - Level 1
  (317, 31700, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Body Slam - Level 1
  (317, 31700, 34, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Sludge - Level 1
  (317, 31700, 124, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swalot - Poison Gas - Level 1
  (317, 31700, 139, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swalot - Yawn - Level 1
  (317, 31700, 281, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swalot - Wring Out - Level 1
  (317, 31700, 378, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Swalot - Gunk Shot - Level 1
  (317, 31700, 441, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Swalot - Venom Drench - Level 1
  (317, 31700, 599, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Swalot - Yawn - Level 5
  (317, 31700, 281, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Swalot - Poison Gas - Level 8
  (317, 31700, 139, 16, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Swalot - Sludge - Level 10
  (317, 31700, 124, 16, NULL, 1, 10, NULL, NULL, NULL, 11),
  -- Swalot - Amnesia - Level 12
  (317, 31700, 133, 16, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Swalot - Acid Spray - Level 17
  (317, 31700, 491, 16, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Swalot - Encore - Level 20
  (317, 31700, 227, 16, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Swalot - Toxic - Level 25
  (317, 31700, 92, 16, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Swalot - Stockpile - Level 30
  (317, 31700, 254, 16, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Swalot - Spit Up - Level 30
  (317, 31700, 255, 16, NULL, 1, 30, NULL, NULL, NULL, 17),
  -- Swalot - Swallow - Level 30
  (317, 31700, 256, 16, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Swalot - Sludge Bomb - Level 37
  (317, 31700, 188, 16, NULL, 1, 37, NULL, NULL, NULL, 19),
  -- Swalot - Gastro Acid - Level 42
  (317, 31700, 380, 16, NULL, 1, 42, NULL, NULL, NULL, 20),
  -- Swalot - Belch - Level 49
  (317, 31700, 562, 16, NULL, 1, 49, NULL, NULL, NULL, 21),
  -- Swalot - Wring Out - Level 54
  (317, 31700, 378, 16, NULL, 1, 54, NULL, NULL, NULL, 22),
  -- Swalot - Gunk Shot - Level 61
  (317, 31700, 441, 16, NULL, 1, 61, NULL, NULL, NULL, 23),
  -- Swalot - Toxic - TM06
  (317, 31700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Swalot - Venoshock - TM09
  (317, 31700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 25),
  -- Swalot - Hidden Power - TM10
  (317, 31700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Swalot - Sunny Day - TM11
  (317, 31700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Swalot - Ice Beam - TM13
  (317, 31700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 28),
  -- Swalot - Hyper Beam - TM15
  (317, 31700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Swalot - Protect - TM17
  (317, 31700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Swalot - Rain Dance - TM18
  (317, 31700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Swalot - Frustration - TM21
  (317, 31700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Swalot - Solar Beam - TM22
  (317, 31700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 33),
  -- Swalot - Earthquake - TM26
  (317, 31700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 34),
  -- Swalot - Return - TM27
  (317, 31700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 35),
  -- Swalot - Shadow Ball - TM30
  (317, 31700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 36),
  -- Swalot - Double Team - TM32
  (317, 31700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Swalot - Sludge Wave - TM34
  (317, 31700, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 38),
  -- Swalot - Sludge Bomb - TM36
  (317, 31700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 39),
  -- Swalot - Facade - TM42
  (317, 31700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Swalot - Rest - TM44
  (317, 31700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Swalot - Attract - TM45
  (317, 31700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Swalot - Round - TM48
  (317, 31700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Swalot - Explosion - TM64
  (317, 31700, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Swalot - Giga Impact - TM68
  (317, 31700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Swalot - Bulldoze - TM78
  (317, 31700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Swalot - Infestation - TM83
  (317, 31700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 47),
  -- Swalot - Dream Eater - TM85
  (317, 31700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Swalot - Swagger - TM87
  (317, 31700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Swalot - Sleep Talk - TM88
  (317, 31700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Swalot - Substitute - TM90
  (317, 31700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Swalot - Confide - TM100
  (317, 31700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Swalot - Fire Punch - Tutor
  (317, 31700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Swalot - Ice Punch - Tutor
  (317, 31700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Swalot - Thunder Punch - Tutor
  (317, 31700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Swalot - Snore - Tutor
  (317, 31700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Swalot - Giga Drain - Tutor
  (317, 31700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Swalot - Pain Split - Tutor
  (317, 31700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Swalot - Snatch - Tutor
  (317, 31700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Swalot - Block - Tutor
  (317, 31700, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Swalot - Shock Wave - Tutor
  (317, 31700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Swalot - Water Pulse - Tutor
  (317, 31700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Swalot - Gastro Acid - Tutor
  (317, 31700, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Swalot - Seed Bomb - Tutor
  (317, 31700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Swalot - Gunk Shot - Tutor
  (317, 31700, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Swalot - Body Slam - Evolution
  (317, 31700, 34, 16, NULL, 7, NULL, NULL, NULL, NULL, 66),

  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Bite - Level 1
  (318, 31800, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Rage - Level 4
  (318, 31800, 99, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carvanha - Aqua Jet - Level 11
  (318, 31800, 453, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Carvanha - Assurance - Level 15
  (318, 31800, 372, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Carvanha - Screech - Level 18
  (318, 31800, 103, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Carvanha - Swagger - Level 22
  (318, 31800, 207, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Carvanha - Ice Fang - Level 25
  (318, 31800, 423, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Carvanha - Scary Face - Level 29
  (318, 31800, 184, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Carvanha - Poison Fang - Level 32
  (318, 31800, 305, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Carvanha - Crunch - Level 36
  (318, 31800, 242, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Carvanha - Agility - Level 39
  (318, 31800, 97, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Carvanha - Take Down - Level 43
  (318, 31800, 36, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Carvanha - Toxic - TM06
  (318, 31800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Carvanha - Hail - TM07
  (318, 31800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Carvanha - Hidden Power - TM10
  (318, 31800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Carvanha - Taunt - TM12
  (318, 31800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 18),
  -- Carvanha - Ice Beam - TM13
  (318, 31800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Carvanha - Blizzard - TM14
  (318, 31800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Carvanha - Protect - TM17
  (318, 31800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Carvanha - Rain Dance - TM18
  (318, 31800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Carvanha - Frustration - TM21
  (318, 31800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Carvanha - Return - TM27
  (318, 31800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Carvanha - Double Team - TM32
  (318, 31800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Carvanha - Torment - TM41
  (318, 31800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 26),
  -- Carvanha - Facade - TM42
  (318, 31800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Carvanha - Rest - TM44
  (318, 31800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Carvanha - Attract - TM45
  (318, 31800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Carvanha - Thief - TM46
  (318, 31800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 30),
  -- Carvanha - Round - TM48
  (318, 31800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Carvanha - Scald - TM55
  (318, 31800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 32),
  -- Carvanha - Payback - TM66
  (318, 31800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 33),
  -- Carvanha - Swagger - TM87
  (318, 31800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Carvanha - Sleep Talk - TM88
  (318, 31800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Carvanha - Substitute - TM90
  (318, 31800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Carvanha - Surf - TM94
  (318, 31800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Carvanha - Snarl - TM95
  (318, 31800, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 38),
  -- Carvanha - Dark Pulse - TM97
  (318, 31800, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 39),
  -- Carvanha - Waterfall - TM98
  (318, 31800, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 40),
  -- Carvanha - Confide - TM100
  (318, 31800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Carvanha - Thrash - Egg
  (318, 31800, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carvanha - Double-Edge - Egg
  (318, 31800, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carvanha - Hydro Pump - Egg
  (318, 31800, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carvanha - Swift - Egg
  (318, 31800, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carvanha - Destiny Bond - Egg
  (318, 31800, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carvanha - Ancient Power - Egg
  (318, 31800, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carvanha - Brine - Egg
  (318, 31800, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Carvanha - Psychic Fangs - Egg
  (318, 31800, 706, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carvanha - Super Fang - Tutor
  (318, 31800, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Carvanha - Snore - Tutor
  (318, 31800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Carvanha - Spite - Tutor
  (318, 31800, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Carvanha - Icy Wind - Tutor
  (318, 31800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Carvanha - Uproar - Tutor
  (318, 31800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Carvanha - Bounce - Tutor
  (318, 31800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Carvanha - Water Pulse - Tutor
  (318, 31800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Carvanha - Zen Headbutt - Tutor
  (318, 31800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Bite - Level 1
  (319, 31900, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Rage - Level 1
  (319, 31900, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Focus Energy - Level 1
  (319, 31900, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sharpedo - Slash - Level 1
  (319, 31900, 163, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sharpedo - Feint - Level 1
  (319, 31900, 364, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sharpedo - Night Slash - Level 1
  (319, 31900, 400, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sharpedo - Rage - Level 4
  (319, 31900, 99, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Sharpedo - Focus Energy - Level 8
  (319, 31900, 116, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Sharpedo - Aqua Jet - Level 11
  (319, 31900, 453, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Sharpedo - Assurance - Level 15
  (319, 31900, 372, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Sharpedo - Screech - Level 18
  (319, 31900, 103, 16, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Sharpedo - Swagger - Level 22
  (319, 31900, 207, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Sharpedo - Ice Fang - Level 25
  (319, 31900, 423, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Sharpedo - Scary Face - Level 29
  (319, 31900, 184, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Sharpedo - Poison Fang - Level 34
  (319, 31900, 305, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Sharpedo - Crunch - Level 40
  (319, 31900, 242, 16, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Sharpedo - Agility - Level 45
  (319, 31900, 97, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Sharpedo - Skull Bash - Level 51
  (319, 31900, 130, 16, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Sharpedo - Taunt - Level 56
  (319, 31900, 269, 16, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Sharpedo - Night Slash - Level 62
  (319, 31900, 400, 16, NULL, 1, 62, NULL, NULL, NULL, 21),
  -- Sharpedo - Roar - TM05
  (319, 31900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Sharpedo - Toxic - TM06
  (319, 31900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Sharpedo - Hail - TM07
  (319, 31900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Sharpedo - Hidden Power - TM10
  (319, 31900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Sharpedo - Taunt - TM12
  (319, 31900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Sharpedo - Ice Beam - TM13
  (319, 31900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Sharpedo - Blizzard - TM14
  (319, 31900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Sharpedo - Hyper Beam - TM15
  (319, 31900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Sharpedo - Protect - TM17
  (319, 31900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Sharpedo - Rain Dance - TM18
  (319, 31900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Sharpedo - Frustration - TM21
  (319, 31900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Sharpedo - Earthquake - TM26
  (319, 31900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Sharpedo - Return - TM27
  (319, 31900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Sharpedo - Double Team - TM32
  (319, 31900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Sharpedo - Rock Tomb - TM39
  (319, 31900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Sharpedo - Torment - TM41
  (319, 31900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Sharpedo - Facade - TM42
  (319, 31900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Sharpedo - Rest - TM44
  (319, 31900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Sharpedo - Attract - TM45
  (319, 31900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Sharpedo - Thief - TM46
  (319, 31900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 41),
  -- Sharpedo - Round - TM48
  (319, 31900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Sharpedo - Scald - TM55
  (319, 31900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 43),
  -- Sharpedo - Payback - TM66
  (319, 31900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Sharpedo - Giga Impact - TM68
  (319, 31900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Sharpedo - Bulldoze - TM78
  (319, 31900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Sharpedo - Poison Jab - TM84
  (319, 31900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Sharpedo - Swagger - TM87
  (319, 31900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Sharpedo - Sleep Talk - TM88
  (319, 31900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Sharpedo - Substitute - TM90
  (319, 31900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Sharpedo - Surf - TM94
  (319, 31900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 51),
  -- Sharpedo - Snarl - TM95
  (319, 31900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 52),
  -- Sharpedo - Dark Pulse - TM97
  (319, 31900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Sharpedo - Waterfall - TM98
  (319, 31900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 54),
  -- Sharpedo - Confide - TM100
  (319, 31900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Sharpedo - Super Fang - Tutor
  (319, 31900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Sharpedo - Snore - Tutor
  (319, 31900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Sharpedo - Spite - Tutor
  (319, 31900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Sharpedo - Icy Wind - Tutor
  (319, 31900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Sharpedo - Uproar - Tutor
  (319, 31900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Sharpedo - Bounce - Tutor
  (319, 31900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sharpedo - Water Pulse - Tutor
  (319, 31900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Sharpedo - Zen Headbutt - Tutor
  (319, 31900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Sharpedo - Liquidation - Tutor
  (319, 31900, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Sharpedo - Slash - Evolution
  (319, 31900, 163, 16, NULL, 7, NULL, NULL, NULL, NULL, 65),

  -- Wailmer - Splash - Level 1
  (320, 32000, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 4
  (320, 32000, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Wailmer - Water Gun - Level 7
  (320, 32000, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Wailmer - Rollout - Level 10
  (320, 32000, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Wailmer - Whirlpool - Level 13
  (320, 32000, 250, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Wailmer - Astonish - Level 16
  (320, 32000, 310, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Wailmer - Water Pulse - Level 19
  (320, 32000, 352, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Wailmer - Mist - Level 22
  (320, 32000, 54, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Wailmer - Brine - Level 25
  (320, 32000, 362, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wailmer - Rest - Level 29
  (320, 32000, 156, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Wailmer - Water Spout - Level 33
  (320, 32000, 323, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Wailmer - Amnesia - Level 37
  (320, 32000, 133, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Wailmer - Dive - Level 41
  (320, 32000, 291, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Wailmer - Bounce - Level 45
  (320, 32000, 340, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Wailmer - Hydro Pump - Level 49
  (320, 32000, 56, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Wailmer - Heavy Slam - Level 53
  (320, 32000, 484, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Wailmer - Roar - TM05
  (320, 32000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Wailmer - Toxic - TM06
  (320, 32000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Wailmer - Hail - TM07
  (320, 32000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Wailmer - Hidden Power - TM10
  (320, 32000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Wailmer - Ice Beam - TM13
  (320, 32000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Wailmer - Blizzard - TM14
  (320, 32000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Wailmer - Protect - TM17
  (320, 32000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Wailmer - Rain Dance - TM18
  (320, 32000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Wailmer - Frustration - TM21
  (320, 32000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Wailmer - Earthquake - TM26
  (320, 32000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Wailmer - Return - TM27
  (320, 32000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Wailmer - Double Team - TM32
  (320, 32000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Wailmer - Rock Tomb - TM39
  (320, 32000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Wailmer - Facade - TM42
  (320, 32000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Wailmer - Rest - TM44
  (320, 32000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Wailmer - Attract - TM45
  (320, 32000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Wailmer - Round - TM48
  (320, 32000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Wailmer - Echoed Voice - TM49
  (320, 32000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Wailmer - Scald - TM55
  (320, 32000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 35),
  -- Wailmer - Bulldoze - TM78
  (320, 32000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Wailmer - Swagger - TM87
  (320, 32000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Wailmer - Sleep Talk - TM88
  (320, 32000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Wailmer - Substitute - TM90
  (320, 32000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Wailmer - Surf - TM94
  (320, 32000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Wailmer - Waterfall - TM98
  (320, 32000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Wailmer - Confide - TM100
  (320, 32000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Wailmer - Body Slam - Egg
  (320, 32000, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wailmer - Thrash - Egg
  (320, 32000, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wailmer - Double-Edge - Egg
  (320, 32000, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wailmer - Fissure - Egg
  (320, 32000, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wailmer - Defense Curl - Egg
  (320, 32000, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wailmer - Snore - Egg
  (320, 32000, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wailmer - Curse - Egg
  (320, 32000, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wailmer - Sleep Talk - Egg
  (320, 32000, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wailmer - Tickle - Egg
  (320, 32000, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailmer - Aqua Ring - Egg
  (320, 32000, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailmer - Zen Headbutt - Egg
  (320, 32000, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailmer - Soak - Egg
  (320, 32000, 487, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailmer - Clear Smog - Egg
  (320, 32000, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wailmer - Snore - Tutor
  (320, 32000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Wailmer - Icy Wind - Tutor
  (320, 32000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Wailmer - Hyper Voice - Tutor
  (320, 32000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Wailmer - Bounce - Tutor
  (320, 32000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Wailmer - Water Pulse - Tutor
  (320, 32000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Wailmer - Zen Headbutt - Tutor
  (320, 32000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Wailord - Growl - Level 1
  (321, 32100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailord - Water Gun - Level 1
  (321, 32100, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wailord - Splash - Level 1
  (321, 32100, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wailord - Rollout - Level 1
  (321, 32100, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wailord - Heavy Slam - Level 1
  (321, 32100, 484, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wailord - Soak - Level 1
  (321, 32100, 487, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wailord - Noble Roar - Level 1
  (321, 32100, 568, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Wailord - Growl - Level 4
  (321, 32100, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Wailord - Water Gun - Level 7
  (321, 32100, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Wailord - Rollout - Level 10
  (321, 32100, 205, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Wailord - Whirlpool - Level 13
  (321, 32100, 250, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Wailord - Astonish - Level 16
  (321, 32100, 310, 16, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Wailord - Water Pulse - Level 19
  (321, 32100, 352, 16, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Wailord - Mist - Level 22
  (321, 32100, 54, 16, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Wailord - Brine - Level 25
  (321, 32100, 362, 16, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Wailord - Rest - Level 29
  (321, 32100, 156, 16, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Wailord - Water Spout - Level 33
  (321, 32100, 323, 16, NULL, 1, 33, NULL, NULL, NULL, 17),
  -- Wailord - Amnesia - Level 37
  (321, 32100, 133, 16, NULL, 1, 37, NULL, NULL, NULL, 18),
  -- Wailord - Dive - Level 44
  (321, 32100, 291, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Wailord - Bounce - Level 51
  (321, 32100, 340, 16, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Wailord - Hydro Pump - Level 58
  (321, 32100, 56, 16, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Wailord - Heavy Slam - Level 65
  (321, 32100, 484, 16, NULL, 1, 65, NULL, NULL, NULL, 22),
  -- Wailord - Roar - TM05
  (321, 32100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 23),
  -- Wailord - Toxic - TM06
  (321, 32100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Wailord - Hail - TM07
  (321, 32100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 25),
  -- Wailord - Hidden Power - TM10
  (321, 32100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Wailord - Ice Beam - TM13
  (321, 32100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Wailord - Blizzard - TM14
  (321, 32100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 28),
  -- Wailord - Hyper Beam - TM15
  (321, 32100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Wailord - Protect - TM17
  (321, 32100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Wailord - Rain Dance - TM18
  (321, 32100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Wailord - Frustration - TM21
  (321, 32100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 32),
  -- Wailord - Earthquake - TM26
  (321, 32100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Wailord - Return - TM27
  (321, 32100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Wailord - Double Team - TM32
  (321, 32100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Wailord - Rock Tomb - TM39
  (321, 32100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Wailord - Facade - TM42
  (321, 32100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Wailord - Rest - TM44
  (321, 32100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Wailord - Attract - TM45
  (321, 32100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Wailord - Round - TM48
  (321, 32100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Wailord - Echoed Voice - TM49
  (321, 32100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Wailord - Scald - TM55
  (321, 32100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 42),
  -- Wailord - Giga Impact - TM68
  (321, 32100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Wailord - Bulldoze - TM78
  (321, 32100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Wailord - Swagger - TM87
  (321, 32100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Wailord - Sleep Talk - TM88
  (321, 32100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Wailord - Substitute - TM90
  (321, 32100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Wailord - Surf - TM94
  (321, 32100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 48),
  -- Wailord - Waterfall - TM98
  (321, 32100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 49),
  -- Wailord - Confide - TM100
  (321, 32100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Wailord - Snore - Tutor
  (321, 32100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Wailord - Icy Wind - Tutor
  (321, 32100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Wailord - Hyper Voice - Tutor
  (321, 32100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Wailord - Block - Tutor
  (321, 32100, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Wailord - Bounce - Tutor
  (321, 32100, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Wailord - Water Pulse - Tutor
  (321, 32100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Wailord - Zen Headbutt - Tutor
  (321, 32100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Wailord - Iron Head - Tutor
  (321, 32100, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Wailord - Liquidation - Tutor
  (321, 32100, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Numel - Tackle - Level 1
  (322, 32200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Focus Energy - Level 8
  (322, 32200, 116, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Numel - Magnitude - Level 12
  (322, 32200, 222, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Numel - Flame Burst - Level 15
  (322, 32200, 481, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 19
  (322, 32200, 133, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Numel - Lava Plume - Level 22
  (322, 32200, 436, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Numel - Earth Power - Level 26
  (322, 32200, 414, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Numel - Curse - Level 29
  (322, 32200, 174, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Numel - Take Down - Level 31
  (322, 32200, 36, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Numel - Yawn - Level 36
  (322, 32200, 281, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Numel - Earthquake - Level 40
  (322, 32200, 89, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Numel - Flamethrower - Level 43
  (322, 32200, 53, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Numel - Double-Edge - Level 47
  (322, 32200, 38, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Numel - Toxic - TM06
  (322, 32200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Numel - Hidden Power - TM10
  (322, 32200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Numel - Sunny Day - TM11
  (322, 32200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Numel - Protect - TM17
  (322, 32200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Numel - Frustration - TM21
  (322, 32200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Numel - Earthquake - TM26
  (322, 32200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 21),
  -- Numel - Return - TM27
  (322, 32200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Numel - Double Team - TM32
  (322, 32200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Numel - Flamethrower - TM35
  (322, 32200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 24),
  -- Numel - Sandstorm - TM37
  (322, 32200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 25),
  -- Numel - Fire Blast - TM38
  (322, 32200, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 26),
  -- Numel - Rock Tomb - TM39
  (322, 32200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Numel - Facade - TM42
  (322, 32200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Numel - Flame Charge - TM43
  (322, 32200, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 29),
  -- Numel - Rest - TM44
  (322, 32200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Numel - Attract - TM45
  (322, 32200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Numel - Round - TM48
  (322, 32200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Numel - Echoed Voice - TM49
  (322, 32200, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Numel - Overheat - TM50
  (322, 32200, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 34),
  -- Numel - Will-O-Wisp - TM61
  (322, 32200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 35),
  -- Numel - Bulldoze - TM78
  (322, 32200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 36),
  -- Numel - Rock Slide - TM80
  (322, 32200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Numel - Swagger - TM87
  (322, 32200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Numel - Sleep Talk - TM88
  (322, 32200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Numel - Substitute - TM90
  (322, 32200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Numel - Nature Power - TM96
  (322, 32200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Numel - Confide - TM100
  (322, 32200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Numel - Stomp - Egg
  (322, 32200, 23, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Numel - Body Slam - Egg
  (322, 32200, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Numel - Growth - Egg
  (322, 32200, 74, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Numel - Defense Curl - Egg
  (322, 32200, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Numel - Scary Face - Egg
  (322, 32200, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Numel - Endure - Egg
  (322, 32200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Numel - Rollout - Egg
  (322, 32200, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Numel - Ancient Power - Egg
  (322, 32200, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Numel - Stockpile - Egg
  (322, 32200, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Numel - Spit Up - Egg
  (322, 32200, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Numel - Swallow - Egg
  (322, 32200, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Numel - Heat Wave - Egg
  (322, 32200, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Numel - Yawn - Egg
  (322, 32200, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Numel - Howl - Egg
  (322, 32200, 336, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Numel - Mud Bomb - Egg
  (322, 32200, 426, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Numel - Iron Head - Egg
  (322, 32200, 442, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Numel - Heavy Slam - Egg
  (322, 32200, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Numel - Snore - Tutor
  (322, 32200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Numel - Heat Wave - Tutor
  (322, 32200, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Numel - Earth Power - Tutor
  (322, 32200, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Numel - Iron Head - Tutor
  (322, 32200, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Numel - Stealth Rock - Tutor
  (322, 32200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Numel - After You - Tutor
  (322, 32200, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 1
  (323, 32300, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Camerupt - Fissure - Level 1
  (323, 32300, 90, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Camerupt - Focus Energy - Level 1
  (323, 32300, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Camerupt - Rock Slide - Level 1
  (323, 32300, 157, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Camerupt - Eruption - Level 1
  (323, 32300, 284, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Camerupt - Ember - Level 8
  (323, 32300, 52, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Camerupt - Focus Energy - Level 8
  (323, 32300, 116, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Camerupt - Magnitude - Level 12
  (323, 32300, 222, 16, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Camerupt - Flame Burst - Level 15
  (323, 32300, 481, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Camerupt - Amnesia - Level 19
  (323, 32300, 133, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Camerupt - Lava Plume - Level 22
  (323, 32300, 436, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Camerupt - Earth Power - Level 26
  (323, 32300, 414, 16, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Camerupt - Curse - Level 29
  (323, 32300, 174, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Camerupt - Take Down - Level 31
  (323, 32300, 36, 16, NULL, 1, 31, NULL, NULL, NULL, 16),
  -- Camerupt - Yawn - Level 39
  (323, 32300, 281, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Camerupt - Earthquake - Level 46
  (323, 32300, 89, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Camerupt - Eruption - Level 52
  (323, 32300, 284, 16, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Camerupt - Fissure - Level 59
  (323, 32300, 90, 16, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Camerupt - Roar - TM05
  (323, 32300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Camerupt - Toxic - TM06
  (323, 32300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Camerupt - Hidden Power - TM10
  (323, 32300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Camerupt - Sunny Day - TM11
  (323, 32300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Camerupt - Hyper Beam - TM15
  (323, 32300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Camerupt - Protect - TM17
  (323, 32300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Camerupt - Frustration - TM21
  (323, 32300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Camerupt - Solar Beam - TM22
  (323, 32300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Camerupt - Earthquake - TM26
  (323, 32300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Camerupt - Return - TM27
  (323, 32300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Camerupt - Double Team - TM32
  (323, 32300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Camerupt - Flamethrower - TM35
  (323, 32300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 32),
  -- Camerupt - Sandstorm - TM37
  (323, 32300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Camerupt - Fire Blast - TM38
  (323, 32300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 34),
  -- Camerupt - Rock Tomb - TM39
  (323, 32300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Camerupt - Facade - TM42
  (323, 32300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Camerupt - Flame Charge - TM43
  (323, 32300, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 37),
  -- Camerupt - Rest - TM44
  (323, 32300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Camerupt - Attract - TM45
  (323, 32300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Camerupt - Round - TM48
  (323, 32300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Camerupt - Echoed Voice - TM49
  (323, 32300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Camerupt - Overheat - TM50
  (323, 32300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 42),
  -- Camerupt - Will-O-Wisp - TM61
  (323, 32300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 43),
  -- Camerupt - Explosion - TM64
  (323, 32300, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Camerupt - Giga Impact - TM68
  (323, 32300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Camerupt - Rock Polish - TM69
  (323, 32300, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 46),
  -- Camerupt - Stone Edge - TM71
  (323, 32300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 47),
  -- Camerupt - Bulldoze - TM78
  (323, 32300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Camerupt - Rock Slide - TM80
  (323, 32300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Camerupt - Swagger - TM87
  (323, 32300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Camerupt - Sleep Talk - TM88
  (323, 32300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Camerupt - Substitute - TM90
  (323, 32300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Camerupt - Flash Cannon - TM91
  (323, 32300, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 53),
  -- Camerupt - Nature Power - TM96
  (323, 32300, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 54),
  -- Camerupt - Confide - TM100
  (323, 32300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Camerupt - Snore - Tutor
  (323, 32300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Camerupt - Heat Wave - Tutor
  (323, 32300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Camerupt - Earth Power - Tutor
  (323, 32300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Camerupt - Iron Head - Tutor
  (323, 32300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Camerupt - Stealth Rock - Tutor
  (323, 32300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Camerupt - After You - Tutor
  (323, 32300, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Camerupt - Stomping Tantrum - Tutor
  (323, 32300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Camerupt - Rock Slide - Evolution
  (323, 32300, 157, 16, NULL, 7, NULL, NULL, NULL, NULL, 63),

  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Smog - Level 4
  (324, 32400, 123, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Torkoal - Withdraw - Level 7
  (324, 32400, 110, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torkoal - Rapid Spin - Level 10
  (324, 32400, 229, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Torkoal - Fire Spin - Level 13
  (324, 32400, 83, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Torkoal - Smokescreen - Level 15
  (324, 32400, 108, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Torkoal - Flame Wheel - Level 18
  (324, 32400, 172, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Torkoal - Curse - Level 22
  (324, 32400, 174, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Torkoal - Lava Plume - Level 25
  (324, 32400, 436, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Torkoal - Body Slam - Level 27
  (324, 32400, 34, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Torkoal - Protect - Level 30
  (324, 32400, 182, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Torkoal - Flamethrower - Level 34
  (324, 32400, 53, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Torkoal - Iron Defense - Level 38
  (324, 32400, 334, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Torkoal - Amnesia - Level 40
  (324, 32400, 133, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Torkoal - Flail - Level 42
  (324, 32400, 175, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Torkoal - Heat Wave - Level 45
  (324, 32400, 257, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Torkoal - Shell Smash - Level 47
  (324, 32400, 504, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Torkoal - Inferno - Level 50
  (324, 32400, 517, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Torkoal - Toxic - TM06
  (324, 32400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Torkoal - Hidden Power - TM10
  (324, 32400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Torkoal - Sunny Day - TM11
  (324, 32400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Torkoal - Hyper Beam - TM15
  (324, 32400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Torkoal - Protect - TM17
  (324, 32400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Torkoal - Frustration - TM21
  (324, 32400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Torkoal - Solar Beam - TM22
  (324, 32400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Torkoal - Earthquake - TM26
  (324, 32400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Torkoal - Return - TM27
  (324, 32400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Torkoal - Double Team - TM32
  (324, 32400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Torkoal - Flamethrower - TM35
  (324, 32400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Torkoal - Sludge Bomb - TM36
  (324, 32400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 30),
  -- Torkoal - Fire Blast - TM38
  (324, 32400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 31),
  -- Torkoal - Rock Tomb - TM39
  (324, 32400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Torkoal - Facade - TM42
  (324, 32400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Torkoal - Flame Charge - TM43
  (324, 32400, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 34),
  -- Torkoal - Rest - TM44
  (324, 32400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Torkoal - Attract - TM45
  (324, 32400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Torkoal - Round - TM48
  (324, 32400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Torkoal - Overheat - TM50
  (324, 32400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 38),
  -- Torkoal - Will-O-Wisp - TM61
  (324, 32400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 39),
  -- Torkoal - Explosion - TM64
  (324, 32400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 40),
  -- Torkoal - Giga Impact - TM68
  (324, 32400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Torkoal - Stone Edge - TM71
  (324, 32400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Torkoal - Gyro Ball - TM74
  (324, 32400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 43),
  -- Torkoal - Bulldoze - TM78
  (324, 32400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Torkoal - Rock Slide - TM80
  (324, 32400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Torkoal - Swagger - TM87
  (324, 32400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Torkoal - Sleep Talk - TM88
  (324, 32400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Torkoal - Substitute - TM90
  (324, 32400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Torkoal - Nature Power - TM96
  (324, 32400, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 49),
  -- Torkoal - Confide - TM100
  (324, 32400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Torkoal - Fissure - Egg
  (324, 32400, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torkoal - Skull Bash - Egg
  (324, 32400, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torkoal - Endure - Egg
  (324, 32400, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torkoal - Sleep Talk - Egg
  (324, 32400, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torkoal - Superpower - Egg
  (324, 32400, 276, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torkoal - Yawn - Egg
  (324, 32400, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torkoal - Eruption - Egg
  (324, 32400, 284, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torkoal - Flame Burst - Egg
  (324, 32400, 481, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Torkoal - Clear Smog - Egg
  (324, 32400, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Torkoal - Snore - Tutor
  (324, 32400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Torkoal - Iron Tail - Tutor
  (324, 32400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Torkoal - Heat Wave - Tutor
  (324, 32400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Torkoal - Superpower - Tutor
  (324, 32400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Torkoal - Iron Defense - Tutor
  (324, 32400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Torkoal - Earth Power - Tutor
  (324, 32400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Torkoal - Stealth Rock - Tutor
  (324, 32400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Torkoal - After You - Tutor
  (324, 32400, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Torkoal - Stomping Tantrum - Tutor
  (324, 32400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Spoink - Splash - Level 1
  (325, 32500, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Psywave - Level 7
  (325, 32500, 149, 16, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Odor Sleuth - Level 10
  (325, 32500, 316, 16, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 16, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 15
  (325, 32500, 244, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 18
  (325, 32500, 109, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Spoink - Magic Coat - Level 21
  (325, 32500, 277, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spoink - Zen Headbutt - Level 26
  (325, 32500, 428, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Spoink - Rest - Level 29
  (325, 32500, 156, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spoink - Power Gem - Level 29
  (325, 32500, 408, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spoink - Snore - Level 33
  (325, 32500, 173, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spoink - Psyshock - Level 38
  (325, 32500, 473, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Spoink - Payback - Level 40
  (325, 32500, 371, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spoink - Psychic - Level 44
  (325, 32500, 94, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Spoink - Bounce - Level 50
  (325, 32500, 340, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Spoink - Psyshock - TM03
  (325, 32500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 16),
  -- Spoink - Calm Mind - TM04
  (325, 32500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Spoink - Toxic - TM06
  (325, 32500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Spoink - Hidden Power - TM10
  (325, 32500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Spoink - Sunny Day - TM11
  (325, 32500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Spoink - Taunt - TM12
  (325, 32500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Spoink - Light Screen - TM16
  (325, 32500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Spoink - Protect - TM17
  (325, 32500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Spoink - Rain Dance - TM18
  (325, 32500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Spoink - Frustration - TM21
  (325, 32500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Spoink - Return - TM27
  (325, 32500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Spoink - Psychic - TM29
  (325, 32500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Spoink - Shadow Ball - TM30
  (325, 32500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Spoink - Double Team - TM32
  (325, 32500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Spoink - Reflect - TM33
  (325, 32500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Spoink - Torment - TM41
  (325, 32500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Spoink - Facade - TM42
  (325, 32500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Spoink - Rest - TM44
  (325, 32500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Spoink - Attract - TM45
  (325, 32500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Spoink - Thief - TM46
  (325, 32500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Spoink - Round - TM48
  (325, 32500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Spoink - Charge Beam - TM57
  (325, 32500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Spoink - Payback - TM66
  (325, 32500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Spoink - Thunder Wave - TM73
  (325, 32500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Spoink - Psych Up - TM77
  (325, 32500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Spoink - Dream Eater - TM85
  (325, 32500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 41),
  -- Spoink - Grass Knot - TM86
  (325, 32500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Spoink - Swagger - TM87
  (325, 32500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Spoink - Sleep Talk - TM88
  (325, 32500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Spoink - Substitute - TM90
  (325, 32500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Spoink - Trick Room - TM92
  (325, 32500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 46),
  -- Spoink - Confide - TM100
  (325, 32500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Spoink - Whirlwind - Egg
  (325, 32500, 18, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spoink - Amnesia - Egg
  (325, 32500, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spoink - Endure - Egg
  (325, 32500, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spoink - Mirror Coat - Egg
  (325, 32500, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spoink - Future Sight - Egg
  (325, 32500, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spoink - Trick - Egg
  (325, 32500, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spoink - Skill Swap - Egg
  (325, 32500, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spoink - Extrasensory - Egg
  (325, 32500, 326, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spoink - Lucky Chant - Egg
  (325, 32500, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spoink - Zen Headbutt - Egg
  (325, 32500, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spoink - Simple Beam - Egg
  (325, 32500, 493, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spoink - Snore - Tutor
  (325, 32500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Spoink - Icy Wind - Tutor
  (325, 32500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Spoink - Heal Bell - Tutor
  (325, 32500, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Spoink - Iron Tail - Tutor
  (325, 32500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Spoink - Trick - Tutor
  (325, 32500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Spoink - Role Play - Tutor
  (325, 32500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Spoink - Magic Coat - Tutor
  (325, 32500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Spoink - Recycle - Tutor
  (325, 32500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Spoink - Skill Swap - Tutor
  (325, 32500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Spoink - Snatch - Tutor
  (325, 32500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Spoink - Signal Beam - Tutor
  (325, 32500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Spoink - Bounce - Tutor
  (325, 32500, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Spoink - Covet - Tutor
  (325, 32500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Spoink - Shock Wave - Tutor
  (325, 32500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Spoink - Zen Headbutt - Tutor
  (325, 32500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Spoink - Telekinesis - Tutor
  (325, 32500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Spoink - Ally Switch - Tutor
  (325, 32500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Grumpig - Psybeam - Level 1
  (326, 32600, 60, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Psywave - Level 1
  (326, 32600, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grumpig - Teeter Dance - Level 1
  (326, 32600, 298, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grumpig - Odor Sleuth - Level 1
  (326, 32600, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Grumpig - Belch - Level 1
  (326, 32600, 562, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Grumpig - Psywave - Level 7
  (326, 32600, 149, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Grumpig - Odor Sleuth - Level 10
  (326, 32600, 316, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Grumpig - Psybeam - Level 14
  (326, 32600, 60, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Grumpig - Psych Up - Level 15
  (326, 32600, 244, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Grumpig - Confuse Ray - Level 18
  (326, 32600, 109, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Grumpig - Magic Coat - Level 21
  (326, 32600, 277, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Grumpig - Zen Headbutt - Level 26
  (326, 32600, 428, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Grumpig - Power Gem - Level 29
  (326, 32600, 408, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Grumpig - Rest - Level 35
  (326, 32600, 156, 16, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Grumpig - Snore - Level 35
  (326, 32600, 173, 16, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Grumpig - Psyshock - Level 42
  (326, 32600, 473, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Grumpig - Payback - Level 46
  (326, 32600, 371, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Grumpig - Psychic - Level 52
  (326, 32600, 94, 16, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Grumpig - Bounce - Level 60
  (326, 32600, 340, 16, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Grumpig - Psyshock - TM03
  (326, 32600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 21),
  -- Grumpig - Calm Mind - TM04
  (326, 32600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Grumpig - Toxic - TM06
  (326, 32600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Grumpig - Hidden Power - TM10
  (326, 32600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Grumpig - Sunny Day - TM11
  (326, 32600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Grumpig - Taunt - TM12
  (326, 32600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Grumpig - Hyper Beam - TM15
  (326, 32600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Grumpig - Light Screen - TM16
  (326, 32600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Grumpig - Protect - TM17
  (326, 32600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Grumpig - Rain Dance - TM18
  (326, 32600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Grumpig - Frustration - TM21
  (326, 32600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Grumpig - Return - TM27
  (326, 32600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Grumpig - Psychic - TM29
  (326, 32600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Grumpig - Shadow Ball - TM30
  (326, 32600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Grumpig - Brick Break - TM31
  (326, 32600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Grumpig - Double Team - TM32
  (326, 32600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Grumpig - Reflect - TM33
  (326, 32600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Grumpig - Torment - TM41
  (326, 32600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Grumpig - Facade - TM42
  (326, 32600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Grumpig - Rest - TM44
  (326, 32600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Grumpig - Attract - TM45
  (326, 32600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Grumpig - Thief - TM46
  (326, 32600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Grumpig - Round - TM48
  (326, 32600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Grumpig - Focus Blast - TM52
  (326, 32600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Grumpig - Energy Ball - TM53
  (326, 32600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 45),
  -- Grumpig - Fling - TM56
  (326, 32600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Grumpig - Charge Beam - TM57
  (326, 32600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 47),
  -- Grumpig - Payback - TM66
  (326, 32600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 48),
  -- Grumpig - Giga Impact - TM68
  (326, 32600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Grumpig - Thunder Wave - TM73
  (326, 32600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 50),
  -- Grumpig - Psych Up - TM77
  (326, 32600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Grumpig - Bulldoze - TM78
  (326, 32600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Grumpig - Dream Eater - TM85
  (326, 32600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 53),
  -- Grumpig - Grass Knot - TM86
  (326, 32600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 54),
  -- Grumpig - Swagger - TM87
  (326, 32600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Grumpig - Sleep Talk - TM88
  (326, 32600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Grumpig - Substitute - TM90
  (326, 32600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Grumpig - Trick Room - TM92
  (326, 32600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 58),
  -- Grumpig - Confide - TM100
  (326, 32600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Grumpig - Fire Punch - Tutor
  (326, 32600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Grumpig - Ice Punch - Tutor
  (326, 32600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Grumpig - Thunder Punch - Tutor
  (326, 32600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Grumpig - Snore - Tutor
  (326, 32600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Grumpig - Icy Wind - Tutor
  (326, 32600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Grumpig - Heal Bell - Tutor
  (326, 32600, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Grumpig - Iron Tail - Tutor
  (326, 32600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Grumpig - Focus Punch - Tutor
  (326, 32600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Grumpig - Trick - Tutor
  (326, 32600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Grumpig - Role Play - Tutor
  (326, 32600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Grumpig - Magic Coat - Tutor
  (326, 32600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Grumpig - Recycle - Tutor
  (326, 32600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Grumpig - Skill Swap - Tutor
  (326, 32600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Grumpig - Snatch - Tutor
  (326, 32600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Grumpig - Signal Beam - Tutor
  (326, 32600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Grumpig - Bounce - Tutor
  (326, 32600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Grumpig - Covet - Tutor
  (326, 32600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Grumpig - Shock Wave - Tutor
  (326, 32600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Grumpig - Drain Punch - Tutor
  (326, 32600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Grumpig - Zen Headbutt - Tutor
  (326, 32600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Grumpig - Telekinesis - Tutor
  (326, 32600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Grumpig - Ally Switch - Tutor
  (326, 32600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Grumpig - Laser Focus - Tutor
  (326, 32600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Grumpig - Teeter Dance - Evolution
  (326, 32600, 298, 16, NULL, 7, NULL, NULL, NULL, NULL, 83),

  -- Spinda - Tackle - Level 1
  (327, 32700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinda - Copycat - Level 5
  (327, 32700, 383, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Spinda - Feint Attack - Level 10
  (327, 32700, 185, 16, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spinda - Psybeam - Level 14
  (327, 32700, 60, 16, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spinda - Hypnosis - Level 19
  (327, 32700, 95, 16, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spinda - Dizzy Punch - Level 23
  (327, 32700, 146, 16, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinda - Sucker Punch - Level 28
  (327, 32700, 389, 16, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Spinda - Teeter Dance - Level 32
  (327, 32700, 298, 16, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Spinda - Uproar - Level 37
  (327, 32700, 253, 16, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Spinda - Psych Up - Level 41
  (327, 32700, 244, 16, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Spinda - Double-Edge - Level 46
  (327, 32700, 38, 16, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Spinda - Flail - Level 50
  (327, 32700, 175, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spinda - Thrash - Level 55
  (327, 32700, 37, 16, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spinda - Work Up - TM01
  (327, 32700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Spinda - Calm Mind - TM04
  (327, 32700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 15),
  -- Spinda - Toxic - TM06
  (327, 32700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Spinda - Hidden Power - TM10
  (327, 32700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Spinda - Sunny Day - TM11
  (327, 32700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Spinda - Protect - TM17
  (327, 32700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Spinda - Rain Dance - TM18
  (327, 32700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Spinda - Safeguard - TM20
  (327, 32700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Spinda - Frustration - TM21
  (327, 32700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Spinda - Return - TM27
  (327, 32700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Spinda - Psychic - TM29
  (327, 32700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 24),
  -- Spinda - Shadow Ball - TM30
  (327, 32700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 25),
  -- Spinda - Brick Break - TM31
  (327, 32700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Spinda - Double Team - TM32
  (327, 32700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Spinda - Rock Tomb - TM39
  (327, 32700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Spinda - Facade - TM42
  (327, 32700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Spinda - Rest - TM44
  (327, 32700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Spinda - Attract - TM45
  (327, 32700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Spinda - Thief - TM46
  (327, 32700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Spinda - Round - TM48
  (327, 32700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Spinda - Fling - TM56
  (327, 32700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Spinda - Psych Up - TM77
  (327, 32700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 35),
  -- Spinda - Rock Slide - TM80
  (327, 32700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Spinda - Dream Eater - TM85
  (327, 32700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 37),
  -- Spinda - Swagger - TM87
  (327, 32700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Spinda - Sleep Talk - TM88
  (327, 32700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Spinda - Substitute - TM90
  (327, 32700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Spinda - Trick Room - TM92
  (327, 32700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 41),
  -- Spinda - Wild Charge - TM93
  (327, 32700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 42),
  -- Spinda - Confide - TM100
  (327, 32700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Spinda - Disable - Egg
  (327, 32700, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spinda - Icy Wind - Egg
  (327, 32700, 196, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spinda - Baton Pass - Egg
  (327, 32700, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spinda - Encore - Egg
  (327, 32700, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinda - Rapid Spin - Egg
  (327, 32700, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinda - Fake Out - Egg
  (327, 32700, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinda - Smelling Salts - Egg
  (327, 32700, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spinda - Trick - Egg
  (327, 32700, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spinda - Role Play - Egg
  (327, 32700, 272, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spinda - Wish - Egg
  (327, 32700, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spinda - Assist - Egg
  (327, 32700, 274, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spinda - Fake Tears - Egg
  (327, 32700, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinda - Water Pulse - Egg
  (327, 32700, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spinda - Psycho Shift - Egg
  (327, 32700, 375, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spinda - Psycho Cut - Egg
  (327, 32700, 427, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spinda - Guard Split - Egg
  (327, 32700, 470, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spinda - Spotlight - Egg
  (327, 32700, 671, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Spinda - Fire Punch - Tutor
  (327, 32700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Spinda - Ice Punch - Tutor
  (327, 32700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Spinda - Thunder Punch - Tutor
  (327, 32700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Spinda - Low Kick - Tutor
  (327, 32700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Spinda - Snore - Tutor
  (327, 32700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Spinda - Icy Wind - Tutor
  (327, 32700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Spinda - Uproar - Tutor
  (327, 32700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Spinda - Focus Punch - Tutor
  (327, 32700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Spinda - Helping Hand - Tutor
  (327, 32700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Spinda - Trick - Tutor
  (327, 32700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Spinda - Role Play - Tutor
  (327, 32700, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Spinda - Recycle - Tutor
  (327, 32700, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Spinda - Skill Swap - Tutor
  (327, 32700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Spinda - Snatch - Tutor
  (327, 32700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Spinda - Hyper Voice - Tutor
  (327, 32700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Spinda - Covet - Tutor
  (327, 32700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Spinda - Shock Wave - Tutor
  (327, 32700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Spinda - Water Pulse - Tutor
  (327, 32700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Spinda - Last Resort - Tutor
  (327, 32700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Spinda - Drain Punch - Tutor
  (327, 32700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Spinda - Zen Headbutt - Tutor
  (327, 32700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Spinda - Stomping Tantrum - Tutor
  (327, 32700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),

  -- Trapinch - Sand Attack - Level 1
  (328, 32800, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Bite - Level 1
  (328, 32800, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trapinch - Bide - Level 1
  (328, 32800, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trapinch - Feint Attack - Level 1
  (328, 32800, 185, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Trapinch - Mud-Slap - Level 5
  (328, 32800, 189, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Trapinch - Bulldoze - Level 8
  (328, 32800, 523, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Trapinch - Sand Tomb - Level 12
  (328, 32800, 328, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Trapinch - Rock Slide - Level 15
  (328, 32800, 157, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Trapinch - Dig - Level 19
  (328, 32800, 91, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Trapinch - Crunch - Level 22
  (328, 32800, 242, 16, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Trapinch - Earth Power - Level 26
  (328, 32800, 414, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Trapinch - Feint - Level 29
  (328, 32800, 364, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Trapinch - Earthquake - Level 33
  (328, 32800, 89, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Trapinch - Sandstorm - Level 36
  (328, 32800, 201, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Trapinch - Superpower - Level 40
  (328, 32800, 276, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Trapinch - Hyper Beam - Level 43
  (328, 32800, 63, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Trapinch - Fissure - Level 47
  (328, 32800, 90, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Trapinch - Toxic - TM06
  (328, 32800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Trapinch - Hidden Power - TM10
  (328, 32800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Trapinch - Sunny Day - TM11
  (328, 32800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Trapinch - Hyper Beam - TM15
  (328, 32800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Trapinch - Protect - TM17
  (328, 32800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Trapinch - Frustration - TM21
  (328, 32800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Trapinch - Solar Beam - TM22
  (328, 32800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Trapinch - Earthquake - TM26
  (328, 32800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Trapinch - Return - TM27
  (328, 32800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Trapinch - Double Team - TM32
  (328, 32800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Trapinch - Sandstorm - TM37
  (328, 32800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Trapinch - Rock Tomb - TM39
  (328, 32800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Trapinch - Facade - TM42
  (328, 32800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Trapinch - Rest - TM44
  (328, 32800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Trapinch - Attract - TM45
  (328, 32800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Trapinch - Round - TM48
  (328, 32800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Trapinch - Bulldoze - TM78
  (328, 32800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 34),
  -- Trapinch - Rock Slide - TM80
  (328, 32800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Trapinch - Swagger - TM87
  (328, 32800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Trapinch - Sleep Talk - TM88
  (328, 32800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Trapinch - Substitute - TM90
  (328, 32800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Trapinch - Confide - TM100
  (328, 32800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Trapinch - Gust - Egg
  (328, 32800, 16, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Trapinch - Quick Attack - Egg
  (328, 32800, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Trapinch - Focus Energy - Egg
  (328, 32800, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trapinch - Flail - Egg
  (328, 32800, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trapinch - Endure - Egg
  (328, 32800, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trapinch - Fury Cutter - Egg
  (328, 32800, 210, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trapinch - Signal Beam - Egg
  (328, 32800, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Trapinch - Mud Shot - Egg
  (328, 32800, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Trapinch - Earth Power - Egg
  (328, 32800, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Trapinch - Bug Bite - Egg
  (328, 32800, 450, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Trapinch - Snore - Tutor
  (328, 32800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Trapinch - Giga Drain - Tutor
  (328, 32800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Trapinch - Superpower - Tutor
  (328, 32800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Trapinch - Signal Beam - Tutor
  (328, 32800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Trapinch - Earth Power - Tutor
  (328, 32800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Trapinch - Bug Bite - Tutor
  (328, 32800, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Sonic Boom - Level 1
  (329, 32900, 49, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Bide - Level 1
  (329, 32900, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Feint Attack - Level 1
  (329, 32900, 185, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vibrava - Dragon Breath - Level 1
  (329, 32900, 225, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vibrava - Mud-Slap - Level 5
  (329, 32900, 189, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Vibrava - Bulldoze - Level 8
  (329, 32900, 523, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Vibrava - Sand Tomb - Level 12
  (329, 32900, 328, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Vibrava - Rock Slide - Level 15
  (329, 32900, 157, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Vibrava - Supersonic - Level 19
  (329, 32900, 48, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Vibrava - Screech - Level 22
  (329, 32900, 103, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Vibrava - Earth Power - Level 26
  (329, 32900, 414, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Vibrava - Bug Buzz - Level 29
  (329, 32900, 405, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Vibrava - Earthquake - Level 33
  (329, 32900, 89, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Vibrava - Sandstorm - Level 36
  (329, 32900, 201, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Vibrava - Uproar - Level 40
  (329, 32900, 253, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Vibrava - Hyper Beam - Level 43
  (329, 32900, 63, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Vibrava - Boomburst - Level 47
  (329, 32900, 586, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Vibrava - Toxic - TM06
  (329, 32900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Vibrava - Hidden Power - TM10
  (329, 32900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Vibrava - Sunny Day - TM11
  (329, 32900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Vibrava - Hyper Beam - TM15
  (329, 32900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Vibrava - Protect - TM17
  (329, 32900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Vibrava - Roost - TM19
  (329, 32900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 24),
  -- Vibrava - Frustration - TM21
  (329, 32900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Vibrava - Solar Beam - TM22
  (329, 32900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Vibrava - Earthquake - TM26
  (329, 32900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Vibrava - Return - TM27
  (329, 32900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Vibrava - Double Team - TM32
  (329, 32900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Vibrava - Sandstorm - TM37
  (329, 32900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Vibrava - Rock Tomb - TM39
  (329, 32900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Vibrava - Facade - TM42
  (329, 32900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Vibrava - Rest - TM44
  (329, 32900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Vibrava - Attract - TM45
  (329, 32900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Vibrava - Round - TM48
  (329, 32900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Vibrava - Steel Wing - TM51
  (329, 32900, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Vibrava - Fly - TM76
  (329, 32900, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 37),
  -- Vibrava - Bulldoze - TM78
  (329, 32900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 38),
  -- Vibrava - Rock Slide - TM80
  (329, 32900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 39),
  -- Vibrava - Swagger - TM87
  (329, 32900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Vibrava - Sleep Talk - TM88
  (329, 32900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Vibrava - U-turn - TM89
  (329, 32900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 42),
  -- Vibrava - Substitute - TM90
  (329, 32900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Vibrava - Confide - TM100
  (329, 32900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Vibrava - Snore - Tutor
  (329, 32900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Vibrava - Outrage - Tutor
  (329, 32900, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Vibrava - Giga Drain - Tutor
  (329, 32900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Vibrava - Uproar - Tutor
  (329, 32900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Vibrava - Heat Wave - Tutor
  (329, 32900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Vibrava - Superpower - Tutor
  (329, 32900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Vibrava - Signal Beam - Tutor
  (329, 32900, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Vibrava - Tailwind - Tutor
  (329, 32900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Vibrava - Dragon Pulse - Tutor
  (329, 32900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Vibrava - Earth Power - Tutor
  (329, 32900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Vibrava - Defog - Tutor
  (329, 32900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Vibrava - Draco Meteor - Tutor
  (329, 32900, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Vibrava - Bug Bite - Tutor
  (329, 32900, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Vibrava - Throat Chop - Tutor
  (329, 32900, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Vibrava - Dragon Breath - Evolution
  (329, 32900, 225, 16, NULL, 7, NULL, NULL, NULL, NULL, 59),

  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Sonic Boom - Level 1
  (330, 33000, 49, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Bide - Level 1
  (330, 33000, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Feint Attack - Level 1
  (330, 33000, 185, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flygon - Dragon Breath - Level 1
  (330, 33000, 225, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flygon - Dragon Claw - Level 1
  (330, 33000, 337, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Flygon - Dragon Dance - Level 1
  (330, 33000, 349, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Flygon - Mud-Slap - Level 5
  (330, 33000, 189, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Flygon - Bulldoze - Level 8
  (330, 33000, 523, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Flygon - Sand Tomb - Level 12
  (330, 33000, 328, 16, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Flygon - Rock Slide - Level 15
  (330, 33000, 157, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Flygon - Supersonic - Level 19
  (330, 33000, 48, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Flygon - Screech - Level 22
  (330, 33000, 103, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Flygon - Earth Power - Level 26
  (330, 33000, 414, 16, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Flygon - Dragon Tail - Level 29
  (330, 33000, 525, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Flygon - Earthquake - Level 33
  (330, 33000, 89, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Flygon - Sandstorm - Level 36
  (330, 33000, 201, 16, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Flygon - Uproar - Level 40
  (330, 33000, 253, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Flygon - Hyper Beam - Level 43
  (330, 33000, 63, 16, NULL, 1, 43, NULL, NULL, NULL, 19),
  -- Flygon - Dragon Rush - Level 47
  (330, 33000, 407, 16, NULL, 1, 47, NULL, NULL, NULL, 20),
  -- Flygon - Dragon Claw - TM02
  (330, 33000, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Flygon - Toxic - TM06
  (330, 33000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Flygon - Hidden Power - TM10
  (330, 33000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Flygon - Sunny Day - TM11
  (330, 33000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Flygon - Hyper Beam - TM15
  (330, 33000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Flygon - Protect - TM17
  (330, 33000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Flygon - Roost - TM19
  (330, 33000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Flygon - Frustration - TM21
  (330, 33000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Flygon - Solar Beam - TM22
  (330, 33000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Flygon - Earthquake - TM26
  (330, 33000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Flygon - Return - TM27
  (330, 33000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Flygon - Double Team - TM32
  (330, 33000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Flygon - Flamethrower - TM35
  (330, 33000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Flygon - Sandstorm - TM37
  (330, 33000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Flygon - Fire Blast - TM38
  (330, 33000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Flygon - Rock Tomb - TM39
  (330, 33000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Flygon - Aerial Ace - TM40
  (330, 33000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Flygon - Facade - TM42
  (330, 33000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Flygon - Rest - TM44
  (330, 33000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Flygon - Attract - TM45
  (330, 33000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Flygon - Round - TM48
  (330, 33000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Flygon - Steel Wing - TM51
  (330, 33000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 42),
  -- Flygon - Brutal Swing - TM59
  (330, 33000, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 43),
  -- Flygon - Giga Impact - TM68
  (330, 33000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Flygon - Stone Edge - TM71
  (330, 33000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Flygon - Fly - TM76
  (330, 33000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 46),
  -- Flygon - Bulldoze - TM78
  (330, 33000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Flygon - Rock Slide - TM80
  (330, 33000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Flygon - Dragon Tail - TM82
  (330, 33000, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 49),
  -- Flygon - Swagger - TM87
  (330, 33000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Flygon - Sleep Talk - TM88
  (330, 33000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Flygon - U-turn - TM89
  (330, 33000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 52),
  -- Flygon - Substitute - TM90
  (330, 33000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Flygon - Confide - TM100
  (330, 33000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Flygon - Fire Punch - Tutor
  (330, 33000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Flygon - Thunder Punch - Tutor
  (330, 33000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Flygon - Snore - Tutor
  (330, 33000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Flygon - Outrage - Tutor
  (330, 33000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Flygon - Giga Drain - Tutor
  (330, 33000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Flygon - Iron Tail - Tutor
  (330, 33000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Flygon - Uproar - Tutor
  (330, 33000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Flygon - Heat Wave - Tutor
  (330, 33000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Flygon - Superpower - Tutor
  (330, 33000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Flygon - Signal Beam - Tutor
  (330, 33000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Flygon - Tailwind - Tutor
  (330, 33000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Flygon - Dragon Pulse - Tutor
  (330, 33000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Flygon - Earth Power - Tutor
  (330, 33000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Flygon - Defog - Tutor
  (330, 33000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Flygon - Draco Meteor - Tutor
  (330, 33000, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Flygon - Bug Bite - Tutor
  (330, 33000, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Flygon - Laser Focus - Tutor
  (330, 33000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Flygon - Throat Chop - Tutor
  (330, 33000, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Flygon - Dragon Claw - Evolution
  (330, 33000, 337, 16, NULL, 7, NULL, NULL, NULL, NULL, 73),

  -- Cacnea - Poison Sting - Level 1
  (331, 33100, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Level 1
  (331, 33100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 4
  (331, 33100, 71, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 7
  (331, 33100, 74, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 10
  (331, 33100, 73, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 13
  (331, 33100, 28, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cacnea - Needle Arm - Level 16
  (331, 33100, 302, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cacnea - Feint Attack - Level 19
  (331, 33100, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Cacnea - Ingrain - Level 22
  (331, 33100, 275, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Cacnea - Payback - Level 26
  (331, 33100, 371, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Cacnea - Spikes - Level 30
  (331, 33100, 191, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Cacnea - Sucker Punch - Level 34
  (331, 33100, 389, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Cacnea - Pin Missile - Level 38
  (331, 33100, 42, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Cacnea - Energy Ball - Level 42
  (331, 33100, 412, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Cacnea - Cotton Spore - Level 46
  (331, 33100, 178, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Cacnea - Sandstorm - Level 50
  (331, 33100, 201, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Cacnea - Destiny Bond - Level 54
  (331, 33100, 194, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Cacnea - Toxic - TM06
  (331, 33100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Cacnea - Venoshock - TM09
  (331, 33100, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 19),
  -- Cacnea - Hidden Power - TM10
  (331, 33100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Cacnea - Sunny Day - TM11
  (331, 33100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Cacnea - Protect - TM17
  (331, 33100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Cacnea - Frustration - TM21
  (331, 33100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Cacnea - Solar Beam - TM22
  (331, 33100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Cacnea - Return - TM27
  (331, 33100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Cacnea - Brick Break - TM31
  (331, 33100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Cacnea - Double Team - TM32
  (331, 33100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Cacnea - Sandstorm - TM37
  (331, 33100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Cacnea - Facade - TM42
  (331, 33100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Cacnea - Rest - TM44
  (331, 33100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Cacnea - Attract - TM45
  (331, 33100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Cacnea - Round - TM48
  (331, 33100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Cacnea - Energy Ball - TM53
  (331, 33100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 33),
  -- Cacnea - Fling - TM56
  (331, 33100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Cacnea - Payback - TM66
  (331, 33100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Cacnea - Swords Dance - TM75
  (331, 33100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Cacnea - Poison Jab - TM84
  (331, 33100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 37),
  -- Cacnea - Grass Knot - TM86
  (331, 33100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Cacnea - Swagger - TM87
  (331, 33100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Cacnea - Sleep Talk - TM88
  (331, 33100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Cacnea - Substitute - TM90
  (331, 33100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Cacnea - Nature Power - TM96
  (331, 33100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 42),
  -- Cacnea - Dark Pulse - TM97
  (331, 33100, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 43),
  -- Cacnea - Confide - TM100
  (331, 33100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Cacnea - Disable - Egg
  (331, 33100, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cacnea - Acid - Egg
  (331, 33100, 51, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cacnea - Low Kick - Egg
  (331, 33100, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cacnea - Counter - Egg
  (331, 33100, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cacnea - Dynamic Punch - Egg
  (331, 33100, 223, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cacnea - Smelling Salts - Egg
  (331, 33100, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cacnea - Teeter Dance - Egg
  (331, 33100, 298, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cacnea - Grass Whistle - Egg
  (331, 33100, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cacnea - Block - Egg
  (331, 33100, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cacnea - Magical Leaf - Egg
  (331, 33100, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cacnea - Worry Seed - Egg
  (331, 33100, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cacnea - Seed Bomb - Egg
  (331, 33100, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cacnea - Switcheroo - Egg
  (331, 33100, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cacnea - Nasty Plot - Egg
  (331, 33100, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cacnea - Belch - Egg
  (331, 33100, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cacnea - Rototiller - Egg
  (331, 33100, 563, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cacnea - Fell Stinger - Egg
  (331, 33100, 565, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cacnea - Power-Up Punch - Egg
  (331, 33100, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cacnea - Thunder Punch - Tutor
  (331, 33100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Cacnea - Low Kick - Tutor
  (331, 33100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Cacnea - Snore - Tutor
  (331, 33100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Cacnea - Spite - Tutor
  (331, 33100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Cacnea - Giga Drain - Tutor
  (331, 33100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Cacnea - Synthesis - Tutor
  (331, 33100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Cacnea - Focus Punch - Tutor
  (331, 33100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Cacnea - Role Play - Tutor
  (331, 33100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Cacnea - Block - Tutor
  (331, 33100, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Cacnea - Worry Seed - Tutor
  (331, 33100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Cacnea - Seed Bomb - Tutor
  (331, 33100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Cacnea - Drain Punch - Tutor
  (331, 33100, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),

  -- Cacturne - Poison Sting - Level 1
  (332, 33200, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacturne - Leer - Level 1
  (332, 33200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacturne - Absorb - Level 1
  (332, 33200, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cacturne - Growth - Level 1
  (332, 33200, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cacturne - Destiny Bond - Level 1
  (332, 33200, 194, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cacturne - Revenge - Level 1
  (332, 33200, 279, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cacturne - Spiky Shield - Level 1
  (332, 33200, 596, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cacturne - Absorb - Level 4
  (332, 33200, 71, 16, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Cacturne - Growth - Level 7
  (332, 33200, 74, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Cacturne - Leech Seed - Level 10
  (332, 33200, 73, 16, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Cacturne - Sand Attack - Level 13
  (332, 33200, 28, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Cacturne - Needle Arm - Level 16
  (332, 33200, 302, 16, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Cacturne - Feint Attack - Level 19
  (332, 33200, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Cacturne - Ingrain - Level 22
  (332, 33200, 275, 16, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Cacturne - Payback - Level 26
  (332, 33200, 371, 16, NULL, 1, 26, NULL, NULL, NULL, 15),
  -- Cacturne - Spikes - Level 30
  (332, 33200, 191, 16, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Cacturne - Sucker Punch - Level 35
  (332, 33200, 389, 16, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Cacturne - Pin Missile - Level 38
  (332, 33200, 42, 16, NULL, 1, 38, NULL, NULL, NULL, 18),
  -- Cacturne - Energy Ball - Level 44
  (332, 33200, 412, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Cacturne - Cotton Spore - Level 49
  (332, 33200, 178, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Cacturne - Sandstorm - Level 54
  (332, 33200, 201, 16, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Cacturne - Destiny Bond - Level 59
  (332, 33200, 194, 16, NULL, 1, 59, NULL, NULL, NULL, 22),
  -- Cacturne - Toxic - TM06
  (332, 33200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Cacturne - Venoshock - TM09
  (332, 33200, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 24),
  -- Cacturne - Hidden Power - TM10
  (332, 33200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Cacturne - Sunny Day - TM11
  (332, 33200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Cacturne - Hyper Beam - TM15
  (332, 33200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Cacturne - Protect - TM17
  (332, 33200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Cacturne - Frustration - TM21
  (332, 33200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Cacturne - Solar Beam - TM22
  (332, 33200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Cacturne - Return - TM27
  (332, 33200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Cacturne - Brick Break - TM31
  (332, 33200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Cacturne - Double Team - TM32
  (332, 33200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Cacturne - Sandstorm - TM37
  (332, 33200, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Cacturne - Facade - TM42
  (332, 33200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Cacturne - Rest - TM44
  (332, 33200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Cacturne - Attract - TM45
  (332, 33200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Cacturne - Round - TM48
  (332, 33200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Cacturne - Focus Blast - TM52
  (332, 33200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 39),
  -- Cacturne - Energy Ball - TM53
  (332, 33200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Cacturne - Fling - TM56
  (332, 33200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Cacturne - Embargo - TM63
  (332, 33200, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 42),
  -- Cacturne - Payback - TM66
  (332, 33200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Cacturne - Giga Impact - TM68
  (332, 33200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Cacturne - Swords Dance - TM75
  (332, 33200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 45),
  -- Cacturne - Poison Jab - TM84
  (332, 33200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Cacturne - Grass Knot - TM86
  (332, 33200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Cacturne - Swagger - TM87
  (332, 33200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Cacturne - Sleep Talk - TM88
  (332, 33200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Cacturne - Substitute - TM90
  (332, 33200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Cacturne - Nature Power - TM96
  (332, 33200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 51),
  -- Cacturne - Dark Pulse - TM97
  (332, 33200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 52),
  -- Cacturne - Confide - TM100
  (332, 33200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Cacturne - Thunder Punch - Tutor
  (332, 33200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cacturne - Low Kick - Tutor
  (332, 33200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cacturne - Snore - Tutor
  (332, 33200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cacturne - Spite - Tutor
  (332, 33200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cacturne - Giga Drain - Tutor
  (332, 33200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cacturne - Synthesis - Tutor
  (332, 33200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cacturne - Focus Punch - Tutor
  (332, 33200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cacturne - Role Play - Tutor
  (332, 33200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Cacturne - Superpower - Tutor
  (332, 33200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Cacturne - Block - Tutor
  (332, 33200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Cacturne - Worry Seed - Tutor
  (332, 33200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Cacturne - Seed Bomb - Tutor
  (332, 33200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Cacturne - Drain Punch - Tutor
  (332, 33200, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Cacturne - Foul Play - Tutor
  (332, 33200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Cacturne - Stomping Tantrum - Tutor
  (332, 33200, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Cacturne - Spiky Shield - Evolution
  (332, 33200, 596, 16, NULL, 7, NULL, NULL, NULL, NULL, 69),

  -- Swablu - Growl - Level 1
  (333, 33300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Astonish - Level 3
  (333, 33300, 310, 16, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Swablu - Sing - Level 5
  (333, 33300, 47, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 7
  (333, 33300, 31, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Swablu - Safeguard - Level 9
  (333, 33300, 219, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Swablu - Disarming Voice - Level 11
  (333, 33300, 574, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Swablu - Mist - Level 14
  (333, 33300, 54, 16, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Swablu - Round - Level 17
  (333, 33300, 496, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Swablu - Natural Gift - Level 20
  (333, 33300, 363, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Swablu - Take Down - Level 23
  (333, 33300, 36, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Swablu - Refresh - Level 26
  (333, 33300, 287, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Swablu - Mirror Move - Level 30
  (333, 33300, 119, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Swablu - Cotton Guard - Level 34
  (333, 33300, 538, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Swablu - Dragon Pulse - Level 38
  (333, 33300, 406, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Swablu - Perish Song - Level 42
  (333, 33300, 195, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Swablu - Moonblast - Level 46
  (333, 33300, 585, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Swablu - Toxic - TM06
  (333, 33300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Swablu - Hidden Power - TM10
  (333, 33300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Swablu - Sunny Day - TM11
  (333, 33300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Swablu - Ice Beam - TM13
  (333, 33300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Swablu - Protect - TM17
  (333, 33300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Swablu - Rain Dance - TM18
  (333, 33300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Swablu - Roost - TM19
  (333, 33300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 24),
  -- Swablu - Safeguard - TM20
  (333, 33300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Swablu - Frustration - TM21
  (333, 33300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Swablu - Solar Beam - TM22
  (333, 33300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Swablu - Return - TM27
  (333, 33300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Swablu - Double Team - TM32
  (333, 33300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Swablu - Aerial Ace - TM40
  (333, 33300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Swablu - Facade - TM42
  (333, 33300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Swablu - Rest - TM44
  (333, 33300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Swablu - Attract - TM45
  (333, 33300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Swablu - Thief - TM46
  (333, 33300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Swablu - Round - TM48
  (333, 33300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Swablu - Echoed Voice - TM49
  (333, 33300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Swablu - Steel Wing - TM51
  (333, 33300, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 37),
  -- Swablu - Fly - TM76
  (333, 33300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 38),
  -- Swablu - Psych Up - TM77
  (333, 33300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 39),
  -- Swablu - Dream Eater - TM85
  (333, 33300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 40),
  -- Swablu - Swagger - TM87
  (333, 33300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Swablu - Sleep Talk - TM88
  (333, 33300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Swablu - Substitute - TM90
  (333, 33300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Swablu - Dazzling Gleam - TM99
  (333, 33300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 44),
  -- Swablu - Confide - TM100
  (333, 33300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Swablu - Agility - Egg
  (333, 33300, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Rage - Egg
  (333, 33300, 99, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swablu - Haze - Egg
  (333, 33300, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swablu - Steel Wing - Egg
  (333, 33300, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swablu - Pursuit - Egg
  (333, 33300, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swablu - Feather Dance - Egg
  (333, 33300, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swablu - Hyper Voice - Egg
  (333, 33300, 304, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swablu - Roost - Egg
  (333, 33300, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Swablu - Power Swap - Egg
  (333, 33300, 384, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Swablu - Dragon Rush - Egg
  (333, 33300, 407, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Swablu - Play Rough - Egg
  (333, 33300, 583, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Swablu - Sky Attack - Tutor
  (333, 33300, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Swablu - Snore - Tutor
  (333, 33300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Swablu - Outrage - Tutor
  (333, 33300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Swablu - Heal Bell - Tutor
  (333, 33300, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Swablu - Uproar - Tutor
  (333, 33300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Swablu - Heat Wave - Tutor
  (333, 33300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Swablu - Hyper Voice - Tutor
  (333, 33300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Swablu - Tailwind - Tutor
  (333, 33300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Swablu - Dragon Pulse - Tutor
  (333, 33300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Swablu - Defog - Tutor
  (333, 33300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Altaria - Growl - Level 1
  (334, 33400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Sing - Level 1
  (334, 33400, 47, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Sky Attack - Level 1
  (334, 33400, 143, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Dragon Breath - Level 1
  (334, 33400, 225, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Altaria - Astonish - Level 1
  (334, 33400, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Altaria - Pluck - Level 1
  (334, 33400, 365, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Altaria - Astonish - Level 3
  (334, 33400, 310, 16, NULL, 1, 3, NULL, NULL, NULL, 8),
  -- Altaria - Sing - Level 5
  (334, 33400, 47, 16, NULL, 1, 5, NULL, NULL, NULL, 9),
  -- Altaria - Fury Attack - Level 7
  (334, 33400, 31, 16, NULL, 1, 7, NULL, NULL, NULL, 10),
  -- Altaria - Safeguard - Level 9
  (334, 33400, 219, 16, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Altaria - Disarming Voice - Level 11
  (334, 33400, 574, 16, NULL, 1, 11, NULL, NULL, NULL, 12),
  -- Altaria - Mist - Level 14
  (334, 33400, 54, 16, NULL, 1, 14, NULL, NULL, NULL, 13),
  -- Altaria - Round - Level 17
  (334, 33400, 496, 16, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Altaria - Natural Gift - Level 20
  (334, 33400, 363, 16, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Altaria - Take Down - Level 23
  (334, 33400, 36, 16, NULL, 1, 23, NULL, NULL, NULL, 16),
  -- Altaria - Refresh - Level 26
  (334, 33400, 287, 16, NULL, 1, 26, NULL, NULL, NULL, 17),
  -- Altaria - Dragon Dance - Level 30
  (334, 33400, 349, 16, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Altaria - Cotton Guard - Level 34
  (334, 33400, 538, 16, NULL, 1, 34, NULL, NULL, NULL, 19),
  -- Altaria - Dragon Pulse - Level 40
  (334, 33400, 406, 16, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Altaria - Perish Song - Level 46
  (334, 33400, 195, 16, NULL, 1, 46, NULL, NULL, NULL, 21),
  -- Altaria - Moonblast - Level 52
  (334, 33400, 585, 16, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Altaria - Sky Attack - Level 59
  (334, 33400, 143, 16, NULL, 1, 59, NULL, NULL, NULL, 23),
  -- Altaria - Dragon Claw - TM02
  (334, 33400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 24),
  -- Altaria - Roar - TM05
  (334, 33400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 25),
  -- Altaria - Toxic - TM06
  (334, 33400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Altaria - Hidden Power - TM10
  (334, 33400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Altaria - Sunny Day - TM11
  (334, 33400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 28),
  -- Altaria - Ice Beam - TM13
  (334, 33400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 29),
  -- Altaria - Hyper Beam - TM15
  (334, 33400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 30),
  -- Altaria - Protect - TM17
  (334, 33400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Altaria - Rain Dance - TM18
  (334, 33400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Altaria - Roost - TM19
  (334, 33400, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 33),
  -- Altaria - Safeguard - TM20
  (334, 33400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 34),
  -- Altaria - Frustration - TM21
  (334, 33400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Altaria - Solar Beam - TM22
  (334, 33400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 36),
  -- Altaria - Earthquake - TM26
  (334, 33400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 37),
  -- Altaria - Return - TM27
  (334, 33400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 38),
  -- Altaria - Double Team - TM32
  (334, 33400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Altaria - Flamethrower - TM35
  (334, 33400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Altaria - Fire Blast - TM38
  (334, 33400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 41),
  -- Altaria - Aerial Ace - TM40
  (334, 33400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 42),
  -- Altaria - Facade - TM42
  (334, 33400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 43),
  -- Altaria - Rest - TM44
  (334, 33400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 44),
  -- Altaria - Attract - TM45
  (334, 33400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 45),
  -- Altaria - Thief - TM46
  (334, 33400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 46),
  -- Altaria - Round - TM48
  (334, 33400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 47),
  -- Altaria - Echoed Voice - TM49
  (334, 33400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 48),
  -- Altaria - Steel Wing - TM51
  (334, 33400, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 49),
  -- Altaria - Giga Impact - TM68
  (334, 33400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Altaria - Fly - TM76
  (334, 33400, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 51),
  -- Altaria - Psych Up - TM77
  (334, 33400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 52),
  -- Altaria - Bulldoze - TM78
  (334, 33400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 53),
  -- Altaria - Dream Eater - TM85
  (334, 33400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 54),
  -- Altaria - Swagger - TM87
  (334, 33400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Altaria - Sleep Talk - TM88
  (334, 33400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Altaria - Substitute - TM90
  (334, 33400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Altaria - Dazzling Gleam - TM99
  (334, 33400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 58),
  -- Altaria - Confide - TM100
  (334, 33400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Altaria - Sky Attack - Tutor
  (334, 33400, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Altaria - Snore - Tutor
  (334, 33400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Altaria - Outrage - Tutor
  (334, 33400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Altaria - Heal Bell - Tutor
  (334, 33400, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Altaria - Iron Tail - Tutor
  (334, 33400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Altaria - Uproar - Tutor
  (334, 33400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Altaria - Heat Wave - Tutor
  (334, 33400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Altaria - Hyper Voice - Tutor
  (334, 33400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Altaria - Tailwind - Tutor
  (334, 33400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Altaria - Dragon Pulse - Tutor
  (334, 33400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Altaria - Defog - Tutor
  (334, 33400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Altaria - Draco Meteor - Tutor
  (334, 33400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Altaria - Wonder Room - Tutor
  (334, 33400, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Altaria - Dragon Breath - Evolution
  (334, 33400, 225, 16, NULL, 7, NULL, NULL, NULL, NULL, 73),

  -- Zangoose - Scratch - Level 1
  (335, 33500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 1
  (335, 33500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Fury Cutter - Level 8
  (335, 33500, 210, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zangoose - Pursuit - Level 12
  (335, 33500, 228, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zangoose - Hone Claws - Level 15
  (335, 33500, 468, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zangoose - Slash - Level 19
  (335, 33500, 163, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zangoose - Revenge - Level 22
  (335, 33500, 279, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zangoose - Crush Claw - Level 26
  (335, 33500, 306, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zangoose - False Swipe - Level 29
  (335, 33500, 206, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zangoose - Embargo - Level 33
  (335, 33500, 373, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zangoose - Detect - Level 36
  (335, 33500, 197, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zangoose - X-Scissor - Level 40
  (335, 33500, 404, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zangoose - Taunt - Level 43
  (335, 33500, 269, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Zangoose - Swords Dance - Level 47
  (335, 33500, 14, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Zangoose - Close Combat - Level 50
  (335, 33500, 370, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Zangoose - Work Up - TM01
  (335, 33500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Zangoose - Roar - TM05
  (335, 33500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Zangoose - Toxic - TM06
  (335, 33500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Zangoose - Hidden Power - TM10
  (335, 33500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Zangoose - Sunny Day - TM11
  (335, 33500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Zangoose - Taunt - TM12
  (335, 33500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Zangoose - Ice Beam - TM13
  (335, 33500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Zangoose - Blizzard - TM14
  (335, 33500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Zangoose - Protect - TM17
  (335, 33500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Zangoose - Rain Dance - TM18
  (335, 33500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Zangoose - Frustration - TM21
  (335, 33500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Zangoose - Solar Beam - TM22
  (335, 33500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Zangoose - Thunderbolt - TM24
  (335, 33500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Zangoose - Thunder - TM25
  (335, 33500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Zangoose - Return - TM27
  (335, 33500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Zangoose - Shadow Ball - TM30
  (335, 33500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Zangoose - Brick Break - TM31
  (335, 33500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 33),
  -- Zangoose - Double Team - TM32
  (335, 33500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Zangoose - Flamethrower - TM35
  (335, 33500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 35),
  -- Zangoose - Fire Blast - TM38
  (335, 33500, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 36),
  -- Zangoose - Rock Tomb - TM39
  (335, 33500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Zangoose - Aerial Ace - TM40
  (335, 33500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Zangoose - Facade - TM42
  (335, 33500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Zangoose - Rest - TM44
  (335, 33500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 40),
  -- Zangoose - Attract - TM45
  (335, 33500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 41),
  -- Zangoose - Thief - TM46
  (335, 33500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 42),
  -- Zangoose - Round - TM48
  (335, 33500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Zangoose - Focus Blast - TM52
  (335, 33500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Zangoose - False Swipe - TM54
  (335, 33500, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 45),
  -- Zangoose - Fling - TM56
  (335, 33500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Zangoose - Embargo - TM63
  (335, 33500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 47),
  -- Zangoose - Shadow Claw - TM65
  (335, 33500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 48),
  -- Zangoose - Payback - TM66
  (335, 33500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 49),
  -- Zangoose - Swords Dance - TM75
  (335, 33500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 50),
  -- Zangoose - Rock Slide - TM80
  (335, 33500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Zangoose - X-Scissor - TM81
  (335, 33500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 52),
  -- Zangoose - Poison Jab - TM84
  (335, 33500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Zangoose - Swagger - TM87
  (335, 33500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Zangoose - Sleep Talk - TM88
  (335, 33500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Zangoose - Substitute - TM90
  (335, 33500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Zangoose - Confide - TM100
  (335, 33500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Zangoose - Razor Wind - Egg
  (335, 33500, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zangoose - Double Kick - Egg
  (335, 33500, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Zangoose - Disable - Egg
  (335, 33500, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Zangoose - Counter - Egg
  (335, 33500, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Zangoose - Fury Swipes - Egg
  (335, 33500, 154, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Zangoose - Curse - Egg
  (335, 33500, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zangoose - Flail - Egg
  (335, 33500, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Zangoose - Belly Drum - Egg
  (335, 33500, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Zangoose - Iron Tail - Egg
  (335, 33500, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zangoose - Metal Claw - Egg
  (335, 33500, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zangoose - Feint - Egg
  (335, 33500, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zangoose - Night Slash - Egg
  (335, 33500, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zangoose - Double Hit - Egg
  (335, 33500, 458, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Zangoose - Quick Guard - Egg
  (335, 33500, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Zangoose - Final Gambit - Egg
  (335, 33500, 515, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Zangoose - Fire Punch - Tutor
  (335, 33500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Zangoose - Ice Punch - Tutor
  (335, 33500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Zangoose - Thunder Punch - Tutor
  (335, 33500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Zangoose - Low Kick - Tutor
  (335, 33500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Zangoose - Snore - Tutor
  (335, 33500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Zangoose - Icy Wind - Tutor
  (335, 33500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Zangoose - Giga Drain - Tutor
  (335, 33500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Zangoose - Iron Tail - Tutor
  (335, 33500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Zangoose - Focus Punch - Tutor
  (335, 33500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Zangoose - Knock Off - Tutor
  (335, 33500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Zangoose - Endeavor - Tutor
  (335, 33500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Zangoose - Shock Wave - Tutor
  (335, 33500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Zangoose - Water Pulse - Tutor
  (335, 33500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Zangoose - Last Resort - Tutor
  (335, 33500, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Zangoose - Throat Chop - Tutor
  (335, 33500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),

  -- Seviper - Wrap - Level 1
  (336, 33600, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Swagger - Level 1
  (336, 33600, 207, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 4
  (336, 33600, 44, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Seviper - Lick - Level 6
  (336, 33600, 122, 16, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Seviper - Poison Tail - Level 9
  (336, 33600, 342, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Seviper - Feint - Level 11
  (336, 33600, 364, 16, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Seviper - Screech - Level 14
  (336, 33600, 103, 16, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Seviper - Venoshock - Level 16
  (336, 33600, 474, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Seviper - Glare - Level 19
  (336, 33600, 137, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Seviper - Poison Fang - Level 21
  (336, 33600, 305, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Seviper - Venom Drench - Level 24
  (336, 33600, 599, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Seviper - Night Slash - Level 26
  (336, 33600, 400, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Seviper - Gastro Acid - Level 29
  (336, 33600, 380, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Seviper - Poison Jab - Level 31
  (336, 33600, 398, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Seviper - Haze - Level 34
  (336, 33600, 114, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Seviper - Swords Dance - Level 36
  (336, 33600, 14, 16, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Seviper - Crunch - Level 39
  (336, 33600, 242, 16, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Seviper - Belch - Level 41
  (336, 33600, 562, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Seviper - Coil - Level 44
  (336, 33600, 489, 16, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Seviper - Wring Out - Level 46
  (336, 33600, 378, 16, NULL, 1, 46, NULL, NULL, NULL, 20),
  -- Seviper - Toxic - TM06
  (336, 33600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Seviper - Venoshock - TM09
  (336, 33600, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 22),
  -- Seviper - Hidden Power - TM10
  (336, 33600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Seviper - Sunny Day - TM11
  (336, 33600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Seviper - Taunt - TM12
  (336, 33600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Seviper - Protect - TM17
  (336, 33600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Seviper - Rain Dance - TM18
  (336, 33600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Seviper - Frustration - TM21
  (336, 33600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Seviper - Earthquake - TM26
  (336, 33600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Seviper - Return - TM27
  (336, 33600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Seviper - Double Team - TM32
  (336, 33600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Seviper - Sludge Wave - TM34
  (336, 33600, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 32),
  -- Seviper - Flamethrower - TM35
  (336, 33600, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Seviper - Sludge Bomb - TM36
  (336, 33600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 34),
  -- Seviper - Facade - TM42
  (336, 33600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Seviper - Rest - TM44
  (336, 33600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Seviper - Attract - TM45
  (336, 33600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Seviper - Thief - TM46
  (336, 33600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 38),
  -- Seviper - Round - TM48
  (336, 33600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Seviper - Brutal Swing - TM59
  (336, 33600, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 40),
  -- Seviper - Payback - TM66
  (336, 33600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Seviper - Swords Dance - TM75
  (336, 33600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Seviper - Bulldoze - TM78
  (336, 33600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Seviper - X-Scissor - TM81
  (336, 33600, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 44),
  -- Seviper - Dragon Tail - TM82
  (336, 33600, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 45),
  -- Seviper - Infestation - TM83
  (336, 33600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 46),
  -- Seviper - Poison Jab - TM84
  (336, 33600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Seviper - Swagger - TM87
  (336, 33600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Seviper - Sleep Talk - TM88
  (336, 33600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Seviper - Substitute - TM90
  (336, 33600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Seviper - Dark Pulse - TM97
  (336, 33600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 51),
  -- Seviper - Confide - TM100
  (336, 33600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Seviper - Body Slam - Egg
  (336, 33600, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seviper - Scary Face - Egg
  (336, 33600, 184, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seviper - Iron Tail - Egg
  (336, 33600, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seviper - Stockpile - Egg
  (336, 33600, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Seviper - Spit Up - Egg
  (336, 33600, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Seviper - Swallow - Egg
  (336, 33600, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Seviper - Assurance - Egg
  (336, 33600, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Seviper - Wring Out - Egg
  (336, 33600, 378, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Seviper - Punishment - Egg
  (336, 33600, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Seviper - Night Slash - Egg
  (336, 33600, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Seviper - Switcheroo - Egg
  (336, 33600, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Seviper - Final Gambit - Egg
  (336, 33600, 515, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Seviper - Bind - Tutor
  (336, 33600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Seviper - Snore - Tutor
  (336, 33600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Seviper - Giga Drain - Tutor
  (336, 33600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Seviper - Iron Tail - Tutor
  (336, 33600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Seviper - Knock Off - Tutor
  (336, 33600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Seviper - Snatch - Tutor
  (336, 33600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Seviper - Gastro Acid - Tutor
  (336, 33600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Seviper - Aqua Tail - Tutor
  (336, 33600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Seviper - Throat Chop - Tutor
  (336, 33600, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),

  -- Lunatone - Tackle - Level 1
  (337, 33700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunatone - Rock Throw - Level 1
  (337, 33700, 88, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunatone - Confusion - Level 1
  (337, 33700, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunatone - Harden - Level 1
  (337, 33700, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lunatone - Power Gem - Level 1
  (337, 33700, 408, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lunatone - Psyshock - Level 1
  (337, 33700, 473, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lunatone - Moonblast - Level 1
  (337, 33700, 585, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lunatone - Hypnosis - Level 5
  (337, 33700, 95, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Lunatone - Rock Polish - Level 9
  (337, 33700, 397, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Lunatone - Psywave - Level 13
  (337, 33700, 149, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Lunatone - Embargo - Level 17
  (337, 33700, 373, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Lunatone - Rock Slide - Level 21
  (337, 33700, 157, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Lunatone - Cosmic Power - Level 25
  (337, 33700, 322, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Lunatone - Psychic - Level 29
  (337, 33700, 94, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Lunatone - Heal Block - Level 33
  (337, 33700, 377, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Lunatone - Stone Edge - Level 37
  (337, 33700, 444, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Lunatone - Future Sight - Level 41
  (337, 33700, 248, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Lunatone - Explosion - Level 45
  (337, 33700, 153, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Lunatone - Magic Room - Level 49
  (337, 33700, 478, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Lunatone - Psyshock - TM03
  (337, 33700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 20),
  -- Lunatone - Calm Mind - TM04
  (337, 33700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Lunatone - Toxic - TM06
  (337, 33700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Lunatone - Hidden Power - TM10
  (337, 33700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Lunatone - Ice Beam - TM13
  (337, 33700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Lunatone - Blizzard - TM14
  (337, 33700, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Lunatone - Hyper Beam - TM15
  (337, 33700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Lunatone - Light Screen - TM16
  (337, 33700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Lunatone - Protect - TM17
  (337, 33700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Lunatone - Rain Dance - TM18
  (337, 33700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Lunatone - Safeguard - TM20
  (337, 33700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 30),
  -- Lunatone - Frustration - TM21
  (337, 33700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Lunatone - Smack Down - TM23
  (337, 33700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 32),
  -- Lunatone - Earthquake - TM26
  (337, 33700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Lunatone - Return - TM27
  (337, 33700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Lunatone - Psychic - TM29
  (337, 33700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 35),
  -- Lunatone - Shadow Ball - TM30
  (337, 33700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 36),
  -- Lunatone - Double Team - TM32
  (337, 33700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 37),
  -- Lunatone - Reflect - TM33
  (337, 33700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 38),
  -- Lunatone - Sandstorm - TM37
  (337, 33700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 39),
  -- Lunatone - Rock Tomb - TM39
  (337, 33700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 40),
  -- Lunatone - Facade - TM42
  (337, 33700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 41),
  -- Lunatone - Rest - TM44
  (337, 33700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Lunatone - Round - TM48
  (337, 33700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Lunatone - Charge Beam - TM57
  (337, 33700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 44),
  -- Lunatone - Acrobatics - TM62
  (337, 33700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 45),
  -- Lunatone - Embargo - TM63
  (337, 33700, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 46),
  -- Lunatone - Explosion - TM64
  (337, 33700, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 47),
  -- Lunatone - Giga Impact - TM68
  (337, 33700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Lunatone - Rock Polish - TM69
  (337, 33700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 49),
  -- Lunatone - Stone Edge - TM71
  (337, 33700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 50),
  -- Lunatone - Gyro Ball - TM74
  (337, 33700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 51),
  -- Lunatone - Psych Up - TM77
  (337, 33700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 52),
  -- Lunatone - Bulldoze - TM78
  (337, 33700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 53),
  -- Lunatone - Rock Slide - TM80
  (337, 33700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 54),
  -- Lunatone - Dream Eater - TM85
  (337, 33700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 55),
  -- Lunatone - Grass Knot - TM86
  (337, 33700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Lunatone - Swagger - TM87
  (337, 33700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Lunatone - Sleep Talk - TM88
  (337, 33700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Lunatone - Substitute - TM90
  (337, 33700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Lunatone - Trick Room - TM92
  (337, 33700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Lunatone - Confide - TM100
  (337, 33700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Lunatone - Snore - Tutor
  (337, 33700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Lunatone - Icy Wind - Tutor
  (337, 33700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Lunatone - Pain Split - Tutor
  (337, 33700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Lunatone - Helping Hand - Tutor
  (337, 33700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Lunatone - Magic Coat - Tutor
  (337, 33700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Lunatone - Recycle - Tutor
  (337, 33700, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Lunatone - Skill Swap - Tutor
  (337, 33700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Lunatone - Signal Beam - Tutor
  (337, 33700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Lunatone - Gravity - Tutor
  (337, 33700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Lunatone - Earth Power - Tutor
  (337, 33700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Lunatone - Zen Headbutt - Tutor
  (337, 33700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Lunatone - Iron Head - Tutor
  (337, 33700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Lunatone - Stealth Rock - Tutor
  (337, 33700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Lunatone - Telekinesis - Tutor
  (337, 33700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Lunatone - Magic Room - Tutor
  (337, 33700, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Lunatone - Ally Switch - Tutor
  (337, 33700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Lunatone - Laser Focus - Tutor
  (337, 33700, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Lunatone - Stomping Tantrum - Tutor
  (337, 33700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Solrock - Tackle - Level 1
  (338, 33800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solrock - Rock Throw - Level 1
  (338, 33800, 88, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solrock - Confusion - Level 1
  (338, 33800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solrock - Harden - Level 1
  (338, 33800, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Solrock - Flare Blitz - Level 1
  (338, 33800, 394, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Solrock - Fire Spin - Level 5
  (338, 33800, 83, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Solrock - Rock Polish - Level 9
  (338, 33800, 397, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Solrock - Psywave - Level 13
  (338, 33800, 149, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Solrock - Embargo - Level 17
  (338, 33800, 373, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Solrock - Rock Slide - Level 21
  (338, 33800, 157, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Solrock - Cosmic Power - Level 25
  (338, 33800, 322, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Solrock - Psychic - Level 29
  (338, 33800, 94, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Solrock - Heal Block - Level 33
  (338, 33800, 377, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Solrock - Stone Edge - Level 37
  (338, 33800, 444, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Solrock - Solar Beam - Level 41
  (338, 33800, 76, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Solrock - Explosion - Level 45
  (338, 33800, 153, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Solrock - Wonder Room - Level 49
  (338, 33800, 472, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Solrock - Psyshock - TM03
  (338, 33800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Solrock - Calm Mind - TM04
  (338, 33800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Solrock - Toxic - TM06
  (338, 33800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Solrock - Hidden Power - TM10
  (338, 33800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Solrock - Sunny Day - TM11
  (338, 33800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Solrock - Hyper Beam - TM15
  (338, 33800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Solrock - Light Screen - TM16
  (338, 33800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Solrock - Protect - TM17
  (338, 33800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Solrock - Safeguard - TM20
  (338, 33800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Solrock - Frustration - TM21
  (338, 33800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Solrock - Solar Beam - TM22
  (338, 33800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Solrock - Smack Down - TM23
  (338, 33800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Solrock - Earthquake - TM26
  (338, 33800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Solrock - Return - TM27
  (338, 33800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Solrock - Psychic - TM29
  (338, 33800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Solrock - Shadow Ball - TM30
  (338, 33800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Solrock - Double Team - TM32
  (338, 33800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Solrock - Reflect - TM33
  (338, 33800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 35),
  -- Solrock - Flamethrower - TM35
  (338, 33800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Solrock - Sandstorm - TM37
  (338, 33800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 37),
  -- Solrock - Fire Blast - TM38
  (338, 33800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Solrock - Rock Tomb - TM39
  (338, 33800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Solrock - Facade - TM42
  (338, 33800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Solrock - Rest - TM44
  (338, 33800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Solrock - Round - TM48
  (338, 33800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Solrock - Overheat - TM50
  (338, 33800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 43),
  -- Solrock - Charge Beam - TM57
  (338, 33800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 44),
  -- Solrock - Will-O-Wisp - TM61
  (338, 33800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 45),
  -- Solrock - Acrobatics - TM62
  (338, 33800, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 46),
  -- Solrock - Embargo - TM63
  (338, 33800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 47),
  -- Solrock - Explosion - TM64
  (338, 33800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 48),
  -- Solrock - Giga Impact - TM68
  (338, 33800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Solrock - Rock Polish - TM69
  (338, 33800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 50),
  -- Solrock - Stone Edge - TM71
  (338, 33800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 51),
  -- Solrock - Gyro Ball - TM74
  (338, 33800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 52),
  -- Solrock - Psych Up - TM77
  (338, 33800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Solrock - Bulldoze - TM78
  (338, 33800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Solrock - Rock Slide - TM80
  (338, 33800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Solrock - Dream Eater - TM85
  (338, 33800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 56),
  -- Solrock - Grass Knot - TM86
  (338, 33800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 57),
  -- Solrock - Swagger - TM87
  (338, 33800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Solrock - Sleep Talk - TM88
  (338, 33800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Solrock - Substitute - TM90
  (338, 33800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Solrock - Trick Room - TM92
  (338, 33800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 61),
  -- Solrock - Confide - TM100
  (338, 33800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Solrock - Snore - Tutor
  (338, 33800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Solrock - Pain Split - Tutor
  (338, 33800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Solrock - Heat Wave - Tutor
  (338, 33800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Solrock - Helping Hand - Tutor
  (338, 33800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Solrock - Magic Coat - Tutor
  (338, 33800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Solrock - Recycle - Tutor
  (338, 33800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Solrock - Skill Swap - Tutor
  (338, 33800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Solrock - Signal Beam - Tutor
  (338, 33800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Solrock - Iron Defense - Tutor
  (338, 33800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Solrock - Gravity - Tutor
  (338, 33800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Solrock - Earth Power - Tutor
  (338, 33800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Solrock - Zen Headbutt - Tutor
  (338, 33800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Solrock - Iron Head - Tutor
  (338, 33800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Solrock - Stealth Rock - Tutor
  (338, 33800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Solrock - Wonder Room - Tutor
  (338, 33800, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Solrock - Telekinesis - Tutor
  (338, 33800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Solrock - Ally Switch - Tutor
  (338, 33800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Solrock - Laser Focus - Tutor
  (338, 33800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Solrock - Stomping Tantrum - Tutor
  (338, 33800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),

  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud Sport - Level 6
  (339, 33900, 300, 16, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Barboach - Water Sport - Level 6
  (339, 33900, 346, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Water Gun - Level 9
  (339, 33900, 55, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Barboach - Mud Bomb - Level 13
  (339, 33900, 426, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 15
  (339, 33900, 133, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Barboach - Water Pulse - Level 17
  (339, 33900, 352, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Barboach - Magnitude - Level 20
  (339, 33900, 222, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Barboach - Rest - Level 25
  (339, 33900, 156, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Barboach - Snore - Level 25
  (339, 33900, 173, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Barboach - Aqua Tail - Level 28
  (339, 33900, 401, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Barboach - Earthquake - Level 32
  (339, 33900, 89, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Barboach - Muddy Water - Level 35
  (339, 33900, 330, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Barboach - Future Sight - Level 39
  (339, 33900, 248, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Barboach - Fissure - Level 44
  (339, 33900, 90, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Barboach - Toxic - TM06
  (339, 33900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Barboach - Hail - TM07
  (339, 33900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Barboach - Hidden Power - TM10
  (339, 33900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Barboach - Ice Beam - TM13
  (339, 33900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Barboach - Blizzard - TM14
  (339, 33900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Barboach - Protect - TM17
  (339, 33900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Barboach - Rain Dance - TM18
  (339, 33900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Barboach - Frustration - TM21
  (339, 33900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Barboach - Earthquake - TM26
  (339, 33900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Barboach - Return - TM27
  (339, 33900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Barboach - Double Team - TM32
  (339, 33900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Barboach - Sandstorm - TM37
  (339, 33900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 27),
  -- Barboach - Rock Tomb - TM39
  (339, 33900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Barboach - Facade - TM42
  (339, 33900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Barboach - Rest - TM44
  (339, 33900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Barboach - Attract - TM45
  (339, 33900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Barboach - Round - TM48
  (339, 33900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Barboach - Scald - TM55
  (339, 33900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Barboach - Bulldoze - TM78
  (339, 33900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 34),
  -- Barboach - Swagger - TM87
  (339, 33900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Barboach - Sleep Talk - TM88
  (339, 33900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Barboach - Substitute - TM90
  (339, 33900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Barboach - Surf - TM94
  (339, 33900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 38),
  -- Barboach - Waterfall - TM98
  (339, 33900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 39),
  -- Barboach - Confide - TM100
  (339, 33900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Barboach - Take Down - Egg
  (339, 33900, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Barboach - Thrash - Egg
  (339, 33900, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Barboach - Hydro Pump - Egg
  (339, 33900, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Barboach - Flail - Egg
  (339, 33900, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Barboach - Spark - Egg
  (339, 33900, 209, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Barboach - Whirlpool - Egg
  (339, 33900, 250, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Barboach - Muddy Water - Egg
  (339, 33900, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Barboach - Mud Shot - Egg
  (339, 33900, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Barboach - Dragon Dance - Egg
  (339, 33900, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Barboach - Earth Power - Egg
  (339, 33900, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Barboach - Snore - Tutor
  (339, 33900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Barboach - Icy Wind - Tutor
  (339, 33900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Barboach - Bounce - Tutor
  (339, 33900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Barboach - Water Pulse - Tutor
  (339, 33900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Barboach - Aqua Tail - Tutor
  (339, 33900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Barboach - Earth Power - Tutor
  (339, 33900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),

  -- Whiscash - Thrash - Level 1
  (340, 34000, 37, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Water Gun - Level 1
  (340, 34000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Mud Sport - Level 1
  (340, 34000, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whiscash - Water Sport - Level 1
  (340, 34000, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Whiscash - Zen Headbutt - Level 1
  (340, 34000, 428, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Whiscash - Belch - Level 1
  (340, 34000, 562, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Whiscash - Mud Sport - Level 6
  (340, 34000, 300, 16, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Whiscash - Water Sport - Level 6
  (340, 34000, 346, 16, NULL, 1, 6, NULL, NULL, NULL, 10),
  -- Whiscash - Water Gun - Level 9
  (340, 34000, 55, 16, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Whiscash - Mud Bomb - Level 13
  (340, 34000, 426, 16, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Whiscash - Amnesia - Level 15
  (340, 34000, 133, 16, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Whiscash - Water Pulse - Level 17
  (340, 34000, 352, 16, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Whiscash - Magnitude - Level 20
  (340, 34000, 222, 16, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Whiscash - Rest - Level 25
  (340, 34000, 156, 16, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Whiscash - Snore - Level 25
  (340, 34000, 173, 16, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Whiscash - Aqua Tail - Level 28
  (340, 34000, 401, 16, NULL, 1, 28, NULL, NULL, NULL, 18),
  -- Whiscash - Earthquake - Level 34
  (340, 34000, 89, 16, NULL, 1, 34, NULL, NULL, NULL, 19),
  -- Whiscash - Muddy Water - Level 39
  (340, 34000, 330, 16, NULL, 1, 39, NULL, NULL, NULL, 20),
  -- Whiscash - Future Sight - Level 45
  (340, 34000, 248, 16, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Whiscash - Fissure - Level 52
  (340, 34000, 90, 16, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Whiscash - Toxic - TM06
  (340, 34000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Whiscash - Hail - TM07
  (340, 34000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 24),
  -- Whiscash - Hidden Power - TM10
  (340, 34000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Whiscash - Ice Beam - TM13
  (340, 34000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Whiscash - Blizzard - TM14
  (340, 34000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Whiscash - Hyper Beam - TM15
  (340, 34000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Whiscash - Protect - TM17
  (340, 34000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Whiscash - Rain Dance - TM18
  (340, 34000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Whiscash - Frustration - TM21
  (340, 34000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Whiscash - Earthquake - TM26
  (340, 34000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Whiscash - Return - TM27
  (340, 34000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Whiscash - Double Team - TM32
  (340, 34000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Whiscash - Sandstorm - TM37
  (340, 34000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Whiscash - Rock Tomb - TM39
  (340, 34000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Whiscash - Facade - TM42
  (340, 34000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Whiscash - Rest - TM44
  (340, 34000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Whiscash - Attract - TM45
  (340, 34000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Whiscash - Round - TM48
  (340, 34000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Whiscash - Scald - TM55
  (340, 34000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 41),
  -- Whiscash - Giga Impact - TM68
  (340, 34000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Whiscash - Stone Edge - TM71
  (340, 34000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 43),
  -- Whiscash - Bulldoze - TM78
  (340, 34000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Whiscash - Rock Slide - TM80
  (340, 34000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Whiscash - Swagger - TM87
  (340, 34000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Whiscash - Sleep Talk - TM88
  (340, 34000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Whiscash - Substitute - TM90
  (340, 34000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Whiscash - Surf - TM94
  (340, 34000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 49),
  -- Whiscash - Waterfall - TM98
  (340, 34000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 50),
  -- Whiscash - Confide - TM100
  (340, 34000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Whiscash - Snore - Tutor
  (340, 34000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Whiscash - Icy Wind - Tutor
  (340, 34000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Whiscash - Bounce - Tutor
  (340, 34000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Whiscash - Water Pulse - Tutor
  (340, 34000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Whiscash - Aqua Tail - Tutor
  (340, 34000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Whiscash - Earth Power - Tutor
  (340, 34000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Whiscash - Zen Headbutt - Tutor
  (340, 34000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Whiscash - Stomping Tantrum - Tutor
  (340, 34000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Whiscash - Thrash - Evolution
  (340, 34000, 37, 16, NULL, 7, NULL, NULL, NULL, NULL, 60),

  -- Corphish - Bubble - Level 1
  (341, 34100, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 5
  (341, 34100, 106, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Corphish - Vise Grip - Level 7
  (341, 34100, 11, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Corphish - Leer - Level 10
  (341, 34100, 43, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 14
  (341, 34100, 61, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Corphish - Protect - Level 17
  (341, 34100, 182, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Corphish - Double Hit - Level 20
  (341, 34100, 458, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Corphish - Knock Off - Level 23
  (341, 34100, 282, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 26
  (341, 34100, 400, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Corphish - Razor Shell - Level 31
  (341, 34100, 534, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Corphish - Taunt - Level 34
  (341, 34100, 269, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Corphish - Swords Dance - Level 37
  (341, 34100, 14, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Corphish - Crunch - Level 39
  (341, 34100, 242, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Corphish - Crabhammer - Level 43
  (341, 34100, 152, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Corphish - Guillotine - Level 48
  (341, 34100, 12, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Corphish - Toxic - TM06
  (341, 34100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Corphish - Hail - TM07
  (341, 34100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Corphish - Hidden Power - TM10
  (341, 34100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Corphish - Taunt - TM12
  (341, 34100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Corphish - Ice Beam - TM13
  (341, 34100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Corphish - Blizzard - TM14
  (341, 34100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Corphish - Protect - TM17
  (341, 34100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Corphish - Rain Dance - TM18
  (341, 34100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Corphish - Frustration - TM21
  (341, 34100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Corphish - Return - TM27
  (341, 34100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Corphish - Brick Break - TM31
  (341, 34100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 26),
  -- Corphish - Double Team - TM32
  (341, 34100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Corphish - Sludge Bomb - TM36
  (341, 34100, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 28),
  -- Corphish - Rock Tomb - TM39
  (341, 34100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Corphish - Aerial Ace - TM40
  (341, 34100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Corphish - Facade - TM42
  (341, 34100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Corphish - Rest - TM44
  (341, 34100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Corphish - Attract - TM45
  (341, 34100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Corphish - Round - TM48
  (341, 34100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Corphish - False Swipe - TM54
  (341, 34100, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 35),
  -- Corphish - Scald - TM55
  (341, 34100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 36),
  -- Corphish - Fling - TM56
  (341, 34100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Corphish - Payback - TM66
  (341, 34100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Corphish - Swords Dance - TM75
  (341, 34100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Corphish - Rock Slide - TM80
  (341, 34100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 40),
  -- Corphish - X-Scissor - TM81
  (341, 34100, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 41),
  -- Corphish - Swagger - TM87
  (341, 34100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Corphish - Sleep Talk - TM88
  (341, 34100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Corphish - Substitute - TM90
  (341, 34100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Corphish - Surf - TM94
  (341, 34100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 45),
  -- Corphish - Waterfall - TM98
  (341, 34100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 46),
  -- Corphish - Confide - TM100
  (341, 34100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Corphish - Body Slam - Egg
  (341, 34100, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Corphish - Double-Edge - Egg
  (341, 34100, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Corphish - Metal Claw - Egg
  (341, 34100, 232, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Corphish - Ancient Power - Egg
  (341, 34100, 246, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corphish - Superpower - Egg
  (341, 34100, 276, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corphish - Knock Off - Egg
  (341, 34100, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Endeavor - Egg
  (341, 34100, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Mud Sport - Egg
  (341, 34100, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Dragon Dance - Egg
  (341, 34100, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corphish - Trump Card - Egg
  (341, 34100, 376, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corphish - Switcheroo - Egg
  (341, 34100, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corphish - Aqua Jet - Egg
  (341, 34100, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corphish - Chip Away - Egg
  (341, 34100, 498, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corphish - Snore - Tutor
  (341, 34100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Corphish - Spite - Tutor
  (341, 34100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Corphish - Icy Wind - Tutor
  (341, 34100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Corphish - Superpower - Tutor
  (341, 34100, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Corphish - Knock Off - Tutor
  (341, 34100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Corphish - Endeavor - Tutor
  (341, 34100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Corphish - Iron Defense - Tutor
  (341, 34100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Corphish - Water Pulse - Tutor
  (341, 34100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Crawdaunt - Vise Grip - Level 1
  (342, 34200, 11, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Swift - Level 1
  (342, 34200, 129, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Bubble - Level 1
  (342, 34200, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crawdaunt - Harden - Level 5
  (342, 34200, 106, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Crawdaunt - Vise Grip - Level 7
  (342, 34200, 11, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Crawdaunt - Leer - Level 10
  (342, 34200, 43, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Crawdaunt - Bubble Beam - Level 14
  (342, 34200, 61, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Crawdaunt - Protect - Level 17
  (342, 34200, 182, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Crawdaunt - Double Hit - Level 20
  (342, 34200, 458, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Crawdaunt - Knock Off - Level 23
  (342, 34200, 282, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Crawdaunt - Night Slash - Level 26
  (342, 34200, 400, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Crawdaunt - Razor Shell - Level 32
  (342, 34200, 534, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Crawdaunt - Taunt - Level 36
  (342, 34200, 269, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Crawdaunt - Swords Dance - Level 40
  (342, 34200, 14, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Crawdaunt - Crunch - Level 43
  (342, 34200, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Crawdaunt - Crabhammer - Level 48
  (342, 34200, 152, 16, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Crawdaunt - Guillotine - Level 54
  (342, 34200, 12, 16, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Crawdaunt - Toxic - TM06
  (342, 34200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Crawdaunt - Hail - TM07
  (342, 34200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Crawdaunt - Hidden Power - TM10
  (342, 34200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Crawdaunt - Taunt - TM12
  (342, 34200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Crawdaunt - Ice Beam - TM13
  (342, 34200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Crawdaunt - Blizzard - TM14
  (342, 34200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Crawdaunt - Hyper Beam - TM15
  (342, 34200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Crawdaunt - Protect - TM17
  (342, 34200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Crawdaunt - Rain Dance - TM18
  (342, 34200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Crawdaunt - Frustration - TM21
  (342, 34200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Crawdaunt - Return - TM27
  (342, 34200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Crawdaunt - Brick Break - TM31
  (342, 34200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Crawdaunt - Double Team - TM32
  (342, 34200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Crawdaunt - Sludge Wave - TM34
  (342, 34200, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 33),
  -- Crawdaunt - Sludge Bomb - TM36
  (342, 34200, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 34),
  -- Crawdaunt - Rock Tomb - TM39
  (342, 34200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Crawdaunt - Aerial Ace - TM40
  (342, 34200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Crawdaunt - Facade - TM42
  (342, 34200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Crawdaunt - Rest - TM44
  (342, 34200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Crawdaunt - Attract - TM45
  (342, 34200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Crawdaunt - Round - TM48
  (342, 34200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Crawdaunt - False Swipe - TM54
  (342, 34200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 41),
  -- Crawdaunt - Scald - TM55
  (342, 34200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 42),
  -- Crawdaunt - Fling - TM56
  (342, 34200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Crawdaunt - Payback - TM66
  (342, 34200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 44),
  -- Crawdaunt - Giga Impact - TM68
  (342, 34200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Crawdaunt - Swords Dance - TM75
  (342, 34200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Crawdaunt - Rock Slide - TM80
  (342, 34200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Crawdaunt - X-Scissor - TM81
  (342, 34200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 48),
  -- Crawdaunt - Swagger - TM87
  (342, 34200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Crawdaunt - Sleep Talk - TM88
  (342, 34200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Crawdaunt - Substitute - TM90
  (342, 34200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Crawdaunt - Surf - TM94
  (342, 34200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Crawdaunt - Snarl - TM95
  (342, 34200, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 53),
  -- Crawdaunt - Nature Power - TM96
  (342, 34200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 54),
  -- Crawdaunt - Dark Pulse - TM97
  (342, 34200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 55),
  -- Crawdaunt - Waterfall - TM98
  (342, 34200, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 56),
  -- Crawdaunt - Confide - TM100
  (342, 34200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Crawdaunt - Snore - Tutor
  (342, 34200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Crawdaunt - Spite - Tutor
  (342, 34200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Crawdaunt - Icy Wind - Tutor
  (342, 34200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Crawdaunt - Superpower - Tutor
  (342, 34200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Crawdaunt - Knock Off - Tutor
  (342, 34200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Crawdaunt - Endeavor - Tutor
  (342, 34200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Crawdaunt - Iron Defense - Tutor
  (342, 34200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Crawdaunt - Water Pulse - Tutor
  (342, 34200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Crawdaunt - Liquidation - Tutor
  (342, 34200, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Crawdaunt - Swift - Evolution
  (342, 34200, 129, 16, NULL, 7, NULL, NULL, NULL, NULL, 67),

  -- Baltoy - Confusion - Level 1
  (343, 34300, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baltoy - Harden - Level 1
  (343, 34300, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 4
  (343, 34300, 229, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Baltoy - Mud-Slap - Level 7
  (343, 34300, 189, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Baltoy - Heal Block - Level 10
  (343, 34300, 377, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Baltoy - Rock Tomb - Level 13
  (343, 34300, 317, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Baltoy - Psybeam - Level 16
  (343, 34300, 60, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 19
  (343, 34300, 246, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Baltoy - Cosmic Power - Level 22
  (343, 34300, 322, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Baltoy - Power Trick - Level 25
  (343, 34300, 379, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Baltoy - Self-Destruct - Level 28
  (343, 34300, 120, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Baltoy - Extrasensory - Level 31
  (343, 34300, 326, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Baltoy - Guard Split - Level 34
  (343, 34300, 470, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Baltoy - Power Split - Level 34
  (343, 34300, 471, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Baltoy - Earth Power - Level 37
  (343, 34300, 414, 16, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Baltoy - Sandstorm - Level 40
  (343, 34300, 201, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Baltoy - Imprison - Level 43
  (343, 34300, 286, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Baltoy - Explosion - Level 46
  (343, 34300, 153, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Baltoy - Psyshock - TM03
  (343, 34300, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 19),
  -- Baltoy - Calm Mind - TM04
  (343, 34300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Baltoy - Toxic - TM06
  (343, 34300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Baltoy - Hidden Power - TM10
  (343, 34300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Baltoy - Sunny Day - TM11
  (343, 34300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Baltoy - Ice Beam - TM13
  (343, 34300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Baltoy - Light Screen - TM16
  (343, 34300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Baltoy - Protect - TM17
  (343, 34300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Baltoy - Rain Dance - TM18
  (343, 34300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Baltoy - Safeguard - TM20
  (343, 34300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Baltoy - Frustration - TM21
  (343, 34300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Baltoy - Solar Beam - TM22
  (343, 34300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Baltoy - Smack Down - TM23
  (343, 34300, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 31),
  -- Baltoy - Earthquake - TM26
  (343, 34300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Baltoy - Return - TM27
  (343, 34300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Baltoy - Psychic - TM29
  (343, 34300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 34),
  -- Baltoy - Shadow Ball - TM30
  (343, 34300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Baltoy - Double Team - TM32
  (343, 34300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Baltoy - Reflect - TM33
  (343, 34300, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 37),
  -- Baltoy - Sandstorm - TM37
  (343, 34300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 38),
  -- Baltoy - Rock Tomb - TM39
  (343, 34300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Baltoy - Facade - TM42
  (343, 34300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Baltoy - Rest - TM44
  (343, 34300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Baltoy - Round - TM48
  (343, 34300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Baltoy - Charge Beam - TM57
  (343, 34300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Baltoy - Explosion - TM64
  (343, 34300, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 44),
  -- Baltoy - Rock Polish - TM69
  (343, 34300, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 45),
  -- Baltoy - Gyro Ball - TM74
  (343, 34300, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 46),
  -- Baltoy - Psych Up - TM77
  (343, 34300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Baltoy - Bulldoze - TM78
  (343, 34300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Baltoy - Rock Slide - TM80
  (343, 34300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Baltoy - Dream Eater - TM85
  (343, 34300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 50),
  -- Baltoy - Grass Knot - TM86
  (343, 34300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 51),
  -- Baltoy - Swagger - TM87
  (343, 34300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Baltoy - Sleep Talk - TM88
  (343, 34300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Baltoy - Substitute - TM90
  (343, 34300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Baltoy - Trick Room - TM92
  (343, 34300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 55),
  -- Baltoy - Dazzling Gleam - TM99
  (343, 34300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 56),
  -- Baltoy - Confide - TM100
  (343, 34300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 57),
  -- Baltoy - Snore - Tutor
  (343, 34300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Baltoy - Trick - Tutor
  (343, 34300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Baltoy - Magic Coat - Tutor
  (343, 34300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Baltoy - Recycle - Tutor
  (343, 34300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Baltoy - Skill Swap - Tutor
  (343, 34300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Baltoy - Signal Beam - Tutor
  (343, 34300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Baltoy - Gravity - Tutor
  (343, 34300, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Baltoy - Earth Power - Tutor
  (343, 34300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Baltoy - Zen Headbutt - Tutor
  (343, 34300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Baltoy - Stealth Rock - Tutor
  (343, 34300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Baltoy - Wonder Room - Tutor
  (343, 34300, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Baltoy - Telekinesis - Tutor
  (343, 34300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Baltoy - Ally Switch - Tutor
  (343, 34300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Baltoy - Drill Run - Tutor
  (343, 34300, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Claydol - Hyper Beam - Level 1
  (344, 34400, 63, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Claydol - Confusion - Level 1
  (344, 34400, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Claydol - Teleport - Level 1
  (344, 34400, 100, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Claydol - Harden - Level 1
  (344, 34400, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Claydol - Rapid Spin - Level 1
  (344, 34400, 229, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Claydol - Rapid Spin - Level 4
  (344, 34400, 229, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Claydol - Mud-Slap - Level 7
  (344, 34400, 189, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Claydol - Heal Block - Level 10
  (344, 34400, 377, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Claydol - Rock Tomb - Level 13
  (344, 34400, 317, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Claydol - Psybeam - Level 16
  (344, 34400, 60, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Claydol - Ancient Power - Level 19
  (344, 34400, 246, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Claydol - Cosmic Power - Level 22
  (344, 34400, 322, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Claydol - Power Trick - Level 25
  (344, 34400, 379, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Claydol - Self-Destruct - Level 28
  (344, 34400, 120, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Claydol - Extrasensory - Level 31
  (344, 34400, 326, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Claydol - Guard Split - Level 34
  (344, 34400, 470, 16, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Claydol - Power Split - Level 34
  (344, 34400, 471, 16, NULL, 1, 34, NULL, NULL, NULL, 17),
  -- Claydol - Earth Power - Level 40
  (344, 34400, 414, 16, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Claydol - Sandstorm - Level 46
  (344, 34400, 201, 16, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Claydol - Imprison - Level 52
  (344, 34400, 286, 16, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Claydol - Explosion - Level 58
  (344, 34400, 153, 16, NULL, 1, 58, NULL, NULL, NULL, 21),
  -- Claydol - Psyshock - TM03
  (344, 34400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 22),
  -- Claydol - Calm Mind - TM04
  (344, 34400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Claydol - Toxic - TM06
  (344, 34400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Claydol - Hidden Power - TM10
  (344, 34400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Claydol - Sunny Day - TM11
  (344, 34400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Claydol - Ice Beam - TM13
  (344, 34400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 27),
  -- Claydol - Hyper Beam - TM15
  (344, 34400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Claydol - Light Screen - TM16
  (344, 34400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 29),
  -- Claydol - Protect - TM17
  (344, 34400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 30),
  -- Claydol - Rain Dance - TM18
  (344, 34400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 31),
  -- Claydol - Safeguard - TM20
  (344, 34400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 32),
  -- Claydol - Frustration - TM21
  (344, 34400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 33),
  -- Claydol - Solar Beam - TM22
  (344, 34400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 34),
  -- Claydol - Smack Down - TM23
  (344, 34400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 35),
  -- Claydol - Earthquake - TM26
  (344, 34400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Claydol - Return - TM27
  (344, 34400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Claydol - Psychic - TM29
  (344, 34400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 38),
  -- Claydol - Shadow Ball - TM30
  (344, 34400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 39),
  -- Claydol - Double Team - TM32
  (344, 34400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 40),
  -- Claydol - Reflect - TM33
  (344, 34400, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 41),
  -- Claydol - Sandstorm - TM37
  (344, 34400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 42),
  -- Claydol - Rock Tomb - TM39
  (344, 34400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 43),
  -- Claydol - Facade - TM42
  (344, 34400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 44),
  -- Claydol - Rest - TM44
  (344, 34400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 45),
  -- Claydol - Round - TM48
  (344, 34400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 46),
  -- Claydol - Charge Beam - TM57
  (344, 34400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 47),
  -- Claydol - Explosion - TM64
  (344, 34400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 48),
  -- Claydol - Giga Impact - TM68
  (344, 34400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Claydol - Rock Polish - TM69
  (344, 34400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 50),
  -- Claydol - Stone Edge - TM71
  (344, 34400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 51),
  -- Claydol - Gyro Ball - TM74
  (344, 34400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 52),
  -- Claydol - Psych Up - TM77
  (344, 34400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 53),
  -- Claydol - Bulldoze - TM78
  (344, 34400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Claydol - Rock Slide - TM80
  (344, 34400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Claydol - Dream Eater - TM85
  (344, 34400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 56),
  -- Claydol - Grass Knot - TM86
  (344, 34400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 57),
  -- Claydol - Swagger - TM87
  (344, 34400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Claydol - Sleep Talk - TM88
  (344, 34400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Claydol - Substitute - TM90
  (344, 34400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 60),
  -- Claydol - Trick Room - TM92
  (344, 34400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 61),
  -- Claydol - Dazzling Gleam - TM99
  (344, 34400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 62),
  -- Claydol - Confide - TM100
  (344, 34400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Claydol - Snore - Tutor
  (344, 34400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Claydol - Trick - Tutor
  (344, 34400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Claydol - Magic Coat - Tutor
  (344, 34400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Claydol - Recycle - Tutor
  (344, 34400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Claydol - Skill Swap - Tutor
  (344, 34400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Claydol - Signal Beam - Tutor
  (344, 34400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Claydol - Gravity - Tutor
  (344, 34400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Claydol - Earth Power - Tutor
  (344, 34400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Claydol - Zen Headbutt - Tutor
  (344, 34400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Claydol - Stealth Rock - Tutor
  (344, 34400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Claydol - Wonder Room - Tutor
  (344, 34400, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Claydol - Telekinesis - Tutor
  (344, 34400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Claydol - Ally Switch - Tutor
  (344, 34400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Claydol - Drill Run - Tutor
  (344, 34400, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Claydol - Hyper Beam - Evolution
  (344, 34400, 63, 16, NULL, 7, NULL, NULL, NULL, NULL, 78),

  -- Lileep - Constrict - Level 1
  (345, 34500, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lileep - Astonish - Level 1
  (345, 34500, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 5
  (345, 34500, 51, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lileep - Ingrain - Level 9
  (345, 34500, 275, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Lileep - Confuse Ray - Level 13
  (345, 34500, 109, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Lileep - Ancient Power - Level 17
  (345, 34500, 246, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Lileep - Brine - Level 21
  (345, 34500, 362, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Lileep - Giga Drain - Level 26
  (345, 34500, 202, 16, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Lileep - Gastro Acid - Level 31
  (345, 34500, 380, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Lileep - Amnesia - Level 36
  (345, 34500, 133, 16, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Lileep - Energy Ball - Level 41
  (345, 34500, 412, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Lileep - Stockpile - Level 46
  (345, 34500, 254, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Lileep - Spit Up - Level 46
  (345, 34500, 255, 16, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Lileep - Swallow - Level 46
  (345, 34500, 256, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Lileep - Wring Out - Level 52
  (345, 34500, 378, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Lileep - Toxic - TM06
  (345, 34500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Lileep - Hidden Power - TM10
  (345, 34500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Lileep - Sunny Day - TM11
  (345, 34500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Lileep - Protect - TM17
  (345, 34500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Lileep - Frustration - TM21
  (345, 34500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Lileep - Solar Beam - TM22
  (345, 34500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Lileep - Smack Down - TM23
  (345, 34500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 22),
  -- Lileep - Return - TM27
  (345, 34500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Lileep - Double Team - TM32
  (345, 34500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Lileep - Sludge Bomb - TM36
  (345, 34500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 25),
  -- Lileep - Sandstorm - TM37
  (345, 34500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 26),
  -- Lileep - Rock Tomb - TM39
  (345, 34500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Lileep - Facade - TM42
  (345, 34500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Lileep - Rest - TM44
  (345, 34500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Lileep - Attract - TM45
  (345, 34500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Lileep - Round - TM48
  (345, 34500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Lileep - Energy Ball - TM53
  (345, 34500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Lileep - Rock Polish - TM69
  (345, 34500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 33),
  -- Lileep - Swords Dance - TM75
  (345, 34500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Lileep - Rock Slide - TM80
  (345, 34500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Lileep - Infestation - TM83
  (345, 34500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 36),
  -- Lileep - Grass Knot - TM86
  (345, 34500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 37),
  -- Lileep - Swagger - TM87
  (345, 34500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Lileep - Sleep Talk - TM88
  (345, 34500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Lileep - Substitute - TM90
  (345, 34500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Lileep - Confide - TM100
  (345, 34500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Lileep - Mega Drain - Egg
  (345, 34500, 72, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lileep - Recover - Egg
  (345, 34500, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lileep - Barrier - Egg
  (345, 34500, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lileep - Curse - Egg
  (345, 34500, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lileep - Endure - Egg
  (345, 34500, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lileep - Mirror Coat - Egg
  (345, 34500, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lileep - Tickle - Egg
  (345, 34500, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lileep - Wring Out - Egg
  (345, 34500, 378, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lileep - Stealth Rock - Egg
  (345, 34500, 446, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lileep - Bind - Tutor
  (345, 34500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Lileep - Snore - Tutor
  (345, 34500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Lileep - Giga Drain - Tutor
  (345, 34500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Lileep - Pain Split - Tutor
  (345, 34500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Lileep - Synthesis - Tutor
  (345, 34500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Lileep - Gastro Acid - Tutor
  (345, 34500, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Lileep - Worry Seed - Tutor
  (345, 34500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Lileep - Seed Bomb - Tutor
  (345, 34500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Lileep - Earth Power - Tutor
  (345, 34500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Lileep - Stealth Rock - Tutor
  (345, 34500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Cradily - Acid - Level 1
  (346, 34600, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cradily - Constrict - Level 1
  (346, 34600, 132, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cradily - Ingrain - Level 1
  (346, 34600, 275, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cradily - Astonish - Level 1
  (346, 34600, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cradily - Wring Out - Level 1
  (346, 34600, 378, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cradily - Acid - Level 5
  (346, 34600, 51, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Cradily - Ingrain - Level 9
  (346, 34600, 275, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Cradily - Confuse Ray - Level 13
  (346, 34600, 109, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cradily - Ancient Power - Level 17
  (346, 34600, 246, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Cradily - Brine - Level 21
  (346, 34600, 362, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Cradily - Giga Drain - Level 26
  (346, 34600, 202, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Cradily - Gastro Acid - Level 31
  (346, 34600, 380, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Cradily - Amnesia - Level 36
  (346, 34600, 133, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Cradily - Energy Ball - Level 44
  (346, 34600, 412, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Cradily - Stockpile - Level 52
  (346, 34600, 254, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Cradily - Spit Up - Level 52
  (346, 34600, 255, 16, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Cradily - Swallow - Level 52
  (346, 34600, 256, 16, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Cradily - Wring Out - Level 61
  (346, 34600, 378, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Cradily - Toxic - TM06
  (346, 34600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Cradily - Hidden Power - TM10
  (346, 34600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Cradily - Sunny Day - TM11
  (346, 34600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Cradily - Hyper Beam - TM15
  (346, 34600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Cradily - Protect - TM17
  (346, 34600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Cradily - Frustration - TM21
  (346, 34600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Cradily - Solar Beam - TM22
  (346, 34600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Cradily - Smack Down - TM23
  (346, 34600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 26),
  -- Cradily - Earthquake - TM26
  (346, 34600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Cradily - Return - TM27
  (346, 34600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Cradily - Double Team - TM32
  (346, 34600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Cradily - Sludge Wave - TM34
  (346, 34600, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 30),
  -- Cradily - Sludge Bomb - TM36
  (346, 34600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Cradily - Sandstorm - TM37
  (346, 34600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Cradily - Rock Tomb - TM39
  (346, 34600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Cradily - Facade - TM42
  (346, 34600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Cradily - Rest - TM44
  (346, 34600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Cradily - Attract - TM45
  (346, 34600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Cradily - Round - TM48
  (346, 34600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Cradily - Energy Ball - TM53
  (346, 34600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Cradily - Giga Impact - TM68
  (346, 34600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Cradily - Rock Polish - TM69
  (346, 34600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 40),
  -- Cradily - Stone Edge - TM71
  (346, 34600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 41),
  -- Cradily - Swords Dance - TM75
  (346, 34600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 42),
  -- Cradily - Bulldoze - TM78
  (346, 34600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 43),
  -- Cradily - Rock Slide - TM80
  (346, 34600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 44),
  -- Cradily - Infestation - TM83
  (346, 34600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 45),
  -- Cradily - Grass Knot - TM86
  (346, 34600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Cradily - Swagger - TM87
  (346, 34600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Cradily - Sleep Talk - TM88
  (346, 34600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Cradily - Substitute - TM90
  (346, 34600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Cradily - Confide - TM100
  (346, 34600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Cradily - Bind - Tutor
  (346, 34600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Cradily - Snore - Tutor
  (346, 34600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cradily - Giga Drain - Tutor
  (346, 34600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cradily - Pain Split - Tutor
  (346, 34600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cradily - Synthesis - Tutor
  (346, 34600, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cradily - Block - Tutor
  (346, 34600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cradily - Gastro Acid - Tutor
  (346, 34600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cradily - Worry Seed - Tutor
  (346, 34600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cradily - Seed Bomb - Tutor
  (346, 34600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cradily - Earth Power - Tutor
  (346, 34600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cradily - Stealth Rock - Tutor
  (346, 34600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Anorith - Scratch - Level 1
  (347, 34700, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Anorith - Harden - Level 1
  (347, 34700, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Anorith - Mud Sport - Level 4
  (347, 34700, 300, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Anorith - Water Gun - Level 7
  (347, 34700, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Anorith - Fury Cutter - Level 10
  (347, 34700, 210, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Anorith - Smack Down - Level 13
  (347, 34700, 479, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Anorith - Metal Claw - Level 17
  (347, 34700, 232, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Anorith - Ancient Power - Level 21
  (347, 34700, 246, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Anorith - Bug Bite - Level 25
  (347, 34700, 450, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Anorith - Brine - Level 29
  (347, 34700, 362, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Anorith - Slash - Level 34
  (347, 34700, 163, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Anorith - Crush Claw - Level 39
  (347, 34700, 306, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Anorith - X-Scissor - Level 44
  (347, 34700, 404, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Anorith - Protect - Level 49
  (347, 34700, 182, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Anorith - Rock Blast - Level 55
  (347, 34700, 350, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Anorith - Toxic - TM06
  (347, 34700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Anorith - Hidden Power - TM10
  (347, 34700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Anorith - Sunny Day - TM11
  (347, 34700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Anorith - Protect - TM17
  (347, 34700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Anorith - Frustration - TM21
  (347, 34700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Anorith - Smack Down - TM23
  (347, 34700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 21),
  -- Anorith - Return - TM27
  (347, 34700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Anorith - Brick Break - TM31
  (347, 34700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Anorith - Double Team - TM32
  (347, 34700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Anorith - Sandstorm - TM37
  (347, 34700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 25),
  -- Anorith - Rock Tomb - TM39
  (347, 34700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Anorith - Aerial Ace - TM40
  (347, 34700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Anorith - Facade - TM42
  (347, 34700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Anorith - Rest - TM44
  (347, 34700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Anorith - Attract - TM45
  (347, 34700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Anorith - Round - TM48
  (347, 34700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Anorith - False Swipe - TM54
  (347, 34700, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 32),
  -- Anorith - Rock Polish - TM69
  (347, 34700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 33),
  -- Anorith - Swords Dance - TM75
  (347, 34700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Anorith - Rock Slide - TM80
  (347, 34700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Anorith - X-Scissor - TM81
  (347, 34700, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 36),
  -- Anorith - Swagger - TM87
  (347, 34700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Anorith - Sleep Talk - TM88
  (347, 34700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Anorith - Substitute - TM90
  (347, 34700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Anorith - Confide - TM100
  (347, 34700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Anorith - Sand Attack - Egg
  (347, 34700, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Anorith - Screech - Egg
  (347, 34700, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Anorith - Curse - Egg
  (347, 34700, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Anorith - Rapid Spin - Egg
  (347, 34700, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Anorith - Knock Off - Egg
  (347, 34700, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Anorith - Iron Defense - Egg
  (347, 34700, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Anorith - Water Pulse - Egg
  (347, 34700, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Anorith - Cross Poison - Egg
  (347, 34700, 440, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Anorith - Aqua Jet - Egg
  (347, 34700, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Anorith - Snore - Tutor
  (347, 34700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Anorith - Knock Off - Tutor
  (347, 34700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Anorith - Iron Defense - Tutor
  (347, 34700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Anorith - Water Pulse - Tutor
  (347, 34700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Anorith - Earth Power - Tutor
  (347, 34700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Anorith - Stealth Rock - Tutor
  (347, 34700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Anorith - Bug Bite - Tutor
  (347, 34700, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),

  -- Armaldo - Scratch - Level 1
  (348, 34800, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armaldo - Water Gun - Level 1
  (348, 34800, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armaldo - Harden - Level 1
  (348, 34800, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armaldo - Mud Sport - Level 1
  (348, 34800, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armaldo - Mud Sport - Level 4
  (348, 34800, 300, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Armaldo - Water Gun - Level 7
  (348, 34800, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Armaldo - Fury Cutter - Level 10
  (348, 34800, 210, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Armaldo - Smack Down - Level 13
  (348, 34800, 479, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Armaldo - Metal Claw - Level 17
  (348, 34800, 232, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Armaldo - Ancient Power - Level 21
  (348, 34800, 246, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Armaldo - Bug Bite - Level 25
  (348, 34800, 450, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Armaldo - Brine - Level 29
  (348, 34800, 362, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Armaldo - Slash - Level 34
  (348, 34800, 163, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Armaldo - Crush Claw - Level 39
  (348, 34800, 306, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Armaldo - X-Scissor - Level 46
  (348, 34800, 404, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Armaldo - Protect - Level 53
  (348, 34800, 182, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Armaldo - Rock Blast - Level 61
  (348, 34800, 350, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Armaldo - Toxic - TM06
  (348, 34800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Armaldo - Hidden Power - TM10
  (348, 34800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Armaldo - Sunny Day - TM11
  (348, 34800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Armaldo - Hyper Beam - TM15
  (348, 34800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Armaldo - Protect - TM17
  (348, 34800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Armaldo - Frustration - TM21
  (348, 34800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Armaldo - Smack Down - TM23
  (348, 34800, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 24),
  -- Armaldo - Earthquake - TM26
  (348, 34800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Armaldo - Return - TM27
  (348, 34800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Armaldo - Brick Break - TM31
  (348, 34800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Armaldo - Double Team - TM32
  (348, 34800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Armaldo - Sandstorm - TM37
  (348, 34800, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 29),
  -- Armaldo - Rock Tomb - TM39
  (348, 34800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Armaldo - Aerial Ace - TM40
  (348, 34800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Armaldo - Facade - TM42
  (348, 34800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Armaldo - Rest - TM44
  (348, 34800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Armaldo - Attract - TM45
  (348, 34800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Armaldo - Round - TM48
  (348, 34800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Armaldo - False Swipe - TM54
  (348, 34800, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 36),
  -- Armaldo - Brutal Swing - TM59
  (348, 34800, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 37),
  -- Armaldo - Giga Impact - TM68
  (348, 34800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Armaldo - Rock Polish - TM69
  (348, 34800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 39),
  -- Armaldo - Stone Edge - TM71
  (348, 34800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Armaldo - Swords Dance - TM75
  (348, 34800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Armaldo - Bulldoze - TM78
  (348, 34800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Armaldo - Rock Slide - TM80
  (348, 34800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Armaldo - X-Scissor - TM81
  (348, 34800, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 44),
  -- Armaldo - Swagger - TM87
  (348, 34800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Armaldo - Sleep Talk - TM88
  (348, 34800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Armaldo - Substitute - TM90
  (348, 34800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Armaldo - Flash Cannon - TM91
  (348, 34800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 48),
  -- Armaldo - Confide - TM100
  (348, 34800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Armaldo - Low Kick - Tutor
  (348, 34800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Armaldo - Snore - Tutor
  (348, 34800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Armaldo - Iron Tail - Tutor
  (348, 34800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Armaldo - Superpower - Tutor
  (348, 34800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Armaldo - Knock Off - Tutor
  (348, 34800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Armaldo - Iron Defense - Tutor
  (348, 34800, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Armaldo - Block - Tutor
  (348, 34800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Armaldo - Water Pulse - Tutor
  (348, 34800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Armaldo - Aqua Tail - Tutor
  (348, 34800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Armaldo - Earth Power - Tutor
  (348, 34800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Armaldo - Stealth Rock - Tutor
  (348, 34800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Armaldo - Bug Bite - Tutor
  (348, 34800, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Armaldo - Stomping Tantrum - Tutor
  (348, 34800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Armaldo - Liquidation - Tutor
  (348, 34800, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Feebas - Splash - Level 1
  (349, 34900, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 16, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 30
  (349, 34900, 175, 16, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Feebas - Toxic - TM06
  (349, 34900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 4),
  -- Feebas - Hail - TM07
  (349, 34900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 5),
  -- Feebas - Hidden Power - TM10
  (349, 34900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 6),
  -- Feebas - Ice Beam - TM13
  (349, 34900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 7),
  -- Feebas - Blizzard - TM14
  (349, 34900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 8),
  -- Feebas - Light Screen - TM16
  (349, 34900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 9),
  -- Feebas - Protect - TM17
  (349, 34900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 10),
  -- Feebas - Rain Dance - TM18
  (349, 34900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 11),
  -- Feebas - Frustration - TM21
  (349, 34900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 12),
  -- Feebas - Return - TM27
  (349, 34900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 13),
  -- Feebas - Double Team - TM32
  (349, 34900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 14),
  -- Feebas - Facade - TM42
  (349, 34900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 15),
  -- Feebas - Rest - TM44
  (349, 34900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 16),
  -- Feebas - Attract - TM45
  (349, 34900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 17),
  -- Feebas - Round - TM48
  (349, 34900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 18),
  -- Feebas - Scald - TM55
  (349, 34900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 19),
  -- Feebas - Swagger - TM87
  (349, 34900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 20),
  -- Feebas - Sleep Talk - TM88
  (349, 34900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 21),
  -- Feebas - Substitute - TM90
  (349, 34900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 22),
  -- Feebas - Surf - TM94
  (349, 34900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 23),
  -- Feebas - Waterfall - TM98
  (349, 34900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 24),
  -- Feebas - Confide - TM100
  (349, 34900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 25),
  -- Feebas - Mist - Egg
  (349, 34900, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Feebas - Hypnosis - Egg
  (349, 34900, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Feebas - Confuse Ray - Egg
  (349, 34900, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Feebas - Haze - Egg
  (349, 34900, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Feebas - Dragon Breath - Egg
  (349, 34900, 225, 16, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Feebas - Iron Tail - Egg
  (349, 34900, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Feebas - Mirror Coat - Egg
  (349, 34900, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Feebas - Mud Sport - Egg
  (349, 34900, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Feebas - Tickle - Egg
  (349, 34900, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Feebas - Brine - Egg
  (349, 34900, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Feebas - Dragon Pulse - Egg
  (349, 34900, 406, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Feebas - Captivate - Egg
  (349, 34900, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Feebas - Snore - Tutor
  (349, 34900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Feebas - Icy Wind - Tutor
  (349, 34900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Feebas - Iron Tail - Tutor
  (349, 34900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Feebas - Water Pulse - Tutor
  (349, 34900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Feebas - Dragon Pulse - Tutor
  (349, 34900, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),

  -- Milotic - Wrap - Level 1
  (350, 35000, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milotic - Refresh - Level 1
  (350, 35000, 287, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Milotic - Water Sport - Level 1
  (350, 35000, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Milotic - Water Pulse - Level 1
  (350, 35000, 352, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Milotic - Water Sport - Level 4
  (350, 35000, 346, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Milotic - Refresh - Level 7
  (350, 35000, 287, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Milotic - Disarming Voice - Level 11
  (350, 35000, 574, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Milotic - Twister - Level 14
  (350, 35000, 239, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Milotic - Aqua Ring - Level 17
  (350, 35000, 392, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Milotic - Captivate - Level 21
  (350, 35000, 445, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Milotic - Dragon Tail - Level 24
  (350, 35000, 525, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Milotic - Recover - Level 27
  (350, 35000, 105, 16, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Milotic - Aqua Tail - Level 31
  (350, 35000, 401, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Milotic - Attract - Level 34
  (350, 35000, 213, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Milotic - Safeguard - Level 37
  (350, 35000, 219, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Milotic - Coil - Level 41
  (350, 35000, 489, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Milotic - Hydro Pump - Level 44
  (350, 35000, 56, 16, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Milotic - Rain Dance - Level 47
  (350, 35000, 240, 16, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Milotic - Toxic - TM06
  (350, 35000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Milotic - Hail - TM07
  (350, 35000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Milotic - Hidden Power - TM10
  (350, 35000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Milotic - Ice Beam - TM13
  (350, 35000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Milotic - Blizzard - TM14
  (350, 35000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Milotic - Hyper Beam - TM15
  (350, 35000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Milotic - Light Screen - TM16
  (350, 35000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Milotic - Protect - TM17
  (350, 35000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Milotic - Rain Dance - TM18
  (350, 35000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Milotic - Safeguard - TM20
  (350, 35000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Milotic - Frustration - TM21
  (350, 35000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Milotic - Return - TM27
  (350, 35000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Milotic - Double Team - TM32
  (350, 35000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Milotic - Facade - TM42
  (350, 35000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Milotic - Rest - TM44
  (350, 35000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Milotic - Attract - TM45
  (350, 35000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Milotic - Round - TM48
  (350, 35000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Milotic - Scald - TM55
  (350, 35000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 37),
  -- Milotic - Brutal Swing - TM59
  (350, 35000, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 38),
  -- Milotic - Giga Impact - TM68
  (350, 35000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Milotic - Psych Up - TM77
  (350, 35000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Milotic - Bulldoze - TM78
  (350, 35000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 41),
  -- Milotic - Dragon Tail - TM82
  (350, 35000, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 42),
  -- Milotic - Swagger - TM87
  (350, 35000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Milotic - Sleep Talk - TM88
  (350, 35000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Milotic - Substitute - TM90
  (350, 35000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Milotic - Surf - TM94
  (350, 35000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 46),
  -- Milotic - Waterfall - TM98
  (350, 35000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 47),
  -- Milotic - Confide - TM100
  (350, 35000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Milotic - Bind - Tutor
  (350, 35000, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Milotic - Snore - Tutor
  (350, 35000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Milotic - Icy Wind - Tutor
  (350, 35000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Milotic - Iron Tail - Tutor
  (350, 35000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Milotic - Magic Coat - Tutor
  (350, 35000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Milotic - Water Pulse - Tutor
  (350, 35000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Milotic - Aqua Tail - Tutor
  (350, 35000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Milotic - Dragon Pulse - Tutor
  (350, 35000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Milotic - Iron Head - Tutor
  (350, 35000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Milotic - Laser Focus - Tutor
  (350, 35000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Milotic - Water Pulse - Evolution
  (350, 35000, 352, 16, NULL, 7, NULL, NULL, NULL, NULL, 59);
