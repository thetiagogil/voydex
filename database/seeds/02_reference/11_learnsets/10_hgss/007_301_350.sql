-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using HeartGold / SoulSilver
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii HeartGold / SoulSilver Pokedex learnset pages, Serebii HeartGold / SoulSilver
-- Move Tutor pages, and PokemonDB Generation 4 HeartGold / SoulSilver learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: HeartGold / SoulSilver
-- Pokémon: #301-#350
-- Rows: 3325
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this HeartGold / SoulSilver seed.
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
)
VALUES
  -- Delcatty - Double Slap - Level 1
  (301, 30100, 3, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delcatty - Sing - Level 1
  (301, 30100, 47, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delcatty - Attract - Level 1
  (301, 30100, 213, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delcatty - Fake Out - Level 1
  (301, 30100, 252, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Delcatty - Water Pulse - TM03
  (301, 30100, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 5),
  -- Delcatty - Calm Mind - TM04
  (301, 30100, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 6),
  -- Delcatty - Toxic - TM06
  (301, 30100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 7),
  -- Delcatty - Hidden Power - TM10
  (301, 30100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 8),
  -- Delcatty - Sunny Day - TM11
  (301, 30100, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 9),
  -- Delcatty - Ice Beam - TM13
  (301, 30100, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 10),
  -- Delcatty - Blizzard - TM14
  (301, 30100, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 11),
  -- Delcatty - Hyper Beam - TM15
  (301, 30100, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 12),
  -- Delcatty - Protect - TM17
  (301, 30100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 13),
  -- Delcatty - Rain Dance - TM18
  (301, 30100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 14),
  -- Delcatty - Safeguard - TM20
  (301, 30100, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 15),
  -- Delcatty - Frustration - TM21
  (301, 30100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 16),
  -- Delcatty - Solar Beam - TM22
  (301, 30100, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 17),
  -- Delcatty - Iron Tail - TM23
  (301, 30100, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 18),
  -- Delcatty - Thunderbolt - TM24
  (301, 30100, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 19),
  -- Delcatty - Thunder - TM25
  (301, 30100, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 20),
  -- Delcatty - Return - TM27
  (301, 30100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 21),
  -- Delcatty - Dig - TM28
  (301, 30100, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 22),
  -- Delcatty - Shadow Ball - TM30
  (301, 30100, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 23),
  -- Delcatty - Double Team - TM32
  (301, 30100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Delcatty - Shock Wave - TM34
  (301, 30100, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 25),
  -- Delcatty - Facade - TM42
  (301, 30100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 26),
  -- Delcatty - Secret Power - TM43
  (301, 30100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 27),
  -- Delcatty - Rest - TM44
  (301, 30100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 28),
  -- Delcatty - Attract - TM45
  (301, 30100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 29),
  -- Delcatty - Charge Beam - TM57
  (301, 30100, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 30),
  -- Delcatty - Endure - TM58
  (301, 30100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 31),
  -- Delcatty - Payback - TM66
  (301, 30100, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 32),
  -- Delcatty - Giga Impact - TM68
  (301, 30100, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 33),
  -- Delcatty - Flash - TM70
  (301, 30100, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 34),
  -- Delcatty - Thunder Wave - TM73
  (301, 30100, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 35),
  -- Delcatty - Psych Up - TM77
  (301, 30100, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 36),
  -- Delcatty - Captivate - TM78
  (301, 30100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Delcatty - Sleep Talk - TM82
  (301, 30100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Delcatty - Natural Gift - TM83
  (301, 30100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Delcatty - Dream Eater - TM85
  (301, 30100, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 40),
  -- Delcatty - Grass Knot - TM86
  (301, 30100, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 41),
  -- Delcatty - Swagger - TM87
  (301, 30100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Delcatty - Substitute - TM90
  (301, 30100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Delcatty - Strength - HM04
  (301, 30100, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 44),
  -- Delcatty - Rock Smash - HM06
  (301, 30100, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 45),
  -- Delcatty - Headbutt - Tutor
  (301, 30100, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Delcatty - Swift - Tutor
  (301, 30100, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Delcatty - Snore - Tutor
  (301, 30100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Delcatty - Mud-Slap - Tutor
  (301, 30100, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Delcatty - Icy Wind - Tutor
  (301, 30100, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Delcatty - Rollout - Tutor
  (301, 30100, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Delcatty - Heal Bell - Tutor
  (301, 30100, 215, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Delcatty - Helping Hand - Tutor
  (301, 30100, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Delcatty - Last Resort - Tutor
  (301, 30100, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Delcatty - Sucker Punch - Tutor
  (301, 30100, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Delcatty - Zen Headbutt - Tutor
  (301, 30100, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Sableye - Scratch - Level 1
  (302, 30200, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Foresight - Level 4
  (302, 30200, 193, 10, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sableye - Night Shade - Level 8
  (302, 30200, 101, 10, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sableye - Astonish - Level 11
  (302, 30200, 310, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sableye - Fury Swipes - Level 15
  (302, 30200, 154, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sableye - Fake Out - Level 18
  (302, 30200, 252, 10, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sableye - Detect - Level 22
  (302, 30200, 197, 10, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Sableye - Shadow Sneak - Level 25
  (302, 30200, 425, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sableye - Knock Off - Level 29
  (302, 30200, 282, 10, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Sableye - Feint Attack - Level 32
  (302, 30200, 185, 10, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Sableye - Punishment - Level 36
  (302, 30200, 386, 10, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Sableye - Shadow Claw - Level 39
  (302, 30200, 421, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Sableye - Power Gem - Level 43
  (302, 30200, 408, 10, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Sableye - Confuse Ray - Level 46
  (302, 30200, 109, 10, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Sableye - Zen Headbutt - Level 50
  (302, 30200, 428, 10, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Sableye - Shadow Ball - Level 53
  (302, 30200, 247, 10, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Sableye - Mean Look - Level 57
  (302, 30200, 212, 10, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Sableye - Focus Punch - TM01
  (302, 30200, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 19),
  -- Sableye - Water Pulse - TM03
  (302, 30200, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 20),
  -- Sableye - Calm Mind - TM04
  (302, 30200, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 21),
  -- Sableye - Toxic - TM06
  (302, 30200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 22),
  -- Sableye - Hidden Power - TM10
  (302, 30200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 23),
  -- Sableye - Sunny Day - TM11
  (302, 30200, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 24),
  -- Sableye - Taunt - TM12
  (302, 30200, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 25),
  -- Sableye - Protect - TM17
  (302, 30200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Sableye - Rain Dance - TM18
  (302, 30200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Sableye - Frustration - TM21
  (302, 30200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Sableye - Return - TM27
  (302, 30200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Sableye - Dig - TM28
  (302, 30200, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 30),
  -- Sableye - Psychic - TM29
  (302, 30200, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 31),
  -- Sableye - Shadow Ball - TM30
  (302, 30200, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 32),
  -- Sableye - Brick Break - TM31
  (302, 30200, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 33),
  -- Sableye - Double Team - TM32
  (302, 30200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Sableye - Shock Wave - TM34
  (302, 30200, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 35),
  -- Sableye - Rock Tomb - TM39
  (302, 30200, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 36),
  -- Sableye - Aerial Ace - TM40
  (302, 30200, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 37),
  -- Sableye - Torment - TM41
  (302, 30200, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 38),
  -- Sableye - Facade - TM42
  (302, 30200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 39),
  -- Sableye - Secret Power - TM43
  (302, 30200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 40),
  -- Sableye - Rest - TM44
  (302, 30200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 41),
  -- Sableye - Attract - TM45
  (302, 30200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 42),
  -- Sableye - Thief - TM46
  (302, 30200, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 43),
  -- Sableye - Snatch - TM49
  (302, 30200, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 44),
  -- Sableye - Fling - TM56
  (302, 30200, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 45),
  -- Sableye - Endure - TM58
  (302, 30200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 46),
  -- Sableye - Will-O-Wisp - TM61
  (302, 30200, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 47),
  -- Sableye - Embargo - TM63
  (302, 30200, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 48),
  -- Sableye - Shadow Claw - TM65
  (302, 30200, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 49),
  -- Sableye - Payback - TM66
  (302, 30200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 50),
  -- Sableye - Flash - TM70
  (302, 30200, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 51),
  -- Sableye - Psych Up - TM77
  (302, 30200, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 52),
  -- Sableye - Captivate - TM78
  (302, 30200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 53),
  -- Sableye - Dark Pulse - TM79
  (302, 30200, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 54),
  -- Sableye - Sleep Talk - TM82
  (302, 30200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 55),
  -- Sableye - Natural Gift - TM83
  (302, 30200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 56),
  -- Sableye - Poison Jab - TM84
  (302, 30200, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 57),
  -- Sableye - Dream Eater - TM85
  (302, 30200, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 58),
  -- Sableye - Swagger - TM87
  (302, 30200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 59),
  -- Sableye - Substitute - TM90
  (302, 30200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 60),
  -- Sableye - Cut - HM01
  (302, 30200, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 61),
  -- Sableye - Rock Smash - HM06
  (302, 30200, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 62),
  -- Sableye - Recover - Egg
  (302, 30200, 105, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sableye - Moonlight - Egg
  (302, 30200, 236, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sableye - Psych Up - Egg
  (302, 30200, 244, 10, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sableye - Flatter - Egg
  (302, 30200, 260, 10, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sableye - Feint - Egg
  (302, 30200, 364, 10, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sableye - Nasty Plot - Egg
  (302, 30200, 417, 10, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sableye - Fire Punch - Tutor
  (302, 30200, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Sableye - Ice Punch - Tutor
  (302, 30200, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Sableye - Thunder Punch - Tutor
  (302, 30200, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Sableye - Headbutt - Tutor
  (302, 30200, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Sableye - Low Kick - Tutor
  (302, 30200, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Sableye - Snore - Tutor
  (302, 30200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Sableye - Spite - Tutor
  (302, 30200, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Sableye - Mud-Slap - Tutor
  (302, 30200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Sableye - Icy Wind - Tutor
  (302, 30200, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Sableye - Fury Cutter - Tutor
  (302, 30200, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Sableye - Pain Split - Tutor
  (302, 30200, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Sableye - Trick - Tutor
  (302, 30200, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Sableye - Role Play - Tutor
  (302, 30200, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Sableye - Magic Coat - Tutor
  (302, 30200, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 82),
  -- Sableye - Knock Off - Tutor
  (302, 30200, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 83),
  -- Sableye - Signal Beam - Tutor
  (302, 30200, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 84),
  -- Sableye - Gravity - Tutor
  (302, 30200, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 85),
  -- Sableye - Sucker Punch - Tutor
  (302, 30200, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 86),
  -- Sableye - Zen Headbutt - Tutor
  (302, 30200, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 87),
  -- Sableye - Ominous Wind - Tutor
  (302, 30200, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 88),
  -- Mawile - Astonish - Level 1
  (303, 30300, 310, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Fake Tears - Level 6
  (303, 30300, 313, 10, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mawile - Bite - Level 11
  (303, 30300, 44, 10, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mawile - Sweet Scent - Level 16
  (303, 30300, 230, 10, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mawile - Vise Grip - Level 21
  (303, 30300, 11, 10, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mawile - Feint Attack - Level 26
  (303, 30300, 185, 10, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mawile - Baton Pass - Level 31
  (303, 30300, 226, 10, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Mawile - Crunch - Level 36
  (303, 30300, 242, 10, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Mawile - Iron Defense - Level 41
  (303, 30300, 334, 10, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Mawile - Sucker Punch - Level 46
  (303, 30300, 389, 10, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Mawile - Stockpile - Level 51
  (303, 30300, 254, 10, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Mawile - Spit Up - Level 51
  (303, 30300, 255, 10, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Mawile - Swallow - Level 51
  (303, 30300, 256, 10, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Mawile - Iron Head - Level 56
  (303, 30300, 442, 10, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Mawile - Focus Punch - TM01
  (303, 30300, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Mawile - Toxic - TM06
  (303, 30300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Mawile - Hidden Power - TM10
  (303, 30300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Mawile - Sunny Day - TM11
  (303, 30300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Mawile - Taunt - TM12
  (303, 30300, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 19),
  -- Mawile - Ice Beam - TM13
  (303, 30300, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 20),
  -- Mawile - Hyper Beam - TM15
  (303, 30300, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Mawile - Protect - TM17
  (303, 30300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Mawile - Rain Dance - TM18
  (303, 30300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Mawile - Frustration - TM21
  (303, 30300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Mawile - Solar Beam - TM22
  (303, 30300, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 25),
  -- Mawile - Return - TM27
  (303, 30300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Mawile - Shadow Ball - TM30
  (303, 30300, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Mawile - Brick Break - TM31
  (303, 30300, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 28),
  -- Mawile - Double Team - TM32
  (303, 30300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Mawile - Flamethrower - TM35
  (303, 30300, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 30),
  -- Mawile - Sludge Bomb - TM36
  (303, 30300, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 31),
  -- Mawile - Sandstorm - TM37
  (303, 30300, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 32),
  -- Mawile - Fire Blast - TM38
  (303, 30300, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 33),
  -- Mawile - Rock Tomb - TM39
  (303, 30300, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 34),
  -- Mawile - Torment - TM41
  (303, 30300, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 35),
  -- Mawile - Facade - TM42
  (303, 30300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 36),
  -- Mawile - Secret Power - TM43
  (303, 30300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 37),
  -- Mawile - Rest - TM44
  (303, 30300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 38),
  -- Mawile - Attract - TM45
  (303, 30300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 39),
  -- Mawile - Focus Blast - TM52
  (303, 30300, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 40),
  -- Mawile - Fling - TM56
  (303, 30300, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 41),
  -- Mawile - Charge Beam - TM57
  (303, 30300, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 42),
  -- Mawile - Endure - TM58
  (303, 30300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 43),
  -- Mawile - Embargo - TM63
  (303, 30300, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 44),
  -- Mawile - Payback - TM66
  (303, 30300, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 45),
  -- Mawile - Giga Impact - TM68
  (303, 30300, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 46),
  -- Mawile - Swords Dance - TM75
  (303, 30300, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 47),
  -- Mawile - Captivate - TM78
  (303, 30300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 48),
  -- Mawile - Dark Pulse - TM79
  (303, 30300, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 49),
  -- Mawile - Rock Slide - TM80
  (303, 30300, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 50),
  -- Mawile - Sleep Talk - TM82
  (303, 30300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 51),
  -- Mawile - Natural Gift - TM83
  (303, 30300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 52),
  -- Mawile - Grass Knot - TM86
  (303, 30300, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 53),
  -- Mawile - Swagger - TM87
  (303, 30300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 54),
  -- Mawile - Substitute - TM90
  (303, 30300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 55),
  -- Mawile - Flash Cannon - TM91
  (303, 30300, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 56),
  -- Mawile - Strength - HM04
  (303, 30300, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 57),
  -- Mawile - Rock Smash - HM06
  (303, 30300, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 58),
  -- Mawile - Swords Dance - Egg
  (303, 30300, 14, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mawile - False Swipe - Egg
  (303, 30300, 206, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mawile - Psych Up - Egg
  (303, 30300, 244, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mawile - Ancient Power - Egg
  (303, 30300, 246, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mawile - Poison Fang - Egg
  (303, 30300, 305, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mawile - Tickle - Egg
  (303, 30300, 321, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mawile - Guard Swap - Egg
  (303, 30300, 385, 10, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mawile - Punishment - Egg
  (303, 30300, 386, 10, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mawile - Sucker Punch - Egg
  (303, 30300, 389, 10, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mawile - Thunder Fang - Egg
  (303, 30300, 422, 10, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mawile - Ice Fang - Egg
  (303, 30300, 423, 10, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Mawile - Fire Fang - Egg
  (303, 30300, 424, 10, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Mawile - Ice Punch - Tutor
  (303, 30300, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Mawile - Thunder Punch - Tutor
  (303, 30300, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Mawile - Headbutt - Tutor
  (303, 30300, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Mawile - Super Fang - Tutor
  (303, 30300, 162, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Mawile - Snore - Tutor
  (303, 30300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Mawile - Mud-Slap - Tutor
  (303, 30300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Mawile - Icy Wind - Tutor
  (303, 30300, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Mawile - Pain Split - Tutor
  (303, 30300, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Mawile - Ancient Power - Tutor
  (303, 30300, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Mawile - Knock Off - Tutor
  (303, 30300, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Mawile - Iron Defense - Tutor
  (303, 30300, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Mawile - Sucker Punch - Tutor
  (303, 30300, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 82),
  -- Mawile - Magnet Rise - Tutor
  (303, 30300, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 83),
  -- Mawile - Iron Head - Tutor
  (303, 30300, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 84),
  -- Aron - Tackle - Level 1
  (304, 30400, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Harden - Level 4
  (304, 30400, 106, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Aron - Mud-Slap - Level 8
  (304, 30400, 189, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Aron - Headbutt - Level 11
  (304, 30400, 29, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Aron - Metal Claw - Level 15
  (304, 30400, 232, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Aron - Iron Defense - Level 18
  (304, 30400, 334, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Aron - Roar - Level 22
  (304, 30400, 46, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Aron - Take Down - Level 25
  (304, 30400, 36, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Aron - Iron Head - Level 29
  (304, 30400, 442, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Aron - Protect - Level 32
  (304, 30400, 182, 10, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Aron - Metal Sound - Level 36
  (304, 30400, 319, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Aron - Iron Tail - Level 39
  (304, 30400, 231, 10, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Aron - Double-Edge - Level 43
  (304, 30400, 38, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Aron - Metal Burst - Level 46
  (304, 30400, 368, 10, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Aron - Water Pulse - TM03
  (304, 30400, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Aron - Roar - TM05
  (304, 30400, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 16),
  -- Aron - Toxic - TM06
  (304, 30400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Aron - Hidden Power - TM10
  (304, 30400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Aron - Sunny Day - TM11
  (304, 30400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Aron - Protect - TM17
  (304, 30400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Aron - Rain Dance - TM18
  (304, 30400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Aron - Frustration - TM21
  (304, 30400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Aron - Iron Tail - TM23
  (304, 30400, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 23),
  -- Aron - Earthquake - TM26
  (304, 30400, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Aron - Return - TM27
  (304, 30400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Aron - Dig - TM28
  (304, 30400, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Aron - Double Team - TM32
  (304, 30400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Aron - Shock Wave - TM34
  (304, 30400, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 28),
  -- Aron - Sandstorm - TM37
  (304, 30400, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 29),
  -- Aron - Rock Tomb - TM39
  (304, 30400, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 30),
  -- Aron - Aerial Ace - TM40
  (304, 30400, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 31),
  -- Aron - Facade - TM42
  (304, 30400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Aron - Secret Power - TM43
  (304, 30400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Aron - Rest - TM44
  (304, 30400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Aron - Attract - TM45
  (304, 30400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Aron - Endure - TM58
  (304, 30400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Aron - Shadow Claw - TM65
  (304, 30400, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 37),
  -- Aron - Rock Polish - TM69
  (304, 30400, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 38),
  -- Aron - Stealth Rock - TM76
  (304, 30400, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 39),
  -- Aron - Captivate - TM78
  (304, 30400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 40),
  -- Aron - Rock Slide - TM80
  (304, 30400, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 41),
  -- Aron - Sleep Talk - TM82
  (304, 30400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 42),
  -- Aron - Natural Gift - TM83
  (304, 30400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 43),
  -- Aron - Swagger - TM87
  (304, 30400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 44),
  -- Aron - Substitute - TM90
  (304, 30400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 45),
  -- Aron - Cut - HM01
  (304, 30400, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 46),
  -- Aron - Strength - HM04
  (304, 30400, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 47),
  -- Aron - Rock Smash - HM06
  (304, 30400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 48),
  -- Aron - Stomp - Egg
  (304, 30400, 23, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aron - Body Slam - Egg
  (304, 30400, 34, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aron - Screech - Egg
  (304, 30400, 103, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aron - Curse - Egg
  (304, 30400, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aron - Smelling Salts - Egg
  (304, 30400, 265, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aron - Endeavor - Egg
  (304, 30400, 283, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aron - Dragon Rush - Egg
  (304, 30400, 407, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aron - Iron Head - Egg
  (304, 30400, 442, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aron - Head Smash - Egg
  (304, 30400, 457, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aron - Headbutt - Tutor
  (304, 30400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Aron - Snore - Tutor
  (304, 30400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Aron - Spite - Tutor
  (304, 30400, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Aron - Mud-Slap - Tutor
  (304, 30400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Aron - Rollout - Tutor
  (304, 30400, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Aron - Fury Cutter - Tutor
  (304, 30400, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Aron - Ancient Power - Tutor
  (304, 30400, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Aron - Uproar - Tutor
  (304, 30400, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Aron - Superpower - Tutor
  (304, 30400, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Aron - Endeavor - Tutor
  (304, 30400, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Aron - Iron Defense - Tutor
  (304, 30400, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Aron - Magnet Rise - Tutor
  (304, 30400, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Aron - Earth Power - Tutor
  (304, 30400, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Aron - Iron Head - Tutor
  (304, 30400, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Lairon - Headbutt - Level 1
  (305, 30500, 29, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Mud-Slap - Level 1
  (305, 30500, 189, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lairon - Harden - Level 4
  (305, 30500, 106, 10, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Lairon - Mud-Slap - Level 8
  (305, 30500, 189, 10, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Lairon - Headbutt - Level 11
  (305, 30500, 29, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Lairon - Metal Claw - Level 15
  (305, 30500, 232, 10, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Lairon - Iron Defense - Level 18
  (305, 30500, 334, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Lairon - Roar - Level 22
  (305, 30500, 46, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Lairon - Take Down - Level 25
  (305, 30500, 36, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lairon - Iron Head - Level 29
  (305, 30500, 442, 10, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lairon - Protect - Level 34
  (305, 30500, 182, 10, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Lairon - Metal Sound - Level 40
  (305, 30500, 319, 10, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lairon - Iron Tail - Level 45
  (305, 30500, 231, 10, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lairon - Double-Edge - Level 51
  (305, 30500, 38, 10, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Lairon - Metal Burst - Level 56
  (305, 30500, 368, 10, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Lairon - Water Pulse - TM03
  (305, 30500, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 18),
  -- Lairon - Roar - TM05
  (305, 30500, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 19),
  -- Lairon - Toxic - TM06
  (305, 30500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 20),
  -- Lairon - Hidden Power - TM10
  (305, 30500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 21),
  -- Lairon - Sunny Day - TM11
  (305, 30500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 22),
  -- Lairon - Protect - TM17
  (305, 30500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Lairon - Rain Dance - TM18
  (305, 30500, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Lairon - Frustration - TM21
  (305, 30500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 25),
  -- Lairon - Iron Tail - TM23
  (305, 30500, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 26),
  -- Lairon - Earthquake - TM26
  (305, 30500, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 27),
  -- Lairon - Return - TM27
  (305, 30500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 28),
  -- Lairon - Dig - TM28
  (305, 30500, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 29),
  -- Lairon - Double Team - TM32
  (305, 30500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Lairon - Shock Wave - TM34
  (305, 30500, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 31),
  -- Lairon - Sandstorm - TM37
  (305, 30500, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 32),
  -- Lairon - Rock Tomb - TM39
  (305, 30500, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 33),
  -- Lairon - Aerial Ace - TM40
  (305, 30500, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 34),
  -- Lairon - Facade - TM42
  (305, 30500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 35),
  -- Lairon - Secret Power - TM43
  (305, 30500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 36),
  -- Lairon - Rest - TM44
  (305, 30500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 37),
  -- Lairon - Attract - TM45
  (305, 30500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 38),
  -- Lairon - Endure - TM58
  (305, 30500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 39),
  -- Lairon - Shadow Claw - TM65
  (305, 30500, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 40),
  -- Lairon - Rock Polish - TM69
  (305, 30500, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 41),
  -- Lairon - Stone Edge - TM71
  (305, 30500, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 42),
  -- Lairon - Stealth Rock - TM76
  (305, 30500, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 43),
  -- Lairon - Captivate - TM78
  (305, 30500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Lairon - Rock Slide - TM80
  (305, 30500, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 45),
  -- Lairon - Sleep Talk - TM82
  (305, 30500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Lairon - Natural Gift - TM83
  (305, 30500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Lairon - Swagger - TM87
  (305, 30500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Lairon - Substitute - TM90
  (305, 30500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 49),
  -- Lairon - Cut - HM01
  (305, 30500, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 50),
  -- Lairon - Strength - HM04
  (305, 30500, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 51),
  -- Lairon - Rock Smash - HM06
  (305, 30500, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 52),
  -- Lairon - Headbutt - Tutor
  (305, 30500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Lairon - Snore - Tutor
  (305, 30500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Lairon - Spite - Tutor
  (305, 30500, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Lairon - Mud-Slap - Tutor
  (305, 30500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Lairon - Rollout - Tutor
  (305, 30500, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Lairon - Fury Cutter - Tutor
  (305, 30500, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Lairon - Ancient Power - Tutor
  (305, 30500, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Lairon - Uproar - Tutor
  (305, 30500, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Lairon - Superpower - Tutor
  (305, 30500, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Lairon - Endeavor - Tutor
  (305, 30500, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Lairon - Iron Defense - Tutor
  (305, 30500, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Lairon - Magnet Rise - Tutor
  (305, 30500, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Lairon - Earth Power - Tutor
  (305, 30500, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Lairon - Iron Head - Tutor
  (305, 30500, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Aggron - Headbutt - Level 1
  (306, 30600, 29, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Mud-Slap - Level 1
  (306, 30600, 189, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aggron - Harden - Level 4
  (306, 30600, 106, 10, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Aggron - Mud-Slap - Level 8
  (306, 30600, 189, 10, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Aggron - Headbutt - Level 11
  (306, 30600, 29, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Aggron - Metal Claw - Level 15
  (306, 30600, 232, 10, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Aggron - Iron Defense - Level 18
  (306, 30600, 334, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Aggron - Roar - Level 22
  (306, 30600, 46, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Aggron - Take Down - Level 25
  (306, 30600, 36, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Aggron - Iron Head - Level 29
  (306, 30600, 442, 10, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Aggron - Protect - Level 34
  (306, 30600, 182, 10, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Aggron - Metal Sound - Level 40
  (306, 30600, 319, 10, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Aggron - Iron Tail - Level 48
  (306, 30600, 231, 10, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Aggron - Double-Edge - Level 57
  (306, 30600, 38, 10, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Aggron - Metal Burst - Level 65
  (306, 30600, 368, 10, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Aggron - Focus Punch - TM01
  (306, 30600, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 18),
  -- Aggron - Dragon Claw - TM02
  (306, 30600, 337, 10, NULL, 2, NULL, NULL, 10002002, NULL, 19),
  -- Aggron - Water Pulse - TM03
  (306, 30600, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 20),
  -- Aggron - Roar - TM05
  (306, 30600, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 21),
  -- Aggron - Toxic - TM06
  (306, 30600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 22),
  -- Aggron - Hidden Power - TM10
  (306, 30600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 23),
  -- Aggron - Sunny Day - TM11
  (306, 30600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 24),
  -- Aggron - Taunt - TM12
  (306, 30600, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 25),
  -- Aggron - Ice Beam - TM13
  (306, 30600, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 26),
  -- Aggron - Blizzard - TM14
  (306, 30600, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 27),
  -- Aggron - Hyper Beam - TM15
  (306, 30600, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 28),
  -- Aggron - Protect - TM17
  (306, 30600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 29),
  -- Aggron - Rain Dance - TM18
  (306, 30600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 30),
  -- Aggron - Frustration - TM21
  (306, 30600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 31),
  -- Aggron - Solar Beam - TM22
  (306, 30600, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 32),
  -- Aggron - Iron Tail - TM23
  (306, 30600, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 33),
  -- Aggron - Thunderbolt - TM24
  (306, 30600, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 34),
  -- Aggron - Thunder - TM25
  (306, 30600, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 35),
  -- Aggron - Earthquake - TM26
  (306, 30600, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 36),
  -- Aggron - Return - TM27
  (306, 30600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 37),
  -- Aggron - Dig - TM28
  (306, 30600, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 38),
  -- Aggron - Brick Break - TM31
  (306, 30600, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 39),
  -- Aggron - Double Team - TM32
  (306, 30600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 40),
  -- Aggron - Shock Wave - TM34
  (306, 30600, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 41),
  -- Aggron - Flamethrower - TM35
  (306, 30600, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 42),
  -- Aggron - Sandstorm - TM37
  (306, 30600, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 43),
  -- Aggron - Fire Blast - TM38
  (306, 30600, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 44),
  -- Aggron - Rock Tomb - TM39
  (306, 30600, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 45),
  -- Aggron - Aerial Ace - TM40
  (306, 30600, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 46),
  -- Aggron - Facade - TM42
  (306, 30600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 47),
  -- Aggron - Secret Power - TM43
  (306, 30600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 48),
  -- Aggron - Rest - TM44
  (306, 30600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 49),
  -- Aggron - Attract - TM45
  (306, 30600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 50),
  -- Aggron - Focus Blast - TM52
  (306, 30600, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 51),
  -- Aggron - Fling - TM56
  (306, 30600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 52),
  -- Aggron - Endure - TM58
  (306, 30600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 53),
  -- Aggron - Dragon Pulse - TM59
  (306, 30600, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 54),
  -- Aggron - Shadow Claw - TM65
  (306, 30600, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 55),
  -- Aggron - Payback - TM66
  (306, 30600, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 56),
  -- Aggron - Giga Impact - TM68
  (306, 30600, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 57),
  -- Aggron - Rock Polish - TM69
  (306, 30600, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 58),
  -- Aggron - Stone Edge - TM71
  (306, 30600, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 59),
  -- Aggron - Avalanche - TM72
  (306, 30600, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 60),
  -- Aggron - Thunder Wave - TM73
  (306, 30600, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 61),
  -- Aggron - Stealth Rock - TM76
  (306, 30600, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 62),
  -- Aggron - Captivate - TM78
  (306, 30600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 63),
  -- Aggron - Dark Pulse - TM79
  (306, 30600, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 64),
  -- Aggron - Rock Slide - TM80
  (306, 30600, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 65),
  -- Aggron - Sleep Talk - TM82
  (306, 30600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 66),
  -- Aggron - Natural Gift - TM83
  (306, 30600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 67),
  -- Aggron - Swagger - TM87
  (306, 30600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 68),
  -- Aggron - Substitute - TM90
  (306, 30600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 69),
  -- Aggron - Flash Cannon - TM91
  (306, 30600, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 70),
  -- Aggron - Cut - HM01
  (306, 30600, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 71),
  -- Aggron - Surf - HM03
  (306, 30600, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 72),
  -- Aggron - Strength - HM04
  (306, 30600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 73),
  -- Aggron - Whirlpool - HM05
  (306, 30600, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 74),
  -- Aggron - Rock Smash - HM06
  (306, 30600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 75),
  -- Aggron - Rock Climb - HM08
  (306, 30600, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 76),
  -- Aggron - Fire Punch - Tutor
  (306, 30600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Aggron - Ice Punch - Tutor
  (306, 30600, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Aggron - Thunder Punch - Tutor
  (306, 30600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Aggron - Headbutt - Tutor
  (306, 30600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Aggron - Low Kick - Tutor
  (306, 30600, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Aggron - Snore - Tutor
  (306, 30600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 82),
  -- Aggron - Spite - Tutor
  (306, 30600, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 83),
  -- Aggron - Mud-Slap - Tutor
  (306, 30600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 84),
  -- Aggron - Icy Wind - Tutor
  (306, 30600, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 85),
  -- Aggron - Outrage - Tutor
  (306, 30600, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 86),
  -- Aggron - Rollout - Tutor
  (306, 30600, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 87),
  -- Aggron - Fury Cutter - Tutor
  (306, 30600, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 88),
  -- Aggron - Ancient Power - Tutor
  (306, 30600, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 89),
  -- Aggron - Uproar - Tutor
  (306, 30600, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 90),
  -- Aggron - Superpower - Tutor
  (306, 30600, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 91),
  -- Aggron - Endeavor - Tutor
  (306, 30600, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 92),
  -- Aggron - Iron Defense - Tutor
  (306, 30600, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 93),
  -- Aggron - Block - Tutor
  (306, 30600, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 94),
  -- Aggron - Magnet Rise - Tutor
  (306, 30600, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 95),
  -- Aggron - Aqua Tail - Tutor
  (306, 30600, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 96),
  -- Aggron - Earth Power - Tutor
  (306, 30600, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 97),
  -- Aggron - Iron Head - Tutor
  (306, 30600, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 98),
  -- Meditite - Bide - Level 1
  (307, 30700, 117, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Meditate - Level 4
  (307, 30700, 96, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Meditite - Confusion - Level 8
  (307, 30700, 93, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Meditite - Detect - Level 11
  (307, 30700, 197, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Meditite - Hidden Power - Level 15
  (307, 30700, 237, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Meditite - Mind Reader - Level 18
  (307, 30700, 170, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Meditite - Feint - Level 22
  (307, 30700, 364, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meditite - Calm Mind - Level 25
  (307, 30700, 347, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meditite - Force Palm - Level 29
  (307, 30700, 395, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meditite - High Jump Kick - Level 32
  (307, 30700, 136, 10, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meditite - Psych Up - Level 36
  (307, 30700, 244, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meditite - Power Trick - Level 39
  (307, 30700, 379, 10, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Meditite - Reversal - Level 43
  (307, 30700, 179, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Meditite - Recover - Level 46
  (307, 30700, 105, 10, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Meditite - Focus Punch - TM01
  (307, 30700, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Meditite - Calm Mind - TM04
  (307, 30700, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 16),
  -- Meditite - Toxic - TM06
  (307, 30700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Meditite - Bulk Up - TM08
  (307, 30700, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 18),
  -- Meditite - Hidden Power - TM10
  (307, 30700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Meditite - Sunny Day - TM11
  (307, 30700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Meditite - Light Screen - TM16
  (307, 30700, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 21),
  -- Meditite - Protect - TM17
  (307, 30700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Meditite - Rain Dance - TM18
  (307, 30700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Meditite - Frustration - TM21
  (307, 30700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Meditite - Return - TM27
  (307, 30700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Meditite - Psychic - TM29
  (307, 30700, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 26),
  -- Meditite - Shadow Ball - TM30
  (307, 30700, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Meditite - Brick Break - TM31
  (307, 30700, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 28),
  -- Meditite - Double Team - TM32
  (307, 30700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Meditite - Reflect - TM33
  (307, 30700, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 30),
  -- Meditite - Rock Tomb - TM39
  (307, 30700, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Meditite - Facade - TM42
  (307, 30700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Meditite - Secret Power - TM43
  (307, 30700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Meditite - Rest - TM44
  (307, 30700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Meditite - Attract - TM45
  (307, 30700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Meditite - Focus Blast - TM52
  (307, 30700, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 36),
  -- Meditite - Fling - TM56
  (307, 30700, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 37),
  -- Meditite - Endure - TM58
  (307, 30700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Meditite - Drain Punch - TM60
  (307, 30700, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 39),
  -- Meditite - Recycle - TM67
  (307, 30700, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 40),
  -- Meditite - Flash - TM70
  (307, 30700, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 41),
  -- Meditite - Psych Up - TM77
  (307, 30700, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 42),
  -- Meditite - Captivate - TM78
  (307, 30700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 43),
  -- Meditite - Rock Slide - TM80
  (307, 30700, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 44),
  -- Meditite - Sleep Talk - TM82
  (307, 30700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Meditite - Natural Gift - TM83
  (307, 30700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Meditite - Poison Jab - TM84
  (307, 30700, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 47),
  -- Meditite - Dream Eater - TM85
  (307, 30700, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 48),
  -- Meditite - Grass Knot - TM86
  (307, 30700, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 49),
  -- Meditite - Swagger - TM87
  (307, 30700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 50),
  -- Meditite - Substitute - TM90
  (307, 30700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 51),
  -- Meditite - Strength - HM04
  (307, 30700, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 52),
  -- Meditite - Rock Smash - HM06
  (307, 30700, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 53),
  -- Meditite - Fire Punch - Egg
  (307, 30700, 7, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meditite - Ice Punch - Egg
  (307, 30700, 8, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meditite - Thunder Punch - Egg
  (307, 30700, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meditite - Foresight - Egg
  (307, 30700, 193, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meditite - Dynamic Punch - Egg
  (307, 30700, 223, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meditite - Baton Pass - Egg
  (307, 30700, 226, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meditite - Fake Out - Egg
  (307, 30700, 252, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meditite - Power Swap - Egg
  (307, 30700, 384, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meditite - Guard Swap - Egg
  (307, 30700, 385, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meditite - Bullet Punch - Egg
  (307, 30700, 418, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Meditite - Psycho Cut - Egg
  (307, 30700, 427, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Meditite - Fire Punch - Tutor
  (307, 30700, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Meditite - Ice Punch - Tutor
  (307, 30700, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Meditite - Thunder Punch - Tutor
  (307, 30700, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Meditite - Headbutt - Tutor
  (307, 30700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Meditite - Low Kick - Tutor
  (307, 30700, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Meditite - Swift - Tutor
  (307, 30700, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Meditite - Snore - Tutor
  (307, 30700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Meditite - Mud-Slap - Tutor
  (307, 30700, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Meditite - Pain Split - Tutor
  (307, 30700, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Meditite - Helping Hand - Tutor
  (307, 30700, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Meditite - Trick - Tutor
  (307, 30700, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Meditite - Role Play - Tutor
  (307, 30700, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Meditite - Magic Coat - Tutor
  (307, 30700, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Meditite - Signal Beam - Tutor
  (307, 30700, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Meditite - Gravity - Tutor
  (307, 30700, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Meditite - Vacuum Wave - Tutor
  (307, 30700, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Meditite - Zen Headbutt - Tutor
  (307, 30700, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Medicham - Fire Punch - Level 1
  (308, 30800, 7, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Ice Punch - Level 1
  (308, 30800, 8, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Thunder Punch - Level 1
  (308, 30800, 9, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Medicham - Meditate - Level 1
  (308, 30800, 96, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Medicham - Bide - Level 1
  (308, 30800, 117, 10, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Medicham - Detect - Level 1
  (308, 30800, 197, 10, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Medicham - Meditate - Level 4
  (308, 30800, 96, 10, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Medicham - Confusion - Level 8
  (308, 30800, 93, 10, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Medicham - Detect - Level 11
  (308, 30800, 197, 10, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Medicham - Hidden Power - Level 15
  (308, 30800, 237, 10, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Medicham - Mind Reader - Level 18
  (308, 30800, 170, 10, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Medicham - Feint - Level 22
  (308, 30800, 364, 10, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Medicham - Calm Mind - Level 25
  (308, 30800, 347, 10, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Medicham - Force Palm - Level 29
  (308, 30800, 395, 10, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Medicham - High Jump Kick - Level 32
  (308, 30800, 136, 10, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Medicham - Psych Up - Level 36
  (308, 30800, 244, 10, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Medicham - Power Trick - Level 42
  (308, 30800, 379, 10, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Medicham - Reversal - Level 49
  (308, 30800, 179, 10, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Medicham - Recover - Level 55
  (308, 30800, 105, 10, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Medicham - Focus Punch - TM01
  (308, 30800, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 21),
  -- Medicham - Calm Mind - TM04
  (308, 30800, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 22),
  -- Medicham - Toxic - TM06
  (308, 30800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 23),
  -- Medicham - Bulk Up - TM08
  (308, 30800, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 24),
  -- Medicham - Hidden Power - TM10
  (308, 30800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 25),
  -- Medicham - Sunny Day - TM11
  (308, 30800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 26),
  -- Medicham - Hyper Beam - TM15
  (308, 30800, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 27),
  -- Medicham - Light Screen - TM16
  (308, 30800, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 28),
  -- Medicham - Protect - TM17
  (308, 30800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 29),
  -- Medicham - Rain Dance - TM18
  (308, 30800, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 30),
  -- Medicham - Frustration - TM21
  (308, 30800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 31),
  -- Medicham - Return - TM27
  (308, 30800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Medicham - Psychic - TM29
  (308, 30800, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 33),
  -- Medicham - Shadow Ball - TM30
  (308, 30800, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 34),
  -- Medicham - Brick Break - TM31
  (308, 30800, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 35),
  -- Medicham - Double Team - TM32
  (308, 30800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 36),
  -- Medicham - Reflect - TM33
  (308, 30800, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 37),
  -- Medicham - Rock Tomb - TM39
  (308, 30800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 38),
  -- Medicham - Facade - TM42
  (308, 30800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 39),
  -- Medicham - Secret Power - TM43
  (308, 30800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 40),
  -- Medicham - Rest - TM44
  (308, 30800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 41),
  -- Medicham - Attract - TM45
  (308, 30800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 42),
  -- Medicham - Focus Blast - TM52
  (308, 30800, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 43),
  -- Medicham - Energy Ball - TM53
  (308, 30800, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 44),
  -- Medicham - Fling - TM56
  (308, 30800, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 45),
  -- Medicham - Endure - TM58
  (308, 30800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 46),
  -- Medicham - Drain Punch - TM60
  (308, 30800, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 47),
  -- Medicham - Recycle - TM67
  (308, 30800, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 48),
  -- Medicham - Giga Impact - TM68
  (308, 30800, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 49),
  -- Medicham - Flash - TM70
  (308, 30800, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 50),
  -- Medicham - Psych Up - TM77
  (308, 30800, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 51),
  -- Medicham - Captivate - TM78
  (308, 30800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 52),
  -- Medicham - Rock Slide - TM80
  (308, 30800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 53),
  -- Medicham - Sleep Talk - TM82
  (308, 30800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 54),
  -- Medicham - Natural Gift - TM83
  (308, 30800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 55),
  -- Medicham - Poison Jab - TM84
  (308, 30800, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 56),
  -- Medicham - Dream Eater - TM85
  (308, 30800, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 57),
  -- Medicham - Grass Knot - TM86
  (308, 30800, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 58),
  -- Medicham - Swagger - TM87
  (308, 30800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 59),
  -- Medicham - Substitute - TM90
  (308, 30800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 60),
  -- Medicham - Strength - HM04
  (308, 30800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 61),
  -- Medicham - Rock Smash - HM06
  (308, 30800, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 62),
  -- Medicham - Fire Punch - Tutor
  (308, 30800, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Medicham - Ice Punch - Tutor
  (308, 30800, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Medicham - Thunder Punch - Tutor
  (308, 30800, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Medicham - Headbutt - Tutor
  (308, 30800, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Medicham - Low Kick - Tutor
  (308, 30800, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Medicham - Swift - Tutor
  (308, 30800, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Medicham - Snore - Tutor
  (308, 30800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Medicham - Mud-Slap - Tutor
  (308, 30800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Medicham - Pain Split - Tutor
  (308, 30800, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Medicham - Helping Hand - Tutor
  (308, 30800, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Medicham - Trick - Tutor
  (308, 30800, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Medicham - Role Play - Tutor
  (308, 30800, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Medicham - Magic Coat - Tutor
  (308, 30800, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Medicham - Signal Beam - Tutor
  (308, 30800, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Medicham - Gravity - Tutor
  (308, 30800, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Medicham - Vacuum Wave - Tutor
  (308, 30800, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Medicham - Zen Headbutt - Tutor
  (308, 30800, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Level 4
  (309, 30900, 86, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 9
  (309, 30900, 43, 10, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 12
  (309, 30900, 336, 10, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 17
  (309, 30900, 98, 10, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electrike - Spark - Level 20
  (309, 30900, 209, 10, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Electrike - Odor Sleuth - Level 25
  (309, 30900, 316, 10, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Electrike - Bite - Level 28
  (309, 30900, 44, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Electrike - Thunder Fang - Level 33
  (309, 30900, 422, 10, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Electrike - Roar - Level 36
  (309, 30900, 46, 10, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Electrike - Discharge - Level 41
  (309, 30900, 435, 10, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Electrike - Charge - Level 44
  (309, 30900, 268, 10, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Electrike - Thunder - Level 49
  (309, 30900, 87, 10, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Electrike - Roar - TM05
  (309, 30900, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 14),
  -- Electrike - Toxic - TM06
  (309, 30900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Electrike - Hidden Power - TM10
  (309, 30900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Electrike - Light Screen - TM16
  (309, 30900, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 17),
  -- Electrike - Protect - TM17
  (309, 30900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 18),
  -- Electrike - Rain Dance - TM18
  (309, 30900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 19),
  -- Electrike - Frustration - TM21
  (309, 30900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 20),
  -- Electrike - Iron Tail - TM23
  (309, 30900, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 21),
  -- Electrike - Thunderbolt - TM24
  (309, 30900, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 22),
  -- Electrike - Thunder - TM25
  (309, 30900, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 23),
  -- Electrike - Return - TM27
  (309, 30900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Electrike - Double Team - TM32
  (309, 30900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 25),
  -- Electrike - Shock Wave - TM34
  (309, 30900, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 26),
  -- Electrike - Flamethrower - TM35
  (309, 30900, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 27),
  -- Electrike - Facade - TM42
  (309, 30900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 28),
  -- Electrike - Secret Power - TM43
  (309, 30900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 29),
  -- Electrike - Rest - TM44
  (309, 30900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 30),
  -- Electrike - Attract - TM45
  (309, 30900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 31),
  -- Electrike - Thief - TM46
  (309, 30900, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 32),
  -- Electrike - Charge Beam - TM57
  (309, 30900, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 33),
  -- Electrike - Endure - TM58
  (309, 30900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 34),
  -- Electrike - Flash - TM70
  (309, 30900, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 35),
  -- Electrike - Thunder Wave - TM73
  (309, 30900, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 36),
  -- Electrike - Captivate - TM78
  (309, 30900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Electrike - Sleep Talk - TM82
  (309, 30900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Electrike - Natural Gift - TM83
  (309, 30900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Electrike - Swagger - TM87
  (309, 30900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Electrike - Substitute - TM90
  (309, 30900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Electrike - Strength - HM04
  (309, 30900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 42),
  -- Electrike - Headbutt - Egg
  (309, 30900, 29, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Electrike - Swift - Egg
  (309, 30900, 129, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Electrike - Curse - Egg
  (309, 30900, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Electrike - Crunch - Egg
  (309, 30900, 242, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Electrike - Uproar - Egg
  (309, 30900, 253, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrike - Switcheroo - Egg
  (309, 30900, 415, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electrike - Thunder Fang - Egg
  (309, 30900, 422, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electrike - Ice Fang - Egg
  (309, 30900, 423, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Electrike - Fire Fang - Egg
  (309, 30900, 424, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electrike - Discharge - Egg
  (309, 30900, 435, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electrike - Headbutt - Tutor
  (309, 30900, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Electrike - Swift - Tutor
  (309, 30900, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Electrike - Snore - Tutor
  (309, 30900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Electrike - Mud-Slap - Tutor
  (309, 30900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Electrike - Signal Beam - Tutor
  (309, 30900, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Electrike - Magnet Rise - Tutor
  (309, 30900, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Thunder Wave - Level 1
  (310, 31000, 86, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Howl - Level 1
  (310, 31000, 336, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Fire Fang - Level 1
  (310, 31000, 424, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Manectric - Thunder Wave - Level 4
  (310, 31000, 86, 10, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Manectric - Leer - Level 9
  (310, 31000, 43, 10, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Manectric - Howl - Level 12
  (310, 31000, 336, 10, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Manectric - Quick Attack - Level 17
  (310, 31000, 98, 10, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Manectric - Spark - Level 20
  (310, 31000, 209, 10, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Manectric - Odor Sleuth - Level 25
  (310, 31000, 316, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Manectric - Bite - Level 30
  (310, 31000, 44, 10, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Manectric - Thunder Fang - Level 37
  (310, 31000, 422, 10, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Manectric - Roar - Level 42
  (310, 31000, 46, 10, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Manectric - Discharge - Level 49
  (310, 31000, 435, 10, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Manectric - Charge - Level 54
  (310, 31000, 268, 10, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Manectric - Thunder - Level 61
  (310, 31000, 87, 10, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Manectric - Roar - TM05
  (310, 31000, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 18),
  -- Manectric - Toxic - TM06
  (310, 31000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 19),
  -- Manectric - Hidden Power - TM10
  (310, 31000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Manectric - Hyper Beam - TM15
  (310, 31000, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Manectric - Light Screen - TM16
  (310, 31000, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 22),
  -- Manectric - Protect - TM17
  (310, 31000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Manectric - Rain Dance - TM18
  (310, 31000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Manectric - Frustration - TM21
  (310, 31000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 25),
  -- Manectric - Iron Tail - TM23
  (310, 31000, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 26),
  -- Manectric - Thunderbolt - TM24
  (310, 31000, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 27),
  -- Manectric - Thunder - TM25
  (310, 31000, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 28),
  -- Manectric - Return - TM27
  (310, 31000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Manectric - Double Team - TM32
  (310, 31000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Manectric - Shock Wave - TM34
  (310, 31000, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 31),
  -- Manectric - Flamethrower - TM35
  (310, 31000, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 32),
  -- Manectric - Facade - TM42
  (310, 31000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Manectric - Secret Power - TM43
  (310, 31000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Manectric - Rest - TM44
  (310, 31000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Manectric - Attract - TM45
  (310, 31000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 36),
  -- Manectric - Thief - TM46
  (310, 31000, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 37),
  -- Manectric - Overheat - TM50
  (310, 31000, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 38),
  -- Manectric - Charge Beam - TM57
  (310, 31000, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 39),
  -- Manectric - Endure - TM58
  (310, 31000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Manectric - Giga Impact - TM68
  (310, 31000, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 41),
  -- Manectric - Flash - TM70
  (310, 31000, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 42),
  -- Manectric - Thunder Wave - TM73
  (310, 31000, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 43),
  -- Manectric - Captivate - TM78
  (310, 31000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Manectric - Sleep Talk - TM82
  (310, 31000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Manectric - Natural Gift - TM83
  (310, 31000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Manectric - Swagger - TM87
  (310, 31000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 47),
  -- Manectric - Substitute - TM90
  (310, 31000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 48),
  -- Manectric - Strength - HM04
  (310, 31000, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 49),
  -- Manectric - Headbutt - Tutor
  (310, 31000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Manectric - Swift - Tutor
  (310, 31000, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Manectric - Snore - Tutor
  (310, 31000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Manectric - Mud-Slap - Tutor
  (310, 31000, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Manectric - Signal Beam - Tutor
  (310, 31000, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Manectric - Magnet Rise - Tutor
  (310, 31000, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Plusle - Growl - Level 1
  (311, 31100, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Plusle - Thunder Wave - Level 3
  (311, 31100, 86, 10, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Plusle - Quick Attack - Level 7
  (311, 31100, 98, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Plusle - Helping Hand - Level 10
  (311, 31100, 270, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Plusle - Spark - Level 15
  (311, 31100, 209, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Plusle - Encore - Level 17
  (311, 31100, 227, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Plusle - Fake Tears - Level 21
  (311, 31100, 313, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Plusle - Copycat - Level 24
  (311, 31100, 383, 10, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Plusle - Swift - Level 29
  (311, 31100, 129, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Plusle - Fake Tears - Level 31
  (311, 31100, 313, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Plusle - Charge - Level 35
  (311, 31100, 268, 10, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Plusle - Thunder - Level 38
  (311, 31100, 87, 10, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Plusle - Baton Pass - Level 42
  (311, 31100, 226, 10, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Plusle - Agility - Level 44
  (311, 31100, 97, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Plusle - Last Resort - Level 48
  (311, 31100, 387, 10, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Plusle - Nasty Plot - Level 51
  (311, 31100, 417, 10, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Plusle - Toxic - TM06
  (311, 31100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Plusle - Hidden Power - TM10
  (311, 31100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Plusle - Light Screen - TM16
  (311, 31100, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 19),
  -- Plusle - Protect - TM17
  (311, 31100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Plusle - Rain Dance - TM18
  (311, 31100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Plusle - Frustration - TM21
  (311, 31100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Plusle - Iron Tail - TM23
  (311, 31100, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 23),
  -- Plusle - Thunderbolt - TM24
  (311, 31100, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 24),
  -- Plusle - Thunder - TM25
  (311, 31100, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 25),
  -- Plusle - Return - TM27
  (311, 31100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Plusle - Double Team - TM32
  (311, 31100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Plusle - Shock Wave - TM34
  (311, 31100, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 28),
  -- Plusle - Facade - TM42
  (311, 31100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Plusle - Secret Power - TM43
  (311, 31100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Plusle - Rest - TM44
  (311, 31100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Plusle - Attract - TM45
  (311, 31100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Plusle - Fling - TM56
  (311, 31100, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 33),
  -- Plusle - Charge Beam - TM57
  (311, 31100, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 34),
  -- Plusle - Endure - TM58
  (311, 31100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Plusle - Flash - TM70
  (311, 31100, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 36),
  -- Plusle - Thunder Wave - TM73
  (311, 31100, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 37),
  -- Plusle - Captivate - TM78
  (311, 31100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 38),
  -- Plusle - Sleep Talk - TM82
  (311, 31100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Plusle - Natural Gift - TM83
  (311, 31100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Plusle - Grass Knot - TM86
  (311, 31100, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 41),
  -- Plusle - Swagger - TM87
  (311, 31100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Plusle - Substitute - TM90
  (311, 31100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Plusle - Sing - Egg
  (311, 31100, 47, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Plusle - Substitute - Egg
  (311, 31100, 164, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Plusle - Sweet Kiss - Egg
  (311, 31100, 186, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Plusle - Wish - Egg
  (311, 31100, 273, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Plusle - Discharge - Egg
  (311, 31100, 435, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Plusle - Thunder Punch - Tutor
  (311, 31100, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Plusle - Headbutt - Tutor
  (311, 31100, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Plusle - Swift - Tutor
  (311, 31100, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Plusle - Snore - Tutor
  (311, 31100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Plusle - Mud-Slap - Tutor
  (311, 31100, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Plusle - Rollout - Tutor
  (311, 31100, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Plusle - Uproar - Tutor
  (311, 31100, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Plusle - Helping Hand - Tutor
  (311, 31100, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Plusle - Signal Beam - Tutor
  (311, 31100, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Plusle - Last Resort - Tutor
  (311, 31100, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Plusle - Magnet Rise - Tutor
  (311, 31100, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Minun - Growl - Level 1
  (312, 31200, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minun - Thunder Wave - Level 3
  (312, 31200, 86, 10, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minun - Quick Attack - Level 7
  (312, 31200, 98, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Minun - Helping Hand - Level 10
  (312, 31200, 270, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Minun - Spark - Level 15
  (312, 31200, 209, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Minun - Encore - Level 17
  (312, 31200, 227, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Minun - Charm - Level 21
  (312, 31200, 204, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Minun - Copycat - Level 24
  (312, 31200, 383, 10, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Minun - Swift - Level 29
  (312, 31200, 129, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Minun - Fake Tears - Level 31
  (312, 31200, 313, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Minun - Charge - Level 35
  (312, 31200, 268, 10, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Minun - Thunder - Level 38
  (312, 31200, 87, 10, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Minun - Baton Pass - Level 42
  (312, 31200, 226, 10, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Minun - Agility - Level 44
  (312, 31200, 97, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Minun - Trump Card - Level 48
  (312, 31200, 376, 10, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Minun - Nasty Plot - Level 51
  (312, 31200, 417, 10, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Minun - Toxic - TM06
  (312, 31200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Minun - Hidden Power - TM10
  (312, 31200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Minun - Light Screen - TM16
  (312, 31200, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 19),
  -- Minun - Protect - TM17
  (312, 31200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Minun - Rain Dance - TM18
  (312, 31200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Minun - Frustration - TM21
  (312, 31200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Minun - Iron Tail - TM23
  (312, 31200, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 23),
  -- Minun - Thunderbolt - TM24
  (312, 31200, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 24),
  -- Minun - Thunder - TM25
  (312, 31200, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 25),
  -- Minun - Return - TM27
  (312, 31200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Minun - Double Team - TM32
  (312, 31200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Minun - Shock Wave - TM34
  (312, 31200, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 28),
  -- Minun - Facade - TM42
  (312, 31200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Minun - Secret Power - TM43
  (312, 31200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Minun - Rest - TM44
  (312, 31200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Minun - Attract - TM45
  (312, 31200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Minun - Fling - TM56
  (312, 31200, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 33),
  -- Minun - Charge Beam - TM57
  (312, 31200, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 34),
  -- Minun - Endure - TM58
  (312, 31200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Minun - Flash - TM70
  (312, 31200, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 36),
  -- Minun - Thunder Wave - TM73
  (312, 31200, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 37),
  -- Minun - Captivate - TM78
  (312, 31200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 38),
  -- Minun - Sleep Talk - TM82
  (312, 31200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Minun - Natural Gift - TM83
  (312, 31200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Minun - Grass Knot - TM86
  (312, 31200, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 41),
  -- Minun - Swagger - TM87
  (312, 31200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Minun - Substitute - TM90
  (312, 31200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Minun - Sing - Egg
  (312, 31200, 47, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Minun - Substitute - Egg
  (312, 31200, 164, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Minun - Sweet Kiss - Egg
  (312, 31200, 186, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Minun - Wish - Egg
  (312, 31200, 273, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minun - Discharge - Egg
  (312, 31200, 435, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minun - Thunder Punch - Tutor
  (312, 31200, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Minun - Headbutt - Tutor
  (312, 31200, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Minun - Swift - Tutor
  (312, 31200, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Minun - Snore - Tutor
  (312, 31200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Minun - Mud-Slap - Tutor
  (312, 31200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Minun - Rollout - Tutor
  (312, 31200, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Minun - Uproar - Tutor
  (312, 31200, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Minun - Helping Hand - Tutor
  (312, 31200, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Minun - Signal Beam - Tutor
  (312, 31200, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Minun - Last Resort - Tutor
  (312, 31200, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Minun - Magnet Rise - Tutor
  (312, 31200, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Volbeat - Tackle - Level 1
  (313, 31300, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volbeat - Flash - Level 1
  (313, 31300, 148, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volbeat - Double Team - Level 5
  (313, 31300, 104, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Volbeat - Confuse Ray - Level 9
  (313, 31300, 109, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Volbeat - Moonlight - Level 13
  (313, 31300, 236, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Volbeat - Quick Attack - Level 17
  (313, 31300, 98, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Volbeat - Tail Glow - Level 21
  (313, 31300, 294, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Volbeat - Signal Beam - Level 25
  (313, 31300, 324, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Volbeat - Protect - Level 29
  (313, 31300, 182, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Volbeat - Helping Hand - Level 33
  (313, 31300, 270, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Volbeat - Zen Headbutt - Level 37
  (313, 31300, 428, 10, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Volbeat - Bug Buzz - Level 41
  (313, 31300, 405, 10, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Volbeat - Double-Edge - Level 45
  (313, 31300, 38, 10, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Volbeat - Focus Punch - TM01
  (313, 31300, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 14),
  -- Volbeat - Water Pulse - TM03
  (313, 31300, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Volbeat - Toxic - TM06
  (313, 31300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Volbeat - Hidden Power - TM10
  (313, 31300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Volbeat - Sunny Day - TM11
  (313, 31300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Volbeat - Light Screen - TM16
  (313, 31300, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 19),
  -- Volbeat - Protect - TM17
  (313, 31300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Volbeat - Rain Dance - TM18
  (313, 31300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Volbeat - Giga Drain - TM19
  (313, 31300, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 22),
  -- Volbeat - Frustration - TM21
  (313, 31300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Volbeat - Solar Beam - TM22
  (313, 31300, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 24),
  -- Volbeat - Thunderbolt - TM24
  (313, 31300, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 25),
  -- Volbeat - Thunder - TM25
  (313, 31300, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 26),
  -- Volbeat - Return - TM27
  (313, 31300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Volbeat - Shadow Ball - TM30
  (313, 31300, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 28),
  -- Volbeat - Brick Break - TM31
  (313, 31300, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 29),
  -- Volbeat - Double Team - TM32
  (313, 31300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Volbeat - Shock Wave - TM34
  (313, 31300, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 31),
  -- Volbeat - Aerial Ace - TM40
  (313, 31300, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 32),
  -- Volbeat - Facade - TM42
  (313, 31300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Volbeat - Secret Power - TM43
  (313, 31300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Volbeat - Rest - TM44
  (313, 31300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Volbeat - Attract - TM45
  (313, 31300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 36),
  -- Volbeat - Thief - TM46
  (313, 31300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 37),
  -- Volbeat - Roost - TM51
  (313, 31300, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 38),
  -- Volbeat - Fling - TM56
  (313, 31300, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 39),
  -- Volbeat - Charge Beam - TM57
  (313, 31300, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 40),
  -- Volbeat - Endure - TM58
  (313, 31300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 41),
  -- Volbeat - Silver Wind - TM62
  (313, 31300, 318, 10, NULL, 2, NULL, NULL, 10002062, NULL, 42),
  -- Volbeat - Flash - TM70
  (313, 31300, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 43),
  -- Volbeat - Thunder Wave - TM73
  (313, 31300, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 44),
  -- Volbeat - Psych Up - TM77
  (313, 31300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 45),
  -- Volbeat - Captivate - TM78
  (313, 31300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 46),
  -- Volbeat - Sleep Talk - TM82
  (313, 31300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 47),
  -- Volbeat - Natural Gift - TM83
  (313, 31300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 48),
  -- Volbeat - Swagger - TM87
  (313, 31300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 49),
  -- Volbeat - U-turn - TM89
  (313, 31300, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 50),
  -- Volbeat - Substitute - TM90
  (313, 31300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 51),
  -- Volbeat - Baton Pass - Egg
  (313, 31300, 226, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Volbeat - Encore - Egg
  (313, 31300, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Volbeat - Trick - Egg
  (313, 31300, 271, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Volbeat - Silver Wind - Egg
  (313, 31300, 318, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Volbeat - Bug Buzz - Egg
  (313, 31300, 405, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Volbeat - Ice Punch - Tutor
  (313, 31300, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Volbeat - Thunder Punch - Tutor
  (313, 31300, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Volbeat - String Shot - Tutor
  (313, 31300, 81, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Volbeat - Swift - Tutor
  (313, 31300, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Volbeat - Snore - Tutor
  (313, 31300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Volbeat - Mud-Slap - Tutor
  (313, 31300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Volbeat - Helping Hand - Tutor
  (313, 31300, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Volbeat - Air Cutter - Tutor
  (313, 31300, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Volbeat - Signal Beam - Tutor
  (313, 31300, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Volbeat - Tailwind - Tutor
  (313, 31300, 366, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Volbeat - Zen Headbutt - Tutor
  (313, 31300, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Volbeat - Bug Bite - Tutor
  (313, 31300, 450, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Volbeat - Ominous Wind - Tutor
  (313, 31300, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Illumise - Tackle - Level 1
  (314, 31400, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 10, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 10, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Illumise - Moonlight - Level 13
  (314, 31400, 236, 10, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 17
  (314, 31400, 98, 10, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Illumise - Wish - Level 21
  (314, 31400, 273, 10, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Illumise - Encore - Level 25
  (314, 31400, 227, 10, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 10, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Illumise - Helping Hand - Level 33
  (314, 31400, 270, 10, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Illumise - Zen Headbutt - Level 37
  (314, 31400, 428, 10, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Illumise - Bug Buzz - Level 41
  (314, 31400, 405, 10, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Illumise - Covet - Level 45
  (314, 31400, 343, 10, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Illumise - Focus Punch - TM01
  (314, 31400, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 13),
  -- Illumise - Water Pulse - TM03
  (314, 31400, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 14),
  -- Illumise - Toxic - TM06
  (314, 31400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Illumise - Hidden Power - TM10
  (314, 31400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Illumise - Sunny Day - TM11
  (314, 31400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Illumise - Light Screen - TM16
  (314, 31400, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 18),
  -- Illumise - Protect - TM17
  (314, 31400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 19),
  -- Illumise - Rain Dance - TM18
  (314, 31400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 20),
  -- Illumise - Giga Drain - TM19
  (314, 31400, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 21),
  -- Illumise - Frustration - TM21
  (314, 31400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Illumise - Solar Beam - TM22
  (314, 31400, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 23),
  -- Illumise - Thunderbolt - TM24
  (314, 31400, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 24),
  -- Illumise - Thunder - TM25
  (314, 31400, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 25),
  -- Illumise - Return - TM27
  (314, 31400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Illumise - Shadow Ball - TM30
  (314, 31400, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Illumise - Brick Break - TM31
  (314, 31400, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 28),
  -- Illumise - Double Team - TM32
  (314, 31400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Illumise - Shock Wave - TM34
  (314, 31400, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 30),
  -- Illumise - Aerial Ace - TM40
  (314, 31400, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 31),
  -- Illumise - Facade - TM42
  (314, 31400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Illumise - Secret Power - TM43
  (314, 31400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Illumise - Rest - TM44
  (314, 31400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Illumise - Attract - TM45
  (314, 31400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Illumise - Thief - TM46
  (314, 31400, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Illumise - Roost - TM51
  (314, 31400, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 37),
  -- Illumise - Fling - TM56
  (314, 31400, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 38),
  -- Illumise - Charge Beam - TM57
  (314, 31400, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 39),
  -- Illumise - Endure - TM58
  (314, 31400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Illumise - Silver Wind - TM62
  (314, 31400, 318, 10, NULL, 2, NULL, NULL, 10002062, NULL, 41),
  -- Illumise - Flash - TM70
  (314, 31400, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 42),
  -- Illumise - Thunder Wave - TM73
  (314, 31400, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 43),
  -- Illumise - Psych Up - TM77
  (314, 31400, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 44),
  -- Illumise - Captivate - TM78
  (314, 31400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 45),
  -- Illumise - Sleep Talk - TM82
  (314, 31400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Illumise - Natural Gift - TM83
  (314, 31400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Illumise - Swagger - TM87
  (314, 31400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Illumise - U-turn - TM89
  (314, 31400, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 49),
  -- Illumise - Substitute - TM90
  (314, 31400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 50),
  -- Illumise - Growth - Egg
  (314, 31400, 74, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Illumise - Baton Pass - Egg
  (314, 31400, 226, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Illumise - Encore - Egg
  (314, 31400, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Illumise - Silver Wind - Egg
  (314, 31400, 318, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Illumise - Bug Buzz - Egg
  (314, 31400, 405, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Illumise - Ice Punch - Tutor
  (314, 31400, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Illumise - Thunder Punch - Tutor
  (314, 31400, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Illumise - String Shot - Tutor
  (314, 31400, 81, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Illumise - Swift - Tutor
  (314, 31400, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Illumise - Snore - Tutor
  (314, 31400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Illumise - Mud-Slap - Tutor
  (314, 31400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Illumise - Helping Hand - Tutor
  (314, 31400, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Illumise - Air Cutter - Tutor
  (314, 31400, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Illumise - Tailwind - Tutor
  (314, 31400, 366, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Illumise - Zen Headbutt - Tutor
  (314, 31400, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Illumise - Bug Bite - Tutor
  (314, 31400, 450, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Illumise - Ominous Wind - Tutor
  (314, 31400, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Growth - Level 4
  (315, 31500, 74, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Roselia - Poison Sting - Level 7
  (315, 31500, 40, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 10
  (315, 31500, 78, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Roselia - Mega Drain - Level 13
  (315, 31500, 72, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Roselia - Leech Seed - Level 16
  (315, 31500, 73, 10, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Roselia - Magical Leaf - Level 19
  (315, 31500, 345, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Roselia - Grass Whistle - Level 22
  (315, 31500, 320, 10, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Roselia - Giga Drain - Level 25
  (315, 31500, 202, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Roselia - Toxic Spikes - Level 28
  (315, 31500, 390, 10, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Roselia - Sweet Scent - Level 31
  (315, 31500, 230, 10, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Roselia - Ingrain - Level 34
  (315, 31500, 275, 10, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Roselia - Toxic - Level 37
  (315, 31500, 92, 10, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Roselia - Petal Dance - Level 40
  (315, 31500, 80, 10, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Roselia - Aromatherapy - Level 43
  (315, 31500, 312, 10, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Roselia - Synthesis - Level 46
  (315, 31500, 235, 10, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Roselia - Toxic - TM06
  (315, 31500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Roselia - Bullet Seed - TM09
  (315, 31500, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 18),
  -- Roselia - Hidden Power - TM10
  (315, 31500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Roselia - Sunny Day - TM11
  (315, 31500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Roselia - Protect - TM17
  (315, 31500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Roselia - Rain Dance - TM18
  (315, 31500, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Roselia - Giga Drain - TM19
  (315, 31500, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 23),
  -- Roselia - Frustration - TM21
  (315, 31500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Roselia - Solar Beam - TM22
  (315, 31500, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 25),
  -- Roselia - Return - TM27
  (315, 31500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Roselia - Shadow Ball - TM30
  (315, 31500, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Roselia - Double Team - TM32
  (315, 31500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Roselia - Sludge Bomb - TM36
  (315, 31500, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 29),
  -- Roselia - Facade - TM42
  (315, 31500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Roselia - Secret Power - TM43
  (315, 31500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Roselia - Rest - TM44
  (315, 31500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Roselia - Attract - TM45
  (315, 31500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Roselia - Energy Ball - TM53
  (315, 31500, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 34),
  -- Roselia - Endure - TM58
  (315, 31500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Roselia - Flash - TM70
  (315, 31500, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 36),
  -- Roselia - Swords Dance - TM75
  (315, 31500, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 37),
  -- Roselia - Psych Up - TM77
  (315, 31500, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 38),
  -- Roselia - Captivate - TM78
  (315, 31500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 39),
  -- Roselia - Sleep Talk - TM82
  (315, 31500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 40),
  -- Roselia - Natural Gift - TM83
  (315, 31500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 41),
  -- Roselia - Poison Jab - TM84
  (315, 31500, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 42),
  -- Roselia - Grass Knot - TM86
  (315, 31500, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 43),
  -- Roselia - Swagger - TM87
  (315, 31500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 44),
  -- Roselia - Substitute - TM90
  (315, 31500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 45),
  -- Roselia - Cut - HM01
  (315, 31500, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 46),
  -- Roselia - Pin Missile - Egg
  (315, 31500, 42, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roselia - Razor Leaf - Egg
  (315, 31500, 75, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roselia - Sleep Powder - Egg
  (315, 31500, 79, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Roselia - Mind Reader - Egg
  (315, 31500, 170, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Roselia - Cotton Spore - Egg
  (315, 31500, 178, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Roselia - Spikes - Egg
  (315, 31500, 191, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roselia - Synthesis - Egg
  (315, 31500, 235, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roselia - Extrasensory - Egg
  (315, 31500, 326, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Leaf Storm - Egg
  (315, 31500, 437, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Roselia - Swift - Tutor
  (315, 31500, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Roselia - Snore - Tutor
  (315, 31500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Roselia - Mud-Slap - Tutor
  (315, 31500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Roselia - Fury Cutter - Tutor
  (315, 31500, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Roselia - Synthesis - Tutor
  (315, 31500, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Roselia - Worry Seed - Tutor
  (315, 31500, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Roselia - Seed Bomb - Tutor
  (315, 31500, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Gulpin - Pound - Level 1
  (316, 31600, 1, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 6
  (316, 31600, 281, 10, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 9
  (316, 31600, 139, 10, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 14
  (316, 31600, 124, 10, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 17
  (316, 31600, 133, 10, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Gulpin - Encore - Level 23
  (316, 31600, 227, 10, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Gulpin - Toxic - Level 28
  (316, 31600, 92, 10, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gulpin - Stockpile - Level 34
  (316, 31600, 254, 10, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gulpin - Spit Up - Level 34
  (316, 31600, 255, 10, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Gulpin - Swallow - Level 34
  (316, 31600, 256, 10, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Gulpin - Sludge Bomb - Level 39
  (316, 31600, 188, 10, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Gulpin - Gastro Acid - Level 44
  (316, 31600, 380, 10, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Gulpin - Wring Out - Level 49
  (316, 31600, 378, 10, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Gulpin - Gunk Shot - Level 54
  (316, 31600, 441, 10, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Gulpin - Water Pulse - TM03
  (316, 31600, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Gulpin - Toxic - TM06
  (316, 31600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Gulpin - Bullet Seed - TM09
  (316, 31600, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 17),
  -- Gulpin - Hidden Power - TM10
  (316, 31600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Gulpin - Sunny Day - TM11
  (316, 31600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Gulpin - Ice Beam - TM13
  (316, 31600, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 20),
  -- Gulpin - Protect - TM17
  (316, 31600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Gulpin - Rain Dance - TM18
  (316, 31600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Gulpin - Giga Drain - TM19
  (316, 31600, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 23),
  -- Gulpin - Frustration - TM21
  (316, 31600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Gulpin - Solar Beam - TM22
  (316, 31600, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 25),
  -- Gulpin - Return - TM27
  (316, 31600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Gulpin - Shadow Ball - TM30
  (316, 31600, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Gulpin - Double Team - TM32
  (316, 31600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Gulpin - Shock Wave - TM34
  (316, 31600, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 29),
  -- Gulpin - Sludge Bomb - TM36
  (316, 31600, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 30),
  -- Gulpin - Facade - TM42
  (316, 31600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Gulpin - Secret Power - TM43
  (316, 31600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Gulpin - Rest - TM44
  (316, 31600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Gulpin - Attract - TM45
  (316, 31600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Gulpin - Snatch - TM49
  (316, 31600, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 35),
  -- Gulpin - Endure - TM58
  (316, 31600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Gulpin - Explosion - TM64
  (316, 31600, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 37),
  -- Gulpin - Captivate - TM78
  (316, 31600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 38),
  -- Gulpin - Sleep Talk - TM82
  (316, 31600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Gulpin - Natural Gift - TM83
  (316, 31600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Gulpin - Dream Eater - TM85
  (316, 31600, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 41),
  -- Gulpin - Swagger - TM87
  (316, 31600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Gulpin - Substitute - TM90
  (316, 31600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Gulpin - Strength - HM04
  (316, 31600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 44),
  -- Gulpin - Rock Smash - HM06
  (316, 31600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 45),
  -- Gulpin - Smog - Egg
  (316, 31600, 123, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gulpin - Dream Eater - Egg
  (316, 31600, 138, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gulpin - Acid Armor - Egg
  (316, 31600, 151, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gulpin - Curse - Egg
  (316, 31600, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gulpin - Destiny Bond - Egg
  (316, 31600, 194, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gulpin - Pain Split - Egg
  (316, 31600, 220, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gulpin - Fire Punch - Tutor
  (316, 31600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Gulpin - Ice Punch - Tutor
  (316, 31600, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Gulpin - Thunder Punch - Tutor
  (316, 31600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Gulpin - Headbutt - Tutor
  (316, 31600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Gulpin - Snore - Tutor
  (316, 31600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Gulpin - Mud-Slap - Tutor
  (316, 31600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Gulpin - Rollout - Tutor
  (316, 31600, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Gulpin - Pain Split - Tutor
  (316, 31600, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Gulpin - Gastro Acid - Tutor
  (316, 31600, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Gulpin - Seed Bomb - Tutor
  (316, 31600, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Gulpin - Gunk Shot - Tutor
  (316, 31600, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Swalot - Pound - Level 1
  (317, 31700, 1, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Sludge - Level 1
  (317, 31700, 124, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Poison Gas - Level 1
  (317, 31700, 139, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swalot - Yawn - Level 1
  (317, 31700, 281, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swalot - Yawn - Level 6
  (317, 31700, 281, 10, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Swalot - Poison Gas - Level 9
  (317, 31700, 139, 10, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Swalot - Sludge - Level 14
  (317, 31700, 124, 10, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Swalot - Amnesia - Level 17
  (317, 31700, 133, 10, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Swalot - Encore - Level 23
  (317, 31700, 227, 10, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Swalot - Body Slam - Level 26
  (317, 31700, 34, 10, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Swalot - Toxic - Level 30
  (317, 31700, 92, 10, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Swalot - Stockpile - Level 38
  (317, 31700, 254, 10, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Swalot - Spit Up - Level 38
  (317, 31700, 255, 10, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Swalot - Swallow - Level 38
  (317, 31700, 256, 10, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Swalot - Sludge Bomb - Level 45
  (317, 31700, 188, 10, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Swalot - Gastro Acid - Level 52
  (317, 31700, 380, 10, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Swalot - Wring Out - Level 59
  (317, 31700, 378, 10, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Swalot - Gunk Shot - Level 66
  (317, 31700, 441, 10, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Swalot - Water Pulse - TM03
  (317, 31700, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 19),
  -- Swalot - Toxic - TM06
  (317, 31700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 20),
  -- Swalot - Bullet Seed - TM09
  (317, 31700, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 21),
  -- Swalot - Hidden Power - TM10
  (317, 31700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 22),
  -- Swalot - Sunny Day - TM11
  (317, 31700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 23),
  -- Swalot - Ice Beam - TM13
  (317, 31700, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 24),
  -- Swalot - Hyper Beam - TM15
  (317, 31700, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Swalot - Protect - TM17
  (317, 31700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Swalot - Rain Dance - TM18
  (317, 31700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Swalot - Giga Drain - TM19
  (317, 31700, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 28),
  -- Swalot - Frustration - TM21
  (317, 31700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 29),
  -- Swalot - Solar Beam - TM22
  (317, 31700, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 30),
  -- Swalot - Earthquake - TM26
  (317, 31700, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 31),
  -- Swalot - Return - TM27
  (317, 31700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Swalot - Shadow Ball - TM30
  (317, 31700, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 33),
  -- Swalot - Double Team - TM32
  (317, 31700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Swalot - Shock Wave - TM34
  (317, 31700, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 35),
  -- Swalot - Sludge Bomb - TM36
  (317, 31700, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 36),
  -- Swalot - Facade - TM42
  (317, 31700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 37),
  -- Swalot - Secret Power - TM43
  (317, 31700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 38),
  -- Swalot - Rest - TM44
  (317, 31700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 39),
  -- Swalot - Attract - TM45
  (317, 31700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 40),
  -- Swalot - Snatch - TM49
  (317, 31700, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 41),
  -- Swalot - Endure - TM58
  (317, 31700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 42),
  -- Swalot - Explosion - TM64
  (317, 31700, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 43),
  -- Swalot - Giga Impact - TM68
  (317, 31700, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 44),
  -- Swalot - Captivate - TM78
  (317, 31700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 45),
  -- Swalot - Sleep Talk - TM82
  (317, 31700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Swalot - Natural Gift - TM83
  (317, 31700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Swalot - Dream Eater - TM85
  (317, 31700, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 48),
  -- Swalot - Swagger - TM87
  (317, 31700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 49),
  -- Swalot - Substitute - TM90
  (317, 31700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 50),
  -- Swalot - Strength - HM04
  (317, 31700, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 51),
  -- Swalot - Rock Smash - HM06
  (317, 31700, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 52),
  -- Swalot - Fire Punch - Tutor
  (317, 31700, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Swalot - Ice Punch - Tutor
  (317, 31700, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Swalot - Thunder Punch - Tutor
  (317, 31700, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Swalot - Headbutt - Tutor
  (317, 31700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Swalot - Snore - Tutor
  (317, 31700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Swalot - Mud-Slap - Tutor
  (317, 31700, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Swalot - Rollout - Tutor
  (317, 31700, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Swalot - Pain Split - Tutor
  (317, 31700, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Swalot - Block - Tutor
  (317, 31700, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Swalot - Gastro Acid - Tutor
  (317, 31700, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Swalot - Seed Bomb - Tutor
  (317, 31700, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Swalot - Gunk Shot - Tutor
  (317, 31700, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Bite - Level 1
  (318, 31800, 44, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Rage - Level 6
  (318, 31800, 99, 10, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 10, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carvanha - Scary Face - Level 11
  (318, 31800, 184, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Carvanha - Ice Fang - Level 16
  (318, 31800, 423, 10, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Carvanha - Screech - Level 18
  (318, 31800, 103, 10, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Carvanha - Swagger - Level 21
  (318, 31800, 207, 10, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Carvanha - Assurance - Level 26
  (318, 31800, 372, 10, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Carvanha - Crunch - Level 28
  (318, 31800, 242, 10, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Carvanha - Aqua Jet - Level 31
  (318, 31800, 453, 10, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Carvanha - Agility - Level 36
  (318, 31800, 97, 10, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Carvanha - Take Down - Level 38
  (318, 31800, 36, 10, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Carvanha - Water Pulse - TM03
  (318, 31800, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 14),
  -- Carvanha - Toxic - TM06
  (318, 31800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Carvanha - Hail - TM07
  (318, 31800, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 16),
  -- Carvanha - Hidden Power - TM10
  (318, 31800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Carvanha - Taunt - TM12
  (318, 31800, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 18),
  -- Carvanha - Ice Beam - TM13
  (318, 31800, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 19),
  -- Carvanha - Blizzard - TM14
  (318, 31800, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 20),
  -- Carvanha - Protect - TM17
  (318, 31800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Carvanha - Rain Dance - TM18
  (318, 31800, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Carvanha - Frustration - TM21
  (318, 31800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Carvanha - Return - TM27
  (318, 31800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Carvanha - Double Team - TM32
  (318, 31800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 25),
  -- Carvanha - Torment - TM41
  (318, 31800, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 26),
  -- Carvanha - Facade - TM42
  (318, 31800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Carvanha - Secret Power - TM43
  (318, 31800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Carvanha - Rest - TM44
  (318, 31800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Carvanha - Attract - TM45
  (318, 31800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Carvanha - Thief - TM46
  (318, 31800, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 31),
  -- Carvanha - Brine - TM55
  (318, 31800, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 32),
  -- Carvanha - Endure - TM58
  (318, 31800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Carvanha - Payback - TM66
  (318, 31800, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 34),
  -- Carvanha - Captivate - TM78
  (318, 31800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 35),
  -- Carvanha - Dark Pulse - TM79
  (318, 31800, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 36),
  -- Carvanha - Sleep Talk - TM82
  (318, 31800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 37),
  -- Carvanha - Natural Gift - TM83
  (318, 31800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 38),
  -- Carvanha - Swagger - TM87
  (318, 31800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 39),
  -- Carvanha - Substitute - TM90
  (318, 31800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 40),
  -- Carvanha - Surf - HM03
  (318, 31800, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 41),
  -- Carvanha - Whirlpool - HM05
  (318, 31800, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 42),
  -- Carvanha - Waterfall - HM07
  (318, 31800, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 43),
  -- Carvanha - Thrash - Egg
  (318, 31800, 37, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carvanha - Double-Edge - Egg
  (318, 31800, 38, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carvanha - Hydro Pump - Egg
  (318, 31800, 56, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Carvanha - Ancient Power - Egg
  (318, 31800, 246, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Carvanha - Swift - Tutor
  (318, 31800, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Carvanha - Super Fang - Tutor
  (318, 31800, 162, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Carvanha - Snore - Tutor
  (318, 31800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Carvanha - Spite - Tutor
  (318, 31800, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Carvanha - Mud-Slap - Tutor
  (318, 31800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Carvanha - Icy Wind - Tutor
  (318, 31800, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Carvanha - Fury Cutter - Tutor
  (318, 31800, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Carvanha - Ancient Power - Tutor
  (318, 31800, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Carvanha - Uproar - Tutor
  (318, 31800, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Carvanha - Dive - Tutor
  (318, 31800, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Carvanha - Bounce - Tutor
  (318, 31800, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Carvanha - Zen Headbutt - Tutor
  (318, 31800, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Bite - Level 1
  (319, 31900, 44, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Rage - Level 1
  (319, 31900, 99, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Focus Energy - Level 1
  (319, 31900, 116, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sharpedo - Feint - Level 1
  (319, 31900, 364, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sharpedo - Rage - Level 6
  (319, 31900, 99, 10, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Sharpedo - Focus Energy - Level 8
  (319, 31900, 116, 10, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Sharpedo - Scary Face - Level 11
  (319, 31900, 184, 10, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Sharpedo - Ice Fang - Level 16
  (319, 31900, 423, 10, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sharpedo - Screech - Level 18
  (319, 31900, 103, 10, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Sharpedo - Swagger - Level 21
  (319, 31900, 207, 10, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Sharpedo - Assurance - Level 26
  (319, 31900, 372, 10, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Sharpedo - Crunch - Level 28
  (319, 31900, 242, 10, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sharpedo - Slash - Level 30
  (319, 31900, 163, 10, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Sharpedo - Aqua Jet - Level 34
  (319, 31900, 453, 10, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Sharpedo - Taunt - Level 40
  (319, 31900, 269, 10, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Sharpedo - Agility - Level 45
  (319, 31900, 97, 10, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sharpedo - Skull Bash - Level 50
  (319, 31900, 130, 10, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Sharpedo - Night Slash - Level 56
  (319, 31900, 400, 10, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Sharpedo - Water Pulse - TM03
  (319, 31900, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 20),
  -- Sharpedo - Roar - TM05
  (319, 31900, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 21),
  -- Sharpedo - Toxic - TM06
  (319, 31900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 22),
  -- Sharpedo - Hail - TM07
  (319, 31900, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 23),
  -- Sharpedo - Hidden Power - TM10
  (319, 31900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 24),
  -- Sharpedo - Taunt - TM12
  (319, 31900, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 25),
  -- Sharpedo - Ice Beam - TM13
  (319, 31900, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 26),
  -- Sharpedo - Blizzard - TM14
  (319, 31900, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 27),
  -- Sharpedo - Hyper Beam - TM15
  (319, 31900, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 28),
  -- Sharpedo - Protect - TM17
  (319, 31900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 29),
  -- Sharpedo - Rain Dance - TM18
  (319, 31900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 30),
  -- Sharpedo - Frustration - TM21
  (319, 31900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 31),
  -- Sharpedo - Earthquake - TM26
  (319, 31900, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 32),
  -- Sharpedo - Return - TM27
  (319, 31900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 33),
  -- Sharpedo - Double Team - TM32
  (319, 31900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Sharpedo - Rock Tomb - TM39
  (319, 31900, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 35),
  -- Sharpedo - Torment - TM41
  (319, 31900, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 36),
  -- Sharpedo - Facade - TM42
  (319, 31900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 37),
  -- Sharpedo - Secret Power - TM43
  (319, 31900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 38),
  -- Sharpedo - Rest - TM44
  (319, 31900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 39),
  -- Sharpedo - Attract - TM45
  (319, 31900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 40),
  -- Sharpedo - Thief - TM46
  (319, 31900, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 41),
  -- Sharpedo - Brine - TM55
  (319, 31900, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 42),
  -- Sharpedo - Endure - TM58
  (319, 31900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 43),
  -- Sharpedo - Payback - TM66
  (319, 31900, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 44),
  -- Sharpedo - Giga Impact - TM68
  (319, 31900, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 45),
  -- Sharpedo - Avalanche - TM72
  (319, 31900, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 46),
  -- Sharpedo - Captivate - TM78
  (319, 31900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 47),
  -- Sharpedo - Dark Pulse - TM79
  (319, 31900, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 48),
  -- Sharpedo - Sleep Talk - TM82
  (319, 31900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 49),
  -- Sharpedo - Natural Gift - TM83
  (319, 31900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 50),
  -- Sharpedo - Poison Jab - TM84
  (319, 31900, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 51),
  -- Sharpedo - Swagger - TM87
  (319, 31900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 52),
  -- Sharpedo - Substitute - TM90
  (319, 31900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 53),
  -- Sharpedo - Surf - HM03
  (319, 31900, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 54),
  -- Sharpedo - Strength - HM04
  (319, 31900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 55),
  -- Sharpedo - Whirlpool - HM05
  (319, 31900, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 56),
  -- Sharpedo - Rock Smash - HM06
  (319, 31900, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 57),
  -- Sharpedo - Waterfall - HM07
  (319, 31900, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 58),
  -- Sharpedo - Swift - Tutor
  (319, 31900, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Sharpedo - Super Fang - Tutor
  (319, 31900, 162, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Sharpedo - Snore - Tutor
  (319, 31900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Sharpedo - Spite - Tutor
  (319, 31900, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Sharpedo - Mud-Slap - Tutor
  (319, 31900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Sharpedo - Icy Wind - Tutor
  (319, 31900, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Sharpedo - Fury Cutter - Tutor
  (319, 31900, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Sharpedo - Ancient Power - Tutor
  (319, 31900, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Sharpedo - Uproar - Tutor
  (319, 31900, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Sharpedo - Dive - Tutor
  (319, 31900, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Sharpedo - Bounce - Tutor
  (319, 31900, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Sharpedo - Zen Headbutt - Tutor
  (319, 31900, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Wailmer - Splash - Level 1
  (320, 32000, 150, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 4
  (320, 32000, 45, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Wailmer - Water Gun - Level 7
  (320, 32000, 55, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Wailmer - Rollout - Level 11
  (320, 32000, 205, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Wailmer - Whirlpool - Level 14
  (320, 32000, 250, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Wailmer - Astonish - Level 17
  (320, 32000, 310, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Wailmer - Water Pulse - Level 21
  (320, 32000, 352, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wailmer - Mist - Level 24
  (320, 32000, 54, 10, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wailmer - Rest - Level 27
  (320, 32000, 156, 10, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wailmer - Brine - Level 31
  (320, 32000, 362, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Wailmer - Water Spout - Level 34
  (320, 32000, 323, 10, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Wailmer - Amnesia - Level 37
  (320, 32000, 133, 10, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Wailmer - Dive - Level 41
  (320, 32000, 291, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Wailmer - Bounce - Level 44
  (320, 32000, 340, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Wailmer - Hydro Pump - Level 47
  (320, 32000, 56, 10, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Wailmer - Water Pulse - TM03
  (320, 32000, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 16),
  -- Wailmer - Roar - TM05
  (320, 32000, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 17),
  -- Wailmer - Toxic - TM06
  (320, 32000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Wailmer - Hail - TM07
  (320, 32000, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 19),
  -- Wailmer - Hidden Power - TM10
  (320, 32000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Wailmer - Ice Beam - TM13
  (320, 32000, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 21),
  -- Wailmer - Blizzard - TM14
  (320, 32000, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 22),
  -- Wailmer - Protect - TM17
  (320, 32000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Wailmer - Rain Dance - TM18
  (320, 32000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Wailmer - Frustration - TM21
  (320, 32000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 25),
  -- Wailmer - Earthquake - TM26
  (320, 32000, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 26),
  -- Wailmer - Return - TM27
  (320, 32000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Wailmer - Double Team - TM32
  (320, 32000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Wailmer - Rock Tomb - TM39
  (320, 32000, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 29),
  -- Wailmer - Facade - TM42
  (320, 32000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Wailmer - Secret Power - TM43
  (320, 32000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Wailmer - Rest - TM44
  (320, 32000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Wailmer - Attract - TM45
  (320, 32000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Wailmer - Brine - TM55
  (320, 32000, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 34),
  -- Wailmer - Endure - TM58
  (320, 32000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Wailmer - Avalanche - TM72
  (320, 32000, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 36),
  -- Wailmer - Captivate - TM78
  (320, 32000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Wailmer - Sleep Talk - TM82
  (320, 32000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Wailmer - Natural Gift - TM83
  (320, 32000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Wailmer - Swagger - TM87
  (320, 32000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Wailmer - Substitute - TM90
  (320, 32000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Wailmer - Surf - HM03
  (320, 32000, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 42),
  -- Wailmer - Strength - HM04
  (320, 32000, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 43),
  -- Wailmer - Whirlpool - HM05
  (320, 32000, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 44),
  -- Wailmer - Rock Smash - HM06
  (320, 32000, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 45),
  -- Wailmer - Waterfall - HM07
  (320, 32000, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 46),
  -- Wailmer - Body Slam - Egg
  (320, 32000, 34, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wailmer - Thrash - Egg
  (320, 32000, 37, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wailmer - Double-Edge - Egg
  (320, 32000, 38, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wailmer - Fissure - Egg
  (320, 32000, 90, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wailmer - Defense Curl - Egg
  (320, 32000, 111, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailmer - Snore - Egg
  (320, 32000, 173, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailmer - Curse - Egg
  (320, 32000, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailmer - Swagger - Egg
  (320, 32000, 207, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailmer - Sleep Talk - Egg
  (320, 32000, 214, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wailmer - Tickle - Egg
  (320, 32000, 321, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wailmer - Aqua Ring - Egg
  (320, 32000, 392, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wailmer - Headbutt - Tutor
  (320, 32000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Wailmer - Snore - Tutor
  (320, 32000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Wailmer - Icy Wind - Tutor
  (320, 32000, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Wailmer - Rollout - Tutor
  (320, 32000, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Wailmer - Dive - Tutor
  (320, 32000, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Wailmer - Bounce - Tutor
  (320, 32000, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Wailord - Growl - Level 1
  (321, 32100, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailord - Water Gun - Level 1
  (321, 32100, 55, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wailord - Splash - Level 1
  (321, 32100, 150, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wailord - Rollout - Level 1
  (321, 32100, 205, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wailord - Growl - Level 4
  (321, 32100, 45, 10, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Wailord - Water Gun - Level 7
  (321, 32100, 55, 10, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Wailord - Rollout - Level 11
  (321, 32100, 205, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Wailord - Whirlpool - Level 14
  (321, 32100, 250, 10, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Wailord - Astonish - Level 17
  (321, 32100, 310, 10, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Wailord - Water Pulse - Level 21
  (321, 32100, 352, 10, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Wailord - Mist - Level 24
  (321, 32100, 54, 10, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Wailord - Rest - Level 27
  (321, 32100, 156, 10, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Wailord - Brine - Level 31
  (321, 32100, 362, 10, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Wailord - Water Spout - Level 34
  (321, 32100, 323, 10, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Wailord - Amnesia - Level 37
  (321, 32100, 133, 10, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Wailord - Dive - Level 46
  (321, 32100, 291, 10, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Wailord - Bounce - Level 54
  (321, 32100, 340, 10, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Wailord - Hydro Pump - Level 62
  (321, 32100, 56, 10, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Wailord - Water Pulse - TM03
  (321, 32100, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 19),
  -- Wailord - Roar - TM05
  (321, 32100, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 20),
  -- Wailord - Toxic - TM06
  (321, 32100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 21),
  -- Wailord - Hail - TM07
  (321, 32100, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 22),
  -- Wailord - Hidden Power - TM10
  (321, 32100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 23),
  -- Wailord - Ice Beam - TM13
  (321, 32100, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 24),
  -- Wailord - Blizzard - TM14
  (321, 32100, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 25),
  -- Wailord - Hyper Beam - TM15
  (321, 32100, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 26),
  -- Wailord - Protect - TM17
  (321, 32100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 27),
  -- Wailord - Rain Dance - TM18
  (321, 32100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 28),
  -- Wailord - Frustration - TM21
  (321, 32100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 29),
  -- Wailord - Earthquake - TM26
  (321, 32100, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 30),
  -- Wailord - Return - TM27
  (321, 32100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 31),
  -- Wailord - Double Team - TM32
  (321, 32100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 32),
  -- Wailord - Rock Tomb - TM39
  (321, 32100, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 33),
  -- Wailord - Facade - TM42
  (321, 32100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Wailord - Secret Power - TM43
  (321, 32100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Wailord - Rest - TM44
  (321, 32100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Wailord - Attract - TM45
  (321, 32100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Wailord - Brine - TM55
  (321, 32100, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 38),
  -- Wailord - Endure - TM58
  (321, 32100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 39),
  -- Wailord - Giga Impact - TM68
  (321, 32100, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 40),
  -- Wailord - Avalanche - TM72
  (321, 32100, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 41),
  -- Wailord - Captivate - TM78
  (321, 32100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 42),
  -- Wailord - Sleep Talk - TM82
  (321, 32100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 43),
  -- Wailord - Natural Gift - TM83
  (321, 32100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 44),
  -- Wailord - Swagger - TM87
  (321, 32100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 45),
  -- Wailord - Substitute - TM90
  (321, 32100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 46),
  -- Wailord - Surf - HM03
  (321, 32100, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 47),
  -- Wailord - Strength - HM04
  (321, 32100, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 48),
  -- Wailord - Whirlpool - HM05
  (321, 32100, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 49),
  -- Wailord - Rock Smash - HM06
  (321, 32100, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 50),
  -- Wailord - Waterfall - HM07
  (321, 32100, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 51),
  -- Wailord - Headbutt - Tutor
  (321, 32100, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Wailord - Snore - Tutor
  (321, 32100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Wailord - Icy Wind - Tutor
  (321, 32100, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Wailord - Rollout - Tutor
  (321, 32100, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Wailord - Dive - Tutor
  (321, 32100, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Wailord - Block - Tutor
  (321, 32100, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Wailord - Bounce - Tutor
  (321, 32100, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Wailord - Iron Head - Tutor
  (321, 32100, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Numel - Tackle - Level 1
  (322, 32200, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Magnitude - Level 11
  (322, 32200, 222, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Numel - Focus Energy - Level 15
  (322, 32200, 116, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Numel - Take Down - Level 21
  (322, 32200, 36, 10, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 25
  (322, 32200, 133, 10, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Numel - Lava Plume - Level 31
  (322, 32200, 436, 10, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Numel - Earth Power - Level 35
  (322, 32200, 414, 10, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Numel - Earthquake - Level 41
  (322, 32200, 89, 10, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Numel - Flamethrower - Level 45
  (322, 32200, 53, 10, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Numel - Double-Edge - Level 51
  (322, 32200, 38, 10, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Numel - Toxic - TM06
  (322, 32200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 13),
  -- Numel - Hidden Power - TM10
  (322, 32200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 14),
  -- Numel - Sunny Day - TM11
  (322, 32200, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 15),
  -- Numel - Protect - TM17
  (322, 32200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 16),
  -- Numel - Frustration - TM21
  (322, 32200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 17),
  -- Numel - Earthquake - TM26
  (322, 32200, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 18),
  -- Numel - Return - TM27
  (322, 32200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 19),
  -- Numel - Dig - TM28
  (322, 32200, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 20),
  -- Numel - Double Team - TM32
  (322, 32200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 21),
  -- Numel - Flamethrower - TM35
  (322, 32200, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 22),
  -- Numel - Sandstorm - TM37
  (322, 32200, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 23),
  -- Numel - Fire Blast - TM38
  (322, 32200, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 24),
  -- Numel - Rock Tomb - TM39
  (322, 32200, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 25),
  -- Numel - Facade - TM42
  (322, 32200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 26),
  -- Numel - Secret Power - TM43
  (322, 32200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 27),
  -- Numel - Rest - TM44
  (322, 32200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 28),
  -- Numel - Attract - TM45
  (322, 32200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 29),
  -- Numel - Overheat - TM50
  (322, 32200, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 30),
  -- Numel - Endure - TM58
  (322, 32200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 31),
  -- Numel - Will-O-Wisp - TM61
  (322, 32200, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 32),
  -- Numel - Stealth Rock - TM76
  (322, 32200, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 33),
  -- Numel - Captivate - TM78
  (322, 32200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 34),
  -- Numel - Rock Slide - TM80
  (322, 32200, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 35),
  -- Numel - Sleep Talk - TM82
  (322, 32200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 36),
  -- Numel - Natural Gift - TM83
  (322, 32200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 37),
  -- Numel - Swagger - TM87
  (322, 32200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 38),
  -- Numel - Substitute - TM90
  (322, 32200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 39),
  -- Numel - Strength - HM04
  (322, 32200, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 40),
  -- Numel - Rock Smash - HM06
  (322, 32200, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 41),
  -- Numel - Stomp - Egg
  (322, 32200, 23, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Numel - Body Slam - Egg
  (322, 32200, 34, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Numel - Defense Curl - Egg
  (322, 32200, 111, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Numel - Scary Face - Egg
  (322, 32200, 184, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Numel - Rollout - Egg
  (322, 32200, 205, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Numel - Ancient Power - Egg
  (322, 32200, 246, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Numel - Stockpile - Egg
  (322, 32200, 254, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Numel - Spit Up - Egg
  (322, 32200, 255, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Numel - Swallow - Egg
  (322, 32200, 256, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Numel - Heat Wave - Egg
  (322, 32200, 257, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Numel - Yawn - Egg
  (322, 32200, 281, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Numel - Howl - Egg
  (322, 32200, 336, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Numel - Mud Bomb - Egg
  (322, 32200, 426, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Numel - Headbutt - Tutor
  (322, 32200, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Numel - Snore - Tutor
  (322, 32200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Numel - Mud-Slap - Tutor
  (322, 32200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Numel - Rollout - Tutor
  (322, 32200, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Numel - Heat Wave - Tutor
  (322, 32200, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Numel - Earth Power - Tutor
  (322, 32200, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 1
  (323, 32300, 52, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Camerupt - Magnitude - Level 1
  (323, 32300, 222, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Camerupt - Ember - Level 5
  (323, 32300, 52, 10, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Camerupt - Magnitude - Level 11
  (323, 32300, 222, 10, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Camerupt - Focus Energy - Level 15
  (323, 32300, 116, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Camerupt - Take Down - Level 21
  (323, 32300, 36, 10, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Camerupt - Amnesia - Level 25
  (323, 32300, 133, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Camerupt - Lava Plume - Level 31
  (323, 32300, 436, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Camerupt - Rock Slide - Level 33
  (323, 32300, 157, 10, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Camerupt - Earth Power - Level 39
  (323, 32300, 414, 10, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Camerupt - Earthquake - Level 49
  (323, 32300, 89, 10, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Camerupt - Eruption - Level 57
  (323, 32300, 284, 10, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Camerupt - Fissure - Level 67
  (323, 32300, 90, 10, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Camerupt - Roar - TM05
  (323, 32300, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 16),
  -- Camerupt - Toxic - TM06
  (323, 32300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Camerupt - Hidden Power - TM10
  (323, 32300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Camerupt - Sunny Day - TM11
  (323, 32300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Camerupt - Hyper Beam - TM15
  (323, 32300, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 20),
  -- Camerupt - Protect - TM17
  (323, 32300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Camerupt - Frustration - TM21
  (323, 32300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Camerupt - Solar Beam - TM22
  (323, 32300, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 23),
  -- Camerupt - Earthquake - TM26
  (323, 32300, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Camerupt - Return - TM27
  (323, 32300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Camerupt - Dig - TM28
  (323, 32300, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Camerupt - Double Team - TM32
  (323, 32300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Camerupt - Flamethrower - TM35
  (323, 32300, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 28),
  -- Camerupt - Sandstorm - TM37
  (323, 32300, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 29),
  -- Camerupt - Fire Blast - TM38
  (323, 32300, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 30),
  -- Camerupt - Rock Tomb - TM39
  (323, 32300, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Camerupt - Facade - TM42
  (323, 32300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Camerupt - Secret Power - TM43
  (323, 32300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Camerupt - Rest - TM44
  (323, 32300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Camerupt - Attract - TM45
  (323, 32300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Camerupt - Overheat - TM50
  (323, 32300, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 36),
  -- Camerupt - Endure - TM58
  (323, 32300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 37),
  -- Camerupt - Will-O-Wisp - TM61
  (323, 32300, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 38),
  -- Camerupt - Explosion - TM64
  (323, 32300, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 39),
  -- Camerupt - Giga Impact - TM68
  (323, 32300, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 40),
  -- Camerupt - Rock Polish - TM69
  (323, 32300, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 41),
  -- Camerupt - Stone Edge - TM71
  (323, 32300, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 42),
  -- Camerupt - Stealth Rock - TM76
  (323, 32300, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 43),
  -- Camerupt - Captivate - TM78
  (323, 32300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Camerupt - Rock Slide - TM80
  (323, 32300, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 45),
  -- Camerupt - Sleep Talk - TM82
  (323, 32300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Camerupt - Natural Gift - TM83
  (323, 32300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Camerupt - Swagger - TM87
  (323, 32300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Camerupt - Substitute - TM90
  (323, 32300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 49),
  -- Camerupt - Flash Cannon - TM91
  (323, 32300, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 50),
  -- Camerupt - Strength - HM04
  (323, 32300, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 51),
  -- Camerupt - Rock Smash - HM06
  (323, 32300, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 52),
  -- Camerupt - Headbutt - Tutor
  (323, 32300, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Camerupt - Snore - Tutor
  (323, 32300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Camerupt - Mud-Slap - Tutor
  (323, 32300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Camerupt - Rollout - Tutor
  (323, 32300, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Camerupt - Heat Wave - Tutor
  (323, 32300, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Camerupt - Earth Power - Tutor
  (323, 32300, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Camerupt - Iron Head - Tutor
  (323, 32300, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Smog - Level 4
  (324, 32400, 123, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Torkoal - Withdraw - Level 7
  (324, 32400, 110, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torkoal - Curse - Level 12
  (324, 32400, 174, 10, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Torkoal - Fire Spin - Level 17
  (324, 32400, 83, 10, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Torkoal - Smokescreen - Level 20
  (324, 32400, 108, 10, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Torkoal - Rapid Spin - Level 23
  (324, 32400, 229, 10, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Torkoal - Flamethrower - Level 28
  (324, 32400, 53, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torkoal - Body Slam - Level 33
  (324, 32400, 34, 10, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Torkoal - Protect - Level 36
  (324, 32400, 182, 10, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Torkoal - Lava Plume - Level 39
  (324, 32400, 436, 10, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Torkoal - Iron Defense - Level 44
  (324, 32400, 334, 10, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Torkoal - Amnesia - Level 49
  (324, 32400, 133, 10, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Torkoal - Flail - Level 52
  (324, 32400, 175, 10, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Torkoal - Heat Wave - Level 55
  (324, 32400, 257, 10, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Torkoal - Toxic - TM06
  (324, 32400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Torkoal - Hidden Power - TM10
  (324, 32400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Torkoal - Sunny Day - TM11
  (324, 32400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Torkoal - Hyper Beam - TM15
  (324, 32400, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 19),
  -- Torkoal - Protect - TM17
  (324, 32400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Torkoal - Frustration - TM21
  (324, 32400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Torkoal - Solar Beam - TM22
  (324, 32400, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 22),
  -- Torkoal - Iron Tail - TM23
  (324, 32400, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 23),
  -- Torkoal - Earthquake - TM26
  (324, 32400, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Torkoal - Return - TM27
  (324, 32400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Torkoal - Double Team - TM32
  (324, 32400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Torkoal - Flamethrower - TM35
  (324, 32400, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 27),
  -- Torkoal - Sludge Bomb - TM36
  (324, 32400, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 28),
  -- Torkoal - Fire Blast - TM38
  (324, 32400, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 29),
  -- Torkoal - Rock Tomb - TM39
  (324, 32400, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 30),
  -- Torkoal - Facade - TM42
  (324, 32400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Torkoal - Secret Power - TM43
  (324, 32400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Torkoal - Rest - TM44
  (324, 32400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Torkoal - Attract - TM45
  (324, 32400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Torkoal - Overheat - TM50
  (324, 32400, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 35),
  -- Torkoal - Endure - TM58
  (324, 32400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Torkoal - Will-O-Wisp - TM61
  (324, 32400, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 37),
  -- Torkoal - Explosion - TM64
  (324, 32400, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 38),
  -- Torkoal - Giga Impact - TM68
  (324, 32400, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 39),
  -- Torkoal - Stone Edge - TM71
  (324, 32400, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 40),
  -- Torkoal - Gyro Ball - TM74
  (324, 32400, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 41),
  -- Torkoal - Stealth Rock - TM76
  (324, 32400, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 42),
  -- Torkoal - Captivate - TM78
  (324, 32400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 43),
  -- Torkoal - Rock Slide - TM80
  (324, 32400, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 44),
  -- Torkoal - Sleep Talk - TM82
  (324, 32400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Torkoal - Natural Gift - TM83
  (324, 32400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Torkoal - Swagger - TM87
  (324, 32400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 47),
  -- Torkoal - Substitute - TM90
  (324, 32400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 48),
  -- Torkoal - Strength - HM04
  (324, 32400, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 49),
  -- Torkoal - Rock Smash - HM06
  (324, 32400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 50),
  -- Torkoal - Earthquake - Egg
  (324, 32400, 89, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torkoal - Fissure - Egg
  (324, 32400, 90, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torkoal - Skull Bash - Egg
  (324, 32400, 130, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torkoal - Endure - Egg
  (324, 32400, 203, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torkoal - Sleep Talk - Egg
  (324, 32400, 214, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torkoal - Yawn - Egg
  (324, 32400, 281, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torkoal - Eruption - Egg
  (324, 32400, 284, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torkoal - Headbutt - Tutor
  (324, 32400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Torkoal - Snore - Tutor
  (324, 32400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Torkoal - Mud-Slap - Tutor
  (324, 32400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Torkoal - Rollout - Tutor
  (324, 32400, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Torkoal - Heat Wave - Tutor
  (324, 32400, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Torkoal - Iron Defense - Tutor
  (324, 32400, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Torkoal - Earth Power - Tutor
  (324, 32400, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Spoink - Splash - Level 1
  (325, 32500, 150, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Psywave - Level 7
  (325, 32500, 149, 10, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Odor Sleuth - Level 10
  (325, 32500, 316, 10, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 10, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 15
  (325, 32500, 244, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 18
  (325, 32500, 109, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Spoink - Magic Coat - Level 21
  (325, 32500, 277, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spoink - Zen Headbutt - Level 26
  (325, 32500, 428, 10, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Spoink - Rest - Level 29
  (325, 32500, 156, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spoink - Snore - Level 29
  (325, 32500, 173, 10, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spoink - Payback - Level 34
  (325, 32500, 371, 10, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Spoink - Psychic - Level 41
  (325, 32500, 94, 10, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Spoink - Power Gem - Level 46
  (325, 32500, 408, 10, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Spoink - Bounce - Level 48
  (325, 32500, 340, 10, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Spoink - Calm Mind - TM04
  (325, 32500, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 15),
  -- Spoink - Toxic - TM06
  (325, 32500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Spoink - Hidden Power - TM10
  (325, 32500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Spoink - Sunny Day - TM11
  (325, 32500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Spoink - Taunt - TM12
  (325, 32500, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 19),
  -- Spoink - Light Screen - TM16
  (325, 32500, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 20),
  -- Spoink - Protect - TM17
  (325, 32500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Spoink - Rain Dance - TM18
  (325, 32500, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Spoink - Frustration - TM21
  (325, 32500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Spoink - Iron Tail - TM23
  (325, 32500, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 24),
  -- Spoink - Return - TM27
  (325, 32500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Spoink - Psychic - TM29
  (325, 32500, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 26),
  -- Spoink - Shadow Ball - TM30
  (325, 32500, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Spoink - Double Team - TM32
  (325, 32500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Spoink - Reflect - TM33
  (325, 32500, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 29),
  -- Spoink - Shock Wave - TM34
  (325, 32500, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 30),
  -- Spoink - Torment - TM41
  (325, 32500, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 31),
  -- Spoink - Facade - TM42
  (325, 32500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Spoink - Secret Power - TM43
  (325, 32500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Spoink - Rest - TM44
  (325, 32500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Spoink - Attract - TM45
  (325, 32500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Spoink - Thief - TM46
  (325, 32500, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Spoink - Skill Swap - TM48
  (325, 32500, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 37),
  -- Spoink - Snatch - TM49
  (325, 32500, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 38),
  -- Spoink - Charge Beam - TM57
  (325, 32500, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 39),
  -- Spoink - Endure - TM58
  (325, 32500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Spoink - Payback - TM66
  (325, 32500, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 41),
  -- Spoink - Recycle - TM67
  (325, 32500, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 42),
  -- Spoink - Flash - TM70
  (325, 32500, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 43),
  -- Spoink - Thunder Wave - TM73
  (325, 32500, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 44),
  -- Spoink - Psych Up - TM77
  (325, 32500, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 45),
  -- Spoink - Captivate - TM78
  (325, 32500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 46),
  -- Spoink - Sleep Talk - TM82
  (325, 32500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 47),
  -- Spoink - Natural Gift - TM83
  (325, 32500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 48),
  -- Spoink - Dream Eater - TM85
  (325, 32500, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 49),
  -- Spoink - Grass Knot - TM86
  (325, 32500, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 50),
  -- Spoink - Swagger - TM87
  (325, 32500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 51),
  -- Spoink - Substitute - TM90
  (325, 32500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 52),
  -- Spoink - Trick Room - TM92
  (325, 32500, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 53),
  -- Spoink - Amnesia - Egg
  (325, 32500, 133, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spoink - Substitute - Egg
  (325, 32500, 164, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spoink - Mirror Coat - Egg
  (325, 32500, 243, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spoink - Future Sight - Egg
  (325, 32500, 248, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spoink - Trick - Egg
  (325, 32500, 271, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spoink - Extrasensory - Egg
  (325, 32500, 326, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spoink - Zen Headbutt - Egg
  (325, 32500, 428, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Spoink - Headbutt - Tutor
  (325, 32500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Spoink - Swift - Tutor
  (325, 32500, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Spoink - Snore - Tutor
  (325, 32500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Spoink - Icy Wind - Tutor
  (325, 32500, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Spoink - Heal Bell - Tutor
  (325, 32500, 215, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Spoink - Trick - Tutor
  (325, 32500, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Spoink - Role Play - Tutor
  (325, 32500, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Spoink - Magic Coat - Tutor
  (325, 32500, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Spoink - Signal Beam - Tutor
  (325, 32500, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Spoink - Bounce - Tutor
  (325, 32500, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Spoink - Zen Headbutt - Tutor
  (325, 32500, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Grumpig - Psybeam - Level 1
  (326, 32600, 60, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Psywave - Level 1
  (326, 32600, 149, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grumpig - Odor Sleuth - Level 1
  (326, 32600, 316, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grumpig - Psywave - Level 7
  (326, 32600, 149, 10, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Grumpig - Odor Sleuth - Level 10
  (326, 32600, 316, 10, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Grumpig - Psybeam - Level 14
  (326, 32600, 60, 10, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Grumpig - Psych Up - Level 15
  (326, 32600, 244, 10, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Grumpig - Confuse Ray - Level 18
  (326, 32600, 109, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Grumpig - Magic Coat - Level 21
  (326, 32600, 277, 10, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Grumpig - Zen Headbutt - Level 26
  (326, 32600, 428, 10, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Grumpig - Rest - Level 29
  (326, 32600, 156, 10, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Grumpig - Snore - Level 29
  (326, 32600, 173, 10, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Grumpig - Payback - Level 37
  (326, 32600, 371, 10, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Grumpig - Psychic - Level 47
  (326, 32600, 94, 10, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Grumpig - Power Gem - Level 55
  (326, 32600, 408, 10, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Grumpig - Bounce - Level 60
  (326, 32600, 340, 10, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Grumpig - Focus Punch - TM01
  (326, 32600, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 18),
  -- Grumpig - Calm Mind - TM04
  (326, 32600, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 19),
  -- Grumpig - Toxic - TM06
  (326, 32600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 20),
  -- Grumpig - Hidden Power - TM10
  (326, 32600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 21),
  -- Grumpig - Sunny Day - TM11
  (326, 32600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 22),
  -- Grumpig - Taunt - TM12
  (326, 32600, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 23),
  -- Grumpig - Hyper Beam - TM15
  (326, 32600, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 24),
  -- Grumpig - Light Screen - TM16
  (326, 32600, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 25),
  -- Grumpig - Protect - TM17
  (326, 32600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Grumpig - Rain Dance - TM18
  (326, 32600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Grumpig - Frustration - TM21
  (326, 32600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Grumpig - Iron Tail - TM23
  (326, 32600, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 29),
  -- Grumpig - Return - TM27
  (326, 32600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 30),
  -- Grumpig - Psychic - TM29
  (326, 32600, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 31),
  -- Grumpig - Shadow Ball - TM30
  (326, 32600, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 32),
  -- Grumpig - Brick Break - TM31
  (326, 32600, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 33),
  -- Grumpig - Double Team - TM32
  (326, 32600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Grumpig - Reflect - TM33
  (326, 32600, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 35),
  -- Grumpig - Shock Wave - TM34
  (326, 32600, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 36),
  -- Grumpig - Torment - TM41
  (326, 32600, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 37),
  -- Grumpig - Facade - TM42
  (326, 32600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 38),
  -- Grumpig - Secret Power - TM43
  (326, 32600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 39),
  -- Grumpig - Rest - TM44
  (326, 32600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 40),
  -- Grumpig - Attract - TM45
  (326, 32600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 41),
  -- Grumpig - Thief - TM46
  (326, 32600, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 42),
  -- Grumpig - Skill Swap - TM48
  (326, 32600, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 43),
  -- Grumpig - Snatch - TM49
  (326, 32600, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 44),
  -- Grumpig - Focus Blast - TM52
  (326, 32600, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 45),
  -- Grumpig - Energy Ball - TM53
  (326, 32600, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 46),
  -- Grumpig - Fling - TM56
  (326, 32600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 47),
  -- Grumpig - Charge Beam - TM57
  (326, 32600, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 48),
  -- Grumpig - Endure - TM58
  (326, 32600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 49),
  -- Grumpig - Drain Punch - TM60
  (326, 32600, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 50),
  -- Grumpig - Payback - TM66
  (326, 32600, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 51),
  -- Grumpig - Recycle - TM67
  (326, 32600, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 52),
  -- Grumpig - Giga Impact - TM68
  (326, 32600, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 53),
  -- Grumpig - Flash - TM70
  (326, 32600, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 54),
  -- Grumpig - Thunder Wave - TM73
  (326, 32600, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 55),
  -- Grumpig - Psych Up - TM77
  (326, 32600, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 56),
  -- Grumpig - Captivate - TM78
  (326, 32600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 57),
  -- Grumpig - Sleep Talk - TM82
  (326, 32600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 58),
  -- Grumpig - Natural Gift - TM83
  (326, 32600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 59),
  -- Grumpig - Dream Eater - TM85
  (326, 32600, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 60),
  -- Grumpig - Grass Knot - TM86
  (326, 32600, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 61),
  -- Grumpig - Swagger - TM87
  (326, 32600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 62),
  -- Grumpig - Substitute - TM90
  (326, 32600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 63),
  -- Grumpig - Trick Room - TM92
  (326, 32600, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 64),
  -- Grumpig - Fire Punch - Tutor
  (326, 32600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Grumpig - Ice Punch - Tutor
  (326, 32600, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Grumpig - Thunder Punch - Tutor
  (326, 32600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Grumpig - Headbutt - Tutor
  (326, 32600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Grumpig - Swift - Tutor
  (326, 32600, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Grumpig - Snore - Tutor
  (326, 32600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Grumpig - Mud-Slap - Tutor
  (326, 32600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Grumpig - Icy Wind - Tutor
  (326, 32600, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Grumpig - Heal Bell - Tutor
  (326, 32600, 215, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Grumpig - Trick - Tutor
  (326, 32600, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Grumpig - Role Play - Tutor
  (326, 32600, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Grumpig - Magic Coat - Tutor
  (326, 32600, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Grumpig - Signal Beam - Tutor
  (326, 32600, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Grumpig - Bounce - Tutor
  (326, 32600, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Grumpig - Zen Headbutt - Tutor
  (326, 32600, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Spinda - Tackle - Level 1
  (327, 32700, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinda - Uproar - Level 5
  (327, 32700, 253, 10, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Spinda - Copycat - Level 10
  (327, 32700, 383, 10, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spinda - Feint Attack - Level 14
  (327, 32700, 185, 10, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spinda - Psybeam - Level 19
  (327, 32700, 60, 10, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spinda - Hypnosis - Level 23
  (327, 32700, 95, 10, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinda - Dizzy Punch - Level 28
  (327, 32700, 146, 10, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Spinda - Sucker Punch - Level 32
  (327, 32700, 389, 10, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Spinda - Teeter Dance - Level 37
  (327, 32700, 298, 10, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Spinda - Psych Up - Level 41
  (327, 32700, 244, 10, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Spinda - Double-Edge - Level 46
  (327, 32700, 38, 10, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Spinda - Flail - Level 50
  (327, 32700, 175, 10, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spinda - Thrash - Level 55
  (327, 32700, 37, 10, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spinda - Focus Punch - TM01
  (327, 32700, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 14),
  -- Spinda - Water Pulse - TM03
  (327, 32700, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Spinda - Calm Mind - TM04
  (327, 32700, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 16),
  -- Spinda - Toxic - TM06
  (327, 32700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Spinda - Hidden Power - TM10
  (327, 32700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Spinda - Sunny Day - TM11
  (327, 32700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Spinda - Protect - TM17
  (327, 32700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Spinda - Rain Dance - TM18
  (327, 32700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Spinda - Safeguard - TM20
  (327, 32700, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 22),
  -- Spinda - Frustration - TM21
  (327, 32700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Spinda - Return - TM27
  (327, 32700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Spinda - Dig - TM28
  (327, 32700, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 25),
  -- Spinda - Psychic - TM29
  (327, 32700, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 26),
  -- Spinda - Shadow Ball - TM30
  (327, 32700, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Spinda - Brick Break - TM31
  (327, 32700, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 28),
  -- Spinda - Double Team - TM32
  (327, 32700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Spinda - Shock Wave - TM34
  (327, 32700, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 30),
  -- Spinda - Rock Tomb - TM39
  (327, 32700, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Spinda - Facade - TM42
  (327, 32700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Spinda - Secret Power - TM43
  (327, 32700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Spinda - Rest - TM44
  (327, 32700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Spinda - Attract - TM45
  (327, 32700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Spinda - Thief - TM46
  (327, 32700, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Spinda - Skill Swap - TM48
  (327, 32700, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 37),
  -- Spinda - Snatch - TM49
  (327, 32700, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 38),
  -- Spinda - Fling - TM56
  (327, 32700, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 39),
  -- Spinda - Endure - TM58
  (327, 32700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Spinda - Drain Punch - TM60
  (327, 32700, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 41),
  -- Spinda - Recycle - TM67
  (327, 32700, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 42),
  -- Spinda - Flash - TM70
  (327, 32700, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 43),
  -- Spinda - Psych Up - TM77
  (327, 32700, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 44),
  -- Spinda - Captivate - TM78
  (327, 32700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 45),
  -- Spinda - Rock Slide - TM80
  (327, 32700, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 46),
  -- Spinda - Sleep Talk - TM82
  (327, 32700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 47),
  -- Spinda - Natural Gift - TM83
  (327, 32700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 48),
  -- Spinda - Dream Eater - TM85
  (327, 32700, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 49),
  -- Spinda - Swagger - TM87
  (327, 32700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 50),
  -- Spinda - Substitute - TM90
  (327, 32700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 51),
  -- Spinda - Trick Room - TM92
  (327, 32700, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 52),
  -- Spinda - Strength - HM04
  (327, 32700, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 53),
  -- Spinda - Rock Smash - HM06
  (327, 32700, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 54),
  -- Spinda - Disable - Egg
  (327, 32700, 50, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinda - Rock Slide - Egg
  (327, 32700, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spinda - Baton Pass - Egg
  (327, 32700, 226, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spinda - Encore - Egg
  (327, 32700, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spinda - Fake Out - Egg
  (327, 32700, 252, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spinda - Smelling Salts - Egg
  (327, 32700, 265, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Spinda - Trick - Egg
  (327, 32700, 271, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Spinda - Role Play - Egg
  (327, 32700, 272, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Spinda - Wish - Egg
  (327, 32700, 273, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Spinda - Assist - Egg
  (327, 32700, 274, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Spinda - Psycho Cut - Egg
  (327, 32700, 427, 10, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Spinda - Fire Punch - Tutor
  (327, 32700, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Spinda - Ice Punch - Tutor
  (327, 32700, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Spinda - Thunder Punch - Tutor
  (327, 32700, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Spinda - Headbutt - Tutor
  (327, 32700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Spinda - Low Kick - Tutor
  (327, 32700, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Spinda - Swift - Tutor
  (327, 32700, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Spinda - Snore - Tutor
  (327, 32700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Spinda - Mud-Slap - Tutor
  (327, 32700, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Spinda - Icy Wind - Tutor
  (327, 32700, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Spinda - Rollout - Tutor
  (327, 32700, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Spinda - Uproar - Tutor
  (327, 32700, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Spinda - Helping Hand - Tutor
  (327, 32700, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Spinda - Role Play - Tutor
  (327, 32700, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Spinda - Last Resort - Tutor
  (327, 32700, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Spinda - Sucker Punch - Tutor
  (327, 32700, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Spinda - Zen Headbutt - Tutor
  (327, 32700, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Trapinch - Bite - Level 1
  (328, 32800, 44, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Sand Attack - Level 9
  (328, 32800, 28, 10, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Trapinch - Feint Attack - Level 17
  (328, 32800, 185, 10, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Trapinch - Sand Tomb - Level 25
  (328, 32800, 328, 10, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Trapinch - Crunch - Level 33
  (328, 32800, 242, 10, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Trapinch - Dig - Level 41
  (328, 32800, 91, 10, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Trapinch - Sandstorm - Level 49
  (328, 32800, 201, 10, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Trapinch - Hyper Beam - Level 57
  (328, 32800, 63, 10, NULL, 1, 57, NULL, NULL, NULL, 8),
  -- Trapinch - Earth Power - Level 65
  (328, 32800, 414, 10, NULL, 1, 65, NULL, NULL, NULL, 9),
  -- Trapinch - Earthquake - Level 73
  (328, 32800, 89, 10, NULL, 1, 73, NULL, NULL, NULL, 10),
  -- Trapinch - Feint - Level 81
  (328, 32800, 364, 10, NULL, 1, 81, NULL, NULL, NULL, 11),
  -- Trapinch - Fissure - Level 89
  (328, 32800, 90, 10, NULL, 1, 89, NULL, NULL, NULL, 12),
  -- Trapinch - Toxic - TM06
  (328, 32800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 13),
  -- Trapinch - Hidden Power - TM10
  (328, 32800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 14),
  -- Trapinch - Sunny Day - TM11
  (328, 32800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 15),
  -- Trapinch - Hyper Beam - TM15
  (328, 32800, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 16),
  -- Trapinch - Protect - TM17
  (328, 32800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 17),
  -- Trapinch - Giga Drain - TM19
  (328, 32800, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 18),
  -- Trapinch - Frustration - TM21
  (328, 32800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 19),
  -- Trapinch - Solar Beam - TM22
  (328, 32800, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 20),
  -- Trapinch - Earthquake - TM26
  (328, 32800, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 21),
  -- Trapinch - Return - TM27
  (328, 32800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 22),
  -- Trapinch - Dig - TM28
  (328, 32800, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 23),
  -- Trapinch - Double Team - TM32
  (328, 32800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Trapinch - Sandstorm - TM37
  (328, 32800, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 25),
  -- Trapinch - Rock Tomb - TM39
  (328, 32800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 26),
  -- Trapinch - Facade - TM42
  (328, 32800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Trapinch - Secret Power - TM43
  (328, 32800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Trapinch - Rest - TM44
  (328, 32800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Trapinch - Attract - TM45
  (328, 32800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Trapinch - Endure - TM58
  (328, 32800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 31),
  -- Trapinch - Captivate - TM78
  (328, 32800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 32),
  -- Trapinch - Rock Slide - TM80
  (328, 32800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 33),
  -- Trapinch - Sleep Talk - TM82
  (328, 32800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 34),
  -- Trapinch - Natural Gift - TM83
  (328, 32800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 35),
  -- Trapinch - Swagger - TM87
  (328, 32800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 36),
  -- Trapinch - Substitute - TM90
  (328, 32800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 37),
  -- Trapinch - Strength - HM04
  (328, 32800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 38),
  -- Trapinch - Rock Smash - HM06
  (328, 32800, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 39),
  -- Trapinch - Gust - Egg
  (328, 32800, 16, 10, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Trapinch - Quick Attack - Egg
  (328, 32800, 98, 10, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Trapinch - Focus Energy - Egg
  (328, 32800, 116, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trapinch - Flail - Egg
  (328, 32800, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trapinch - Fury Cutter - Egg
  (328, 32800, 210, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trapinch - Mud Shot - Egg
  (328, 32800, 341, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trapinch - Headbutt - Tutor
  (328, 32800, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Trapinch - Snore - Tutor
  (328, 32800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Trapinch - Mud-Slap - Tutor
  (328, 32800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Trapinch - Fury Cutter - Tutor
  (328, 32800, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Trapinch - Earth Power - Tutor
  (328, 32800, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Trapinch - Bug Bite - Tutor
  (328, 32800, 450, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Sonic Boom - Level 1
  (329, 32900, 49, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Feint Attack - Level 1
  (329, 32900, 185, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Sand Tomb - Level 1
  (329, 32900, 328, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vibrava - Sand Attack - Level 9
  (329, 32900, 28, 10, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Vibrava - Feint Attack - Level 17
  (329, 32900, 185, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vibrava - Sand Tomb - Level 25
  (329, 32900, 328, 10, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Vibrava - Supersonic - Level 33
  (329, 32900, 48, 10, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Vibrava - Dragon Breath - Level 35
  (329, 32900, 225, 10, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Vibrava - Screech - Level 41
  (329, 32900, 103, 10, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Vibrava - Sandstorm - Level 49
  (329, 32900, 201, 10, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Vibrava - Hyper Beam - Level 57
  (329, 32900, 63, 10, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Vibrava - Toxic - TM06
  (329, 32900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 13),
  -- Vibrava - Hidden Power - TM10
  (329, 32900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 14),
  -- Vibrava - Sunny Day - TM11
  (329, 32900, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 15),
  -- Vibrava - Hyper Beam - TM15
  (329, 32900, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 16),
  -- Vibrava - Protect - TM17
  (329, 32900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 17),
  -- Vibrava - Giga Drain - TM19
  (329, 32900, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 18),
  -- Vibrava - Frustration - TM21
  (329, 32900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 19),
  -- Vibrava - Solar Beam - TM22
  (329, 32900, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 20),
  -- Vibrava - Earthquake - TM26
  (329, 32900, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 21),
  -- Vibrava - Return - TM27
  (329, 32900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 22),
  -- Vibrava - Dig - TM28
  (329, 32900, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 23),
  -- Vibrava - Double Team - TM32
  (329, 32900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Vibrava - Sandstorm - TM37
  (329, 32900, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 25),
  -- Vibrava - Rock Tomb - TM39
  (329, 32900, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 26),
  -- Vibrava - Facade - TM42
  (329, 32900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Vibrava - Secret Power - TM43
  (329, 32900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Vibrava - Rest - TM44
  (329, 32900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Vibrava - Attract - TM45
  (329, 32900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Vibrava - Steel Wing - TM47
  (329, 32900, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 31),
  -- Vibrava - Roost - TM51
  (329, 32900, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 32),
  -- Vibrava - Endure - TM58
  (329, 32900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Vibrava - Dragon Pulse - TM59
  (329, 32900, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 34),
  -- Vibrava - Silver Wind - TM62
  (329, 32900, 318, 10, NULL, 2, NULL, NULL, 10002062, NULL, 35),
  -- Vibrava - Captivate - TM78
  (329, 32900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 36),
  -- Vibrava - Rock Slide - TM80
  (329, 32900, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 37),
  -- Vibrava - Sleep Talk - TM82
  (329, 32900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Vibrava - Natural Gift - TM83
  (329, 32900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Vibrava - Swagger - TM87
  (329, 32900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Vibrava - U-turn - TM89
  (329, 32900, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 41),
  -- Vibrava - Substitute - TM90
  (329, 32900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 42),
  -- Vibrava - Fly - HM02
  (329, 32900, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 43),
  -- Vibrava - Strength - HM04
  (329, 32900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 44),
  -- Vibrava - Rock Smash - HM06
  (329, 32900, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 45),
  -- Vibrava - Headbutt - Tutor
  (329, 32900, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Vibrava - Swift - Tutor
  (329, 32900, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Vibrava - Snore - Tutor
  (329, 32900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Vibrava - Mud-Slap - Tutor
  (329, 32900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Vibrava - Outrage - Tutor
  (329, 32900, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Vibrava - Fury Cutter - Tutor
  (329, 32900, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Vibrava - Twister - Tutor
  (329, 32900, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Vibrava - Heat Wave - Tutor
  (329, 32900, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Vibrava - Air Cutter - Tutor
  (329, 32900, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Vibrava - Tailwind - Tutor
  (329, 32900, 366, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Vibrava - Earth Power - Tutor
  (329, 32900, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Vibrava - Draco Meteor - Tutor
  (329, 32900, 434, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Vibrava - Bug Bite - Tutor
  (329, 32900, 450, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Vibrava - Ominous Wind - Tutor
  (329, 32900, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Sonic Boom - Level 1
  (330, 33000, 49, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Feint Attack - Level 1
  (330, 33000, 185, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Sand Tomb - Level 1
  (330, 33000, 328, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flygon - Sand Attack - Level 9
  (330, 33000, 28, 10, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Flygon - Feint Attack - Level 17
  (330, 33000, 185, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Flygon - Sand Tomb - Level 25
  (330, 33000, 328, 10, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Flygon - Supersonic - Level 33
  (330, 33000, 48, 10, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Flygon - Dragon Breath - Level 35
  (330, 33000, 225, 10, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Flygon - Screech - Level 41
  (330, 33000, 103, 10, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Flygon - Dragon Claw - Level 45
  (330, 33000, 337, 10, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Flygon - Sandstorm - Level 49
  (330, 33000, 201, 10, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Flygon - Hyper Beam - Level 57
  (330, 33000, 63, 10, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Flygon - Dragon Claw - TM02
  (330, 33000, 337, 10, NULL, 2, NULL, NULL, 10002002, NULL, 14),
  -- Flygon - Toxic - TM06
  (330, 33000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Flygon - Hidden Power - TM10
  (330, 33000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Flygon - Sunny Day - TM11
  (330, 33000, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Flygon - Hyper Beam - TM15
  (330, 33000, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 18),
  -- Flygon - Protect - TM17
  (330, 33000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 19),
  -- Flygon - Giga Drain - TM19
  (330, 33000, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 20),
  -- Flygon - Frustration - TM21
  (330, 33000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Flygon - Solar Beam - TM22
  (330, 33000, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 22),
  -- Flygon - Iron Tail - TM23
  (330, 33000, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 23),
  -- Flygon - Earthquake - TM26
  (330, 33000, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Flygon - Return - TM27
  (330, 33000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Flygon - Dig - TM28
  (330, 33000, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Flygon - Double Team - TM32
  (330, 33000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Flygon - Flamethrower - TM35
  (330, 33000, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 28),
  -- Flygon - Sandstorm - TM37
  (330, 33000, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 29),
  -- Flygon - Fire Blast - TM38
  (330, 33000, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 30),
  -- Flygon - Rock Tomb - TM39
  (330, 33000, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Flygon - Aerial Ace - TM40
  (330, 33000, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 32),
  -- Flygon - Facade - TM42
  (330, 33000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Flygon - Secret Power - TM43
  (330, 33000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Flygon - Rest - TM44
  (330, 33000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Flygon - Attract - TM45
  (330, 33000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 36),
  -- Flygon - Steel Wing - TM47
  (330, 33000, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 37),
  -- Flygon - Roost - TM51
  (330, 33000, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 38),
  -- Flygon - Endure - TM58
  (330, 33000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 39),
  -- Flygon - Dragon Pulse - TM59
  (330, 33000, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 40),
  -- Flygon - Silver Wind - TM62
  (330, 33000, 318, 10, NULL, 2, NULL, NULL, 10002062, NULL, 41),
  -- Flygon - Giga Impact - TM68
  (330, 33000, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 42),
  -- Flygon - Stone Edge - TM71
  (330, 33000, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 43),
  -- Flygon - Captivate - TM78
  (330, 33000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Flygon - Rock Slide - TM80
  (330, 33000, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 45),
  -- Flygon - Sleep Talk - TM82
  (330, 33000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Flygon - Natural Gift - TM83
  (330, 33000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Flygon - Swagger - TM87
  (330, 33000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Flygon - U-turn - TM89
  (330, 33000, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 49),
  -- Flygon - Substitute - TM90
  (330, 33000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 50),
  -- Flygon - Fly - HM02
  (330, 33000, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 51),
  -- Flygon - Strength - HM04
  (330, 33000, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 52),
  -- Flygon - Rock Smash - HM06
  (330, 33000, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 53),
  -- Flygon - Fire Punch - Tutor
  (330, 33000, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Flygon - Thunder Punch - Tutor
  (330, 33000, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Flygon - Headbutt - Tutor
  (330, 33000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Flygon - Swift - Tutor
  (330, 33000, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Flygon - Snore - Tutor
  (330, 33000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Flygon - Mud-Slap - Tutor
  (330, 33000, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Flygon - Outrage - Tutor
  (330, 33000, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Flygon - Fury Cutter - Tutor
  (330, 33000, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Flygon - Twister - Tutor
  (330, 33000, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Flygon - Heat Wave - Tutor
  (330, 33000, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Flygon - Air Cutter - Tutor
  (330, 33000, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Flygon - Tailwind - Tutor
  (330, 33000, 366, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Flygon - Earth Power - Tutor
  (330, 33000, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Flygon - Draco Meteor - Tutor
  (330, 33000, 434, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Flygon - Bug Bite - Tutor
  (330, 33000, 450, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Flygon - Ominous Wind - Tutor
  (330, 33000, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Cacnea - Poison Sting - Level 1
  (331, 33100, 40, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Level 1
  (331, 33100, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 5
  (331, 33100, 71, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 9
  (331, 33100, 74, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 13
  (331, 33100, 73, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 17
  (331, 33100, 28, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cacnea - Pin Missile - Level 21
  (331, 33100, 42, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cacnea - Ingrain - Level 25
  (331, 33100, 275, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cacnea - Feint Attack - Level 29
  (331, 33100, 185, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cacnea - Spikes - Level 33
  (331, 33100, 191, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Cacnea - Sucker Punch - Level 37
  (331, 33100, 389, 10, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Cacnea - Payback - Level 41
  (331, 33100, 371, 10, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Cacnea - Needle Arm - Level 45
  (331, 33100, 302, 10, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Cacnea - Cotton Spore - Level 49
  (331, 33100, 178, 10, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cacnea - Sandstorm - Level 53
  (331, 33100, 201, 10, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Cacnea - Destiny Bond - Level 57
  (331, 33100, 194, 10, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Cacnea - Focus Punch - TM01
  (331, 33100, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 17),
  -- Cacnea - Toxic - TM06
  (331, 33100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Cacnea - Bullet Seed - TM09
  (331, 33100, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 19),
  -- Cacnea - Hidden Power - TM10
  (331, 33100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Cacnea - Sunny Day - TM11
  (331, 33100, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 21),
  -- Cacnea - Protect - TM17
  (331, 33100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Cacnea - Giga Drain - TM19
  (331, 33100, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 23),
  -- Cacnea - Frustration - TM21
  (331, 33100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Cacnea - Solar Beam - TM22
  (331, 33100, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 25),
  -- Cacnea - Return - TM27
  (331, 33100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Cacnea - Brick Break - TM31
  (331, 33100, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 27),
  -- Cacnea - Double Team - TM32
  (331, 33100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Cacnea - Sandstorm - TM37
  (331, 33100, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 29),
  -- Cacnea - Facade - TM42
  (331, 33100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Cacnea - Secret Power - TM43
  (331, 33100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Cacnea - Rest - TM44
  (331, 33100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Cacnea - Attract - TM45
  (331, 33100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Cacnea - Energy Ball - TM53
  (331, 33100, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 34),
  -- Cacnea - Fling - TM56
  (331, 33100, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 35),
  -- Cacnea - Endure - TM58
  (331, 33100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Cacnea - Drain Punch - TM60
  (331, 33100, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 37),
  -- Cacnea - Payback - TM66
  (331, 33100, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 38),
  -- Cacnea - Flash - TM70
  (331, 33100, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 39),
  -- Cacnea - Swords Dance - TM75
  (331, 33100, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 40),
  -- Cacnea - Captivate - TM78
  (331, 33100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 41),
  -- Cacnea - Dark Pulse - TM79
  (331, 33100, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 42),
  -- Cacnea - Sleep Talk - TM82
  (331, 33100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 43),
  -- Cacnea - Natural Gift - TM83
  (331, 33100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 44),
  -- Cacnea - Poison Jab - TM84
  (331, 33100, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 45),
  -- Cacnea - Grass Knot - TM86
  (331, 33100, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 46),
  -- Cacnea - Swagger - TM87
  (331, 33100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 47),
  -- Cacnea - Substitute - TM90
  (331, 33100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 48),
  -- Cacnea - Cut - HM01
  (331, 33100, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 49),
  -- Cacnea - Acid - Egg
  (331, 33100, 51, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cacnea - Low Kick - Egg
  (331, 33100, 67, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cacnea - Counter - Egg
  (331, 33100, 68, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cacnea - Dynamic Punch - Egg
  (331, 33100, 223, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cacnea - Smelling Salts - Egg
  (331, 33100, 265, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cacnea - Teeter Dance - Egg
  (331, 33100, 298, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cacnea - Grass Whistle - Egg
  (331, 33100, 320, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cacnea - Magical Leaf - Egg
  (331, 33100, 345, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cacnea - Seed Bomb - Egg
  (331, 33100, 402, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Cacnea - Nasty Plot - Egg
  (331, 33100, 417, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cacnea - Thunder Punch - Tutor
  (331, 33100, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Cacnea - Headbutt - Tutor
  (331, 33100, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Cacnea - Low Kick - Tutor
  (331, 33100, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Cacnea - Snore - Tutor
  (331, 33100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Cacnea - Spite - Tutor
  (331, 33100, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Cacnea - Mud-Slap - Tutor
  (331, 33100, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Cacnea - Fury Cutter - Tutor
  (331, 33100, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Cacnea - Synthesis - Tutor
  (331, 33100, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Cacnea - Role Play - Tutor
  (331, 33100, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Cacnea - Worry Seed - Tutor
  (331, 33100, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Cacnea - Sucker Punch - Tutor
  (331, 33100, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Cacnea - Seed Bomb - Tutor
  (331, 33100, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Cacturne - Poison Sting - Level 1
  (332, 33200, 40, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacturne - Leer - Level 1
  (332, 33200, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacturne - Absorb - Level 1
  (332, 33200, 71, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cacturne - Growth - Level 1
  (332, 33200, 74, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cacturne - Revenge - Level 1
  (332, 33200, 279, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cacturne - Absorb - Level 5
  (332, 33200, 71, 10, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Cacturne - Growth - Level 9
  (332, 33200, 74, 10, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Cacturne - Leech Seed - Level 13
  (332, 33200, 73, 10, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cacturne - Sand Attack - Level 17
  (332, 33200, 28, 10, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Cacturne - Pin Missile - Level 21
  (332, 33200, 42, 10, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Cacturne - Ingrain - Level 25
  (332, 33200, 275, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Cacturne - Feint Attack - Level 29
  (332, 33200, 185, 10, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Cacturne - Spikes - Level 35
  (332, 33200, 191, 10, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Cacturne - Sucker Punch - Level 41
  (332, 33200, 389, 10, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Cacturne - Payback - Level 47
  (332, 33200, 371, 10, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Cacturne - Needle Arm - Level 53
  (332, 33200, 302, 10, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Cacturne - Cotton Spore - Level 59
  (332, 33200, 178, 10, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Cacturne - Sandstorm - Level 65
  (332, 33200, 201, 10, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Cacturne - Destiny Bond - Level 71
  (332, 33200, 194, 10, NULL, 1, 71, NULL, NULL, NULL, 19),
  -- Cacturne - Focus Punch - TM01
  (332, 33200, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 20),
  -- Cacturne - Toxic - TM06
  (332, 33200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 21),
  -- Cacturne - Bullet Seed - TM09
  (332, 33200, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 22),
  -- Cacturne - Hidden Power - TM10
  (332, 33200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 23),
  -- Cacturne - Sunny Day - TM11
  (332, 33200, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 24),
  -- Cacturne - Hyper Beam - TM15
  (332, 33200, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Cacturne - Protect - TM17
  (332, 33200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Cacturne - Giga Drain - TM19
  (332, 33200, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 27),
  -- Cacturne - Frustration - TM21
  (332, 33200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Cacturne - Solar Beam - TM22
  (332, 33200, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 29),
  -- Cacturne - Return - TM27
  (332, 33200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 30),
  -- Cacturne - Brick Break - TM31
  (332, 33200, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 31),
  -- Cacturne - Double Team - TM32
  (332, 33200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 32),
  -- Cacturne - Sandstorm - TM37
  (332, 33200, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 33),
  -- Cacturne - Facade - TM42
  (332, 33200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Cacturne - Secret Power - TM43
  (332, 33200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Cacturne - Rest - TM44
  (332, 33200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Cacturne - Attract - TM45
  (332, 33200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Cacturne - Focus Blast - TM52
  (332, 33200, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 38),
  -- Cacturne - Energy Ball - TM53
  (332, 33200, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 39),
  -- Cacturne - Fling - TM56
  (332, 33200, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 40),
  -- Cacturne - Endure - TM58
  (332, 33200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 41),
  -- Cacturne - Drain Punch - TM60
  (332, 33200, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 42),
  -- Cacturne - Embargo - TM63
  (332, 33200, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 43),
  -- Cacturne - Payback - TM66
  (332, 33200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 44),
  -- Cacturne - Giga Impact - TM68
  (332, 33200, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 45),
  -- Cacturne - Flash - TM70
  (332, 33200, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 46),
  -- Cacturne - Swords Dance - TM75
  (332, 33200, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 47),
  -- Cacturne - Captivate - TM78
  (332, 33200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 48),
  -- Cacturne - Dark Pulse - TM79
  (332, 33200, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 49),
  -- Cacturne - Sleep Talk - TM82
  (332, 33200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 50),
  -- Cacturne - Natural Gift - TM83
  (332, 33200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 51),
  -- Cacturne - Poison Jab - TM84
  (332, 33200, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 52),
  -- Cacturne - Grass Knot - TM86
  (332, 33200, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 53),
  -- Cacturne - Swagger - TM87
  (332, 33200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 54),
  -- Cacturne - Substitute - TM90
  (332, 33200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 55),
  -- Cacturne - Cut - HM01
  (332, 33200, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 56),
  -- Cacturne - Strength - HM04
  (332, 33200, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 57),
  -- Cacturne - Thunder Punch - Tutor
  (332, 33200, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Cacturne - Headbutt - Tutor
  (332, 33200, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Cacturne - Low Kick - Tutor
  (332, 33200, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Cacturne - Snore - Tutor
  (332, 33200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Cacturne - Spite - Tutor
  (332, 33200, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Cacturne - Mud-Slap - Tutor
  (332, 33200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Cacturne - Fury Cutter - Tutor
  (332, 33200, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Cacturne - Synthesis - Tutor
  (332, 33200, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Cacturne - Role Play - Tutor
  (332, 33200, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Cacturne - Superpower - Tutor
  (332, 33200, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Cacturne - Worry Seed - Tutor
  (332, 33200, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Cacturne - Sucker Punch - Tutor
  (332, 33200, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Cacturne - Seed Bomb - Tutor
  (332, 33200, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Astonish - Level 5
  (333, 33300, 310, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Swablu - Sing - Level 9
  (333, 33300, 47, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 13
  (333, 33300, 31, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Swablu - Safeguard - Level 18
  (333, 33300, 219, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Swablu - Mist - Level 23
  (333, 33300, 54, 10, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Swablu - Take Down - Level 28
  (333, 33300, 36, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Swablu - Natural Gift - Level 32
  (333, 33300, 363, 10, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Swablu - Mirror Move - Level 36
  (333, 33300, 119, 10, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Swablu - Refresh - Level 40
  (333, 33300, 287, 10, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Swablu - Dragon Pulse - Level 45
  (333, 33300, 406, 10, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Swablu - Perish Song - Level 50
  (333, 33300, 195, 10, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Swablu - Toxic - TM06
  (333, 33300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 14),
  -- Swablu - Hidden Power - TM10
  (333, 33300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 15),
  -- Swablu - Sunny Day - TM11
  (333, 33300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 16),
  -- Swablu - Ice Beam - TM13
  (333, 33300, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 17),
  -- Swablu - Protect - TM17
  (333, 33300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 18),
  -- Swablu - Rain Dance - TM18
  (333, 33300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 19),
  -- Swablu - Safeguard - TM20
  (333, 33300, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 20),
  -- Swablu - Frustration - TM21
  (333, 33300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Swablu - Solar Beam - TM22
  (333, 33300, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 22),
  -- Swablu - Return - TM27
  (333, 33300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Swablu - Double Team - TM32
  (333, 33300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Swablu - Aerial Ace - TM40
  (333, 33300, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 25),
  -- Swablu - Facade - TM42
  (333, 33300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 26),
  -- Swablu - Secret Power - TM43
  (333, 33300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 27),
  -- Swablu - Rest - TM44
  (333, 33300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 28),
  -- Swablu - Attract - TM45
  (333, 33300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 29),
  -- Swablu - Thief - TM46
  (333, 33300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 30),
  -- Swablu - Steel Wing - TM47
  (333, 33300, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 31),
  -- Swablu - Roost - TM51
  (333, 33300, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 32),
  -- Swablu - Endure - TM58
  (333, 33300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Swablu - Dragon Pulse - TM59
  (333, 33300, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 34),
  -- Swablu - Psych Up - TM77
  (333, 33300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 35),
  -- Swablu - Captivate - TM78
  (333, 33300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 36),
  -- Swablu - Sleep Talk - TM82
  (333, 33300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 37),
  -- Swablu - Natural Gift - TM83
  (333, 33300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 38),
  -- Swablu - Dream Eater - TM85
  (333, 33300, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 39),
  -- Swablu - Swagger - TM87
  (333, 33300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Swablu - Pluck - TM88
  (333, 33300, 365, 10, NULL, 2, NULL, NULL, 10002088, NULL, 41),
  -- Swablu - Substitute - TM90
  (333, 33300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 42),
  -- Swablu - Fly - HM02
  (333, 33300, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 43),
  -- Swablu - Agility - Egg
  (333, 33300, 97, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swablu - Rage - Egg
  (333, 33300, 99, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swablu - Haze - Egg
  (333, 33300, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Pursuit - Egg
  (333, 33300, 228, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swablu - Feather Dance - Egg
  (333, 33300, 297, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swablu - Power Swap - Egg
  (333, 33300, 384, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swablu - Dragon Rush - Egg
  (333, 33300, 407, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swablu - Swift - Tutor
  (333, 33300, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Swablu - Snore - Tutor
  (333, 33300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Swablu - Mud-Slap - Tutor
  (333, 33300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Swablu - Outrage - Tutor
  (333, 33300, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Swablu - Heal Bell - Tutor
  (333, 33300, 215, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Swablu - Twister - Tutor
  (333, 33300, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Swablu - Uproar - Tutor
  (333, 33300, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Swablu - Heat Wave - Tutor
  (333, 33300, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Swablu - Air Cutter - Tutor
  (333, 33300, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Swablu - Tailwind - Tutor
  (333, 33300, 366, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Swablu - Ominous Wind - Tutor
  (333, 33300, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Sing - Level 1
  (334, 33400, 47, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Astonish - Level 1
  (334, 33400, 310, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Pluck - Level 1
  (334, 33400, 365, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Altaria - Astonish - Level 5
  (334, 33400, 310, 10, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Altaria - Sing - Level 9
  (334, 33400, 47, 10, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Altaria - Fury Attack - Level 13
  (334, 33400, 31, 10, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Altaria - Safeguard - Level 18
  (334, 33400, 219, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Altaria - Mist - Level 23
  (334, 33400, 54, 10, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Altaria - Take Down - Level 28
  (334, 33400, 36, 10, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Altaria - Natural Gift - Level 32
  (334, 33400, 363, 10, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Altaria - Dragon Breath - Level 35
  (334, 33400, 225, 10, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Altaria - Dragon Dance - Level 39
  (334, 33400, 349, 10, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Altaria - Refresh - Level 46
  (334, 33400, 287, 10, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Altaria - Dragon Pulse - Level 54
  (334, 33400, 406, 10, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Altaria - Perish Song - Level 62
  (334, 33400, 195, 10, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Altaria - Sky Attack - Level 70
  (334, 33400, 143, 10, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Altaria - Dragon Claw - TM02
  (334, 33400, 337, 10, NULL, 2, NULL, NULL, 10002002, NULL, 19),
  -- Altaria - Roar - TM05
  (334, 33400, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 20),
  -- Altaria - Toxic - TM06
  (334, 33400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 21),
  -- Altaria - Hidden Power - TM10
  (334, 33400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 22),
  -- Altaria - Sunny Day - TM11
  (334, 33400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 23),
  -- Altaria - Ice Beam - TM13
  (334, 33400, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 24),
  -- Altaria - Hyper Beam - TM15
  (334, 33400, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Altaria - Protect - TM17
  (334, 33400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Altaria - Rain Dance - TM18
  (334, 33400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Altaria - Safeguard - TM20
  (334, 33400, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 28),
  -- Altaria - Frustration - TM21
  (334, 33400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 29),
  -- Altaria - Solar Beam - TM22
  (334, 33400, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 30),
  -- Altaria - Iron Tail - TM23
  (334, 33400, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 31),
  -- Altaria - Earthquake - TM26
  (334, 33400, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 32),
  -- Altaria - Return - TM27
  (334, 33400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 33),
  -- Altaria - Double Team - TM32
  (334, 33400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Altaria - Flamethrower - TM35
  (334, 33400, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 35),
  -- Altaria - Fire Blast - TM38
  (334, 33400, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 36),
  -- Altaria - Aerial Ace - TM40
  (334, 33400, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 37),
  -- Altaria - Facade - TM42
  (334, 33400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 38),
  -- Altaria - Secret Power - TM43
  (334, 33400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 39),
  -- Altaria - Rest - TM44
  (334, 33400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 40),
  -- Altaria - Attract - TM45
  (334, 33400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 41),
  -- Altaria - Thief - TM46
  (334, 33400, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 42),
  -- Altaria - Steel Wing - TM47
  (334, 33400, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 43),
  -- Altaria - Roost - TM51
  (334, 33400, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 44),
  -- Altaria - Endure - TM58
  (334, 33400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 45),
  -- Altaria - Dragon Pulse - TM59
  (334, 33400, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 46),
  -- Altaria - Giga Impact - TM68
  (334, 33400, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 47),
  -- Altaria - Psych Up - TM77
  (334, 33400, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 48),
  -- Altaria - Captivate - TM78
  (334, 33400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 49),
  -- Altaria - Sleep Talk - TM82
  (334, 33400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 50),
  -- Altaria - Natural Gift - TM83
  (334, 33400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 51),
  -- Altaria - Dream Eater - TM85
  (334, 33400, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 52),
  -- Altaria - Swagger - TM87
  (334, 33400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 53),
  -- Altaria - Pluck - TM88
  (334, 33400, 365, 10, NULL, 2, NULL, NULL, 10002088, NULL, 54),
  -- Altaria - Substitute - TM90
  (334, 33400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 55),
  -- Altaria - Fly - HM02
  (334, 33400, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 56),
  -- Altaria - Rock Smash - HM06
  (334, 33400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 57),
  -- Altaria - Swift - Tutor
  (334, 33400, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Altaria - Sky Attack - Tutor
  (334, 33400, 143, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Altaria - Snore - Tutor
  (334, 33400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Altaria - Mud-Slap - Tutor
  (334, 33400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Altaria - Outrage - Tutor
  (334, 33400, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Altaria - Heal Bell - Tutor
  (334, 33400, 215, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Altaria - Twister - Tutor
  (334, 33400, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Altaria - Uproar - Tutor
  (334, 33400, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Altaria - Heat Wave - Tutor
  (334, 33400, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Altaria - Air Cutter - Tutor
  (334, 33400, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Altaria - Tailwind - Tutor
  (334, 33400, 366, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Altaria - Draco Meteor - Tutor
  (334, 33400, 434, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Altaria - Ominous Wind - Tutor
  (334, 33400, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Zangoose - Scratch - Level 1
  (335, 33500, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 1
  (335, 33500, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Swords Dance - Level 9
  (335, 33500, 14, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zangoose - Fury Cutter - Level 14
  (335, 33500, 210, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Zangoose - Slash - Level 18
  (335, 33500, 163, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Zangoose - Pursuit - Level 22
  (335, 33500, 228, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Zangoose - Embargo - Level 27
  (335, 33500, 373, 10, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Zangoose - Crush Claw - Level 31
  (335, 33500, 306, 10, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Zangoose - Taunt - Level 35
  (335, 33500, 269, 10, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Zangoose - Detect - Level 40
  (335, 33500, 197, 10, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Zangoose - False Swipe - Level 44
  (335, 33500, 206, 10, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Zangoose - X-Scissor - Level 48
  (335, 33500, 404, 10, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Zangoose - Close Combat - Level 53
  (335, 33500, 370, 10, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Zangoose - Focus Punch - TM01
  (335, 33500, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Zangoose - Water Pulse - TM03
  (335, 33500, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 16),
  -- Zangoose - Roar - TM05
  (335, 33500, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 17),
  -- Zangoose - Toxic - TM06
  (335, 33500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Zangoose - Hidden Power - TM10
  (335, 33500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Zangoose - Sunny Day - TM11
  (335, 33500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Zangoose - Taunt - TM12
  (335, 33500, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 21),
  -- Zangoose - Ice Beam - TM13
  (335, 33500, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 22),
  -- Zangoose - Blizzard - TM14
  (335, 33500, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 23),
  -- Zangoose - Protect - TM17
  (335, 33500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 24),
  -- Zangoose - Rain Dance - TM18
  (335, 33500, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 25),
  -- Zangoose - Giga Drain - TM19
  (335, 33500, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 26),
  -- Zangoose - Frustration - TM21
  (335, 33500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 27),
  -- Zangoose - Solar Beam - TM22
  (335, 33500, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 28),
  -- Zangoose - Iron Tail - TM23
  (335, 33500, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 29),
  -- Zangoose - Thunderbolt - TM24
  (335, 33500, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 30),
  -- Zangoose - Thunder - TM25
  (335, 33500, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 31),
  -- Zangoose - Return - TM27
  (335, 33500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Zangoose - Dig - TM28
  (335, 33500, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 33),
  -- Zangoose - Shadow Ball - TM30
  (335, 33500, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 34),
  -- Zangoose - Brick Break - TM31
  (335, 33500, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 35),
  -- Zangoose - Double Team - TM32
  (335, 33500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 36),
  -- Zangoose - Shock Wave - TM34
  (335, 33500, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 37),
  -- Zangoose - Flamethrower - TM35
  (335, 33500, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 38),
  -- Zangoose - Fire Blast - TM38
  (335, 33500, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 39),
  -- Zangoose - Rock Tomb - TM39
  (335, 33500, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 40),
  -- Zangoose - Aerial Ace - TM40
  (335, 33500, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 41),
  -- Zangoose - Facade - TM42
  (335, 33500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 42),
  -- Zangoose - Secret Power - TM43
  (335, 33500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 43),
  -- Zangoose - Rest - TM44
  (335, 33500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 44),
  -- Zangoose - Attract - TM45
  (335, 33500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 45),
  -- Zangoose - Thief - TM46
  (335, 33500, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 46),
  -- Zangoose - Focus Blast - TM52
  (335, 33500, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 47),
  -- Zangoose - False Swipe - TM54
  (335, 33500, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 48),
  -- Zangoose - Fling - TM56
  (335, 33500, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 49),
  -- Zangoose - Endure - TM58
  (335, 33500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 50),
  -- Zangoose - Embargo - TM63
  (335, 33500, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 51),
  -- Zangoose - Shadow Claw - TM65
  (335, 33500, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 52),
  -- Zangoose - Payback - TM66
  (335, 33500, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 53),
  -- Zangoose - Swords Dance - TM75
  (335, 33500, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 54),
  -- Zangoose - Captivate - TM78
  (335, 33500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 55),
  -- Zangoose - Rock Slide - TM80
  (335, 33500, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 56),
  -- Zangoose - X-Scissor - TM81
  (335, 33500, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 57),
  -- Zangoose - Sleep Talk - TM82
  (335, 33500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 58),
  -- Zangoose - Natural Gift - TM83
  (335, 33500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 59),
  -- Zangoose - Poison Jab - TM84
  (335, 33500, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 60),
  -- Zangoose - Swagger - TM87
  (335, 33500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 61),
  -- Zangoose - Substitute - TM90
  (335, 33500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 62),
  -- Zangoose - Strength - HM04
  (335, 33500, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 63),
  -- Zangoose - Rock Smash - HM06
  (335, 33500, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 64),
  -- Zangoose - Rock Climb - HM08
  (335, 33500, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 65),
  -- Zangoose - Razor Wind - Egg
  (335, 33500, 13, 10, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zangoose - Double Kick - Egg
  (335, 33500, 24, 10, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zangoose - Roar - Egg
  (335, 33500, 46, 10, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zangoose - Disable - Egg
  (335, 33500, 50, 10, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zangoose - Counter - Egg
  (335, 33500, 68, 10, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Zangoose - Fury Swipes - Egg
  (335, 33500, 154, 10, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Zangoose - Curse - Egg
  (335, 33500, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Zangoose - Flail - Egg
  (335, 33500, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Zangoose - Metal Claw - Egg
  (335, 33500, 232, 10, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Zangoose - Night Slash - Egg
  (335, 33500, 400, 10, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Zangoose - Double Hit - Egg
  (335, 33500, 458, 10, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Zangoose - Fire Punch - Tutor
  (335, 33500, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Zangoose - Ice Punch - Tutor
  (335, 33500, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Zangoose - Thunder Punch - Tutor
  (335, 33500, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Zangoose - Headbutt - Tutor
  (335, 33500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Zangoose - Low Kick - Tutor
  (335, 33500, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Zangoose - Swift - Tutor
  (335, 33500, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 82),
  -- Zangoose - Snore - Tutor
  (335, 33500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 83),
  -- Zangoose - Mud-Slap - Tutor
  (335, 33500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 84),
  -- Zangoose - Icy Wind - Tutor
  (335, 33500, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 85),
  -- Zangoose - Rollout - Tutor
  (335, 33500, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 86),
  -- Zangoose - Fury Cutter - Tutor
  (335, 33500, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 87),
  -- Zangoose - Knock Off - Tutor
  (335, 33500, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 88),
  -- Zangoose - Endeavor - Tutor
  (335, 33500, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 89),
  -- Zangoose - Last Resort - Tutor
  (335, 33500, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 90),
  -- Seviper - Wrap - Level 1
  (336, 33600, 35, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Lick - Level 7
  (336, 33600, 122, 10, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 10
  (336, 33600, 44, 10, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Seviper - Poison Tail - Level 16
  (336, 33600, 342, 10, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Seviper - Screech - Level 19
  (336, 33600, 103, 10, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Seviper - Glare - Level 25
  (336, 33600, 137, 10, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Seviper - Crunch - Level 28
  (336, 33600, 242, 10, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Seviper - Poison Fang - Level 34
  (336, 33600, 305, 10, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Seviper - Swagger - Level 37
  (336, 33600, 207, 10, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seviper - Haze - Level 43
  (336, 33600, 114, 10, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Seviper - Night Slash - Level 46
  (336, 33600, 400, 10, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Seviper - Poison Jab - Level 52
  (336, 33600, 398, 10, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Seviper - Wring Out - Level 55
  (336, 33600, 378, 10, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Seviper - Toxic - TM06
  (336, 33600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 14),
  -- Seviper - Hidden Power - TM10
  (336, 33600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 15),
  -- Seviper - Sunny Day - TM11
  (336, 33600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 16),
  -- Seviper - Taunt - TM12
  (336, 33600, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 17),
  -- Seviper - Protect - TM17
  (336, 33600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 18),
  -- Seviper - Rain Dance - TM18
  (336, 33600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 19),
  -- Seviper - Giga Drain - TM19
  (336, 33600, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 20),
  -- Seviper - Frustration - TM21
  (336, 33600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Seviper - Iron Tail - TM23
  (336, 33600, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 22),
  -- Seviper - Earthquake - TM26
  (336, 33600, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 23),
  -- Seviper - Return - TM27
  (336, 33600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Seviper - Dig - TM28
  (336, 33600, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 25),
  -- Seviper - Double Team - TM32
  (336, 33600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Seviper - Flamethrower - TM35
  (336, 33600, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 27),
  -- Seviper - Sludge Bomb - TM36
  (336, 33600, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 28),
  -- Seviper - Facade - TM42
  (336, 33600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Seviper - Secret Power - TM43
  (336, 33600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Seviper - Rest - TM44
  (336, 33600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Seviper - Attract - TM45
  (336, 33600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Seviper - Thief - TM46
  (336, 33600, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 33),
  -- Seviper - Snatch - TM49
  (336, 33600, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 34),
  -- Seviper - Endure - TM58
  (336, 33600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Seviper - Payback - TM66
  (336, 33600, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 36),
  -- Seviper - Captivate - TM78
  (336, 33600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Seviper - Dark Pulse - TM79
  (336, 33600, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 38),
  -- Seviper - X-Scissor - TM81
  (336, 33600, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 39),
  -- Seviper - Sleep Talk - TM82
  (336, 33600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 40),
  -- Seviper - Natural Gift - TM83
  (336, 33600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 41),
  -- Seviper - Poison Jab - TM84
  (336, 33600, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 42),
  -- Seviper - Swagger - TM87
  (336, 33600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 43),
  -- Seviper - Substitute - TM90
  (336, 33600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 44),
  -- Seviper - Strength - HM04
  (336, 33600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 45),
  -- Seviper - Rock Smash - HM06
  (336, 33600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 46),
  -- Seviper - Body Slam - Egg
  (336, 33600, 34, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seviper - Scary Face - Egg
  (336, 33600, 184, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seviper - Stockpile - Egg
  (336, 33600, 254, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seviper - Spit Up - Egg
  (336, 33600, 255, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seviper - Swallow - Egg
  (336, 33600, 256, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seviper - Assurance - Egg
  (336, 33600, 372, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seviper - Night Slash - Egg
  (336, 33600, 400, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seviper - Switcheroo - Egg
  (336, 33600, 415, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seviper - Headbutt - Tutor
  (336, 33600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Seviper - Swift - Tutor
  (336, 33600, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Seviper - Snore - Tutor
  (336, 33600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Seviper - Mud-Slap - Tutor
  (336, 33600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Seviper - Fury Cutter - Tutor
  (336, 33600, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Seviper - Knock Off - Tutor
  (336, 33600, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Seviper - Sucker Punch - Tutor
  (336, 33600, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Seviper - Aqua Tail - Tutor
  (336, 33600, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Lunatone - Tackle - Level 1
  (337, 33700, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunatone - Confusion - Level 1
  (337, 33700, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunatone - Harden - Level 1
  (337, 33700, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunatone - Rock Throw - Level 9
  (337, 33700, 88, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Lunatone - Hypnosis - Level 12
  (337, 33700, 95, 10, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lunatone - Rock Polish - Level 20
  (337, 33700, 397, 10, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Lunatone - Psywave - Level 23
  (337, 33700, 149, 10, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Lunatone - Embargo - Level 31
  (337, 33700, 373, 10, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Lunatone - Cosmic Power - Level 34
  (337, 33700, 322, 10, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Lunatone - Heal Block - Level 42
  (337, 33700, 377, 10, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Lunatone - Psychic - Level 45
  (337, 33700, 94, 10, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lunatone - Future Sight - Level 53
  (337, 33700, 248, 10, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Lunatone - Explosion - Level 56
  (337, 33700, 153, 10, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Lunatone - Calm Mind - TM04
  (337, 33700, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 14),
  -- Lunatone - Toxic - TM06
  (337, 33700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Lunatone - Hidden Power - TM10
  (337, 33700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Lunatone - Ice Beam - TM13
  (337, 33700, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 17),
  -- Lunatone - Blizzard - TM14
  (337, 33700, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 18),
  -- Lunatone - Hyper Beam - TM15
  (337, 33700, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 19),
  -- Lunatone - Light Screen - TM16
  (337, 33700, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 20),
  -- Lunatone - Protect - TM17
  (337, 33700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Lunatone - Rain Dance - TM18
  (337, 33700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Lunatone - Safeguard - TM20
  (337, 33700, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 23),
  -- Lunatone - Frustration - TM21
  (337, 33700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Lunatone - Earthquake - TM26
  (337, 33700, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 25),
  -- Lunatone - Return - TM27
  (337, 33700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Lunatone - Psychic - TM29
  (337, 33700, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 27),
  -- Lunatone - Shadow Ball - TM30
  (337, 33700, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 28),
  -- Lunatone - Double Team - TM32
  (337, 33700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Lunatone - Reflect - TM33
  (337, 33700, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 30),
  -- Lunatone - Sandstorm - TM37
  (337, 33700, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 31),
  -- Lunatone - Rock Tomb - TM39
  (337, 33700, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 32),
  -- Lunatone - Facade - TM42
  (337, 33700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Lunatone - Secret Power - TM43
  (337, 33700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Lunatone - Rest - TM44
  (337, 33700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Lunatone - Skill Swap - TM48
  (337, 33700, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 36),
  -- Lunatone - Charge Beam - TM57
  (337, 33700, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 37),
  -- Lunatone - Endure - TM58
  (337, 33700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Lunatone - Embargo - TM63
  (337, 33700, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 39),
  -- Lunatone - Explosion - TM64
  (337, 33700, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 40),
  -- Lunatone - Recycle - TM67
  (337, 33700, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 41),
  -- Lunatone - Giga Impact - TM68
  (337, 33700, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 42),
  -- Lunatone - Rock Polish - TM69
  (337, 33700, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 43),
  -- Lunatone - Flash - TM70
  (337, 33700, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 44),
  -- Lunatone - Stone Edge - TM71
  (337, 33700, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 45),
  -- Lunatone - Gyro Ball - TM74
  (337, 33700, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 46),
  -- Lunatone - Stealth Rock - TM76
  (337, 33700, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 47),
  -- Lunatone - Psych Up - TM77
  (337, 33700, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 48),
  -- Lunatone - Rock Slide - TM80
  (337, 33700, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 49),
  -- Lunatone - Sleep Talk - TM82
  (337, 33700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 50),
  -- Lunatone - Natural Gift - TM83
  (337, 33700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 51),
  -- Lunatone - Dream Eater - TM85
  (337, 33700, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 52),
  -- Lunatone - Grass Knot - TM86
  (337, 33700, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 53),
  -- Lunatone - Swagger - TM87
  (337, 33700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 54),
  -- Lunatone - Substitute - TM90
  (337, 33700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 55),
  -- Lunatone - Trick Room - TM92
  (337, 33700, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 56),
  -- Lunatone - Swift - Tutor
  (337, 33700, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Lunatone - Snore - Tutor
  (337, 33700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Lunatone - Rollout - Tutor
  (337, 33700, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Lunatone - Pain Split - Tutor
  (337, 33700, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Lunatone - Ancient Power - Tutor
  (337, 33700, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Lunatone - Helping Hand - Tutor
  (337, 33700, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Lunatone - Magic Coat - Tutor
  (337, 33700, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Lunatone - Signal Beam - Tutor
  (337, 33700, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Lunatone - Gravity - Tutor
  (337, 33700, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Lunatone - Earth Power - Tutor
  (337, 33700, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Lunatone - Zen Headbutt - Tutor
  (337, 33700, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Lunatone - Iron Head - Tutor
  (337, 33700, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Solrock - Tackle - Level 1
  (338, 33800, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solrock - Confusion - Level 1
  (338, 33800, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solrock - Harden - Level 1
  (338, 33800, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solrock - Rock Throw - Level 9
  (338, 33800, 88, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Solrock - Fire Spin - Level 12
  (338, 33800, 83, 10, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Solrock - Rock Polish - Level 20
  (338, 33800, 397, 10, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Solrock - Psywave - Level 23
  (338, 33800, 149, 10, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Solrock - Embargo - Level 31
  (338, 33800, 373, 10, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Solrock - Cosmic Power - Level 34
  (338, 33800, 322, 10, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Solrock - Heal Block - Level 42
  (338, 33800, 377, 10, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Solrock - Rock Slide - Level 45
  (338, 33800, 157, 10, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Solrock - Solar Beam - Level 53
  (338, 33800, 76, 10, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Solrock - Explosion - Level 56
  (338, 33800, 153, 10, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Solrock - Calm Mind - TM04
  (338, 33800, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 14),
  -- Solrock - Toxic - TM06
  (338, 33800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Solrock - Hidden Power - TM10
  (338, 33800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Solrock - Sunny Day - TM11
  (338, 33800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Solrock - Hyper Beam - TM15
  (338, 33800, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 18),
  -- Solrock - Light Screen - TM16
  (338, 33800, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 19),
  -- Solrock - Protect - TM17
  (338, 33800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Solrock - Safeguard - TM20
  (338, 33800, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 21),
  -- Solrock - Frustration - TM21
  (338, 33800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Solrock - Solar Beam - TM22
  (338, 33800, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 23),
  -- Solrock - Earthquake - TM26
  (338, 33800, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Solrock - Return - TM27
  (338, 33800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Solrock - Psychic - TM29
  (338, 33800, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 26),
  -- Solrock - Shadow Ball - TM30
  (338, 33800, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Solrock - Double Team - TM32
  (338, 33800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Solrock - Reflect - TM33
  (338, 33800, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 29),
  -- Solrock - Flamethrower - TM35
  (338, 33800, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 30),
  -- Solrock - Sandstorm - TM37
  (338, 33800, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 31),
  -- Solrock - Fire Blast - TM38
  (338, 33800, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 32),
  -- Solrock - Rock Tomb - TM39
  (338, 33800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 33),
  -- Solrock - Facade - TM42
  (338, 33800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Solrock - Secret Power - TM43
  (338, 33800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Solrock - Rest - TM44
  (338, 33800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Solrock - Skill Swap - TM48
  (338, 33800, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 37),
  -- Solrock - Overheat - TM50
  (338, 33800, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 38),
  -- Solrock - Charge Beam - TM57
  (338, 33800, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 39),
  -- Solrock - Endure - TM58
  (338, 33800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Solrock - Will-O-Wisp - TM61
  (338, 33800, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 41),
  -- Solrock - Embargo - TM63
  (338, 33800, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 42),
  -- Solrock - Explosion - TM64
  (338, 33800, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 43),
  -- Solrock - Recycle - TM67
  (338, 33800, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 44),
  -- Solrock - Giga Impact - TM68
  (338, 33800, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 45),
  -- Solrock - Rock Polish - TM69
  (338, 33800, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 46),
  -- Solrock - Flash - TM70
  (338, 33800, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 47),
  -- Solrock - Stone Edge - TM71
  (338, 33800, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 48),
  -- Solrock - Gyro Ball - TM74
  (338, 33800, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 49),
  -- Solrock - Stealth Rock - TM76
  (338, 33800, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 50),
  -- Solrock - Psych Up - TM77
  (338, 33800, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 51),
  -- Solrock - Rock Slide - TM80
  (338, 33800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 52),
  -- Solrock - Sleep Talk - TM82
  (338, 33800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 53),
  -- Solrock - Natural Gift - TM83
  (338, 33800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 54),
  -- Solrock - Dream Eater - TM85
  (338, 33800, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 55),
  -- Solrock - Grass Knot - TM86
  (338, 33800, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 56),
  -- Solrock - Swagger - TM87
  (338, 33800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 57),
  -- Solrock - Substitute - TM90
  (338, 33800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 58),
  -- Solrock - Trick Room - TM92
  (338, 33800, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 59),
  -- Solrock - Swift - Tutor
  (338, 33800, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Solrock - Snore - Tutor
  (338, 33800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Solrock - Rollout - Tutor
  (338, 33800, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Solrock - Pain Split - Tutor
  (338, 33800, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Solrock - Ancient Power - Tutor
  (338, 33800, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Solrock - Helping Hand - Tutor
  (338, 33800, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Solrock - Magic Coat - Tutor
  (338, 33800, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Solrock - Signal Beam - Tutor
  (338, 33800, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Solrock - Iron Defense - Tutor
  (338, 33800, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Solrock - Gravity - Tutor
  (338, 33800, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Solrock - Earth Power - Tutor
  (338, 33800, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Solrock - Zen Headbutt - Tutor
  (338, 33800, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Solrock - Iron Head - Tutor
  (338, 33800, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud Sport - Level 6
  (339, 33900, 300, 10, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Barboach - Water Sport - Level 6
  (339, 33900, 346, 10, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Water Gun - Level 10
  (339, 33900, 55, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Barboach - Mud Bomb - Level 14
  (339, 33900, 426, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 18
  (339, 33900, 133, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barboach - Water Pulse - Level 22
  (339, 33900, 352, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Barboach - Magnitude - Level 26
  (339, 33900, 222, 10, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Barboach - Rest - Level 31
  (339, 33900, 156, 10, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Barboach - Snore - Level 31
  (339, 33900, 173, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Barboach - Aqua Tail - Level 35
  (339, 33900, 401, 10, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Barboach - Earthquake - Level 39
  (339, 33900, 89, 10, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Barboach - Future Sight - Level 43
  (339, 33900, 248, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Barboach - Fissure - Level 47
  (339, 33900, 90, 10, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Barboach - Water Pulse - TM03
  (339, 33900, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Barboach - Toxic - TM06
  (339, 33900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Barboach - Hail - TM07
  (339, 33900, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 17),
  -- Barboach - Hidden Power - TM10
  (339, 33900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Barboach - Ice Beam - TM13
  (339, 33900, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 19),
  -- Barboach - Blizzard - TM14
  (339, 33900, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 20),
  -- Barboach - Protect - TM17
  (339, 33900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Barboach - Rain Dance - TM18
  (339, 33900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Barboach - Frustration - TM21
  (339, 33900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Barboach - Earthquake - TM26
  (339, 33900, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Barboach - Return - TM27
  (339, 33900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Barboach - Double Team - TM32
  (339, 33900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Barboach - Sandstorm - TM37
  (339, 33900, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 27),
  -- Barboach - Rock Tomb - TM39
  (339, 33900, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 28),
  -- Barboach - Facade - TM42
  (339, 33900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Barboach - Secret Power - TM43
  (339, 33900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Barboach - Rest - TM44
  (339, 33900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Barboach - Attract - TM45
  (339, 33900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Barboach - Endure - TM58
  (339, 33900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Barboach - Captivate - TM78
  (339, 33900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 34),
  -- Barboach - Sleep Talk - TM82
  (339, 33900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 35),
  -- Barboach - Natural Gift - TM83
  (339, 33900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 36),
  -- Barboach - Swagger - TM87
  (339, 33900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 37),
  -- Barboach - Substitute - TM90
  (339, 33900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 38),
  -- Barboach - Surf - HM03
  (339, 33900, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 39),
  -- Barboach - Whirlpool - HM05
  (339, 33900, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 40),
  -- Barboach - Waterfall - HM07
  (339, 33900, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 41),
  -- Barboach - Take Down - Egg
  (339, 33900, 36, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Barboach - Thrash - Egg
  (339, 33900, 37, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Barboach - Hydro Pump - Egg
  (339, 33900, 56, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Barboach - Flail - Egg
  (339, 33900, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Barboach - Spark - Egg
  (339, 33900, 209, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Barboach - Whirlpool - Egg
  (339, 33900, 250, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Barboach - Dragon Dance - Egg
  (339, 33900, 349, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Barboach - Headbutt - Tutor
  (339, 33900, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Barboach - Snore - Tutor
  (339, 33900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Barboach - Mud-Slap - Tutor
  (339, 33900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Barboach - Icy Wind - Tutor
  (339, 33900, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Barboach - Dive - Tutor
  (339, 33900, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Barboach - Bounce - Tutor
  (339, 33900, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Barboach - Aqua Tail - Tutor
  (339, 33900, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Barboach - Earth Power - Tutor
  (339, 33900, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Mud Sport - Level 1
  (340, 34000, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Water Sport - Level 1
  (340, 34000, 346, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Zen Headbutt - Level 1
  (340, 34000, 428, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whiscash - Mud Sport - Level 6
  (340, 34000, 300, 10, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Whiscash - Water Sport - Level 6
  (340, 34000, 346, 10, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Whiscash - Water Gun - Level 10
  (340, 34000, 55, 10, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Whiscash - Mud Bomb - Level 14
  (340, 34000, 426, 10, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Whiscash - Amnesia - Level 18
  (340, 34000, 133, 10, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Whiscash - Water Pulse - Level 22
  (340, 34000, 352, 10, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Whiscash - Magnitude - Level 26
  (340, 34000, 222, 10, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Whiscash - Rest - Level 33
  (340, 34000, 156, 10, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Whiscash - Snore - Level 33
  (340, 34000, 173, 10, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Whiscash - Aqua Tail - Level 39
  (340, 34000, 401, 10, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Whiscash - Earthquake - Level 45
  (340, 34000, 89, 10, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Whiscash - Future Sight - Level 51
  (340, 34000, 248, 10, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Whiscash - Fissure - Level 57
  (340, 34000, 90, 10, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Whiscash - Water Pulse - TM03
  (340, 34000, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 19),
  -- Whiscash - Toxic - TM06
  (340, 34000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 20),
  -- Whiscash - Hail - TM07
  (340, 34000, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 21),
  -- Whiscash - Hidden Power - TM10
  (340, 34000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 22),
  -- Whiscash - Ice Beam - TM13
  (340, 34000, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 23),
  -- Whiscash - Blizzard - TM14
  (340, 34000, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 24),
  -- Whiscash - Hyper Beam - TM15
  (340, 34000, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Whiscash - Protect - TM17
  (340, 34000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Whiscash - Rain Dance - TM18
  (340, 34000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Whiscash - Frustration - TM21
  (340, 34000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Whiscash - Earthquake - TM26
  (340, 34000, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 29),
  -- Whiscash - Return - TM27
  (340, 34000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 30),
  -- Whiscash - Double Team - TM32
  (340, 34000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 31),
  -- Whiscash - Sandstorm - TM37
  (340, 34000, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 32),
  -- Whiscash - Rock Tomb - TM39
  (340, 34000, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 33),
  -- Whiscash - Facade - TM42
  (340, 34000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Whiscash - Secret Power - TM43
  (340, 34000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Whiscash - Rest - TM44
  (340, 34000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Whiscash - Attract - TM45
  (340, 34000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Whiscash - Endure - TM58
  (340, 34000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Whiscash - Giga Impact - TM68
  (340, 34000, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 39),
  -- Whiscash - Stone Edge - TM71
  (340, 34000, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 40),
  -- Whiscash - Captivate - TM78
  (340, 34000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 41),
  -- Whiscash - Rock Slide - TM80
  (340, 34000, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 42),
  -- Whiscash - Sleep Talk - TM82
  (340, 34000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 43),
  -- Whiscash - Natural Gift - TM83
  (340, 34000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 44),
  -- Whiscash - Swagger - TM87
  (340, 34000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 45),
  -- Whiscash - Substitute - TM90
  (340, 34000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 46),
  -- Whiscash - Surf - HM03
  (340, 34000, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 47),
  -- Whiscash - Strength - HM04
  (340, 34000, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 48),
  -- Whiscash - Whirlpool - HM05
  (340, 34000, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 49),
  -- Whiscash - Rock Smash - HM06
  (340, 34000, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 50),
  -- Whiscash - Waterfall - HM07
  (340, 34000, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 51),
  -- Whiscash - Headbutt - Tutor
  (340, 34000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Whiscash - Snore - Tutor
  (340, 34000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Whiscash - Mud-Slap - Tutor
  (340, 34000, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Whiscash - Icy Wind - Tutor
  (340, 34000, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Whiscash - Dive - Tutor
  (340, 34000, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Whiscash - Bounce - Tutor
  (340, 34000, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Whiscash - Aqua Tail - Tutor
  (340, 34000, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Whiscash - Earth Power - Tutor
  (340, 34000, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Whiscash - Zen Headbutt - Tutor
  (340, 34000, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Corphish - Bubble - Level 1
  (341, 34100, 145, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 7
  (341, 34100, 106, 10, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Corphish - Vise Grip - Level 10
  (341, 34100, 11, 10, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Corphish - Leer - Level 13
  (341, 34100, 43, 10, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 20
  (341, 34100, 61, 10, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Corphish - Protect - Level 23
  (341, 34100, 182, 10, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Corphish - Knock Off - Level 26
  (341, 34100, 282, 10, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Corphish - Taunt - Level 32
  (341, 34100, 269, 10, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 35
  (341, 34100, 400, 10, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Corphish - Crabhammer - Level 38
  (341, 34100, 152, 10, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Corphish - Swords Dance - Level 44
  (341, 34100, 14, 10, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Corphish - Crunch - Level 47
  (341, 34100, 242, 10, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Corphish - Guillotine - Level 53
  (341, 34100, 12, 10, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Corphish - Water Pulse - TM03
  (341, 34100, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 14),
  -- Corphish - Toxic - TM06
  (341, 34100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Corphish - Hail - TM07
  (341, 34100, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 16),
  -- Corphish - Hidden Power - TM10
  (341, 34100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Corphish - Taunt - TM12
  (341, 34100, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 18),
  -- Corphish - Ice Beam - TM13
  (341, 34100, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 19),
  -- Corphish - Blizzard - TM14
  (341, 34100, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 20),
  -- Corphish - Protect - TM17
  (341, 34100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Corphish - Rain Dance - TM18
  (341, 34100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Corphish - Frustration - TM21
  (341, 34100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Corphish - Return - TM27
  (341, 34100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Corphish - Dig - TM28
  (341, 34100, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 25),
  -- Corphish - Brick Break - TM31
  (341, 34100, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 26),
  -- Corphish - Double Team - TM32
  (341, 34100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Corphish - Sludge Bomb - TM36
  (341, 34100, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 28),
  -- Corphish - Rock Tomb - TM39
  (341, 34100, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 29),
  -- Corphish - Aerial Ace - TM40
  (341, 34100, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 30),
  -- Corphish - Facade - TM42
  (341, 34100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Corphish - Secret Power - TM43
  (341, 34100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Corphish - Rest - TM44
  (341, 34100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Corphish - Attract - TM45
  (341, 34100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Corphish - False Swipe - TM54
  (341, 34100, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 35),
  -- Corphish - Fling - TM56
  (341, 34100, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 36),
  -- Corphish - Endure - TM58
  (341, 34100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 37),
  -- Corphish - Payback - TM66
  (341, 34100, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 38),
  -- Corphish - Swords Dance - TM75
  (341, 34100, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 39),
  -- Corphish - Captivate - TM78
  (341, 34100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 40),
  -- Corphish - Rock Slide - TM80
  (341, 34100, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 41),
  -- Corphish - X-Scissor - TM81
  (341, 34100, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 42),
  -- Corphish - Sleep Talk - TM82
  (341, 34100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 43),
  -- Corphish - Natural Gift - TM83
  (341, 34100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 44),
  -- Corphish - Swagger - TM87
  (341, 34100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 45),
  -- Corphish - Substitute - TM90
  (341, 34100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 46),
  -- Corphish - Cut - HM01
  (341, 34100, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 47),
  -- Corphish - Surf - HM03
  (341, 34100, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 48),
  -- Corphish - Strength - HM04
  (341, 34100, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 49),
  -- Corphish - Whirlpool - HM05
  (341, 34100, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 50),
  -- Corphish - Rock Smash - HM06
  (341, 34100, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 51),
  -- Corphish - Waterfall - HM07
  (341, 34100, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 52),
  -- Corphish - Body Slam - Egg
  (341, 34100, 34, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Metal Claw - Egg
  (341, 34100, 232, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Ancient Power - Egg
  (341, 34100, 246, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Superpower - Egg
  (341, 34100, 276, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corphish - Knock Off - Egg
  (341, 34100, 282, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corphish - Endeavor - Egg
  (341, 34100, 283, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corphish - Mud Sport - Egg
  (341, 34100, 300, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corphish - Dragon Dance - Egg
  (341, 34100, 349, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corphish - Snore - Tutor
  (341, 34100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Corphish - Spite - Tutor
  (341, 34100, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Corphish - Mud-Slap - Tutor
  (341, 34100, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Corphish - Icy Wind - Tutor
  (341, 34100, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Corphish - Fury Cutter - Tutor
  (341, 34100, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Corphish - Ancient Power - Tutor
  (341, 34100, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Corphish - Superpower - Tutor
  (341, 34100, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Corphish - Knock Off - Tutor
  (341, 34100, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Corphish - Endeavor - Tutor
  (341, 34100, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Corphish - Iron Defense - Tutor
  (341, 34100, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Crawdaunt - Vise Grip - Level 1
  (342, 34200, 11, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Bubble - Level 1
  (342, 34200, 145, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Harden - Level 7
  (342, 34200, 106, 10, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Crawdaunt - Vise Grip - Level 10
  (342, 34200, 11, 10, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Crawdaunt - Leer - Level 13
  (342, 34200, 43, 10, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Crawdaunt - Bubble Beam - Level 20
  (342, 34200, 61, 10, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Crawdaunt - Protect - Level 23
  (342, 34200, 182, 10, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Crawdaunt - Knock Off - Level 26
  (342, 34200, 282, 10, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Crawdaunt - Swift - Level 30
  (342, 34200, 129, 10, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Crawdaunt - Taunt - Level 34
  (342, 34200, 269, 10, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Crawdaunt - Night Slash - Level 39
  (342, 34200, 400, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Crawdaunt - Crabhammer - Level 44
  (342, 34200, 152, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Crawdaunt - Swords Dance - Level 52
  (342, 34200, 14, 10, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Crawdaunt - Crunch - Level 57
  (342, 34200, 242, 10, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Crawdaunt - Guillotine - Level 65
  (342, 34200, 12, 10, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Crawdaunt - Water Pulse - TM03
  (342, 34200, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 18),
  -- Crawdaunt - Toxic - TM06
  (342, 34200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 19),
  -- Crawdaunt - Hail - TM07
  (342, 34200, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 20),
  -- Crawdaunt - Hidden Power - TM10
  (342, 34200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 21),
  -- Crawdaunt - Taunt - TM12
  (342, 34200, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 22),
  -- Crawdaunt - Ice Beam - TM13
  (342, 34200, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 23),
  -- Crawdaunt - Blizzard - TM14
  (342, 34200, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 24),
  -- Crawdaunt - Hyper Beam - TM15
  (342, 34200, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Crawdaunt - Protect - TM17
  (342, 34200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Crawdaunt - Rain Dance - TM18
  (342, 34200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Crawdaunt - Frustration - TM21
  (342, 34200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Crawdaunt - Return - TM27
  (342, 34200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Crawdaunt - Dig - TM28
  (342, 34200, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 30),
  -- Crawdaunt - Brick Break - TM31
  (342, 34200, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 31),
  -- Crawdaunt - Double Team - TM32
  (342, 34200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 32),
  -- Crawdaunt - Sludge Bomb - TM36
  (342, 34200, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 33),
  -- Crawdaunt - Rock Tomb - TM39
  (342, 34200, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 34),
  -- Crawdaunt - Aerial Ace - TM40
  (342, 34200, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 35),
  -- Crawdaunt - Facade - TM42
  (342, 34200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 36),
  -- Crawdaunt - Secret Power - TM43
  (342, 34200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 37),
  -- Crawdaunt - Rest - TM44
  (342, 34200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 38),
  -- Crawdaunt - Attract - TM45
  (342, 34200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 39),
  -- Crawdaunt - False Swipe - TM54
  (342, 34200, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 40),
  -- Crawdaunt - Fling - TM56
  (342, 34200, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 41),
  -- Crawdaunt - Endure - TM58
  (342, 34200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 42),
  -- Crawdaunt - Payback - TM66
  (342, 34200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 43),
  -- Crawdaunt - Giga Impact - TM68
  (342, 34200, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 44),
  -- Crawdaunt - Avalanche - TM72
  (342, 34200, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 45),
  -- Crawdaunt - Swords Dance - TM75
  (342, 34200, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 46),
  -- Crawdaunt - Captivate - TM78
  (342, 34200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 47),
  -- Crawdaunt - Dark Pulse - TM79
  (342, 34200, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 48),
  -- Crawdaunt - Rock Slide - TM80
  (342, 34200, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 49),
  -- Crawdaunt - X-Scissor - TM81
  (342, 34200, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 50),
  -- Crawdaunt - Sleep Talk - TM82
  (342, 34200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 51),
  -- Crawdaunt - Natural Gift - TM83
  (342, 34200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 52),
  -- Crawdaunt - Swagger - TM87
  (342, 34200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 53),
  -- Crawdaunt - Substitute - TM90
  (342, 34200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 54),
  -- Crawdaunt - Cut - HM01
  (342, 34200, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 55),
  -- Crawdaunt - Surf - HM03
  (342, 34200, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 56),
  -- Crawdaunt - Strength - HM04
  (342, 34200, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 57),
  -- Crawdaunt - Whirlpool - HM05
  (342, 34200, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 58),
  -- Crawdaunt - Rock Smash - HM06
  (342, 34200, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 59),
  -- Crawdaunt - Waterfall - HM07
  (342, 34200, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 60),
  -- Crawdaunt - Swift - Tutor
  (342, 34200, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Crawdaunt - Snore - Tutor
  (342, 34200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Crawdaunt - Spite - Tutor
  (342, 34200, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Crawdaunt - Mud-Slap - Tutor
  (342, 34200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Crawdaunt - Icy Wind - Tutor
  (342, 34200, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Crawdaunt - Fury Cutter - Tutor
  (342, 34200, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Crawdaunt - Ancient Power - Tutor
  (342, 34200, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Crawdaunt - Superpower - Tutor
  (342, 34200, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Crawdaunt - Knock Off - Tutor
  (342, 34200, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Crawdaunt - Endeavor - Tutor
  (342, 34200, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Crawdaunt - Dive - Tutor
  (342, 34200, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Crawdaunt - Iron Defense - Tutor
  (342, 34200, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Baltoy - Confusion - Level 1
  (343, 34300, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baltoy - Harden - Level 3
  (343, 34300, 106, 10, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 5
  (343, 34300, 229, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Baltoy - Mud-Slap - Level 7
  (343, 34300, 189, 10, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Baltoy - Psybeam - Level 11
  (343, 34300, 60, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Baltoy - Rock Tomb - Level 15
  (343, 34300, 317, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Baltoy - Self-Destruct - Level 19
  (343, 34300, 120, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 25
  (343, 34300, 246, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Baltoy - Power Trick - Level 31
  (343, 34300, 379, 10, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Baltoy - Sandstorm - Level 37
  (343, 34300, 201, 10, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Baltoy - Cosmic Power - Level 45
  (343, 34300, 322, 10, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Baltoy - Earth Power - Level 53
  (343, 34300, 414, 10, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Baltoy - Heal Block - Level 61
  (343, 34300, 377, 10, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Baltoy - Explosion - Level 71
  (343, 34300, 153, 10, NULL, 1, 71, NULL, NULL, NULL, 14),
  -- Baltoy - Calm Mind - TM04
  (343, 34300, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 15),
  -- Baltoy - Toxic - TM06
  (343, 34300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Baltoy - Hidden Power - TM10
  (343, 34300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Baltoy - Sunny Day - TM11
  (343, 34300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Baltoy - Ice Beam - TM13
  (343, 34300, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 19),
  -- Baltoy - Light Screen - TM16
  (343, 34300, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 20),
  -- Baltoy - Protect - TM17
  (343, 34300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Baltoy - Rain Dance - TM18
  (343, 34300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Baltoy - Safeguard - TM20
  (343, 34300, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 23),
  -- Baltoy - Frustration - TM21
  (343, 34300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Baltoy - Solar Beam - TM22
  (343, 34300, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 25),
  -- Baltoy - Earthquake - TM26
  (343, 34300, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 26),
  -- Baltoy - Return - TM27
  (343, 34300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Baltoy - Dig - TM28
  (343, 34300, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 28),
  -- Baltoy - Psychic - TM29
  (343, 34300, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 29),
  -- Baltoy - Shadow Ball - TM30
  (343, 34300, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 30),
  -- Baltoy - Double Team - TM32
  (343, 34300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 31),
  -- Baltoy - Reflect - TM33
  (343, 34300, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 32),
  -- Baltoy - Sandstorm - TM37
  (343, 34300, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 33),
  -- Baltoy - Rock Tomb - TM39
  (343, 34300, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 34),
  -- Baltoy - Facade - TM42
  (343, 34300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 35),
  -- Baltoy - Secret Power - TM43
  (343, 34300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 36),
  -- Baltoy - Rest - TM44
  (343, 34300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 37),
  -- Baltoy - Skill Swap - TM48
  (343, 34300, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 38),
  -- Baltoy - Charge Beam - TM57
  (343, 34300, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 39),
  -- Baltoy - Endure - TM58
  (343, 34300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Baltoy - Explosion - TM64
  (343, 34300, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 41),
  -- Baltoy - Recycle - TM67
  (343, 34300, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 42),
  -- Baltoy - Rock Polish - TM69
  (343, 34300, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 43),
  -- Baltoy - Flash - TM70
  (343, 34300, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 44),
  -- Baltoy - Gyro Ball - TM74
  (343, 34300, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 45),
  -- Baltoy - Stealth Rock - TM76
  (343, 34300, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 46),
  -- Baltoy - Psych Up - TM77
  (343, 34300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 47),
  -- Baltoy - Rock Slide - TM80
  (343, 34300, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 48),
  -- Baltoy - Sleep Talk - TM82
  (343, 34300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 49),
  -- Baltoy - Natural Gift - TM83
  (343, 34300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 50),
  -- Baltoy - Dream Eater - TM85
  (343, 34300, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 51),
  -- Baltoy - Grass Knot - TM86
  (343, 34300, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 52),
  -- Baltoy - Swagger - TM87
  (343, 34300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 53),
  -- Baltoy - Substitute - TM90
  (343, 34300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 54),
  -- Baltoy - Trick Room - TM92
  (343, 34300, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 55),
  -- Baltoy - Headbutt - Tutor
  (343, 34300, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Baltoy - Snore - Tutor
  (343, 34300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Baltoy - Mud-Slap - Tutor
  (343, 34300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Baltoy - Ancient Power - Tutor
  (343, 34300, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Baltoy - Trick - Tutor
  (343, 34300, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Baltoy - Magic Coat - Tutor
  (343, 34300, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Baltoy - Signal Beam - Tutor
  (343, 34300, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Baltoy - Gravity - Tutor
  (343, 34300, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Baltoy - Earth Power - Tutor
  (343, 34300, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Baltoy - Zen Headbutt - Tutor
  (343, 34300, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Claydol - Confusion - Level 1
  (344, 34400, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Claydol - Teleport - Level 1
  (344, 34400, 100, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Claydol - Harden - Level 1
  (344, 34400, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Claydol - Rapid Spin - Level 1
  (344, 34400, 229, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Claydol - Harden - Level 3
  (344, 34400, 106, 10, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Claydol - Rapid Spin - Level 5
  (344, 34400, 229, 10, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Claydol - Mud-Slap - Level 7
  (344, 34400, 189, 10, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Claydol - Psybeam - Level 11
  (344, 34400, 60, 10, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Claydol - Rock Tomb - Level 15
  (344, 34400, 317, 10, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Claydol - Self-Destruct - Level 19
  (344, 34400, 120, 10, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Claydol - Ancient Power - Level 25
  (344, 34400, 246, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Claydol - Power Trick - Level 31
  (344, 34400, 379, 10, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Claydol - Hyper Beam - Level 36
  (344, 34400, 63, 10, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Claydol - Sandstorm - Level 40
  (344, 34400, 201, 10, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Claydol - Cosmic Power - Level 51
  (344, 34400, 322, 10, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Claydol - Earth Power - Level 62
  (344, 34400, 414, 10, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Claydol - Heal Block - Level 73
  (344, 34400, 377, 10, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Claydol - Explosion - Level 86
  (344, 34400, 153, 10, NULL, 1, 86, NULL, NULL, NULL, 18),
  -- Claydol - Calm Mind - TM04
  (344, 34400, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 19),
  -- Claydol - Toxic - TM06
  (344, 34400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 20),
  -- Claydol - Hidden Power - TM10
  (344, 34400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 21),
  -- Claydol - Sunny Day - TM11
  (344, 34400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 22),
  -- Claydol - Ice Beam - TM13
  (344, 34400, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 23),
  -- Claydol - Hyper Beam - TM15
  (344, 34400, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 24),
  -- Claydol - Light Screen - TM16
  (344, 34400, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 25),
  -- Claydol - Protect - TM17
  (344, 34400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Claydol - Rain Dance - TM18
  (344, 34400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Claydol - Safeguard - TM20
  (344, 34400, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 28),
  -- Claydol - Frustration - TM21
  (344, 34400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 29),
  -- Claydol - Solar Beam - TM22
  (344, 34400, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 30),
  -- Claydol - Earthquake - TM26
  (344, 34400, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 31),
  -- Claydol - Return - TM27
  (344, 34400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Claydol - Dig - TM28
  (344, 34400, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 33),
  -- Claydol - Psychic - TM29
  (344, 34400, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 34),
  -- Claydol - Shadow Ball - TM30
  (344, 34400, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 35),
  -- Claydol - Double Team - TM32
  (344, 34400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 36),
  -- Claydol - Reflect - TM33
  (344, 34400, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 37),
  -- Claydol - Sandstorm - TM37
  (344, 34400, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 38),
  -- Claydol - Rock Tomb - TM39
  (344, 34400, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 39),
  -- Claydol - Facade - TM42
  (344, 34400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 40),
  -- Claydol - Secret Power - TM43
  (344, 34400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 41),
  -- Claydol - Rest - TM44
  (344, 34400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 42),
  -- Claydol - Skill Swap - TM48
  (344, 34400, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 43),
  -- Claydol - Charge Beam - TM57
  (344, 34400, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 44),
  -- Claydol - Endure - TM58
  (344, 34400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 45),
  -- Claydol - Explosion - TM64
  (344, 34400, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 46),
  -- Claydol - Recycle - TM67
  (344, 34400, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 47),
  -- Claydol - Giga Impact - TM68
  (344, 34400, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 48),
  -- Claydol - Rock Polish - TM69
  (344, 34400, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 49),
  -- Claydol - Flash - TM70
  (344, 34400, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 50),
  -- Claydol - Stone Edge - TM71
  (344, 34400, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 51),
  -- Claydol - Gyro Ball - TM74
  (344, 34400, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 52),
  -- Claydol - Stealth Rock - TM76
  (344, 34400, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 53),
  -- Claydol - Psych Up - TM77
  (344, 34400, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 54),
  -- Claydol - Rock Slide - TM80
  (344, 34400, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 55),
  -- Claydol - Sleep Talk - TM82
  (344, 34400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 56),
  -- Claydol - Natural Gift - TM83
  (344, 34400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 57),
  -- Claydol - Dream Eater - TM85
  (344, 34400, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 58),
  -- Claydol - Grass Knot - TM86
  (344, 34400, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 59),
  -- Claydol - Swagger - TM87
  (344, 34400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 60),
  -- Claydol - Substitute - TM90
  (344, 34400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 61),
  -- Claydol - Trick Room - TM92
  (344, 34400, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 62),
  -- Claydol - Strength - HM04
  (344, 34400, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 63),
  -- Claydol - Rock Smash - HM06
  (344, 34400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 64),
  -- Claydol - Headbutt - Tutor
  (344, 34400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Claydol - Snore - Tutor
  (344, 34400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Claydol - Mud-Slap - Tutor
  (344, 34400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Claydol - Ancient Power - Tutor
  (344, 34400, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Claydol - Trick - Tutor
  (344, 34400, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Claydol - Magic Coat - Tutor
  (344, 34400, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Claydol - Signal Beam - Tutor
  (344, 34400, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Claydol - Gravity - Tutor
  (344, 34400, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Claydol - Earth Power - Tutor
  (344, 34400, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Claydol - Zen Headbutt - Tutor
  (344, 34400, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Lileep - Constrict - Level 1
  (345, 34500, 132, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lileep - Astonish - Level 1
  (345, 34500, 310, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 8
  (345, 34500, 51, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Lileep - Ingrain - Level 15
  (345, 34500, 275, 10, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lileep - Confuse Ray - Level 22
  (345, 34500, 109, 10, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Lileep - Amnesia - Level 29
  (345, 34500, 133, 10, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lileep - Gastro Acid - Level 36
  (345, 34500, 380, 10, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Lileep - Ancient Power - Level 43
  (345, 34500, 246, 10, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Lileep - Energy Ball - Level 50
  (345, 34500, 412, 10, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Lileep - Stockpile - Level 57
  (345, 34500, 254, 10, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Lileep - Spit Up - Level 57
  (345, 34500, 255, 10, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Lileep - Swallow - Level 57
  (345, 34500, 256, 10, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Lileep - Wring Out - Level 64
  (345, 34500, 378, 10, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Lileep - Toxic - TM06
  (345, 34500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 14),
  -- Lileep - Bullet Seed - TM09
  (345, 34500, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 15),
  -- Lileep - Hidden Power - TM10
  (345, 34500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Lileep - Sunny Day - TM11
  (345, 34500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Lileep - Protect - TM17
  (345, 34500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 18),
  -- Lileep - Giga Drain - TM19
  (345, 34500, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 19),
  -- Lileep - Frustration - TM21
  (345, 34500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 20),
  -- Lileep - Solar Beam - TM22
  (345, 34500, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 21),
  -- Lileep - Return - TM27
  (345, 34500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 22),
  -- Lileep - Double Team - TM32
  (345, 34500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 23),
  -- Lileep - Sludge Bomb - TM36
  (345, 34500, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 24),
  -- Lileep - Sandstorm - TM37
  (345, 34500, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 25),
  -- Lileep - Rock Tomb - TM39
  (345, 34500, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 26),
  -- Lileep - Facade - TM42
  (345, 34500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Lileep - Secret Power - TM43
  (345, 34500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Lileep - Rest - TM44
  (345, 34500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Lileep - Attract - TM45
  (345, 34500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Lileep - Energy Ball - TM53
  (345, 34500, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 31),
  -- Lileep - Endure - TM58
  (345, 34500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 32),
  -- Lileep - Rock Polish - TM69
  (345, 34500, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 33),
  -- Lileep - Flash - TM70
  (345, 34500, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 34),
  -- Lileep - Swords Dance - TM75
  (345, 34500, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 35),
  -- Lileep - Stealth Rock - TM76
  (345, 34500, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 36),
  -- Lileep - Captivate - TM78
  (345, 34500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Lileep - Rock Slide - TM80
  (345, 34500, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 38),
  -- Lileep - Sleep Talk - TM82
  (345, 34500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Lileep - Natural Gift - TM83
  (345, 34500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Lileep - Grass Knot - TM86
  (345, 34500, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 41),
  -- Lileep - Swagger - TM87
  (345, 34500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Lileep - Substitute - TM90
  (345, 34500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Lileep - Recover - Egg
  (345, 34500, 105, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lileep - Barrier - Egg
  (345, 34500, 112, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lileep - Rock Slide - Egg
  (345, 34500, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lileep - Curse - Egg
  (345, 34500, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lileep - Mirror Coat - Egg
  (345, 34500, 243, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lileep - Tickle - Egg
  (345, 34500, 321, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lileep - Wring Out - Egg
  (345, 34500, 378, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lileep - String Shot - Tutor
  (345, 34500, 81, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Lileep - Snore - Tutor
  (345, 34500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Lileep - Mud-Slap - Tutor
  (345, 34500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Lileep - Pain Split - Tutor
  (345, 34500, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Lileep - Synthesis - Tutor
  (345, 34500, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Lileep - Ancient Power - Tutor
  (345, 34500, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Lileep - Gastro Acid - Tutor
  (345, 34500, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Lileep - Worry Seed - Tutor
  (345, 34500, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Lileep - Seed Bomb - Tutor
  (345, 34500, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Lileep - Earth Power - Tutor
  (345, 34500, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Cradily - Acid - Level 1
  (346, 34600, 51, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cradily - Constrict - Level 1
  (346, 34600, 132, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cradily - Ingrain - Level 1
  (346, 34600, 275, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cradily - Astonish - Level 1
  (346, 34600, 310, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cradily - Acid - Level 8
  (346, 34600, 51, 10, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cradily - Ingrain - Level 15
  (346, 34600, 275, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cradily - Confuse Ray - Level 22
  (346, 34600, 109, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cradily - Amnesia - Level 29
  (346, 34600, 133, 10, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Cradily - Ancient Power - Level 36
  (346, 34600, 246, 10, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Cradily - Gastro Acid - Level 46
  (346, 34600, 380, 10, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Cradily - Energy Ball - Level 56
  (346, 34600, 412, 10, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Cradily - Stockpile - Level 66
  (346, 34600, 254, 10, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Cradily - Spit Up - Level 66
  (346, 34600, 255, 10, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cradily - Swallow - Level 66
  (346, 34600, 256, 10, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Cradily - Wring Out - Level 76
  (346, 34600, 378, 10, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Cradily - Toxic - TM06
  (346, 34600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Cradily - Bullet Seed - TM09
  (346, 34600, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 17),
  -- Cradily - Hidden Power - TM10
  (346, 34600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Cradily - Sunny Day - TM11
  (346, 34600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Cradily - Hyper Beam - TM15
  (346, 34600, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 20),
  -- Cradily - Protect - TM17
  (346, 34600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Cradily - Giga Drain - TM19
  (346, 34600, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 22),
  -- Cradily - Frustration - TM21
  (346, 34600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Cradily - Solar Beam - TM22
  (346, 34600, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 24),
  -- Cradily - Earthquake - TM26
  (346, 34600, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 25),
  -- Cradily - Return - TM27
  (346, 34600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Cradily - Double Team - TM32
  (346, 34600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Cradily - Sludge Bomb - TM36
  (346, 34600, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 28),
  -- Cradily - Sandstorm - TM37
  (346, 34600, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 29),
  -- Cradily - Rock Tomb - TM39
  (346, 34600, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 30),
  -- Cradily - Facade - TM42
  (346, 34600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Cradily - Secret Power - TM43
  (346, 34600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Cradily - Rest - TM44
  (346, 34600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Cradily - Attract - TM45
  (346, 34600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Cradily - Energy Ball - TM53
  (346, 34600, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 35),
  -- Cradily - Endure - TM58
  (346, 34600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Cradily - Giga Impact - TM68
  (346, 34600, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 37),
  -- Cradily - Rock Polish - TM69
  (346, 34600, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 38),
  -- Cradily - Flash - TM70
  (346, 34600, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 39),
  -- Cradily - Stone Edge - TM71
  (346, 34600, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 40),
  -- Cradily - Swords Dance - TM75
  (346, 34600, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 41),
  -- Cradily - Stealth Rock - TM76
  (346, 34600, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 42),
  -- Cradily - Captivate - TM78
  (346, 34600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 43),
  -- Cradily - Rock Slide - TM80
  (346, 34600, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 44),
  -- Cradily - Sleep Talk - TM82
  (346, 34600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Cradily - Natural Gift - TM83
  (346, 34600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Cradily - Grass Knot - TM86
  (346, 34600, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 47),
  -- Cradily - Swagger - TM87
  (346, 34600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Cradily - Substitute - TM90
  (346, 34600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 49),
  -- Cradily - Strength - HM04
  (346, 34600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 50),
  -- Cradily - Rock Smash - HM06
  (346, 34600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 51),
  -- Cradily - Headbutt - Tutor
  (346, 34600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Cradily - String Shot - Tutor
  (346, 34600, 81, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Cradily - Snore - Tutor
  (346, 34600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Cradily - Mud-Slap - Tutor
  (346, 34600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Cradily - Pain Split - Tutor
  (346, 34600, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Cradily - Synthesis - Tutor
  (346, 34600, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Cradily - Ancient Power - Tutor
  (346, 34600, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Cradily - Block - Tutor
  (346, 34600, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Cradily - Gastro Acid - Tutor
  (346, 34600, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Cradily - Worry Seed - Tutor
  (346, 34600, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Cradily - Seed Bomb - Tutor
  (346, 34600, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Cradily - Earth Power - Tutor
  (346, 34600, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Anorith - Scratch - Level 1
  (347, 34700, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Anorith - Harden - Level 1
  (347, 34700, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Anorith - Mud Sport - Level 7
  (347, 34700, 300, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Anorith - Water Gun - Level 13
  (347, 34700, 55, 10, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Anorith - Metal Claw - Level 19
  (347, 34700, 232, 10, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Anorith - Protect - Level 25
  (347, 34700, 182, 10, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Anorith - Ancient Power - Level 31
  (347, 34700, 246, 10, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Anorith - Fury Cutter - Level 37
  (347, 34700, 210, 10, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Anorith - Slash - Level 43
  (347, 34700, 163, 10, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Anorith - Rock Blast - Level 49
  (347, 34700, 350, 10, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Anorith - Crush Claw - Level 55
  (347, 34700, 306, 10, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Anorith - X-Scissor - Level 61
  (347, 34700, 404, 10, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Anorith - Water Pulse - TM03
  (347, 34700, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 13),
  -- Anorith - Toxic - TM06
  (347, 34700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 14),
  -- Anorith - Hidden Power - TM10
  (347, 34700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 15),
  -- Anorith - Sunny Day - TM11
  (347, 34700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 16),
  -- Anorith - Protect - TM17
  (347, 34700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 17),
  -- Anorith - Frustration - TM21
  (347, 34700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 18),
  -- Anorith - Return - TM27
  (347, 34700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 19),
  -- Anorith - Dig - TM28
  (347, 34700, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 20),
  -- Anorith - Brick Break - TM31
  (347, 34700, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 21),
  -- Anorith - Double Team - TM32
  (347, 34700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 22),
  -- Anorith - Sandstorm - TM37
  (347, 34700, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 23),
  -- Anorith - Rock Tomb - TM39
  (347, 34700, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 24),
  -- Anorith - Aerial Ace - TM40
  (347, 34700, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 25),
  -- Anorith - Facade - TM42
  (347, 34700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 26),
  -- Anorith - Secret Power - TM43
  (347, 34700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 27),
  -- Anorith - Rest - TM44
  (347, 34700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 28),
  -- Anorith - Attract - TM45
  (347, 34700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 29),
  -- Anorith - False Swipe - TM54
  (347, 34700, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 30),
  -- Anorith - Endure - TM58
  (347, 34700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 31),
  -- Anorith - Rock Polish - TM69
  (347, 34700, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 32),
  -- Anorith - Swords Dance - TM75
  (347, 34700, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 33),
  -- Anorith - Stealth Rock - TM76
  (347, 34700, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 34),
  -- Anorith - Captivate - TM78
  (347, 34700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 35),
  -- Anorith - Rock Slide - TM80
  (347, 34700, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 36),
  -- Anorith - X-Scissor - TM81
  (347, 34700, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 37),
  -- Anorith - Sleep Talk - TM82
  (347, 34700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Anorith - Natural Gift - TM83
  (347, 34700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Anorith - Swagger - TM87
  (347, 34700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Anorith - Substitute - TM90
  (347, 34700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Anorith - Cut - HM01
  (347, 34700, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 42),
  -- Anorith - Rock Smash - HM06
  (347, 34700, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 43),
  -- Anorith - Swords Dance - Egg
  (347, 34700, 14, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Anorith - Sand Attack - Egg
  (347, 34700, 28, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Anorith - Screech - Egg
  (347, 34700, 103, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Anorith - Rock Slide - Egg
  (347, 34700, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Anorith - Curse - Egg
  (347, 34700, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Anorith - Rapid Spin - Egg
  (347, 34700, 229, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Anorith - Knock Off - Egg
  (347, 34700, 282, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Anorith - Cross Poison - Egg
  (347, 34700, 440, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Anorith - Headbutt - Tutor
  (347, 34700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Anorith - String Shot - Tutor
  (347, 34700, 81, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Anorith - Snore - Tutor
  (347, 34700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Anorith - Mud-Slap - Tutor
  (347, 34700, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Anorith - Fury Cutter - Tutor
  (347, 34700, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Anorith - Ancient Power - Tutor
  (347, 34700, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Anorith - Knock Off - Tutor
  (347, 34700, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Anorith - Iron Defense - Tutor
  (347, 34700, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Anorith - Earth Power - Tutor
  (347, 34700, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Armaldo - Scratch - Level 1
  (348, 34800, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armaldo - Water Gun - Level 1
  (348, 34800, 55, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armaldo - Harden - Level 1
  (348, 34800, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armaldo - Mud Sport - Level 1
  (348, 34800, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armaldo - Mud Sport - Level 7
  (348, 34800, 300, 10, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Armaldo - Water Gun - Level 13
  (348, 34800, 55, 10, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Armaldo - Metal Claw - Level 19
  (348, 34800, 232, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Armaldo - Protect - Level 25
  (348, 34800, 182, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Armaldo - Ancient Power - Level 31
  (348, 34800, 246, 10, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Armaldo - Fury Cutter - Level 37
  (348, 34800, 210, 10, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Armaldo - Slash - Level 46
  (348, 34800, 163, 10, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Armaldo - Rock Blast - Level 55
  (348, 34800, 350, 10, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Armaldo - Crush Claw - Level 67
  (348, 34800, 306, 10, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Armaldo - X-Scissor - Level 73
  (348, 34800, 404, 10, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Armaldo - Water Pulse - TM03
  (348, 34800, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Armaldo - Toxic - TM06
  (348, 34800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Armaldo - Hidden Power - TM10
  (348, 34800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Armaldo - Sunny Day - TM11
  (348, 34800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Armaldo - Hyper Beam - TM15
  (348, 34800, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 19),
  -- Armaldo - Protect - TM17
  (348, 34800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Armaldo - Frustration - TM21
  (348, 34800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Armaldo - Iron Tail - TM23
  (348, 34800, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 22),
  -- Armaldo - Earthquake - TM26
  (348, 34800, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 23),
  -- Armaldo - Return - TM27
  (348, 34800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Armaldo - Dig - TM28
  (348, 34800, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 25),
  -- Armaldo - Brick Break - TM31
  (348, 34800, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 26),
  -- Armaldo - Double Team - TM32
  (348, 34800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Armaldo - Sandstorm - TM37
  (348, 34800, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 28),
  -- Armaldo - Rock Tomb - TM39
  (348, 34800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 29),
  -- Armaldo - Aerial Ace - TM40
  (348, 34800, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 30),
  -- Armaldo - Facade - TM42
  (348, 34800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Armaldo - Secret Power - TM43
  (348, 34800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Armaldo - Rest - TM44
  (348, 34800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Armaldo - Attract - TM45
  (348, 34800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Armaldo - False Swipe - TM54
  (348, 34800, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 35),
  -- Armaldo - Endure - TM58
  (348, 34800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Armaldo - Giga Impact - TM68
  (348, 34800, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 37),
  -- Armaldo - Rock Polish - TM69
  (348, 34800, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 38),
  -- Armaldo - Stone Edge - TM71
  (348, 34800, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 39),
  -- Armaldo - Swords Dance - TM75
  (348, 34800, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 40),
  -- Armaldo - Stealth Rock - TM76
  (348, 34800, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 41),
  -- Armaldo - Captivate - TM78
  (348, 34800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 42),
  -- Armaldo - Rock Slide - TM80
  (348, 34800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 43),
  -- Armaldo - X-Scissor - TM81
  (348, 34800, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 44),
  -- Armaldo - Sleep Talk - TM82
  (348, 34800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Armaldo - Natural Gift - TM83
  (348, 34800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Armaldo - Swagger - TM87
  (348, 34800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 47),
  -- Armaldo - Substitute - TM90
  (348, 34800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 48),
  -- Armaldo - Flash Cannon - TM91
  (348, 34800, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 49),
  -- Armaldo - Cut - HM01
  (348, 34800, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 50),
  -- Armaldo - Strength - HM04
  (348, 34800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 51),
  -- Armaldo - Rock Smash - HM06
  (348, 34800, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 52),
  -- Armaldo - Headbutt - Tutor
  (348, 34800, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Armaldo - Low Kick - Tutor
  (348, 34800, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Armaldo - String Shot - Tutor
  (348, 34800, 81, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Armaldo - Snore - Tutor
  (348, 34800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Armaldo - Mud-Slap - Tutor
  (348, 34800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Armaldo - Fury Cutter - Tutor
  (348, 34800, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Armaldo - Ancient Power - Tutor
  (348, 34800, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Armaldo - Superpower - Tutor
  (348, 34800, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Armaldo - Knock Off - Tutor
  (348, 34800, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Armaldo - Iron Defense - Tutor
  (348, 34800, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Armaldo - Block - Tutor
  (348, 34800, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Armaldo - Aqua Tail - Tutor
  (348, 34800, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Armaldo - Earth Power - Tutor
  (348, 34800, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 10, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 30
  (349, 34900, 175, 10, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Feebas - Water Pulse - TM03
  (349, 34900, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 4),
  -- Feebas - Toxic - TM06
  (349, 34900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 5),
  -- Feebas - Hail - TM07
  (349, 34900, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 6),
  -- Feebas - Hidden Power - TM10
  (349, 34900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 7),
  -- Feebas - Ice Beam - TM13
  (349, 34900, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 8),
  -- Feebas - Blizzard - TM14
  (349, 34900, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 9),
  -- Feebas - Protect - TM17
  (349, 34900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 10),
  -- Feebas - Rain Dance - TM18
  (349, 34900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 11),
  -- Feebas - Frustration - TM21
  (349, 34900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 12),
  -- Feebas - Return - TM27
  (349, 34900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 13),
  -- Feebas - Double Team - TM32
  (349, 34900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 14),
  -- Feebas - Facade - TM42
  (349, 34900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 15),
  -- Feebas - Secret Power - TM43
  (349, 34900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 16),
  -- Feebas - Rest - TM44
  (349, 34900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 17),
  -- Feebas - Attract - TM45
  (349, 34900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 18),
  -- Feebas - Endure - TM58
  (349, 34900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 19),
  -- Feebas - Captivate - TM78
  (349, 34900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 20),
  -- Feebas - Sleep Talk - TM82
  (349, 34900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 21),
  -- Feebas - Natural Gift - TM83
  (349, 34900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 22),
  -- Feebas - Swagger - TM87
  (349, 34900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 23),
  -- Feebas - Substitute - TM90
  (349, 34900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 24),
  -- Feebas - Surf - HM03
  (349, 34900, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 25),
  -- Feebas - Whirlpool - HM05
  (349, 34900, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 26),
  -- Feebas - Waterfall - HM07
  (349, 34900, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 27),
  -- Feebas - Mist - Egg
  (349, 34900, 54, 10, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Feebas - Hypnosis - Egg
  (349, 34900, 95, 10, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Feebas - Confuse Ray - Egg
  (349, 34900, 109, 10, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Feebas - Light Screen - Egg
  (349, 34900, 113, 10, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Feebas - Haze - Egg
  (349, 34900, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Feebas - Dragon Breath - Egg
  (349, 34900, 225, 10, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Feebas - Mirror Coat - Egg
  (349, 34900, 243, 10, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Feebas - Mud Sport - Egg
  (349, 34900, 300, 10, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Feebas - Tickle - Egg
  (349, 34900, 321, 10, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Feebas - Swift - Tutor
  (349, 34900, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 37),
  -- Feebas - Snore - Tutor
  (349, 34900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 38),
  -- Feebas - Icy Wind - Tutor
  (349, 34900, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 39),
  -- Feebas - Dive - Tutor
  (349, 34900, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 40),
  -- Milotic - Wrap - Level 1
  (350, 35000, 35, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milotic - Water Sport - Level 5
  (350, 35000, 346, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Milotic - Refresh - Level 9
  (350, 35000, 287, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Milotic - Water Pulse - Level 13
  (350, 35000, 352, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Milotic - Twister - Level 17
  (350, 35000, 239, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Milotic - Recover - Level 21
  (350, 35000, 105, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Milotic - Captivate - Level 25
  (350, 35000, 445, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Milotic - Aqua Tail - Level 29
  (350, 35000, 401, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Milotic - Rain Dance - Level 33
  (350, 35000, 240, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Milotic - Hydro Pump - Level 37
  (350, 35000, 56, 10, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Milotic - Attract - Level 41
  (350, 35000, 213, 10, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Milotic - Safeguard - Level 45
  (350, 35000, 219, 10, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Milotic - Aqua Ring - Level 49
  (350, 35000, 392, 10, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Milotic - Water Pulse - TM03
  (350, 35000, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Milotic - Toxic - TM06
  (350, 35000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Milotic - Hail - TM07
  (350, 35000, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 17),
  -- Milotic - Hidden Power - TM10
  (350, 35000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Milotic - Ice Beam - TM13
  (350, 35000, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 19),
  -- Milotic - Blizzard - TM14
  (350, 35000, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 20),
  -- Milotic - Hyper Beam - TM15
  (350, 35000, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Milotic - Protect - TM17
  (350, 35000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Milotic - Rain Dance - TM18
  (350, 35000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Milotic - Safeguard - TM20
  (350, 35000, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 24),
  -- Milotic - Frustration - TM21
  (350, 35000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 25),
  -- Milotic - Iron Tail - TM23
  (350, 35000, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 26),
  -- Milotic - Return - TM27
  (350, 35000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Milotic - Double Team - TM32
  (350, 35000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Milotic - Facade - TM42
  (350, 35000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Milotic - Secret Power - TM43
  (350, 35000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Milotic - Rest - TM44
  (350, 35000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Milotic - Attract - TM45
  (350, 35000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Milotic - Endure - TM58
  (350, 35000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Milotic - Dragon Pulse - TM59
  (350, 35000, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 34),
  -- Milotic - Giga Impact - TM68
  (350, 35000, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 35),
  -- Milotic - Avalanche - TM72
  (350, 35000, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 36),
  -- Milotic - Psych Up - TM77
  (350, 35000, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 37),
  -- Milotic - Captivate - TM78
  (350, 35000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 38),
  -- Milotic - Sleep Talk - TM82
  (350, 35000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Milotic - Natural Gift - TM83
  (350, 35000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Milotic - Swagger - TM87
  (350, 35000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 41),
  -- Milotic - Substitute - TM90
  (350, 35000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 42),
  -- Milotic - Surf - HM03
  (350, 35000, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 43),
  -- Milotic - Whirlpool - HM05
  (350, 35000, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 44),
  -- Milotic - Waterfall - HM07
  (350, 35000, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 45),
  -- Milotic - Swift - Tutor
  (350, 35000, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Milotic - Snore - Tutor
  (350, 35000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Milotic - Mud-Slap - Tutor
  (350, 35000, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Milotic - Icy Wind - Tutor
  (350, 35000, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Milotic - Twister - Tutor
  (350, 35000, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Milotic - Magic Coat - Tutor
  (350, 35000, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Milotic - Dive - Tutor
  (350, 35000, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Milotic - Aqua Tail - Tutor
  (350, 35000, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Milotic - Iron Head - Tutor
  (350, 35000, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54);
