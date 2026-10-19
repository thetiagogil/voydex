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
-- Ultra Sun / Ultra Moon learnsets for default forms, species 351-400.
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
  -- Castform - Tackle - Level 1
  (351, 35100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Castform - Ember - Level 10
  (351, 35100, 52, 16, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Castform - Water Gun - Level 10
  (351, 35100, 55, 16, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Castform - Powder Snow - Level 10
  (351, 35100, 181, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Castform - Headbutt - Level 15
  (351, 35100, 29, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Castform - Rain Dance - Level 20
  (351, 35100, 240, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Castform - Sunny Day - Level 20
  (351, 35100, 241, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Castform - Hail - Level 20
  (351, 35100, 258, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Castform - Weather Ball - Level 25
  (351, 35100, 311, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Castform - Hydro Pump - Level 35
  (351, 35100, 56, 16, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Castform - Blizzard - Level 35
  (351, 35100, 59, 16, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Castform - Fire Blast - Level 35
  (351, 35100, 126, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Castform - Hurricane - Level 45
  (351, 35100, 542, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Castform - Work Up - TM01
  (351, 35100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Castform - Toxic - TM06
  (351, 35100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Castform - Hail - TM07
  (351, 35100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Castform - Hidden Power - TM10
  (351, 35100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Castform - Sunny Day - TM11
  (351, 35100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Castform - Ice Beam - TM13
  (351, 35100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Castform - Blizzard - TM14
  (351, 35100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Castform - Protect - TM17
  (351, 35100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Castform - Rain Dance - TM18
  (351, 35100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Castform - Frustration - TM21
  (351, 35100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Castform - Solar Beam - TM22
  (351, 35100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Castform - Thunderbolt - TM24
  (351, 35100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Castform - Thunder - TM25
  (351, 35100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Castform - Return - TM27
  (351, 35100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Castform - Shadow Ball - TM30
  (351, 35100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Castform - Double Team - TM32
  (351, 35100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Castform - Flamethrower - TM35
  (351, 35100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 30),
  -- Castform - Sandstorm - TM37
  (351, 35100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 31),
  -- Castform - Fire Blast - TM38
  (351, 35100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 32),
  -- Castform - Facade - TM42
  (351, 35100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Castform - Rest - TM44
  (351, 35100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Castform - Attract - TM45
  (351, 35100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Castform - Thief - TM46
  (351, 35100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Castform - Round - TM48
  (351, 35100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Castform - Energy Ball - TM53
  (351, 35100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Castform - Scald - TM55
  (351, 35100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 39),
  -- Castform - Thunder Wave - TM73
  (351, 35100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Castform - Psych Up - TM77
  (351, 35100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Castform - Swagger - TM87
  (351, 35100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Castform - Sleep Talk - TM88
  (351, 35100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Castform - Substitute - TM90
  (351, 35100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Castform - Confide - TM100
  (351, 35100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Castform - Disable - Egg
  (351, 35100, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Castform - Amnesia - Egg
  (351, 35100, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Castform - Future Sight - Egg
  (351, 35100, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Castform - Cosmic Power - Egg
  (351, 35100, 322, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Castform - Lucky Chant - Egg
  (351, 35100, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Castform - Guard Swap - Egg
  (351, 35100, 385, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Castform - Ominous Wind - Egg
  (351, 35100, 466, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Castform - Clear Smog - Egg
  (351, 35100, 499, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Castform - Hex - Egg
  (351, 35100, 506, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Castform - Reflect Type - Egg
  (351, 35100, 513, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Castform - Snore - Tutor
  (351, 35100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Castform - Icy Wind - Tutor
  (351, 35100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Castform - Shock Wave - Tutor
  (351, 35100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Castform - Water Pulse - Tutor
  (351, 35100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Castform - Tailwind - Tutor
  (351, 35100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Castform - Last Resort - Tutor
  (351, 35100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Castform - Defog - Tutor
  (351, 35100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Kecleon - Scratch - Level 1
  (352, 35200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kecleon - Tail Whip - Level 1
  (352, 35200, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kecleon - Lick - Level 1
  (352, 35200, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kecleon - Thief - Level 1
  (352, 35200, 168, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kecleon - Astonish - Level 1
  (352, 35200, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kecleon - Bind - Level 4
  (352, 35200, 20, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Kecleon - Shadow Sneak - Level 7
  (352, 35200, 425, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Kecleon - Feint - Level 10
  (352, 35200, 364, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Kecleon - Fury Swipes - Level 13
  (352, 35200, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Kecleon - Feint Attack - Level 16
  (352, 35200, 185, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Kecleon - Psybeam - Level 18
  (352, 35200, 60, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Kecleon - Ancient Power - Level 21
  (352, 35200, 246, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Kecleon - Slash - Level 25
  (352, 35200, 163, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Kecleon - Camouflage - Level 30
  (352, 35200, 293, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Kecleon - Shadow Claw - Level 33
  (352, 35200, 421, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Kecleon - Screech - Level 38
  (352, 35200, 103, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Kecleon - Substitute - Level 42
  (352, 35200, 164, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Kecleon - Sucker Punch - Level 46
  (352, 35200, 389, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Kecleon - Synchronoise - Level 50
  (352, 35200, 485, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Kecleon - Work Up - TM01
  (352, 35200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Kecleon - Toxic - TM06
  (352, 35200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Kecleon - Hidden Power - TM10
  (352, 35200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Kecleon - Sunny Day - TM11
  (352, 35200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Kecleon - Ice Beam - TM13
  (352, 35200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Kecleon - Blizzard - TM14
  (352, 35200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Kecleon - Protect - TM17
  (352, 35200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Kecleon - Rain Dance - TM18
  (352, 35200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Kecleon - Frustration - TM21
  (352, 35200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Kecleon - Solar Beam - TM22
  (352, 35200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Kecleon - Thunderbolt - TM24
  (352, 35200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Kecleon - Thunder - TM25
  (352, 35200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Kecleon - Return - TM27
  (352, 35200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Kecleon - Shadow Ball - TM30
  (352, 35200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Kecleon - Brick Break - TM31
  (352, 35200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Kecleon - Double Team - TM32
  (352, 35200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Kecleon - Flamethrower - TM35
  (352, 35200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Kecleon - Fire Blast - TM38
  (352, 35200, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 37),
  -- Kecleon - Rock Tomb - TM39
  (352, 35200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Kecleon - Aerial Ace - TM40
  (352, 35200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 39),
  -- Kecleon - Facade - TM42
  (352, 35200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Kecleon - Rest - TM44
  (352, 35200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Kecleon - Attract - TM45
  (352, 35200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Kecleon - Thief - TM46
  (352, 35200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 43),
  -- Kecleon - Round - TM48
  (352, 35200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Kecleon - Fling - TM56
  (352, 35200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Kecleon - Charge Beam - TM57
  (352, 35200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 46),
  -- Kecleon - Shadow Claw - TM65
  (352, 35200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 47),
  -- Kecleon - Thunder Wave - TM73
  (352, 35200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Kecleon - Psych Up - TM77
  (352, 35200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 49),
  -- Kecleon - Rock Slide - TM80
  (352, 35200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Kecleon - Grass Knot - TM86
  (352, 35200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 51),
  -- Kecleon - Swagger - TM87
  (352, 35200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Kecleon - Sleep Talk - TM88
  (352, 35200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Kecleon - Substitute - TM90
  (352, 35200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Kecleon - Trick Room - TM92
  (352, 35200, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 55),
  -- Kecleon - Confide - TM100
  (352, 35200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Kecleon - Disable - Egg
  (352, 35200, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kecleon - Recover - Egg
  (352, 35200, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kecleon - Dizzy Punch - Egg
  (352, 35200, 146, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kecleon - Fake Out - Egg
  (352, 35200, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kecleon - Trick - Egg
  (352, 35200, 271, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Kecleon - Magic Coat - Egg
  (352, 35200, 277, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kecleon - Skill Swap - Egg
  (352, 35200, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Kecleon - Snatch - Egg
  (352, 35200, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Kecleon - Camouflage - Egg
  (352, 35200, 293, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Kecleon - Nasty Plot - Egg
  (352, 35200, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kecleon - Foul Play - Egg
  (352, 35200, 492, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kecleon - Power-Up Punch - Egg
  (352, 35200, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kecleon - Fire Punch - Tutor
  (352, 35200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Kecleon - Ice Punch - Tutor
  (352, 35200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Kecleon - Thunder Punch - Tutor
  (352, 35200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Kecleon - Bind - Tutor
  (352, 35200, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Kecleon - Low Kick - Tutor
  (352, 35200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Kecleon - Snore - Tutor
  (352, 35200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Kecleon - Icy Wind - Tutor
  (352, 35200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Kecleon - Iron Tail - Tutor
  (352, 35200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Kecleon - Focus Punch - Tutor
  (352, 35200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Kecleon - Trick - Tutor
  (352, 35200, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Kecleon - Role Play - Tutor
  (352, 35200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Kecleon - Magic Coat - Tutor
  (352, 35200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Kecleon - Recycle - Tutor
  (352, 35200, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Kecleon - Knock Off - Tutor
  (352, 35200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Kecleon - Skill Swap - Tutor
  (352, 35200, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Kecleon - Snatch - Tutor
  (352, 35200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Kecleon - Shock Wave - Tutor
  (352, 35200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Kecleon - Water Pulse - Tutor
  (352, 35200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Kecleon - Last Resort - Tutor
  (352, 35200, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Kecleon - Aqua Tail - Tutor
  (352, 35200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Kecleon - Drain Punch - Tutor
  (352, 35200, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Kecleon - Stealth Rock - Tutor
  (352, 35200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Kecleon - Wonder Room - Tutor
  (352, 35200, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Kecleon - Foul Play - Tutor
  (352, 35200, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Kecleon - After You - Tutor
  (352, 35200, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),

  -- Shuppet - Knock Off - Level 1
  (353, 35300, 282, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuppet - Screech - Level 4
  (353, 35300, 103, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shuppet - Night Shade - Level 7
  (353, 35300, 101, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Shuppet - Spite - Level 10
  (353, 35300, 180, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shuppet - Shadow Sneak - Level 13
  (353, 35300, 425, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shuppet - Will-O-Wisp - Level 16
  (353, 35300, 261, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shuppet - Feint Attack - Level 19
  (353, 35300, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Shuppet - Hex - Level 22
  (353, 35300, 506, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Shuppet - Curse - Level 26
  (353, 35300, 174, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Shuppet - Shadow Ball - Level 30
  (353, 35300, 247, 16, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Shuppet - Embargo - Level 34
  (353, 35300, 373, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Shuppet - Sucker Punch - Level 38
  (353, 35300, 389, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Shuppet - Snatch - Level 42
  (353, 35300, 289, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Shuppet - Grudge - Level 46
  (353, 35300, 288, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Shuppet - Trick - Level 50
  (353, 35300, 271, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Shuppet - Phantom Force - Level 54
  (353, 35300, 566, 16, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Shuppet - Calm Mind - TM04
  (353, 35300, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Shuppet - Toxic - TM06
  (353, 35300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Shuppet - Hidden Power - TM10
  (353, 35300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Shuppet - Sunny Day - TM11
  (353, 35300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Shuppet - Taunt - TM12
  (353, 35300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Shuppet - Protect - TM17
  (353, 35300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Shuppet - Rain Dance - TM18
  (353, 35300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Shuppet - Frustration - TM21
  (353, 35300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Shuppet - Thunderbolt - TM24
  (353, 35300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Shuppet - Thunder - TM25
  (353, 35300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Shuppet - Return - TM27
  (353, 35300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Shuppet - Psychic - TM29
  (353, 35300, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Shuppet - Shadow Ball - TM30
  (353, 35300, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Shuppet - Double Team - TM32
  (353, 35300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Shuppet - Torment - TM41
  (353, 35300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Shuppet - Facade - TM42
  (353, 35300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Shuppet - Rest - TM44
  (353, 35300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Shuppet - Attract - TM45
  (353, 35300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Shuppet - Thief - TM46
  (353, 35300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Shuppet - Round - TM48
  (353, 35300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Shuppet - Charge Beam - TM57
  (353, 35300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Shuppet - Will-O-Wisp - TM61
  (353, 35300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 38),
  -- Shuppet - Embargo - TM63
  (353, 35300, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 39),
  -- Shuppet - Payback - TM66
  (353, 35300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Shuppet - Thunder Wave - TM73
  (353, 35300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 41),
  -- Shuppet - Psych Up - TM77
  (353, 35300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Shuppet - Dream Eater - TM85
  (353, 35300, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Shuppet - Swagger - TM87
  (353, 35300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Shuppet - Sleep Talk - TM88
  (353, 35300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Shuppet - Substitute - TM90
  (353, 35300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Shuppet - Trick Room - TM92
  (353, 35300, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 47),
  -- Shuppet - Dark Pulse - TM97
  (353, 35300, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 48),
  -- Shuppet - Dazzling Gleam - TM99
  (353, 35300, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 49),
  -- Shuppet - Confide - TM100
  (353, 35300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Shuppet - Disable - Egg
  (353, 35300, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuppet - Confuse Ray - Egg
  (353, 35300, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuppet - Foresight - Egg
  (353, 35300, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuppet - Destiny Bond - Egg
  (353, 35300, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuppet - Pursuit - Egg
  (353, 35300, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shuppet - Imprison - Egg
  (353, 35300, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shuppet - Astonish - Egg
  (353, 35300, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shuppet - Shadow Sneak - Egg
  (353, 35300, 425, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shuppet - Gunk Shot - Egg
  (353, 35300, 441, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shuppet - Ominous Wind - Egg
  (353, 35300, 466, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Shuppet - Phantom Force - Egg
  (353, 35300, 566, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Shuppet - Snore - Tutor
  (353, 35300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Shuppet - Spite - Tutor
  (353, 35300, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Shuppet - Icy Wind - Tutor
  (353, 35300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Shuppet - Pain Split - Tutor
  (353, 35300, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Shuppet - Trick - Tutor
  (353, 35300, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Shuppet - Role Play - Tutor
  (353, 35300, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Shuppet - Magic Coat - Tutor
  (353, 35300, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Shuppet - Knock Off - Tutor
  (353, 35300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Shuppet - Skill Swap - Tutor
  (353, 35300, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Shuppet - Snatch - Tutor
  (353, 35300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Shuppet - Shock Wave - Tutor
  (353, 35300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Shuppet - Gunk Shot - Tutor
  (353, 35300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Shuppet - Telekinesis - Tutor
  (353, 35300, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Shuppet - Magic Room - Tutor
  (353, 35300, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Shuppet - Foul Play - Tutor
  (353, 35300, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Shuppet - Ally Switch - Tutor
  (353, 35300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Banette - Night Shade - Level 1
  (354, 35400, 101, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Banette - Screech - Level 1
  (354, 35400, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Banette - Spite - Level 1
  (354, 35400, 180, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Banette - Knock Off - Level 1
  (354, 35400, 282, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Banette - Phantom Force - Level 1
  (354, 35400, 566, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Banette - Screech - Level 4
  (354, 35400, 103, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Banette - Night Shade - Level 7
  (354, 35400, 101, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Banette - Spite - Level 10
  (354, 35400, 180, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Banette - Shadow Sneak - Level 13
  (354, 35400, 425, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Banette - Will-O-Wisp - Level 16
  (354, 35400, 261, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Banette - Feint Attack - Level 19
  (354, 35400, 185, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Banette - Hex - Level 22
  (354, 35400, 506, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Banette - Curse - Level 26
  (354, 35400, 174, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Banette - Shadow Ball - Level 30
  (354, 35400, 247, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Banette - Embargo - Level 34
  (354, 35400, 373, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Banette - Sucker Punch - Level 40
  (354, 35400, 389, 16, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Banette - Snatch - Level 46
  (354, 35400, 289, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Banette - Grudge - Level 52
  (354, 35400, 288, 16, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Banette - Trick - Level 58
  (354, 35400, 271, 16, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Banette - Phantom Force - Level 64
  (354, 35400, 566, 16, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Banette - Calm Mind - TM04
  (354, 35400, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 21),
  -- Banette - Toxic - TM06
  (354, 35400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Banette - Hidden Power - TM10
  (354, 35400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Banette - Sunny Day - TM11
  (354, 35400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Banette - Taunt - TM12
  (354, 35400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Banette - Hyper Beam - TM15
  (354, 35400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Banette - Protect - TM17
  (354, 35400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Banette - Rain Dance - TM18
  (354, 35400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Banette - Frustration - TM21
  (354, 35400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Banette - Thunderbolt - TM24
  (354, 35400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Banette - Thunder - TM25
  (354, 35400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Banette - Return - TM27
  (354, 35400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Banette - Psychic - TM29
  (354, 35400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Banette - Shadow Ball - TM30
  (354, 35400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Banette - Double Team - TM32
  (354, 35400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Banette - Torment - TM41
  (354, 35400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Banette - Facade - TM42
  (354, 35400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Banette - Rest - TM44
  (354, 35400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Banette - Attract - TM45
  (354, 35400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Banette - Thief - TM46
  (354, 35400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Banette - Round - TM48
  (354, 35400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Banette - Fling - TM56
  (354, 35400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Banette - Charge Beam - TM57
  (354, 35400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 43),
  -- Banette - Will-O-Wisp - TM61
  (354, 35400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 44),
  -- Banette - Embargo - TM63
  (354, 35400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 45),
  -- Banette - Shadow Claw - TM65
  (354, 35400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 46),
  -- Banette - Payback - TM66
  (354, 35400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 47),
  -- Banette - Giga Impact - TM68
  (354, 35400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 48),
  -- Banette - Thunder Wave - TM73
  (354, 35400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Banette - Psych Up - TM77
  (354, 35400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 50),
  -- Banette - Infestation - TM83
  (354, 35400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 51),
  -- Banette - Dream Eater - TM85
  (354, 35400, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 52),
  -- Banette - Swagger - TM87
  (354, 35400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Banette - Sleep Talk - TM88
  (354, 35400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Banette - Substitute - TM90
  (354, 35400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Banette - Trick Room - TM92
  (354, 35400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 56),
  -- Banette - Dark Pulse - TM97
  (354, 35400, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 57),
  -- Banette - Dazzling Gleam - TM99
  (354, 35400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 58),
  -- Banette - Confide - TM100
  (354, 35400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 59),
  -- Banette - Snore - Tutor
  (354, 35400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Banette - Spite - Tutor
  (354, 35400, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Banette - Icy Wind - Tutor
  (354, 35400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Banette - Pain Split - Tutor
  (354, 35400, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Banette - Trick - Tutor
  (354, 35400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Banette - Role Play - Tutor
  (354, 35400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Banette - Magic Coat - Tutor
  (354, 35400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Banette - Knock Off - Tutor
  (354, 35400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Banette - Skill Swap - Tutor
  (354, 35400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Banette - Snatch - Tutor
  (354, 35400, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Banette - Shock Wave - Tutor
  (354, 35400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Banette - Gunk Shot - Tutor
  (354, 35400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Banette - Telekinesis - Tutor
  (354, 35400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Banette - Magic Room - Tutor
  (354, 35400, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Banette - Foul Play - Tutor
  (354, 35400, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Banette - Ally Switch - Tutor
  (354, 35400, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Banette - Throat Chop - Tutor
  (354, 35400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Duskull - Leer - Level 1
  (355, 35500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Night Shade - Level 1
  (355, 35500, 101, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 6
  (355, 35500, 50, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Duskull - Astonish - Level 9
  (355, 35500, 310, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Duskull - Foresight - Level 14
  (355, 35500, 193, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Duskull - Shadow Sneak - Level 17
  (355, 35500, 425, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Duskull - Pursuit - Level 22
  (355, 35500, 228, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Duskull - Will-O-Wisp - Level 25
  (355, 35500, 261, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Duskull - Confuse Ray - Level 30
  (355, 35500, 109, 16, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Duskull - Curse - Level 33
  (355, 35500, 174, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Duskull - Hex - Level 38
  (355, 35500, 506, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Duskull - Shadow Ball - Level 41
  (355, 35500, 247, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Duskull - Mean Look - Level 46
  (355, 35500, 212, 16, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Duskull - Payback - Level 49
  (355, 35500, 371, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Duskull - Future Sight - Level 54
  (355, 35500, 248, 16, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Duskull - Calm Mind - TM04
  (355, 35500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Duskull - Toxic - TM06
  (355, 35500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Duskull - Hidden Power - TM10
  (355, 35500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Duskull - Sunny Day - TM11
  (355, 35500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Duskull - Taunt - TM12
  (355, 35500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Duskull - Ice Beam - TM13
  (355, 35500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Duskull - Blizzard - TM14
  (355, 35500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Duskull - Protect - TM17
  (355, 35500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Duskull - Rain Dance - TM18
  (355, 35500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Duskull - Frustration - TM21
  (355, 35500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Duskull - Return - TM27
  (355, 35500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Duskull - Psychic - TM29
  (355, 35500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Duskull - Shadow Ball - TM30
  (355, 35500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Duskull - Double Team - TM32
  (355, 35500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Duskull - Torment - TM41
  (355, 35500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Duskull - Facade - TM42
  (355, 35500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Duskull - Rest - TM44
  (355, 35500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Duskull - Attract - TM45
  (355, 35500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Duskull - Thief - TM46
  (355, 35500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Duskull - Round - TM48
  (355, 35500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Duskull - Fling - TM56
  (355, 35500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Duskull - Charge Beam - TM57
  (355, 35500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 37),
  -- Duskull - Will-O-Wisp - TM61
  (355, 35500, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 38),
  -- Duskull - Embargo - TM63
  (355, 35500, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 39),
  -- Duskull - Payback - TM66
  (355, 35500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Duskull - Psych Up - TM77
  (355, 35500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Duskull - Infestation - TM83
  (355, 35500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 42),
  -- Duskull - Dream Eater - TM85
  (355, 35500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 43),
  -- Duskull - Swagger - TM87
  (355, 35500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Duskull - Sleep Talk - TM88
  (355, 35500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Duskull - Substitute - TM90
  (355, 35500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Duskull - Trick Room - TM92
  (355, 35500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 47),
  -- Duskull - Dark Pulse - TM97
  (355, 35500, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 48),
  -- Duskull - Confide - TM100
  (355, 35500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Duskull - Haze - Egg
  (355, 35500, 114, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Duskull - Feint Attack - Egg
  (355, 35500, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Duskull - Destiny Bond - Egg
  (355, 35500, 194, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Duskull - Pain Split - Egg
  (355, 35500, 220, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Duskull - Memento - Egg
  (355, 35500, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Duskull - Skill Swap - Egg
  (355, 35500, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Duskull - Imprison - Egg
  (355, 35500, 286, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Duskull - Grudge - Egg
  (355, 35500, 288, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Duskull - Dark Pulse - Egg
  (355, 35500, 399, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Duskull - Ominous Wind - Egg
  (355, 35500, 466, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Duskull - Snore - Tutor
  (355, 35500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Duskull - Spite - Tutor
  (355, 35500, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Duskull - Icy Wind - Tutor
  (355, 35500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Duskull - Pain Split - Tutor
  (355, 35500, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Duskull - Trick - Tutor
  (355, 35500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Duskull - Skill Swap - Tutor
  (355, 35500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Duskull - Snatch - Tutor
  (355, 35500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Duskull - Gravity - Tutor
  (355, 35500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Duskull - Wonder Room - Tutor
  (355, 35500, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Duskull - Telekinesis - Tutor
  (355, 35500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Duskull - Ally Switch - Tutor
  (355, 35500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Dusclops - Fire Punch - Level 1
  (356, 35600, 7, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Ice Punch - Level 1
  (356, 35600, 8, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusclops - Thunder Punch - Level 1
  (356, 35600, 9, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusclops - Bind - Level 1
  (356, 35600, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusclops - Leer - Level 1
  (356, 35600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusclops - Disable - Level 1
  (356, 35600, 50, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusclops - Night Shade - Level 1
  (356, 35600, 101, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusclops - Future Sight - Level 1
  (356, 35600, 248, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusclops - Astonish - Level 1
  (356, 35600, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dusclops - Shadow Punch - Level 1
  (356, 35600, 325, 16, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Dusclops - Gravity - Level 1
  (356, 35600, 356, 16, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Dusclops - Disable - Level 6
  (356, 35600, 50, 16, NULL, 1, 6, NULL, NULL, NULL, 12),
  -- Dusclops - Astonish - Level 9
  (356, 35600, 310, 16, NULL, 1, 9, NULL, NULL, NULL, 13),
  -- Dusclops - Foresight - Level 14
  (356, 35600, 193, 16, NULL, 1, 14, NULL, NULL, NULL, 14),
  -- Dusclops - Shadow Sneak - Level 17
  (356, 35600, 425, 16, NULL, 1, 17, NULL, NULL, NULL, 15),
  -- Dusclops - Pursuit - Level 22
  (356, 35600, 228, 16, NULL, 1, 22, NULL, NULL, NULL, 16),
  -- Dusclops - Will-O-Wisp - Level 25
  (356, 35600, 261, 16, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Dusclops - Confuse Ray - Level 30
  (356, 35600, 109, 16, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Dusclops - Curse - Level 33
  (356, 35600, 174, 16, NULL, 1, 33, NULL, NULL, NULL, 19),
  -- Dusclops - Hex - Level 40
  (356, 35600, 506, 16, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Dusclops - Shadow Ball - Level 45
  (356, 35600, 247, 16, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Dusclops - Mean Look - Level 52
  (356, 35600, 212, 16, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Dusclops - Payback - Level 57
  (356, 35600, 371, 16, NULL, 1, 57, NULL, NULL, NULL, 23),
  -- Dusclops - Future Sight - Level 64
  (356, 35600, 248, 16, NULL, 1, 64, NULL, NULL, NULL, 24),
  -- Dusclops - Calm Mind - TM04
  (356, 35600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 25),
  -- Dusclops - Toxic - TM06
  (356, 35600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 26),
  -- Dusclops - Hidden Power - TM10
  (356, 35600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 27),
  -- Dusclops - Sunny Day - TM11
  (356, 35600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 28),
  -- Dusclops - Taunt - TM12
  (356, 35600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 29),
  -- Dusclops - Ice Beam - TM13
  (356, 35600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 30),
  -- Dusclops - Blizzard - TM14
  (356, 35600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 31),
  -- Dusclops - Hyper Beam - TM15
  (356, 35600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 32),
  -- Dusclops - Protect - TM17
  (356, 35600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 33),
  -- Dusclops - Rain Dance - TM18
  (356, 35600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 34),
  -- Dusclops - Frustration - TM21
  (356, 35600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Dusclops - Earthquake - TM26
  (356, 35600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 36),
  -- Dusclops - Return - TM27
  (356, 35600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Dusclops - Psychic - TM29
  (356, 35600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 38),
  -- Dusclops - Shadow Ball - TM30
  (356, 35600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 39),
  -- Dusclops - Brick Break - TM31
  (356, 35600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 40),
  -- Dusclops - Double Team - TM32
  (356, 35600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 41),
  -- Dusclops - Rock Tomb - TM39
  (356, 35600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 42),
  -- Dusclops - Torment - TM41
  (356, 35600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 43),
  -- Dusclops - Facade - TM42
  (356, 35600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 44),
  -- Dusclops - Rest - TM44
  (356, 35600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 45),
  -- Dusclops - Attract - TM45
  (356, 35600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 46),
  -- Dusclops - Thief - TM46
  (356, 35600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 47),
  -- Dusclops - Round - TM48
  (356, 35600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 48),
  -- Dusclops - Fling - TM56
  (356, 35600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 49),
  -- Dusclops - Charge Beam - TM57
  (356, 35600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 50),
  -- Dusclops - Will-O-Wisp - TM61
  (356, 35600, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 51),
  -- Dusclops - Embargo - TM63
  (356, 35600, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 52),
  -- Dusclops - Payback - TM66
  (356, 35600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 53),
  -- Dusclops - Giga Impact - TM68
  (356, 35600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 54),
  -- Dusclops - Psych Up - TM77
  (356, 35600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 55),
  -- Dusclops - Bulldoze - TM78
  (356, 35600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 56),
  -- Dusclops - Rock Slide - TM80
  (356, 35600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 57),
  -- Dusclops - Infestation - TM83
  (356, 35600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 58),
  -- Dusclops - Dream Eater - TM85
  (356, 35600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 59),
  -- Dusclops - Swagger - TM87
  (356, 35600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 60),
  -- Dusclops - Sleep Talk - TM88
  (356, 35600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 61),
  -- Dusclops - Substitute - TM90
  (356, 35600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 62),
  -- Dusclops - Trick Room - TM92
  (356, 35600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 63),
  -- Dusclops - Dark Pulse - TM97
  (356, 35600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 64),
  -- Dusclops - Confide - TM100
  (356, 35600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 65),
  -- Dusclops - Fire Punch - Tutor
  (356, 35600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Dusclops - Ice Punch - Tutor
  (356, 35600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Dusclops - Thunder Punch - Tutor
  (356, 35600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Dusclops - Bind - Tutor
  (356, 35600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Dusclops - Snore - Tutor
  (356, 35600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Dusclops - Spite - Tutor
  (356, 35600, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Dusclops - Icy Wind - Tutor
  (356, 35600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Dusclops - Pain Split - Tutor
  (356, 35600, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Dusclops - Focus Punch - Tutor
  (356, 35600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Dusclops - Trick - Tutor
  (356, 35600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Dusclops - Skill Swap - Tutor
  (356, 35600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Dusclops - Snatch - Tutor
  (356, 35600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Dusclops - Gravity - Tutor
  (356, 35600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Dusclops - Wonder Room - Tutor
  (356, 35600, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Dusclops - Telekinesis - Tutor
  (356, 35600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Dusclops - Ally Switch - Tutor
  (356, 35600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Dusclops - Shadow Punch - Evolution
  (356, 35600, 325, 16, NULL, 7, NULL, NULL, NULL, NULL, 82),

  -- Tropius - Gust - Level 1
  (357, 35700, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tropius - Leer - Level 1
  (357, 35700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tropius - Growth - Level 1
  (357, 35700, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tropius - Razor Leaf - Level 1
  (357, 35700, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tropius - Leaf Storm - Level 1
  (357, 35700, 437, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tropius - Sweet Scent - Level 6
  (357, 35700, 230, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Tropius - Stomp - Level 10
  (357, 35700, 23, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Tropius - Magical Leaf - Level 16
  (357, 35700, 345, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Tropius - Whirlwind - Level 21
  (357, 35700, 18, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tropius - Leaf Tornado - Level 26
  (357, 35700, 536, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Tropius - Natural Gift - Level 30
  (357, 35700, 363, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Tropius - Air Slash - Level 36
  (357, 35700, 403, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tropius - Body Slam - Level 41
  (357, 35700, 34, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Tropius - Bestow - Level 46
  (357, 35700, 516, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Tropius - Synthesis - Level 50
  (357, 35700, 235, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Tropius - Solar Beam - Level 56
  (357, 35700, 76, 16, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Tropius - Leaf Storm - Level 61
  (357, 35700, 437, 16, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Tropius - Roar - TM05
  (357, 35700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Tropius - Toxic - TM06
  (357, 35700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Tropius - Hidden Power - TM10
  (357, 35700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Tropius - Sunny Day - TM11
  (357, 35700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Tropius - Hyper Beam - TM15
  (357, 35700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Tropius - Protect - TM17
  (357, 35700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Tropius - Roost - TM19
  (357, 35700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 24),
  -- Tropius - Safeguard - TM20
  (357, 35700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Tropius - Frustration - TM21
  (357, 35700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Tropius - Solar Beam - TM22
  (357, 35700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 27),
  -- Tropius - Earthquake - TM26
  (357, 35700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Tropius - Return - TM27
  (357, 35700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Tropius - Double Team - TM32
  (357, 35700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Tropius - Aerial Ace - TM40
  (357, 35700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Tropius - Facade - TM42
  (357, 35700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Tropius - Rest - TM44
  (357, 35700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Tropius - Attract - TM45
  (357, 35700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Tropius - Round - TM48
  (357, 35700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Tropius - Steel Wing - TM51
  (357, 35700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Tropius - Energy Ball - TM53
  (357, 35700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 37),
  -- Tropius - Brutal Swing - TM59
  (357, 35700, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 38),
  -- Tropius - Giga Impact - TM68
  (357, 35700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Tropius - Swords Dance - TM75
  (357, 35700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 40),
  -- Tropius - Fly - TM76
  (357, 35700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 41),
  -- Tropius - Bulldoze - TM78
  (357, 35700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Tropius - Grass Knot - TM86
  (357, 35700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Tropius - Swagger - TM87
  (357, 35700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Tropius - Sleep Talk - TM88
  (357, 35700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Tropius - Substitute - TM90
  (357, 35700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Tropius - Nature Power - TM96
  (357, 35700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 47),
  -- Tropius - Confide - TM100
  (357, 35700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Tropius - Razor Wind - Egg
  (357, 35700, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tropius - Slam - Egg
  (357, 35700, 21, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tropius - Headbutt - Egg
  (357, 35700, 29, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tropius - Leech Seed - Egg
  (357, 35700, 73, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tropius - Curse - Egg
  (357, 35700, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tropius - Synthesis - Egg
  (357, 35700, 235, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tropius - Nature Power - Egg
  (357, 35700, 267, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tropius - Bullet Seed - Egg
  (357, 35700, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tropius - Leaf Blade - Egg
  (357, 35700, 348, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tropius - Dragon Dance - Egg
  (357, 35700, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tropius - Natural Gift - Egg
  (357, 35700, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tropius - Leaf Storm - Egg
  (357, 35700, 437, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tropius - Dragon Hammer - Egg
  (357, 35700, 692, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tropius - Snore - Tutor
  (357, 35700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Tropius - Outrage - Tutor
  (357, 35700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Tropius - Giga Drain - Tutor
  (357, 35700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Tropius - Synthesis - Tutor
  (357, 35700, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Tropius - Tailwind - Tutor
  (357, 35700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Tropius - Worry Seed - Tutor
  (357, 35700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Tropius - Seed Bomb - Tutor
  (357, 35700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Tropius - Dragon Pulse - Tutor
  (357, 35700, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Tropius - Defog - Tutor
  (357, 35700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Tropius - Stomping Tantrum - Tutor
  (357, 35700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),

  -- Chimecho - Wrap - Level 1
  (358, 35800, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Growl - Level 1
  (358, 35800, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimecho - Confusion - Level 1
  (358, 35800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chimecho - Astonish - Level 1
  (358, 35800, 310, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chimecho - Healing Wish - Level 1
  (358, 35800, 361, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chimecho - Synchronoise - Level 1
  (358, 35800, 485, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Chimecho - Growl - Level 4
  (358, 35800, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Chimecho - Astonish - Level 7
  (358, 35800, 310, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Chimecho - Confusion - Level 10
  (358, 35800, 93, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Chimecho - Yawn - Level 13
  (358, 35800, 281, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Chimecho - Psywave - Level 16
  (358, 35800, 149, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Chimecho - Take Down - Level 19
  (358, 35800, 36, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Chimecho - Extrasensory - Level 22
  (358, 35800, 326, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Chimecho - Heal Bell - Level 27
  (358, 35800, 215, 16, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Chimecho - Uproar - Level 32
  (358, 35800, 253, 16, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Chimecho - Safeguard - Level 37
  (358, 35800, 219, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Chimecho - Double-Edge - Level 42
  (358, 35800, 38, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Chimecho - Heal Pulse - Level 47
  (358, 35800, 505, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Chimecho - Synchronoise - Level 52
  (358, 35800, 485, 16, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Chimecho - Healing Wish - Level 57
  (358, 35800, 361, 16, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Chimecho - Psyshock - TM03
  (358, 35800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 21),
  -- Chimecho - Calm Mind - TM04
  (358, 35800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 22),
  -- Chimecho - Toxic - TM06
  (358, 35800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Chimecho - Hidden Power - TM10
  (358, 35800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Chimecho - Sunny Day - TM11
  (358, 35800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Chimecho - Taunt - TM12
  (358, 35800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 26),
  -- Chimecho - Light Screen - TM16
  (358, 35800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 27),
  -- Chimecho - Protect - TM17
  (358, 35800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Chimecho - Rain Dance - TM18
  (358, 35800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Chimecho - Safeguard - TM20
  (358, 35800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 30),
  -- Chimecho - Frustration - TM21
  (358, 35800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Chimecho - Return - TM27
  (358, 35800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Chimecho - Psychic - TM29
  (358, 35800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Chimecho - Shadow Ball - TM30
  (358, 35800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Chimecho - Double Team - TM32
  (358, 35800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Chimecho - Reflect - TM33
  (358, 35800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Chimecho - Torment - TM41
  (358, 35800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 37),
  -- Chimecho - Facade - TM42
  (358, 35800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Chimecho - Rest - TM44
  (358, 35800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Chimecho - Attract - TM45
  (358, 35800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Chimecho - Round - TM48
  (358, 35800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Chimecho - Echoed Voice - TM49
  (358, 35800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 42),
  -- Chimecho - Energy Ball - TM53
  (358, 35800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 43),
  -- Chimecho - Charge Beam - TM57
  (358, 35800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 44),
  -- Chimecho - Thunder Wave - TM73
  (358, 35800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Chimecho - Psych Up - TM77
  (358, 35800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Chimecho - Dream Eater - TM85
  (358, 35800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Chimecho - Grass Knot - TM86
  (358, 35800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 48),
  -- Chimecho - Swagger - TM87
  (358, 35800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Chimecho - Sleep Talk - TM88
  (358, 35800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Chimecho - Substitute - TM90
  (358, 35800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Chimecho - Trick Room - TM92
  (358, 35800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Chimecho - Dazzling Gleam - TM99
  (358, 35800, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 53),
  -- Chimecho - Confide - TM100
  (358, 35800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Chimecho - Disable - Egg
  (358, 35800, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimecho - Hypnosis - Egg
  (358, 35800, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimecho - Recover - Egg
  (358, 35800, 105, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimecho - Curse - Egg
  (358, 35800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimecho - Perish Song - Egg
  (358, 35800, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimecho - Future Sight - Egg
  (358, 35800, 248, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimecho - Wish - Egg
  (358, 35800, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimecho - Skill Swap - Egg
  (358, 35800, 285, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Chimecho - Cosmic Power - Egg
  (358, 35800, 322, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Chimecho - Stored Power - Egg
  (358, 35800, 500, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Chimecho - Crafty Shield - Egg
  (358, 35800, 578, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Chimecho - Bind - Tutor
  (358, 35800, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Chimecho - Snore - Tutor
  (358, 35800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Chimecho - Icy Wind - Tutor
  (358, 35800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Chimecho - Heal Bell - Tutor
  (358, 35800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Chimecho - Uproar - Tutor
  (358, 35800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Chimecho - Helping Hand - Tutor
  (358, 35800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Chimecho - Trick - Tutor
  (358, 35800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Chimecho - Magic Coat - Tutor
  (358, 35800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Chimecho - Recycle - Tutor
  (358, 35800, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Chimecho - Knock Off - Tutor
  (358, 35800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Chimecho - Skill Swap - Tutor
  (358, 35800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Chimecho - Snatch - Tutor
  (358, 35800, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Chimecho - Hyper Voice - Tutor
  (358, 35800, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Chimecho - Signal Beam - Tutor
  (358, 35800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Chimecho - Shock Wave - Tutor
  (358, 35800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Chimecho - Gravity - Tutor
  (358, 35800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Chimecho - Last Resort - Tutor
  (358, 35800, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Chimecho - Zen Headbutt - Tutor
  (358, 35800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Chimecho - Defog - Tutor
  (358, 35800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Chimecho - Telekinesis - Tutor
  (358, 35800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Chimecho - Ally Switch - Tutor
  (358, 35800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Chimecho - Laser Focus - Tutor
  (358, 35800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),

  -- Absol - Scratch - Level 1
  (359, 35900, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Absol - Leer - Level 1
  (359, 35900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Absol - Quick Attack - Level 1
  (359, 35900, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Absol - Perish Song - Level 1
  (359, 35900, 195, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Absol - Future Sight - Level 1
  (359, 35900, 248, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Absol - Feint - Level 1
  (359, 35900, 364, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Absol - Leer - Level 4
  (359, 35900, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Absol - Quick Attack - Level 7
  (359, 35900, 98, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Absol - Pursuit - Level 10
  (359, 35900, 228, 16, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Absol - Taunt - Level 13
  (359, 35900, 269, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Absol - Bite - Level 16
  (359, 35900, 44, 16, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Absol - Double Team - Level 19
  (359, 35900, 104, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Absol - Slash - Level 22
  (359, 35900, 163, 16, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Absol - Swords Dance - Level 25
  (359, 35900, 14, 16, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Absol - Night Slash - Level 29
  (359, 35900, 400, 16, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Absol - Detect - Level 33
  (359, 35900, 197, 16, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Absol - Psycho Cut - Level 37
  (359, 35900, 427, 16, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Absol - Me First - Level 41
  (359, 35900, 382, 16, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Absol - Sucker Punch - Level 45
  (359, 35900, 389, 16, NULL, 1, 45, NULL, NULL, NULL, 19),
  -- Absol - Razor Wind - Level 49
  (359, 35900, 13, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Absol - Future Sight - Level 53
  (359, 35900, 248, 16, NULL, 1, 53, NULL, NULL, NULL, 21),
  -- Absol - Perish Song - Level 57
  (359, 35900, 195, 16, NULL, 1, 57, NULL, NULL, NULL, 22),
  -- Absol - Calm Mind - TM04
  (359, 35900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Absol - Toxic - TM06
  (359, 35900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Absol - Hail - TM07
  (359, 35900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 25),
  -- Absol - Hidden Power - TM10
  (359, 35900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Absol - Sunny Day - TM11
  (359, 35900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Absol - Taunt - TM12
  (359, 35900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 28),
  -- Absol - Ice Beam - TM13
  (359, 35900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 29),
  -- Absol - Blizzard - TM14
  (359, 35900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 30),
  -- Absol - Hyper Beam - TM15
  (359, 35900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 31),
  -- Absol - Protect - TM17
  (359, 35900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 32),
  -- Absol - Rain Dance - TM18
  (359, 35900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 33),
  -- Absol - Frustration - TM21
  (359, 35900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 34),
  -- Absol - Thunderbolt - TM24
  (359, 35900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 35),
  -- Absol - Thunder - TM25
  (359, 35900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 36),
  -- Absol - Return - TM27
  (359, 35900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 37),
  -- Absol - Shadow Ball - TM30
  (359, 35900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 38),
  -- Absol - Double Team - TM32
  (359, 35900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 39),
  -- Absol - Flamethrower - TM35
  (359, 35900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 40),
  -- Absol - Sandstorm - TM37
  (359, 35900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 41),
  -- Absol - Fire Blast - TM38
  (359, 35900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 42),
  -- Absol - Rock Tomb - TM39
  (359, 35900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 43),
  -- Absol - Aerial Ace - TM40
  (359, 35900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 44),
  -- Absol - Torment - TM41
  (359, 35900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 45),
  -- Absol - Facade - TM42
  (359, 35900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 46),
  -- Absol - Rest - TM44
  (359, 35900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 47),
  -- Absol - Attract - TM45
  (359, 35900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 48),
  -- Absol - Thief - TM46
  (359, 35900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 49),
  -- Absol - Round - TM48
  (359, 35900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 50),
  -- Absol - Echoed Voice - TM49
  (359, 35900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 51),
  -- Absol - False Swipe - TM54
  (359, 35900, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 52),
  -- Absol - Charge Beam - TM57
  (359, 35900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 53),
  -- Absol - Brutal Swing - TM59
  (359, 35900, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 54),
  -- Absol - Will-O-Wisp - TM61
  (359, 35900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 55),
  -- Absol - Shadow Claw - TM65
  (359, 35900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 56),
  -- Absol - Payback - TM66
  (359, 35900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 57),
  -- Absol - Giga Impact - TM68
  (359, 35900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 58),
  -- Absol - Stone Edge - TM71
  (359, 35900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 59),
  -- Absol - Thunder Wave - TM73
  (359, 35900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 60),
  -- Absol - Swords Dance - TM75
  (359, 35900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 61),
  -- Absol - Psych Up - TM77
  (359, 35900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 62),
  -- Absol - Rock Slide - TM80
  (359, 35900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 63),
  -- Absol - X-Scissor - TM81
  (359, 35900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 64),
  -- Absol - Dream Eater - TM85
  (359, 35900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 65),
  -- Absol - Swagger - TM87
  (359, 35900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 66),
  -- Absol - Sleep Talk - TM88
  (359, 35900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 67),
  -- Absol - Substitute - TM90
  (359, 35900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 68),
  -- Absol - Snarl - TM95
  (359, 35900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 69),
  -- Absol - Dark Pulse - TM97
  (359, 35900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 70),
  -- Absol - Confide - TM100
  (359, 35900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 71),
  -- Absol - Double-Edge - Egg
  (359, 35900, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Absol - Curse - Egg
  (359, 35900, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Absol - Feint Attack - Egg
  (359, 35900, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Absol - Perish Song - Egg
  (359, 35900, 195, 16, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Absol - Mean Look - Egg
  (359, 35900, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Absol - Megahorn - Egg
  (359, 35900, 224, 16, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Absol - Baton Pass - Egg
  (359, 35900, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Absol - Magic Coat - Egg
  (359, 35900, 277, 16, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Absol - Assurance - Egg
  (359, 35900, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Absol - Me First - Egg
  (359, 35900, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Absol - Punishment - Egg
  (359, 35900, 386, 16, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Absol - Sucker Punch - Egg
  (359, 35900, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Absol - Zen Headbutt - Egg
  (359, 35900, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Absol - Hex - Egg
  (359, 35900, 506, 16, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Absol - Play Rough - Egg
  (359, 35900, 583, 16, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Absol - Snore - Tutor
  (359, 35900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Absol - Spite - Tutor
  (359, 35900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Absol - Icy Wind - Tutor
  (359, 35900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Absol - Iron Tail - Tutor
  (359, 35900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Absol - Role Play - Tutor
  (359, 35900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Absol - Superpower - Tutor
  (359, 35900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Absol - Magic Coat - Tutor
  (359, 35900, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),
  -- Absol - Knock Off - Tutor
  (359, 35900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 94),
  -- Absol - Snatch - Tutor
  (359, 35900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 95),
  -- Absol - Bounce - Tutor
  (359, 35900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 96),
  -- Absol - Shock Wave - Tutor
  (359, 35900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 97),
  -- Absol - Water Pulse - Tutor
  (359, 35900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 98),
  -- Absol - Zen Headbutt - Tutor
  (359, 35900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 99),
  -- Absol - Foul Play - Tutor
  (359, 35900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 100),
  -- Absol - Laser Focus - Tutor
  (359, 35900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 101),
  -- Absol - Throat Chop - Tutor
  (359, 35900, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 102),

  -- Wynaut - Splash - Level 1
  (360, 36000, 150, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wynaut - Charm - Level 1
  (360, 36000, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wynaut - Encore - Level 1
  (360, 36000, 227, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wynaut - Counter - Level 15
  (360, 36000, 68, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wynaut - Destiny Bond - Level 15
  (360, 36000, 194, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wynaut - Safeguard - Level 15
  (360, 36000, 219, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wynaut - Mirror Coat - Level 15
  (360, 36000, 243, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wynaut - Safeguard - TM20
  (360, 36000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 8),

  -- Snorunt - Leer - Level 1
  (361, 36100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Double Team - Level 5
  (361, 36100, 104, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snorunt - Ice Shard - Level 10
  (361, 36100, 420, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Icy Wind - Level 14
  (361, 36100, 196, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Snorunt - Bite - Level 19
  (361, 36100, 44, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Snorunt - Ice Fang - Level 23
  (361, 36100, 423, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Snorunt - Headbutt - Level 28
  (361, 36100, 29, 16, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorunt - Protect - Level 32
  (361, 36100, 182, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Snorunt - Frost Breath - Level 37
  (361, 36100, 524, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Snorunt - Crunch - Level 41
  (361, 36100, 242, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Snorunt - Blizzard - Level 46
  (361, 36100, 59, 16, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snorunt - Hail - Level 50
  (361, 36100, 258, 16, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Snorunt - Toxic - TM06
  (361, 36100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Snorunt - Hail - TM07
  (361, 36100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 15),
  -- Snorunt - Hidden Power - TM10
  (361, 36100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Snorunt - Ice Beam - TM13
  (361, 36100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 17),
  -- Snorunt - Blizzard - TM14
  (361, 36100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 18),
  -- Snorunt - Light Screen - TM16
  (361, 36100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 19),
  -- Snorunt - Protect - TM17
  (361, 36100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Snorunt - Rain Dance - TM18
  (361, 36100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Snorunt - Safeguard - TM20
  (361, 36100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 22),
  -- Snorunt - Frustration - TM21
  (361, 36100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Snorunt - Return - TM27
  (361, 36100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Snorunt - Shadow Ball - TM30
  (361, 36100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 25),
  -- Snorunt - Double Team - TM32
  (361, 36100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Snorunt - Facade - TM42
  (361, 36100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Snorunt - Rest - TM44
  (361, 36100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Snorunt - Attract - TM45
  (361, 36100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Snorunt - Round - TM48
  (361, 36100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Snorunt - Frost Breath - TM79
  (361, 36100, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 31),
  -- Snorunt - Swagger - TM87
  (361, 36100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Snorunt - Sleep Talk - TM88
  (361, 36100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Snorunt - Substitute - TM90
  (361, 36100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Snorunt - Confide - TM100
  (361, 36100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 35),
  -- Snorunt - Disable - Egg
  (361, 36100, 50, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Snorunt - Bide - Egg
  (361, 36100, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Snorunt - Spikes - Egg
  (361, 36100, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Snorunt - Rollout - Egg
  (361, 36100, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snorunt - Weather Ball - Egg
  (361, 36100, 311, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snorunt - Fake Tears - Egg
  (361, 36100, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snorunt - Block - Egg
  (361, 36100, 335, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snorunt - Switcheroo - Egg
  (361, 36100, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snorunt - Avalanche - Egg
  (361, 36100, 419, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snorunt - Hex - Egg
  (361, 36100, 506, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snorunt - Snore - Tutor
  (361, 36100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Snorunt - Spite - Tutor
  (361, 36100, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Snorunt - Icy Wind - Tutor
  (361, 36100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Snorunt - Block - Tutor
  (361, 36100, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Snorunt - Water Pulse - Tutor
  (361, 36100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Glalie - Leer - Level 1
  (362, 36200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Double Team - Level 1
  (362, 36200, 104, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Sheer Cold - Level 1
  (362, 36200, 329, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glalie - Ice Shard - Level 1
  (362, 36200, 420, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glalie - Freeze-Dry - Level 1
  (362, 36200, 573, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Glalie - Double Team - Level 5
  (362, 36200, 104, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Glalie - Ice Shard - Level 10
  (362, 36200, 420, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Glalie - Icy Wind - Level 14
  (362, 36200, 196, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Glalie - Bite - Level 19
  (362, 36200, 44, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Glalie - Ice Fang - Level 23
  (362, 36200, 423, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Glalie - Headbutt - Level 28
  (362, 36200, 29, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Glalie - Protect - Level 32
  (362, 36200, 182, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Glalie - Frost Breath - Level 37
  (362, 36200, 524, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Glalie - Crunch - Level 41
  (362, 36200, 242, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Glalie - Blizzard - Level 48
  (362, 36200, 59, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Glalie - Hail - Level 54
  (362, 36200, 258, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Glalie - Sheer Cold - Level 61
  (362, 36200, 329, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Glalie - Toxic - TM06
  (362, 36200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Glalie - Hail - TM07
  (362, 36200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Glalie - Hidden Power - TM10
  (362, 36200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Glalie - Taunt - TM12
  (362, 36200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Glalie - Ice Beam - TM13
  (362, 36200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Glalie - Blizzard - TM14
  (362, 36200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Glalie - Hyper Beam - TM15
  (362, 36200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Glalie - Light Screen - TM16
  (362, 36200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Glalie - Protect - TM17
  (362, 36200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Glalie - Rain Dance - TM18
  (362, 36200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 28),
  -- Glalie - Safeguard - TM20
  (362, 36200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 29),
  -- Glalie - Frustration - TM21
  (362, 36200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Glalie - Earthquake - TM26
  (362, 36200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 31),
  -- Glalie - Return - TM27
  (362, 36200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Glalie - Shadow Ball - TM30
  (362, 36200, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Glalie - Double Team - TM32
  (362, 36200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 34),
  -- Glalie - Torment - TM41
  (362, 36200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Glalie - Facade - TM42
  (362, 36200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Glalie - Rest - TM44
  (362, 36200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Glalie - Attract - TM45
  (362, 36200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Glalie - Round - TM48
  (362, 36200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Glalie - Explosion - TM64
  (362, 36200, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 40),
  -- Glalie - Payback - TM66
  (362, 36200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Glalie - Giga Impact - TM68
  (362, 36200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Glalie - Gyro Ball - TM74
  (362, 36200, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 43),
  -- Glalie - Bulldoze - TM78
  (362, 36200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Glalie - Frost Breath - TM79
  (362, 36200, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 45),
  -- Glalie - Swagger - TM87
  (362, 36200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Glalie - Sleep Talk - TM88
  (362, 36200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Glalie - Substitute - TM90
  (362, 36200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Glalie - Dark Pulse - TM97
  (362, 36200, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 49),
  -- Glalie - Confide - TM100
  (362, 36200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Glalie - Super Fang - Tutor
  (362, 36200, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Glalie - Snore - Tutor
  (362, 36200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Glalie - Spite - Tutor
  (362, 36200, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Glalie - Icy Wind - Tutor
  (362, 36200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Glalie - Signal Beam - Tutor
  (362, 36200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Glalie - Block - Tutor
  (362, 36200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Glalie - Water Pulse - Tutor
  (362, 36200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Glalie - Iron Head - Tutor
  (362, 36200, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Glalie - Laser Focus - Tutor
  (362, 36200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Glalie - Freeze-Dry - Evolution
  (362, 36200, 573, 16, NULL, 7, NULL, NULL, NULL, NULL, 60),

  -- Spheal - Growl - Level 1
  (363, 36300, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spheal - Water Gun - Level 1
  (363, 36300, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spheal - Defense Curl - Level 1
  (363, 36300, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spheal - Powder Snow - Level 1
  (363, 36300, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spheal - Rollout - Level 5
  (363, 36300, 205, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Spheal - Encore - Level 9
  (363, 36300, 227, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Spheal - Ice Ball - Level 13
  (363, 36300, 301, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Spheal - Brine - Level 17
  (363, 36300, 362, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Spheal - Aurora Beam - Level 21
  (363, 36300, 62, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Spheal - Body Slam - Level 26
  (363, 36300, 34, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Spheal - Rest - Level 31
  (363, 36300, 156, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Spheal - Snore - Level 31
  (363, 36300, 173, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Spheal - Hail - Level 36
  (363, 36300, 258, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Spheal - Blizzard - Level 41
  (363, 36300, 59, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Spheal - Sheer Cold - Level 46
  (363, 36300, 329, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Spheal - Toxic - TM06
  (363, 36300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Spheal - Hail - TM07
  (363, 36300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Spheal - Hidden Power - TM10
  (363, 36300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Spheal - Ice Beam - TM13
  (363, 36300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Spheal - Blizzard - TM14
  (363, 36300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Spheal - Protect - TM17
  (363, 36300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Spheal - Rain Dance - TM18
  (363, 36300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Spheal - Frustration - TM21
  (363, 36300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Spheal - Earthquake - TM26
  (363, 36300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Spheal - Return - TM27
  (363, 36300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Spheal - Double Team - TM32
  (363, 36300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Spheal - Rock Tomb - TM39
  (363, 36300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Spheal - Facade - TM42
  (363, 36300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Spheal - Rest - TM44
  (363, 36300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Spheal - Attract - TM45
  (363, 36300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Spheal - Round - TM48
  (363, 36300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Spheal - Echoed Voice - TM49
  (363, 36300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Spheal - Bulldoze - TM78
  (363, 36300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 33),
  -- Spheal - Frost Breath - TM79
  (363, 36300, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 34),
  -- Spheal - Rock Slide - TM80
  (363, 36300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 35),
  -- Spheal - Swagger - TM87
  (363, 36300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Spheal - Sleep Talk - TM88
  (363, 36300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Spheal - Substitute - TM90
  (363, 36300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Spheal - Surf - TM94
  (363, 36300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 39),
  -- Spheal - Waterfall - TM98
  (363, 36300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 40),
  -- Spheal - Confide - TM100
  (363, 36300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Spheal - Fissure - Egg
  (363, 36300, 90, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spheal - Curse - Egg
  (363, 36300, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spheal - Belly Drum - Egg
  (363, 36300, 187, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spheal - Rollout - Egg
  (363, 36300, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spheal - Sleep Talk - Egg
  (363, 36300, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spheal - Stockpile - Egg
  (363, 36300, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spheal - Spit Up - Egg
  (363, 36300, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spheal - Swallow - Egg
  (363, 36300, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spheal - Yawn - Egg
  (363, 36300, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spheal - Signal Beam - Egg
  (363, 36300, 324, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spheal - Water Sport - Egg
  (363, 36300, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spheal - Water Pulse - Egg
  (363, 36300, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spheal - Aqua Ring - Egg
  (363, 36300, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spheal - Super Fang - Tutor
  (363, 36300, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Spheal - Snore - Tutor
  (363, 36300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Spheal - Icy Wind - Tutor
  (363, 36300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Spheal - Iron Tail - Tutor
  (363, 36300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Spheal - Signal Beam - Tutor
  (363, 36300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Spheal - Water Pulse - Tutor
  (363, 36300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Spheal - Aqua Tail - Tutor
  (363, 36300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Sealeo - Growl - Level 1
  (364, 36400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sealeo - Water Gun - Level 1
  (364, 36400, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sealeo - Defense Curl - Level 1
  (364, 36400, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sealeo - Powder Snow - Level 1
  (364, 36400, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sealeo - Swagger - Level 1
  (364, 36400, 207, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sealeo - Rollout - Level 5
  (364, 36400, 205, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Sealeo - Encore - Level 9
  (364, 36400, 227, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Sealeo - Ice Ball - Level 13
  (364, 36400, 301, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Sealeo - Brine - Level 17
  (364, 36400, 362, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Sealeo - Aurora Beam - Level 21
  (364, 36400, 62, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sealeo - Body Slam - Level 26
  (364, 36400, 34, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Sealeo - Rest - Level 31
  (364, 36400, 156, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sealeo - Snore - Level 31
  (364, 36400, 173, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Sealeo - Hail - Level 38
  (364, 36400, 258, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Sealeo - Blizzard - Level 45
  (364, 36400, 59, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Sealeo - Sheer Cold - Level 52
  (364, 36400, 329, 16, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Sealeo - Roar - TM05
  (364, 36400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Sealeo - Toxic - TM06
  (364, 36400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Sealeo - Hail - TM07
  (364, 36400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Sealeo - Hidden Power - TM10
  (364, 36400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Sealeo - Ice Beam - TM13
  (364, 36400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Sealeo - Blizzard - TM14
  (364, 36400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Sealeo - Protect - TM17
  (364, 36400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Sealeo - Rain Dance - TM18
  (364, 36400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Sealeo - Frustration - TM21
  (364, 36400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Sealeo - Earthquake - TM26
  (364, 36400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Sealeo - Return - TM27
  (364, 36400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Sealeo - Double Team - TM32
  (364, 36400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Sealeo - Rock Tomb - TM39
  (364, 36400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Sealeo - Facade - TM42
  (364, 36400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Sealeo - Rest - TM44
  (364, 36400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Sealeo - Attract - TM45
  (364, 36400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Sealeo - Round - TM48
  (364, 36400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Sealeo - Echoed Voice - TM49
  (364, 36400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 34),
  -- Sealeo - Bulldoze - TM78
  (364, 36400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 35),
  -- Sealeo - Frost Breath - TM79
  (364, 36400, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 36),
  -- Sealeo - Rock Slide - TM80
  (364, 36400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 37),
  -- Sealeo - Swagger - TM87
  (364, 36400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Sealeo - Sleep Talk - TM88
  (364, 36400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Sealeo - Substitute - TM90
  (364, 36400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Sealeo - Surf - TM94
  (364, 36400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 41),
  -- Sealeo - Waterfall - TM98
  (364, 36400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 42),
  -- Sealeo - Confide - TM100
  (364, 36400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Sealeo - Super Fang - Tutor
  (364, 36400, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Sealeo - Snore - Tutor
  (364, 36400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Sealeo - Icy Wind - Tutor
  (364, 36400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Sealeo - Iron Tail - Tutor
  (364, 36400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Sealeo - Signal Beam - Tutor
  (364, 36400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Sealeo - Water Pulse - Tutor
  (364, 36400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Sealeo - Aqua Tail - Tutor
  (364, 36400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Sealeo - Swagger - Evolution
  (364, 36400, 207, 16, NULL, 7, NULL, NULL, NULL, NULL, 51),

  -- Walrein - Growl - Level 1
  (365, 36500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walrein - Water Gun - Level 1
  (365, 36500, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Walrein - Defense Curl - Level 1
  (365, 36500, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Walrein - Powder Snow - Level 1
  (365, 36500, 181, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Walrein - Swagger - Level 1
  (365, 36500, 207, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Walrein - Crunch - Level 1
  (365, 36500, 242, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Walrein - Ice Fang - Level 1
  (365, 36500, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Walrein - Rollout - Level 7
  (365, 36500, 205, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Walrein - Encore - Level 7
  (365, 36500, 227, 16, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Walrein - Ice Ball - Level 13
  (365, 36500, 301, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Walrein - Aurora Beam - Level 19
  (365, 36500, 62, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Walrein - Brine - Level 19
  (365, 36500, 362, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Walrein - Body Slam - Level 25
  (365, 36500, 34, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Walrein - Rest - Level 31
  (365, 36500, 156, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Walrein - Snore - Level 31
  (365, 36500, 173, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Walrein - Hail - Level 38
  (365, 36500, 258, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Walrein - Blizzard - Level 49
  (365, 36500, 59, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Walrein - Sheer Cold - Level 60
  (365, 36500, 329, 16, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Walrein - Roar - TM05
  (365, 36500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Walrein - Toxic - TM06
  (365, 36500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Walrein - Hail - TM07
  (365, 36500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Walrein - Hidden Power - TM10
  (365, 36500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Walrein - Ice Beam - TM13
  (365, 36500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Walrein - Blizzard - TM14
  (365, 36500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Walrein - Hyper Beam - TM15
  (365, 36500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Walrein - Protect - TM17
  (365, 36500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Walrein - Rain Dance - TM18
  (365, 36500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Walrein - Frustration - TM21
  (365, 36500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Walrein - Earthquake - TM26
  (365, 36500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Walrein - Return - TM27
  (365, 36500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Walrein - Double Team - TM32
  (365, 36500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Walrein - Rock Tomb - TM39
  (365, 36500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Walrein - Facade - TM42
  (365, 36500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Walrein - Rest - TM44
  (365, 36500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Walrein - Attract - TM45
  (365, 36500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Walrein - Round - TM48
  (365, 36500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Walrein - Echoed Voice - TM49
  (365, 36500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 37),
  -- Walrein - Giga Impact - TM68
  (365, 36500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Walrein - Bulldoze - TM78
  (365, 36500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 39),
  -- Walrein - Frost Breath - TM79
  (365, 36500, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 40),
  -- Walrein - Rock Slide - TM80
  (365, 36500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Walrein - Swagger - TM87
  (365, 36500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Walrein - Sleep Talk - TM88
  (365, 36500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Walrein - Substitute - TM90
  (365, 36500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Walrein - Surf - TM94
  (365, 36500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 45),
  -- Walrein - Waterfall - TM98
  (365, 36500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 46),
  -- Walrein - Confide - TM100
  (365, 36500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Walrein - Super Fang - Tutor
  (365, 36500, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Walrein - Snore - Tutor
  (365, 36500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Walrein - Icy Wind - Tutor
  (365, 36500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Walrein - Iron Tail - Tutor
  (365, 36500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Walrein - Signal Beam - Tutor
  (365, 36500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Walrein - Block - Tutor
  (365, 36500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Walrein - Water Pulse - Tutor
  (365, 36500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Walrein - Aqua Tail - Tutor
  (365, 36500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Walrein - Iron Head - Tutor
  (365, 36500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Walrein - Stomping Tantrum - Tutor
  (365, 36500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Walrein - Ice Fang - Evolution
  (365, 36500, 423, 16, NULL, 7, NULL, NULL, NULL, NULL, 58),

  -- Clamperl - Water Gun - Level 1
  (366, 36600, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clamperl - Clamp - Level 1
  (366, 36600, 128, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clamperl - Whirlpool - Level 1
  (366, 36600, 250, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clamperl - Iron Defense - Level 1
  (366, 36600, 334, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clamperl - Shell Smash - Level 50
  (366, 36600, 504, 16, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Clamperl - Toxic - TM06
  (366, 36600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 6),
  -- Clamperl - Hail - TM07
  (366, 36600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 7),
  -- Clamperl - Hidden Power - TM10
  (366, 36600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 8),
  -- Clamperl - Ice Beam - TM13
  (366, 36600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 9),
  -- Clamperl - Blizzard - TM14
  (366, 36600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 10),
  -- Clamperl - Protect - TM17
  (366, 36600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 11),
  -- Clamperl - Rain Dance - TM18
  (366, 36600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 12),
  -- Clamperl - Frustration - TM21
  (366, 36600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 13),
  -- Clamperl - Return - TM27
  (366, 36600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 14),
  -- Clamperl - Double Team - TM32
  (366, 36600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 15),
  -- Clamperl - Facade - TM42
  (366, 36600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 16),
  -- Clamperl - Rest - TM44
  (366, 36600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 17),
  -- Clamperl - Attract - TM45
  (366, 36600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 18),
  -- Clamperl - Round - TM48
  (366, 36600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 19),
  -- Clamperl - Scald - TM55
  (366, 36600, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 20),
  -- Clamperl - Swagger - TM87
  (366, 36600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 21),
  -- Clamperl - Sleep Talk - TM88
  (366, 36600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 22),
  -- Clamperl - Substitute - TM90
  (366, 36600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 23),
  -- Clamperl - Surf - TM94
  (366, 36600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 24),
  -- Clamperl - Waterfall - TM98
  (366, 36600, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 25),
  -- Clamperl - Confide - TM100
  (366, 36600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 26),
  -- Clamperl - Body Slam - Egg
  (366, 36600, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Clamperl - Supersonic - Egg
  (366, 36600, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Clamperl - Confuse Ray - Egg
  (366, 36600, 109, 16, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Clamperl - Barrier - Egg
  (366, 36600, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Clamperl - Endure - Egg
  (366, 36600, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Clamperl - Refresh - Egg
  (366, 36600, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Clamperl - Mud Sport - Egg
  (366, 36600, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Clamperl - Muddy Water - Egg
  (366, 36600, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Clamperl - Water Pulse - Egg
  (366, 36600, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Clamperl - Brine - Egg
  (366, 36600, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Clamperl - Aqua Ring - Egg
  (366, 36600, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Clamperl - Snore - Tutor
  (366, 36600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Clamperl - Icy Wind - Tutor
  (366, 36600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Clamperl - Iron Defense - Tutor
  (366, 36600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Clamperl - Water Pulse - Tutor
  (366, 36600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),

  -- Huntail - Bite - Level 1
  (367, 36700, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Huntail - Whirlpool - Level 1
  (367, 36700, 250, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Huntail - Screech - Level 5
  (367, 36700, 103, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Huntail - Scary Face - Level 9
  (367, 36700, 184, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Huntail - Feint Attack - Level 11
  (367, 36700, 185, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Huntail - Water Pulse - Level 14
  (367, 36700, 352, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Huntail - Ice Fang - Level 16
  (367, 36700, 423, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Huntail - Brine - Level 19
  (367, 36700, 362, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Huntail - Sucker Punch - Level 23
  (367, 36700, 389, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Huntail - Dive - Level 26
  (367, 36700, 291, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Huntail - Baton Pass - Level 29
  (367, 36700, 226, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Huntail - Crunch - Level 34
  (367, 36700, 242, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Huntail - Aqua Tail - Level 39
  (367, 36700, 401, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Huntail - Coil - Level 45
  (367, 36700, 489, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Huntail - Hydro Pump - Level 50
  (367, 36700, 56, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Huntail - Toxic - TM06
  (367, 36700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Huntail - Hail - TM07
  (367, 36700, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Huntail - Hidden Power - TM10
  (367, 36700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Huntail - Ice Beam - TM13
  (367, 36700, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Huntail - Blizzard - TM14
  (367, 36700, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Huntail - Hyper Beam - TM15
  (367, 36700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Huntail - Protect - TM17
  (367, 36700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Huntail - Rain Dance - TM18
  (367, 36700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Huntail - Frustration - TM21
  (367, 36700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Huntail - Return - TM27
  (367, 36700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Huntail - Double Team - TM32
  (367, 36700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Huntail - Rock Tomb - TM39
  (367, 36700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Huntail - Facade - TM42
  (367, 36700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Huntail - Rest - TM44
  (367, 36700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Huntail - Attract - TM45
  (367, 36700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Huntail - Round - TM48
  (367, 36700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Huntail - Scald - TM55
  (367, 36700, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 32),
  -- Huntail - Giga Impact - TM68
  (367, 36700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Huntail - Infestation - TM83
  (367, 36700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 34),
  -- Huntail - Swagger - TM87
  (367, 36700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Huntail - Sleep Talk - TM88
  (367, 36700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Huntail - Substitute - TM90
  (367, 36700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Huntail - Surf - TM94
  (367, 36700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 38),
  -- Huntail - Waterfall - TM98
  (367, 36700, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 39),
  -- Huntail - Confide - TM100
  (367, 36700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Huntail - Bind - Tutor
  (367, 36700, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Huntail - Super Fang - Tutor
  (367, 36700, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Huntail - Snore - Tutor
  (367, 36700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Huntail - Icy Wind - Tutor
  (367, 36700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Huntail - Snatch - Tutor
  (367, 36700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Huntail - Bounce - Tutor
  (367, 36700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Huntail - Water Pulse - Tutor
  (367, 36700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Huntail - Aqua Tail - Tutor
  (367, 36700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Gorebyss - Confusion - Level 1
  (368, 36800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gorebyss - Whirlpool - Level 1
  (368, 36800, 250, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gorebyss - Water Sport - Level 5
  (368, 36800, 346, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Gorebyss - Agility - Level 9
  (368, 36800, 97, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Gorebyss - Draining Kiss - Level 11
  (368, 36800, 577, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Gorebyss - Water Pulse - Level 14
  (368, 36800, 352, 16, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gorebyss - Amnesia - Level 16
  (368, 36800, 133, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gorebyss - Aqua Ring - Level 19
  (368, 36800, 392, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gorebyss - Captivate - Level 23
  (368, 36800, 445, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Gorebyss - Dive - Level 26
  (368, 36800, 291, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Gorebyss - Baton Pass - Level 29
  (368, 36800, 226, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gorebyss - Psychic - Level 34
  (368, 36800, 94, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Gorebyss - Aqua Tail - Level 39
  (368, 36800, 401, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Gorebyss - Coil - Level 45
  (368, 36800, 489, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Gorebyss - Hydro Pump - Level 50
  (368, 36800, 56, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Gorebyss - Toxic - TM06
  (368, 36800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Gorebyss - Hail - TM07
  (368, 36800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 17),
  -- Gorebyss - Hidden Power - TM10
  (368, 36800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Gorebyss - Ice Beam - TM13
  (368, 36800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 19),
  -- Gorebyss - Blizzard - TM14
  (368, 36800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 20),
  -- Gorebyss - Hyper Beam - TM15
  (368, 36800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Gorebyss - Protect - TM17
  (368, 36800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Gorebyss - Rain Dance - TM18
  (368, 36800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Gorebyss - Safeguard - TM20
  (368, 36800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Gorebyss - Frustration - TM21
  (368, 36800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Gorebyss - Return - TM27
  (368, 36800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Gorebyss - Psychic - TM29
  (368, 36800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Gorebyss - Shadow Ball - TM30
  (368, 36800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Gorebyss - Double Team - TM32
  (368, 36800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Gorebyss - Facade - TM42
  (368, 36800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Gorebyss - Rest - TM44
  (368, 36800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Gorebyss - Attract - TM45
  (368, 36800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Gorebyss - Round - TM48
  (368, 36800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Gorebyss - Scald - TM55
  (368, 36800, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Gorebyss - Giga Impact - TM68
  (368, 36800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Gorebyss - Psych Up - TM77
  (368, 36800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 36),
  -- Gorebyss - Infestation - TM83
  (368, 36800, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 37),
  -- Gorebyss - Swagger - TM87
  (368, 36800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Gorebyss - Sleep Talk - TM88
  (368, 36800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Gorebyss - Substitute - TM90
  (368, 36800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Gorebyss - Surf - TM94
  (368, 36800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 41),
  -- Gorebyss - Waterfall - TM98
  (368, 36800, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 42),
  -- Gorebyss - Confide - TM100
  (368, 36800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Gorebyss - Bind - Tutor
  (368, 36800, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Gorebyss - Snore - Tutor
  (368, 36800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Gorebyss - Icy Wind - Tutor
  (368, 36800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Gorebyss - Signal Beam - Tutor
  (368, 36800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Gorebyss - Bounce - Tutor
  (368, 36800, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Gorebyss - Water Pulse - Tutor
  (368, 36800, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Gorebyss - Aqua Tail - Tutor
  (368, 36800, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Relicanth - Tackle - Level 1
  (369, 36900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Relicanth - Water Gun - Level 1
  (369, 36900, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Relicanth - Harden - Level 1
  (369, 36900, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Relicanth - Flail - Level 1
  (369, 36900, 175, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Relicanth - Mud Sport - Level 1
  (369, 36900, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Relicanth - Head Smash - Level 1
  (369, 36900, 457, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Relicanth - Mud Sport - Level 6
  (369, 36900, 300, 16, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Relicanth - Water Gun - Level 10
  (369, 36900, 55, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Relicanth - Rock Tomb - Level 15
  (369, 36900, 317, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Relicanth - Ancient Power - Level 21
  (369, 36900, 246, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Relicanth - Dive - Level 26
  (369, 36900, 291, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Relicanth - Take Down - Level 31
  (369, 36900, 36, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Relicanth - Yawn - Level 35
  (369, 36900, 281, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Relicanth - Rest - Level 41
  (369, 36900, 156, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Relicanth - Hydro Pump - Level 46
  (369, 36900, 56, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Relicanth - Double-Edge - Level 50
  (369, 36900, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Relicanth - Head Smash - Level 56
  (369, 36900, 457, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Relicanth - Calm Mind - TM04
  (369, 36900, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Relicanth - Toxic - TM06
  (369, 36900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Relicanth - Hail - TM07
  (369, 36900, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Relicanth - Hidden Power - TM10
  (369, 36900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Relicanth - Ice Beam - TM13
  (369, 36900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Relicanth - Blizzard - TM14
  (369, 36900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Relicanth - Hyper Beam - TM15
  (369, 36900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Relicanth - Protect - TM17
  (369, 36900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Relicanth - Rain Dance - TM18
  (369, 36900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Relicanth - Safeguard - TM20
  (369, 36900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Relicanth - Frustration - TM21
  (369, 36900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Relicanth - Smack Down - TM23
  (369, 36900, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Relicanth - Earthquake - TM26
  (369, 36900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Relicanth - Return - TM27
  (369, 36900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Relicanth - Double Team - TM32
  (369, 36900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Relicanth - Sandstorm - TM37
  (369, 36900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Relicanth - Rock Tomb - TM39
  (369, 36900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Relicanth - Facade - TM42
  (369, 36900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Relicanth - Rest - TM44
  (369, 36900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Relicanth - Attract - TM45
  (369, 36900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Relicanth - Round - TM48
  (369, 36900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Relicanth - Scald - TM55
  (369, 36900, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 39),
  -- Relicanth - Giga Impact - TM68
  (369, 36900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Relicanth - Rock Polish - TM69
  (369, 36900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Relicanth - Stone Edge - TM71
  (369, 36900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Relicanth - Psych Up - TM77
  (369, 36900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Relicanth - Bulldoze - TM78
  (369, 36900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Relicanth - Rock Slide - TM80
  (369, 36900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Relicanth - Swagger - TM87
  (369, 36900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Relicanth - Sleep Talk - TM88
  (369, 36900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Relicanth - Substitute - TM90
  (369, 36900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Relicanth - Surf - TM94
  (369, 36900, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 49),
  -- Relicanth - Waterfall - TM98
  (369, 36900, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 50),
  -- Relicanth - Confide - TM100
  (369, 36900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Relicanth - Skull Bash - Egg
  (369, 36900, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Relicanth - Amnesia - Egg
  (369, 36900, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Relicanth - Snore - Egg
  (369, 36900, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Relicanth - Mud-Slap - Egg
  (369, 36900, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Relicanth - Sleep Talk - Egg
  (369, 36900, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Relicanth - Magnitude - Egg
  (369, 36900, 222, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Relicanth - Muddy Water - Egg
  (369, 36900, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Relicanth - Mud Shot - Egg
  (369, 36900, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Relicanth - Water Sport - Egg
  (369, 36900, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Relicanth - Brine - Egg
  (369, 36900, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Relicanth - Aqua Tail - Egg
  (369, 36900, 401, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Relicanth - Zen Headbutt - Egg
  (369, 36900, 428, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Relicanth - Snore - Tutor
  (369, 36900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Relicanth - Icy Wind - Tutor
  (369, 36900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Relicanth - Bounce - Tutor
  (369, 36900, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Relicanth - Water Pulse - Tutor
  (369, 36900, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Relicanth - Aqua Tail - Tutor
  (369, 36900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Relicanth - Earth Power - Tutor
  (369, 36900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Relicanth - Zen Headbutt - Tutor
  (369, 36900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Relicanth - Stealth Rock - Tutor
  (369, 36900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Relicanth - Stomping Tantrum - Tutor
  (369, 36900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),

  -- Luvdisc - Tackle - Level 1
  (370, 37000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luvdisc - Charm - Level 1
  (370, 37000, 204, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luvdisc - Water Gun - Level 4
  (370, 37000, 55, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Luvdisc - Agility - Level 7
  (370, 37000, 97, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Luvdisc - Draining Kiss - Level 9
  (370, 37000, 577, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Luvdisc - Lucky Chant - Level 13
  (370, 37000, 381, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Luvdisc - Water Pulse - Level 17
  (370, 37000, 352, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Luvdisc - Attract - Level 20
  (370, 37000, 213, 16, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Luvdisc - Heart Stamp - Level 22
  (370, 37000, 531, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Luvdisc - Flail - Level 26
  (370, 37000, 175, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Luvdisc - Sweet Kiss - Level 31
  (370, 37000, 186, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Luvdisc - Take Down - Level 34
  (370, 37000, 36, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Luvdisc - Captivate - Level 37
  (370, 37000, 445, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Luvdisc - Aqua Ring - Level 40
  (370, 37000, 392, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Luvdisc - Soak - Level 42
  (370, 37000, 487, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Luvdisc - Hydro Pump - Level 46
  (370, 37000, 56, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Luvdisc - Safeguard - Level 49
  (370, 37000, 219, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Luvdisc - Toxic - TM06
  (370, 37000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Luvdisc - Hail - TM07
  (370, 37000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Luvdisc - Hidden Power - TM10
  (370, 37000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Luvdisc - Ice Beam - TM13
  (370, 37000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Luvdisc - Blizzard - TM14
  (370, 37000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Luvdisc - Protect - TM17
  (370, 37000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Luvdisc - Rain Dance - TM18
  (370, 37000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Luvdisc - Safeguard - TM20
  (370, 37000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Luvdisc - Frustration - TM21
  (370, 37000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Luvdisc - Return - TM27
  (370, 37000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Luvdisc - Double Team - TM32
  (370, 37000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Luvdisc - Facade - TM42
  (370, 37000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Luvdisc - Rest - TM44
  (370, 37000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Luvdisc - Attract - TM45
  (370, 37000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Luvdisc - Round - TM48
  (370, 37000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Luvdisc - Scald - TM55
  (370, 37000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Luvdisc - Psych Up - TM77
  (370, 37000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 34),
  -- Luvdisc - Swagger - TM87
  (370, 37000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Luvdisc - Sleep Talk - TM88
  (370, 37000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Luvdisc - Substitute - TM90
  (370, 37000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Luvdisc - Surf - TM94
  (370, 37000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 38),
  -- Luvdisc - Waterfall - TM98
  (370, 37000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 39),
  -- Luvdisc - Confide - TM100
  (370, 37000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Luvdisc - Supersonic - Egg
  (370, 37000, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Luvdisc - Splash - Egg
  (370, 37000, 150, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Luvdisc - Mud Sport - Egg
  (370, 37000, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Luvdisc - Water Sport - Egg
  (370, 37000, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Luvdisc - Brine - Egg
  (370, 37000, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Luvdisc - Aqua Ring - Egg
  (370, 37000, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Luvdisc - Captivate - Egg
  (370, 37000, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Luvdisc - Aqua Jet - Egg
  (370, 37000, 453, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Luvdisc - Entrainment - Egg
  (370, 37000, 494, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Luvdisc - Heal Pulse - Egg
  (370, 37000, 505, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Luvdisc - Snore - Tutor
  (370, 37000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Luvdisc - Icy Wind - Tutor
  (370, 37000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Luvdisc - Bounce - Tutor
  (370, 37000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Luvdisc - Water Pulse - Tutor
  (370, 37000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Luvdisc - Liquidation - Tutor
  (370, 37000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Bagon - Rage - Level 1
  (371, 37100, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Ember - Level 4
  (371, 37100, 52, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Bagon - Leer - Level 7
  (371, 37100, 43, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Bagon - Bite - Level 10
  (371, 37100, 44, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bagon - Dragon Breath - Level 13
  (371, 37100, 225, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bagon - Headbutt - Level 17
  (371, 37100, 29, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bagon - Focus Energy - Level 21
  (371, 37100, 116, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Bagon - Crunch - Level 25
  (371, 37100, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bagon - Dragon Claw - Level 29
  (371, 37100, 337, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bagon - Zen Headbutt - Level 34
  (371, 37100, 428, 16, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Bagon - Scary Face - Level 39
  (371, 37100, 184, 16, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bagon - Flamethrower - Level 44
  (371, 37100, 53, 16, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Bagon - Double-Edge - Level 49
  (371, 37100, 38, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Bagon - Dragon Claw - TM02
  (371, 37100, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Bagon - Roar - TM05
  (371, 37100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 15),
  -- Bagon - Toxic - TM06
  (371, 37100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Bagon - Hidden Power - TM10
  (371, 37100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Bagon - Sunny Day - TM11
  (371, 37100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Bagon - Protect - TM17
  (371, 37100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 19),
  -- Bagon - Rain Dance - TM18
  (371, 37100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 20),
  -- Bagon - Frustration - TM21
  (371, 37100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Bagon - Return - TM27
  (371, 37100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Bagon - Brick Break - TM31
  (371, 37100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Bagon - Double Team - TM32
  (371, 37100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Bagon - Flamethrower - TM35
  (371, 37100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 25),
  -- Bagon - Fire Blast - TM38
  (371, 37100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 26),
  -- Bagon - Rock Tomb - TM39
  (371, 37100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Bagon - Aerial Ace - TM40
  (371, 37100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Bagon - Facade - TM42
  (371, 37100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Bagon - Rest - TM44
  (371, 37100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Bagon - Attract - TM45
  (371, 37100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Bagon - Round - TM48
  (371, 37100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Bagon - Shadow Claw - TM65
  (371, 37100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 33),
  -- Bagon - Rock Slide - TM80
  (371, 37100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 34),
  -- Bagon - Swagger - TM87
  (371, 37100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Bagon - Sleep Talk - TM88
  (371, 37100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Bagon - Substitute - TM90
  (371, 37100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Bagon - Confide - TM100
  (371, 37100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Bagon - Thrash - Egg
  (371, 37100, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bagon - Hydro Pump - Egg
  (371, 37100, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Bagon - Dragon Rage - Egg
  (371, 37100, 82, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bagon - Defense Curl - Egg
  (371, 37100, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bagon - Endure - Egg
  (371, 37100, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bagon - Twister - Egg
  (371, 37100, 239, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bagon - Dragon Dance - Egg
  (371, 37100, 349, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bagon - Dragon Pulse - Egg
  (371, 37100, 406, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bagon - Dragon Rush - Egg
  (371, 37100, 407, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bagon - Fire Fang - Egg
  (371, 37100, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bagon - Snore - Tutor
  (371, 37100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Bagon - Outrage - Tutor
  (371, 37100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Bagon - Hyper Voice - Tutor
  (371, 37100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Bagon - Dragon Pulse - Tutor
  (371, 37100, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Bagon - Zen Headbutt - Tutor
  (371, 37100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Bagon - Draco Meteor - Tutor
  (371, 37100, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Ember - Level 1
  (372, 37200, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Rage - Level 1
  (372, 37200, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shelgon - Protect - Level 1
  (372, 37200, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Shelgon - Ember - Level 4
  (372, 37200, 52, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Shelgon - Leer - Level 7
  (372, 37200, 43, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Shelgon - Bite - Level 10
  (372, 37200, 44, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Shelgon - Dragon Breath - Level 13
  (372, 37200, 225, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Shelgon - Headbutt - Level 17
  (372, 37200, 29, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Shelgon - Focus Energy - Level 21
  (372, 37200, 116, 16, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Shelgon - Crunch - Level 25
  (372, 37200, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Shelgon - Dragon Claw - Level 29
  (372, 37200, 337, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Shelgon - Zen Headbutt - Level 35
  (372, 37200, 428, 16, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Shelgon - Scary Face - Level 42
  (372, 37200, 184, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Shelgon - Flamethrower - Level 49
  (372, 37200, 53, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Shelgon - Double-Edge - Level 56
  (372, 37200, 38, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Shelgon - Dragon Claw - TM02
  (372, 37200, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 18),
  -- Shelgon - Roar - TM05
  (372, 37200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Shelgon - Toxic - TM06
  (372, 37200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Shelgon - Hidden Power - TM10
  (372, 37200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Shelgon - Sunny Day - TM11
  (372, 37200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Shelgon - Protect - TM17
  (372, 37200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Shelgon - Rain Dance - TM18
  (372, 37200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Shelgon - Frustration - TM21
  (372, 37200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Shelgon - Return - TM27
  (372, 37200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Shelgon - Brick Break - TM31
  (372, 37200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Shelgon - Double Team - TM32
  (372, 37200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Shelgon - Flamethrower - TM35
  (372, 37200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 29),
  -- Shelgon - Fire Blast - TM38
  (372, 37200, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 30),
  -- Shelgon - Rock Tomb - TM39
  (372, 37200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Shelgon - Aerial Ace - TM40
  (372, 37200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Shelgon - Facade - TM42
  (372, 37200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Shelgon - Rest - TM44
  (372, 37200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Shelgon - Attract - TM45
  (372, 37200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Shelgon - Round - TM48
  (372, 37200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Shelgon - Shadow Claw - TM65
  (372, 37200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 37),
  -- Shelgon - Rock Slide - TM80
  (372, 37200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 38),
  -- Shelgon - Swagger - TM87
  (372, 37200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Shelgon - Sleep Talk - TM88
  (372, 37200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Shelgon - Substitute - TM90
  (372, 37200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Shelgon - Confide - TM100
  (372, 37200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Shelgon - Snore - Tutor
  (372, 37200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Shelgon - Outrage - Tutor
  (372, 37200, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Shelgon - Hyper Voice - Tutor
  (372, 37200, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Shelgon - Iron Defense - Tutor
  (372, 37200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Shelgon - Dragon Pulse - Tutor
  (372, 37200, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Shelgon - Zen Headbutt - Tutor
  (372, 37200, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Shelgon - Draco Meteor - Tutor
  (372, 37200, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Shelgon - Protect - Evolution
  (372, 37200, 182, 16, NULL, 7, NULL, NULL, NULL, NULL, 50),

  -- Salamence - Fly - Level 1
  (373, 37300, 19, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Ember - Level 1
  (373, 37300, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Rage - Level 1
  (373, 37300, 99, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salamence - Protect - Level 1
  (373, 37300, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salamence - Thunder Fang - Level 1
  (373, 37300, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salamence - Fire Fang - Level 1
  (373, 37300, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Salamence - Dragon Tail - Level 1
  (373, 37300, 525, 16, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Salamence - Ember - Level 4
  (373, 37300, 52, 16, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Salamence - Leer - Level 7
  (373, 37300, 43, 16, NULL, 1, 7, NULL, NULL, NULL, 11),
  -- Salamence - Bite - Level 10
  (373, 37300, 44, 16, NULL, 1, 10, NULL, NULL, NULL, 12),
  -- Salamence - Dragon Breath - Level 13
  (373, 37300, 225, 16, NULL, 1, 13, NULL, NULL, NULL, 13),
  -- Salamence - Headbutt - Level 17
  (373, 37300, 29, 16, NULL, 1, 17, NULL, NULL, NULL, 14),
  -- Salamence - Focus Energy - Level 21
  (373, 37300, 116, 16, NULL, 1, 21, NULL, NULL, NULL, 15),
  -- Salamence - Crunch - Level 25
  (373, 37300, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 16),
  -- Salamence - Dragon Claw - Level 29
  (373, 37300, 337, 16, NULL, 1, 29, NULL, NULL, NULL, 17),
  -- Salamence - Zen Headbutt - Level 35
  (373, 37300, 428, 16, NULL, 1, 35, NULL, NULL, NULL, 18),
  -- Salamence - Scary Face - Level 42
  (373, 37300, 184, 16, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Salamence - Flamethrower - Level 49
  (373, 37300, 53, 16, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Salamence - Double-Edge - Level 63
  (373, 37300, 38, 16, NULL, 1, 63, NULL, NULL, NULL, 21),
  -- Salamence - Dragon Claw - TM02
  (373, 37300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 22),
  -- Salamence - Roar - TM05
  (373, 37300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 23),
  -- Salamence - Toxic - TM06
  (373, 37300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Salamence - Hidden Power - TM10
  (373, 37300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Salamence - Sunny Day - TM11
  (373, 37300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Salamence - Hyper Beam - TM15
  (373, 37300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Salamence - Protect - TM17
  (373, 37300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 28),
  -- Salamence - Rain Dance - TM18
  (373, 37300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 29),
  -- Salamence - Roost - TM19
  (373, 37300, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 30),
  -- Salamence - Frustration - TM21
  (373, 37300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Salamence - Earthquake - TM26
  (373, 37300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 32),
  -- Salamence - Return - TM27
  (373, 37300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 33),
  -- Salamence - Brick Break - TM31
  (373, 37300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Salamence - Double Team - TM32
  (373, 37300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Salamence - Flamethrower - TM35
  (373, 37300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 36),
  -- Salamence - Fire Blast - TM38
  (373, 37300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 37),
  -- Salamence - Rock Tomb - TM39
  (373, 37300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 38),
  -- Salamence - Aerial Ace - TM40
  (373, 37300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 39),
  -- Salamence - Facade - TM42
  (373, 37300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Salamence - Rest - TM44
  (373, 37300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Salamence - Attract - TM45
  (373, 37300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Salamence - Round - TM48
  (373, 37300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Salamence - Steel Wing - TM51
  (373, 37300, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 44),
  -- Salamence - Brutal Swing - TM59
  (373, 37300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 45),
  -- Salamence - Shadow Claw - TM65
  (373, 37300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 46),
  -- Salamence - Giga Impact - TM68
  (373, 37300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Salamence - Stone Edge - TM71
  (373, 37300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 48),
  -- Salamence - Fly - TM76
  (373, 37300, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 49),
  -- Salamence - Bulldoze - TM78
  (373, 37300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 50),
  -- Salamence - Rock Slide - TM80
  (373, 37300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 51),
  -- Salamence - Dragon Tail - TM82
  (373, 37300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 52),
  -- Salamence - Swagger - TM87
  (373, 37300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Salamence - Sleep Talk - TM88
  (373, 37300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Salamence - Substitute - TM90
  (373, 37300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 55),
  -- Salamence - Confide - TM100
  (373, 37300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Salamence - Snore - Tutor
  (373, 37300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Salamence - Outrage - Tutor
  (373, 37300, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Salamence - Iron Tail - Tutor
  (373, 37300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Salamence - Heat Wave - Tutor
  (373, 37300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Salamence - Hyper Voice - Tutor
  (373, 37300, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Salamence - Tailwind - Tutor
  (373, 37300, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Salamence - Aqua Tail - Tutor
  (373, 37300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Salamence - Dragon Pulse - Tutor
  (373, 37300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Salamence - Zen Headbutt - Tutor
  (373, 37300, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Salamence - Defog - Tutor
  (373, 37300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Salamence - Draco Meteor - Tutor
  (373, 37300, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Salamence - Laser Focus - Tutor
  (373, 37300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Salamence - Fly - Evolution
  (373, 37300, 19, 16, NULL, 7, NULL, NULL, NULL, NULL, 69),

  -- Beldum - Take Down - Level 1
  (374, 37400, 36, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beldum - Iron Defense - Tutor
  (374, 37400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 2),
  -- Beldum - Zen Headbutt - Tutor
  (374, 37400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 3),
  -- Beldum - Iron Head - Tutor
  (374, 37400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 4),

  -- Metang - Take Down - Level 1
  (375, 37500, 36, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Confusion - Level 1
  (375, 37500, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metang - Metal Claw - Level 1
  (375, 37500, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metang - Magnet Rise - Level 1
  (375, 37500, 393, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metang - Pursuit - Level 23
  (375, 37500, 228, 16, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Metang - Bullet Punch - Level 26
  (375, 37500, 418, 16, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Metang - Miracle Eye - Level 29
  (375, 37500, 357, 16, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Metang - Zen Headbutt - Level 32
  (375, 37500, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Metang - Scary Face - Level 35
  (375, 37500, 184, 16, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Metang - Psychic - Level 38
  (375, 37500, 94, 16, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Metang - Agility - Level 41
  (375, 37500, 97, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Metang - Meteor Mash - Level 44
  (375, 37500, 309, 16, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Metang - Iron Defense - Level 47
  (375, 37500, 334, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Metang - Hyper Beam - Level 50
  (375, 37500, 63, 16, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Metang - Psyshock - TM03
  (375, 37500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 15),
  -- Metang - Toxic - TM06
  (375, 37500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Metang - Hidden Power - TM10
  (375, 37500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Metang - Sunny Day - TM11
  (375, 37500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Metang - Hyper Beam - TM15
  (375, 37500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 19),
  -- Metang - Light Screen - TM16
  (375, 37500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Metang - Protect - TM17
  (375, 37500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Metang - Rain Dance - TM18
  (375, 37500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Metang - Frustration - TM21
  (375, 37500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Metang - Earthquake - TM26
  (375, 37500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 24),
  -- Metang - Return - TM27
  (375, 37500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Metang - Psychic - TM29
  (375, 37500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 26),
  -- Metang - Shadow Ball - TM30
  (375, 37500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Metang - Brick Break - TM31
  (375, 37500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Metang - Double Team - TM32
  (375, 37500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Metang - Reflect - TM33
  (375, 37500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Metang - Sludge Bomb - TM36
  (375, 37500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 31),
  -- Metang - Sandstorm - TM37
  (375, 37500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Metang - Rock Tomb - TM39
  (375, 37500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Metang - Aerial Ace - TM40
  (375, 37500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Metang - Facade - TM42
  (375, 37500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Metang - Rest - TM44
  (375, 37500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Metang - Round - TM48
  (375, 37500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Metang - Explosion - TM64
  (375, 37500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 38),
  -- Metang - Rock Polish - TM69
  (375, 37500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 39),
  -- Metang - Gyro Ball - TM74
  (375, 37500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 40),
  -- Metang - Psych Up - TM77
  (375, 37500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 41),
  -- Metang - Bulldoze - TM78
  (375, 37500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 42),
  -- Metang - Rock Slide - TM80
  (375, 37500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Metang - Grass Knot - TM86
  (375, 37500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Metang - Swagger - TM87
  (375, 37500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Metang - Sleep Talk - TM88
  (375, 37500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Metang - Substitute - TM90
  (375, 37500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Metang - Flash Cannon - TM91
  (375, 37500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 48),
  -- Metang - Confide - TM100
  (375, 37500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Metang - Ice Punch - Tutor
  (375, 37500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Metang - Thunder Punch - Tutor
  (375, 37500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Metang - Snore - Tutor
  (375, 37500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Metang - Icy Wind - Tutor
  (375, 37500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Metang - Trick - Tutor
  (375, 37500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Metang - Signal Beam - Tutor
  (375, 37500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Metang - Iron Defense - Tutor
  (375, 37500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Metang - Gravity - Tutor
  (375, 37500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Metang - Magnet Rise - Tutor
  (375, 37500, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Metang - Zen Headbutt - Tutor
  (375, 37500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Metang - Iron Head - Tutor
  (375, 37500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Metang - Stealth Rock - Tutor
  (375, 37500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Metang - Telekinesis - Tutor
  (375, 37500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Metang - Ally Switch - Tutor
  (375, 37500, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Metang - Confusion - Evolution
  (375, 37500, 93, 16, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Metang - Metal Claw - Evolution
  (375, 37500, 232, 16, NULL, 7, NULL, NULL, NULL, NULL, 65),

  -- Metagross - Take Down - Level 1
  (376, 37600, 36, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Hammer Arm - Level 1
  (376, 37600, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Magnet Rise - Level 1
  (376, 37600, 393, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Metagross - Pursuit - Level 23
  (376, 37600, 228, 16, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Metagross - Bullet Punch - Level 26
  (376, 37600, 418, 16, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Metagross - Miracle Eye - Level 29
  (376, 37600, 357, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Metagross - Zen Headbutt - Level 32
  (376, 37600, 428, 16, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Metagross - Scary Face - Level 35
  (376, 37600, 184, 16, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Metagross - Psychic - Level 38
  (376, 37600, 94, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Metagross - Agility - Level 41
  (376, 37600, 97, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Metagross - Meteor Mash - Level 44
  (376, 37600, 309, 16, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Metagross - Iron Defense - Level 52
  (376, 37600, 334, 16, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Metagross - Hyper Beam - Level 60
  (376, 37600, 63, 16, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Metagross - Psyshock - TM03
  (376, 37600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 16),
  -- Metagross - Toxic - TM06
  (376, 37600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Metagross - Hidden Power - TM10
  (376, 37600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Metagross - Sunny Day - TM11
  (376, 37600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Metagross - Hyper Beam - TM15
  (376, 37600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Metagross - Light Screen - TM16
  (376, 37600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 21),
  -- Metagross - Protect - TM17
  (376, 37600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Metagross - Rain Dance - TM18
  (376, 37600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Metagross - Frustration - TM21
  (376, 37600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Metagross - Earthquake - TM26
  (376, 37600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Metagross - Return - TM27
  (376, 37600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Metagross - Psychic - TM29
  (376, 37600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Metagross - Shadow Ball - TM30
  (376, 37600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Metagross - Brick Break - TM31
  (376, 37600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 29),
  -- Metagross - Double Team - TM32
  (376, 37600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Metagross - Reflect - TM33
  (376, 37600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Metagross - Sludge Bomb - TM36
  (376, 37600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Metagross - Sandstorm - TM37
  (376, 37600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Metagross - Rock Tomb - TM39
  (376, 37600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Metagross - Aerial Ace - TM40
  (376, 37600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Metagross - Facade - TM42
  (376, 37600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Metagross - Rest - TM44
  (376, 37600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Metagross - Round - TM48
  (376, 37600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Metagross - Explosion - TM64
  (376, 37600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 39),
  -- Metagross - Giga Impact - TM68
  (376, 37600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Metagross - Rock Polish - TM69
  (376, 37600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Metagross - Gyro Ball - TM74
  (376, 37600, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 42),
  -- Metagross - Psych Up - TM77
  (376, 37600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 43),
  -- Metagross - Bulldoze - TM78
  (376, 37600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Metagross - Rock Slide - TM80
  (376, 37600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Metagross - Grass Knot - TM86
  (376, 37600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Metagross - Swagger - TM87
  (376, 37600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Metagross - Sleep Talk - TM88
  (376, 37600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Metagross - Substitute - TM90
  (376, 37600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Metagross - Flash Cannon - TM91
  (376, 37600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 50),
  -- Metagross - Confide - TM100
  (376, 37600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Metagross - Ice Punch - Tutor
  (376, 37600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Metagross - Thunder Punch - Tutor
  (376, 37600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Metagross - Snore - Tutor
  (376, 37600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Metagross - Icy Wind - Tutor
  (376, 37600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Metagross - Trick - Tutor
  (376, 37600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Metagross - Signal Beam - Tutor
  (376, 37600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Metagross - Iron Defense - Tutor
  (376, 37600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Metagross - Block - Tutor
  (376, 37600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Metagross - Gravity - Tutor
  (376, 37600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Metagross - Magnet Rise - Tutor
  (376, 37600, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Metagross - Zen Headbutt - Tutor
  (376, 37600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Metagross - Iron Head - Tutor
  (376, 37600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Metagross - Stealth Rock - Tutor
  (376, 37600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Metagross - Telekinesis - Tutor
  (376, 37600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Metagross - Ally Switch - Tutor
  (376, 37600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Metagross - Laser Focus - Tutor
  (376, 37600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Metagross - Stomping Tantrum - Tutor
  (376, 37600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Metagross - Hammer Arm - Evolution
  (376, 37600, 359, 16, NULL, 7, NULL, NULL, NULL, NULL, 69),

  -- Regirock - Stomp - Level 1
  (377, 37700, 23, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regirock - Rock Throw - Level 1
  (377, 37700, 88, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regirock - Explosion - Level 1
  (377, 37700, 153, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regirock - Charge Beam - Level 1
  (377, 37700, 451, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regirock - Bulldoze - Level 1
  (377, 37700, 523, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regirock - Rock Throw - Level 7
  (377, 37700, 88, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Regirock - Charge Beam - Level 13
  (377, 37700, 451, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Regirock - Bulldoze - Level 19
  (377, 37700, 523, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Regirock - Curse - Level 25
  (377, 37700, 174, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Regirock - Ancient Power - Level 31
  (377, 37700, 246, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Regirock - Iron Defense - Level 37
  (377, 37700, 334, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Regirock - Stone Edge - Level 43
  (377, 37700, 444, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Regirock - Hammer Arm - Level 49
  (377, 37700, 359, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Regirock - Zap Cannon - Level 55
  (377, 37700, 192, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Regirock - Lock-On - Level 55
  (377, 37700, 199, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Regirock - Superpower - Level 61
  (377, 37700, 276, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Regirock - Hyper Beam - Level 67
  (377, 37700, 63, 16, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Regirock - Toxic - TM06
  (377, 37700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Regirock - Hidden Power - TM10
  (377, 37700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Regirock - Sunny Day - TM11
  (377, 37700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Regirock - Hyper Beam - TM15
  (377, 37700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Regirock - Protect - TM17
  (377, 37700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Regirock - Safeguard - TM20
  (377, 37700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Regirock - Frustration - TM21
  (377, 37700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Regirock - Smack Down - TM23
  (377, 37700, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 25),
  -- Regirock - Thunderbolt - TM24
  (377, 37700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Regirock - Thunder - TM25
  (377, 37700, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Regirock - Earthquake - TM26
  (377, 37700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 28),
  -- Regirock - Return - TM27
  (377, 37700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Regirock - Brick Break - TM31
  (377, 37700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Regirock - Double Team - TM32
  (377, 37700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Regirock - Sandstorm - TM37
  (377, 37700, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 32),
  -- Regirock - Rock Tomb - TM39
  (377, 37700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Regirock - Facade - TM42
  (377, 37700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Regirock - Rest - TM44
  (377, 37700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Regirock - Round - TM48
  (377, 37700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Regirock - Focus Blast - TM52
  (377, 37700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Regirock - Fling - TM56
  (377, 37700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Regirock - Charge Beam - TM57
  (377, 37700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Regirock - Explosion - TM64
  (377, 37700, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 40),
  -- Regirock - Giga Impact - TM68
  (377, 37700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Regirock - Rock Polish - TM69
  (377, 37700, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 42),
  -- Regirock - Stone Edge - TM71
  (377, 37700, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 43),
  -- Regirock - Thunder Wave - TM73
  (377, 37700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Regirock - Psych Up - TM77
  (377, 37700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Regirock - Bulldoze - TM78
  (377, 37700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Regirock - Rock Slide - TM80
  (377, 37700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Regirock - Swagger - TM87
  (377, 37700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Regirock - Sleep Talk - TM88
  (377, 37700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Regirock - Substitute - TM90
  (377, 37700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Regirock - Confide - TM100
  (377, 37700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Regirock - Fire Punch - Tutor
  (377, 37700, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Regirock - Ice Punch - Tutor
  (377, 37700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Regirock - Thunder Punch - Tutor
  (377, 37700, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Regirock - Snore - Tutor
  (377, 37700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Regirock - Focus Punch - Tutor
  (377, 37700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Regirock - Superpower - Tutor
  (377, 37700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Regirock - Iron Defense - Tutor
  (377, 37700, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Regirock - Block - Tutor
  (377, 37700, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Regirock - Shock Wave - Tutor
  (377, 37700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Regirock - Gravity - Tutor
  (377, 37700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Regirock - Drain Punch - Tutor
  (377, 37700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Regirock - Earth Power - Tutor
  (377, 37700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Regirock - Iron Head - Tutor
  (377, 37700, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Regirock - Stealth Rock - Tutor
  (377, 37700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Regirock - Stomping Tantrum - Tutor
  (377, 37700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Regice - Stomp - Level 1
  (378, 37800, 23, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regice - Explosion - Level 1
  (378, 37800, 153, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regice - Icy Wind - Level 1
  (378, 37800, 196, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regice - Charge Beam - Level 1
  (378, 37800, 451, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regice - Bulldoze - Level 1
  (378, 37800, 523, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regice - Icy Wind - Level 7
  (378, 37800, 196, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Regice - Charge Beam - Level 13
  (378, 37800, 451, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Regice - Bulldoze - Level 19
  (378, 37800, 523, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Regice - Curse - Level 25
  (378, 37800, 174, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Regice - Ancient Power - Level 31
  (378, 37800, 246, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Regice - Amnesia - Level 37
  (378, 37800, 133, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Regice - Ice Beam - Level 43
  (378, 37800, 58, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Regice - Hammer Arm - Level 49
  (378, 37800, 359, 16, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Regice - Zap Cannon - Level 55
  (378, 37800, 192, 16, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Regice - Lock-On - Level 55
  (378, 37800, 199, 16, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Regice - Superpower - Level 61
  (378, 37800, 276, 16, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Regice - Hyper Beam - Level 67
  (378, 37800, 63, 16, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Regice - Toxic - TM06
  (378, 37800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Regice - Hail - TM07
  (378, 37800, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Regice - Hidden Power - TM10
  (378, 37800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Regice - Ice Beam - TM13
  (378, 37800, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Regice - Blizzard - TM14
  (378, 37800, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Regice - Hyper Beam - TM15
  (378, 37800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Regice - Protect - TM17
  (378, 37800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Regice - Rain Dance - TM18
  (378, 37800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Regice - Safeguard - TM20
  (378, 37800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Regice - Frustration - TM21
  (378, 37800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Regice - Thunderbolt - TM24
  (378, 37800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Regice - Thunder - TM25
  (378, 37800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Regice - Earthquake - TM26
  (378, 37800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Regice - Return - TM27
  (378, 37800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Regice - Brick Break - TM31
  (378, 37800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Regice - Double Team - TM32
  (378, 37800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Regice - Rock Tomb - TM39
  (378, 37800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Regice - Facade - TM42
  (378, 37800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Regice - Rest - TM44
  (378, 37800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Regice - Round - TM48
  (378, 37800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Regice - Focus Blast - TM52
  (378, 37800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Regice - Fling - TM56
  (378, 37800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Regice - Charge Beam - TM57
  (378, 37800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 40),
  -- Regice - Explosion - TM64
  (378, 37800, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 41),
  -- Regice - Giga Impact - TM68
  (378, 37800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Regice - Rock Polish - TM69
  (378, 37800, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 43),
  -- Regice - Aurora Veil - TM70
  (378, 37800, 694, 16, NULL, 2, NULL, NULL, 16002070, NULL, 44),
  -- Regice - Thunder Wave - TM73
  (378, 37800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Regice - Psych Up - TM77
  (378, 37800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Regice - Bulldoze - TM78
  (378, 37800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Regice - Frost Breath - TM79
  (378, 37800, 524, 16, NULL, 2, NULL, NULL, 16002079, NULL, 48),
  -- Regice - Rock Slide - TM80
  (378, 37800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Regice - Swagger - TM87
  (378, 37800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Regice - Sleep Talk - TM88
  (378, 37800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Regice - Substitute - TM90
  (378, 37800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Regice - Flash Cannon - TM91
  (378, 37800, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 53),
  -- Regice - Confide - TM100
  (378, 37800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Regice - Ice Punch - Tutor
  (378, 37800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Regice - Thunder Punch - Tutor
  (378, 37800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Regice - Snore - Tutor
  (378, 37800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Regice - Icy Wind - Tutor
  (378, 37800, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Regice - Focus Punch - Tutor
  (378, 37800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Regice - Superpower - Tutor
  (378, 37800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Regice - Signal Beam - Tutor
  (378, 37800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Regice - Block - Tutor
  (378, 37800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Regice - Shock Wave - Tutor
  (378, 37800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Regice - Gravity - Tutor
  (378, 37800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Regice - Iron Head - Tutor
  (378, 37800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Regice - Stomping Tantrum - Tutor
  (378, 37800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Registeel - Stomp - Level 1
  (379, 37900, 23, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Registeel - Explosion - Level 1
  (379, 37900, 153, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Registeel - Metal Claw - Level 1
  (379, 37900, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Registeel - Charge Beam - Level 1
  (379, 37900, 451, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Registeel - Bulldoze - Level 1
  (379, 37900, 523, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Registeel - Metal Claw - Level 7
  (379, 37900, 232, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Registeel - Charge Beam - Level 13
  (379, 37900, 451, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Registeel - Bulldoze - Level 19
  (379, 37900, 523, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Registeel - Curse - Level 25
  (379, 37900, 174, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Registeel - Ancient Power - Level 31
  (379, 37900, 246, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Registeel - Amnesia - Level 37
  (379, 37900, 133, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Registeel - Iron Defense - Level 37
  (379, 37900, 334, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Registeel - Flash Cannon - Level 43
  (379, 37900, 430, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Registeel - Iron Head - Level 43
  (379, 37900, 442, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Registeel - Hammer Arm - Level 49
  (379, 37900, 359, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Registeel - Zap Cannon - Level 55
  (379, 37900, 192, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Registeel - Lock-On - Level 55
  (379, 37900, 199, 16, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Registeel - Superpower - Level 61
  (379, 37900, 276, 16, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Registeel - Hyper Beam - Level 67
  (379, 37900, 63, 16, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Registeel - Toxic - TM06
  (379, 37900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Registeel - Hidden Power - TM10
  (379, 37900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Registeel - Sunny Day - TM11
  (379, 37900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Registeel - Hyper Beam - TM15
  (379, 37900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Registeel - Protect - TM17
  (379, 37900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Registeel - Rain Dance - TM18
  (379, 37900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Registeel - Safeguard - TM20
  (379, 37900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Registeel - Frustration - TM21
  (379, 37900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Registeel - Thunderbolt - TM24
  (379, 37900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Registeel - Thunder - TM25
  (379, 37900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Registeel - Earthquake - TM26
  (379, 37900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Registeel - Return - TM27
  (379, 37900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Registeel - Brick Break - TM31
  (379, 37900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Registeel - Double Team - TM32
  (379, 37900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Registeel - Sandstorm - TM37
  (379, 37900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Registeel - Rock Tomb - TM39
  (379, 37900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 35),
  -- Registeel - Aerial Ace - TM40
  (379, 37900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Registeel - Facade - TM42
  (379, 37900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Registeel - Rest - TM44
  (379, 37900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Registeel - Round - TM48
  (379, 37900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Registeel - Focus Blast - TM52
  (379, 37900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Registeel - Fling - TM56
  (379, 37900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Registeel - Charge Beam - TM57
  (379, 37900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Registeel - Explosion - TM64
  (379, 37900, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 43),
  -- Registeel - Shadow Claw - TM65
  (379, 37900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Registeel - Giga Impact - TM68
  (379, 37900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Registeel - Rock Polish - TM69
  (379, 37900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 46),
  -- Registeel - Thunder Wave - TM73
  (379, 37900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 47),
  -- Registeel - Psych Up - TM77
  (379, 37900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 48),
  -- Registeel - Bulldoze - TM78
  (379, 37900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 49),
  -- Registeel - Rock Slide - TM80
  (379, 37900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 50),
  -- Registeel - Swagger - TM87
  (379, 37900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 51),
  -- Registeel - Sleep Talk - TM88
  (379, 37900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 52),
  -- Registeel - Substitute - TM90
  (379, 37900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 53),
  -- Registeel - Flash Cannon - TM91
  (379, 37900, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 54),
  -- Registeel - Confide - TM100
  (379, 37900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Registeel - Ice Punch - Tutor
  (379, 37900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Registeel - Thunder Punch - Tutor
  (379, 37900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Registeel - Snore - Tutor
  (379, 37900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Registeel - Focus Punch - Tutor
  (379, 37900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Registeel - Superpower - Tutor
  (379, 37900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Registeel - Iron Defense - Tutor
  (379, 37900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Registeel - Block - Tutor
  (379, 37900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Registeel - Shock Wave - Tutor
  (379, 37900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Registeel - Gravity - Tutor
  (379, 37900, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Registeel - Magnet Rise - Tutor
  (379, 37900, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Registeel - Iron Head - Tutor
  (379, 37900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Registeel - Stealth Rock - Tutor
  (379, 37900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Registeel - Stomping Tantrum - Tutor
  (379, 37900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Latias - Psywave - Level 1
  (380, 38000, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Safeguard - Level 1
  (380, 38000, 219, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latias - Helping Hand - Level 1
  (380, 38000, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Latias - Wish - Level 1
  (380, 38000, 273, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Latias - Healing Wish - Level 1
  (380, 38000, 361, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Latias - Water Sport - Level 4
  (380, 38000, 346, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Latias - Charm - Level 7
  (380, 38000, 204, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Latias - Stored Power - Level 10
  (380, 38000, 500, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Latias - Refresh - Level 13
  (380, 38000, 287, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Latias - Heal Pulse - Level 16
  (380, 38000, 505, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Latias - Dragon Breath - Level 20
  (380, 38000, 225, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Latias - Mist Ball - Level 24
  (380, 38000, 296, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Latias - Psycho Shift - Level 28
  (380, 38000, 375, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Latias - Recover - Level 32
  (380, 38000, 105, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Latias - Reflect Type - Level 36
  (380, 38000, 513, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Latias - Zen Headbutt - Level 41
  (380, 38000, 428, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Latias - Guard Split - Level 46
  (380, 38000, 470, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Latias - Psychic - Level 51
  (380, 38000, 94, 16, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Latias - Dragon Pulse - Level 56
  (380, 38000, 406, 16, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Latias - Healing Wish - Level 61
  (380, 38000, 361, 16, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Latias - Dragon Claw - TM02
  (380, 38000, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Latias - Psyshock - TM03
  (380, 38000, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 22),
  -- Latias - Calm Mind - TM04
  (380, 38000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Latias - Roar - TM05
  (380, 38000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 24),
  -- Latias - Toxic - TM06
  (380, 38000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Latias - Hidden Power - TM10
  (380, 38000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Latias - Sunny Day - TM11
  (380, 38000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Latias - Ice Beam - TM13
  (380, 38000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 28),
  -- Latias - Hyper Beam - TM15
  (380, 38000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Latias - Light Screen - TM16
  (380, 38000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 30),
  -- Latias - Protect - TM17
  (380, 38000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Latias - Rain Dance - TM18
  (380, 38000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Latias - Roost - TM19
  (380, 38000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 33),
  -- Latias - Safeguard - TM20
  (380, 38000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 34),
  -- Latias - Frustration - TM21
  (380, 38000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Latias - Solar Beam - TM22
  (380, 38000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 36),
  -- Latias - Thunderbolt - TM24
  (380, 38000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 37),
  -- Latias - Thunder - TM25
  (380, 38000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 38),
  -- Latias - Earthquake - TM26
  (380, 38000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 39),
  -- Latias - Return - TM27
  (380, 38000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 40),
  -- Latias - Psychic - TM29
  (380, 38000, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 41),
  -- Latias - Shadow Ball - TM30
  (380, 38000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 42),
  -- Latias - Double Team - TM32
  (380, 38000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 43),
  -- Latias - Reflect - TM33
  (380, 38000, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 44),
  -- Latias - Sandstorm - TM37
  (380, 38000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 45),
  -- Latias - Aerial Ace - TM40
  (380, 38000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 46),
  -- Latias - Facade - TM42
  (380, 38000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 47),
  -- Latias - Rest - TM44
  (380, 38000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 48),
  -- Latias - Attract - TM45
  (380, 38000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 49),
  -- Latias - Round - TM48
  (380, 38000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 50),
  -- Latias - Steel Wing - TM51
  (380, 38000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 51),
  -- Latias - Energy Ball - TM53
  (380, 38000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 52),
  -- Latias - Charge Beam - TM57
  (380, 38000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 53),
  -- Latias - Shadow Claw - TM65
  (380, 38000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 54),
  -- Latias - Giga Impact - TM68
  (380, 38000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 55),
  -- Latias - Thunder Wave - TM73
  (380, 38000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 56),
  -- Latias - Fly - TM76
  (380, 38000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 57),
  -- Latias - Psych Up - TM77
  (380, 38000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 58),
  -- Latias - Bulldoze - TM78
  (380, 38000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 59),
  -- Latias - Dream Eater - TM85
  (380, 38000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 60),
  -- Latias - Grass Knot - TM86
  (380, 38000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 61),
  -- Latias - Swagger - TM87
  (380, 38000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 62),
  -- Latias - Sleep Talk - TM88
  (380, 38000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 63),
  -- Latias - Substitute - TM90
  (380, 38000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 64),
  -- Latias - Surf - TM94
  (380, 38000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 65),
  -- Latias - Waterfall - TM98
  (380, 38000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 66),
  -- Latias - Confide - TM100
  (380, 38000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 67),
  -- Latias - Snore - Tutor
  (380, 38000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Latias - Icy Wind - Tutor
  (380, 38000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Latias - Outrage - Tutor
  (380, 38000, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Latias - Helping Hand - Tutor
  (380, 38000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Latias - Trick - Tutor
  (380, 38000, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Latias - Role Play - Tutor
  (380, 38000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Latias - Magic Coat - Tutor
  (380, 38000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Latias - Covet - Tutor
  (380, 38000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Latias - Shock Wave - Tutor
  (380, 38000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Latias - Water Pulse - Tutor
  (380, 38000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Latias - Tailwind - Tutor
  (380, 38000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Latias - Last Resort - Tutor
  (380, 38000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Latias - Dragon Pulse - Tutor
  (380, 38000, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Latias - Zen Headbutt - Tutor
  (380, 38000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Latias - Defog - Tutor
  (380, 38000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Latias - Draco Meteor - Tutor
  (380, 38000, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Latias - Telekinesis - Tutor
  (380, 38000, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Latias - Magic Room - Tutor
  (380, 38000, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Latias - Ally Switch - Tutor
  (380, 38000, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Latias - Laser Focus - Tutor
  (380, 38000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),

  -- Latios - Psywave - Level 1
  (381, 38100, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Safeguard - Level 1
  (381, 38100, 219, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latios - Memento - Level 1
  (381, 38100, 262, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Latios - Helping Hand - Level 1
  (381, 38100, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Latios - Heal Block - Level 1
  (381, 38100, 377, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Latios - Protect - Level 4
  (381, 38100, 182, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Latios - Dragon Dance - Level 7
  (381, 38100, 349, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Latios - Stored Power - Level 10
  (381, 38100, 500, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Latios - Refresh - Level 13
  (381, 38100, 287, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Latios - Heal Pulse - Level 16
  (381, 38100, 505, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Latios - Dragon Breath - Level 20
  (381, 38100, 225, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Latios - Luster Purge - Level 24
  (381, 38100, 295, 16, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Latios - Psycho Shift - Level 28
  (381, 38100, 375, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Latios - Recover - Level 32
  (381, 38100, 105, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Latios - Telekinesis - Level 36
  (381, 38100, 477, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Latios - Zen Headbutt - Level 41
  (381, 38100, 428, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Latios - Power Split - Level 46
  (381, 38100, 471, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Latios - Psychic - Level 51
  (381, 38100, 94, 16, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Latios - Dragon Pulse - Level 56
  (381, 38100, 406, 16, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Latios - Memento - Level 61
  (381, 38100, 262, 16, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Latios - Dragon Claw - TM02
  (381, 38100, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 21),
  -- Latios - Psyshock - TM03
  (381, 38100, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 22),
  -- Latios - Calm Mind - TM04
  (381, 38100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 23),
  -- Latios - Roar - TM05
  (381, 38100, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 24),
  -- Latios - Toxic - TM06
  (381, 38100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Latios - Hidden Power - TM10
  (381, 38100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Latios - Sunny Day - TM11
  (381, 38100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Latios - Ice Beam - TM13
  (381, 38100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 28),
  -- Latios - Hyper Beam - TM15
  (381, 38100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 29),
  -- Latios - Light Screen - TM16
  (381, 38100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 30),
  -- Latios - Protect - TM17
  (381, 38100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 31),
  -- Latios - Rain Dance - TM18
  (381, 38100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 32),
  -- Latios - Roost - TM19
  (381, 38100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 33),
  -- Latios - Safeguard - TM20
  (381, 38100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 34),
  -- Latios - Frustration - TM21
  (381, 38100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Latios - Solar Beam - TM22
  (381, 38100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 36),
  -- Latios - Thunderbolt - TM24
  (381, 38100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 37),
  -- Latios - Thunder - TM25
  (381, 38100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 38),
  -- Latios - Earthquake - TM26
  (381, 38100, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 39),
  -- Latios - Return - TM27
  (381, 38100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 40),
  -- Latios - Psychic - TM29
  (381, 38100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 41),
  -- Latios - Shadow Ball - TM30
  (381, 38100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 42),
  -- Latios - Double Team - TM32
  (381, 38100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 43),
  -- Latios - Reflect - TM33
  (381, 38100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 44),
  -- Latios - Sandstorm - TM37
  (381, 38100, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 45),
  -- Latios - Aerial Ace - TM40
  (381, 38100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 46),
  -- Latios - Facade - TM42
  (381, 38100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 47),
  -- Latios - Rest - TM44
  (381, 38100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 48),
  -- Latios - Attract - TM45
  (381, 38100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 49),
  -- Latios - Round - TM48
  (381, 38100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 50),
  -- Latios - Steel Wing - TM51
  (381, 38100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 51),
  -- Latios - Energy Ball - TM53
  (381, 38100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 52),
  -- Latios - Charge Beam - TM57
  (381, 38100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 53),
  -- Latios - Shadow Claw - TM65
  (381, 38100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 54),
  -- Latios - Giga Impact - TM68
  (381, 38100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 55),
  -- Latios - Thunder Wave - TM73
  (381, 38100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 56),
  -- Latios - Fly - TM76
  (381, 38100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 57),
  -- Latios - Psych Up - TM77
  (381, 38100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 58),
  -- Latios - Bulldoze - TM78
  (381, 38100, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 59),
  -- Latios - Dream Eater - TM85
  (381, 38100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 60),
  -- Latios - Grass Knot - TM86
  (381, 38100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 61),
  -- Latios - Swagger - TM87
  (381, 38100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 62),
  -- Latios - Sleep Talk - TM88
  (381, 38100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 63),
  -- Latios - Substitute - TM90
  (381, 38100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 64),
  -- Latios - Surf - TM94
  (381, 38100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 65),
  -- Latios - Waterfall - TM98
  (381, 38100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 66),
  -- Latios - Confide - TM100
  (381, 38100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 67),
  -- Latios - Snore - Tutor
  (381, 38100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Latios - Icy Wind - Tutor
  (381, 38100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Latios - Outrage - Tutor
  (381, 38100, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Latios - Helping Hand - Tutor
  (381, 38100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Latios - Trick - Tutor
  (381, 38100, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Latios - Magic Coat - Tutor
  (381, 38100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Latios - Shock Wave - Tutor
  (381, 38100, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Latios - Water Pulse - Tutor
  (381, 38100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Latios - Tailwind - Tutor
  (381, 38100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Latios - Last Resort - Tutor
  (381, 38100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Latios - Dragon Pulse - Tutor
  (381, 38100, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Latios - Zen Headbutt - Tutor
  (381, 38100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Latios - Defog - Tutor
  (381, 38100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Latios - Draco Meteor - Tutor
  (381, 38100, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Latios - Wonder Room - Tutor
  (381, 38100, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Latios - Telekinesis - Tutor
  (381, 38100, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Latios - Ally Switch - Tutor
  (381, 38100, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Latios - Laser Focus - Tutor
  (381, 38100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),

  -- Kyogre - Ancient Power - Level 1
  (382, 38200, 246, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyogre - Scary Face - Level 5
  (382, 38200, 184, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Kyogre - Aqua Tail - Level 15
  (382, 38200, 401, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyogre - Body Slam - Level 20
  (382, 38200, 34, 16, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Kyogre - Aqua Ring - Level 30
  (382, 38200, 392, 16, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Kyogre - Ice Beam - Level 35
  (382, 38200, 58, 16, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Kyogre - Origin Pulse - Level 45
  (382, 38200, 618, 16, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Kyogre - Calm Mind - Level 50
  (382, 38200, 347, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyogre - Muddy Water - Level 60
  (382, 38200, 330, 16, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Kyogre - Sheer Cold - Level 65
  (382, 38200, 329, 16, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Kyogre - Hydro Pump - Level 75
  (382, 38200, 56, 16, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Kyogre - Double-Edge - Level 80
  (382, 38200, 38, 16, NULL, 1, 80, NULL, NULL, NULL, 13),
  -- Kyogre - Water Spout - Level 90
  (382, 38200, 323, 16, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Kyogre - Calm Mind - TM04
  (382, 38200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 15),
  -- Kyogre - Roar - TM05
  (382, 38200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 16),
  -- Kyogre - Toxic - TM06
  (382, 38200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Kyogre - Hail - TM07
  (382, 38200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Kyogre - Hidden Power - TM10
  (382, 38200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Kyogre - Ice Beam - TM13
  (382, 38200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Kyogre - Blizzard - TM14
  (382, 38200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Kyogre - Hyper Beam - TM15
  (382, 38200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Kyogre - Protect - TM17
  (382, 38200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Kyogre - Rain Dance - TM18
  (382, 38200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Kyogre - Safeguard - TM20
  (382, 38200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Kyogre - Frustration - TM21
  (382, 38200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Kyogre - Thunderbolt - TM24
  (382, 38200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Kyogre - Thunder - TM25
  (382, 38200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Kyogre - Earthquake - TM26
  (382, 38200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Kyogre - Return - TM27
  (382, 38200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Kyogre - Brick Break - TM31
  (382, 38200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Kyogre - Double Team - TM32
  (382, 38200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Kyogre - Rock Tomb - TM39
  (382, 38200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Kyogre - Facade - TM42
  (382, 38200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Kyogre - Rest - TM44
  (382, 38200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Kyogre - Round - TM48
  (382, 38200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Kyogre - Scald - TM55
  (382, 38200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 37),
  -- Kyogre - Giga Impact - TM68
  (382, 38200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Kyogre - Thunder Wave - TM73
  (382, 38200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Kyogre - Psych Up - TM77
  (382, 38200, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Kyogre - Bulldoze - TM78
  (382, 38200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 41),
  -- Kyogre - Rock Slide - TM80
  (382, 38200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 42),
  -- Kyogre - Swagger - TM87
  (382, 38200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Kyogre - Sleep Talk - TM88
  (382, 38200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Kyogre - Substitute - TM90
  (382, 38200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Kyogre - Surf - TM94
  (382, 38200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 46),
  -- Kyogre - Waterfall - TM98
  (382, 38200, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 47),
  -- Kyogre - Confide - TM100
  (382, 38200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Kyogre - Snore - Tutor
  (382, 38200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Kyogre - Icy Wind - Tutor
  (382, 38200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Kyogre - Uproar - Tutor
  (382, 38200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Kyogre - Signal Beam - Tutor
  (382, 38200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Kyogre - Block - Tutor
  (382, 38200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Kyogre - Shock Wave - Tutor
  (382, 38200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Kyogre - Water Pulse - Tutor
  (382, 38200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Kyogre - Aqua Tail - Tutor
  (382, 38200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Kyogre - Iron Head - Tutor
  (382, 38200, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Kyogre - Liquidation - Tutor
  (382, 38200, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Groudon - Ancient Power - Level 1
  (383, 38300, 246, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Groudon - Scary Face - Level 5
  (383, 38300, 184, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Groudon - Earth Power - Level 15
  (383, 38300, 414, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Groudon - Lava Plume - Level 20
  (383, 38300, 436, 16, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Groudon - Rest - Level 30
  (383, 38300, 156, 16, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Groudon - Earthquake - Level 35
  (383, 38300, 89, 16, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Groudon - Precipice Blades - Level 45
  (383, 38300, 619, 16, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Groudon - Bulk Up - Level 50
  (383, 38300, 339, 16, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Groudon - Solar Beam - Level 60
  (383, 38300, 76, 16, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Groudon - Fissure - Level 65
  (383, 38300, 90, 16, NULL, 1, 65, NULL, NULL, NULL, 11),
  -- Groudon - Fire Blast - Level 75
  (383, 38300, 126, 16, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Groudon - Hammer Arm - Level 80
  (383, 38300, 359, 16, NULL, 1, 80, NULL, NULL, NULL, 13),
  -- Groudon - Eruption - Level 90
  (383, 38300, 284, 16, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Groudon - Dragon Claw - TM02
  (383, 38300, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 15),
  -- Groudon - Roar - TM05
  (383, 38300, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 16),
  -- Groudon - Toxic - TM06
  (383, 38300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Groudon - Bulk Up - TM08
  (383, 38300, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 18),
  -- Groudon - Hidden Power - TM10
  (383, 38300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Groudon - Sunny Day - TM11
  (383, 38300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Groudon - Hyper Beam - TM15
  (383, 38300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Groudon - Protect - TM17
  (383, 38300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Groudon - Safeguard - TM20
  (383, 38300, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Groudon - Frustration - TM21
  (383, 38300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Groudon - Solar Beam - TM22
  (383, 38300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Groudon - Smack Down - TM23
  (383, 38300, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 26),
  -- Groudon - Thunderbolt - TM24
  (383, 38300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Groudon - Thunder - TM25
  (383, 38300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Groudon - Earthquake - TM26
  (383, 38300, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Groudon - Return - TM27
  (383, 38300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Groudon - Brick Break - TM31
  (383, 38300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Groudon - Double Team - TM32
  (383, 38300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Groudon - Flamethrower - TM35
  (383, 38300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Groudon - Sandstorm - TM37
  (383, 38300, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Groudon - Fire Blast - TM38
  (383, 38300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Groudon - Rock Tomb - TM39
  (383, 38300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Groudon - Aerial Ace - TM40
  (383, 38300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Groudon - Facade - TM42
  (383, 38300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Groudon - Rest - TM44
  (383, 38300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Groudon - Round - TM48
  (383, 38300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Groudon - Overheat - TM50
  (383, 38300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 41),
  -- Groudon - Focus Blast - TM52
  (383, 38300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Groudon - Fling - TM56
  (383, 38300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Groudon - Brutal Swing - TM59
  (383, 38300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 44),
  -- Groudon - Shadow Claw - TM65
  (383, 38300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 45),
  -- Groudon - Giga Impact - TM68
  (383, 38300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 46),
  -- Groudon - Rock Polish - TM69
  (383, 38300, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 47),
  -- Groudon - Stone Edge - TM71
  (383, 38300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 48),
  -- Groudon - Thunder Wave - TM73
  (383, 38300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 49),
  -- Groudon - Swords Dance - TM75
  (383, 38300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 50),
  -- Groudon - Psych Up - TM77
  (383, 38300, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Groudon - Bulldoze - TM78
  (383, 38300, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 52),
  -- Groudon - Rock Slide - TM80
  (383, 38300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 53),
  -- Groudon - Dragon Tail - TM82
  (383, 38300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 54),
  -- Groudon - Swagger - TM87
  (383, 38300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 55),
  -- Groudon - Sleep Talk - TM88
  (383, 38300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 56),
  -- Groudon - Substitute - TM90
  (383, 38300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Groudon - Confide - TM100
  (383, 38300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Groudon - Fire Punch - Tutor
  (383, 38300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Groudon - Thunder Punch - Tutor
  (383, 38300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Groudon - Snore - Tutor
  (383, 38300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Groudon - Iron Tail - Tutor
  (383, 38300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Groudon - Uproar - Tutor
  (383, 38300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Groudon - Block - Tutor
  (383, 38300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Groudon - Shock Wave - Tutor
  (383, 38300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Groudon - Dragon Pulse - Tutor
  (383, 38300, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Groudon - Earth Power - Tutor
  (383, 38300, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Groudon - Iron Head - Tutor
  (383, 38300, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Groudon - Stealth Rock - Tutor
  (383, 38300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Groudon - Stomping Tantrum - Tutor
  (383, 38300, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Scary Face - Level 5
  (384, 38400, 184, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Rayquaza - Ancient Power - Level 15
  (384, 38400, 246, 16, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Rayquaza - Crunch - Level 20
  (384, 38400, 242, 16, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Rayquaza - Air Slash - Level 30
  (384, 38400, 403, 16, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Rayquaza - Rest - Level 35
  (384, 38400, 156, 16, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Rayquaza - Extreme Speed - Level 45
  (384, 38400, 245, 16, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Rayquaza - Dragon Pulse - Level 50
  (384, 38400, 406, 16, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Rayquaza - Dragon Dance - Level 60
  (384, 38400, 349, 16, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Rayquaza - Fly - Level 65
  (384, 38400, 19, 16, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Rayquaza - Hyper Voice - Level 75
  (384, 38400, 304, 16, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Rayquaza - Outrage - Level 80
  (384, 38400, 200, 16, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Rayquaza - Hyper Beam - Level 90
  (384, 38400, 63, 16, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Rayquaza - Dragon Claw - TM02
  (384, 38400, 337, 16, NULL, 2, NULL, NULL, 16002002, NULL, 14),
  -- Rayquaza - Roar - TM05
  (384, 38400, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 15),
  -- Rayquaza - Toxic - TM06
  (384, 38400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Rayquaza - Bulk Up - TM08
  (384, 38400, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 17),
  -- Rayquaza - Hidden Power - TM10
  (384, 38400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Rayquaza - Sunny Day - TM11
  (384, 38400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Rayquaza - Ice Beam - TM13
  (384, 38400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Rayquaza - Blizzard - TM14
  (384, 38400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Rayquaza - Hyper Beam - TM15
  (384, 38400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Rayquaza - Protect - TM17
  (384, 38400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Rayquaza - Rain Dance - TM18
  (384, 38400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Rayquaza - Frustration - TM21
  (384, 38400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Rayquaza - Solar Beam - TM22
  (384, 38400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Rayquaza - Thunderbolt - TM24
  (384, 38400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 27),
  -- Rayquaza - Thunder - TM25
  (384, 38400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 28),
  -- Rayquaza - Earthquake - TM26
  (384, 38400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Rayquaza - Return - TM27
  (384, 38400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Rayquaza - Brick Break - TM31
  (384, 38400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Rayquaza - Double Team - TM32
  (384, 38400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Rayquaza - Flamethrower - TM35
  (384, 38400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 33),
  -- Rayquaza - Sandstorm - TM37
  (384, 38400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 34),
  -- Rayquaza - Fire Blast - TM38
  (384, 38400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Rayquaza - Rock Tomb - TM39
  (384, 38400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Rayquaza - Aerial Ace - TM40
  (384, 38400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Rayquaza - Facade - TM42
  (384, 38400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Rayquaza - Rest - TM44
  (384, 38400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Rayquaza - Round - TM48
  (384, 38400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Rayquaza - Echoed Voice - TM49
  (384, 38400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Rayquaza - Overheat - TM50
  (384, 38400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 42),
  -- Rayquaza - Focus Blast - TM52
  (384, 38400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Rayquaza - Energy Ball - TM53
  (384, 38400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 44),
  -- Rayquaza - Fling - TM56
  (384, 38400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 45),
  -- Rayquaza - Sky Drop - TM58
  (384, 38400, 507, 16, NULL, 2, NULL, NULL, 16002058, NULL, 46),
  -- Rayquaza - Brutal Swing - TM59
  (384, 38400, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 47),
  -- Rayquaza - Shadow Claw - TM65
  (384, 38400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 48),
  -- Rayquaza - Giga Impact - TM68
  (384, 38400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Rayquaza - Stone Edge - TM71
  (384, 38400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 50),
  -- Rayquaza - Thunder Wave - TM73
  (384, 38400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 51),
  -- Rayquaza - Gyro Ball - TM74
  (384, 38400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 52),
  -- Rayquaza - Swords Dance - TM75
  (384, 38400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 53),
  -- Rayquaza - Fly - TM76
  (384, 38400, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 54),
  -- Rayquaza - Psych Up - TM77
  (384, 38400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 55),
  -- Rayquaza - Bulldoze - TM78
  (384, 38400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 56),
  -- Rayquaza - Rock Slide - TM80
  (384, 38400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 57),
  -- Rayquaza - Dragon Tail - TM82
  (384, 38400, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 58),
  -- Rayquaza - Swagger - TM87
  (384, 38400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 59),
  -- Rayquaza - Sleep Talk - TM88
  (384, 38400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 60),
  -- Rayquaza - Substitute - TM90
  (384, 38400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 61),
  -- Rayquaza - Surf - TM94
  (384, 38400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 62),
  -- Rayquaza - Waterfall - TM98
  (384, 38400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 63),
  -- Rayquaza - Confide - TM100
  (384, 38400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 64),
  -- Rayquaza - Bind - Tutor
  (384, 38400, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Rayquaza - Snore - Tutor
  (384, 38400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Rayquaza - Icy Wind - Tutor
  (384, 38400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Rayquaza - Outrage - Tutor
  (384, 38400, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Rayquaza - Iron Tail - Tutor
  (384, 38400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Rayquaza - Uproar - Tutor
  (384, 38400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Rayquaza - Hyper Voice - Tutor
  (384, 38400, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Rayquaza - Shock Wave - Tutor
  (384, 38400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Rayquaza - Water Pulse - Tutor
  (384, 38400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Rayquaza - Tailwind - Tutor
  (384, 38400, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Rayquaza - Aqua Tail - Tutor
  (384, 38400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Rayquaza - Dragon Pulse - Tutor
  (384, 38400, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Rayquaza - Earth Power - Tutor
  (384, 38400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Rayquaza - Defog - Tutor
  (384, 38400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Rayquaza - Draco Meteor - Tutor
  (384, 38400, 434, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Rayquaza - Iron Head - Tutor
  (384, 38400, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Rayquaza - Dragon Ascent - Tutor
  (384, 38400, 620, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),

  -- Jirachi - Confusion - Level 1
  (385, 38500, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jirachi - Wish - Level 1
  (385, 38500, 273, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jirachi - Rest - Level 5
  (385, 38500, 156, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Jirachi - Swift - Level 10
  (385, 38500, 129, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Jirachi - Helping Hand - Level 15
  (385, 38500, 270, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Jirachi - Psychic - Level 20
  (385, 38500, 94, 16, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Jirachi - Refresh - Level 25
  (385, 38500, 287, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Jirachi - Lucky Chant - Level 30
  (385, 38500, 381, 16, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Jirachi - Zen Headbutt - Level 35
  (385, 38500, 428, 16, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Jirachi - Double-Edge - Level 40
  (385, 38500, 38, 16, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Jirachi - Gravity - Level 45
  (385, 38500, 356, 16, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Jirachi - Healing Wish - Level 50
  (385, 38500, 361, 16, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Jirachi - Future Sight - Level 55
  (385, 38500, 248, 16, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Jirachi - Cosmic Power - Level 60
  (385, 38500, 322, 16, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Jirachi - Last Resort - Level 65
  (385, 38500, 387, 16, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Jirachi - Doom Desire - Level 70
  (385, 38500, 353, 16, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Jirachi - Psyshock - TM03
  (385, 38500, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 17),
  -- Jirachi - Calm Mind - TM04
  (385, 38500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 18),
  -- Jirachi - Toxic - TM06
  (385, 38500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Jirachi - Hidden Power - TM10
  (385, 38500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Jirachi - Sunny Day - TM11
  (385, 38500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Jirachi - Hyper Beam - TM15
  (385, 38500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Jirachi - Light Screen - TM16
  (385, 38500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Jirachi - Protect - TM17
  (385, 38500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Jirachi - Rain Dance - TM18
  (385, 38500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Jirachi - Safeguard - TM20
  (385, 38500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Jirachi - Frustration - TM21
  (385, 38500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Jirachi - Thunderbolt - TM24
  (385, 38500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 28),
  -- Jirachi - Thunder - TM25
  (385, 38500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 29),
  -- Jirachi - Return - TM27
  (385, 38500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Jirachi - Psychic - TM29
  (385, 38500, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Jirachi - Shadow Ball - TM30
  (385, 38500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Jirachi - Double Team - TM32
  (385, 38500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Jirachi - Reflect - TM33
  (385, 38500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Jirachi - Sandstorm - TM37
  (385, 38500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 35),
  -- Jirachi - Aerial Ace - TM40
  (385, 38500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 36),
  -- Jirachi - Facade - TM42
  (385, 38500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Jirachi - Rest - TM44
  (385, 38500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Jirachi - Round - TM48
  (385, 38500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Jirachi - Energy Ball - TM53
  (385, 38500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Jirachi - Fling - TM56
  (385, 38500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Jirachi - Charge Beam - TM57
  (385, 38500, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Jirachi - Giga Impact - TM68
  (385, 38500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Jirachi - Thunder Wave - TM73
  (385, 38500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Jirachi - Psych Up - TM77
  (385, 38500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Jirachi - Dream Eater - TM85
  (385, 38500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 46),
  -- Jirachi - Grass Knot - TM86
  (385, 38500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Jirachi - Swagger - TM87
  (385, 38500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Jirachi - Sleep Talk - TM88
  (385, 38500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Jirachi - U-turn - TM89
  (385, 38500, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 50),
  -- Jirachi - Substitute - TM90
  (385, 38500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Jirachi - Flash Cannon - TM91
  (385, 38500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 52),
  -- Jirachi - Trick Room - TM92
  (385, 38500, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 53),
  -- Jirachi - Dazzling Gleam - TM99
  (385, 38500, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 54),
  -- Jirachi - Confide - TM100
  (385, 38500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 55),
  -- Jirachi - Fire Punch - Tutor
  (385, 38500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Jirachi - Ice Punch - Tutor
  (385, 38500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Jirachi - Thunder Punch - Tutor
  (385, 38500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Jirachi - Snore - Tutor
  (385, 38500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Jirachi - Icy Wind - Tutor
  (385, 38500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Jirachi - Uproar - Tutor
  (385, 38500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Jirachi - Helping Hand - Tutor
  (385, 38500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Jirachi - Trick - Tutor
  (385, 38500, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Jirachi - Magic Coat - Tutor
  (385, 38500, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Jirachi - Recycle - Tutor
  (385, 38500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Jirachi - Skill Swap - Tutor
  (385, 38500, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Jirachi - Signal Beam - Tutor
  (385, 38500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Jirachi - Iron Defense - Tutor
  (385, 38500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Jirachi - Shock Wave - Tutor
  (385, 38500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Jirachi - Water Pulse - Tutor
  (385, 38500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Jirachi - Gravity - Tutor
  (385, 38500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Jirachi - Last Resort - Tutor
  (385, 38500, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Jirachi - Drain Punch - Tutor
  (385, 38500, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Jirachi - Zen Headbutt - Tutor
  (385, 38500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Jirachi - Iron Head - Tutor
  (385, 38500, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Jirachi - Stealth Rock - Tutor
  (385, 38500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Jirachi - Telekinesis - Tutor
  (385, 38500, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Jirachi - Magic Room - Tutor
  (385, 38500, 478, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),

  -- Deoxys - Wrap - Level 1
  (386, 38600, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys - Leer - Level 1
  (386, 38600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys - Night Shade - Level 7
  (386, 38600, 101, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys - Teleport - Level 13
  (386, 38600, 100, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys - Knock Off - Level 19
  (386, 38600, 282, 16, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys - Pursuit - Level 25
  (386, 38600, 228, 16, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys - Psychic - Level 31
  (386, 38600, 94, 16, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys - Snatch - Level 37
  (386, 38600, 289, 16, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys - Psycho Shift - Level 43
  (386, 38600, 375, 16, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys - Zen Headbutt - Level 49
  (386, 38600, 428, 16, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys - Cosmic Power - Level 55
  (386, 38600, 322, 16, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys - Recover - Level 61
  (386, 38600, 105, 16, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys - Psycho Boost - Level 67
  (386, 38600, 354, 16, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys - Hyper Beam - Level 73
  (386, 38600, 63, 16, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys - Psyshock - TM03
  (386, 38600, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 15),
  -- Deoxys - Calm Mind - TM04
  (386, 38600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Deoxys - Toxic - TM06
  (386, 38600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Deoxys - Hidden Power - TM10
  (386, 38600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Deoxys - Sunny Day - TM11
  (386, 38600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Deoxys - Taunt - TM12
  (386, 38600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Deoxys - Ice Beam - TM13
  (386, 38600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Deoxys - Hyper Beam - TM15
  (386, 38600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Deoxys - Light Screen - TM16
  (386, 38600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 23),
  -- Deoxys - Protect - TM17
  (386, 38600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Deoxys - Rain Dance - TM18
  (386, 38600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Deoxys - Safeguard - TM20
  (386, 38600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Deoxys - Frustration - TM21
  (386, 38600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Deoxys - Solar Beam - TM22
  (386, 38600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Deoxys - Thunderbolt - TM24
  (386, 38600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Deoxys - Thunder - TM25
  (386, 38600, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Deoxys - Return - TM27
  (386, 38600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Deoxys - Psychic - TM29
  (386, 38600, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 32),
  -- Deoxys - Shadow Ball - TM30
  (386, 38600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 33),
  -- Deoxys - Brick Break - TM31
  (386, 38600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 34),
  -- Deoxys - Double Team - TM32
  (386, 38600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 35),
  -- Deoxys - Reflect - TM33
  (386, 38600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 36),
  -- Deoxys - Rock Tomb - TM39
  (386, 38600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 37),
  -- Deoxys - Aerial Ace - TM40
  (386, 38600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 38),
  -- Deoxys - Torment - TM41
  (386, 38600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 39),
  -- Deoxys - Facade - TM42
  (386, 38600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Deoxys - Rest - TM44
  (386, 38600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Deoxys - Low Sweep - TM47
  (386, 38600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 42),
  -- Deoxys - Round - TM48
  (386, 38600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 43),
  -- Deoxys - Focus Blast - TM52
  (386, 38600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Deoxys - Energy Ball - TM53
  (386, 38600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 45),
  -- Deoxys - Fling - TM56
  (386, 38600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Deoxys - Charge Beam - TM57
  (386, 38600, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 47),
  -- Deoxys - Brutal Swing - TM59
  (386, 38600, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 48),
  -- Deoxys - Giga Impact - TM68
  (386, 38600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 49),
  -- Deoxys - Thunder Wave - TM73
  (386, 38600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 50),
  -- Deoxys - Psych Up - TM77
  (386, 38600, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Deoxys - Rock Slide - TM80
  (386, 38600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 52),
  -- Deoxys - Poison Jab - TM84
  (386, 38600, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 53),
  -- Deoxys - Dream Eater - TM85
  (386, 38600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 54),
  -- Deoxys - Grass Knot - TM86
  (386, 38600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 55),
  -- Deoxys - Swagger - TM87
  (386, 38600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 56),
  -- Deoxys - Sleep Talk - TM88
  (386, 38600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 57),
  -- Deoxys - Substitute - TM90
  (386, 38600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 58),
  -- Deoxys - Flash Cannon - TM91
  (386, 38600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 59),
  -- Deoxys - Trick Room - TM92
  (386, 38600, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Deoxys - Dark Pulse - TM97
  (386, 38600, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 61),
  -- Deoxys - Confide - TM100
  (386, 38600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Deoxys - Fire Punch - Tutor
  (386, 38600, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Deoxys - Ice Punch - Tutor
  (386, 38600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Deoxys - Thunder Punch - Tutor
  (386, 38600, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Deoxys - Bind - Tutor
  (386, 38600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Deoxys - Low Kick - Tutor
  (386, 38600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Deoxys - Snore - Tutor
  (386, 38600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Deoxys - Icy Wind - Tutor
  (386, 38600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Deoxys - Focus Punch - Tutor
  (386, 38600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Deoxys - Trick - Tutor
  (386, 38600, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Deoxys - Role Play - Tutor
  (386, 38600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Deoxys - Magic Coat - Tutor
  (386, 38600, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Deoxys - Recycle - Tutor
  (386, 38600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Deoxys - Knock Off - Tutor
  (386, 38600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Deoxys - Skill Swap - Tutor
  (386, 38600, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Deoxys - Snatch - Tutor
  (386, 38600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Deoxys - Signal Beam - Tutor
  (386, 38600, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Deoxys - Shock Wave - Tutor
  (386, 38600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Deoxys - Water Pulse - Tutor
  (386, 38600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Deoxys - Gravity - Tutor
  (386, 38600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Deoxys - Drain Punch - Tutor
  (386, 38600, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Deoxys - Zen Headbutt - Tutor
  (386, 38600, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Deoxys - Stealth Rock - Tutor
  (386, 38600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Deoxys - Wonder Room - Tutor
  (386, 38600, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Deoxys - Telekinesis - Tutor
  (386, 38600, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Deoxys - Ally Switch - Tutor
  (386, 38600, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Deoxys - Laser Focus - Tutor
  (386, 38600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Deoxys - Throat Chop - Tutor
  (386, 38600, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Deoxys - Stomping Tantrum - Tutor
  (386, 38600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),

  -- Turtwig - Tackle - Level 1
  (387, 38700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtwig - Withdraw - Level 5
  (387, 38700, 110, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Turtwig - Absorb - Level 9
  (387, 38700, 71, 16, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Turtwig - Razor Leaf - Level 13
  (387, 38700, 75, 16, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Turtwig - Curse - Level 17
  (387, 38700, 174, 16, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Turtwig - Bite - Level 21
  (387, 38700, 44, 16, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Turtwig - Mega Drain - Level 25
  (387, 38700, 72, 16, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Turtwig - Leech Seed - Level 29
  (387, 38700, 73, 16, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Turtwig - Synthesis - Level 33
  (387, 38700, 235, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Turtwig - Crunch - Level 37
  (387, 38700, 242, 16, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Turtwig - Giga Drain - Level 41
  (387, 38700, 202, 16, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Turtwig - Leaf Storm - Level 45
  (387, 38700, 437, 16, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Turtwig - Work Up - TM01
  (387, 38700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 13),
  -- Turtwig - Toxic - TM06
  (387, 38700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Turtwig - Hidden Power - TM10
  (387, 38700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Turtwig - Sunny Day - TM11
  (387, 38700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Turtwig - Light Screen - TM16
  (387, 38700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 17),
  -- Turtwig - Protect - TM17
  (387, 38700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Turtwig - Safeguard - TM20
  (387, 38700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 19),
  -- Turtwig - Frustration - TM21
  (387, 38700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Turtwig - Solar Beam - TM22
  (387, 38700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 21),
  -- Turtwig - Return - TM27
  (387, 38700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Turtwig - Double Team - TM32
  (387, 38700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Turtwig - Reflect - TM33
  (387, 38700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 24),
  -- Turtwig - Facade - TM42
  (387, 38700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Turtwig - Rest - TM44
  (387, 38700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Turtwig - Attract - TM45
  (387, 38700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Turtwig - Round - TM48
  (387, 38700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Turtwig - Energy Ball - TM53
  (387, 38700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 29),
  -- Turtwig - Swords Dance - TM75
  (387, 38700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 30),
  -- Turtwig - Grass Knot - TM86
  (387, 38700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 31),
  -- Turtwig - Swagger - TM87
  (387, 38700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Turtwig - Sleep Talk - TM88
  (387, 38700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Turtwig - Substitute - TM90
  (387, 38700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Turtwig - Nature Power - TM96
  (387, 38700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 35),
  -- Turtwig - Confide - TM100
  (387, 38700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Turtwig - Body Slam - Egg
  (387, 38700, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Turtwig - Thrash - Egg
  (387, 38700, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Turtwig - Double-Edge - Egg
  (387, 38700, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Turtwig - Growth - Egg
  (387, 38700, 74, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Turtwig - Amnesia - Egg
  (387, 38700, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Turtwig - Stockpile - Egg
  (387, 38700, 254, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Turtwig - Spit Up - Egg
  (387, 38700, 255, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Turtwig - Swallow - Egg
  (387, 38700, 256, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Turtwig - Superpower - Egg
  (387, 38700, 276, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Turtwig - Tickle - Egg
  (387, 38700, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Turtwig - Sand Tomb - Egg
  (387, 38700, 328, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Turtwig - Worry Seed - Egg
  (387, 38700, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Turtwig - Seed Bomb - Egg
  (387, 38700, 402, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Turtwig - Earth Power - Egg
  (387, 38700, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Turtwig - Wide Guard - Egg
  (387, 38700, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Turtwig - Heavy Slam - Egg
  (387, 38700, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Turtwig - Grassy Terrain - Egg
  (387, 38700, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Turtwig - Snore - Tutor
  (387, 38700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Turtwig - Giga Drain - Tutor
  (387, 38700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Turtwig - Iron Tail - Tutor
  (387, 38700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Turtwig - Synthesis - Tutor
  (387, 38700, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Turtwig - Superpower - Tutor
  (387, 38700, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Turtwig - Worry Seed - Tutor
  (387, 38700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Turtwig - Seed Bomb - Tutor
  (387, 38700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Turtwig - Earth Power - Tutor
  (387, 38700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Turtwig - Stealth Rock - Tutor
  (387, 38700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Turtwig - Grass Pledge - Tutor
  (387, 38700, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Grotle - Tackle - Level 1
  (388, 38800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grotle - Absorb - Level 1
  (388, 38800, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grotle - Withdraw - Level 1
  (388, 38800, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grotle - Withdraw - Level 5
  (388, 38800, 110, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Grotle - Absorb - Level 9
  (388, 38800, 71, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Grotle - Razor Leaf - Level 13
  (388, 38800, 75, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Grotle - Curse - Level 17
  (388, 38800, 174, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Grotle - Bite - Level 22
  (388, 38800, 44, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Grotle - Mega Drain - Level 27
  (388, 38800, 72, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Grotle - Leech Seed - Level 32
  (388, 38800, 73, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Grotle - Synthesis - Level 37
  (388, 38800, 235, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Grotle - Crunch - Level 42
  (388, 38800, 242, 16, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Grotle - Giga Drain - Level 47
  (388, 38800, 202, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Grotle - Leaf Storm - Level 52
  (388, 38800, 437, 16, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Grotle - Work Up - TM01
  (388, 38800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Grotle - Toxic - TM06
  (388, 38800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Grotle - Hidden Power - TM10
  (388, 38800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Grotle - Sunny Day - TM11
  (388, 38800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Grotle - Light Screen - TM16
  (388, 38800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 19),
  -- Grotle - Protect - TM17
  (388, 38800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Grotle - Safeguard - TM20
  (388, 38800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Grotle - Frustration - TM21
  (388, 38800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Grotle - Solar Beam - TM22
  (388, 38800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Grotle - Return - TM27
  (388, 38800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Grotle - Double Team - TM32
  (388, 38800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Grotle - Reflect - TM33
  (388, 38800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 26),
  -- Grotle - Facade - TM42
  (388, 38800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Grotle - Rest - TM44
  (388, 38800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Grotle - Attract - TM45
  (388, 38800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Grotle - Round - TM48
  (388, 38800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Grotle - Energy Ball - TM53
  (388, 38800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 31),
  -- Grotle - Swords Dance - TM75
  (388, 38800, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 32),
  -- Grotle - Grass Knot - TM86
  (388, 38800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Grotle - Swagger - TM87
  (388, 38800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Grotle - Sleep Talk - TM88
  (388, 38800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Grotle - Substitute - TM90
  (388, 38800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Grotle - Nature Power - TM96
  (388, 38800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Grotle - Confide - TM100
  (388, 38800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Grotle - Snore - Tutor
  (388, 38800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Grotle - Giga Drain - Tutor
  (388, 38800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Grotle - Iron Tail - Tutor
  (388, 38800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Grotle - Synthesis - Tutor
  (388, 38800, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Grotle - Superpower - Tutor
  (388, 38800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Grotle - Worry Seed - Tutor
  (388, 38800, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Grotle - Seed Bomb - Tutor
  (388, 38800, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Grotle - Earth Power - Tutor
  (388, 38800, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Grotle - Stealth Rock - Tutor
  (388, 38800, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Grotle - Grass Pledge - Tutor
  (388, 38800, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Torterra - Tackle - Level 1
  (389, 38900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torterra - Absorb - Level 1
  (389, 38900, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torterra - Razor Leaf - Level 1
  (389, 38900, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torterra - Earthquake - Level 1
  (389, 38900, 89, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torterra - Withdraw - Level 1
  (389, 38900, 110, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Torterra - Wood Hammer - Level 1
  (389, 38900, 452, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Torterra - Withdraw - Level 5
  (389, 38900, 110, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Torterra - Absorb - Level 9
  (389, 38900, 71, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Torterra - Razor Leaf - Level 13
  (389, 38900, 75, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Torterra - Curse - Level 17
  (389, 38900, 174, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Torterra - Bite - Level 22
  (389, 38900, 44, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Torterra - Mega Drain - Level 27
  (389, 38900, 72, 16, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Torterra - Leech Seed - Level 33
  (389, 38900, 73, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Torterra - Synthesis - Level 39
  (389, 38900, 235, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Torterra - Crunch - Level 45
  (389, 38900, 242, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Torterra - Giga Drain - Level 51
  (389, 38900, 202, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Torterra - Leaf Storm - Level 57
  (389, 38900, 437, 16, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Torterra - Work Up - TM01
  (389, 38900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Torterra - Roar - TM05
  (389, 38900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Torterra - Toxic - TM06
  (389, 38900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Torterra - Hidden Power - TM10
  (389, 38900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Torterra - Sunny Day - TM11
  (389, 38900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Torterra - Hyper Beam - TM15
  (389, 38900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Torterra - Light Screen - TM16
  (389, 38900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Torterra - Protect - TM17
  (389, 38900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Torterra - Safeguard - TM20
  (389, 38900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 26),
  -- Torterra - Frustration - TM21
  (389, 38900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Torterra - Solar Beam - TM22
  (389, 38900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Torterra - Earthquake - TM26
  (389, 38900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Torterra - Return - TM27
  (389, 38900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Torterra - Double Team - TM32
  (389, 38900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Torterra - Reflect - TM33
  (389, 38900, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Torterra - Sandstorm - TM37
  (389, 38900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 33),
  -- Torterra - Rock Tomb - TM39
  (389, 38900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Torterra - Facade - TM42
  (389, 38900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Torterra - Rest - TM44
  (389, 38900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Torterra - Attract - TM45
  (389, 38900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Torterra - Round - TM48
  (389, 38900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Torterra - Energy Ball - TM53
  (389, 38900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Torterra - Giga Impact - TM68
  (389, 38900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Torterra - Rock Polish - TM69
  (389, 38900, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 41),
  -- Torterra - Stone Edge - TM71
  (389, 38900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Torterra - Swords Dance - TM75
  (389, 38900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Torterra - Bulldoze - TM78
  (389, 38900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Torterra - Rock Slide - TM80
  (389, 38900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Torterra - Grass Knot - TM86
  (389, 38900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 46),
  -- Torterra - Swagger - TM87
  (389, 38900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 47),
  -- Torterra - Sleep Talk - TM88
  (389, 38900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 48),
  -- Torterra - Substitute - TM90
  (389, 38900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 49),
  -- Torterra - Nature Power - TM96
  (389, 38900, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 50),
  -- Torterra - Confide - TM100
  (389, 38900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Torterra - Snore - Tutor
  (389, 38900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Torterra - Outrage - Tutor
  (389, 38900, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Torterra - Giga Drain - Tutor
  (389, 38900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Torterra - Iron Tail - Tutor
  (389, 38900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Torterra - Synthesis - Tutor
  (389, 38900, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Torterra - Superpower - Tutor
  (389, 38900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Torterra - Block - Tutor
  (389, 38900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Torterra - Frenzy Plant - Tutor
  (389, 38900, 338, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Torterra - Worry Seed - Tutor
  (389, 38900, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Torterra - Seed Bomb - Tutor
  (389, 38900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Torterra - Earth Power - Tutor
  (389, 38900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Torterra - Iron Head - Tutor
  (389, 38900, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Torterra - Stealth Rock - Tutor
  (389, 38900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Torterra - Grass Pledge - Tutor
  (389, 38900, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Torterra - Stomping Tantrum - Tutor
  (389, 38900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Torterra - Earthquake - Evolution
  (389, 38900, 89, 16, NULL, 7, NULL, NULL, NULL, NULL, 67),

  -- Chimchar - Scratch - Level 1
  (390, 39000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimchar - Leer - Level 1
  (390, 39000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimchar - Ember - Level 7
  (390, 39000, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chimchar - Taunt - Level 9
  (390, 39000, 269, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chimchar - Fury Swipes - Level 15
  (390, 39000, 154, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chimchar - Flame Wheel - Level 17
  (390, 39000, 172, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chimchar - Nasty Plot - Level 23
  (390, 39000, 417, 16, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Chimchar - Torment - Level 25
  (390, 39000, 259, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Chimchar - Facade - Level 31
  (390, 39000, 263, 16, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Chimchar - Fire Spin - Level 33
  (390, 39000, 83, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Chimchar - Acrobatics - Level 39
  (390, 39000, 512, 16, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Chimchar - Slack Off - Level 41
  (390, 39000, 303, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Chimchar - Flamethrower - Level 47
  (390, 39000, 53, 16, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Chimchar - Work Up - TM01
  (390, 39000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Chimchar - Toxic - TM06
  (390, 39000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Chimchar - Bulk Up - TM08
  (390, 39000, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 16),
  -- Chimchar - Hidden Power - TM10
  (390, 39000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Chimchar - Sunny Day - TM11
  (390, 39000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Chimchar - Taunt - TM12
  (390, 39000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Chimchar - Protect - TM17
  (390, 39000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Chimchar - Frustration - TM21
  (390, 39000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Chimchar - Return - TM27
  (390, 39000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Chimchar - Brick Break - TM31
  (390, 39000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 23),
  -- Chimchar - Double Team - TM32
  (390, 39000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Chimchar - Flamethrower - TM35
  (390, 39000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 25),
  -- Chimchar - Fire Blast - TM38
  (390, 39000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 26),
  -- Chimchar - Aerial Ace - TM40
  (390, 39000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Chimchar - Torment - TM41
  (390, 39000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 28),
  -- Chimchar - Facade - TM42
  (390, 39000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Chimchar - Flame Charge - TM43
  (390, 39000, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 30),
  -- Chimchar - Rest - TM44
  (390, 39000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Chimchar - Attract - TM45
  (390, 39000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Chimchar - Low Sweep - TM47
  (390, 39000, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 33),
  -- Chimchar - Round - TM48
  (390, 39000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Chimchar - Overheat - TM50
  (390, 39000, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 35),
  -- Chimchar - Fling - TM56
  (390, 39000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Chimchar - Will-O-Wisp - TM61
  (390, 39000, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 37),
  -- Chimchar - Acrobatics - TM62
  (390, 39000, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 38),
  -- Chimchar - Shadow Claw - TM65
  (390, 39000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Chimchar - Swords Dance - TM75
  (390, 39000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 40),
  -- Chimchar - Grass Knot - TM86
  (390, 39000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 41),
  -- Chimchar - Swagger - TM87
  (390, 39000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Chimchar - Sleep Talk - TM88
  (390, 39000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Chimchar - U-turn - TM89
  (390, 39000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 44),
  -- Chimchar - Substitute - TM90
  (390, 39000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Chimchar - Confide - TM100
  (390, 39000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Chimchar - Fire Punch - Egg
  (390, 39000, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chimchar - Thunder Punch - Egg
  (390, 39000, 9, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chimchar - Double Kick - Egg
  (390, 39000, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chimchar - Submission - Egg
  (390, 39000, 66, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chimchar - Counter - Egg
  (390, 39000, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chimchar - Focus Energy - Egg
  (390, 39000, 116, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chimchar - Encore - Egg
  (390, 39000, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimchar - Fake Out - Egg
  (390, 39000, 252, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimchar - Heat Wave - Egg
  (390, 39000, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimchar - Focus Punch - Egg
  (390, 39000, 264, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimchar - Helping Hand - Egg
  (390, 39000, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimchar - Assist - Egg
  (390, 39000, 274, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimchar - Blaze Kick - Egg
  (390, 39000, 299, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimchar - Quick Guard - Egg
  (390, 39000, 501, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimchar - Power-Up Punch - Egg
  (390, 39000, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimchar - Fire Punch - Tutor
  (390, 39000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Chimchar - Thunder Punch - Tutor
  (390, 39000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Chimchar - Low Kick - Tutor
  (390, 39000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Chimchar - Snore - Tutor
  (390, 39000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Chimchar - Iron Tail - Tutor
  (390, 39000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Chimchar - Uproar - Tutor
  (390, 39000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Chimchar - Heat Wave - Tutor
  (390, 39000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Chimchar - Focus Punch - Tutor
  (390, 39000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Chimchar - Helping Hand - Tutor
  (390, 39000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Chimchar - Role Play - Tutor
  (390, 39000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Chimchar - Endeavor - Tutor
  (390, 39000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Chimchar - Covet - Tutor
  (390, 39000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Chimchar - Gunk Shot - Tutor
  (390, 39000, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Chimchar - Stealth Rock - Tutor
  (390, 39000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Chimchar - Fire Pledge - Tutor
  (390, 39000, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Monferno - Scratch - Level 1
  (391, 39100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Monferno - Leer - Level 1
  (391, 39100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Monferno - Ember - Level 1
  (391, 39100, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Monferno - Mach Punch - Level 1
  (391, 39100, 183, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Monferno - Ember - Level 7
  (391, 39100, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Monferno - Taunt - Level 9
  (391, 39100, 269, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Monferno - Fury Swipes - Level 16
  (391, 39100, 154, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Monferno - Flame Wheel - Level 19
  (391, 39100, 172, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Monferno - Feint - Level 26
  (391, 39100, 364, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Monferno - Torment - Level 29
  (391, 39100, 259, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Monferno - Close Combat - Level 36
  (391, 39100, 370, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Monferno - Fire Spin - Level 39
  (391, 39100, 83, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Monferno - Acrobatics - Level 46
  (391, 39100, 512, 16, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Monferno - Slack Off - Level 49
  (391, 39100, 303, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Monferno - Flare Blitz - Level 56
  (391, 39100, 394, 16, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Monferno - Work Up - TM01
  (391, 39100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Monferno - Toxic - TM06
  (391, 39100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Monferno - Bulk Up - TM08
  (391, 39100, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 18),
  -- Monferno - Hidden Power - TM10
  (391, 39100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Monferno - Sunny Day - TM11
  (391, 39100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Monferno - Taunt - TM12
  (391, 39100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Monferno - Protect - TM17
  (391, 39100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Monferno - Frustration - TM21
  (391, 39100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Monferno - Return - TM27
  (391, 39100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Monferno - Brick Break - TM31
  (391, 39100, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 25),
  -- Monferno - Double Team - TM32
  (391, 39100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Monferno - Flamethrower - TM35
  (391, 39100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 27),
  -- Monferno - Fire Blast - TM38
  (391, 39100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 28),
  -- Monferno - Rock Tomb - TM39
  (391, 39100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Monferno - Aerial Ace - TM40
  (391, 39100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Monferno - Torment - TM41
  (391, 39100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Monferno - Facade - TM42
  (391, 39100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Monferno - Flame Charge - TM43
  (391, 39100, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 33),
  -- Monferno - Rest - TM44
  (391, 39100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Monferno - Attract - TM45
  (391, 39100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Monferno - Low Sweep - TM47
  (391, 39100, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 36),
  -- Monferno - Round - TM48
  (391, 39100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Monferno - Overheat - TM50
  (391, 39100, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 38),
  -- Monferno - Focus Blast - TM52
  (391, 39100, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 39),
  -- Monferno - Fling - TM56
  (391, 39100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 40),
  -- Monferno - Will-O-Wisp - TM61
  (391, 39100, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 41),
  -- Monferno - Acrobatics - TM62
  (391, 39100, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 42),
  -- Monferno - Shadow Claw - TM65
  (391, 39100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 43),
  -- Monferno - Swords Dance - TM75
  (391, 39100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 44),
  -- Monferno - Rock Slide - TM80
  (391, 39100, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Monferno - Poison Jab - TM84
  (391, 39100, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 46),
  -- Monferno - Grass Knot - TM86
  (391, 39100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Monferno - Swagger - TM87
  (391, 39100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Monferno - Sleep Talk - TM88
  (391, 39100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Monferno - U-turn - TM89
  (391, 39100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 50),
  -- Monferno - Substitute - TM90
  (391, 39100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Monferno - Confide - TM100
  (391, 39100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Monferno - Fire Punch - Tutor
  (391, 39100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Monferno - Thunder Punch - Tutor
  (391, 39100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Monferno - Low Kick - Tutor
  (391, 39100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Monferno - Snore - Tutor
  (391, 39100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Monferno - Iron Tail - Tutor
  (391, 39100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Monferno - Heat Wave - Tutor
  (391, 39100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Monferno - Focus Punch - Tutor
  (391, 39100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Monferno - Helping Hand - Tutor
  (391, 39100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Monferno - Role Play - Tutor
  (391, 39100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Monferno - Endeavor - Tutor
  (391, 39100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Monferno - Covet - Tutor
  (391, 39100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Monferno - Gunk Shot - Tutor
  (391, 39100, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Monferno - Stealth Rock - Tutor
  (391, 39100, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Monferno - Fire Pledge - Tutor
  (391, 39100, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Monferno - Dual Chop - Tutor
  (391, 39100, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Monferno - Mach Punch - Evolution
  (391, 39100, 183, 16, NULL, 7, NULL, NULL, NULL, NULL, 68),

  -- Infernape - Scratch - Level 1
  (392, 39200, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Infernape - Leer - Level 1
  (392, 39200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Infernape - Ember - Level 1
  (392, 39200, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Infernape - Mach Punch - Level 1
  (392, 39200, 183, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Infernape - Taunt - Level 1
  (392, 39200, 269, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Infernape - Close Combat - Level 1
  (392, 39200, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Infernape - Flare Blitz - Level 1
  (392, 39200, 394, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Infernape - Ember - Level 7
  (392, 39200, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Infernape - Taunt - Level 9
  (392, 39200, 269, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Infernape - Fury Swipes - Level 16
  (392, 39200, 154, 16, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Infernape - Flame Wheel - Level 19
  (392, 39200, 172, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Infernape - Feint - Level 26
  (392, 39200, 364, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Infernape - Punishment - Level 29
  (392, 39200, 386, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Infernape - Fire Spin - Level 42
  (392, 39200, 83, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Infernape - Acrobatics - Level 52
  (392, 39200, 512, 16, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Infernape - Calm Mind - Level 58
  (392, 39200, 347, 16, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Infernape - Flare Blitz - Level 68
  (392, 39200, 394, 16, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Infernape - Work Up - TM01
  (392, 39200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Infernape - Calm Mind - TM04
  (392, 39200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Infernape - Roar - TM05
  (392, 39200, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 20),
  -- Infernape - Toxic - TM06
  (392, 39200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Infernape - Bulk Up - TM08
  (392, 39200, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 22),
  -- Infernape - Hidden Power - TM10
  (392, 39200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Infernape - Sunny Day - TM11
  (392, 39200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Infernape - Taunt - TM12
  (392, 39200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Infernape - Hyper Beam - TM15
  (392, 39200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Infernape - Protect - TM17
  (392, 39200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Infernape - Frustration - TM21
  (392, 39200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Infernape - Solar Beam - TM22
  (392, 39200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Infernape - Earthquake - TM26
  (392, 39200, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Infernape - Return - TM27
  (392, 39200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Infernape - Brick Break - TM31
  (392, 39200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Infernape - Double Team - TM32
  (392, 39200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Infernape - Flamethrower - TM35
  (392, 39200, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 34),
  -- Infernape - Fire Blast - TM38
  (392, 39200, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 35),
  -- Infernape - Rock Tomb - TM39
  (392, 39200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 36),
  -- Infernape - Aerial Ace - TM40
  (392, 39200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 37),
  -- Infernape - Torment - TM41
  (392, 39200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 38),
  -- Infernape - Facade - TM42
  (392, 39200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Infernape - Flame Charge - TM43
  (392, 39200, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 40),
  -- Infernape - Rest - TM44
  (392, 39200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Infernape - Attract - TM45
  (392, 39200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 42),
  -- Infernape - Low Sweep - TM47
  (392, 39200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 43),
  -- Infernape - Round - TM48
  (392, 39200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 44),
  -- Infernape - Overheat - TM50
  (392, 39200, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 45),
  -- Infernape - Focus Blast - TM52
  (392, 39200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 46),
  -- Infernape - Fling - TM56
  (392, 39200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 47),
  -- Infernape - Will-O-Wisp - TM61
  (392, 39200, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 48),
  -- Infernape - Acrobatics - TM62
  (392, 39200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 49),
  -- Infernape - Shadow Claw - TM65
  (392, 39200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 50),
  -- Infernape - Giga Impact - TM68
  (392, 39200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 51),
  -- Infernape - Stone Edge - TM71
  (392, 39200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 52),
  -- Infernape - Swords Dance - TM75
  (392, 39200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 53),
  -- Infernape - Bulldoze - TM78
  (392, 39200, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 54),
  -- Infernape - Rock Slide - TM80
  (392, 39200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 55),
  -- Infernape - Poison Jab - TM84
  (392, 39200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 56),
  -- Infernape - Grass Knot - TM86
  (392, 39200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 57),
  -- Infernape - Swagger - TM87
  (392, 39200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 58),
  -- Infernape - Sleep Talk - TM88
  (392, 39200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 59),
  -- Infernape - U-turn - TM89
  (392, 39200, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 60),
  -- Infernape - Substitute - TM90
  (392, 39200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 61),
  -- Infernape - Confide - TM100
  (392, 39200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 62),
  -- Infernape - Fire Punch - Tutor
  (392, 39200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Infernape - Thunder Punch - Tutor
  (392, 39200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Infernape - Low Kick - Tutor
  (392, 39200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Infernape - Snore - Tutor
  (392, 39200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Infernape - Iron Tail - Tutor
  (392, 39200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Infernape - Heat Wave - Tutor
  (392, 39200, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Infernape - Focus Punch - Tutor
  (392, 39200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Infernape - Helping Hand - Tutor
  (392, 39200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Infernape - Role Play - Tutor
  (392, 39200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Infernape - Endeavor - Tutor
  (392, 39200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Infernape - Blast Burn - Tutor
  (392, 39200, 307, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Infernape - Covet - Tutor
  (392, 39200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Infernape - Gunk Shot - Tutor
  (392, 39200, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Infernape - Stealth Rock - Tutor
  (392, 39200, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Infernape - Fire Pledge - Tutor
  (392, 39200, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Infernape - Dual Chop - Tutor
  (392, 39200, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Infernape - Laser Focus - Tutor
  (392, 39200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Infernape - Close Combat - Evolution
  (392, 39200, 370, 16, NULL, 7, NULL, NULL, NULL, NULL, 80),

  -- Piplup - Pound - Level 1
  (393, 39300, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piplup - Growl - Level 4
  (393, 39300, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Piplup - Bubble - Level 8
  (393, 39300, 145, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Piplup - Water Sport - Level 11
  (393, 39300, 346, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Piplup - Peck - Level 15
  (393, 39300, 64, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Piplup - Bubble Beam - Level 18
  (393, 39300, 61, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Piplup - Bide - Level 22
  (393, 39300, 117, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Piplup - Fury Attack - Level 25
  (393, 39300, 31, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Piplup - Brine - Level 29
  (393, 39300, 362, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Piplup - Whirlpool - Level 32
  (393, 39300, 250, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Piplup - Mist - Level 36
  (393, 39300, 54, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Piplup - Drill Peck - Level 39
  (393, 39300, 65, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Piplup - Hydro Pump - Level 43
  (393, 39300, 56, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Piplup - Work Up - TM01
  (393, 39300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Piplup - Toxic - TM06
  (393, 39300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Piplup - Hail - TM07
  (393, 39300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Piplup - Hidden Power - TM10
  (393, 39300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Piplup - Ice Beam - TM13
  (393, 39300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 18),
  -- Piplup - Blizzard - TM14
  (393, 39300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 19),
  -- Piplup - Protect - TM17
  (393, 39300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Piplup - Rain Dance - TM18
  (393, 39300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Piplup - Frustration - TM21
  (393, 39300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Piplup - Return - TM27
  (393, 39300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Piplup - Brick Break - TM31
  (393, 39300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 24),
  -- Piplup - Double Team - TM32
  (393, 39300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Piplup - Rock Tomb - TM39
  (393, 39300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Piplup - Aerial Ace - TM40
  (393, 39300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Piplup - Facade - TM42
  (393, 39300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Piplup - Rest - TM44
  (393, 39300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Piplup - Attract - TM45
  (393, 39300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Piplup - Round - TM48
  (393, 39300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Piplup - Echoed Voice - TM49
  (393, 39300, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Piplup - Scald - TM55
  (393, 39300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Piplup - Fling - TM56
  (393, 39300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 34),
  -- Piplup - Quash - TM60
  (393, 39300, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 35),
  -- Piplup - Grass Knot - TM86
  (393, 39300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 36),
  -- Piplup - Swagger - TM87
  (393, 39300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Piplup - Sleep Talk - TM88
  (393, 39300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Piplup - Substitute - TM90
  (393, 39300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Piplup - Surf - TM94
  (393, 39300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 40),
  -- Piplup - Waterfall - TM98
  (393, 39300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 41),
  -- Piplup - Confide - TM100
  (393, 39300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Piplup - Supersonic - Egg
  (393, 39300, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Piplup - Hydro Pump - Egg
  (393, 39300, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Piplup - Agility - Egg
  (393, 39300, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Piplup - Bide - Egg
  (393, 39300, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Piplup - Snore - Egg
  (393, 39300, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Piplup - Flail - Egg
  (393, 39300, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Piplup - Mud-Slap - Egg
  (393, 39300, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piplup - Icy Wind - Egg
  (393, 39300, 196, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Piplup - Yawn - Egg
  (393, 39300, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piplup - Feather Dance - Egg
  (393, 39300, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piplup - Mud Sport - Egg
  (393, 39300, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Piplup - Aqua Ring - Egg
  (393, 39300, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Piplup - Double Hit - Egg
  (393, 39300, 458, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Piplup - Power Trip - Egg
  (393, 39300, 681, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Piplup - Snore - Tutor
  (393, 39300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Piplup - Icy Wind - Tutor
  (393, 39300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Piplup - Signal Beam - Tutor
  (393, 39300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Piplup - Covet - Tutor
  (393, 39300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Piplup - Water Pulse - Tutor
  (393, 39300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Piplup - Defog - Tutor
  (393, 39300, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Piplup - Stealth Rock - Tutor
  (393, 39300, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Piplup - Water Pledge - Tutor
  (393, 39300, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),

  -- Prinplup - Tackle - Level 1
  (394, 39400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Prinplup - Growl - Level 1
  (394, 39400, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Prinplup - Bubble - Level 1
  (394, 39400, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Prinplup - Metal Claw - Level 1
  (394, 39400, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Prinplup - Growl - Level 4
  (394, 39400, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Prinplup - Bubble - Level 8
  (394, 39400, 145, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Prinplup - Water Sport - Level 11
  (394, 39400, 346, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Prinplup - Peck - Level 15
  (394, 39400, 64, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Prinplup - Bubble Beam - Level 19
  (394, 39400, 61, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Prinplup - Bide - Level 24
  (394, 39400, 117, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Prinplup - Fury Attack - Level 28
  (394, 39400, 31, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Prinplup - Brine - Level 33
  (394, 39400, 362, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Prinplup - Whirlpool - Level 37
  (394, 39400, 250, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Prinplup - Mist - Level 42
  (394, 39400, 54, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Prinplup - Drill Peck - Level 46
  (394, 39400, 65, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Prinplup - Hydro Pump - Level 50
  (394, 39400, 56, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Prinplup - Work Up - TM01
  (394, 39400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Prinplup - Toxic - TM06
  (394, 39400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Prinplup - Hail - TM07
  (394, 39400, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Prinplup - Hidden Power - TM10
  (394, 39400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Prinplup - Ice Beam - TM13
  (394, 39400, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Prinplup - Blizzard - TM14
  (394, 39400, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Prinplup - Protect - TM17
  (394, 39400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Prinplup - Rain Dance - TM18
  (394, 39400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Prinplup - Frustration - TM21
  (394, 39400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Prinplup - Return - TM27
  (394, 39400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Prinplup - Brick Break - TM31
  (394, 39400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Prinplup - Double Team - TM32
  (394, 39400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Prinplup - Rock Tomb - TM39
  (394, 39400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Prinplup - Aerial Ace - TM40
  (394, 39400, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Prinplup - Facade - TM42
  (394, 39400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Prinplup - Rest - TM44
  (394, 39400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Prinplup - Attract - TM45
  (394, 39400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Prinplup - Round - TM48
  (394, 39400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Prinplup - Echoed Voice - TM49
  (394, 39400, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Prinplup - Scald - TM55
  (394, 39400, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 36),
  -- Prinplup - Fling - TM56
  (394, 39400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Prinplup - Quash - TM60
  (394, 39400, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 38),
  -- Prinplup - Shadow Claw - TM65
  (394, 39400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 39),
  -- Prinplup - Grass Knot - TM86
  (394, 39400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 40),
  -- Prinplup - Swagger - TM87
  (394, 39400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Prinplup - Sleep Talk - TM88
  (394, 39400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Prinplup - Substitute - TM90
  (394, 39400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Prinplup - Surf - TM94
  (394, 39400, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 44),
  -- Prinplup - Waterfall - TM98
  (394, 39400, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 45),
  -- Prinplup - Confide - TM100
  (394, 39400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Prinplup - Snore - Tutor
  (394, 39400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Prinplup - Icy Wind - Tutor
  (394, 39400, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Prinplup - Signal Beam - Tutor
  (394, 39400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Prinplup - Covet - Tutor
  (394, 39400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Prinplup - Water Pulse - Tutor
  (394, 39400, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Prinplup - Defog - Tutor
  (394, 39400, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Prinplup - Stealth Rock - Tutor
  (394, 39400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Prinplup - Water Pledge - Tutor
  (394, 39400, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Prinplup - Metal Claw - Evolution
  (394, 39400, 232, 16, NULL, 7, NULL, NULL, NULL, NULL, 55),

  -- Empoleon - Tackle - Level 1
  (395, 39500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Empoleon - Growl - Level 1
  (395, 39500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Empoleon - Bubble - Level 1
  (395, 39500, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Empoleon - Metal Claw - Level 1
  (395, 39500, 232, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Empoleon - Aqua Jet - Level 1
  (395, 39500, 453, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Empoleon - Growl - Level 4
  (395, 39500, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Empoleon - Bubble - Level 8
  (395, 39500, 145, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Empoleon - Swords Dance - Level 11
  (395, 39500, 14, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Empoleon - Peck - Level 15
  (395, 39500, 64, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Empoleon - Bubble Beam - Level 19
  (395, 39500, 61, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Empoleon - Swagger - Level 24
  (395, 39500, 207, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Empoleon - Fury Attack - Level 28
  (395, 39500, 31, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Empoleon - Brine - Level 33
  (395, 39500, 362, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Empoleon - Whirlpool - Level 39
  (395, 39500, 250, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Empoleon - Mist - Level 46
  (395, 39500, 54, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Empoleon - Drill Peck - Level 52
  (395, 39500, 65, 16, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Empoleon - Hydro Pump - Level 59
  (395, 39500, 56, 16, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Empoleon - Work Up - TM01
  (395, 39500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Empoleon - Roar - TM05
  (395, 39500, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 19),
  -- Empoleon - Toxic - TM06
  (395, 39500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Empoleon - Hail - TM07
  (395, 39500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Empoleon - Hidden Power - TM10
  (395, 39500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Empoleon - Ice Beam - TM13
  (395, 39500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Empoleon - Blizzard - TM14
  (395, 39500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Empoleon - Hyper Beam - TM15
  (395, 39500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Empoleon - Protect - TM17
  (395, 39500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Empoleon - Rain Dance - TM18
  (395, 39500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Empoleon - Frustration - TM21
  (395, 39500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Empoleon - Earthquake - TM26
  (395, 39500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 29),
  -- Empoleon - Return - TM27
  (395, 39500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Empoleon - Brick Break - TM31
  (395, 39500, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 31),
  -- Empoleon - Double Team - TM32
  (395, 39500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Empoleon - Rock Tomb - TM39
  (395, 39500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Empoleon - Aerial Ace - TM40
  (395, 39500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Empoleon - Facade - TM42
  (395, 39500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Empoleon - Rest - TM44
  (395, 39500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Empoleon - Attract - TM45
  (395, 39500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Empoleon - Round - TM48
  (395, 39500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Empoleon - Echoed Voice - TM49
  (395, 39500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Empoleon - Steel Wing - TM51
  (395, 39500, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 40),
  -- Empoleon - Scald - TM55
  (395, 39500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 41),
  -- Empoleon - Fling - TM56
  (395, 39500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 42),
  -- Empoleon - Quash - TM60
  (395, 39500, 511, 16, NULL, 2, NULL, NULL, 16002060, NULL, 43),
  -- Empoleon - Shadow Claw - TM65
  (395, 39500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 44),
  -- Empoleon - Giga Impact - TM68
  (395, 39500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 45),
  -- Empoleon - Swords Dance - TM75
  (395, 39500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Empoleon - Bulldoze - TM78
  (395, 39500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 47),
  -- Empoleon - Rock Slide - TM80
  (395, 39500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 48),
  -- Empoleon - Grass Knot - TM86
  (395, 39500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 49),
  -- Empoleon - Swagger - TM87
  (395, 39500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Empoleon - Sleep Talk - TM88
  (395, 39500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Empoleon - Substitute - TM90
  (395, 39500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Empoleon - Flash Cannon - TM91
  (395, 39500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 53),
  -- Empoleon - Surf - TM94
  (395, 39500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 54),
  -- Empoleon - Waterfall - TM98
  (395, 39500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 55),
  -- Empoleon - Confide - TM100
  (395, 39500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Empoleon - Snore - Tutor
  (395, 39500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Empoleon - Icy Wind - Tutor
  (395, 39500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Empoleon - Knock Off - Tutor
  (395, 39500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Empoleon - Hydro Cannon - Tutor
  (395, 39500, 308, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Empoleon - Signal Beam - Tutor
  (395, 39500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Empoleon - Iron Defense - Tutor
  (395, 39500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Empoleon - Covet - Tutor
  (395, 39500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Empoleon - Water Pulse - Tutor
  (395, 39500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Empoleon - Defog - Tutor
  (395, 39500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Empoleon - Stealth Rock - Tutor
  (395, 39500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Empoleon - Water Pledge - Tutor
  (395, 39500, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Empoleon - Laser Focus - Tutor
  (395, 39500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Empoleon - Throat Chop - Tutor
  (395, 39500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Empoleon - Liquidation - Tutor
  (395, 39500, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Empoleon - Aqua Jet - Evolution
  (395, 39500, 453, 16, NULL, 7, NULL, NULL, NULL, NULL, 71),

  -- Starly - Tackle - Level 1
  (396, 39600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starly - Growl - Level 1
  (396, 39600, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starly - Quick Attack - Level 5
  (396, 39600, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Starly - Wing Attack - Level 9
  (396, 39600, 17, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Starly - Double Team - Level 13
  (396, 39600, 104, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Starly - Endeavor - Level 17
  (396, 39600, 283, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Starly - Whirlwind - Level 21
  (396, 39600, 18, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Starly - Aerial Ace - Level 25
  (396, 39600, 332, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Starly - Take Down - Level 29
  (396, 39600, 36, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Starly - Agility - Level 33
  (396, 39600, 97, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Starly - Brave Bird - Level 37
  (396, 39600, 413, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Starly - Final Gambit - Level 41
  (396, 39600, 515, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Starly - Work Up - TM01
  (396, 39600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 13),
  -- Starly - Toxic - TM06
  (396, 39600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Starly - Hidden Power - TM10
  (396, 39600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Starly - Sunny Day - TM11
  (396, 39600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 16),
  -- Starly - Protect - TM17
  (396, 39600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Starly - Rain Dance - TM18
  (396, 39600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Starly - Roost - TM19
  (396, 39600, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 19),
  -- Starly - Frustration - TM21
  (396, 39600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Starly - Return - TM27
  (396, 39600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Starly - Double Team - TM32
  (396, 39600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Starly - Aerial Ace - TM40
  (396, 39600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 23),
  -- Starly - Facade - TM42
  (396, 39600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Starly - Rest - TM44
  (396, 39600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Starly - Attract - TM45
  (396, 39600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 26),
  -- Starly - Thief - TM46
  (396, 39600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 27),
  -- Starly - Round - TM48
  (396, 39600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Starly - Echoed Voice - TM49
  (396, 39600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 29),
  -- Starly - Steel Wing - TM51
  (396, 39600, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 30),
  -- Starly - Fly - TM76
  (396, 39600, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 31),
  -- Starly - Swagger - TM87
  (396, 39600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Starly - Sleep Talk - TM88
  (396, 39600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Starly - U-turn - TM89
  (396, 39600, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 34),
  -- Starly - Substitute - TM90
  (396, 39600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Starly - Confide - TM100
  (396, 39600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Starly - Sand Attack - Egg
  (396, 39600, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Starly - Fury Attack - Egg
  (396, 39600, 31, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Starly - Double-Edge - Egg
  (396, 39600, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Starly - Mirror Move - Egg
  (396, 39600, 119, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Starly - Foresight - Egg
  (396, 39600, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Starly - Detect - Egg
  (396, 39600, 197, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Starly - Steel Wing - Egg
  (396, 39600, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Starly - Pursuit - Egg
  (396, 39600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Starly - Uproar - Egg
  (396, 39600, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Starly - Revenge - Egg
  (396, 39600, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Starly - Feather Dance - Egg
  (396, 39600, 297, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Starly - Astonish - Egg
  (396, 39600, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Starly - Roost - Egg
  (396, 39600, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Starly - Snore - Tutor
  (396, 39600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Starly - Uproar - Tutor
  (396, 39600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Starly - Heat Wave - Tutor
  (396, 39600, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Starly - Endeavor - Tutor
  (396, 39600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Starly - Tailwind - Tutor
  (396, 39600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Starly - Defog - Tutor
  (396, 39600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Staravia - Tackle - Level 1
  (397, 39700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staravia - Growl - Level 1
  (397, 39700, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staravia - Quick Attack - Level 1
  (397, 39700, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staravia - Quick Attack - Level 5
  (397, 39700, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Staravia - Wing Attack - Level 9
  (397, 39700, 17, 16, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Staravia - Double Team - Level 13
  (397, 39700, 104, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Staravia - Endeavor - Level 18
  (397, 39700, 283, 16, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Staravia - Whirlwind - Level 23
  (397, 39700, 18, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Staravia - Aerial Ace - Level 28
  (397, 39700, 332, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Staravia - Take Down - Level 33
  (397, 39700, 36, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Staravia - Agility - Level 38
  (397, 39700, 97, 16, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Staravia - Brave Bird - Level 43
  (397, 39700, 413, 16, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Staravia - Final Gambit - Level 48
  (397, 39700, 515, 16, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Staravia - Work Up - TM01
  (397, 39700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 14),
  -- Staravia - Toxic - TM06
  (397, 39700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Staravia - Hidden Power - TM10
  (397, 39700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 16),
  -- Staravia - Sunny Day - TM11
  (397, 39700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 17),
  -- Staravia - Protect - TM17
  (397, 39700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Staravia - Rain Dance - TM18
  (397, 39700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Staravia - Roost - TM19
  (397, 39700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 20),
  -- Staravia - Frustration - TM21
  (397, 39700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Staravia - Return - TM27
  (397, 39700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Staravia - Double Team - TM32
  (397, 39700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Staravia - Aerial Ace - TM40
  (397, 39700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 24),
  -- Staravia - Facade - TM42
  (397, 39700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Staravia - Rest - TM44
  (397, 39700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Staravia - Attract - TM45
  (397, 39700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Staravia - Thief - TM46
  (397, 39700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 28),
  -- Staravia - Round - TM48
  (397, 39700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Staravia - Echoed Voice - TM49
  (397, 39700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 30),
  -- Staravia - Steel Wing - TM51
  (397, 39700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 31),
  -- Staravia - Fly - TM76
  (397, 39700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 32),
  -- Staravia - Swagger - TM87
  (397, 39700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Staravia - Sleep Talk - TM88
  (397, 39700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Staravia - U-turn - TM89
  (397, 39700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 35),
  -- Staravia - Substitute - TM90
  (397, 39700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Staravia - Confide - TM100
  (397, 39700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Staravia - Snore - Tutor
  (397, 39700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Staravia - Uproar - Tutor
  (397, 39700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Staravia - Heat Wave - Tutor
  (397, 39700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Staravia - Endeavor - Tutor
  (397, 39700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Staravia - Tailwind - Tutor
  (397, 39700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Staravia - Defog - Tutor
  (397, 39700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),

  -- Staraptor - Wing Attack - Level 1
  (398, 39800, 17, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staraptor - Tackle - Level 1
  (398, 39800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staraptor - Growl - Level 1
  (398, 39800, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staraptor - Quick Attack - Level 1
  (398, 39800, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Staraptor - Close Combat - Level 1
  (398, 39800, 370, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Staraptor - Quick Attack - Level 5
  (398, 39800, 98, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Staraptor - Wing Attack - Level 9
  (398, 39800, 17, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Staraptor - Double Team - Level 13
  (398, 39800, 104, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Staraptor - Endeavor - Level 18
  (398, 39800, 283, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Staraptor - Whirlwind - Level 23
  (398, 39800, 18, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Staraptor - Aerial Ace - Level 28
  (398, 39800, 332, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Staraptor - Take Down - Level 33
  (398, 39800, 36, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Staraptor - Agility - Level 41
  (398, 39800, 97, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Staraptor - Brave Bird - Level 49
  (398, 39800, 413, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Staraptor - Final Gambit - Level 57
  (398, 39800, 515, 16, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Staraptor - Work Up - TM01
  (398, 39800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Staraptor - Toxic - TM06
  (398, 39800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Staraptor - Hidden Power - TM10
  (398, 39800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Staraptor - Sunny Day - TM11
  (398, 39800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Staraptor - Hyper Beam - TM15
  (398, 39800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Staraptor - Protect - TM17
  (398, 39800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Staraptor - Rain Dance - TM18
  (398, 39800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Staraptor - Roost - TM19
  (398, 39800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Staraptor - Frustration - TM21
  (398, 39800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Staraptor - Return - TM27
  (398, 39800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Staraptor - Double Team - TM32
  (398, 39800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Staraptor - Aerial Ace - TM40
  (398, 39800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Staraptor - Facade - TM42
  (398, 39800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Staraptor - Rest - TM44
  (398, 39800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Staraptor - Attract - TM45
  (398, 39800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Staraptor - Thief - TM46
  (398, 39800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 31),
  -- Staraptor - Round - TM48
  (398, 39800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Staraptor - Echoed Voice - TM49
  (398, 39800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 33),
  -- Staraptor - Steel Wing - TM51
  (398, 39800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 34),
  -- Staraptor - Giga Impact - TM68
  (398, 39800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Staraptor - Fly - TM76
  (398, 39800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 36),
  -- Staraptor - Swagger - TM87
  (398, 39800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Staraptor - Sleep Talk - TM88
  (398, 39800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Staraptor - U-turn - TM89
  (398, 39800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 39),
  -- Staraptor - Substitute - TM90
  (398, 39800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Staraptor - Confide - TM100
  (398, 39800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Staraptor - Sky Attack - Tutor
  (398, 39800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Staraptor - Snore - Tutor
  (398, 39800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Staraptor - Uproar - Tutor
  (398, 39800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Staraptor - Heat Wave - Tutor
  (398, 39800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Staraptor - Endeavor - Tutor
  (398, 39800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Staraptor - Tailwind - Tutor
  (398, 39800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Staraptor - Defog - Tutor
  (398, 39800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Staraptor - Laser Focus - Tutor
  (398, 39800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Staraptor - Close Combat - Evolution
  (398, 39800, 370, 16, NULL, 7, NULL, NULL, NULL, NULL, 50),

  -- Bidoof - Tackle - Level 1
  (399, 39900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bidoof - Growl - Level 1
  (399, 39900, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bidoof - Defense Curl - Level 5
  (399, 39900, 111, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bidoof - Rollout - Level 9
  (399, 39900, 205, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bidoof - Headbutt - Level 13
  (399, 39900, 29, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bidoof - Hyper Fang - Level 17
  (399, 39900, 158, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bidoof - Yawn - Level 21
  (399, 39900, 281, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Bidoof - Crunch - Level 25
  (399, 39900, 242, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bidoof - Take Down - Level 29
  (399, 39900, 36, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bidoof - Super Fang - Level 33
  (399, 39900, 162, 16, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Bidoof - Swords Dance - Level 37
  (399, 39900, 14, 16, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Bidoof - Amnesia - Level 41
  (399, 39900, 133, 16, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bidoof - Superpower - Level 45
  (399, 39900, 276, 16, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Bidoof - Curse - Level 49
  (399, 39900, 174, 16, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Bidoof - Work Up - TM01
  (399, 39900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 15),
  -- Bidoof - Toxic - TM06
  (399, 39900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Bidoof - Hidden Power - TM10
  (399, 39900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Bidoof - Sunny Day - TM11
  (399, 39900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 18),
  -- Bidoof - Taunt - TM12
  (399, 39900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Bidoof - Ice Beam - TM13
  (399, 39900, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 20),
  -- Bidoof - Blizzard - TM14
  (399, 39900, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 21),
  -- Bidoof - Protect - TM17
  (399, 39900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Bidoof - Rain Dance - TM18
  (399, 39900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Bidoof - Frustration - TM21
  (399, 39900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Bidoof - Thunderbolt - TM24
  (399, 39900, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Bidoof - Thunder - TM25
  (399, 39900, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 26),
  -- Bidoof - Return - TM27
  (399, 39900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Bidoof - Shadow Ball - TM30
  (399, 39900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Bidoof - Double Team - TM32
  (399, 39900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Bidoof - Facade - TM42
  (399, 39900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Bidoof - Rest - TM44
  (399, 39900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Bidoof - Attract - TM45
  (399, 39900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Bidoof - Thief - TM46
  (399, 39900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Bidoof - Round - TM48
  (399, 39900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Bidoof - Echoed Voice - TM49
  (399, 39900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Bidoof - Charge Beam - TM57
  (399, 39900, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 36),
  -- Bidoof - Thunder Wave - TM73
  (399, 39900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Bidoof - Swords Dance - TM75
  (399, 39900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 38),
  -- Bidoof - Grass Knot - TM86
  (399, 39900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Bidoof - Swagger - TM87
  (399, 39900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Bidoof - Sleep Talk - TM88
  (399, 39900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Bidoof - Substitute - TM90
  (399, 39900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Bidoof - Confide - TM100
  (399, 39900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Bidoof - Double-Edge - Egg
  (399, 39900, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bidoof - Quick Attack - Egg
  (399, 39900, 98, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bidoof - Defense Curl - Egg
  (399, 39900, 111, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bidoof - Skull Bash - Egg
  (399, 39900, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bidoof - Fury Swipes - Egg
  (399, 39900, 154, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bidoof - Endure - Egg
  (399, 39900, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bidoof - Rollout - Egg
  (399, 39900, 205, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bidoof - Sleep Talk - Egg
  (399, 39900, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bidoof - Mud Sport - Egg
  (399, 39900, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bidoof - Odor Sleuth - Egg
  (399, 39900, 316, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bidoof - Water Sport - Egg
  (399, 39900, 346, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bidoof - Aqua Tail - Egg
  (399, 39900, 401, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bidoof - Rock Climb - Egg
  (399, 39900, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Bidoof - Super Fang - Tutor
  (399, 39900, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bidoof - Snore - Tutor
  (399, 39900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bidoof - Icy Wind - Tutor
  (399, 39900, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bidoof - Iron Tail - Tutor
  (399, 39900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bidoof - Superpower - Tutor
  (399, 39900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bidoof - Covet - Tutor
  (399, 39900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bidoof - Shock Wave - Tutor
  (399, 39900, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bidoof - Last Resort - Tutor
  (399, 39900, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Bidoof - Aqua Tail - Tutor
  (399, 39900, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Bidoof - Stealth Rock - Tutor
  (399, 39900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Bibarel - Tackle - Level 1
  (400, 40000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bibarel - Growl - Level 1
  (400, 40000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bibarel - Water Gun - Level 1
  (400, 40000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bibarel - Aqua Jet - Level 1
  (400, 40000, 453, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bibarel - Rototiller - Level 1
  (400, 40000, 563, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bibarel - Defense Curl - Level 5
  (400, 40000, 111, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Bibarel - Rollout - Level 9
  (400, 40000, 205, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Bibarel - Headbutt - Level 13
  (400, 40000, 29, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Bibarel - Hyper Fang - Level 18
  (400, 40000, 158, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Bibarel - Yawn - Level 23
  (400, 40000, 281, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Bibarel - Crunch - Level 28
  (400, 40000, 242, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Bibarel - Take Down - Level 33
  (400, 40000, 36, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Bibarel - Super Fang - Level 38
  (400, 40000, 162, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Bibarel - Swords Dance - Level 43
  (400, 40000, 14, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Bibarel - Amnesia - Level 48
  (400, 40000, 133, 16, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Bibarel - Superpower - Level 53
  (400, 40000, 276, 16, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Bibarel - Curse - Level 58
  (400, 40000, 174, 16, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Bibarel - Work Up - TM01
  (400, 40000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Bibarel - Toxic - TM06
  (400, 40000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Bibarel - Hidden Power - TM10
  (400, 40000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Bibarel - Sunny Day - TM11
  (400, 40000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Bibarel - Taunt - TM12
  (400, 40000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Bibarel - Ice Beam - TM13
  (400, 40000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Bibarel - Blizzard - TM14
  (400, 40000, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 24),
  -- Bibarel - Hyper Beam - TM15
  (400, 40000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Bibarel - Protect - TM17
  (400, 40000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Bibarel - Rain Dance - TM18
  (400, 40000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Bibarel - Frustration - TM21
  (400, 40000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Bibarel - Thunderbolt - TM24
  (400, 40000, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Bibarel - Thunder - TM25
  (400, 40000, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Bibarel - Return - TM27
  (400, 40000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Bibarel - Shadow Ball - TM30
  (400, 40000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Bibarel - Double Team - TM32
  (400, 40000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Bibarel - Facade - TM42
  (400, 40000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Bibarel - Rest - TM44
  (400, 40000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Bibarel - Attract - TM45
  (400, 40000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Bibarel - Thief - TM46
  (400, 40000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Bibarel - Round - TM48
  (400, 40000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Bibarel - Echoed Voice - TM49
  (400, 40000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Bibarel - Scald - TM55
  (400, 40000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 40),
  -- Bibarel - Fling - TM56
  (400, 40000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Bibarel - Charge Beam - TM57
  (400, 40000, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 42),
  -- Bibarel - Giga Impact - TM68
  (400, 40000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Bibarel - Thunder Wave - TM73
  (400, 40000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Bibarel - Swords Dance - TM75
  (400, 40000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 45),
  -- Bibarel - Bulldoze - TM78
  (400, 40000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Bibarel - Grass Knot - TM86
  (400, 40000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Bibarel - Swagger - TM87
  (400, 40000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Bibarel - Sleep Talk - TM88
  (400, 40000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Bibarel - Substitute - TM90
  (400, 40000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Bibarel - Surf - TM94
  (400, 40000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 51),
  -- Bibarel - Waterfall - TM98
  (400, 40000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 52),
  -- Bibarel - Confide - TM100
  (400, 40000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Bibarel - Super Fang - Tutor
  (400, 40000, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Bibarel - Snore - Tutor
  (400, 40000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Bibarel - Icy Wind - Tutor
  (400, 40000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Bibarel - Iron Tail - Tutor
  (400, 40000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Bibarel - Focus Punch - Tutor
  (400, 40000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Bibarel - Superpower - Tutor
  (400, 40000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Bibarel - Covet - Tutor
  (400, 40000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Bibarel - Shock Wave - Tutor
  (400, 40000, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Bibarel - Water Pulse - Tutor
  (400, 40000, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Bibarel - Last Resort - Tutor
  (400, 40000, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Bibarel - Aqua Tail - Tutor
  (400, 40000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Bibarel - Stealth Rock - Tutor
  (400, 40000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Bibarel - Stomping Tantrum - Tutor
  (400, 40000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Bibarel - Liquidation - Tutor
  (400, 40000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Bibarel - Water Gun - Evolution
  (400, 40000, 55, 16, NULL, 7, NULL, NULL, NULL, NULL, 68);
