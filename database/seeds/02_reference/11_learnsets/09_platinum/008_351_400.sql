-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Platinum
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Platinum Pokedex learnset pages, Serebii Platinum
-- Move Tutor pages, and PokemonDB Generation 4 Platinum learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Platinum
-- Pokémon: #351-#400
-- Rows: 3129
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Platinum seed.
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
  -- Castform - Tackle - Level 1
  (351, 35100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Castform - Ember - Level 10
  (351, 35100, 52, 9, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Castform - Water Gun - Level 10
  (351, 35100, 55, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Castform - Powder Snow - Level 10
  (351, 35100, 181, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Castform - Rain Dance - Level 20
  (351, 35100, 240, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Castform - Sunny Day - Level 20
  (351, 35100, 241, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Castform - Hail - Level 20
  (351, 35100, 258, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Castform - Weather Ball - Level 30
  (351, 35100, 311, 9, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Castform - Water Pulse - TM03
  (351, 35100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 9),
  -- Castform - Toxic - TM06
  (351, 35100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 10),
  -- Castform - Hail - TM07
  (351, 35100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 11),
  -- Castform - Hidden Power - TM10
  (351, 35100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Castform - Sunny Day - TM11
  (351, 35100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 13),
  -- Castform - Ice Beam - TM13
  (351, 35100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 14),
  -- Castform - Blizzard - TM14
  (351, 35100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 15),
  -- Castform - Protect - TM17
  (351, 35100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Castform - Rain Dance - TM18
  (351, 35100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Castform - Frustration - TM21
  (351, 35100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Castform - Solar Beam - TM22
  (351, 35100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 19),
  -- Castform - Thunderbolt - TM24
  (351, 35100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Castform - Thunder - TM25
  (351, 35100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Castform - Return - TM27
  (351, 35100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Castform - Shadow Ball - TM30
  (351, 35100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 23),
  -- Castform - Double Team - TM32
  (351, 35100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Castform - Shock Wave - TM34
  (351, 35100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 25),
  -- Castform - Flamethrower - TM35
  (351, 35100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Castform - Sandstorm - TM37
  (351, 35100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 27),
  -- Castform - Fire Blast - TM38
  (351, 35100, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 28),
  -- Castform - Facade - TM42
  (351, 35100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Castform - Secret Power - TM43
  (351, 35100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Castform - Rest - TM44
  (351, 35100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Castform - Attract - TM45
  (351, 35100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Castform - Thief - TM46
  (351, 35100, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Castform - Energy Ball - TM53
  (351, 35100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 34),
  -- Castform - Endure - TM58
  (351, 35100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Castform - Flash - TM70
  (351, 35100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 36),
  -- Castform - Avalanche - TM72
  (351, 35100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 37),
  -- Castform - Thunder Wave - TM73
  (351, 35100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 38),
  -- Castform - Psych Up - TM77
  (351, 35100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 39),
  -- Castform - Captivate - TM78
  (351, 35100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Castform - Sleep Talk - TM82
  (351, 35100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Castform - Natural Gift - TM83
  (351, 35100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Castform - Swagger - TM87
  (351, 35100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Castform - Substitute - TM90
  (351, 35100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Castform - Disable - Egg
  (351, 35100, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Castform - Amnesia - Egg
  (351, 35100, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Castform - Psych Up - Egg
  (351, 35100, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Castform - Future Sight - Egg
  (351, 35100, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Castform - Lucky Chant - Egg
  (351, 35100, 381, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Castform - Ominous Wind - Egg
  (351, 35100, 466, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Castform - Swift - Tutor
  (351, 35100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Castform - Snore - Tutor
  (351, 35100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Castform - Icy Wind - Tutor
  (351, 35100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Castform - Last Resort - Tutor
  (351, 35100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Castform - Ominous Wind - Tutor
  (351, 35100, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Kecleon - Scratch - Level 1
  (352, 35200, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kecleon - Tail Whip - Level 1
  (352, 35200, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kecleon - Lick - Level 1
  (352, 35200, 122, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kecleon - Thief - Level 1
  (352, 35200, 168, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kecleon - Astonish - Level 1
  (352, 35200, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kecleon - Bind - Level 4
  (352, 35200, 20, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Kecleon - Feint Attack - Level 7
  (352, 35200, 185, 9, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Kecleon - Fury Swipes - Level 10
  (352, 35200, 154, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Kecleon - Feint - Level 14
  (352, 35200, 364, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Kecleon - Psybeam - Level 18
  (352, 35200, 60, 9, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Kecleon - Shadow Sneak - Level 22
  (352, 35200, 425, 9, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Kecleon - Slash - Level 27
  (352, 35200, 163, 9, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Kecleon - Screech - Level 32
  (352, 35200, 103, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Kecleon - Substitute - Level 37
  (352, 35200, 164, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Kecleon - Sucker Punch - Level 43
  (352, 35200, 389, 9, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Kecleon - Shadow Claw - Level 49
  (352, 35200, 421, 9, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Kecleon - Ancient Power - Level 55
  (352, 35200, 246, 9, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Kecleon - Focus Punch - TM01
  (352, 35200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 18),
  -- Kecleon - Water Pulse - TM03
  (352, 35200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Kecleon - Toxic - TM06
  (352, 35200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Kecleon - Hidden Power - TM10
  (352, 35200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Kecleon - Sunny Day - TM11
  (352, 35200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Kecleon - Ice Beam - TM13
  (352, 35200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Kecleon - Blizzard - TM14
  (352, 35200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Kecleon - Protect - TM17
  (352, 35200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Kecleon - Rain Dance - TM18
  (352, 35200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Kecleon - Frustration - TM21
  (352, 35200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Kecleon - Solar Beam - TM22
  (352, 35200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Kecleon - Iron Tail - TM23
  (352, 35200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Kecleon - Thunderbolt - TM24
  (352, 35200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Kecleon - Thunder - TM25
  (352, 35200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Kecleon - Return - TM27
  (352, 35200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Kecleon - Dig - TM28
  (352, 35200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 33),
  -- Kecleon - Shadow Ball - TM30
  (352, 35200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Kecleon - Brick Break - TM31
  (352, 35200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Kecleon - Double Team - TM32
  (352, 35200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Kecleon - Shock Wave - TM34
  (352, 35200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 37),
  -- Kecleon - Flamethrower - TM35
  (352, 35200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 38),
  -- Kecleon - Fire Blast - TM38
  (352, 35200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 39),
  -- Kecleon - Rock Tomb - TM39
  (352, 35200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 40),
  -- Kecleon - Aerial Ace - TM40
  (352, 35200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 41),
  -- Kecleon - Facade - TM42
  (352, 35200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Kecleon - Secret Power - TM43
  (352, 35200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Kecleon - Rest - TM44
  (352, 35200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Kecleon - Attract - TM45
  (352, 35200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 45),
  -- Kecleon - Thief - TM46
  (352, 35200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 46),
  -- Kecleon - Skill Swap - TM48
  (352, 35200, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 47),
  -- Kecleon - Snatch - TM49
  (352, 35200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 48),
  -- Kecleon - Fling - TM56
  (352, 35200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 49),
  -- Kecleon - Charge Beam - TM57
  (352, 35200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 50),
  -- Kecleon - Endure - TM58
  (352, 35200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Kecleon - Drain Punch - TM60
  (352, 35200, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 52),
  -- Kecleon - Shadow Claw - TM65
  (352, 35200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 53),
  -- Kecleon - Recycle - TM67
  (352, 35200, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 54),
  -- Kecleon - Flash - TM70
  (352, 35200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Kecleon - Thunder Wave - TM73
  (352, 35200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 56),
  -- Kecleon - Stealth Rock - TM76
  (352, 35200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 57),
  -- Kecleon - Psych Up - TM77
  (352, 35200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 58),
  -- Kecleon - Captivate - TM78
  (352, 35200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 59),
  -- Kecleon - Rock Slide - TM80
  (352, 35200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 60),
  -- Kecleon - Sleep Talk - TM82
  (352, 35200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 61),
  -- Kecleon - Natural Gift - TM83
  (352, 35200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 62),
  -- Kecleon - Grass Knot - TM86
  (352, 35200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 63),
  -- Kecleon - Swagger - TM87
  (352, 35200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 64),
  -- Kecleon - Substitute - TM90
  (352, 35200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 65),
  -- Kecleon - Trick Room - TM92
  (352, 35200, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 66),
  -- Kecleon - Cut - HM01
  (352, 35200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 67),
  -- Kecleon - Strength - HM04
  (352, 35200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 68),
  -- Kecleon - Rock Smash - HM06
  (352, 35200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 69),
  -- Kecleon - Disable - Egg
  (352, 35200, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kecleon - Dizzy Punch - Egg
  (352, 35200, 146, 9, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kecleon - Fake Out - Egg
  (352, 35200, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kecleon - Trick - Egg
  (352, 35200, 271, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kecleon - Magic Coat - Egg
  (352, 35200, 277, 9, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kecleon - Nasty Plot - Egg
  (352, 35200, 417, 9, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Kecleon - Fire Punch - Tutor
  (352, 35200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Kecleon - Ice Punch - Tutor
  (352, 35200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Kecleon - Thunder Punch - Tutor
  (352, 35200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Kecleon - Swift - Tutor
  (352, 35200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Kecleon - Snore - Tutor
  (352, 35200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Kecleon - Mud-Slap - Tutor
  (352, 35200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Kecleon - Icy Wind - Tutor
  (352, 35200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Kecleon - Rollout - Tutor
  (352, 35200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Kecleon - Fury Cutter - Tutor
  (352, 35200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Kecleon - Ancient Power - Tutor
  (352, 35200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Kecleon - Trick - Tutor
  (352, 35200, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Kecleon - Knock Off - Tutor
  (352, 35200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Kecleon - Last Resort - Tutor
  (352, 35200, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Kecleon - Sucker Punch - Tutor
  (352, 35200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Kecleon - Aqua Tail - Tutor
  (352, 35200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Shuppet - Knock Off - Level 1
  (353, 35300, 282, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuppet - Screech - Level 5
  (353, 35300, 103, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Shuppet - Night Shade - Level 8
  (353, 35300, 101, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shuppet - Curse - Level 13
  (353, 35300, 174, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shuppet - Spite - Level 16
  (353, 35300, 180, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shuppet - Shadow Sneak - Level 20
  (353, 35300, 425, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shuppet - Will-O-Wisp - Level 23
  (353, 35300, 261, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Shuppet - Feint Attack - Level 28
  (353, 35300, 185, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shuppet - Shadow Ball - Level 31
  (353, 35300, 247, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Shuppet - Sucker Punch - Level 35
  (353, 35300, 389, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Shuppet - Embargo - Level 38
  (353, 35300, 373, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Shuppet - Snatch - Level 43
  (353, 35300, 289, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Shuppet - Grudge - Level 46
  (353, 35300, 288, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Shuppet - Trick - Level 50
  (353, 35300, 271, 9, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Shuppet - Calm Mind - TM04
  (353, 35300, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Shuppet - Toxic - TM06
  (353, 35300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Shuppet - Hidden Power - TM10
  (353, 35300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Shuppet - Sunny Day - TM11
  (353, 35300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Shuppet - Taunt - TM12
  (353, 35300, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Shuppet - Protect - TM17
  (353, 35300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Shuppet - Rain Dance - TM18
  (353, 35300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Shuppet - Frustration - TM21
  (353, 35300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Shuppet - Thunderbolt - TM24
  (353, 35300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 23),
  -- Shuppet - Thunder - TM25
  (353, 35300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 24),
  -- Shuppet - Return - TM27
  (353, 35300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Shuppet - Psychic - TM29
  (353, 35300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Shuppet - Shadow Ball - TM30
  (353, 35300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Shuppet - Double Team - TM32
  (353, 35300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Shuppet - Shock Wave - TM34
  (353, 35300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Shuppet - Torment - TM41
  (353, 35300, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Shuppet - Facade - TM42
  (353, 35300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Shuppet - Secret Power - TM43
  (353, 35300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Shuppet - Rest - TM44
  (353, 35300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Shuppet - Attract - TM45
  (353, 35300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Shuppet - Thief - TM46
  (353, 35300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Shuppet - Skill Swap - TM48
  (353, 35300, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 36),
  -- Shuppet - Snatch - TM49
  (353, 35300, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 37),
  -- Shuppet - Charge Beam - TM57
  (353, 35300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Shuppet - Endure - TM58
  (353, 35300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Shuppet - Will-O-Wisp - TM61
  (353, 35300, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 40),
  -- Shuppet - Embargo - TM63
  (353, 35300, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 41),
  -- Shuppet - Payback - TM66
  (353, 35300, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 42),
  -- Shuppet - Flash - TM70
  (353, 35300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 43),
  -- Shuppet - Thunder Wave - TM73
  (353, 35300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Shuppet - Psych Up - TM77
  (353, 35300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Shuppet - Captivate - TM78
  (353, 35300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Shuppet - Dark Pulse - TM79
  (353, 35300, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 47),
  -- Shuppet - Sleep Talk - TM82
  (353, 35300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Shuppet - Natural Gift - TM83
  (353, 35300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Shuppet - Dream Eater - TM85
  (353, 35300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 50),
  -- Shuppet - Swagger - TM87
  (353, 35300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Shuppet - Substitute - TM90
  (353, 35300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Shuppet - Trick Room - TM92
  (353, 35300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 53),
  -- Shuppet - Disable - Egg
  (353, 35300, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuppet - Confuse Ray - Egg
  (353, 35300, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shuppet - Foresight - Egg
  (353, 35300, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shuppet - Destiny Bond - Egg
  (353, 35300, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shuppet - Pursuit - Egg
  (353, 35300, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shuppet - Imprison - Egg
  (353, 35300, 286, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shuppet - Astonish - Egg
  (353, 35300, 310, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Shuppet - Payback - Egg
  (353, 35300, 371, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Shuppet - Shadow Sneak - Egg
  (353, 35300, 425, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Shuppet - Spite - Tutor
  (353, 35300, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Shuppet - Icy Wind - Tutor
  (353, 35300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Shuppet - Trick - Tutor
  (353, 35300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Shuppet - Knock Off - Tutor
  (353, 35300, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Shuppet - Sucker Punch - Tutor
  (353, 35300, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Shuppet - Ominous Wind - Tutor
  (353, 35300, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Banette - Night Shade - Level 1
  (354, 35400, 101, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Banette - Screech - Level 1
  (354, 35400, 103, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Banette - Curse - Level 1
  (354, 35400, 174, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Banette - Knock Off - Level 1
  (354, 35400, 282, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Banette - Night Shade - Level 5
  (354, 35400, 101, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Banette - Screech - Level 8
  (354, 35400, 103, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Banette - Curse - Level 13
  (354, 35400, 174, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Banette - Spite - Level 16
  (354, 35400, 180, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Banette - Shadow Sneak - Level 20
  (354, 35400, 425, 9, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Banette - Will-O-Wisp - Level 23
  (354, 35400, 261, 9, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Banette - Feint Attack - Level 28
  (354, 35400, 185, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Banette - Shadow Ball - Level 31
  (354, 35400, 247, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Banette - Sucker Punch - Level 35
  (354, 35400, 389, 9, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Banette - Embargo - Level 42
  (354, 35400, 373, 9, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Banette - Snatch - Level 51
  (354, 35400, 289, 9, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Banette - Grudge - Level 58
  (354, 35400, 288, 9, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Banette - Trick - Level 66
  (354, 35400, 271, 9, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Banette - Calm Mind - TM04
  (354, 35400, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 18),
  -- Banette - Toxic - TM06
  (354, 35400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Banette - Hidden Power - TM10
  (354, 35400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Banette - Sunny Day - TM11
  (354, 35400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Banette - Taunt - TM12
  (354, 35400, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Banette - Hyper Beam - TM15
  (354, 35400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Banette - Protect - TM17
  (354, 35400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Banette - Rain Dance - TM18
  (354, 35400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Banette - Frustration - TM21
  (354, 35400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Banette - Thunderbolt - TM24
  (354, 35400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Banette - Thunder - TM25
  (354, 35400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Banette - Return - TM27
  (354, 35400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Banette - Psychic - TM29
  (354, 35400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Banette - Shadow Ball - TM30
  (354, 35400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Banette - Double Team - TM32
  (354, 35400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Banette - Shock Wave - TM34
  (354, 35400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Banette - Torment - TM41
  (354, 35400, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 34),
  -- Banette - Facade - TM42
  (354, 35400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Banette - Secret Power - TM43
  (354, 35400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Banette - Rest - TM44
  (354, 35400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Banette - Attract - TM45
  (354, 35400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Banette - Thief - TM46
  (354, 35400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Banette - Skill Swap - TM48
  (354, 35400, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 40),
  -- Banette - Snatch - TM49
  (354, 35400, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 41),
  -- Banette - Fling - TM56
  (354, 35400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Banette - Charge Beam - TM57
  (354, 35400, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 43),
  -- Banette - Endure - TM58
  (354, 35400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Banette - Will-O-Wisp - TM61
  (354, 35400, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 45),
  -- Banette - Embargo - TM63
  (354, 35400, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 46),
  -- Banette - Shadow Claw - TM65
  (354, 35400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 47),
  -- Banette - Payback - TM66
  (354, 35400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 48),
  -- Banette - Giga Impact - TM68
  (354, 35400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Banette - Flash - TM70
  (354, 35400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 50),
  -- Banette - Thunder Wave - TM73
  (354, 35400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 51),
  -- Banette - Psych Up - TM77
  (354, 35400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 52),
  -- Banette - Captivate - TM78
  (354, 35400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 53),
  -- Banette - Dark Pulse - TM79
  (354, 35400, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 54),
  -- Banette - Sleep Talk - TM82
  (354, 35400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Banette - Natural Gift - TM83
  (354, 35400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Banette - Dream Eater - TM85
  (354, 35400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 57),
  -- Banette - Swagger - TM87
  (354, 35400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Banette - Substitute - TM90
  (354, 35400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Banette - Trick Room - TM92
  (354, 35400, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 60),
  -- Banette - Spite - Tutor
  (354, 35400, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Banette - Mud-Slap - Tutor
  (354, 35400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Banette - Icy Wind - Tutor
  (354, 35400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Banette - Trick - Tutor
  (354, 35400, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Banette - Knock Off - Tutor
  (354, 35400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Banette - Sucker Punch - Tutor
  (354, 35400, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Banette - Ominous Wind - Tutor
  (354, 35400, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Duskull - Leer - Level 1
  (355, 35500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Night Shade - Level 1
  (355, 35500, 101, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 6
  (355, 35500, 50, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Duskull - Foresight - Level 9
  (355, 35500, 193, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Duskull - Astonish - Level 14
  (355, 35500, 310, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Duskull - Confuse Ray - Level 17
  (355, 35500, 109, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Duskull - Shadow Sneak - Level 22
  (355, 35500, 425, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Duskull - Pursuit - Level 25
  (355, 35500, 228, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Duskull - Curse - Level 30
  (355, 35500, 174, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Duskull - Will-O-Wisp - Level 33
  (355, 35500, 261, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Duskull - Mean Look - Level 38
  (355, 35500, 212, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Duskull - Payback - Level 41
  (355, 35500, 371, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Duskull - Future Sight - Level 46
  (355, 35500, 248, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Duskull - Calm Mind - TM04
  (355, 35500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Duskull - Toxic - TM06
  (355, 35500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Duskull - Hidden Power - TM10
  (355, 35500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Duskull - Sunny Day - TM11
  (355, 35500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Duskull - Taunt - TM12
  (355, 35500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Duskull - Ice Beam - TM13
  (355, 35500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Duskull - Blizzard - TM14
  (355, 35500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Duskull - Protect - TM17
  (355, 35500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Duskull - Rain Dance - TM18
  (355, 35500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Duskull - Frustration - TM21
  (355, 35500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Duskull - Return - TM27
  (355, 35500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Duskull - Psychic - TM29
  (355, 35500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Duskull - Shadow Ball - TM30
  (355, 35500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Duskull - Double Team - TM32
  (355, 35500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Duskull - Torment - TM41
  (355, 35500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 28),
  -- Duskull - Facade - TM42
  (355, 35500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Duskull - Secret Power - TM43
  (355, 35500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Duskull - Rest - TM44
  (355, 35500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Duskull - Attract - TM45
  (355, 35500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Duskull - Thief - TM46
  (355, 35500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Duskull - Skill Swap - TM48
  (355, 35500, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 34),
  -- Duskull - Snatch - TM49
  (355, 35500, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 35),
  -- Duskull - Fling - TM56
  (355, 35500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Duskull - Charge Beam - TM57
  (355, 35500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Duskull - Endure - TM58
  (355, 35500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Duskull - Will-O-Wisp - TM61
  (355, 35500, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 39),
  -- Duskull - Embargo - TM63
  (355, 35500, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 40),
  -- Duskull - Payback - TM66
  (355, 35500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Duskull - Flash - TM70
  (355, 35500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Duskull - Psych Up - TM77
  (355, 35500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Duskull - Captivate - TM78
  (355, 35500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Duskull - Dark Pulse - TM79
  (355, 35500, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 45),
  -- Duskull - Sleep Talk - TM82
  (355, 35500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Duskull - Natural Gift - TM83
  (355, 35500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Duskull - Dream Eater - TM85
  (355, 35500, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 48),
  -- Duskull - Swagger - TM87
  (355, 35500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Duskull - Substitute - TM90
  (355, 35500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Duskull - Trick Room - TM92
  (355, 35500, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 51),
  -- Duskull - Feint Attack - Egg
  (355, 35500, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Duskull - Destiny Bond - Egg
  (355, 35500, 194, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Duskull - Pain Split - Egg
  (355, 35500, 220, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Duskull - Memento - Egg
  (355, 35500, 262, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Duskull - Imprison - Egg
  (355, 35500, 286, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Duskull - Grudge - Egg
  (355, 35500, 288, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Duskull - Ominous Wind - Egg
  (355, 35500, 466, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Duskull - Snore - Tutor
  (355, 35500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Duskull - Spite - Tutor
  (355, 35500, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Duskull - Icy Wind - Tutor
  (355, 35500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Duskull - Trick - Tutor
  (355, 35500, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Duskull - Sucker Punch - Tutor
  (355, 35500, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Duskull - Ominous Wind - Tutor
  (355, 35500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Dusclops - Fire Punch - Level 1
  (356, 35600, 7, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Ice Punch - Level 1
  (356, 35600, 8, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusclops - Thunder Punch - Level 1
  (356, 35600, 9, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusclops - Bind - Level 1
  (356, 35600, 20, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusclops - Leer - Level 1
  (356, 35600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusclops - Disable - Level 1
  (356, 35600, 50, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusclops - Night Shade - Level 1
  (356, 35600, 101, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusclops - Gravity - Level 1
  (356, 35600, 356, 9, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusclops - Disable - Level 6
  (356, 35600, 50, 9, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Dusclops - Foresight - Level 9
  (356, 35600, 193, 9, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Dusclops - Astonish - Level 14
  (356, 35600, 310, 9, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dusclops - Confuse Ray - Level 17
  (356, 35600, 109, 9, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dusclops - Shadow Sneak - Level 22
  (356, 35600, 425, 9, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dusclops - Pursuit - Level 25
  (356, 35600, 228, 9, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dusclops - Curse - Level 30
  (356, 35600, 174, 9, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dusclops - Will-O-Wisp - Level 33
  (356, 35600, 261, 9, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Dusclops - Shadow Punch - Level 37
  (356, 35600, 325, 9, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Dusclops - Mean Look - Level 43
  (356, 35600, 212, 9, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Dusclops - Payback - Level 51
  (356, 35600, 371, 9, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Dusclops - Future Sight - Level 61
  (356, 35600, 248, 9, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Dusclops - Focus Punch - TM01
  (356, 35600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 21),
  -- Dusclops - Calm Mind - TM04
  (356, 35600, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 22),
  -- Dusclops - Toxic - TM06
  (356, 35600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 23),
  -- Dusclops - Hidden Power - TM10
  (356, 35600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 24),
  -- Dusclops - Sunny Day - TM11
  (356, 35600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 25),
  -- Dusclops - Taunt - TM12
  (356, 35600, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 26),
  -- Dusclops - Ice Beam - TM13
  (356, 35600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 27),
  -- Dusclops - Blizzard - TM14
  (356, 35600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 28),
  -- Dusclops - Hyper Beam - TM15
  (356, 35600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 29),
  -- Dusclops - Protect - TM17
  (356, 35600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 30),
  -- Dusclops - Rain Dance - TM18
  (356, 35600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 31),
  -- Dusclops - Frustration - TM21
  (356, 35600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Dusclops - Earthquake - TM26
  (356, 35600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Dusclops - Return - TM27
  (356, 35600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Dusclops - Psychic - TM29
  (356, 35600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 35),
  -- Dusclops - Shadow Ball - TM30
  (356, 35600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Dusclops - Brick Break - TM31
  (356, 35600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 37),
  -- Dusclops - Double Team - TM32
  (356, 35600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 38),
  -- Dusclops - Rock Tomb - TM39
  (356, 35600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Dusclops - Torment - TM41
  (356, 35600, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 40),
  -- Dusclops - Facade - TM42
  (356, 35600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 41),
  -- Dusclops - Secret Power - TM43
  (356, 35600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 42),
  -- Dusclops - Rest - TM44
  (356, 35600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 43),
  -- Dusclops - Attract - TM45
  (356, 35600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 44),
  -- Dusclops - Thief - TM46
  (356, 35600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 45),
  -- Dusclops - Skill Swap - TM48
  (356, 35600, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 46),
  -- Dusclops - Snatch - TM49
  (356, 35600, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 47),
  -- Dusclops - Fling - TM56
  (356, 35600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 48),
  -- Dusclops - Charge Beam - TM57
  (356, 35600, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 49),
  -- Dusclops - Endure - TM58
  (356, 35600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 50),
  -- Dusclops - Will-O-Wisp - TM61
  (356, 35600, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 51),
  -- Dusclops - Embargo - TM63
  (356, 35600, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 52),
  -- Dusclops - Payback - TM66
  (356, 35600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 53),
  -- Dusclops - Giga Impact - TM68
  (356, 35600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Dusclops - Flash - TM70
  (356, 35600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Dusclops - Psych Up - TM77
  (356, 35600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 56),
  -- Dusclops - Captivate - TM78
  (356, 35600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 57),
  -- Dusclops - Dark Pulse - TM79
  (356, 35600, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 58),
  -- Dusclops - Rock Slide - TM80
  (356, 35600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 59),
  -- Dusclops - Sleep Talk - TM82
  (356, 35600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 60),
  -- Dusclops - Natural Gift - TM83
  (356, 35600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 61),
  -- Dusclops - Dream Eater - TM85
  (356, 35600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 62),
  -- Dusclops - Swagger - TM87
  (356, 35600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 63),
  -- Dusclops - Substitute - TM90
  (356, 35600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 64),
  -- Dusclops - Trick Room - TM92
  (356, 35600, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 65),
  -- Dusclops - Strength - HM04
  (356, 35600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 66),
  -- Dusclops - Rock Smash - HM06
  (356, 35600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 67),
  -- Dusclops - Fire Punch - Tutor
  (356, 35600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Dusclops - Ice Punch - Tutor
  (356, 35600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Dusclops - Thunder Punch - Tutor
  (356, 35600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Dusclops - Snore - Tutor
  (356, 35600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Dusclops - Spite - Tutor
  (356, 35600, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Dusclops - Mud-Slap - Tutor
  (356, 35600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Dusclops - Icy Wind - Tutor
  (356, 35600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Dusclops - Trick - Tutor
  (356, 35600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Dusclops - Sucker Punch - Tutor
  (356, 35600, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Dusclops - Ominous Wind - Tutor
  (356, 35600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Tropius - Gust - Level 1
  (357, 35700, 16, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tropius - Leer - Level 1
  (357, 35700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tropius - Growth - Level 7
  (357, 35700, 74, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tropius - Razor Leaf - Level 11
  (357, 35700, 75, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Tropius - Stomp - Level 17
  (357, 35700, 23, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tropius - Sweet Scent - Level 21
  (357, 35700, 230, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Tropius - Whirlwind - Level 27
  (357, 35700, 18, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Tropius - Magical Leaf - Level 31
  (357, 35700, 345, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Tropius - Body Slam - Level 37
  (357, 35700, 34, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Tropius - Synthesis - Level 41
  (357, 35700, 235, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Tropius - Air Slash - Level 47
  (357, 35700, 403, 9, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Tropius - Solar Beam - Level 51
  (357, 35700, 76, 9, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Tropius - Natural Gift - Level 57
  (357, 35700, 363, 9, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Tropius - Leaf Storm - Level 61
  (357, 35700, 437, 9, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Tropius - Roar - TM05
  (357, 35700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Tropius - Toxic - TM06
  (357, 35700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Tropius - Bullet Seed - TM09
  (357, 35700, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 17),
  -- Tropius - Hidden Power - TM10
  (357, 35700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Tropius - Sunny Day - TM11
  (357, 35700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Tropius - Hyper Beam - TM15
  (357, 35700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Tropius - Protect - TM17
  (357, 35700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Tropius - Giga Drain - TM19
  (357, 35700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 22),
  -- Tropius - Safeguard - TM20
  (357, 35700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Tropius - Frustration - TM21
  (357, 35700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Tropius - Solar Beam - TM22
  (357, 35700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Tropius - Earthquake - TM26
  (357, 35700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Tropius - Return - TM27
  (357, 35700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Tropius - Double Team - TM32
  (357, 35700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Tropius - Aerial Ace - TM40
  (357, 35700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 29),
  -- Tropius - Facade - TM42
  (357, 35700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Tropius - Secret Power - TM43
  (357, 35700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Tropius - Rest - TM44
  (357, 35700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Tropius - Attract - TM45
  (357, 35700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Tropius - Steel Wing - TM47
  (357, 35700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 34),
  -- Tropius - Roost - TM51
  (357, 35700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 35),
  -- Tropius - Energy Ball - TM53
  (357, 35700, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 36),
  -- Tropius - Endure - TM58
  (357, 35700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Tropius - Silver Wind - TM62
  (357, 35700, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 38),
  -- Tropius - Giga Impact - TM68
  (357, 35700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Tropius - Flash - TM70
  (357, 35700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 40),
  -- Tropius - Swords Dance - TM75
  (357, 35700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 41),
  -- Tropius - Captivate - TM78
  (357, 35700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Tropius - Sleep Talk - TM82
  (357, 35700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Tropius - Natural Gift - TM83
  (357, 35700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Tropius - Grass Knot - TM86
  (357, 35700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 45),
  -- Tropius - Swagger - TM87
  (357, 35700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Tropius - Substitute - TM90
  (357, 35700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Tropius - Cut - HM01
  (357, 35700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 48),
  -- Tropius - Fly - HM02
  (357, 35700, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 49),
  -- Tropius - Strength - HM04
  (357, 35700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Tropius - Defog - HM05
  (357, 35700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 51),
  -- Tropius - Rock Smash - HM06
  (357, 35700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 52),
  -- Tropius - Razor Wind - Egg
  (357, 35700, 13, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tropius - Slam - Egg
  (357, 35700, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tropius - Headbutt - Egg
  (357, 35700, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tropius - Leech Seed - Egg
  (357, 35700, 73, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tropius - Curse - Egg
  (357, 35700, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tropius - Synthesis - Egg
  (357, 35700, 235, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tropius - Nature Power - Egg
  (357, 35700, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tropius - Leaf Blade - Egg
  (357, 35700, 348, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tropius - Leaf Storm - Egg
  (357, 35700, 437, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tropius - Snore - Tutor
  (357, 35700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Tropius - Mud-Slap - Tutor
  (357, 35700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Tropius - Outrage - Tutor
  (357, 35700, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Tropius - Fury Cutter - Tutor
  (357, 35700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Tropius - Synthesis - Tutor
  (357, 35700, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Tropius - Twister - Tutor
  (357, 35700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Tropius - Air Cutter - Tutor
  (357, 35700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Tropius - Ominous Wind - Tutor
  (357, 35700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Chimecho - Wrap - Level 1
  (358, 35800, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Growl - Level 6
  (358, 35800, 45, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Chimecho - Astonish - Level 9
  (358, 35800, 310, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chimecho - Confusion - Level 14
  (358, 35800, 93, 9, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chimecho - Uproar - Level 17
  (358, 35800, 253, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chimecho - Take Down - Level 22
  (358, 35800, 36, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chimecho - Yawn - Level 25
  (358, 35800, 281, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Chimecho - Psywave - Level 30
  (358, 35800, 149, 9, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Chimecho - Double-Edge - Level 33
  (358, 35800, 38, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Chimecho - Heal Bell - Level 38
  (358, 35800, 215, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Chimecho - Safeguard - Level 41
  (358, 35800, 219, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Chimecho - Extrasensory - Level 46
  (358, 35800, 326, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Chimecho - Healing Wish - Level 49
  (358, 35800, 361, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Chimecho - Calm Mind - TM04
  (358, 35800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Chimecho - Toxic - TM06
  (358, 35800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Chimecho - Hidden Power - TM10
  (358, 35800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Chimecho - Sunny Day - TM11
  (358, 35800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Chimecho - Taunt - TM12
  (358, 35800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Chimecho - Light Screen - TM16
  (358, 35800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Chimecho - Protect - TM17
  (358, 35800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Chimecho - Rain Dance - TM18
  (358, 35800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Chimecho - Safeguard - TM20
  (358, 35800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Chimecho - Frustration - TM21
  (358, 35800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Chimecho - Return - TM27
  (358, 35800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Chimecho - Psychic - TM29
  (358, 35800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Chimecho - Shadow Ball - TM30
  (358, 35800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Chimecho - Double Team - TM32
  (358, 35800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Chimecho - Reflect - TM33
  (358, 35800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 28),
  -- Chimecho - Shock Wave - TM34
  (358, 35800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Chimecho - Torment - TM41
  (358, 35800, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Chimecho - Facade - TM42
  (358, 35800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Chimecho - Secret Power - TM43
  (358, 35800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Chimecho - Rest - TM44
  (358, 35800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Chimecho - Attract - TM45
  (358, 35800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Chimecho - Skill Swap - TM48
  (358, 35800, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 35),
  -- Chimecho - Snatch - TM49
  (358, 35800, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 36),
  -- Chimecho - Energy Ball - TM53
  (358, 35800, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 37),
  -- Chimecho - Charge Beam - TM57
  (358, 35800, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Chimecho - Endure - TM58
  (358, 35800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Chimecho - Recycle - TM67
  (358, 35800, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 40),
  -- Chimecho - Flash - TM70
  (358, 35800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Chimecho - Thunder Wave - TM73
  (358, 35800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 42),
  -- Chimecho - Psych Up - TM77
  (358, 35800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Chimecho - Captivate - TM78
  (358, 35800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Chimecho - Sleep Talk - TM82
  (358, 35800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Chimecho - Natural Gift - TM83
  (358, 35800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Chimecho - Dream Eater - TM85
  (358, 35800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 47),
  -- Chimecho - Grass Knot - TM86
  (358, 35800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 48),
  -- Chimecho - Swagger - TM87
  (358, 35800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Chimecho - Substitute - TM90
  (358, 35800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Chimecho - Trick Room - TM92
  (358, 35800, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 51),
  -- Chimecho - Disable - Egg
  (358, 35800, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chimecho - Hypnosis - Egg
  (358, 35800, 95, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimecho - Recover - Egg
  (358, 35800, 105, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimecho - Dream Eater - Egg
  (358, 35800, 138, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimecho - Curse - Egg
  (358, 35800, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimecho - Future Sight - Egg
  (358, 35800, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimecho - Wish - Egg
  (358, 35800, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimecho - Snore - Tutor
  (358, 35800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Chimecho - Icy Wind - Tutor
  (358, 35800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Chimecho - Rollout - Tutor
  (358, 35800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Chimecho - Uproar - Tutor
  (358, 35800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Chimecho - Helping Hand - Tutor
  (358, 35800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Chimecho - Trick - Tutor
  (358, 35800, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Chimecho - Knock Off - Tutor
  (358, 35800, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Chimecho - Signal Beam - Tutor
  (358, 35800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Chimecho - Last Resort - Tutor
  (358, 35800, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Chimecho - Zen Headbutt - Tutor
  (358, 35800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Absol - Scratch - Level 1
  (359, 35900, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Absol - Feint - Level 1
  (359, 35900, 364, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Absol - Leer - Level 4
  (359, 35900, 43, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Absol - Taunt - Level 9
  (359, 35900, 269, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Absol - Quick Attack - Level 12
  (359, 35900, 98, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Absol - Razor Wind - Level 17
  (359, 35900, 13, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Absol - Pursuit - Level 20
  (359, 35900, 228, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Absol - Swords Dance - Level 25
  (359, 35900, 14, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Absol - Bite - Level 28
  (359, 35900, 44, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Absol - Double Team - Level 33
  (359, 35900, 104, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Absol - Slash - Level 36
  (359, 35900, 163, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Absol - Future Sight - Level 41
  (359, 35900, 248, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Absol - Sucker Punch - Level 44
  (359, 35900, 389, 9, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Absol - Detect - Level 49
  (359, 35900, 197, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Absol - Night Slash - Level 52
  (359, 35900, 400, 9, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Absol - Me First - Level 57
  (359, 35900, 382, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Absol - Psycho Cut - Level 60
  (359, 35900, 427, 9, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Absol - Perish Song - Level 65
  (359, 35900, 195, 9, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Absol - Water Pulse - TM03
  (359, 35900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Absol - Calm Mind - TM04
  (359, 35900, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 20),
  -- Absol - Toxic - TM06
  (359, 35900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Absol - Hail - TM07
  (359, 35900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 22),
  -- Absol - Hidden Power - TM10
  (359, 35900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Absol - Sunny Day - TM11
  (359, 35900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Absol - Taunt - TM12
  (359, 35900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 25),
  -- Absol - Ice Beam - TM13
  (359, 35900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 26),
  -- Absol - Blizzard - TM14
  (359, 35900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 27),
  -- Absol - Hyper Beam - TM15
  (359, 35900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 28),
  -- Absol - Protect - TM17
  (359, 35900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 29),
  -- Absol - Rain Dance - TM18
  (359, 35900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 30),
  -- Absol - Frustration - TM21
  (359, 35900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 31),
  -- Absol - Iron Tail - TM23
  (359, 35900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 32),
  -- Absol - Thunderbolt - TM24
  (359, 35900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 33),
  -- Absol - Thunder - TM25
  (359, 35900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 34),
  -- Absol - Return - TM27
  (359, 35900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 35),
  -- Absol - Shadow Ball - TM30
  (359, 35900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Absol - Double Team - TM32
  (359, 35900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Absol - Shock Wave - TM34
  (359, 35900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Absol - Flamethrower - TM35
  (359, 35900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 39),
  -- Absol - Sandstorm - TM37
  (359, 35900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 40),
  -- Absol - Fire Blast - TM38
  (359, 35900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 41),
  -- Absol - Rock Tomb - TM39
  (359, 35900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 42),
  -- Absol - Aerial Ace - TM40
  (359, 35900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 43),
  -- Absol - Torment - TM41
  (359, 35900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 44),
  -- Absol - Facade - TM42
  (359, 35900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 45),
  -- Absol - Secret Power - TM43
  (359, 35900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 46),
  -- Absol - Rest - TM44
  (359, 35900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 47),
  -- Absol - Attract - TM45
  (359, 35900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 48),
  -- Absol - Thief - TM46
  (359, 35900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 49),
  -- Absol - Snatch - TM49
  (359, 35900, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 50),
  -- Absol - False Swipe - TM54
  (359, 35900, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 51),
  -- Absol - Charge Beam - TM57
  (359, 35900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 52),
  -- Absol - Endure - TM58
  (359, 35900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 53),
  -- Absol - Will-O-Wisp - TM61
  (359, 35900, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 54),
  -- Absol - Shadow Claw - TM65
  (359, 35900, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 55),
  -- Absol - Payback - TM66
  (359, 35900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 56),
  -- Absol - Giga Impact - TM68
  (359, 35900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 57),
  -- Absol - Flash - TM70
  (359, 35900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 58),
  -- Absol - Stone Edge - TM71
  (359, 35900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 59),
  -- Absol - Thunder Wave - TM73
  (359, 35900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 60),
  -- Absol - Swords Dance - TM75
  (359, 35900, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 61),
  -- Absol - Psych Up - TM77
  (359, 35900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 62),
  -- Absol - Captivate - TM78
  (359, 35900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 63),
  -- Absol - Dark Pulse - TM79
  (359, 35900, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 64),
  -- Absol - Rock Slide - TM80
  (359, 35900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 65),
  -- Absol - X-Scissor - TM81
  (359, 35900, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 66),
  -- Absol - Sleep Talk - TM82
  (359, 35900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 67),
  -- Absol - Natural Gift - TM83
  (359, 35900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 68),
  -- Absol - Dream Eater - TM85
  (359, 35900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 69),
  -- Absol - Swagger - TM87
  (359, 35900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 70),
  -- Absol - Substitute - TM90
  (359, 35900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 71),
  -- Absol - Cut - HM01
  (359, 35900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 72),
  -- Absol - Strength - HM04
  (359, 35900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 73),
  -- Absol - Rock Smash - HM06
  (359, 35900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 74),
  -- Absol - Double-Edge - Egg
  (359, 35900, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Absol - Substitute - Egg
  (359, 35900, 164, 9, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Absol - Curse - Egg
  (359, 35900, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Absol - Feint Attack - Egg
  (359, 35900, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Absol - Mean Look - Egg
  (359, 35900, 212, 9, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Absol - Baton Pass - Egg
  (359, 35900, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Absol - Magic Coat - Egg
  (359, 35900, 277, 9, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Absol - Assurance - Egg
  (359, 35900, 372, 9, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Absol - Me First - Egg
  (359, 35900, 382, 9, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Absol - Punishment - Egg
  (359, 35900, 386, 9, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Absol - Sucker Punch - Egg
  (359, 35900, 389, 9, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Absol - Zen Headbutt - Egg
  (359, 35900, 428, 9, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Absol - Swift - Tutor
  (359, 35900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Absol - Snore - Tutor
  (359, 35900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Absol - Spite - Tutor
  (359, 35900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Absol - Mud-Slap - Tutor
  (359, 35900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Absol - Icy Wind - Tutor
  (359, 35900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 91),
  -- Absol - Fury Cutter - Tutor
  (359, 35900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 92),
  -- Absol - Superpower - Tutor
  (359, 35900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 93),
  -- Absol - Knock Off - Tutor
  (359, 35900, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 94),
  -- Absol - Bounce - Tutor
  (359, 35900, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 95),
  -- Absol - Sucker Punch - Tutor
  (359, 35900, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 96),
  -- Absol - Zen Headbutt - Tutor
  (359, 35900, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 97),
  -- Wynaut - Splash - Level 1
  (360, 36000, 150, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wynaut - Charm - Level 1
  (360, 36000, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wynaut - Encore - Level 1
  (360, 36000, 227, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wynaut - Counter - Level 15
  (360, 36000, 68, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wynaut - Destiny Bond - Level 15
  (360, 36000, 194, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wynaut - Safeguard - Level 15
  (360, 36000, 219, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wynaut - Mirror Coat - Level 15
  (360, 36000, 243, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Snorunt - Leer - Level 1
  (361, 36100, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Double Team - Level 4
  (361, 36100, 104, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Snorunt - Bite - Level 10
  (361, 36100, 44, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Icy Wind - Level 13
  (361, 36100, 196, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snorunt - Headbutt - Level 19
  (361, 36100, 29, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Snorunt - Protect - Level 22
  (361, 36100, 182, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Snorunt - Ice Fang - Level 28
  (361, 36100, 423, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorunt - Crunch - Level 31
  (361, 36100, 242, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snorunt - Ice Shard - Level 37
  (361, 36100, 420, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Snorunt - Hail - Level 40
  (361, 36100, 258, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Snorunt - Blizzard - Level 46
  (361, 36100, 59, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snorunt - Water Pulse - TM03
  (361, 36100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Snorunt - Toxic - TM06
  (361, 36100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Snorunt - Hail - TM07
  (361, 36100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Snorunt - Hidden Power - TM10
  (361, 36100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Snorunt - Ice Beam - TM13
  (361, 36100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Snorunt - Blizzard - TM14
  (361, 36100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Snorunt - Light Screen - TM16
  (361, 36100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 19),
  -- Snorunt - Protect - TM17
  (361, 36100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Snorunt - Rain Dance - TM18
  (361, 36100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Snorunt - Safeguard - TM20
  (361, 36100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Snorunt - Frustration - TM21
  (361, 36100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Snorunt - Return - TM27
  (361, 36100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Snorunt - Shadow Ball - TM30
  (361, 36100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 25),
  -- Snorunt - Double Team - TM32
  (361, 36100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Snorunt - Facade - TM42
  (361, 36100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Snorunt - Secret Power - TM43
  (361, 36100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Snorunt - Rest - TM44
  (361, 36100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Snorunt - Attract - TM45
  (361, 36100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Snorunt - Endure - TM58
  (361, 36100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Snorunt - Flash - TM70
  (361, 36100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 32),
  -- Snorunt - Avalanche - TM72
  (361, 36100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 33),
  -- Snorunt - Captivate - TM78
  (361, 36100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Snorunt - Sleep Talk - TM82
  (361, 36100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Snorunt - Natural Gift - TM83
  (361, 36100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Snorunt - Swagger - TM87
  (361, 36100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Snorunt - Substitute - TM90
  (361, 36100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Snorunt - Disable - Egg
  (361, 36100, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snorunt - Bide - Egg
  (361, 36100, 117, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snorunt - Spikes - Egg
  (361, 36100, 191, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snorunt - Rollout - Egg
  (361, 36100, 205, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snorunt - Block - Egg
  (361, 36100, 335, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snorunt - Snore - Tutor
  (361, 36100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Snorunt - Spite - Tutor
  (361, 36100, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Snorunt - Icy Wind - Tutor
  (361, 36100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Snorunt - Rollout - Tutor
  (361, 36100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Glalie - Leer - Level 1
  (362, 36200, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Bite - Level 1
  (362, 36200, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Double Team - Level 1
  (362, 36200, 104, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glalie - Double Team - Level 4
  (362, 36200, 104, 9, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Glalie - Bite - Level 10
  (362, 36200, 44, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Glalie - Icy Wind - Level 13
  (362, 36200, 196, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Glalie - Headbutt - Level 19
  (362, 36200, 29, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Glalie - Protect - Level 22
  (362, 36200, 182, 9, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Glalie - Ice Fang - Level 28
  (362, 36200, 423, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Glalie - Crunch - Level 31
  (362, 36200, 242, 9, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Glalie - Ice Beam - Level 37
  (362, 36200, 58, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Glalie - Hail - Level 40
  (362, 36200, 258, 9, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Glalie - Blizzard - Level 51
  (362, 36200, 59, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Glalie - Sheer Cold - Level 59
  (362, 36200, 329, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Glalie - Water Pulse - TM03
  (362, 36200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Glalie - Toxic - TM06
  (362, 36200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Glalie - Hail - TM07
  (362, 36200, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Glalie - Hidden Power - TM10
  (362, 36200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Glalie - Taunt - TM12
  (362, 36200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Glalie - Ice Beam - TM13
  (362, 36200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Glalie - Blizzard - TM14
  (362, 36200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Glalie - Hyper Beam - TM15
  (362, 36200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Glalie - Light Screen - TM16
  (362, 36200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Glalie - Protect - TM17
  (362, 36200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Glalie - Rain Dance - TM18
  (362, 36200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Glalie - Safeguard - TM20
  (362, 36200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Glalie - Frustration - TM21
  (362, 36200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Glalie - Earthquake - TM26
  (362, 36200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Glalie - Return - TM27
  (362, 36200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Glalie - Shadow Ball - TM30
  (362, 36200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Glalie - Double Team - TM32
  (362, 36200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Glalie - Torment - TM41
  (362, 36200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 33),
  -- Glalie - Facade - TM42
  (362, 36200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Glalie - Secret Power - TM43
  (362, 36200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Glalie - Rest - TM44
  (362, 36200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Glalie - Attract - TM45
  (362, 36200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Glalie - Endure - TM58
  (362, 36200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Glalie - Explosion - TM64
  (362, 36200, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 39),
  -- Glalie - Payback - TM66
  (362, 36200, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 40),
  -- Glalie - Giga Impact - TM68
  (362, 36200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Glalie - Flash - TM70
  (362, 36200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 42),
  -- Glalie - Avalanche - TM72
  (362, 36200, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 43),
  -- Glalie - Gyro Ball - TM74
  (362, 36200, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 44),
  -- Glalie - Captivate - TM78
  (362, 36200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Glalie - Dark Pulse - TM79
  (362, 36200, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 46),
  -- Glalie - Sleep Talk - TM82
  (362, 36200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Glalie - Natural Gift - TM83
  (362, 36200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Glalie - Swagger - TM87
  (362, 36200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Glalie - Substitute - TM90
  (362, 36200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Glalie - Snore - Tutor
  (362, 36200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Glalie - Spite - Tutor
  (362, 36200, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Glalie - Icy Wind - Tutor
  (362, 36200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Glalie - Rollout - Tutor
  (362, 36200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Glalie - Signal Beam - Tutor
  (362, 36200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Glalie - Iron Head - Tutor
  (362, 36200, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Spheal - Growl - Level 1
  (363, 36300, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spheal - Water Gun - Level 1
  (363, 36300, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spheal - Defense Curl - Level 1
  (363, 36300, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spheal - Powder Snow - Level 1
  (363, 36300, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spheal - Encore - Level 7
  (363, 36300, 227, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Spheal - Ice Ball - Level 13
  (363, 36300, 301, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Spheal - Body Slam - Level 19
  (363, 36300, 34, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spheal - Aurora Beam - Level 25
  (363, 36300, 62, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Spheal - Hail - Level 31
  (363, 36300, 258, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Spheal - Rest - Level 37
  (363, 36300, 156, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Spheal - Snore - Level 37
  (363, 36300, 173, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spheal - Blizzard - Level 43
  (363, 36300, 59, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spheal - Sheer Cold - Level 49
  (363, 36300, 329, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spheal - Water Pulse - TM03
  (363, 36300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Spheal - Toxic - TM06
  (363, 36300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Spheal - Hail - TM07
  (363, 36300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Spheal - Hidden Power - TM10
  (363, 36300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Spheal - Ice Beam - TM13
  (363, 36300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Spheal - Blizzard - TM14
  (363, 36300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Spheal - Protect - TM17
  (363, 36300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Spheal - Rain Dance - TM18
  (363, 36300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Spheal - Frustration - TM21
  (363, 36300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Spheal - Iron Tail - TM23
  (363, 36300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Spheal - Earthquake - TM26
  (363, 36300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Spheal - Return - TM27
  (363, 36300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Spheal - Double Team - TM32
  (363, 36300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Spheal - Rock Tomb - TM39
  (363, 36300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 27),
  -- Spheal - Facade - TM42
  (363, 36300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Spheal - Secret Power - TM43
  (363, 36300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Spheal - Rest - TM44
  (363, 36300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Spheal - Attract - TM45
  (363, 36300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Spheal - Brine - TM55
  (363, 36300, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 32),
  -- Spheal - Endure - TM58
  (363, 36300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Spheal - Captivate - TM78
  (363, 36300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Spheal - Rock Slide - TM80
  (363, 36300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 35),
  -- Spheal - Sleep Talk - TM82
  (363, 36300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Spheal - Natural Gift - TM83
  (363, 36300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Spheal - Swagger - TM87
  (363, 36300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Spheal - Substitute - TM90
  (363, 36300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Spheal - Surf - HM03
  (363, 36300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 40),
  -- Spheal - Strength - HM04
  (363, 36300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 41),
  -- Spheal - Defog - HM05
  (363, 36300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 42),
  -- Spheal - Rock Smash - HM06
  (363, 36300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Spheal - Waterfall - HM07
  (363, 36300, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Spheal - Fissure - Egg
  (363, 36300, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spheal - Rock Slide - Egg
  (363, 36300, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spheal - Curse - Egg
  (363, 36300, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spheal - Stockpile - Egg
  (363, 36300, 254, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spheal - Spit Up - Egg
  (363, 36300, 255, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spheal - Swallow - Egg
  (363, 36300, 256, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spheal - Yawn - Egg
  (363, 36300, 281, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spheal - Signal Beam - Egg
  (363, 36300, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spheal - Water Sport - Egg
  (363, 36300, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spheal - Snore - Tutor
  (363, 36300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Spheal - Mud-Slap - Tutor
  (363, 36300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Spheal - Icy Wind - Tutor
  (363, 36300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Spheal - Rollout - Tutor
  (363, 36300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Spheal - Dive - Tutor
  (363, 36300, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Spheal - Signal Beam - Tutor
  (363, 36300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Spheal - Aqua Tail - Tutor
  (363, 36300, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Sealeo - Growl - Level 1
  (364, 36400, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sealeo - Water Gun - Level 1
  (364, 36400, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sealeo - Powder Snow - Level 1
  (364, 36400, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sealeo - Encore - Level 1
  (364, 36400, 227, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sealeo - Encore - Level 7
  (364, 36400, 227, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sealeo - Ice Ball - Level 13
  (364, 36400, 301, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sealeo - Body Slam - Level 19
  (364, 36400, 34, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sealeo - Aurora Beam - Level 25
  (364, 36400, 62, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sealeo - Hail - Level 31
  (364, 36400, 258, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Sealeo - Swagger - Level 32
  (364, 36400, 207, 9, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Sealeo - Rest - Level 39
  (364, 36400, 156, 9, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Sealeo - Snore - Level 39
  (364, 36400, 173, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Sealeo - Blizzard - Level 47
  (364, 36400, 59, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Sealeo - Sheer Cold - Level 55
  (364, 36400, 329, 9, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Sealeo - Water Pulse - TM03
  (364, 36400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Sealeo - Roar - TM05
  (364, 36400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Sealeo - Toxic - TM06
  (364, 36400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Sealeo - Hail - TM07
  (364, 36400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Sealeo - Hidden Power - TM10
  (364, 36400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Sealeo - Ice Beam - TM13
  (364, 36400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Sealeo - Blizzard - TM14
  (364, 36400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Sealeo - Protect - TM17
  (364, 36400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Sealeo - Rain Dance - TM18
  (364, 36400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Sealeo - Frustration - TM21
  (364, 36400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Sealeo - Iron Tail - TM23
  (364, 36400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Sealeo - Earthquake - TM26
  (364, 36400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Sealeo - Return - TM27
  (364, 36400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Sealeo - Double Team - TM32
  (364, 36400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Sealeo - Rock Tomb - TM39
  (364, 36400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Sealeo - Facade - TM42
  (364, 36400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Sealeo - Secret Power - TM43
  (364, 36400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Sealeo - Rest - TM44
  (364, 36400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Sealeo - Attract - TM45
  (364, 36400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Sealeo - Brine - TM55
  (364, 36400, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 34),
  -- Sealeo - Endure - TM58
  (364, 36400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Sealeo - Captivate - TM78
  (364, 36400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Sealeo - Rock Slide - TM80
  (364, 36400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 37),
  -- Sealeo - Sleep Talk - TM82
  (364, 36400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Sealeo - Natural Gift - TM83
  (364, 36400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Sealeo - Swagger - TM87
  (364, 36400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Sealeo - Substitute - TM90
  (364, 36400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Sealeo - Surf - HM03
  (364, 36400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 42),
  -- Sealeo - Strength - HM04
  (364, 36400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Sealeo - Defog - HM05
  (364, 36400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Sealeo - Rock Smash - HM06
  (364, 36400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Sealeo - Waterfall - HM07
  (364, 36400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 46),
  -- Sealeo - Snore - Tutor
  (364, 36400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Sealeo - Mud-Slap - Tutor
  (364, 36400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Sealeo - Icy Wind - Tutor
  (364, 36400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Sealeo - Rollout - Tutor
  (364, 36400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Sealeo - Dive - Tutor
  (364, 36400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Sealeo - Signal Beam - Tutor
  (364, 36400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Sealeo - Aqua Tail - Tutor
  (364, 36400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Walrein - Growl - Level 1
  (365, 36500, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walrein - Water Gun - Level 1
  (365, 36500, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Walrein - Powder Snow - Level 1
  (365, 36500, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Walrein - Encore - Level 1
  (365, 36500, 227, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Walrein - Crunch - Level 1
  (365, 36500, 242, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Walrein - Encore - Level 7
  (365, 36500, 227, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Walrein - Ice Ball - Level 13
  (365, 36500, 301, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Walrein - Body Slam - Level 19
  (365, 36500, 34, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Walrein - Aurora Beam - Level 25
  (365, 36500, 62, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Walrein - Hail - Level 31
  (365, 36500, 258, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Walrein - Swagger - Level 32
  (365, 36500, 207, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Walrein - Rest - Level 39
  (365, 36500, 156, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Walrein - Snore - Level 39
  (365, 36500, 173, 9, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Walrein - Ice Fang - Level 44
  (365, 36500, 423, 9, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Walrein - Blizzard - Level 52
  (365, 36500, 59, 9, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Walrein - Sheer Cold - Level 65
  (365, 36500, 329, 9, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Walrein - Water Pulse - TM03
  (365, 36500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Walrein - Roar - TM05
  (365, 36500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Walrein - Toxic - TM06
  (365, 36500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Walrein - Hail - TM07
  (365, 36500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 20),
  -- Walrein - Hidden Power - TM10
  (365, 36500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Walrein - Ice Beam - TM13
  (365, 36500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Walrein - Blizzard - TM14
  (365, 36500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Walrein - Hyper Beam - TM15
  (365, 36500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Walrein - Protect - TM17
  (365, 36500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Walrein - Rain Dance - TM18
  (365, 36500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Walrein - Frustration - TM21
  (365, 36500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Walrein - Iron Tail - TM23
  (365, 36500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Walrein - Earthquake - TM26
  (365, 36500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Walrein - Return - TM27
  (365, 36500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Walrein - Double Team - TM32
  (365, 36500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Walrein - Rock Tomb - TM39
  (365, 36500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 32),
  -- Walrein - Facade - TM42
  (365, 36500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Walrein - Secret Power - TM43
  (365, 36500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Walrein - Rest - TM44
  (365, 36500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Walrein - Attract - TM45
  (365, 36500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Walrein - Brine - TM55
  (365, 36500, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 37),
  -- Walrein - Endure - TM58
  (365, 36500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Walrein - Giga Impact - TM68
  (365, 36500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Walrein - Avalanche - TM72
  (365, 36500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 40),
  -- Walrein - Captivate - TM78
  (365, 36500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Walrein - Rock Slide - TM80
  (365, 36500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 42),
  -- Walrein - Sleep Talk - TM82
  (365, 36500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Walrein - Natural Gift - TM83
  (365, 36500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Walrein - Swagger - TM87
  (365, 36500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Walrein - Substitute - TM90
  (365, 36500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Walrein - Surf - HM03
  (365, 36500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 47),
  -- Walrein - Strength - HM04
  (365, 36500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 48),
  -- Walrein - Defog - HM05
  (365, 36500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Walrein - Rock Smash - HM06
  (365, 36500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Walrein - Waterfall - HM07
  (365, 36500, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 51),
  -- Walrein - Snore - Tutor
  (365, 36500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Walrein - Mud-Slap - Tutor
  (365, 36500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Walrein - Icy Wind - Tutor
  (365, 36500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Walrein - Rollout - Tutor
  (365, 36500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Walrein - Fury Cutter - Tutor
  (365, 36500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Walrein - Dive - Tutor
  (365, 36500, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Walrein - Signal Beam - Tutor
  (365, 36500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Walrein - Aqua Tail - Tutor
  (365, 36500, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Walrein - Iron Head - Tutor
  (365, 36500, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Clamperl - Water Gun - Level 1
  (366, 36600, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clamperl - Clamp - Level 1
  (366, 36600, 128, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clamperl - Whirlpool - Level 1
  (366, 36600, 250, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clamperl - Iron Defense - Level 1
  (366, 36600, 334, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clamperl - Water Pulse - TM03
  (366, 36600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 5),
  -- Clamperl - Toxic - TM06
  (366, 36600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 6),
  -- Clamperl - Hail - TM07
  (366, 36600, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 7),
  -- Clamperl - Hidden Power - TM10
  (366, 36600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 8),
  -- Clamperl - Ice Beam - TM13
  (366, 36600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 9),
  -- Clamperl - Blizzard - TM14
  (366, 36600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 10),
  -- Clamperl - Protect - TM17
  (366, 36600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 11),
  -- Clamperl - Rain Dance - TM18
  (366, 36600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 12),
  -- Clamperl - Frustration - TM21
  (366, 36600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 13),
  -- Clamperl - Return - TM27
  (366, 36600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 14),
  -- Clamperl - Double Team - TM32
  (366, 36600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 15),
  -- Clamperl - Facade - TM42
  (366, 36600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 16),
  -- Clamperl - Secret Power - TM43
  (366, 36600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 17),
  -- Clamperl - Rest - TM44
  (366, 36600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 18),
  -- Clamperl - Attract - TM45
  (366, 36600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 19),
  -- Clamperl - Brine - TM55
  (366, 36600, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 20),
  -- Clamperl - Endure - TM58
  (366, 36600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 21),
  -- Clamperl - Captivate - TM78
  (366, 36600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 22),
  -- Clamperl - Sleep Talk - TM82
  (366, 36600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 23),
  -- Clamperl - Natural Gift - TM83
  (366, 36600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 24),
  -- Clamperl - Swagger - TM87
  (366, 36600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 25),
  -- Clamperl - Substitute - TM90
  (366, 36600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 26),
  -- Clamperl - Surf - HM03
  (366, 36600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 27),
  -- Clamperl - Defog - HM05
  (366, 36600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 28),
  -- Clamperl - Waterfall - HM07
  (366, 36600, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 29),
  -- Clamperl - Body Slam - Egg
  (366, 36600, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Clamperl - Supersonic - Egg
  (366, 36600, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Clamperl - Confuse Ray - Egg
  (366, 36600, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Clamperl - Barrier - Egg
  (366, 36600, 112, 9, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Clamperl - Refresh - Egg
  (366, 36600, 287, 9, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Clamperl - Mud Sport - Egg
  (366, 36600, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Clamperl - Aqua Ring - Egg
  (366, 36600, 392, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Clamperl - Snore - Tutor
  (366, 36600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 37),
  -- Clamperl - Icy Wind - Tutor
  (366, 36600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 38),
  -- Clamperl - Dive - Tutor
  (366, 36600, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 39),
  -- Clamperl - Iron Defense - Tutor
  (366, 36600, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Huntail - Whirlpool - Level 1
  (367, 36700, 250, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Huntail - Bite - Level 6
  (367, 36700, 44, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Huntail - Screech - Level 10
  (367, 36700, 103, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Huntail - Water Pulse - Level 15
  (367, 36700, 352, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Huntail - Scary Face - Level 19
  (367, 36700, 184, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Huntail - Ice Fang - Level 24
  (367, 36700, 423, 9, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Huntail - Brine - Level 28
  (367, 36700, 362, 9, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Huntail - Baton Pass - Level 33
  (367, 36700, 226, 9, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Huntail - Dive - Level 37
  (367, 36700, 291, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Huntail - Crunch - Level 42
  (367, 36700, 242, 9, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Huntail - Aqua Tail - Level 46
  (367, 36700, 401, 9, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Huntail - Hydro Pump - Level 51
  (367, 36700, 56, 9, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Huntail - Water Pulse - TM03
  (367, 36700, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Huntail - Toxic - TM06
  (367, 36700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Huntail - Hail - TM07
  (367, 36700, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Huntail - Hidden Power - TM10
  (367, 36700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Huntail - Ice Beam - TM13
  (367, 36700, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Huntail - Blizzard - TM14
  (367, 36700, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Huntail - Hyper Beam - TM15
  (367, 36700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Huntail - Protect - TM17
  (367, 36700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Huntail - Rain Dance - TM18
  (367, 36700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Huntail - Frustration - TM21
  (367, 36700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Huntail - Return - TM27
  (367, 36700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Huntail - Double Team - TM32
  (367, 36700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 24),
  -- Huntail - Rock Tomb - TM39
  (367, 36700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 25),
  -- Huntail - Facade - TM42
  (367, 36700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Huntail - Secret Power - TM43
  (367, 36700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Huntail - Rest - TM44
  (367, 36700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Huntail - Attract - TM45
  (367, 36700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Huntail - Snatch - TM49
  (367, 36700, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 30),
  -- Huntail - Brine - TM55
  (367, 36700, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 31),
  -- Huntail - Endure - TM58
  (367, 36700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Huntail - Giga Impact - TM68
  (367, 36700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 33),
  -- Huntail - Captivate - TM78
  (367, 36700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Huntail - Sleep Talk - TM82
  (367, 36700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Huntail - Natural Gift - TM83
  (367, 36700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Huntail - Swagger - TM87
  (367, 36700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Huntail - Substitute - TM90
  (367, 36700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Huntail - Surf - HM03
  (367, 36700, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 39),
  -- Huntail - Defog - HM05
  (367, 36700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 40),
  -- Huntail - Waterfall - HM07
  (367, 36700, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 41),
  -- Huntail - Swift - Tutor
  (367, 36700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Huntail - Snore - Tutor
  (367, 36700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Huntail - Mud-Slap - Tutor
  (367, 36700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Huntail - Icy Wind - Tutor
  (367, 36700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Huntail - Dive - Tutor
  (367, 36700, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Huntail - Bounce - Tutor
  (367, 36700, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Huntail - Sucker Punch - Tutor
  (367, 36700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Huntail - Aqua Tail - Tutor
  (367, 36700, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Gorebyss - Whirlpool - Level 1
  (368, 36800, 250, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gorebyss - Confusion - Level 6
  (368, 36800, 93, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gorebyss - Agility - Level 10
  (368, 36800, 97, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Gorebyss - Water Pulse - Level 15
  (368, 36800, 352, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gorebyss - Amnesia - Level 19
  (368, 36800, 133, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Gorebyss - Aqua Ring - Level 24
  (368, 36800, 392, 9, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Gorebyss - Captivate - Level 28
  (368, 36800, 445, 9, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gorebyss - Baton Pass - Level 33
  (368, 36800, 226, 9, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gorebyss - Dive - Level 37
  (368, 36800, 291, 9, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Gorebyss - Psychic - Level 42
  (368, 36800, 94, 9, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Gorebyss - Aqua Tail - Level 46
  (368, 36800, 401, 9, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Gorebyss - Hydro Pump - Level 51
  (368, 36800, 56, 9, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Gorebyss - Water Pulse - TM03
  (368, 36800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Gorebyss - Toxic - TM06
  (368, 36800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Gorebyss - Hail - TM07
  (368, 36800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 15),
  -- Gorebyss - Hidden Power - TM10
  (368, 36800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Gorebyss - Ice Beam - TM13
  (368, 36800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Gorebyss - Blizzard - TM14
  (368, 36800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Gorebyss - Hyper Beam - TM15
  (368, 36800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Gorebyss - Protect - TM17
  (368, 36800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Gorebyss - Rain Dance - TM18
  (368, 36800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Gorebyss - Safeguard - TM20
  (368, 36800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Gorebyss - Frustration - TM21
  (368, 36800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Gorebyss - Return - TM27
  (368, 36800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Gorebyss - Psychic - TM29
  (368, 36800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 25),
  -- Gorebyss - Shadow Ball - TM30
  (368, 36800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 26),
  -- Gorebyss - Double Team - TM32
  (368, 36800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Gorebyss - Facade - TM42
  (368, 36800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Gorebyss - Secret Power - TM43
  (368, 36800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Gorebyss - Rest - TM44
  (368, 36800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Gorebyss - Attract - TM45
  (368, 36800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Gorebyss - Brine - TM55
  (368, 36800, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 32),
  -- Gorebyss - Endure - TM58
  (368, 36800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Gorebyss - Giga Impact - TM68
  (368, 36800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 34),
  -- Gorebyss - Psych Up - TM77
  (368, 36800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 35),
  -- Gorebyss - Captivate - TM78
  (368, 36800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Gorebyss - Sleep Talk - TM82
  (368, 36800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Gorebyss - Natural Gift - TM83
  (368, 36800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Gorebyss - Swagger - TM87
  (368, 36800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Gorebyss - Substitute - TM90
  (368, 36800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Gorebyss - Surf - HM03
  (368, 36800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 41),
  -- Gorebyss - Defog - HM05
  (368, 36800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 42),
  -- Gorebyss - Waterfall - HM07
  (368, 36800, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 43),
  -- Gorebyss - Swift - Tutor
  (368, 36800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Gorebyss - Snore - Tutor
  (368, 36800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Gorebyss - Mud-Slap - Tutor
  (368, 36800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Gorebyss - Icy Wind - Tutor
  (368, 36800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Gorebyss - Dive - Tutor
  (368, 36800, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Gorebyss - Signal Beam - Tutor
  (368, 36800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Gorebyss - Bounce - Tutor
  (368, 36800, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Gorebyss - Aqua Tail - Tutor
  (368, 36800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Relicanth - Tackle - Level 1
  (369, 36900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Relicanth - Harden - Level 1
  (369, 36900, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Relicanth - Water Gun - Level 8
  (369, 36900, 55, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Relicanth - Rock Tomb - Level 15
  (369, 36900, 317, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Relicanth - Yawn - Level 22
  (369, 36900, 281, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Relicanth - Take Down - Level 29
  (369, 36900, 36, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Relicanth - Mud Sport - Level 36
  (369, 36900, 300, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Relicanth - Ancient Power - Level 43
  (369, 36900, 246, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Relicanth - Double-Edge - Level 50
  (369, 36900, 38, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Relicanth - Dive - Level 57
  (369, 36900, 291, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Relicanth - Rest - Level 64
  (369, 36900, 156, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Relicanth - Hydro Pump - Level 71
  (369, 36900, 56, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Relicanth - Head Smash - Level 78
  (369, 36900, 457, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Relicanth - Water Pulse - TM03
  (369, 36900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Relicanth - Calm Mind - TM04
  (369, 36900, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Relicanth - Toxic - TM06
  (369, 36900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Relicanth - Hail - TM07
  (369, 36900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Relicanth - Hidden Power - TM10
  (369, 36900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Relicanth - Ice Beam - TM13
  (369, 36900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Relicanth - Blizzard - TM14
  (369, 36900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Relicanth - Hyper Beam - TM15
  (369, 36900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Relicanth - Protect - TM17
  (369, 36900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Relicanth - Rain Dance - TM18
  (369, 36900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Relicanth - Safeguard - TM20
  (369, 36900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Relicanth - Frustration - TM21
  (369, 36900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Relicanth - Earthquake - TM26
  (369, 36900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Relicanth - Return - TM27
  (369, 36900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Relicanth - Double Team - TM32
  (369, 36900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Relicanth - Sandstorm - TM37
  (369, 36900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Relicanth - Rock Tomb - TM39
  (369, 36900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Relicanth - Facade - TM42
  (369, 36900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Relicanth - Secret Power - TM43
  (369, 36900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Relicanth - Rest - TM44
  (369, 36900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Relicanth - Attract - TM45
  (369, 36900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Relicanth - Brine - TM55
  (369, 36900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 35),
  -- Relicanth - Endure - TM58
  (369, 36900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Relicanth - Giga Impact - TM68
  (369, 36900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 37),
  -- Relicanth - Rock Polish - TM69
  (369, 36900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 38),
  -- Relicanth - Stone Edge - TM71
  (369, 36900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 39),
  -- Relicanth - Stealth Rock - TM76
  (369, 36900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 40),
  -- Relicanth - Psych Up - TM77
  (369, 36900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 41),
  -- Relicanth - Captivate - TM78
  (369, 36900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Relicanth - Rock Slide - TM80
  (369, 36900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 43),
  -- Relicanth - Sleep Talk - TM82
  (369, 36900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Relicanth - Natural Gift - TM83
  (369, 36900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Relicanth - Swagger - TM87
  (369, 36900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Relicanth - Substitute - TM90
  (369, 36900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Relicanth - Surf - HM03
  (369, 36900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Relicanth - Defog - HM05
  (369, 36900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Relicanth - Rock Smash - HM06
  (369, 36900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Relicanth - Waterfall - HM07
  (369, 36900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 51),
  -- Relicanth - Skull Bash - Egg
  (369, 36900, 130, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Relicanth - Amnesia - Egg
  (369, 36900, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Relicanth - Rock Slide - Egg
  (369, 36900, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Relicanth - Snore - Egg
  (369, 36900, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Relicanth - Mud-Slap - Egg
  (369, 36900, 189, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Relicanth - Sleep Talk - Egg
  (369, 36900, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Relicanth - Magnitude - Egg
  (369, 36900, 222, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Relicanth - Water Sport - Egg
  (369, 36900, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Relicanth - Aqua Tail - Egg
  (369, 36900, 401, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Relicanth - Snore - Tutor
  (369, 36900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Relicanth - Mud-Slap - Tutor
  (369, 36900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Relicanth - Icy Wind - Tutor
  (369, 36900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Relicanth - Ancient Power - Tutor
  (369, 36900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Relicanth - Dive - Tutor
  (369, 36900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Relicanth - Bounce - Tutor
  (369, 36900, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Relicanth - Aqua Tail - Tutor
  (369, 36900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Relicanth - Earth Power - Tutor
  (369, 36900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Luvdisc - Tackle - Level 1
  (370, 37000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luvdisc - Charm - Level 4
  (370, 37000, 204, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Luvdisc - Water Gun - Level 7
  (370, 37000, 55, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Luvdisc - Agility - Level 9
  (370, 37000, 97, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Luvdisc - Take Down - Level 14
  (370, 37000, 36, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Luvdisc - Lucky Chant - Level 17
  (370, 37000, 381, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Luvdisc - Attract - Level 22
  (370, 37000, 213, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Luvdisc - Sweet Kiss - Level 27
  (370, 37000, 186, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Luvdisc - Water Pulse - Level 31
  (370, 37000, 352, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Luvdisc - Aqua Ring - Level 37
  (370, 37000, 392, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Luvdisc - Captivate - Level 40
  (370, 37000, 445, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Luvdisc - Flail - Level 46
  (370, 37000, 175, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Luvdisc - Safeguard - Level 51
  (370, 37000, 219, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Luvdisc - Water Pulse - TM03
  (370, 37000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Luvdisc - Toxic - TM06
  (370, 37000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Luvdisc - Hail - TM07
  (370, 37000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Luvdisc - Hidden Power - TM10
  (370, 37000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Luvdisc - Ice Beam - TM13
  (370, 37000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Luvdisc - Blizzard - TM14
  (370, 37000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Luvdisc - Protect - TM17
  (370, 37000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Luvdisc - Rain Dance - TM18
  (370, 37000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Luvdisc - Safeguard - TM20
  (370, 37000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 22),
  -- Luvdisc - Frustration - TM21
  (370, 37000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Luvdisc - Return - TM27
  (370, 37000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Luvdisc - Double Team - TM32
  (370, 37000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Luvdisc - Facade - TM42
  (370, 37000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Luvdisc - Secret Power - TM43
  (370, 37000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Luvdisc - Rest - TM44
  (370, 37000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Luvdisc - Attract - TM45
  (370, 37000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Luvdisc - Brine - TM55
  (370, 37000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 30),
  -- Luvdisc - Endure - TM58
  (370, 37000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Luvdisc - Psych Up - TM77
  (370, 37000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 32),
  -- Luvdisc - Captivate - TM78
  (370, 37000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 33),
  -- Luvdisc - Sleep Talk - TM82
  (370, 37000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 34),
  -- Luvdisc - Natural Gift - TM83
  (370, 37000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 35),
  -- Luvdisc - Swagger - TM87
  (370, 37000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 36),
  -- Luvdisc - Substitute - TM90
  (370, 37000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 37),
  -- Luvdisc - Surf - HM03
  (370, 37000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 38),
  -- Luvdisc - Defog - HM05
  (370, 37000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 39),
  -- Luvdisc - Waterfall - HM07
  (370, 37000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 40),
  -- Luvdisc - Supersonic - Egg
  (370, 37000, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Luvdisc - Splash - Egg
  (370, 37000, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Luvdisc - Mud Sport - Egg
  (370, 37000, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Luvdisc - Water Sport - Egg
  (370, 37000, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Luvdisc - Aqua Ring - Egg
  (370, 37000, 392, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Luvdisc - Captivate - Egg
  (370, 37000, 445, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Luvdisc - Swift - Tutor
  (370, 37000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Luvdisc - Snore - Tutor
  (370, 37000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Luvdisc - Icy Wind - Tutor
  (370, 37000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Luvdisc - Dive - Tutor
  (370, 37000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Luvdisc - Bounce - Tutor
  (370, 37000, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Bagon - Rage - Level 1
  (371, 37100, 99, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Bite - Level 5
  (371, 37100, 44, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bagon - Leer - Level 10
  (371, 37100, 43, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Bagon - Headbutt - Level 16
  (371, 37100, 29, 9, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Bagon - Focus Energy - Level 20
  (371, 37100, 116, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Bagon - Ember - Level 25
  (371, 37100, 52, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Bagon - Dragon Breath - Level 31
  (371, 37100, 225, 9, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Bagon - Zen Headbutt - Level 35
  (371, 37100, 428, 9, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Bagon - Scary Face - Level 40
  (371, 37100, 184, 9, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Bagon - Crunch - Level 46
  (371, 37100, 242, 9, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Bagon - Dragon Claw - Level 50
  (371, 37100, 337, 9, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Bagon - Double-Edge - Level 55
  (371, 37100, 38, 9, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Bagon - Dragon Claw - TM02
  (371, 37100, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 13),
  -- Bagon - Roar - TM05
  (371, 37100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Bagon - Toxic - TM06
  (371, 37100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Bagon - Hidden Power - TM10
  (371, 37100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Bagon - Sunny Day - TM11
  (371, 37100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Bagon - Protect - TM17
  (371, 37100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Bagon - Rain Dance - TM18
  (371, 37100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Bagon - Frustration - TM21
  (371, 37100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Bagon - Return - TM27
  (371, 37100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 21),
  -- Bagon - Brick Break - TM31
  (371, 37100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 22),
  -- Bagon - Double Team - TM32
  (371, 37100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Bagon - Flamethrower - TM35
  (371, 37100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 24),
  -- Bagon - Fire Blast - TM38
  (371, 37100, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 25),
  -- Bagon - Rock Tomb - TM39
  (371, 37100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 26),
  -- Bagon - Aerial Ace - TM40
  (371, 37100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 27),
  -- Bagon - Facade - TM42
  (371, 37100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Bagon - Secret Power - TM43
  (371, 37100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Bagon - Rest - TM44
  (371, 37100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Bagon - Attract - TM45
  (371, 37100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Bagon - Endure - TM58
  (371, 37100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Bagon - Dragon Pulse - TM59
  (371, 37100, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 33),
  -- Bagon - Shadow Claw - TM65
  (371, 37100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 34),
  -- Bagon - Captivate - TM78
  (371, 37100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Bagon - Rock Slide - TM80
  (371, 37100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 36),
  -- Bagon - Sleep Talk - TM82
  (371, 37100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Bagon - Natural Gift - TM83
  (371, 37100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Bagon - Swagger - TM87
  (371, 37100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 39),
  -- Bagon - Substitute - TM90
  (371, 37100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Bagon - Cut - HM01
  (371, 37100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 41),
  -- Bagon - Strength - HM04
  (371, 37100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 42),
  -- Bagon - Rock Smash - HM06
  (371, 37100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 43),
  -- Bagon - Thrash - Egg
  (371, 37100, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bagon - Hydro Pump - Egg
  (371, 37100, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bagon - Dragon Rage - Egg
  (371, 37100, 82, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bagon - Twister - Egg
  (371, 37100, 239, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bagon - Dragon Dance - Egg
  (371, 37100, 349, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bagon - Dragon Rush - Egg
  (371, 37100, 407, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bagon - Shadow Claw - Egg
  (371, 37100, 421, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bagon - Fire Fang - Egg
  (371, 37100, 424, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bagon - Snore - Tutor
  (371, 37100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Bagon - Mud-Slap - Tutor
  (371, 37100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Bagon - Outrage - Tutor
  (371, 37100, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Bagon - Fury Cutter - Tutor
  (371, 37100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Bagon - Twister - Tutor
  (371, 37100, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Bagon - Zen Headbutt - Tutor
  (371, 37100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Bagon - Draco Meteor - Tutor
  (371, 37100, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Shelgon - Headbutt - Level 1
  (372, 37200, 29, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Rage - Level 1
  (372, 37200, 99, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shelgon - Bite - Level 5
  (372, 37200, 44, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Shelgon - Leer - Level 10
  (372, 37200, 43, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Shelgon - Headbutt - Level 16
  (372, 37200, 29, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Shelgon - Focus Energy - Level 20
  (372, 37200, 116, 9, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Shelgon - Ember - Level 25
  (372, 37200, 52, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Shelgon - Protect - Level 30
  (372, 37200, 182, 9, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Shelgon - Dragon Breath - Level 32
  (372, 37200, 225, 9, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Shelgon - Zen Headbutt - Level 37
  (372, 37200, 428, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Shelgon - Scary Face - Level 43
  (372, 37200, 184, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Shelgon - Crunch - Level 50
  (372, 37200, 242, 9, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Shelgon - Dragon Claw - Level 55
  (372, 37200, 337, 9, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Shelgon - Double-Edge - Level 61
  (372, 37200, 38, 9, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Shelgon - Dragon Claw - TM02
  (372, 37200, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 17),
  -- Shelgon - Roar - TM05
  (372, 37200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Shelgon - Toxic - TM06
  (372, 37200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Shelgon - Hidden Power - TM10
  (372, 37200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Shelgon - Sunny Day - TM11
  (372, 37200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Shelgon - Protect - TM17
  (372, 37200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Shelgon - Rain Dance - TM18
  (372, 37200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Shelgon - Frustration - TM21
  (372, 37200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Shelgon - Return - TM27
  (372, 37200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Shelgon - Brick Break - TM31
  (372, 37200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Shelgon - Double Team - TM32
  (372, 37200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Shelgon - Flamethrower - TM35
  (372, 37200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 28),
  -- Shelgon - Fire Blast - TM38
  (372, 37200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 29),
  -- Shelgon - Rock Tomb - TM39
  (372, 37200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Shelgon - Aerial Ace - TM40
  (372, 37200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Shelgon - Facade - TM42
  (372, 37200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Shelgon - Secret Power - TM43
  (372, 37200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Shelgon - Rest - TM44
  (372, 37200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Shelgon - Attract - TM45
  (372, 37200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Shelgon - Endure - TM58
  (372, 37200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Shelgon - Dragon Pulse - TM59
  (372, 37200, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 37),
  -- Shelgon - Shadow Claw - TM65
  (372, 37200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 38),
  -- Shelgon - Captivate - TM78
  (372, 37200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Shelgon - Rock Slide - TM80
  (372, 37200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 40),
  -- Shelgon - Sleep Talk - TM82
  (372, 37200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Shelgon - Natural Gift - TM83
  (372, 37200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Shelgon - Swagger - TM87
  (372, 37200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Shelgon - Substitute - TM90
  (372, 37200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Shelgon - Cut - HM01
  (372, 37200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 45),
  -- Shelgon - Strength - HM04
  (372, 37200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 46),
  -- Shelgon - Rock Smash - HM06
  (372, 37200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Shelgon - Snore - Tutor
  (372, 37200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Shelgon - Mud-Slap - Tutor
  (372, 37200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Shelgon - Outrage - Tutor
  (372, 37200, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Shelgon - Rollout - Tutor
  (372, 37200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Shelgon - Fury Cutter - Tutor
  (372, 37200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Shelgon - Twister - Tutor
  (372, 37200, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Shelgon - Iron Defense - Tutor
  (372, 37200, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Shelgon - Zen Headbutt - Tutor
  (372, 37200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Shelgon - Draco Meteor - Tutor
  (372, 37200, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Salamence - Headbutt - Level 1
  (373, 37300, 29, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Rage - Level 1
  (373, 37300, 99, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Thunder Fang - Level 1
  (373, 37300, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salamence - Fire Fang - Level 1
  (373, 37300, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salamence - Bite - Level 5
  (373, 37300, 44, 9, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Salamence - Leer - Level 10
  (373, 37300, 43, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Salamence - Headbutt - Level 16
  (373, 37300, 29, 9, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Salamence - Focus Energy - Level 20
  (373, 37300, 116, 9, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Salamence - Ember - Level 25
  (373, 37300, 52, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Salamence - Protect - Level 30
  (373, 37300, 182, 9, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Salamence - Dragon Breath - Level 32
  (373, 37300, 225, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Salamence - Zen Headbutt - Level 37
  (373, 37300, 428, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Salamence - Scary Face - Level 43
  (373, 37300, 184, 9, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Salamence - Fly - Level 50
  (373, 37300, 19, 9, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Salamence - Crunch - Level 53
  (373, 37300, 242, 9, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Salamence - Dragon Claw - Level 61
  (373, 37300, 337, 9, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Salamence - Double-Edge - Level 70
  (373, 37300, 38, 9, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Salamence - Dragon Claw - TM02
  (373, 37300, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 20),
  -- Salamence - Roar - TM05
  (373, 37300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 21),
  -- Salamence - Toxic - TM06
  (373, 37300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 22),
  -- Salamence - Hidden Power - TM10
  (373, 37300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Salamence - Sunny Day - TM11
  (373, 37300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Salamence - Hyper Beam - TM15
  (373, 37300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Salamence - Protect - TM17
  (373, 37300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Salamence - Rain Dance - TM18
  (373, 37300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Salamence - Frustration - TM21
  (373, 37300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Salamence - Iron Tail - TM23
  (373, 37300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Salamence - Earthquake - TM26
  (373, 37300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Salamence - Return - TM27
  (373, 37300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Salamence - Brick Break - TM31
  (373, 37300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Salamence - Double Team - TM32
  (373, 37300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Salamence - Flamethrower - TM35
  (373, 37300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 34),
  -- Salamence - Fire Blast - TM38
  (373, 37300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Salamence - Rock Tomb - TM39
  (373, 37300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Salamence - Aerial Ace - TM40
  (373, 37300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Salamence - Facade - TM42
  (373, 37300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Salamence - Secret Power - TM43
  (373, 37300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Salamence - Rest - TM44
  (373, 37300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Salamence - Attract - TM45
  (373, 37300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Salamence - Steel Wing - TM47
  (373, 37300, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 42),
  -- Salamence - Roost - TM51
  (373, 37300, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 43),
  -- Salamence - Endure - TM58
  (373, 37300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Salamence - Dragon Pulse - TM59
  (373, 37300, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 45),
  -- Salamence - Shadow Claw - TM65
  (373, 37300, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 46),
  -- Salamence - Giga Impact - TM68
  (373, 37300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Salamence - Stone Edge - TM71
  (373, 37300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 48),
  -- Salamence - Captivate - TM78
  (373, 37300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Salamence - Rock Slide - TM80
  (373, 37300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Salamence - Sleep Talk - TM82
  (373, 37300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Salamence - Natural Gift - TM83
  (373, 37300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Salamence - Swagger - TM87
  (373, 37300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Salamence - Substitute - TM90
  (373, 37300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Salamence - Cut - HM01
  (373, 37300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 55),
  -- Salamence - Fly - HM02
  (373, 37300, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 56),
  -- Salamence - Strength - HM04
  (373, 37300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Salamence - Defog - HM05
  (373, 37300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 58),
  -- Salamence - Rock Smash - HM06
  (373, 37300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 59),
  -- Salamence - Swift - Tutor
  (373, 37300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Salamence - Snore - Tutor
  (373, 37300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Salamence - Mud-Slap - Tutor
  (373, 37300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Salamence - Outrage - Tutor
  (373, 37300, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Salamence - Rollout - Tutor
  (373, 37300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Salamence - Fury Cutter - Tutor
  (373, 37300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Salamence - Twister - Tutor
  (373, 37300, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Salamence - Heat Wave - Tutor
  (373, 37300, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Salamence - Air Cutter - Tutor
  (373, 37300, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Salamence - Aqua Tail - Tutor
  (373, 37300, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Salamence - Zen Headbutt - Tutor
  (373, 37300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Salamence - Draco Meteor - Tutor
  (373, 37300, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Salamence - Ominous Wind - Tutor
  (373, 37300, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Beldum - Take Down - Level 1
  (374, 37400, 36, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beldum - Iron Defense - Tutor
  (374, 37400, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 2),
  -- Beldum - Zen Headbutt - Tutor
  (374, 37400, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 3),
  -- Beldum - Iron Head - Tutor
  (374, 37400, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 4),
  -- Metang - Take Down - Level 1
  (375, 37500, 36, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Confusion - Level 1
  (375, 37500, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metang - Metal Claw - Level 1
  (375, 37500, 232, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metang - Magnet Rise - Level 1
  (375, 37500, 393, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metang - Confusion - Level 20
  (375, 37500, 93, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Metang - Metal Claw - Level 20
  (375, 37500, 232, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Metang - Scary Face - Level 24
  (375, 37500, 184, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Metang - Pursuit - Level 28
  (375, 37500, 228, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Metang - Bullet Punch - Level 32
  (375, 37500, 418, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Metang - Psychic - Level 36
  (375, 37500, 94, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Metang - Iron Defense - Level 40
  (375, 37500, 334, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Metang - Agility - Level 44
  (375, 37500, 97, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Metang - Meteor Mash - Level 48
  (375, 37500, 309, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Metang - Zen Headbutt - Level 52
  (375, 37500, 428, 9, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Metang - Hyper Beam - Level 56
  (375, 37500, 63, 9, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Metang - Toxic - TM06
  (375, 37500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Metang - Hidden Power - TM10
  (375, 37500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Metang - Sunny Day - TM11
  (375, 37500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Metang - Hyper Beam - TM15
  (375, 37500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Metang - Light Screen - TM16
  (375, 37500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Metang - Protect - TM17
  (375, 37500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Metang - Rain Dance - TM18
  (375, 37500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Metang - Frustration - TM21
  (375, 37500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Metang - Earthquake - TM26
  (375, 37500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Metang - Return - TM27
  (375, 37500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Metang - Psychic - TM29
  (375, 37500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 26),
  -- Metang - Shadow Ball - TM30
  (375, 37500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Metang - Brick Break - TM31
  (375, 37500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 28),
  -- Metang - Double Team - TM32
  (375, 37500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Metang - Reflect - TM33
  (375, 37500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Metang - Sludge Bomb - TM36
  (375, 37500, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 31),
  -- Metang - Sandstorm - TM37
  (375, 37500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 32),
  -- Metang - Rock Tomb - TM39
  (375, 37500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Metang - Aerial Ace - TM40
  (375, 37500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Metang - Facade - TM42
  (375, 37500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Metang - Secret Power - TM43
  (375, 37500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Metang - Rest - TM44
  (375, 37500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Metang - Endure - TM58
  (375, 37500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Metang - Explosion - TM64
  (375, 37500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 39),
  -- Metang - Rock Polish - TM69
  (375, 37500, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 40),
  -- Metang - Flash - TM70
  (375, 37500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Metang - Gyro Ball - TM74
  (375, 37500, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 42),
  -- Metang - Stealth Rock - TM76
  (375, 37500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 43),
  -- Metang - Psych Up - TM77
  (375, 37500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 44),
  -- Metang - Rock Slide - TM80
  (375, 37500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 45),
  -- Metang - Sleep Talk - TM82
  (375, 37500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Metang - Natural Gift - TM83
  (375, 37500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Metang - Grass Knot - TM86
  (375, 37500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 48),
  -- Metang - Swagger - TM87
  (375, 37500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Metang - Substitute - TM90
  (375, 37500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Metang - Flash Cannon - TM91
  (375, 37500, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 51),
  -- Metang - Cut - HM01
  (375, 37500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 52),
  -- Metang - Strength - HM04
  (375, 37500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 53),
  -- Metang - Rock Smash - HM06
  (375, 37500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 54),
  -- Metang - Ice Punch - Tutor
  (375, 37500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Metang - Thunder Punch - Tutor
  (375, 37500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Metang - Swift - Tutor
  (375, 37500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Metang - Snore - Tutor
  (375, 37500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Metang - Mud-Slap - Tutor
  (375, 37500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Metang - Icy Wind - Tutor
  (375, 37500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Metang - Rollout - Tutor
  (375, 37500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Metang - Fury Cutter - Tutor
  (375, 37500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Metang - Trick - Tutor
  (375, 37500, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Metang - Signal Beam - Tutor
  (375, 37500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Metang - Iron Defense - Tutor
  (375, 37500, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Metang - Magnet Rise - Tutor
  (375, 37500, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Metang - Zen Headbutt - Tutor
  (375, 37500, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Metang - Iron Head - Tutor
  (375, 37500, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Metagross - Take Down - Level 1
  (376, 37600, 36, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Magnet Rise - Level 1
  (376, 37600, 393, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Confusion - Level 20
  (376, 37600, 93, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Metagross - Metal Claw - Level 20
  (376, 37600, 232, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Metagross - Scary Face - Level 24
  (376, 37600, 184, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Metagross - Pursuit - Level 28
  (376, 37600, 228, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Metagross - Bullet Punch - Level 32
  (376, 37600, 418, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Metagross - Psychic - Level 36
  (376, 37600, 94, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Metagross - Iron Defense - Level 40
  (376, 37600, 334, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Metagross - Agility - Level 44
  (376, 37600, 97, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Metagross - Hammer Arm - Level 45
  (376, 37600, 359, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Metagross - Meteor Mash - Level 53
  (376, 37600, 309, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Metagross - Zen Headbutt - Level 62
  (376, 37600, 428, 9, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Metagross - Hyper Beam - Level 71
  (376, 37600, 63, 9, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Metagross - Toxic - TM06
  (376, 37600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Metagross - Hidden Power - TM10
  (376, 37600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Metagross - Sunny Day - TM11
  (376, 37600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Metagross - Hyper Beam - TM15
  (376, 37600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Metagross - Light Screen - TM16
  (376, 37600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Metagross - Protect - TM17
  (376, 37600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Metagross - Rain Dance - TM18
  (376, 37600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Metagross - Frustration - TM21
  (376, 37600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Metagross - Earthquake - TM26
  (376, 37600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Metagross - Return - TM27
  (376, 37600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Metagross - Psychic - TM29
  (376, 37600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 27),
  -- Metagross - Shadow Ball - TM30
  (376, 37600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Metagross - Brick Break - TM31
  (376, 37600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Metagross - Double Team - TM32
  (376, 37600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Metagross - Reflect - TM33
  (376, 37600, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 31),
  -- Metagross - Sludge Bomb - TM36
  (376, 37600, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 32),
  -- Metagross - Sandstorm - TM37
  (376, 37600, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 33),
  -- Metagross - Rock Tomb - TM39
  (376, 37600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Metagross - Aerial Ace - TM40
  (376, 37600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Metagross - Facade - TM42
  (376, 37600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Metagross - Secret Power - TM43
  (376, 37600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Metagross - Rest - TM44
  (376, 37600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Metagross - Endure - TM58
  (376, 37600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Metagross - Explosion - TM64
  (376, 37600, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 40),
  -- Metagross - Giga Impact - TM68
  (376, 37600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Metagross - Rock Polish - TM69
  (376, 37600, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 42),
  -- Metagross - Flash - TM70
  (376, 37600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 43),
  -- Metagross - Gyro Ball - TM74
  (376, 37600, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 44),
  -- Metagross - Stealth Rock - TM76
  (376, 37600, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 45),
  -- Metagross - Psych Up - TM77
  (376, 37600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 46),
  -- Metagross - Rock Slide - TM80
  (376, 37600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Metagross - Sleep Talk - TM82
  (376, 37600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Metagross - Natural Gift - TM83
  (376, 37600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Metagross - Grass Knot - TM86
  (376, 37600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 50),
  -- Metagross - Swagger - TM87
  (376, 37600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Metagross - Substitute - TM90
  (376, 37600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Metagross - Flash Cannon - TM91
  (376, 37600, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 53),
  -- Metagross - Cut - HM01
  (376, 37600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 54),
  -- Metagross - Strength - HM04
  (376, 37600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Metagross - Rock Smash - HM06
  (376, 37600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Metagross - Ice Punch - Tutor
  (376, 37600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Metagross - Thunder Punch - Tutor
  (376, 37600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Metagross - Swift - Tutor
  (376, 37600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Metagross - Snore - Tutor
  (376, 37600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Metagross - Mud-Slap - Tutor
  (376, 37600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Metagross - Icy Wind - Tutor
  (376, 37600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Metagross - Rollout - Tutor
  (376, 37600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Metagross - Fury Cutter - Tutor
  (376, 37600, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Metagross - Trick - Tutor
  (376, 37600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Metagross - Signal Beam - Tutor
  (376, 37600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Metagross - Iron Defense - Tutor
  (376, 37600, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Metagross - Magnet Rise - Tutor
  (376, 37600, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Metagross - Zen Headbutt - Tutor
  (376, 37600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Metagross - Iron Head - Tutor
  (376, 37600, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Regirock - Stomp - Level 1
  (377, 37700, 23, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regirock - Explosion - Level 1
  (377, 37700, 153, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regirock - Rock Throw - Level 9
  (377, 37700, 88, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Regirock - Curse - Level 17
  (377, 37700, 174, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Regirock - Superpower - Level 25
  (377, 37700, 276, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Regirock - Ancient Power - Level 33
  (377, 37700, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Regirock - Iron Defense - Level 41
  (377, 37700, 334, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Regirock - Charge Beam - Level 49
  (377, 37700, 451, 9, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Regirock - Lock-On - Level 57
  (377, 37700, 199, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Regirock - Zap Cannon - Level 65
  (377, 37700, 192, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Regirock - Stone Edge - Level 73
  (377, 37700, 444, 9, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Regirock - Hammer Arm - Level 81
  (377, 37700, 359, 9, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Regirock - Hyper Beam - Level 89
  (377, 37700, 63, 9, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Regirock - Focus Punch - TM01
  (377, 37700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Regirock - Toxic - TM06
  (377, 37700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Regirock - Hidden Power - TM10
  (377, 37700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Regirock - Sunny Day - TM11
  (377, 37700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Regirock - Hyper Beam - TM15
  (377, 37700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Regirock - Protect - TM17
  (377, 37700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Regirock - Safeguard - TM20
  (377, 37700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Regirock - Frustration - TM21
  (377, 37700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Regirock - Thunderbolt - TM24
  (377, 37700, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 22),
  -- Regirock - Thunder - TM25
  (377, 37700, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 23),
  -- Regirock - Earthquake - TM26
  (377, 37700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Regirock - Return - TM27
  (377, 37700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Regirock - Dig - TM28
  (377, 37700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Regirock - Brick Break - TM31
  (377, 37700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Regirock - Double Team - TM32
  (377, 37700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Regirock - Shock Wave - TM34
  (377, 37700, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Regirock - Sandstorm - TM37
  (377, 37700, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Regirock - Rock Tomb - TM39
  (377, 37700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Regirock - Facade - TM42
  (377, 37700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Regirock - Secret Power - TM43
  (377, 37700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Regirock - Rest - TM44
  (377, 37700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Regirock - Focus Blast - TM52
  (377, 37700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 35),
  -- Regirock - Fling - TM56
  (377, 37700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Regirock - Charge Beam - TM57
  (377, 37700, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 37),
  -- Regirock - Endure - TM58
  (377, 37700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Regirock - Drain Punch - TM60
  (377, 37700, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 39),
  -- Regirock - Explosion - TM64
  (377, 37700, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 40),
  -- Regirock - Giga Impact - TM68
  (377, 37700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Regirock - Rock Polish - TM69
  (377, 37700, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 42),
  -- Regirock - Stone Edge - TM71
  (377, 37700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 43),
  -- Regirock - Thunder Wave - TM73
  (377, 37700, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Regirock - Stealth Rock - TM76
  (377, 37700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 45),
  -- Regirock - Psych Up - TM77
  (377, 37700, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 46),
  -- Regirock - Rock Slide - TM80
  (377, 37700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Regirock - Sleep Talk - TM82
  (377, 37700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Regirock - Natural Gift - TM83
  (377, 37700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Regirock - Swagger - TM87
  (377, 37700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Regirock - Substitute - TM90
  (377, 37700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Regirock - Strength - HM04
  (377, 37700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Regirock - Rock Smash - HM06
  (377, 37700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Regirock - Rock Climb - HM08
  (377, 37700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Regirock - Fire Punch - Tutor
  (377, 37700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Regirock - Ice Punch - Tutor
  (377, 37700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Regirock - Thunder Punch - Tutor
  (377, 37700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Regirock - Snore - Tutor
  (377, 37700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Regirock - Mud-Slap - Tutor
  (377, 37700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Regirock - Rollout - Tutor
  (377, 37700, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Regirock - Ancient Power - Tutor
  (377, 37700, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Regirock - Superpower - Tutor
  (377, 37700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Regirock - Earth Power - Tutor
  (377, 37700, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Regirock - Iron Head - Tutor
  (377, 37700, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Regice - Stomp - Level 1
  (378, 37800, 23, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regice - Explosion - Level 1
  (378, 37800, 153, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regice - Icy Wind - Level 9
  (378, 37800, 196, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Regice - Curse - Level 17
  (378, 37800, 174, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Regice - Superpower - Level 25
  (378, 37800, 276, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Regice - Ancient Power - Level 33
  (378, 37800, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Regice - Amnesia - Level 41
  (378, 37800, 133, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Regice - Charge Beam - Level 49
  (378, 37800, 451, 9, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Regice - Lock-On - Level 57
  (378, 37800, 199, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Regice - Zap Cannon - Level 65
  (378, 37800, 192, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Regice - Ice Beam - Level 73
  (378, 37800, 58, 9, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Regice - Hammer Arm - Level 81
  (378, 37800, 359, 9, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Regice - Hyper Beam - Level 89
  (378, 37800, 63, 9, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Regice - Focus Punch - TM01
  (378, 37800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Regice - Toxic - TM06
  (378, 37800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Regice - Hail - TM07
  (378, 37800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Regice - Hidden Power - TM10
  (378, 37800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Regice - Ice Beam - TM13
  (378, 37800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Regice - Blizzard - TM14
  (378, 37800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Regice - Hyper Beam - TM15
  (378, 37800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Regice - Protect - TM17
  (378, 37800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Regice - Rain Dance - TM18
  (378, 37800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Regice - Safeguard - TM20
  (378, 37800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Regice - Frustration - TM21
  (378, 37800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Regice - Thunderbolt - TM24
  (378, 37800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Regice - Thunder - TM25
  (378, 37800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Regice - Earthquake - TM26
  (378, 37800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Regice - Return - TM27
  (378, 37800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Regice - Brick Break - TM31
  (378, 37800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Regice - Double Team - TM32
  (378, 37800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Regice - Shock Wave - TM34
  (378, 37800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Regice - Rock Tomb - TM39
  (378, 37800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 32),
  -- Regice - Facade - TM42
  (378, 37800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Regice - Secret Power - TM43
  (378, 37800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Regice - Rest - TM44
  (378, 37800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Regice - Focus Blast - TM52
  (378, 37800, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 36),
  -- Regice - Fling - TM56
  (378, 37800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Regice - Charge Beam - TM57
  (378, 37800, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Regice - Endure - TM58
  (378, 37800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Regice - Explosion - TM64
  (378, 37800, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 40),
  -- Regice - Giga Impact - TM68
  (378, 37800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Regice - Rock Polish - TM69
  (378, 37800, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 42),
  -- Regice - Avalanche - TM72
  (378, 37800, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 43),
  -- Regice - Thunder Wave - TM73
  (378, 37800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Regice - Psych Up - TM77
  (378, 37800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 45),
  -- Regice - Rock Slide - TM80
  (378, 37800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Regice - Sleep Talk - TM82
  (378, 37800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Regice - Natural Gift - TM83
  (378, 37800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Regice - Swagger - TM87
  (378, 37800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Regice - Substitute - TM90
  (378, 37800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Regice - Flash Cannon - TM91
  (378, 37800, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 51),
  -- Regice - Strength - HM04
  (378, 37800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Regice - Rock Smash - HM06
  (378, 37800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Regice - Rock Climb - HM08
  (378, 37800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 54),
  -- Regice - Ice Punch - Tutor
  (378, 37800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Regice - Thunder Punch - Tutor
  (378, 37800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Regice - Snore - Tutor
  (378, 37800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Regice - Mud-Slap - Tutor
  (378, 37800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Regice - Icy Wind - Tutor
  (378, 37800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Regice - Rollout - Tutor
  (378, 37800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Regice - Ancient Power - Tutor
  (378, 37800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Regice - Superpower - Tutor
  (378, 37800, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Regice - Signal Beam - Tutor
  (378, 37800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Regice - Iron Head - Tutor
  (378, 37800, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Registeel - Stomp - Level 1
  (379, 37900, 23, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Registeel - Explosion - Level 1
  (379, 37900, 153, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Registeel - Metal Claw - Level 9
  (379, 37900, 232, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Registeel - Curse - Level 17
  (379, 37900, 174, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Registeel - Superpower - Level 25
  (379, 37900, 276, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Registeel - Ancient Power - Level 33
  (379, 37900, 246, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Registeel - Amnesia - Level 41
  (379, 37900, 133, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Registeel - Iron Defense - Level 41
  (379, 37900, 334, 9, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Registeel - Charge Beam - Level 49
  (379, 37900, 451, 9, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Registeel - Lock-On - Level 57
  (379, 37900, 199, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Registeel - Zap Cannon - Level 65
  (379, 37900, 192, 9, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Registeel - Flash Cannon - Level 73
  (379, 37900, 430, 9, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Registeel - Iron Head - Level 73
  (379, 37900, 442, 9, NULL, 1, 73, NULL, NULL, NULL, 13),
  -- Registeel - Hammer Arm - Level 81
  (379, 37900, 359, 9, NULL, 1, 81, NULL, NULL, NULL, 14),
  -- Registeel - Hyper Beam - Level 89
  (379, 37900, 63, 9, NULL, 1, 89, NULL, NULL, NULL, 15),
  -- Registeel - Focus Punch - TM01
  (379, 37900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Registeel - Toxic - TM06
  (379, 37900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Registeel - Hidden Power - TM10
  (379, 37900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Registeel - Sunny Day - TM11
  (379, 37900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Registeel - Hyper Beam - TM15
  (379, 37900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Registeel - Protect - TM17
  (379, 37900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Registeel - Rain Dance - TM18
  (379, 37900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Registeel - Safeguard - TM20
  (379, 37900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 23),
  -- Registeel - Frustration - TM21
  (379, 37900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Registeel - Thunderbolt - TM24
  (379, 37900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Registeel - Thunder - TM25
  (379, 37900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Registeel - Earthquake - TM26
  (379, 37900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Registeel - Return - TM27
  (379, 37900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Registeel - Brick Break - TM31
  (379, 37900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Registeel - Double Team - TM32
  (379, 37900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Registeel - Shock Wave - TM34
  (379, 37900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 31),
  -- Registeel - Sandstorm - TM37
  (379, 37900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 32),
  -- Registeel - Rock Tomb - TM39
  (379, 37900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Registeel - Aerial Ace - TM40
  (379, 37900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Registeel - Facade - TM42
  (379, 37900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Registeel - Secret Power - TM43
  (379, 37900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Registeel - Rest - TM44
  (379, 37900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Registeel - Focus Blast - TM52
  (379, 37900, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 38),
  -- Registeel - Fling - TM56
  (379, 37900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Registeel - Charge Beam - TM57
  (379, 37900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 40),
  -- Registeel - Endure - TM58
  (379, 37900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Registeel - Explosion - TM64
  (379, 37900, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 42),
  -- Registeel - Shadow Claw - TM65
  (379, 37900, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 43),
  -- Registeel - Giga Impact - TM68
  (379, 37900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Registeel - Rock Polish - TM69
  (379, 37900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 45),
  -- Registeel - Thunder Wave - TM73
  (379, 37900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Registeel - Stealth Rock - TM76
  (379, 37900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 47),
  -- Registeel - Psych Up - TM77
  (379, 37900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Registeel - Rock Slide - TM80
  (379, 37900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 49),
  -- Registeel - Sleep Talk - TM82
  (379, 37900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Registeel - Natural Gift - TM83
  (379, 37900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Registeel - Swagger - TM87
  (379, 37900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Registeel - Substitute - TM90
  (379, 37900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Registeel - Flash Cannon - TM91
  (379, 37900, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 54),
  -- Registeel - Strength - HM04
  (379, 37900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Registeel - Rock Smash - HM06
  (379, 37900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Registeel - Rock Climb - HM08
  (379, 37900, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 57),
  -- Registeel - Ice Punch - Tutor
  (379, 37900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Registeel - Thunder Punch - Tutor
  (379, 37900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Registeel - Snore - Tutor
  (379, 37900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Registeel - Mud-Slap - Tutor
  (379, 37900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Registeel - Rollout - Tutor
  (379, 37900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Registeel - Ancient Power - Tutor
  (379, 37900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Registeel - Superpower - Tutor
  (379, 37900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Registeel - Iron Defense - Tutor
  (379, 37900, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Registeel - Magnet Rise - Tutor
  (379, 37900, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Registeel - Iron Head - Tutor
  (379, 37900, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Latias - Psywave - Level 1
  (380, 38000, 149, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Wish - Level 5
  (380, 38000, 273, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Latias - Helping Hand - Level 10
  (380, 38000, 270, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Latias - Safeguard - Level 15
  (380, 38000, 219, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Latias - Dragon Breath - Level 20
  (380, 38000, 225, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Latias - Water Sport - Level 25
  (380, 38000, 346, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Latias - Refresh - Level 30
  (380, 38000, 287, 9, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Latias - Mist Ball - Level 35
  (380, 38000, 296, 9, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Latias - Zen Headbutt - Level 40
  (380, 38000, 428, 9, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Latias - Recover - Level 45
  (380, 38000, 105, 9, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Latias - Psycho Shift - Level 50
  (380, 38000, 375, 9, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Latias - Charm - Level 55
  (380, 38000, 204, 9, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Latias - Healing Wish - Level 60
  (380, 38000, 361, 9, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Latias - Psychic - Level 65
  (380, 38000, 94, 9, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Latias - Dragon Pulse - Level 70
  (380, 38000, 406, 9, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Latias - Dragon Claw - TM02
  (380, 38000, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 16),
  -- Latias - Water Pulse - TM03
  (380, 38000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Latias - Calm Mind - TM04
  (380, 38000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 18),
  -- Latias - Roar - TM05
  (380, 38000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Latias - Toxic - TM06
  (380, 38000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Latias - Hidden Power - TM10
  (380, 38000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Latias - Sunny Day - TM11
  (380, 38000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Latias - Ice Beam - TM13
  (380, 38000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Latias - Hyper Beam - TM15
  (380, 38000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Latias - Light Screen - TM16
  (380, 38000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Latias - Protect - TM17
  (380, 38000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Latias - Rain Dance - TM18
  (380, 38000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Latias - Safeguard - TM20
  (380, 38000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 28),
  -- Latias - Frustration - TM21
  (380, 38000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Latias - Solar Beam - TM22
  (380, 38000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 30),
  -- Latias - Thunderbolt - TM24
  (380, 38000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 31),
  -- Latias - Thunder - TM25
  (380, 38000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 32),
  -- Latias - Earthquake - TM26
  (380, 38000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Latias - Return - TM27
  (380, 38000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Latias - Psychic - TM29
  (380, 38000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 35),
  -- Latias - Shadow Ball - TM30
  (380, 38000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Latias - Double Team - TM32
  (380, 38000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Latias - Reflect - TM33
  (380, 38000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 38),
  -- Latias - Shock Wave - TM34
  (380, 38000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 39),
  -- Latias - Sandstorm - TM37
  (380, 38000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 40),
  -- Latias - Aerial Ace - TM40
  (380, 38000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 41),
  -- Latias - Facade - TM42
  (380, 38000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Latias - Secret Power - TM43
  (380, 38000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Latias - Rest - TM44
  (380, 38000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Latias - Attract - TM45
  (380, 38000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 45),
  -- Latias - Steel Wing - TM47
  (380, 38000, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 46),
  -- Latias - Roost - TM51
  (380, 38000, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 47),
  -- Latias - Energy Ball - TM53
  (380, 38000, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 48),
  -- Latias - Charge Beam - TM57
  (380, 38000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 49),
  -- Latias - Endure - TM58
  (380, 38000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 50),
  -- Latias - Dragon Pulse - TM59
  (380, 38000, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 51),
  -- Latias - Shadow Claw - TM65
  (380, 38000, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 52),
  -- Latias - Giga Impact - TM68
  (380, 38000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 53),
  -- Latias - Flash - TM70
  (380, 38000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 54),
  -- Latias - Thunder Wave - TM73
  (380, 38000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 55),
  -- Latias - Psych Up - TM77
  (380, 38000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 56),
  -- Latias - Captivate - TM78
  (380, 38000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 57),
  -- Latias - Sleep Talk - TM82
  (380, 38000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 58),
  -- Latias - Natural Gift - TM83
  (380, 38000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 59),
  -- Latias - Dream Eater - TM85
  (380, 38000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 60),
  -- Latias - Grass Knot - TM86
  (380, 38000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 61),
  -- Latias - Swagger - TM87
  (380, 38000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 62),
  -- Latias - Substitute - TM90
  (380, 38000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 63),
  -- Latias - Cut - HM01
  (380, 38000, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 64),
  -- Latias - Fly - HM02
  (380, 38000, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 65),
  -- Latias - Surf - HM03
  (380, 38000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 66),
  -- Latias - Defog - HM05
  (380, 38000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 67),
  -- Latias - Waterfall - HM07
  (380, 38000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 68),
  -- Latias - Swift - Tutor
  (380, 38000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Latias - Snore - Tutor
  (380, 38000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Latias - Mud-Slap - Tutor
  (380, 38000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Latias - Icy Wind - Tutor
  (380, 38000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Latias - Outrage - Tutor
  (380, 38000, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Latias - Fury Cutter - Tutor
  (380, 38000, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Latias - Twister - Tutor
  (380, 38000, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Latias - Helping Hand - Tutor
  (380, 38000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Latias - Trick - Tutor
  (380, 38000, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Latias - Dive - Tutor
  (380, 38000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Latias - Last Resort - Tutor
  (380, 38000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Latias - Sucker Punch - Tutor
  (380, 38000, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Latias - Zen Headbutt - Tutor
  (380, 38000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Latias - Draco Meteor - Tutor
  (380, 38000, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Latios - Psywave - Level 1
  (381, 38100, 149, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Heal Block - Level 5
  (381, 38100, 377, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Latios - Helping Hand - Level 10
  (381, 38100, 270, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Latios - Safeguard - Level 15
  (381, 38100, 219, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Latios - Dragon Breath - Level 20
  (381, 38100, 225, 9, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Latios - Protect - Level 25
  (381, 38100, 182, 9, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Latios - Refresh - Level 30
  (381, 38100, 287, 9, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Latios - Luster Purge - Level 35
  (381, 38100, 295, 9, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Latios - Zen Headbutt - Level 40
  (381, 38100, 428, 9, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Latios - Recover - Level 45
  (381, 38100, 105, 9, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Latios - Psycho Shift - Level 50
  (381, 38100, 375, 9, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Latios - Dragon Dance - Level 55
  (381, 38100, 349, 9, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Latios - Memento - Level 60
  (381, 38100, 262, 9, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Latios - Psychic - Level 65
  (381, 38100, 94, 9, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Latios - Dragon Pulse - Level 70
  (381, 38100, 406, 9, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Latios - Dragon Claw - TM02
  (381, 38100, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 16),
  -- Latios - Water Pulse - TM03
  (381, 38100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Latios - Calm Mind - TM04
  (381, 38100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 18),
  -- Latios - Roar - TM05
  (381, 38100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Latios - Toxic - TM06
  (381, 38100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Latios - Hidden Power - TM10
  (381, 38100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Latios - Sunny Day - TM11
  (381, 38100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Latios - Ice Beam - TM13
  (381, 38100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Latios - Hyper Beam - TM15
  (381, 38100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Latios - Light Screen - TM16
  (381, 38100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Latios - Protect - TM17
  (381, 38100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Latios - Rain Dance - TM18
  (381, 38100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Latios - Safeguard - TM20
  (381, 38100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 28),
  -- Latios - Frustration - TM21
  (381, 38100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Latios - Solar Beam - TM22
  (381, 38100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 30),
  -- Latios - Thunderbolt - TM24
  (381, 38100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 31),
  -- Latios - Thunder - TM25
  (381, 38100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 32),
  -- Latios - Earthquake - TM26
  (381, 38100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 33),
  -- Latios - Return - TM27
  (381, 38100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 34),
  -- Latios - Psychic - TM29
  (381, 38100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 35),
  -- Latios - Shadow Ball - TM30
  (381, 38100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 36),
  -- Latios - Double Team - TM32
  (381, 38100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Latios - Reflect - TM33
  (381, 38100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 38),
  -- Latios - Shock Wave - TM34
  (381, 38100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 39),
  -- Latios - Sandstorm - TM37
  (381, 38100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 40),
  -- Latios - Aerial Ace - TM40
  (381, 38100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 41),
  -- Latios - Facade - TM42
  (381, 38100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Latios - Secret Power - TM43
  (381, 38100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Latios - Rest - TM44
  (381, 38100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Latios - Attract - TM45
  (381, 38100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 45),
  -- Latios - Steel Wing - TM47
  (381, 38100, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 46),
  -- Latios - Roost - TM51
  (381, 38100, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 47),
  -- Latios - Energy Ball - TM53
  (381, 38100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 48),
  -- Latios - Charge Beam - TM57
  (381, 38100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 49),
  -- Latios - Endure - TM58
  (381, 38100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 50),
  -- Latios - Dragon Pulse - TM59
  (381, 38100, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 51),
  -- Latios - Shadow Claw - TM65
  (381, 38100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 52),
  -- Latios - Giga Impact - TM68
  (381, 38100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 53),
  -- Latios - Flash - TM70
  (381, 38100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 54),
  -- Latios - Thunder Wave - TM73
  (381, 38100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 55),
  -- Latios - Psych Up - TM77
  (381, 38100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 56),
  -- Latios - Captivate - TM78
  (381, 38100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 57),
  -- Latios - Sleep Talk - TM82
  (381, 38100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 58),
  -- Latios - Natural Gift - TM83
  (381, 38100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 59),
  -- Latios - Dream Eater - TM85
  (381, 38100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 60),
  -- Latios - Grass Knot - TM86
  (381, 38100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 61),
  -- Latios - Swagger - TM87
  (381, 38100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 62),
  -- Latios - Substitute - TM90
  (381, 38100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 63),
  -- Latios - Cut - HM01
  (381, 38100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 64),
  -- Latios - Fly - HM02
  (381, 38100, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 65),
  -- Latios - Surf - HM03
  (381, 38100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 66),
  -- Latios - Defog - HM05
  (381, 38100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 67),
  -- Latios - Waterfall - HM07
  (381, 38100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 68),
  -- Latios - Swift - Tutor
  (381, 38100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Latios - Snore - Tutor
  (381, 38100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Latios - Mud-Slap - Tutor
  (381, 38100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Latios - Icy Wind - Tutor
  (381, 38100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Latios - Outrage - Tutor
  (381, 38100, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Latios - Fury Cutter - Tutor
  (381, 38100, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Latios - Twister - Tutor
  (381, 38100, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Latios - Helping Hand - Tutor
  (381, 38100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Latios - Trick - Tutor
  (381, 38100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Latios - Dive - Tutor
  (381, 38100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Latios - Last Resort - Tutor
  (381, 38100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Latios - Zen Headbutt - Tutor
  (381, 38100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Latios - Draco Meteor - Tutor
  (381, 38100, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Scary Face - Level 5
  (382, 38200, 184, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Kyogre - Ancient Power - Level 15
  (382, 38200, 246, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Kyogre - Body Slam - Level 20
  (382, 38200, 34, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Kyogre - Calm Mind - Level 30
  (382, 38200, 347, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Kyogre - Ice Beam - Level 35
  (382, 38200, 58, 9, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Kyogre - Hydro Pump - Level 45
  (382, 38200, 56, 9, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Kyogre - Rest - Level 50
  (382, 38200, 156, 9, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Kyogre - Sheer Cold - Level 60
  (382, 38200, 329, 9, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Kyogre - Double-Edge - Level 65
  (382, 38200, 38, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Kyogre - Aqua Tail - Level 75
  (382, 38200, 401, 9, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Kyogre - Water Spout - Level 80
  (382, 38200, 323, 9, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Kyogre - Water Pulse - TM03
  (382, 38200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 13),
  -- Kyogre - Calm Mind - TM04
  (382, 38200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 14),
  -- Kyogre - Roar - TM05
  (382, 38200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Kyogre - Toxic - TM06
  (382, 38200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Kyogre - Hail - TM07
  (382, 38200, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Kyogre - Hidden Power - TM10
  (382, 38200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Kyogre - Ice Beam - TM13
  (382, 38200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Kyogre - Blizzard - TM14
  (382, 38200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Kyogre - Hyper Beam - TM15
  (382, 38200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Kyogre - Protect - TM17
  (382, 38200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Kyogre - Rain Dance - TM18
  (382, 38200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Kyogre - Safeguard - TM20
  (382, 38200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 24),
  -- Kyogre - Frustration - TM21
  (382, 38200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Kyogre - Thunderbolt - TM24
  (382, 38200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Kyogre - Thunder - TM25
  (382, 38200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Kyogre - Earthquake - TM26
  (382, 38200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Kyogre - Return - TM27
  (382, 38200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Kyogre - Brick Break - TM31
  (382, 38200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Kyogre - Double Team - TM32
  (382, 38200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Kyogre - Shock Wave - TM34
  (382, 38200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Kyogre - Rock Tomb - TM39
  (382, 38200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Kyogre - Facade - TM42
  (382, 38200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Kyogre - Secret Power - TM43
  (382, 38200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Kyogre - Rest - TM44
  (382, 38200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Kyogre - Brine - TM55
  (382, 38200, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 37),
  -- Kyogre - Endure - TM58
  (382, 38200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Kyogre - Giga Impact - TM68
  (382, 38200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 39),
  -- Kyogre - Avalanche - TM72
  (382, 38200, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 40),
  -- Kyogre - Thunder Wave - TM73
  (382, 38200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 41),
  -- Kyogre - Psych Up - TM77
  (382, 38200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 42),
  -- Kyogre - Rock Slide - TM80
  (382, 38200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 43),
  -- Kyogre - Sleep Talk - TM82
  (382, 38200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Kyogre - Natural Gift - TM83
  (382, 38200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Kyogre - Swagger - TM87
  (382, 38200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Kyogre - Substitute - TM90
  (382, 38200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Kyogre - Surf - HM03
  (382, 38200, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Kyogre - Strength - HM04
  (382, 38200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Kyogre - Rock Smash - HM06
  (382, 38200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Kyogre - Waterfall - HM07
  (382, 38200, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 51),
  -- Kyogre - Swift - Tutor
  (382, 38200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Kyogre - Snore - Tutor
  (382, 38200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Kyogre - Mud-Slap - Tutor
  (382, 38200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Kyogre - Icy Wind - Tutor
  (382, 38200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Kyogre - Ancient Power - Tutor
  (382, 38200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Kyogre - Uproar - Tutor
  (382, 38200, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Kyogre - Dive - Tutor
  (382, 38200, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Kyogre - Signal Beam - Tutor
  (382, 38200, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Kyogre - Aqua Tail - Tutor
  (382, 38200, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Kyogre - Iron Head - Tutor
  (382, 38200, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Scary Face - Level 5
  (383, 38300, 184, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Groudon - Ancient Power - Level 15
  (383, 38300, 246, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Groudon - Slash - Level 20
  (383, 38300, 163, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Groudon - Bulk Up - Level 30
  (383, 38300, 339, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Groudon - Earthquake - Level 35
  (383, 38300, 89, 9, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Groudon - Fire Blast - Level 45
  (383, 38300, 126, 9, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Groudon - Rest - Level 50
  (383, 38300, 156, 9, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Groudon - Fissure - Level 60
  (383, 38300, 90, 9, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Groudon - Solar Beam - Level 65
  (383, 38300, 76, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Groudon - Earth Power - Level 75
  (383, 38300, 414, 9, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Groudon - Eruption - Level 80
  (383, 38300, 284, 9, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Groudon - Dragon Claw - TM02
  (383, 38300, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 13),
  -- Groudon - Roar - TM05
  (383, 38300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Groudon - Toxic - TM06
  (383, 38300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Groudon - Bulk Up - TM08
  (383, 38300, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 16),
  -- Groudon - Hidden Power - TM10
  (383, 38300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Groudon - Sunny Day - TM11
  (383, 38300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Groudon - Hyper Beam - TM15
  (383, 38300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Groudon - Protect - TM17
  (383, 38300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Groudon - Safeguard - TM20
  (383, 38300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Groudon - Frustration - TM21
  (383, 38300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Groudon - Solar Beam - TM22
  (383, 38300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Groudon - Iron Tail - TM23
  (383, 38300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Groudon - Thunderbolt - TM24
  (383, 38300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 25),
  -- Groudon - Thunder - TM25
  (383, 38300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 26),
  -- Groudon - Earthquake - TM26
  (383, 38300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 27),
  -- Groudon - Return - TM27
  (383, 38300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Groudon - Dig - TM28
  (383, 38300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Groudon - Brick Break - TM31
  (383, 38300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Groudon - Double Team - TM32
  (383, 38300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Groudon - Shock Wave - TM34
  (383, 38300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Groudon - Flamethrower - TM35
  (383, 38300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 33),
  -- Groudon - Sandstorm - TM37
  (383, 38300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Groudon - Fire Blast - TM38
  (383, 38300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Groudon - Rock Tomb - TM39
  (383, 38300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Groudon - Aerial Ace - TM40
  (383, 38300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Groudon - Facade - TM42
  (383, 38300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Groudon - Secret Power - TM43
  (383, 38300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Groudon - Rest - TM44
  (383, 38300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Groudon - Overheat - TM50
  (383, 38300, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 41),
  -- Groudon - Focus Blast - TM52
  (383, 38300, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 42),
  -- Groudon - Fling - TM56
  (383, 38300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Groudon - Endure - TM58
  (383, 38300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 44),
  -- Groudon - Dragon Pulse - TM59
  (383, 38300, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 45),
  -- Groudon - Shadow Claw - TM65
  (383, 38300, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 46),
  -- Groudon - Giga Impact - TM68
  (383, 38300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 47),
  -- Groudon - Rock Polish - TM69
  (383, 38300, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 48),
  -- Groudon - Stone Edge - TM71
  (383, 38300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 49),
  -- Groudon - Thunder Wave - TM73
  (383, 38300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 50),
  -- Groudon - Swords Dance - TM75
  (383, 38300, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 51),
  -- Groudon - Stealth Rock - TM76
  (383, 38300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 52),
  -- Groudon - Psych Up - TM77
  (383, 38300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 53),
  -- Groudon - Rock Slide - TM80
  (383, 38300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 54),
  -- Groudon - Sleep Talk - TM82
  (383, 38300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Groudon - Natural Gift - TM83
  (383, 38300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Groudon - Swagger - TM87
  (383, 38300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 57),
  -- Groudon - Substitute - TM90
  (383, 38300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 58),
  -- Groudon - Cut - HM01
  (383, 38300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 59),
  -- Groudon - Strength - HM04
  (383, 38300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Groudon - Rock Smash - HM06
  (383, 38300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 61),
  -- Groudon - Rock Climb - HM08
  (383, 38300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 62),
  -- Groudon - Fire Punch - Tutor
  (383, 38300, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Groudon - Thunder Punch - Tutor
  (383, 38300, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Groudon - Swift - Tutor
  (383, 38300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Groudon - Snore - Tutor
  (383, 38300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Groudon - Mud-Slap - Tutor
  (383, 38300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Groudon - Rollout - Tutor
  (383, 38300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Groudon - Fury Cutter - Tutor
  (383, 38300, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Groudon - Ancient Power - Tutor
  (383, 38300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Groudon - Uproar - Tutor
  (383, 38300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Groudon - Earth Power - Tutor
  (383, 38300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Groudon - Iron Head - Tutor
  (383, 38300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Scary Face - Level 5
  (384, 38400, 184, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Rayquaza - Ancient Power - Level 15
  (384, 38400, 246, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Rayquaza - Dragon Claw - Level 20
  (384, 38400, 337, 9, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Rayquaza - Dragon Dance - Level 30
  (384, 38400, 349, 9, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Rayquaza - Crunch - Level 35
  (384, 38400, 242, 9, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Rayquaza - Fly - Level 45
  (384, 38400, 19, 9, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Rayquaza - Rest - Level 50
  (384, 38400, 156, 9, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Rayquaza - Extreme Speed - Level 60
  (384, 38400, 245, 9, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Rayquaza - Hyper Beam - Level 65
  (384, 38400, 63, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Rayquaza - Dragon Pulse - Level 75
  (384, 38400, 406, 9, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Rayquaza - Outrage - Level 80
  (384, 38400, 200, 9, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Rayquaza - Dragon Claw - TM02
  (384, 38400, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 13),
  -- Rayquaza - Water Pulse - TM03
  (384, 38400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Rayquaza - Roar - TM05
  (384, 38400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Rayquaza - Toxic - TM06
  (384, 38400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Rayquaza - Bulk Up - TM08
  (384, 38400, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 17),
  -- Rayquaza - Hidden Power - TM10
  (384, 38400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Rayquaza - Sunny Day - TM11
  (384, 38400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Rayquaza - Ice Beam - TM13
  (384, 38400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Rayquaza - Blizzard - TM14
  (384, 38400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Rayquaza - Hyper Beam - TM15
  (384, 38400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Rayquaza - Protect - TM17
  (384, 38400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Rayquaza - Rain Dance - TM18
  (384, 38400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Rayquaza - Frustration - TM21
  (384, 38400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Rayquaza - Solar Beam - TM22
  (384, 38400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Rayquaza - Iron Tail - TM23
  (384, 38400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Rayquaza - Thunderbolt - TM24
  (384, 38400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Rayquaza - Thunder - TM25
  (384, 38400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Rayquaza - Earthquake - TM26
  (384, 38400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Rayquaza - Return - TM27
  (384, 38400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Rayquaza - Brick Break - TM31
  (384, 38400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Rayquaza - Double Team - TM32
  (384, 38400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Rayquaza - Shock Wave - TM34
  (384, 38400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Rayquaza - Flamethrower - TM35
  (384, 38400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 35),
  -- Rayquaza - Sandstorm - TM37
  (384, 38400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 36),
  -- Rayquaza - Fire Blast - TM38
  (384, 38400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 37),
  -- Rayquaza - Rock Tomb - TM39
  (384, 38400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 38),
  -- Rayquaza - Aerial Ace - TM40
  (384, 38400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 39),
  -- Rayquaza - Facade - TM42
  (384, 38400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 40),
  -- Rayquaza - Secret Power - TM43
  (384, 38400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 41),
  -- Rayquaza - Rest - TM44
  (384, 38400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 42),
  -- Rayquaza - Overheat - TM50
  (384, 38400, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 43),
  -- Rayquaza - Focus Blast - TM52
  (384, 38400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Rayquaza - Energy Ball - TM53
  (384, 38400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 45),
  -- Rayquaza - Fling - TM56
  (384, 38400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 46),
  -- Rayquaza - Endure - TM58
  (384, 38400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 47),
  -- Rayquaza - Dragon Pulse - TM59
  (384, 38400, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 48),
  -- Rayquaza - Shadow Claw - TM65
  (384, 38400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 49),
  -- Rayquaza - Giga Impact - TM68
  (384, 38400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 50),
  -- Rayquaza - Stone Edge - TM71
  (384, 38400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 51),
  -- Rayquaza - Avalanche - TM72
  (384, 38400, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 52),
  -- Rayquaza - Thunder Wave - TM73
  (384, 38400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 53),
  -- Rayquaza - Gyro Ball - TM74
  (384, 38400, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 54),
  -- Rayquaza - Swords Dance - TM75
  (384, 38400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 55),
  -- Rayquaza - Psych Up - TM77
  (384, 38400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 56),
  -- Rayquaza - Rock Slide - TM80
  (384, 38400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 57),
  -- Rayquaza - Sleep Talk - TM82
  (384, 38400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 58),
  -- Rayquaza - Natural Gift - TM83
  (384, 38400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 59),
  -- Rayquaza - Swagger - TM87
  (384, 38400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 60),
  -- Rayquaza - Substitute - TM90
  (384, 38400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 61),
  -- Rayquaza - Fly - HM02
  (384, 38400, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 62),
  -- Rayquaza - Surf - HM03
  (384, 38400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 63),
  -- Rayquaza - Strength - HM04
  (384, 38400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 64),
  -- Rayquaza - Rock Smash - HM06
  (384, 38400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 65),
  -- Rayquaza - Waterfall - HM07
  (384, 38400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 66),
  -- Rayquaza - Swift - Tutor
  (384, 38400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Rayquaza - Snore - Tutor
  (384, 38400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Rayquaza - Mud-Slap - Tutor
  (384, 38400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Rayquaza - Icy Wind - Tutor
  (384, 38400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Rayquaza - Outrage - Tutor
  (384, 38400, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Rayquaza - Fury Cutter - Tutor
  (384, 38400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Rayquaza - Twister - Tutor
  (384, 38400, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Rayquaza - Ancient Power - Tutor
  (384, 38400, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Rayquaza - Uproar - Tutor
  (384, 38400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Rayquaza - Dive - Tutor
  (384, 38400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Rayquaza - Aqua Tail - Tutor
  (384, 38400, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Rayquaza - Earth Power - Tutor
  (384, 38400, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Rayquaza - Draco Meteor - Tutor
  (384, 38400, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Rayquaza - Iron Head - Tutor
  (384, 38400, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Jirachi - Confusion - Level 1
  (385, 38500, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jirachi - Wish - Level 1
  (385, 38500, 273, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jirachi - Rest - Level 5
  (385, 38500, 156, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Jirachi - Swift - Level 10
  (385, 38500, 129, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Jirachi - Helping Hand - Level 15
  (385, 38500, 270, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Jirachi - Psychic - Level 20
  (385, 38500, 94, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Jirachi - Refresh - Level 25
  (385, 38500, 287, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Jirachi - Rest - Level 30
  (385, 38500, 156, 9, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Jirachi - Zen Headbutt - Level 35
  (385, 38500, 428, 9, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Jirachi - Double-Edge - Level 40
  (385, 38500, 38, 9, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Jirachi - Gravity - Level 45
  (385, 38500, 356, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Jirachi - Healing Wish - Level 50
  (385, 38500, 361, 9, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Jirachi - Future Sight - Level 55
  (385, 38500, 248, 9, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Jirachi - Cosmic Power - Level 60
  (385, 38500, 322, 9, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Jirachi - Last Resort - Level 65
  (385, 38500, 387, 9, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Jirachi - Doom Desire - Level 70
  (385, 38500, 353, 9, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Jirachi - Water Pulse - TM03
  (385, 38500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Jirachi - Calm Mind - TM04
  (385, 38500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 18),
  -- Jirachi - Toxic - TM06
  (385, 38500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Jirachi - Hidden Power - TM10
  (385, 38500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Jirachi - Sunny Day - TM11
  (385, 38500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Jirachi - Hyper Beam - TM15
  (385, 38500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Jirachi - Light Screen - TM16
  (385, 38500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 23),
  -- Jirachi - Protect - TM17
  (385, 38500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Jirachi - Rain Dance - TM18
  (385, 38500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Jirachi - Safeguard - TM20
  (385, 38500, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Jirachi - Frustration - TM21
  (385, 38500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Jirachi - Thunderbolt - TM24
  (385, 38500, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Jirachi - Thunder - TM25
  (385, 38500, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Jirachi - Return - TM27
  (385, 38500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Jirachi - Psychic - TM29
  (385, 38500, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 31),
  -- Jirachi - Shadow Ball - TM30
  (385, 38500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Jirachi - Double Team - TM32
  (385, 38500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Jirachi - Reflect - TM33
  (385, 38500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Jirachi - Shock Wave - TM34
  (385, 38500, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 35),
  -- Jirachi - Sandstorm - TM37
  (385, 38500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 36),
  -- Jirachi - Aerial Ace - TM40
  (385, 38500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Jirachi - Facade - TM42
  (385, 38500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Jirachi - Secret Power - TM43
  (385, 38500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Jirachi - Rest - TM44
  (385, 38500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Jirachi - Skill Swap - TM48
  (385, 38500, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 41),
  -- Jirachi - Energy Ball - TM53
  (385, 38500, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 42),
  -- Jirachi - Fling - TM56
  (385, 38500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 43),
  -- Jirachi - Charge Beam - TM57
  (385, 38500, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 44),
  -- Jirachi - Endure - TM58
  (385, 38500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Jirachi - Drain Punch - TM60
  (385, 38500, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 46),
  -- Jirachi - Recycle - TM67
  (385, 38500, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 47),
  -- Jirachi - Giga Impact - TM68
  (385, 38500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 48),
  -- Jirachi - Flash - TM70
  (385, 38500, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 49),
  -- Jirachi - Thunder Wave - TM73
  (385, 38500, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 50),
  -- Jirachi - Stealth Rock - TM76
  (385, 38500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 51),
  -- Jirachi - Psych Up - TM77
  (385, 38500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 52),
  -- Jirachi - Sleep Talk - TM82
  (385, 38500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 53),
  -- Jirachi - Natural Gift - TM83
  (385, 38500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 54),
  -- Jirachi - Dream Eater - TM85
  (385, 38500, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 55),
  -- Jirachi - Grass Knot - TM86
  (385, 38500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 56),
  -- Jirachi - Swagger - TM87
  (385, 38500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 57),
  -- Jirachi - U-turn - TM89
  (385, 38500, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 58),
  -- Jirachi - Substitute - TM90
  (385, 38500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 59),
  -- Jirachi - Flash Cannon - TM91
  (385, 38500, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 60),
  -- Jirachi - Trick Room - TM92
  (385, 38500, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 61),
  -- Jirachi - Fire Punch - Tutor
  (385, 38500, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Jirachi - Ice Punch - Tutor
  (385, 38500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Jirachi - Thunder Punch - Tutor
  (385, 38500, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Jirachi - Swift - Tutor
  (385, 38500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Jirachi - Snore - Tutor
  (385, 38500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Jirachi - Mud-Slap - Tutor
  (385, 38500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Jirachi - Icy Wind - Tutor
  (385, 38500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Jirachi - Ancient Power - Tutor
  (385, 38500, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Jirachi - Uproar - Tutor
  (385, 38500, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Jirachi - Helping Hand - Tutor
  (385, 38500, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Jirachi - Trick - Tutor
  (385, 38500, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Jirachi - Signal Beam - Tutor
  (385, 38500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Jirachi - Iron Defense - Tutor
  (385, 38500, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Jirachi - Last Resort - Tutor
  (385, 38500, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Jirachi - Zen Headbutt - Tutor
  (385, 38500, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Jirachi - Iron Head - Tutor
  (385, 38500, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Deoxys - Wrap - Level 1
  (386, 38600, 35, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys - Leer - Level 1
  (386, 38600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys - Night Shade - Level 9
  (386, 38600, 101, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys - Teleport - Level 17
  (386, 38600, 100, 9, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys - Knock Off - Level 25
  (386, 38600, 282, 9, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys - Pursuit - Level 33
  (386, 38600, 228, 9, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys - Psychic - Level 41
  (386, 38600, 94, 9, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys - Snatch - Level 49
  (386, 38600, 289, 9, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys - Psycho Shift - Level 57
  (386, 38600, 375, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys - Zen Headbutt - Level 65
  (386, 38600, 428, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys - Cosmic Power - Level 73
  (386, 38600, 322, 9, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys - Recover - Level 81
  (386, 38600, 105, 9, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys - Psycho Boost - Level 89
  (386, 38600, 354, 9, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys - Hyper Beam - Level 97
  (386, 38600, 63, 9, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys - Focus Punch - TM01
  (386, 38600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Deoxys - Water Pulse - TM03
  (386, 38600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Deoxys - Calm Mind - TM04
  (386, 38600, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Deoxys - Toxic - TM06
  (386, 38600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Deoxys - Hidden Power - TM10
  (386, 38600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Deoxys - Sunny Day - TM11
  (386, 38600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Deoxys - Taunt - TM12
  (386, 38600, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Deoxys - Ice Beam - TM13
  (386, 38600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Deoxys - Hyper Beam - TM15
  (386, 38600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Deoxys - Light Screen - TM16
  (386, 38600, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Deoxys - Protect - TM17
  (386, 38600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Deoxys - Rain Dance - TM18
  (386, 38600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Deoxys - Safeguard - TM20
  (386, 38600, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Deoxys - Frustration - TM21
  (386, 38600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Deoxys - Solar Beam - TM22
  (386, 38600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Deoxys - Thunderbolt - TM24
  (386, 38600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Deoxys - Thunder - TM25
  (386, 38600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Deoxys - Return - TM27
  (386, 38600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Deoxys - Psychic - TM29
  (386, 38600, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 33),
  -- Deoxys - Shadow Ball - TM30
  (386, 38600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Deoxys - Brick Break - TM31
  (386, 38600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 35),
  -- Deoxys - Double Team - TM32
  (386, 38600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 36),
  -- Deoxys - Reflect - TM33
  (386, 38600, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 37),
  -- Deoxys - Shock Wave - TM34
  (386, 38600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Deoxys - Rock Tomb - TM39
  (386, 38600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 39),
  -- Deoxys - Aerial Ace - TM40
  (386, 38600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 40),
  -- Deoxys - Torment - TM41
  (386, 38600, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 41),
  -- Deoxys - Facade - TM42
  (386, 38600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Deoxys - Secret Power - TM43
  (386, 38600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Deoxys - Rest - TM44
  (386, 38600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Deoxys - Skill Swap - TM48
  (386, 38600, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 45),
  -- Deoxys - Snatch - TM49
  (386, 38600, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 46),
  -- Deoxys - Focus Blast - TM52
  (386, 38600, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 47),
  -- Deoxys - Energy Ball - TM53
  (386, 38600, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 48),
  -- Deoxys - Fling - TM56
  (386, 38600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 49),
  -- Deoxys - Charge Beam - TM57
  (386, 38600, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 50),
  -- Deoxys - Endure - TM58
  (386, 38600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 51),
  -- Deoxys - Drain Punch - TM60
  (386, 38600, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 52),
  -- Deoxys - Recycle - TM67
  (386, 38600, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 53),
  -- Deoxys - Giga Impact - TM68
  (386, 38600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Deoxys - Flash - TM70
  (386, 38600, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Deoxys - Avalanche - TM72
  (386, 38600, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 56),
  -- Deoxys - Thunder Wave - TM73
  (386, 38600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 57),
  -- Deoxys - Stealth Rock - TM76
  (386, 38600, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 58),
  -- Deoxys - Psych Up - TM77
  (386, 38600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 59),
  -- Deoxys - Rock Slide - TM80
  (386, 38600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 60),
  -- Deoxys - Sleep Talk - TM82
  (386, 38600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 61),
  -- Deoxys - Natural Gift - TM83
  (386, 38600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 62),
  -- Deoxys - Poison Jab - TM84
  (386, 38600, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 63),
  -- Deoxys - Dream Eater - TM85
  (386, 38600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 64),
  -- Deoxys - Grass Knot - TM86
  (386, 38600, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 65),
  -- Deoxys - Swagger - TM87
  (386, 38600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 66),
  -- Deoxys - Substitute - TM90
  (386, 38600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 67),
  -- Deoxys - Flash Cannon - TM91
  (386, 38600, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 68),
  -- Deoxys - Trick Room - TM92
  (386, 38600, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 69),
  -- Deoxys - Cut - HM01
  (386, 38600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 70),
  -- Deoxys - Strength - HM04
  (386, 38600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 71),
  -- Deoxys - Rock Smash - HM06
  (386, 38600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 72),
  -- Deoxys - Fire Punch - Tutor
  (386, 38600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Deoxys - Ice Punch - Tutor
  (386, 38600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Deoxys - Thunder Punch - Tutor
  (386, 38600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Deoxys - Swift - Tutor
  (386, 38600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Deoxys - Snore - Tutor
  (386, 38600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Deoxys - Mud-Slap - Tutor
  (386, 38600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Deoxys - Icy Wind - Tutor
  (386, 38600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Deoxys - Trick - Tutor
  (386, 38600, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Deoxys - Knock Off - Tutor
  (386, 38600, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Deoxys - Signal Beam - Tutor
  (386, 38600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Deoxys - Zen Headbutt - Tutor
  (386, 38600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Turtwig - Tackle - Level 1
  (387, 38700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtwig - Withdraw - Level 5
  (387, 38700, 110, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Turtwig - Absorb - Level 9
  (387, 38700, 71, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Turtwig - Razor Leaf - Level 13
  (387, 38700, 75, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Turtwig - Curse - Level 17
  (387, 38700, 174, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Turtwig - Bite - Level 21
  (387, 38700, 44, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Turtwig - Mega Drain - Level 25
  (387, 38700, 72, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Turtwig - Leech Seed - Level 29
  (387, 38700, 73, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Turtwig - Synthesis - Level 33
  (387, 38700, 235, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Turtwig - Crunch - Level 37
  (387, 38700, 242, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Turtwig - Giga Drain - Level 41
  (387, 38700, 202, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Turtwig - Leaf Storm - Level 45
  (387, 38700, 437, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Turtwig - Toxic - TM06
  (387, 38700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Turtwig - Bullet Seed - TM09
  (387, 38700, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 14),
  -- Turtwig - Hidden Power - TM10
  (387, 38700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Turtwig - Sunny Day - TM11
  (387, 38700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Turtwig - Light Screen - TM16
  (387, 38700, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 17),
  -- Turtwig - Protect - TM17
  (387, 38700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Turtwig - Giga Drain - TM19
  (387, 38700, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 19),
  -- Turtwig - Safeguard - TM20
  (387, 38700, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 20),
  -- Turtwig - Frustration - TM21
  (387, 38700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Turtwig - Solar Beam - TM22
  (387, 38700, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Turtwig - Iron Tail - TM23
  (387, 38700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Turtwig - Return - TM27
  (387, 38700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Turtwig - Double Team - TM32
  (387, 38700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Turtwig - Reflect - TM33
  (387, 38700, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 26),
  -- Turtwig - Facade - TM42
  (387, 38700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Turtwig - Secret Power - TM43
  (387, 38700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Turtwig - Rest - TM44
  (387, 38700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Turtwig - Attract - TM45
  (387, 38700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Turtwig - Energy Ball - TM53
  (387, 38700, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 31),
  -- Turtwig - Endure - TM58
  (387, 38700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Turtwig - Flash - TM70
  (387, 38700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 33),
  -- Turtwig - Swords Dance - TM75
  (387, 38700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 34),
  -- Turtwig - Stealth Rock - TM76
  (387, 38700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 35),
  -- Turtwig - Captivate - TM78
  (387, 38700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 36),
  -- Turtwig - Sleep Talk - TM82
  (387, 38700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 37),
  -- Turtwig - Natural Gift - TM83
  (387, 38700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 38),
  -- Turtwig - Grass Knot - TM86
  (387, 38700, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 39),
  -- Turtwig - Swagger - TM87
  (387, 38700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Turtwig - Substitute - TM90
  (387, 38700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Turtwig - Cut - HM01
  (387, 38700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 42),
  -- Turtwig - Strength - HM04
  (387, 38700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Turtwig - Rock Smash - HM06
  (387, 38700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 44),
  -- Turtwig - Rock Climb - HM08
  (387, 38700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 45),
  -- Turtwig - Body Slam - Egg
  (387, 38700, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Turtwig - Thrash - Egg
  (387, 38700, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Turtwig - Double-Edge - Egg
  (387, 38700, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Turtwig - Growth - Egg
  (387, 38700, 74, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Turtwig - Amnesia - Egg
  (387, 38700, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Turtwig - Superpower - Egg
  (387, 38700, 276, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Turtwig - Tickle - Egg
  (387, 38700, 321, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Turtwig - Sand Tomb - Egg
  (387, 38700, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Turtwig - Worry Seed - Egg
  (387, 38700, 388, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Turtwig - Seed Bomb - Egg
  (387, 38700, 402, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Turtwig - Snore - Tutor
  (387, 38700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Turtwig - Mud-Slap - Tutor
  (387, 38700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Turtwig - Synthesis - Tutor
  (387, 38700, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Turtwig - Superpower - Tutor
  (387, 38700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Turtwig - Seed Bomb - Tutor
  (387, 38700, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Turtwig - Earth Power - Tutor
  (387, 38700, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Grotle - Tackle - Level 1
  (388, 38800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grotle - Withdraw - Level 1
  (388, 38800, 110, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grotle - Withdraw - Level 5
  (388, 38800, 110, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grotle - Absorb - Level 9
  (388, 38800, 71, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Grotle - Razor Leaf - Level 13
  (388, 38800, 75, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Grotle - Curse - Level 17
  (388, 38800, 174, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Grotle - Bite - Level 22
  (388, 38800, 44, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Grotle - Mega Drain - Level 27
  (388, 38800, 72, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Grotle - Leech Seed - Level 32
  (388, 38800, 73, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Grotle - Synthesis - Level 37
  (388, 38800, 235, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Grotle - Crunch - Level 42
  (388, 38800, 242, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Grotle - Giga Drain - Level 47
  (388, 38800, 202, 9, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Grotle - Leaf Storm - Level 52
  (388, 38800, 437, 9, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Grotle - Toxic - TM06
  (388, 38800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Grotle - Bullet Seed - TM09
  (388, 38800, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 15),
  -- Grotle - Hidden Power - TM10
  (388, 38800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Grotle - Sunny Day - TM11
  (388, 38800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Grotle - Light Screen - TM16
  (388, 38800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Grotle - Protect - TM17
  (388, 38800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Grotle - Giga Drain - TM19
  (388, 38800, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 20),
  -- Grotle - Safeguard - TM20
  (388, 38800, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 21),
  -- Grotle - Frustration - TM21
  (388, 38800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Grotle - Solar Beam - TM22
  (388, 38800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Grotle - Iron Tail - TM23
  (388, 38800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Grotle - Return - TM27
  (388, 38800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Grotle - Double Team - TM32
  (388, 38800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Grotle - Reflect - TM33
  (388, 38800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 27),
  -- Grotle - Facade - TM42
  (388, 38800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Grotle - Secret Power - TM43
  (388, 38800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Grotle - Rest - TM44
  (388, 38800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Grotle - Attract - TM45
  (388, 38800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Grotle - Energy Ball - TM53
  (388, 38800, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 32),
  -- Grotle - Endure - TM58
  (388, 38800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Grotle - Flash - TM70
  (388, 38800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 34),
  -- Grotle - Swords Dance - TM75
  (388, 38800, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 35),
  -- Grotle - Stealth Rock - TM76
  (388, 38800, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 36),
  -- Grotle - Captivate - TM78
  (388, 38800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Grotle - Sleep Talk - TM82
  (388, 38800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Grotle - Natural Gift - TM83
  (388, 38800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Grotle - Grass Knot - TM86
  (388, 38800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 40),
  -- Grotle - Swagger - TM87
  (388, 38800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Grotle - Substitute - TM90
  (388, 38800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Grotle - Cut - HM01
  (388, 38800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 43),
  -- Grotle - Strength - HM04
  (388, 38800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 44),
  -- Grotle - Rock Smash - HM06
  (388, 38800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Grotle - Rock Climb - HM08
  (388, 38800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 46),
  -- Grotle - Snore - Tutor
  (388, 38800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Grotle - Mud-Slap - Tutor
  (388, 38800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Grotle - Synthesis - Tutor
  (388, 38800, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Grotle - Superpower - Tutor
  (388, 38800, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Grotle - Seed Bomb - Tutor
  (388, 38800, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Grotle - Earth Power - Tutor
  (388, 38800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Torterra - Tackle - Level 1
  (389, 38900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torterra - Absorb - Level 1
  (389, 38900, 71, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torterra - Razor Leaf - Level 1
  (389, 38900, 75, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torterra - Withdraw - Level 1
  (389, 38900, 110, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torterra - Wood Hammer - Level 1
  (389, 38900, 452, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Torterra - Withdraw - Level 5
  (389, 38900, 110, 9, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Torterra - Absorb - Level 9
  (389, 38900, 71, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Torterra - Razor Leaf - Level 13
  (389, 38900, 75, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Torterra - Curse - Level 17
  (389, 38900, 174, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Torterra - Bite - Level 22
  (389, 38900, 44, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Torterra - Mega Drain - Level 27
  (389, 38900, 72, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Torterra - Earthquake - Level 32
  (389, 38900, 89, 9, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Torterra - Leech Seed - Level 33
  (389, 38900, 73, 9, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Torterra - Synthesis - Level 39
  (389, 38900, 235, 9, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Torterra - Crunch - Level 45
  (389, 38900, 242, 9, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Torterra - Giga Drain - Level 51
  (389, 38900, 202, 9, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Torterra - Leaf Storm - Level 57
  (389, 38900, 437, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Torterra - Roar - TM05
  (389, 38900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Torterra - Toxic - TM06
  (389, 38900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Torterra - Bullet Seed - TM09
  (389, 38900, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 20),
  -- Torterra - Hidden Power - TM10
  (389, 38900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Torterra - Sunny Day - TM11
  (389, 38900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Torterra - Hyper Beam - TM15
  (389, 38900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Torterra - Light Screen - TM16
  (389, 38900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 24),
  -- Torterra - Protect - TM17
  (389, 38900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Torterra - Giga Drain - TM19
  (389, 38900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 26),
  -- Torterra - Safeguard - TM20
  (389, 38900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 27),
  -- Torterra - Frustration - TM21
  (389, 38900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Torterra - Solar Beam - TM22
  (389, 38900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Torterra - Iron Tail - TM23
  (389, 38900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 30),
  -- Torterra - Earthquake - TM26
  (389, 38900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 31),
  -- Torterra - Return - TM27
  (389, 38900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Torterra - Double Team - TM32
  (389, 38900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Torterra - Reflect - TM33
  (389, 38900, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Torterra - Sandstorm - TM37
  (389, 38900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Torterra - Rock Tomb - TM39
  (389, 38900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Torterra - Facade - TM42
  (389, 38900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Torterra - Secret Power - TM43
  (389, 38900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Torterra - Rest - TM44
  (389, 38900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Torterra - Attract - TM45
  (389, 38900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Torterra - Energy Ball - TM53
  (389, 38900, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 41),
  -- Torterra - Endure - TM58
  (389, 38900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Torterra - Giga Impact - TM68
  (389, 38900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Torterra - Rock Polish - TM69
  (389, 38900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 44),
  -- Torterra - Flash - TM70
  (389, 38900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 45),
  -- Torterra - Stone Edge - TM71
  (389, 38900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 46),
  -- Torterra - Swords Dance - TM75
  (389, 38900, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 47),
  -- Torterra - Stealth Rock - TM76
  (389, 38900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Torterra - Captivate - TM78
  (389, 38900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Torterra - Rock Slide - TM80
  (389, 38900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Torterra - Sleep Talk - TM82
  (389, 38900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Torterra - Natural Gift - TM83
  (389, 38900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Torterra - Grass Knot - TM86
  (389, 38900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Torterra - Swagger - TM87
  (389, 38900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Torterra - Substitute - TM90
  (389, 38900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Torterra - Cut - HM01
  (389, 38900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 56),
  -- Torterra - Strength - HM04
  (389, 38900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 57),
  -- Torterra - Rock Smash - HM06
  (389, 38900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Torterra - Rock Climb - HM08
  (389, 38900, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 59),
  -- Torterra - Snore - Tutor
  (389, 38900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Torterra - Mud-Slap - Tutor
  (389, 38900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Torterra - Outrage - Tutor
  (389, 38900, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Torterra - Synthesis - Tutor
  (389, 38900, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Torterra - Superpower - Tutor
  (389, 38900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Torterra - Frenzy Plant - Tutor
  (389, 38900, 338, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Torterra - Seed Bomb - Tutor
  (389, 38900, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Torterra - Earth Power - Tutor
  (389, 38900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Torterra - Iron Head - Tutor
  (389, 38900, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Chimchar - Scratch - Level 1
  (390, 39000, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimchar - Leer - Level 1
  (390, 39000, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimchar - Ember - Level 7
  (390, 39000, 52, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chimchar - Taunt - Level 9
  (390, 39000, 269, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chimchar - Fury Swipes - Level 15
  (390, 39000, 154, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chimchar - Flame Wheel - Level 17
  (390, 39000, 172, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chimchar - Nasty Plot - Level 23
  (390, 39000, 417, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Chimchar - Torment - Level 25
  (390, 39000, 259, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Chimchar - Facade - Level 31
  (390, 39000, 263, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Chimchar - Fire Spin - Level 33
  (390, 39000, 83, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Chimchar - Slack Off - Level 39
  (390, 39000, 303, 9, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Chimchar - Flamethrower - Level 41
  (390, 39000, 53, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Chimchar - Focus Punch - TM01
  (390, 39000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Chimchar - Toxic - TM06
  (390, 39000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Chimchar - Bulk Up - TM08
  (390, 39000, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 15),
  -- Chimchar - Hidden Power - TM10
  (390, 39000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Chimchar - Sunny Day - TM11
  (390, 39000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Chimchar - Taunt - TM12
  (390, 39000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 18),
  -- Chimchar - Protect - TM17
  (390, 39000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Chimchar - Frustration - TM21
  (390, 39000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Chimchar - Iron Tail - TM23
  (390, 39000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Chimchar - Return - TM27
  (390, 39000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Chimchar - Dig - TM28
  (390, 39000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 23),
  -- Chimchar - Brick Break - TM31
  (390, 39000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Chimchar - Double Team - TM32
  (390, 39000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Chimchar - Flamethrower - TM35
  (390, 39000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Chimchar - Fire Blast - TM38
  (390, 39000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 27),
  -- Chimchar - Aerial Ace - TM40
  (390, 39000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Chimchar - Torment - TM41
  (390, 39000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 29),
  -- Chimchar - Facade - TM42
  (390, 39000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Chimchar - Secret Power - TM43
  (390, 39000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Chimchar - Rest - TM44
  (390, 39000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Chimchar - Attract - TM45
  (390, 39000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Chimchar - Overheat - TM50
  (390, 39000, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 34),
  -- Chimchar - Fling - TM56
  (390, 39000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 35),
  -- Chimchar - Endure - TM58
  (390, 39000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Chimchar - Will-O-Wisp - TM61
  (390, 39000, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 37),
  -- Chimchar - Shadow Claw - TM65
  (390, 39000, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 38),
  -- Chimchar - Swords Dance - TM75
  (390, 39000, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 39),
  -- Chimchar - Stealth Rock - TM76
  (390, 39000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 40),
  -- Chimchar - Captivate - TM78
  (390, 39000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Chimchar - Sleep Talk - TM82
  (390, 39000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Chimchar - Natural Gift - TM83
  (390, 39000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Chimchar - Grass Knot - TM86
  (390, 39000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 44),
  -- Chimchar - Swagger - TM87
  (390, 39000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Chimchar - U-turn - TM89
  (390, 39000, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 46),
  -- Chimchar - Substitute - TM90
  (390, 39000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Chimchar - Cut - HM01
  (390, 39000, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 48),
  -- Chimchar - Strength - HM04
  (390, 39000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Chimchar - Rock Smash - HM06
  (390, 39000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Chimchar - Rock Climb - HM08
  (390, 39000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 51),
  -- Chimchar - Fire Punch - Egg
  (390, 39000, 7, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chimchar - Thunder Punch - Egg
  (390, 39000, 9, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimchar - Double Kick - Egg
  (390, 39000, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimchar - Counter - Egg
  (390, 39000, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimchar - Focus Energy - Egg
  (390, 39000, 116, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimchar - Encore - Egg
  (390, 39000, 227, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimchar - Fake Out - Egg
  (390, 39000, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimchar - Heat Wave - Egg
  (390, 39000, 257, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimchar - Helping Hand - Egg
  (390, 39000, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimchar - Blaze Kick - Egg
  (390, 39000, 299, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimchar - Fire Punch - Tutor
  (390, 39000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Chimchar - Thunder Punch - Tutor
  (390, 39000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Chimchar - Swift - Tutor
  (390, 39000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Chimchar - Snore - Tutor
  (390, 39000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Chimchar - Mud-Slap - Tutor
  (390, 39000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Chimchar - Rollout - Tutor
  (390, 39000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Chimchar - Uproar - Tutor
  (390, 39000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Chimchar - Heat Wave - Tutor
  (390, 39000, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Chimchar - Helping Hand - Tutor
  (390, 39000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Chimchar - Endeavor - Tutor
  (390, 39000, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Chimchar - Vacuum Wave - Tutor
  (390, 39000, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Chimchar - Gunk Shot - Tutor
  (390, 39000, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Monferno - Scratch - Level 1
  (391, 39100, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Monferno - Leer - Level 1
  (391, 39100, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Monferno - Ember - Level 1
  (391, 39100, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Monferno - Ember - Level 7
  (391, 39100, 52, 9, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Monferno - Taunt - Level 9
  (391, 39100, 269, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Monferno - Mach Punch - Level 14
  (391, 39100, 183, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Monferno - Fury Swipes - Level 16
  (391, 39100, 154, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Monferno - Flame Wheel - Level 19
  (391, 39100, 172, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Monferno - Feint - Level 26
  (391, 39100, 364, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Monferno - Torment - Level 29
  (391, 39100, 259, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Monferno - Close Combat - Level 36
  (391, 39100, 370, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Monferno - Fire Spin - Level 39
  (391, 39100, 83, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Monferno - Slack Off - Level 46
  (391, 39100, 303, 9, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Monferno - Flare Blitz - Level 49
  (391, 39100, 394, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Monferno - Focus Punch - TM01
  (391, 39100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Monferno - Toxic - TM06
  (391, 39100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Monferno - Bulk Up - TM08
  (391, 39100, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 17),
  -- Monferno - Hidden Power - TM10
  (391, 39100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Monferno - Sunny Day - TM11
  (391, 39100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Monferno - Taunt - TM12
  (391, 39100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Monferno - Protect - TM17
  (391, 39100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Monferno - Frustration - TM21
  (391, 39100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Monferno - Iron Tail - TM23
  (391, 39100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Monferno - Return - TM27
  (391, 39100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Monferno - Dig - TM28
  (391, 39100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Monferno - Brick Break - TM31
  (391, 39100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 26),
  -- Monferno - Double Team - TM32
  (391, 39100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Monferno - Flamethrower - TM35
  (391, 39100, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 28),
  -- Monferno - Fire Blast - TM38
  (391, 39100, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 29),
  -- Monferno - Rock Tomb - TM39
  (391, 39100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Monferno - Aerial Ace - TM40
  (391, 39100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Monferno - Torment - TM41
  (391, 39100, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 32),
  -- Monferno - Facade - TM42
  (391, 39100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Monferno - Secret Power - TM43
  (391, 39100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Monferno - Rest - TM44
  (391, 39100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Monferno - Attract - TM45
  (391, 39100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Monferno - Overheat - TM50
  (391, 39100, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 37),
  -- Monferno - Focus Blast - TM52
  (391, 39100, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 38),
  -- Monferno - Fling - TM56
  (391, 39100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Monferno - Endure - TM58
  (391, 39100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Monferno - Will-O-Wisp - TM61
  (391, 39100, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 41),
  -- Monferno - Shadow Claw - TM65
  (391, 39100, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 42),
  -- Monferno - Swords Dance - TM75
  (391, 39100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 43),
  -- Monferno - Stealth Rock - TM76
  (391, 39100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 44),
  -- Monferno - Captivate - TM78
  (391, 39100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Monferno - Rock Slide - TM80
  (391, 39100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Monferno - Sleep Talk - TM82
  (391, 39100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Monferno - Natural Gift - TM83
  (391, 39100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Monferno - Poison Jab - TM84
  (391, 39100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 49),
  -- Monferno - Grass Knot - TM86
  (391, 39100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 50),
  -- Monferno - Swagger - TM87
  (391, 39100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Monferno - U-turn - TM89
  (391, 39100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 52),
  -- Monferno - Substitute - TM90
  (391, 39100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Monferno - Cut - HM01
  (391, 39100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 54),
  -- Monferno - Strength - HM04
  (391, 39100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Monferno - Rock Smash - HM06
  (391, 39100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Monferno - Rock Climb - HM08
  (391, 39100, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 57),
  -- Monferno - Fire Punch - Tutor
  (391, 39100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Monferno - Thunder Punch - Tutor
  (391, 39100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Monferno - Swift - Tutor
  (391, 39100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Monferno - Snore - Tutor
  (391, 39100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Monferno - Mud-Slap - Tutor
  (391, 39100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Monferno - Rollout - Tutor
  (391, 39100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Monferno - Heat Wave - Tutor
  (391, 39100, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Monferno - Helping Hand - Tutor
  (391, 39100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Monferno - Endeavor - Tutor
  (391, 39100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Monferno - Vacuum Wave - Tutor
  (391, 39100, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Monferno - Gunk Shot - Tutor
  (391, 39100, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Infernape - Scratch - Level 1
  (392, 39200, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Infernape - Leer - Level 1
  (392, 39200, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Infernape - Ember - Level 1
  (392, 39200, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Infernape - Taunt - Level 1
  (392, 39200, 269, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Infernape - Ember - Level 7
  (392, 39200, 52, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Infernape - Taunt - Level 9
  (392, 39200, 269, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Infernape - Mach Punch - Level 14
  (392, 39200, 183, 9, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Infernape - Fury Swipes - Level 17
  (392, 39200, 154, 9, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Infernape - Flame Wheel - Level 21
  (392, 39200, 172, 9, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Infernape - Feint - Level 29
  (392, 39200, 364, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Infernape - Punishment - Level 33
  (392, 39200, 386, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Infernape - Close Combat - Level 41
  (392, 39200, 370, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Infernape - Fire Spin - Level 45
  (392, 39200, 83, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Infernape - Calm Mind - Level 53
  (392, 39200, 347, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Infernape - Flare Blitz - Level 57
  (392, 39200, 394, 9, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Infernape - Focus Punch - TM01
  (392, 39200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Infernape - Calm Mind - TM04
  (392, 39200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Infernape - Roar - TM05
  (392, 39200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Infernape - Toxic - TM06
  (392, 39200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Infernape - Bulk Up - TM08
  (392, 39200, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 20),
  -- Infernape - Hidden Power - TM10
  (392, 39200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Infernape - Sunny Day - TM11
  (392, 39200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Infernape - Taunt - TM12
  (392, 39200, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Infernape - Hyper Beam - TM15
  (392, 39200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Infernape - Protect - TM17
  (392, 39200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Infernape - Frustration - TM21
  (392, 39200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Infernape - Solar Beam - TM22
  (392, 39200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Infernape - Iron Tail - TM23
  (392, 39200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Infernape - Earthquake - TM26
  (392, 39200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Infernape - Return - TM27
  (392, 39200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Infernape - Dig - TM28
  (392, 39200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Infernape - Brick Break - TM31
  (392, 39200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Infernape - Double Team - TM32
  (392, 39200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Infernape - Flamethrower - TM35
  (392, 39200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 34),
  -- Infernape - Fire Blast - TM38
  (392, 39200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 35),
  -- Infernape - Rock Tomb - TM39
  (392, 39200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Infernape - Aerial Ace - TM40
  (392, 39200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 37),
  -- Infernape - Torment - TM41
  (392, 39200, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 38),
  -- Infernape - Facade - TM42
  (392, 39200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 39),
  -- Infernape - Secret Power - TM43
  (392, 39200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 40),
  -- Infernape - Rest - TM44
  (392, 39200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 41),
  -- Infernape - Attract - TM45
  (392, 39200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 42),
  -- Infernape - Overheat - TM50
  (392, 39200, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 43),
  -- Infernape - Focus Blast - TM52
  (392, 39200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 44),
  -- Infernape - Fling - TM56
  (392, 39200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 45),
  -- Infernape - Endure - TM58
  (392, 39200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 46),
  -- Infernape - Will-O-Wisp - TM61
  (392, 39200, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 47),
  -- Infernape - Shadow Claw - TM65
  (392, 39200, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 48),
  -- Infernape - Giga Impact - TM68
  (392, 39200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 49),
  -- Infernape - Stone Edge - TM71
  (392, 39200, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 50),
  -- Infernape - Swords Dance - TM75
  (392, 39200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 51),
  -- Infernape - Stealth Rock - TM76
  (392, 39200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 52),
  -- Infernape - Captivate - TM78
  (392, 39200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 53),
  -- Infernape - Rock Slide - TM80
  (392, 39200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 54),
  -- Infernape - Sleep Talk - TM82
  (392, 39200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Infernape - Natural Gift - TM83
  (392, 39200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Infernape - Poison Jab - TM84
  (392, 39200, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 57),
  -- Infernape - Grass Knot - TM86
  (392, 39200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 58),
  -- Infernape - Swagger - TM87
  (392, 39200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 59),
  -- Infernape - U-turn - TM89
  (392, 39200, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 60),
  -- Infernape - Substitute - TM90
  (392, 39200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 61),
  -- Infernape - Cut - HM01
  (392, 39200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 62),
  -- Infernape - Strength - HM04
  (392, 39200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 63),
  -- Infernape - Rock Smash - HM06
  (392, 39200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 64),
  -- Infernape - Rock Climb - HM08
  (392, 39200, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 65),
  -- Infernape - Fire Punch - Tutor
  (392, 39200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Infernape - Thunder Punch - Tutor
  (392, 39200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Infernape - Swift - Tutor
  (392, 39200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Infernape - Snore - Tutor
  (392, 39200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Infernape - Mud-Slap - Tutor
  (392, 39200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Infernape - Rollout - Tutor
  (392, 39200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Infernape - Heat Wave - Tutor
  (392, 39200, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Infernape - Helping Hand - Tutor
  (392, 39200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Infernape - Endeavor - Tutor
  (392, 39200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Infernape - Blast Burn - Tutor
  (392, 39200, 307, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Infernape - Vacuum Wave - Tutor
  (392, 39200, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Infernape - Gunk Shot - Tutor
  (392, 39200, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Piplup - Pound - Level 1
  (393, 39300, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piplup - Growl - Level 4
  (393, 39300, 45, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Piplup - Bubble - Level 8
  (393, 39300, 145, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Piplup - Water Sport - Level 11
  (393, 39300, 346, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Piplup - Peck - Level 15
  (393, 39300, 64, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Piplup - Bubble Beam - Level 18
  (393, 39300, 61, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Piplup - Bide - Level 22
  (393, 39300, 117, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Piplup - Fury Attack - Level 25
  (393, 39300, 31, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Piplup - Brine - Level 29
  (393, 39300, 362, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Piplup - Whirlpool - Level 32
  (393, 39300, 250, 9, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Piplup - Mist - Level 36
  (393, 39300, 54, 9, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Piplup - Drill Peck - Level 39
  (393, 39300, 65, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Piplup - Hydro Pump - Level 43
  (393, 39300, 56, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Piplup - Water Pulse - TM03
  (393, 39300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 14),
  -- Piplup - Toxic - TM06
  (393, 39300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Piplup - Hail - TM07
  (393, 39300, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 16),
  -- Piplup - Hidden Power - TM10
  (393, 39300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Piplup - Ice Beam - TM13
  (393, 39300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 18),
  -- Piplup - Blizzard - TM14
  (393, 39300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 19),
  -- Piplup - Protect - TM17
  (393, 39300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Piplup - Rain Dance - TM18
  (393, 39300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Piplup - Frustration - TM21
  (393, 39300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Piplup - Return - TM27
  (393, 39300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Piplup - Dig - TM28
  (393, 39300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Piplup - Brick Break - TM31
  (393, 39300, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Piplup - Double Team - TM32
  (393, 39300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Piplup - Rock Tomb - TM39
  (393, 39300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 27),
  -- Piplup - Aerial Ace - TM40
  (393, 39300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Piplup - Facade - TM42
  (393, 39300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Piplup - Secret Power - TM43
  (393, 39300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Piplup - Rest - TM44
  (393, 39300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Piplup - Attract - TM45
  (393, 39300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Piplup - Brine - TM55
  (393, 39300, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Piplup - Fling - TM56
  (393, 39300, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 34),
  -- Piplup - Endure - TM58
  (393, 39300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Piplup - Stealth Rock - TM76
  (393, 39300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 36),
  -- Piplup - Captivate - TM78
  (393, 39300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Piplup - Sleep Talk - TM82
  (393, 39300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Piplup - Natural Gift - TM83
  (393, 39300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Piplup - Grass Knot - TM86
  (393, 39300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 40),
  -- Piplup - Swagger - TM87
  (393, 39300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Piplup - Pluck - TM88
  (393, 39300, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 42),
  -- Piplup - Substitute - TM90
  (393, 39300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Piplup - Cut - HM01
  (393, 39300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 44),
  -- Piplup - Surf - HM03
  (393, 39300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 45),
  -- Piplup - Defog - HM05
  (393, 39300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 46),
  -- Piplup - Waterfall - HM07
  (393, 39300, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 47),
  -- Piplup - Supersonic - Egg
  (393, 39300, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Piplup - Hydro Pump - Egg
  (393, 39300, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piplup - Agility - Egg
  (393, 39300, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Piplup - Snore - Egg
  (393, 39300, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piplup - Flail - Egg
  (393, 39300, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piplup - Mud-Slap - Egg
  (393, 39300, 189, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Piplup - Yawn - Egg
  (393, 39300, 281, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Piplup - Mud Sport - Egg
  (393, 39300, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Piplup - Aqua Ring - Egg
  (393, 39300, 392, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Piplup - Double Hit - Egg
  (393, 39300, 458, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Piplup - Snore - Tutor
  (393, 39300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Piplup - Mud-Slap - Tutor
  (393, 39300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Piplup - Icy Wind - Tutor
  (393, 39300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Piplup - Dive - Tutor
  (393, 39300, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Piplup - Signal Beam - Tutor
  (393, 39300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Prinplup - Tackle - Level 1
  (394, 39400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Prinplup - Growl - Level 1
  (394, 39400, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Prinplup - Growl - Level 4
  (394, 39400, 45, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Prinplup - Bubble - Level 8
  (394, 39400, 145, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Prinplup - Water Sport - Level 11
  (394, 39400, 346, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Prinplup - Peck - Level 15
  (394, 39400, 64, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Prinplup - Metal Claw - Level 16
  (394, 39400, 232, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Prinplup - Bubble Beam - Level 19
  (394, 39400, 61, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Prinplup - Bide - Level 24
  (394, 39400, 117, 9, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Prinplup - Fury Attack - Level 28
  (394, 39400, 31, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Prinplup - Brine - Level 33
  (394, 39400, 362, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Prinplup - Whirlpool - Level 37
  (394, 39400, 250, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Prinplup - Mist - Level 42
  (394, 39400, 54, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Prinplup - Drill Peck - Level 46
  (394, 39400, 65, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Prinplup - Hydro Pump - Level 51
  (394, 39400, 56, 9, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Prinplup - Water Pulse - TM03
  (394, 39400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Prinplup - Toxic - TM06
  (394, 39400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Prinplup - Hail - TM07
  (394, 39400, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Prinplup - Hidden Power - TM10
  (394, 39400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Prinplup - Ice Beam - TM13
  (394, 39400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Prinplup - Blizzard - TM14
  (394, 39400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Prinplup - Protect - TM17
  (394, 39400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Prinplup - Rain Dance - TM18
  (394, 39400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Prinplup - Frustration - TM21
  (394, 39400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Prinplup - Return - TM27
  (394, 39400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Prinplup - Dig - TM28
  (394, 39400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Prinplup - Brick Break - TM31
  (394, 39400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Prinplup - Double Team - TM32
  (394, 39400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Prinplup - Rock Tomb - TM39
  (394, 39400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Prinplup - Aerial Ace - TM40
  (394, 39400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Prinplup - Facade - TM42
  (394, 39400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Prinplup - Secret Power - TM43
  (394, 39400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Prinplup - Rest - TM44
  (394, 39400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Prinplup - Attract - TM45
  (394, 39400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Prinplup - Brine - TM55
  (394, 39400, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 35),
  -- Prinplup - Fling - TM56
  (394, 39400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 36),
  -- Prinplup - Endure - TM58
  (394, 39400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Prinplup - Shadow Claw - TM65
  (394, 39400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 38),
  -- Prinplup - Stealth Rock - TM76
  (394, 39400, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 39),
  -- Prinplup - Captivate - TM78
  (394, 39400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Prinplup - Sleep Talk - TM82
  (394, 39400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Prinplup - Natural Gift - TM83
  (394, 39400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Prinplup - Grass Knot - TM86
  (394, 39400, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 43),
  -- Prinplup - Swagger - TM87
  (394, 39400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Prinplup - Pluck - TM88
  (394, 39400, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 45),
  -- Prinplup - Substitute - TM90
  (394, 39400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Prinplup - Cut - HM01
  (394, 39400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 47),
  -- Prinplup - Surf - HM03
  (394, 39400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Prinplup - Strength - HM04
  (394, 39400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Prinplup - Defog - HM05
  (394, 39400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 50),
  -- Prinplup - Rock Smash - HM06
  (394, 39400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Prinplup - Waterfall - HM07
  (394, 39400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 52),
  -- Prinplup - Snore - Tutor
  (394, 39400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Prinplup - Mud-Slap - Tutor
  (394, 39400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Prinplup - Icy Wind - Tutor
  (394, 39400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Prinplup - Dive - Tutor
  (394, 39400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Prinplup - Signal Beam - Tutor
  (394, 39400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Empoleon - Tackle - Level 1
  (395, 39500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Empoleon - Growl - Level 1
  (395, 39500, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Empoleon - Bubble - Level 1
  (395, 39500, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Empoleon - Growl - Level 4
  (395, 39500, 45, 9, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Empoleon - Bubble - Level 8
  (395, 39500, 145, 9, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Empoleon - Swords Dance - Level 11
  (395, 39500, 14, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Empoleon - Peck - Level 15
  (395, 39500, 64, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Empoleon - Metal Claw - Level 16
  (395, 39500, 232, 9, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Empoleon - Bubble Beam - Level 19
  (395, 39500, 61, 9, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Empoleon - Swagger - Level 24
  (395, 39500, 207, 9, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Empoleon - Fury Attack - Level 28
  (395, 39500, 31, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Empoleon - Brine - Level 33
  (395, 39500, 362, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Empoleon - Aqua Jet - Level 36
  (395, 39500, 453, 9, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Empoleon - Whirlpool - Level 39
  (395, 39500, 250, 9, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Empoleon - Mist - Level 46
  (395, 39500, 54, 9, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Empoleon - Drill Peck - Level 52
  (395, 39500, 65, 9, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Empoleon - Hydro Pump - Level 59
  (395, 39500, 56, 9, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Empoleon - Water Pulse - TM03
  (395, 39500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Empoleon - Roar - TM05
  (395, 39500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Empoleon - Toxic - TM06
  (395, 39500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Empoleon - Hail - TM07
  (395, 39500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Empoleon - Hidden Power - TM10
  (395, 39500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Empoleon - Ice Beam - TM13
  (395, 39500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Empoleon - Blizzard - TM14
  (395, 39500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Empoleon - Hyper Beam - TM15
  (395, 39500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Empoleon - Protect - TM17
  (395, 39500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Empoleon - Rain Dance - TM18
  (395, 39500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Empoleon - Frustration - TM21
  (395, 39500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Empoleon - Earthquake - TM26
  (395, 39500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Empoleon - Return - TM27
  (395, 39500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Empoleon - Dig - TM28
  (395, 39500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Empoleon - Brick Break - TM31
  (395, 39500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Empoleon - Double Team - TM32
  (395, 39500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Empoleon - Rock Tomb - TM39
  (395, 39500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 34),
  -- Empoleon - Aerial Ace - TM40
  (395, 39500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Empoleon - Facade - TM42
  (395, 39500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Empoleon - Secret Power - TM43
  (395, 39500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Empoleon - Rest - TM44
  (395, 39500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Empoleon - Attract - TM45
  (395, 39500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 39),
  -- Empoleon - Steel Wing - TM47
  (395, 39500, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 40),
  -- Empoleon - Brine - TM55
  (395, 39500, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 41),
  -- Empoleon - Fling - TM56
  (395, 39500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Empoleon - Endure - TM58
  (395, 39500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Empoleon - Shadow Claw - TM65
  (395, 39500, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 44),
  -- Empoleon - Giga Impact - TM68
  (395, 39500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Empoleon - Avalanche - TM72
  (395, 39500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 46),
  -- Empoleon - Swords Dance - TM75
  (395, 39500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 47),
  -- Empoleon - Stealth Rock - TM76
  (395, 39500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Empoleon - Captivate - TM78
  (395, 39500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Empoleon - Rock Slide - TM80
  (395, 39500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Empoleon - Sleep Talk - TM82
  (395, 39500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Empoleon - Natural Gift - TM83
  (395, 39500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Empoleon - Grass Knot - TM86
  (395, 39500, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 53),
  -- Empoleon - Swagger - TM87
  (395, 39500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Empoleon - Pluck - TM88
  (395, 39500, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 55),
  -- Empoleon - Substitute - TM90
  (395, 39500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Empoleon - Flash Cannon - TM91
  (395, 39500, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 57),
  -- Empoleon - Cut - HM01
  (395, 39500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Empoleon - Surf - HM03
  (395, 39500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 59),
  -- Empoleon - Strength - HM04
  (395, 39500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Empoleon - Defog - HM05
  (395, 39500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 61),
  -- Empoleon - Rock Smash - HM06
  (395, 39500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Empoleon - Waterfall - HM07
  (395, 39500, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 63),
  -- Empoleon - Rock Climb - HM08
  (395, 39500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 64),
  -- Empoleon - Snore - Tutor
  (395, 39500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Empoleon - Mud-Slap - Tutor
  (395, 39500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Empoleon - Icy Wind - Tutor
  (395, 39500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Empoleon - Fury Cutter - Tutor
  (395, 39500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Empoleon - Knock Off - Tutor
  (395, 39500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Empoleon - Dive - Tutor
  (395, 39500, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Empoleon - Hydro Cannon - Tutor
  (395, 39500, 308, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Empoleon - Signal Beam - Tutor
  (395, 39500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Empoleon - Iron Defense - Tutor
  (395, 39500, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Starly - Tackle - Level 1
  (396, 39600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starly - Growl - Level 1
  (396, 39600, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starly - Quick Attack - Level 5
  (396, 39600, 98, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Starly - Wing Attack - Level 9
  (396, 39600, 17, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Starly - Double Team - Level 13
  (396, 39600, 104, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Starly - Endeavor - Level 17
  (396, 39600, 283, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Starly - Whirlwind - Level 21
  (396, 39600, 18, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Starly - Aerial Ace - Level 25
  (396, 39600, 332, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Starly - Take Down - Level 29
  (396, 39600, 36, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Starly - Agility - Level 33
  (396, 39600, 97, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Starly - Brave Bird - Level 37
  (396, 39600, 413, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Starly - Toxic - TM06
  (396, 39600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 12),
  -- Starly - Hidden Power - TM10
  (396, 39600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 13),
  -- Starly - Sunny Day - TM11
  (396, 39600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 14),
  -- Starly - Protect - TM17
  (396, 39600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 15),
  -- Starly - Rain Dance - TM18
  (396, 39600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 16),
  -- Starly - Frustration - TM21
  (396, 39600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 17),
  -- Starly - Return - TM27
  (396, 39600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 18),
  -- Starly - Double Team - TM32
  (396, 39600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 19),
  -- Starly - Aerial Ace - TM40
  (396, 39600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 20),
  -- Starly - Facade - TM42
  (396, 39600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 21),
  -- Starly - Secret Power - TM43
  (396, 39600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 22),
  -- Starly - Rest - TM44
  (396, 39600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 23),
  -- Starly - Attract - TM45
  (396, 39600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 24),
  -- Starly - Thief - TM46
  (396, 39600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 25),
  -- Starly - Steel Wing - TM47
  (396, 39600, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 26),
  -- Starly - Roost - TM51
  (396, 39600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 27),
  -- Starly - Endure - TM58
  (396, 39600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 28),
  -- Starly - Captivate - TM78
  (396, 39600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 29),
  -- Starly - Sleep Talk - TM82
  (396, 39600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 30),
  -- Starly - Natural Gift - TM83
  (396, 39600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 31),
  -- Starly - Swagger - TM87
  (396, 39600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 32),
  -- Starly - Pluck - TM88
  (396, 39600, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 33),
  -- Starly - U-turn - TM89
  (396, 39600, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 34),
  -- Starly - Substitute - TM90
  (396, 39600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 35),
  -- Starly - Fly - HM02
  (396, 39600, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 36),
  -- Starly - Defog - HM05
  (396, 39600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 37),
  -- Starly - Sand Attack - Egg
  (396, 39600, 28, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Starly - Fury Attack - Egg
  (396, 39600, 31, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Starly - Double-Edge - Egg
  (396, 39600, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Starly - Foresight - Egg
  (396, 39600, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Starly - Pursuit - Egg
  (396, 39600, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Starly - Feather Dance - Egg
  (396, 39600, 297, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Starly - Astonish - Egg
  (396, 39600, 310, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Starly - Swift - Tutor
  (396, 39600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Starly - Snore - Tutor
  (396, 39600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Starly - Mud-Slap - Tutor
  (396, 39600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Starly - Twister - Tutor
  (396, 39600, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Starly - Heat Wave - Tutor
  (396, 39600, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Starly - Endeavor - Tutor
  (396, 39600, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Starly - Air Cutter - Tutor
  (396, 39600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Starly - Ominous Wind - Tutor
  (396, 39600, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Staravia - Tackle - Level 1
  (397, 39700, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staravia - Growl - Level 1
  (397, 39700, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staravia - Quick Attack - Level 1
  (397, 39700, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staravia - Quick Attack - Level 5
  (397, 39700, 98, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Staravia - Wing Attack - Level 9
  (397, 39700, 17, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Staravia - Double Team - Level 13
  (397, 39700, 104, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Staravia - Endeavor - Level 18
  (397, 39700, 283, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Staravia - Whirlwind - Level 23
  (397, 39700, 18, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Staravia - Aerial Ace - Level 28
  (397, 39700, 332, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Staravia - Take Down - Level 33
  (397, 39700, 36, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Staravia - Agility - Level 38
  (397, 39700, 97, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Staravia - Brave Bird - Level 43
  (397, 39700, 413, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Staravia - Toxic - TM06
  (397, 39700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Staravia - Hidden Power - TM10
  (397, 39700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Staravia - Sunny Day - TM11
  (397, 39700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Staravia - Protect - TM17
  (397, 39700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 16),
  -- Staravia - Rain Dance - TM18
  (397, 39700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 17),
  -- Staravia - Frustration - TM21
  (397, 39700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Staravia - Return - TM27
  (397, 39700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 19),
  -- Staravia - Double Team - TM32
  (397, 39700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 20),
  -- Staravia - Aerial Ace - TM40
  (397, 39700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 21),
  -- Staravia - Facade - TM42
  (397, 39700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 22),
  -- Staravia - Secret Power - TM43
  (397, 39700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 23),
  -- Staravia - Rest - TM44
  (397, 39700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 24),
  -- Staravia - Attract - TM45
  (397, 39700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 25),
  -- Staravia - Thief - TM46
  (397, 39700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 26),
  -- Staravia - Steel Wing - TM47
  (397, 39700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 27),
  -- Staravia - Roost - TM51
  (397, 39700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 28),
  -- Staravia - Endure - TM58
  (397, 39700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 29),
  -- Staravia - Captivate - TM78
  (397, 39700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 30),
  -- Staravia - Sleep Talk - TM82
  (397, 39700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 31),
  -- Staravia - Natural Gift - TM83
  (397, 39700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 32),
  -- Staravia - Swagger - TM87
  (397, 39700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 33),
  -- Staravia - Pluck - TM88
  (397, 39700, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 34),
  -- Staravia - U-turn - TM89
  (397, 39700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 35),
  -- Staravia - Substitute - TM90
  (397, 39700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 36),
  -- Staravia - Fly - HM02
  (397, 39700, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 37),
  -- Staravia - Defog - HM05
  (397, 39700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 38),
  -- Staravia - Swift - Tutor
  (397, 39700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 39),
  -- Staravia - Snore - Tutor
  (397, 39700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Staravia - Mud-Slap - Tutor
  (397, 39700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Staravia - Twister - Tutor
  (397, 39700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Staravia - Heat Wave - Tutor
  (397, 39700, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Staravia - Endeavor - Tutor
  (397, 39700, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Staravia - Air Cutter - Tutor
  (397, 39700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Staravia - Ominous Wind - Tutor
  (397, 39700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Staraptor - Wing Attack - Level 1
  (398, 39800, 17, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staraptor - Tackle - Level 1
  (398, 39800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staraptor - Growl - Level 1
  (398, 39800, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staraptor - Quick Attack - Level 1
  (398, 39800, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Staraptor - Quick Attack - Level 5
  (398, 39800, 98, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Staraptor - Wing Attack - Level 9
  (398, 39800, 17, 9, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Staraptor - Double Team - Level 13
  (398, 39800, 104, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Staraptor - Endeavor - Level 18
  (398, 39800, 283, 9, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Staraptor - Whirlwind - Level 23
  (398, 39800, 18, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Staraptor - Aerial Ace - Level 28
  (398, 39800, 332, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Staraptor - Take Down - Level 33
  (398, 39800, 36, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Staraptor - Close Combat - Level 34
  (398, 39800, 370, 9, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Staraptor - Agility - Level 41
  (398, 39800, 97, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Staraptor - Brave Bird - Level 49
  (398, 39800, 413, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Staraptor - Toxic - TM06
  (398, 39800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Staraptor - Hidden Power - TM10
  (398, 39800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Staraptor - Sunny Day - TM11
  (398, 39800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Staraptor - Hyper Beam - TM15
  (398, 39800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Staraptor - Protect - TM17
  (398, 39800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Staraptor - Rain Dance - TM18
  (398, 39800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Staraptor - Frustration - TM21
  (398, 39800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Staraptor - Return - TM27
  (398, 39800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Staraptor - Double Team - TM32
  (398, 39800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Staraptor - Aerial Ace - TM40
  (398, 39800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 24),
  -- Staraptor - Facade - TM42
  (398, 39800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 25),
  -- Staraptor - Secret Power - TM43
  (398, 39800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 26),
  -- Staraptor - Rest - TM44
  (398, 39800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 27),
  -- Staraptor - Attract - TM45
  (398, 39800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 28),
  -- Staraptor - Thief - TM46
  (398, 39800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 29),
  -- Staraptor - Steel Wing - TM47
  (398, 39800, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 30),
  -- Staraptor - Roost - TM51
  (398, 39800, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 31),
  -- Staraptor - Endure - TM58
  (398, 39800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 32),
  -- Staraptor - Giga Impact - TM68
  (398, 39800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 33),
  -- Staraptor - Captivate - TM78
  (398, 39800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Staraptor - Sleep Talk - TM82
  (398, 39800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Staraptor - Natural Gift - TM83
  (398, 39800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Staraptor - Swagger - TM87
  (398, 39800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Staraptor - Pluck - TM88
  (398, 39800, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 38),
  -- Staraptor - U-turn - TM89
  (398, 39800, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 39),
  -- Staraptor - Substitute - TM90
  (398, 39800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 40),
  -- Staraptor - Fly - HM02
  (398, 39800, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 41),
  -- Staraptor - Defog - HM05
  (398, 39800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 42),
  -- Staraptor - Swift - Tutor
  (398, 39800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Staraptor - Snore - Tutor
  (398, 39800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Staraptor - Mud-Slap - Tutor
  (398, 39800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Staraptor - Twister - Tutor
  (398, 39800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Staraptor - Heat Wave - Tutor
  (398, 39800, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Staraptor - Endeavor - Tutor
  (398, 39800, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Staraptor - Air Cutter - Tutor
  (398, 39800, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Staraptor - Ominous Wind - Tutor
  (398, 39800, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Bidoof - Tackle - Level 1
  (399, 39900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bidoof - Growl - Level 5
  (399, 39900, 45, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bidoof - Defense Curl - Level 9
  (399, 39900, 111, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bidoof - Rollout - Level 13
  (399, 39900, 205, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bidoof - Headbutt - Level 17
  (399, 39900, 29, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bidoof - Hyper Fang - Level 21
  (399, 39900, 158, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bidoof - Yawn - Level 25
  (399, 39900, 281, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bidoof - Amnesia - Level 29
  (399, 39900, 133, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Bidoof - Take Down - Level 33
  (399, 39900, 36, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Bidoof - Super Fang - Level 37
  (399, 39900, 162, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Bidoof - Superpower - Level 41
  (399, 39900, 276, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Bidoof - Curse - Level 45
  (399, 39900, 174, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Bidoof - Toxic - TM06
  (399, 39900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Bidoof - Hidden Power - TM10
  (399, 39900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 14),
  -- Bidoof - Sunny Day - TM11
  (399, 39900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 15),
  -- Bidoof - Taunt - TM12
  (399, 39900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 16),
  -- Bidoof - Ice Beam - TM13
  (399, 39900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Bidoof - Blizzard - TM14
  (399, 39900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Bidoof - Protect - TM17
  (399, 39900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Bidoof - Rain Dance - TM18
  (399, 39900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Bidoof - Frustration - TM21
  (399, 39900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Bidoof - Iron Tail - TM23
  (399, 39900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 22),
  -- Bidoof - Thunderbolt - TM24
  (399, 39900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 23),
  -- Bidoof - Thunder - TM25
  (399, 39900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 24),
  -- Bidoof - Return - TM27
  (399, 39900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Bidoof - Dig - TM28
  (399, 39900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Bidoof - Shadow Ball - TM30
  (399, 39900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 27),
  -- Bidoof - Double Team - TM32
  (399, 39900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Bidoof - Shock Wave - TM34
  (399, 39900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 29),
  -- Bidoof - Facade - TM42
  (399, 39900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Bidoof - Secret Power - TM43
  (399, 39900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Bidoof - Rest - TM44
  (399, 39900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Bidoof - Attract - TM45
  (399, 39900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Bidoof - Thief - TM46
  (399, 39900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 34),
  -- Bidoof - Charge Beam - TM57
  (399, 39900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 35),
  -- Bidoof - Endure - TM58
  (399, 39900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Bidoof - Thunder Wave - TM73
  (399, 39900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 37),
  -- Bidoof - Stealth Rock - TM76
  (399, 39900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 38),
  -- Bidoof - Captivate - TM78
  (399, 39900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Bidoof - Sleep Talk - TM82
  (399, 39900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Bidoof - Natural Gift - TM83
  (399, 39900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Bidoof - Grass Knot - TM86
  (399, 39900, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 42),
  -- Bidoof - Swagger - TM87
  (399, 39900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Bidoof - Pluck - TM88
  (399, 39900, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 44),
  -- Bidoof - Substitute - TM90
  (399, 39900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Bidoof - Cut - HM01
  (399, 39900, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 46),
  -- Bidoof - Rock Smash - HM06
  (399, 39900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 47),
  -- Bidoof - Double-Edge - Egg
  (399, 39900, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bidoof - Quick Attack - Egg
  (399, 39900, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bidoof - Defense Curl - Egg
  (399, 39900, 111, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bidoof - Fury Swipes - Egg
  (399, 39900, 154, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bidoof - Rollout - Egg
  (399, 39900, 205, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bidoof - Odor Sleuth - Egg
  (399, 39900, 316, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bidoof - Water Sport - Egg
  (399, 39900, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bidoof - Aqua Tail - Egg
  (399, 39900, 401, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bidoof - Swift - Tutor
  (399, 39900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Bidoof - Snore - Tutor
  (399, 39900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Bidoof - Mud-Slap - Tutor
  (399, 39900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Bidoof - Icy Wind - Tutor
  (399, 39900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Bidoof - Rollout - Tutor
  (399, 39900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Bidoof - Fury Cutter - Tutor
  (399, 39900, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Bidoof - Superpower - Tutor
  (399, 39900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Bidoof - Last Resort - Tutor
  (399, 39900, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Bidoof - Aqua Tail - Tutor
  (399, 39900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Bibarel - Tackle - Level 1
  (400, 40000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bibarel - Growl - Level 1
  (400, 40000, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bibarel - Growl - Level 5
  (400, 40000, 45, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bibarel - Defense Curl - Level 9
  (400, 40000, 111, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bibarel - Rollout - Level 13
  (400, 40000, 205, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bibarel - Water Gun - Level 15
  (400, 40000, 55, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bibarel - Headbutt - Level 18
  (400, 40000, 29, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Bibarel - Hyper Fang - Level 23
  (400, 40000, 158, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Bibarel - Yawn - Level 28
  (400, 40000, 281, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Bibarel - Amnesia - Level 33
  (400, 40000, 133, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Bibarel - Take Down - Level 38
  (400, 40000, 36, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Bibarel - Super Fang - Level 43
  (400, 40000, 162, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Bibarel - Superpower - Level 48
  (400, 40000, 276, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Bibarel - Curse - Level 53
  (400, 40000, 174, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Bibarel - Focus Punch - TM01
  (400, 40000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Bibarel - Water Pulse - TM03
  (400, 40000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Bibarel - Toxic - TM06
  (400, 40000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Bibarel - Hidden Power - TM10
  (400, 40000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Bibarel - Sunny Day - TM11
  (400, 40000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Bibarel - Taunt - TM12
  (400, 40000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Bibarel - Ice Beam - TM13
  (400, 40000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Bibarel - Blizzard - TM14
  (400, 40000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Bibarel - Hyper Beam - TM15
  (400, 40000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Bibarel - Protect - TM17
  (400, 40000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Bibarel - Rain Dance - TM18
  (400, 40000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Bibarel - Frustration - TM21
  (400, 40000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Bibarel - Iron Tail - TM23
  (400, 40000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Bibarel - Thunderbolt - TM24
  (400, 40000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Bibarel - Thunder - TM25
  (400, 40000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Bibarel - Return - TM27
  (400, 40000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Bibarel - Dig - TM28
  (400, 40000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Bibarel - Shadow Ball - TM30
  (400, 40000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Bibarel - Double Team - TM32
  (400, 40000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Bibarel - Shock Wave - TM34
  (400, 40000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Bibarel - Facade - TM42
  (400, 40000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Bibarel - Secret Power - TM43
  (400, 40000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Bibarel - Rest - TM44
  (400, 40000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Bibarel - Attract - TM45
  (400, 40000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Bibarel - Thief - TM46
  (400, 40000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Bibarel - Fling - TM56
  (400, 40000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Bibarel - Charge Beam - TM57
  (400, 40000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 41),
  -- Bibarel - Endure - TM58
  (400, 40000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Bibarel - Giga Impact - TM68
  (400, 40000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Bibarel - Thunder Wave - TM73
  (400, 40000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 44),
  -- Bibarel - Stealth Rock - TM76
  (400, 40000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 45),
  -- Bibarel - Captivate - TM78
  (400, 40000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Bibarel - Sleep Talk - TM82
  (400, 40000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Bibarel - Natural Gift - TM83
  (400, 40000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Bibarel - Grass Knot - TM86
  (400, 40000, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 49),
  -- Bibarel - Swagger - TM87
  (400, 40000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Bibarel - Pluck - TM88
  (400, 40000, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 51),
  -- Bibarel - Substitute - TM90
  (400, 40000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Bibarel - Cut - HM01
  (400, 40000, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 53),
  -- Bibarel - Surf - HM03
  (400, 40000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 54),
  -- Bibarel - Strength - HM04
  (400, 40000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Bibarel - Defog - HM05
  (400, 40000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 56),
  -- Bibarel - Rock Smash - HM06
  (400, 40000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 57),
  -- Bibarel - Waterfall - HM07
  (400, 40000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 58),
  -- Bibarel - Rock Climb - HM08
  (400, 40000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 59),
  -- Bibarel - Swift - Tutor
  (400, 40000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Bibarel - Snore - Tutor
  (400, 40000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Bibarel - Mud-Slap - Tutor
  (400, 40000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Bibarel - Icy Wind - Tutor
  (400, 40000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Bibarel - Rollout - Tutor
  (400, 40000, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Bibarel - Fury Cutter - Tutor
  (400, 40000, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Bibarel - Superpower - Tutor
  (400, 40000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Bibarel - Dive - Tutor
  (400, 40000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Bibarel - Last Resort - Tutor
  (400, 40000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Bibarel - Aqua Tail - Tutor
  (400, 40000, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69);
