-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 351-400.
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
  (351, 35100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Castform - Ember - Level 10
  (351, 35100, 52, 13, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Castform - Water Gun - Level 10
  (351, 35100, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Castform - Powder Snow - Level 10
  (351, 35100, 181, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Castform - Headbutt - Level 15
  (351, 35100, 29, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Castform - Rain Dance - Level 20
  (351, 35100, 240, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Castform - Sunny Day - Level 20
  (351, 35100, 241, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Castform - Hail - Level 20
  (351, 35100, 258, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Castform - Weather Ball - Level 30
  (351, 35100, 311, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Castform - Hydro Pump - Level 40
  (351, 35100, 56, 13, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Castform - Blizzard - Level 40
  (351, 35100, 59, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Castform - Fire Blast - Level 40
  (351, 35100, 126, 13, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Castform - Toxic - TM06
  (351, 35100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Castform - Hail - TM07
  (351, 35100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Castform - Hidden Power - TM10
  (351, 35100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Castform - Sunny Day - TM11
  (351, 35100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Castform - Ice Beam - TM13
  (351, 35100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Castform - Blizzard - TM14
  (351, 35100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Castform - Protect - TM17
  (351, 35100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Castform - Rain Dance - TM18
  (351, 35100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Castform - Frustration - TM21
  (351, 35100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Castform - Solar Beam - TM22
  (351, 35100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Castform - Thunderbolt - TM24
  (351, 35100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Castform - Thunder - TM25
  (351, 35100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 24),
  -- Castform - Return - TM27
  (351, 35100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Castform - Shadow Ball - TM30
  (351, 35100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Castform - Double Team - TM32
  (351, 35100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Castform - Flamethrower - TM35
  (351, 35100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Castform - Sandstorm - TM37
  (351, 35100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 29),
  -- Castform - Fire Blast - TM38
  (351, 35100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Castform - Facade - TM42
  (351, 35100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Castform - Rest - TM44
  (351, 35100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Castform - Attract - TM45
  (351, 35100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Castform - Thief - TM46
  (351, 35100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Castform - Round - TM48
  (351, 35100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Castform - Energy Ball - TM53
  (351, 35100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 36),
  -- Castform - Scald - TM55
  (351, 35100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 37),
  -- Castform - Incinerate - TM59
  (351, 35100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 38),
  -- Castform - Retaliate - TM67
  (351, 35100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Castform - Flash - TM70
  (351, 35100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Castform - Thunder Wave - TM73
  (351, 35100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 41),
  -- Castform - Psych Up - TM77
  (351, 35100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 42),
  -- Castform - Swagger - TM87
  (351, 35100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Castform - Sleep Talk - TM88
  (351, 35100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Castform - Substitute - TM90
  (351, 35100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Castform - Confide - TM100
  (351, 35100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Castform - Disable - Egg
  (351, 35100, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Castform - Amnesia - Egg
  (351, 35100, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Castform - Future Sight - Egg
  (351, 35100, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Castform - Cosmic Power - Egg
  (351, 35100, 322, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Castform - Lucky Chant - Egg
  (351, 35100, 381, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Castform - Guard Swap - Egg
  (351, 35100, 385, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Castform - Ominous Wind - Egg
  (351, 35100, 466, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Castform - Clear Smog - Egg
  (351, 35100, 499, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Castform - Hex - Egg
  (351, 35100, 506, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Castform - Reflect Type - Egg
  (351, 35100, 513, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kecleon - Scratch - Level 1
  (352, 35200, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kecleon - Tail Whip - Level 1
  (352, 35200, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kecleon - Lick - Level 1
  (352, 35200, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kecleon - Thief - Level 1
  (352, 35200, 168, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kecleon - Ancient Power - Level 1
  (352, 35200, 246, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kecleon - Astonish - Level 1
  (352, 35200, 310, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kecleon - Synchronoise - Level 1
  (352, 35200, 485, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Kecleon - Bind - Level 4
  (352, 35200, 20, 13, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Kecleon - Feint Attack - Level 7
  (352, 35200, 185, 13, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Kecleon - Fury Swipes - Level 10
  (352, 35200, 154, 13, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Kecleon - Feint - Level 14
  (352, 35200, 364, 13, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Kecleon - Psybeam - Level 18
  (352, 35200, 60, 13, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Kecleon - Shadow Sneak - Level 22
  (352, 35200, 425, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Kecleon - Slash - Level 27
  (352, 35200, 163, 13, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Kecleon - Screech - Level 32
  (352, 35200, 103, 13, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Kecleon - Substitute - Level 37
  (352, 35200, 164, 13, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Kecleon - Sucker Punch - Level 43
  (352, 35200, 389, 13, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Kecleon - Shadow Claw - Level 49
  (352, 35200, 421, 13, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Kecleon - Ancient Power - Level 55
  (352, 35200, 246, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Kecleon - Synchronoise - Level 58
  (352, 35200, 485, 13, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Kecleon - Hone Claws - TM01
  (352, 35200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 21),
  -- Kecleon - Toxic - TM06
  (352, 35200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Kecleon - Hidden Power - TM10
  (352, 35200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Kecleon - Sunny Day - TM11
  (352, 35200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Kecleon - Ice Beam - TM13
  (352, 35200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Kecleon - Blizzard - TM14
  (352, 35200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Kecleon - Protect - TM17
  (352, 35200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Kecleon - Rain Dance - TM18
  (352, 35200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Kecleon - Frustration - TM21
  (352, 35200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Kecleon - Solar Beam - TM22
  (352, 35200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Kecleon - Thunderbolt - TM24
  (352, 35200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Kecleon - Thunder - TM25
  (352, 35200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Kecleon - Return - TM27
  (352, 35200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Kecleon - Dig - TM28
  (352, 35200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Kecleon - Shadow Ball - TM30
  (352, 35200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 35),
  -- Kecleon - Brick Break - TM31
  (352, 35200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 36),
  -- Kecleon - Double Team - TM32
  (352, 35200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Kecleon - Flamethrower - TM35
  (352, 35200, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 38),
  -- Kecleon - Fire Blast - TM38
  (352, 35200, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 39),
  -- Kecleon - Rock Tomb - TM39
  (352, 35200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 40),
  -- Kecleon - Aerial Ace - TM40
  (352, 35200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 41),
  -- Kecleon - Facade - TM42
  (352, 35200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 42),
  -- Kecleon - Rest - TM44
  (352, 35200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 43),
  -- Kecleon - Attract - TM45
  (352, 35200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 44),
  -- Kecleon - Thief - TM46
  (352, 35200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 45),
  -- Kecleon - Round - TM48
  (352, 35200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 46),
  -- Kecleon - Fling - TM56
  (352, 35200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 47),
  -- Kecleon - Charge Beam - TM57
  (352, 35200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 48),
  -- Kecleon - Incinerate - TM59
  (352, 35200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 49),
  -- Kecleon - Shadow Claw - TM65
  (352, 35200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 50),
  -- Kecleon - Retaliate - TM67
  (352, 35200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 51),
  -- Kecleon - Flash - TM70
  (352, 35200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 52),
  -- Kecleon - Thunder Wave - TM73
  (352, 35200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 53),
  -- Kecleon - Psych Up - TM77
  (352, 35200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 54),
  -- Kecleon - Rock Slide - TM80
  (352, 35200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 55),
  -- Kecleon - Grass Knot - TM86
  (352, 35200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 56),
  -- Kecleon - Swagger - TM87
  (352, 35200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 57),
  -- Kecleon - Sleep Talk - TM88
  (352, 35200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 58),
  -- Kecleon - Substitute - TM90
  (352, 35200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 59),
  -- Kecleon - Trick Room - TM92
  (352, 35200, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 60),
  -- Kecleon - Rock Smash - TM94
  (352, 35200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 61),
  -- Kecleon - Power-Up Punch - TM98
  (352, 35200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 62),
  -- Kecleon - Confide - TM100
  (352, 35200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 63),
  -- Kecleon - Cut - HM01
  (352, 35200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 64),
  -- Kecleon - Strength - HM04
  (352, 35200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 65),
  -- Kecleon - Disable - Egg
  (352, 35200, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kecleon - Recover - Egg
  (352, 35200, 105, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kecleon - Dizzy Punch - Egg
  (352, 35200, 146, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kecleon - Fake Out - Egg
  (352, 35200, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kecleon - Trick - Egg
  (352, 35200, 271, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kecleon - Magic Coat - Egg
  (352, 35200, 277, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kecleon - Skill Swap - Egg
  (352, 35200, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kecleon - Snatch - Egg
  (352, 35200, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kecleon - Camouflage - Egg
  (352, 35200, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kecleon - Nasty Plot - Egg
  (352, 35200, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Kecleon - Foul Play - Egg
  (352, 35200, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Shuppet - Knock Off - Level 1
  (353, 35300, 282, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuppet - Screech - Level 4
  (353, 35300, 103, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shuppet - Night Shade - Level 7
  (353, 35300, 101, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Shuppet - Spite - Level 10
  (353, 35300, 180, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shuppet - Will-O-Wisp - Level 13
  (353, 35300, 261, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shuppet - Shadow Sneak - Level 16
  (353, 35300, 425, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shuppet - Curse - Level 19
  (353, 35300, 174, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Shuppet - Feint Attack - Level 22
  (353, 35300, 185, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Shuppet - Hex - Level 26
  (353, 35300, 506, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Shuppet - Shadow Ball - Level 30
  (353, 35300, 247, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Shuppet - Sucker Punch - Level 34
  (353, 35300, 389, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Shuppet - Embargo - Level 38
  (353, 35300, 373, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Shuppet - Snatch - Level 42
  (353, 35300, 289, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Shuppet - Grudge - Level 46
  (353, 35300, 288, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Shuppet - Trick - Level 50
  (353, 35300, 271, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Shuppet - Calm Mind - TM04
  (353, 35300, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Shuppet - Toxic - TM06
  (353, 35300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Shuppet - Hidden Power - TM10
  (353, 35300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Shuppet - Sunny Day - TM11
  (353, 35300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Shuppet - Taunt - TM12
  (353, 35300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Shuppet - Protect - TM17
  (353, 35300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Shuppet - Rain Dance - TM18
  (353, 35300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Shuppet - Frustration - TM21
  (353, 35300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Shuppet - Thunderbolt - TM24
  (353, 35300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Shuppet - Thunder - TM25
  (353, 35300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 25),
  -- Shuppet - Return - TM27
  (353, 35300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Shuppet - Psychic - TM29
  (353, 35300, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Shuppet - Shadow Ball - TM30
  (353, 35300, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Shuppet - Double Team - TM32
  (353, 35300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Shuppet - Torment - TM41
  (353, 35300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Shuppet - Facade - TM42
  (353, 35300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Shuppet - Rest - TM44
  (353, 35300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Shuppet - Attract - TM45
  (353, 35300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Shuppet - Thief - TM46
  (353, 35300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Shuppet - Round - TM48
  (353, 35300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Shuppet - Charge Beam - TM57
  (353, 35300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 36),
  -- Shuppet - Will-O-Wisp - TM61
  (353, 35300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 37),
  -- Shuppet - Embargo - TM63
  (353, 35300, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 38),
  -- Shuppet - Payback - TM66
  (353, 35300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Shuppet - Flash - TM70
  (353, 35300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Shuppet - Thunder Wave - TM73
  (353, 35300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 41),
  -- Shuppet - Psych Up - TM77
  (353, 35300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 42),
  -- Shuppet - Dream Eater - TM85
  (353, 35300, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 43),
  -- Shuppet - Swagger - TM87
  (353, 35300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Shuppet - Sleep Talk - TM88
  (353, 35300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Shuppet - Substitute - TM90
  (353, 35300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Shuppet - Trick Room - TM92
  (353, 35300, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 47),
  -- Shuppet - Dark Pulse - TM97
  (353, 35300, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Shuppet - Dazzling Gleam - TM99
  (353, 35300, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 49),
  -- Shuppet - Confide - TM100
  (353, 35300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Shuppet - Disable - Egg
  (353, 35300, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuppet - Confuse Ray - Egg
  (353, 35300, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuppet - Foresight - Egg
  (353, 35300, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuppet - Destiny Bond - Egg
  (353, 35300, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuppet - Pursuit - Egg
  (353, 35300, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shuppet - Imprison - Egg
  (353, 35300, 286, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shuppet - Astonish - Egg
  (353, 35300, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Shuppet - Shadow Sneak - Egg
  (353, 35300, 425, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shuppet - Gunk Shot - Egg
  (353, 35300, 441, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Shuppet - Ominous Wind - Egg
  (353, 35300, 466, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Shuppet - Phantom Force - Egg
  (353, 35300, 566, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Banette - Night Shade - Level 1
  (354, 35400, 101, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Banette - Screech - Level 1
  (354, 35400, 103, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Banette - Curse - Level 1
  (354, 35400, 174, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Banette - Knock Off - Level 1
  (354, 35400, 282, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Banette - Screech - Level 4
  (354, 35400, 103, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Banette - Night Shade - Level 7
  (354, 35400, 101, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Banette - Spite - Level 10
  (354, 35400, 180, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Banette - Will-O-Wisp - Level 13
  (354, 35400, 261, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Banette - Shadow Sneak - Level 16
  (354, 35400, 425, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Banette - Curse - Level 19
  (354, 35400, 174, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Banette - Feint Attack - Level 22
  (354, 35400, 185, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Banette - Hex - Level 26
  (354, 35400, 506, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Banette - Shadow Ball - Level 30
  (354, 35400, 247, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Banette - Sucker Punch - Level 34
  (354, 35400, 389, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Banette - Embargo - Level 40
  (354, 35400, 373, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Banette - Snatch - Level 46
  (354, 35400, 289, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Banette - Grudge - Level 52
  (354, 35400, 288, 13, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Banette - Trick - Level 58
  (354, 35400, 271, 13, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Banette - Calm Mind - TM04
  (354, 35400, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Banette - Toxic - TM06
  (354, 35400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Banette - Hidden Power - TM10
  (354, 35400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Banette - Sunny Day - TM11
  (354, 35400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Banette - Taunt - TM12
  (354, 35400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Banette - Hyper Beam - TM15
  (354, 35400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Banette - Protect - TM17
  (354, 35400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Banette - Rain Dance - TM18
  (354, 35400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Banette - Frustration - TM21
  (354, 35400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Banette - Thunderbolt - TM24
  (354, 35400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Banette - Thunder - TM25
  (354, 35400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Banette - Return - TM27
  (354, 35400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Banette - Psychic - TM29
  (354, 35400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Banette - Shadow Ball - TM30
  (354, 35400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Banette - Double Team - TM32
  (354, 35400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Banette - Torment - TM41
  (354, 35400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Banette - Facade - TM42
  (354, 35400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Banette - Rest - TM44
  (354, 35400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Banette - Attract - TM45
  (354, 35400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Banette - Thief - TM46
  (354, 35400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Banette - Round - TM48
  (354, 35400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Banette - Fling - TM56
  (354, 35400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Banette - Charge Beam - TM57
  (354, 35400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Banette - Will-O-Wisp - TM61
  (354, 35400, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 42),
  -- Banette - Embargo - TM63
  (354, 35400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 43),
  -- Banette - Shadow Claw - TM65
  (354, 35400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 44),
  -- Banette - Payback - TM66
  (354, 35400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Banette - Giga Impact - TM68
  (354, 35400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Banette - Flash - TM70
  (354, 35400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 47),
  -- Banette - Thunder Wave - TM73
  (354, 35400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 48),
  -- Banette - Psych Up - TM77
  (354, 35400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 49),
  -- Banette - Infestation - TM83
  (354, 35400, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 50),
  -- Banette - Dream Eater - TM85
  (354, 35400, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 51),
  -- Banette - Swagger - TM87
  (354, 35400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Banette - Sleep Talk - TM88
  (354, 35400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Banette - Substitute - TM90
  (354, 35400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Banette - Trick Room - TM92
  (354, 35400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 55),
  -- Banette - Dark Pulse - TM97
  (354, 35400, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 56),
  -- Banette - Dazzling Gleam - TM99
  (354, 35400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 57),
  -- Banette - Confide - TM100
  (354, 35400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Duskull - Leer - Level 1
  (355, 35500, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Night Shade - Level 1
  (355, 35500, 101, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 6
  (355, 35500, 50, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Duskull - Foresight - Level 9
  (355, 35500, 193, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Duskull - Astonish - Level 14
  (355, 35500, 310, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Duskull - Confuse Ray - Level 17
  (355, 35500, 109, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Duskull - Shadow Sneak - Level 22
  (355, 35500, 425, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Duskull - Pursuit - Level 25
  (355, 35500, 228, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Duskull - Curse - Level 30
  (355, 35500, 174, 13, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Duskull - Will-O-Wisp - Level 33
  (355, 35500, 261, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Duskull - Hex - Level 38
  (355, 35500, 506, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Duskull - Mean Look - Level 41
  (355, 35500, 212, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Duskull - Payback - Level 46
  (355, 35500, 371, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Duskull - Future Sight - Level 49
  (355, 35500, 248, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Duskull - Calm Mind - TM04
  (355, 35500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 15),
  -- Duskull - Toxic - TM06
  (355, 35500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Duskull - Hidden Power - TM10
  (355, 35500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Duskull - Sunny Day - TM11
  (355, 35500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Duskull - Taunt - TM12
  (355, 35500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Duskull - Ice Beam - TM13
  (355, 35500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Duskull - Blizzard - TM14
  (355, 35500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Duskull - Protect - TM17
  (355, 35500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Duskull - Rain Dance - TM18
  (355, 35500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Duskull - Frustration - TM21
  (355, 35500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Duskull - Return - TM27
  (355, 35500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Duskull - Psychic - TM29
  (355, 35500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 26),
  -- Duskull - Shadow Ball - TM30
  (355, 35500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Duskull - Double Team - TM32
  (355, 35500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Duskull - Torment - TM41
  (355, 35500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 29),
  -- Duskull - Facade - TM42
  (355, 35500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Duskull - Rest - TM44
  (355, 35500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Duskull - Attract - TM45
  (355, 35500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Duskull - Thief - TM46
  (355, 35500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 33),
  -- Duskull - Round - TM48
  (355, 35500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Duskull - Fling - TM56
  (355, 35500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 35),
  -- Duskull - Charge Beam - TM57
  (355, 35500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 36),
  -- Duskull - Will-O-Wisp - TM61
  (355, 35500, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 37),
  -- Duskull - Embargo - TM63
  (355, 35500, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 38),
  -- Duskull - Payback - TM66
  (355, 35500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Duskull - Flash - TM70
  (355, 35500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Duskull - Psych Up - TM77
  (355, 35500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Duskull - Infestation - TM83
  (355, 35500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 42),
  -- Duskull - Dream Eater - TM85
  (355, 35500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 43),
  -- Duskull - Swagger - TM87
  (355, 35500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Duskull - Sleep Talk - TM88
  (355, 35500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Duskull - Substitute - TM90
  (355, 35500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Duskull - Trick Room - TM92
  (355, 35500, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 47),
  -- Duskull - Dark Pulse - TM97
  (355, 35500, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Duskull - Confide - TM100
  (355, 35500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Duskull - Haze - Egg
  (355, 35500, 114, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Duskull - Feint Attack - Egg
  (355, 35500, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Duskull - Destiny Bond - Egg
  (355, 35500, 194, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Duskull - Pain Split - Egg
  (355, 35500, 220, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Duskull - Memento - Egg
  (355, 35500, 262, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Duskull - Skill Swap - Egg
  (355, 35500, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Duskull - Imprison - Egg
  (355, 35500, 286, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Duskull - Grudge - Egg
  (355, 35500, 288, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Duskull - Dark Pulse - Egg
  (355, 35500, 399, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Duskull - Ominous Wind - Egg
  (355, 35500, 466, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dusclops - Fire Punch - Level 1
  (356, 35600, 7, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Ice Punch - Level 1
  (356, 35600, 8, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusclops - Thunder Punch - Level 1
  (356, 35600, 9, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusclops - Bind - Level 1
  (356, 35600, 20, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusclops - Leer - Level 1
  (356, 35600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusclops - Disable - Level 1
  (356, 35600, 50, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusclops - Night Shade - Level 1
  (356, 35600, 101, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusclops - Gravity - Level 1
  (356, 35600, 356, 13, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusclops - Disable - Level 6
  (356, 35600, 50, 13, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Dusclops - Foresight - Level 9
  (356, 35600, 193, 13, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Dusclops - Astonish - Level 14
  (356, 35600, 310, 13, NULL, 1, 14, NULL, NULL, NULL, 11),
  -- Dusclops - Confuse Ray - Level 17
  (356, 35600, 109, 13, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Dusclops - Shadow Sneak - Level 22
  (356, 35600, 425, 13, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Dusclops - Pursuit - Level 25
  (356, 35600, 228, 13, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Dusclops - Curse - Level 30
  (356, 35600, 174, 13, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Dusclops - Will-O-Wisp - Level 33
  (356, 35600, 261, 13, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Dusclops - Shadow Punch - Level 37
  (356, 35600, 325, 13, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Dusclops - Hex - Level 42
  (356, 35600, 506, 13, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusclops - Mean Look - Level 49
  (356, 35600, 212, 13, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Dusclops - Payback - Level 58
  (356, 35600, 371, 13, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Dusclops - Future Sight - Level 61
  (356, 35600, 248, 13, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Dusclops - Calm Mind - TM04
  (356, 35600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 22),
  -- Dusclops - Toxic - TM06
  (356, 35600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 23),
  -- Dusclops - Hidden Power - TM10
  (356, 35600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Dusclops - Sunny Day - TM11
  (356, 35600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Dusclops - Taunt - TM12
  (356, 35600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Dusclops - Ice Beam - TM13
  (356, 35600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 27),
  -- Dusclops - Blizzard - TM14
  (356, 35600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 28),
  -- Dusclops - Hyper Beam - TM15
  (356, 35600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 29),
  -- Dusclops - Protect - TM17
  (356, 35600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 30),
  -- Dusclops - Rain Dance - TM18
  (356, 35600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 31),
  -- Dusclops - Frustration - TM21
  (356, 35600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Dusclops - Earthquake - TM26
  (356, 35600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 33),
  -- Dusclops - Return - TM27
  (356, 35600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Dusclops - Psychic - TM29
  (356, 35600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Dusclops - Shadow Ball - TM30
  (356, 35600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Dusclops - Brick Break - TM31
  (356, 35600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 37),
  -- Dusclops - Double Team - TM32
  (356, 35600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 38),
  -- Dusclops - Rock Tomb - TM39
  (356, 35600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Dusclops - Torment - TM41
  (356, 35600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 40),
  -- Dusclops - Facade - TM42
  (356, 35600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Dusclops - Rest - TM44
  (356, 35600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Dusclops - Attract - TM45
  (356, 35600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Dusclops - Thief - TM46
  (356, 35600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 44),
  -- Dusclops - Round - TM48
  (356, 35600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Dusclops - Fling - TM56
  (356, 35600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Dusclops - Charge Beam - TM57
  (356, 35600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 47),
  -- Dusclops - Will-O-Wisp - TM61
  (356, 35600, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 48),
  -- Dusclops - Embargo - TM63
  (356, 35600, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 49),
  -- Dusclops - Payback - TM66
  (356, 35600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 50),
  -- Dusclops - Giga Impact - TM68
  (356, 35600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 51),
  -- Dusclops - Flash - TM70
  (356, 35600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 52),
  -- Dusclops - Psych Up - TM77
  (356, 35600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 53),
  -- Dusclops - Bulldoze - TM78
  (356, 35600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 54),
  -- Dusclops - Rock Slide - TM80
  (356, 35600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 55),
  -- Dusclops - Infestation - TM83
  (356, 35600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 56),
  -- Dusclops - Dream Eater - TM85
  (356, 35600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 57),
  -- Dusclops - Swagger - TM87
  (356, 35600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 58),
  -- Dusclops - Sleep Talk - TM88
  (356, 35600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 59),
  -- Dusclops - Substitute - TM90
  (356, 35600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 60),
  -- Dusclops - Trick Room - TM92
  (356, 35600, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 61),
  -- Dusclops - Rock Smash - TM94
  (356, 35600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Dusclops - Dark Pulse - TM97
  (356, 35600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 63),
  -- Dusclops - Power-Up Punch - TM98
  (356, 35600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 64),
  -- Dusclops - Confide - TM100
  (356, 35600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Dusclops - Strength - HM04
  (356, 35600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Tropius - Gust - Level 1
  (357, 35700, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tropius - Leer - Level 1
  (357, 35700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tropius - Natural Gift - Level 1
  (357, 35700, 363, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tropius - Leaf Storm - Level 1
  (357, 35700, 437, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tropius - Bestow - Level 1
  (357, 35700, 516, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tropius - Growth - Level 7
  (357, 35700, 74, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Tropius - Razor Leaf - Level 11
  (357, 35700, 75, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Tropius - Stomp - Level 17
  (357, 35700, 23, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Tropius - Sweet Scent - Level 21
  (357, 35700, 230, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tropius - Whirlwind - Level 27
  (357, 35700, 18, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tropius - Magical Leaf - Level 31
  (357, 35700, 345, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tropius - Body Slam - Level 37
  (357, 35700, 34, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Tropius - Synthesis - Level 41
  (357, 35700, 235, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Tropius - Leaf Tornado - Level 47
  (357, 35700, 536, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Tropius - Air Slash - Level 50
  (357, 35700, 403, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Tropius - Bestow - Level 57
  (357, 35700, 516, 13, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Tropius - Solar Beam - Level 61
  (357, 35700, 76, 13, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Tropius - Natural Gift - Level 67
  (357, 35700, 363, 13, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Tropius - Leaf Storm - Level 71
  (357, 35700, 437, 13, NULL, 1, 71, NULL, NULL, NULL, 19),
  -- Tropius - Roar - TM05
  (357, 35700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Tropius - Toxic - TM06
  (357, 35700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Tropius - Hidden Power - TM10
  (357, 35700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Tropius - Sunny Day - TM11
  (357, 35700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Tropius - Hyper Beam - TM15
  (357, 35700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Tropius - Protect - TM17
  (357, 35700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Tropius - Roost - TM19
  (357, 35700, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 26),
  -- Tropius - Safeguard - TM20
  (357, 35700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Tropius - Frustration - TM21
  (357, 35700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Tropius - Solar Beam - TM22
  (357, 35700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Tropius - Earthquake - TM26
  (357, 35700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Tropius - Return - TM27
  (357, 35700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Tropius - Double Team - TM32
  (357, 35700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Tropius - Aerial Ace - TM40
  (357, 35700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Tropius - Facade - TM42
  (357, 35700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Tropius - Rest - TM44
  (357, 35700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Tropius - Attract - TM45
  (357, 35700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Tropius - Round - TM48
  (357, 35700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Tropius - Steel Wing - TM51
  (357, 35700, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 38),
  -- Tropius - Energy Ball - TM53
  (357, 35700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Tropius - Giga Impact - TM68
  (357, 35700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Tropius - Flash - TM70
  (357, 35700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Tropius - Swords Dance - TM75
  (357, 35700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 42),
  -- Tropius - Bulldoze - TM78
  (357, 35700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 43),
  -- Tropius - Grass Knot - TM86
  (357, 35700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 44),
  -- Tropius - Swagger - TM87
  (357, 35700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Tropius - Sleep Talk - TM88
  (357, 35700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Tropius - Substitute - TM90
  (357, 35700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Tropius - Rock Smash - TM94
  (357, 35700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Tropius - Nature Power - TM96
  (357, 35700, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 49),
  -- Tropius - Confide - TM100
  (357, 35700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Tropius - Cut - HM01
  (357, 35700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Tropius - Fly - HM02
  (357, 35700, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 52),
  -- Tropius - Strength - HM04
  (357, 35700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Tropius - Razor Wind - Egg
  (357, 35700, 13, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tropius - Slam - Egg
  (357, 35700, 21, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tropius - Headbutt - Egg
  (357, 35700, 29, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tropius - Leech Seed - Egg
  (357, 35700, 73, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tropius - Curse - Egg
  (357, 35700, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tropius - Synthesis - Egg
  (357, 35700, 235, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tropius - Nature Power - Egg
  (357, 35700, 267, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tropius - Bullet Seed - Egg
  (357, 35700, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tropius - Leaf Blade - Egg
  (357, 35700, 348, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tropius - Dragon Dance - Egg
  (357, 35700, 349, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Tropius - Natural Gift - Egg
  (357, 35700, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Tropius - Leaf Storm - Egg
  (357, 35700, 437, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Chimecho - Wrap - Level 1
  (358, 35800, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Healing Wish - Level 1
  (358, 35800, 361, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimecho - Synchronoise - Level 1
  (358, 35800, 485, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chimecho - Growl - Level 6
  (358, 35800, 45, 13, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Chimecho - Astonish - Level 9
  (358, 35800, 310, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Chimecho - Confusion - Level 14
  (358, 35800, 93, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Chimecho - Uproar - Level 17
  (358, 35800, 253, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Chimecho - Take Down - Level 22
  (358, 35800, 36, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Chimecho - Yawn - Level 25
  (358, 35800, 281, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Chimecho - Psywave - Level 30
  (358, 35800, 149, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Chimecho - Double-Edge - Level 33
  (358, 35800, 38, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Chimecho - Heal Bell - Level 38
  (358, 35800, 215, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Chimecho - Safeguard - Level 41
  (358, 35800, 219, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Chimecho - Extrasensory - Level 46
  (358, 35800, 326, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Chimecho - Heal Pulse - Level 49
  (358, 35800, 505, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Chimecho - Synchronoise - Level 54
  (358, 35800, 485, 13, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Chimecho - Healing Wish - Level 57
  (358, 35800, 361, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Chimecho - Psyshock - TM03
  (358, 35800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Chimecho - Calm Mind - TM04
  (358, 35800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Chimecho - Toxic - TM06
  (358, 35800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Chimecho - Hidden Power - TM10
  (358, 35800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Chimecho - Sunny Day - TM11
  (358, 35800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Chimecho - Taunt - TM12
  (358, 35800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Chimecho - Light Screen - TM16
  (358, 35800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Chimecho - Protect - TM17
  (358, 35800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Chimecho - Rain Dance - TM18
  (358, 35800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Chimecho - Safeguard - TM20
  (358, 35800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Chimecho - Frustration - TM21
  (358, 35800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Chimecho - Return - TM27
  (358, 35800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Chimecho - Psychic - TM29
  (358, 35800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Chimecho - Shadow Ball - TM30
  (358, 35800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Chimecho - Double Team - TM32
  (358, 35800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Chimecho - Reflect - TM33
  (358, 35800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Chimecho - Torment - TM41
  (358, 35800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Chimecho - Facade - TM42
  (358, 35800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Chimecho - Rest - TM44
  (358, 35800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Chimecho - Attract - TM45
  (358, 35800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Chimecho - Round - TM48
  (358, 35800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Chimecho - Echoed Voice - TM49
  (358, 35800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 39),
  -- Chimecho - Energy Ball - TM53
  (358, 35800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Chimecho - Charge Beam - TM57
  (358, 35800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 41),
  -- Chimecho - Flash - TM70
  (358, 35800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 42),
  -- Chimecho - Thunder Wave - TM73
  (358, 35800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 43),
  -- Chimecho - Psych Up - TM77
  (358, 35800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 44),
  -- Chimecho - Dream Eater - TM85
  (358, 35800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 45),
  -- Chimecho - Grass Knot - TM86
  (358, 35800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Chimecho - Swagger - TM87
  (358, 35800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Chimecho - Sleep Talk - TM88
  (358, 35800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Chimecho - Substitute - TM90
  (358, 35800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Chimecho - Trick Room - TM92
  (358, 35800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 50),
  -- Chimecho - Dazzling Gleam - TM99
  (358, 35800, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 51),
  -- Chimecho - Confide - TM100
  (358, 35800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Chimecho - Disable - Egg
  (358, 35800, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimecho - Hypnosis - Egg
  (358, 35800, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimecho - Recover - Egg
  (358, 35800, 105, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimecho - Curse - Egg
  (358, 35800, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimecho - Future Sight - Egg
  (358, 35800, 248, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimecho - Wish - Egg
  (358, 35800, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimecho - Skill Swap - Egg
  (358, 35800, 285, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimecho - Cosmic Power - Egg
  (358, 35800, 322, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimecho - Stored Power - Egg
  (358, 35800, 500, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Absol - Scratch - Level 1
  (359, 35900, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Absol - Razor Wind - Level 1
  (359, 35900, 13, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Absol - Perish Song - Level 1
  (359, 35900, 195, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Absol - Detect - Level 1
  (359, 35900, 197, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Absol - Taunt - Level 1
  (359, 35900, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Absol - Feint - Level 1
  (359, 35900, 364, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Absol - Me First - Level 1
  (359, 35900, 382, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Absol - Leer - Level 4
  (359, 35900, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Absol - Quick Attack - Level 9
  (359, 35900, 98, 13, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Absol - Pursuit - Level 12
  (359, 35900, 228, 13, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Absol - Taunt - Level 17
  (359, 35900, 269, 13, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Absol - Bite - Level 20
  (359, 35900, 44, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Absol - Double Team - Level 25
  (359, 35900, 104, 13, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Absol - Slash - Level 28
  (359, 35900, 163, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Absol - Swords Dance - Level 33
  (359, 35900, 14, 13, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Absol - Future Sight - Level 36
  (359, 35900, 248, 13, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Absol - Night Slash - Level 41
  (359, 35900, 400, 13, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Absol - Detect - Level 44
  (359, 35900, 197, 13, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Absol - Psycho Cut - Level 47
  (359, 35900, 427, 13, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Absol - Sucker Punch - Level 50
  (359, 35900, 389, 13, NULL, 1, 50, NULL, NULL, NULL, 20),
  -- Absol - Razor Wind - Level 57
  (359, 35900, 13, 13, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Absol - Me First - Level 60
  (359, 35900, 382, 13, NULL, 1, 60, NULL, NULL, NULL, 22),
  -- Absol - Perish Song - Level 65
  (359, 35900, 195, 13, NULL, 1, 65, NULL, NULL, NULL, 23),
  -- Absol - Hone Claws - TM01
  (359, 35900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 24),
  -- Absol - Calm Mind - TM04
  (359, 35900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 25),
  -- Absol - Toxic - TM06
  (359, 35900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 26),
  -- Absol - Hail - TM07
  (359, 35900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 27),
  -- Absol - Hidden Power - TM10
  (359, 35900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 28),
  -- Absol - Sunny Day - TM11
  (359, 35900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 29),
  -- Absol - Taunt - TM12
  (359, 35900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 30),
  -- Absol - Ice Beam - TM13
  (359, 35900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 31),
  -- Absol - Blizzard - TM14
  (359, 35900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 32),
  -- Absol - Hyper Beam - TM15
  (359, 35900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 33),
  -- Absol - Protect - TM17
  (359, 35900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 34),
  -- Absol - Rain Dance - TM18
  (359, 35900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 35),
  -- Absol - Frustration - TM21
  (359, 35900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 36),
  -- Absol - Thunderbolt - TM24
  (359, 35900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 37),
  -- Absol - Thunder - TM25
  (359, 35900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 38),
  -- Absol - Return - TM27
  (359, 35900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 39),
  -- Absol - Shadow Ball - TM30
  (359, 35900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 40),
  -- Absol - Double Team - TM32
  (359, 35900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 41),
  -- Absol - Flamethrower - TM35
  (359, 35900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 42),
  -- Absol - Sandstorm - TM37
  (359, 35900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 43),
  -- Absol - Fire Blast - TM38
  (359, 35900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 44),
  -- Absol - Rock Tomb - TM39
  (359, 35900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 45),
  -- Absol - Aerial Ace - TM40
  (359, 35900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 46),
  -- Absol - Torment - TM41
  (359, 35900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 47),
  -- Absol - Facade - TM42
  (359, 35900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 48),
  -- Absol - Rest - TM44
  (359, 35900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 49),
  -- Absol - Attract - TM45
  (359, 35900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 50),
  -- Absol - Thief - TM46
  (359, 35900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 51),
  -- Absol - Round - TM48
  (359, 35900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 52),
  -- Absol - Echoed Voice - TM49
  (359, 35900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 53),
  -- Absol - False Swipe - TM54
  (359, 35900, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 54),
  -- Absol - Charge Beam - TM57
  (359, 35900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 55),
  -- Absol - Incinerate - TM59
  (359, 35900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 56),
  -- Absol - Will-O-Wisp - TM61
  (359, 35900, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 57),
  -- Absol - Shadow Claw - TM65
  (359, 35900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 58),
  -- Absol - Payback - TM66
  (359, 35900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 59),
  -- Absol - Retaliate - TM67
  (359, 35900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 60),
  -- Absol - Giga Impact - TM68
  (359, 35900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 61),
  -- Absol - Flash - TM70
  (359, 35900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 62),
  -- Absol - Stone Edge - TM71
  (359, 35900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 63),
  -- Absol - Thunder Wave - TM73
  (359, 35900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 64),
  -- Absol - Swords Dance - TM75
  (359, 35900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 65),
  -- Absol - Psych Up - TM77
  (359, 35900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 66),
  -- Absol - Rock Slide - TM80
  (359, 35900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 67),
  -- Absol - X-Scissor - TM81
  (359, 35900, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 68),
  -- Absol - Dream Eater - TM85
  (359, 35900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 69),
  -- Absol - Swagger - TM87
  (359, 35900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 70),
  -- Absol - Sleep Talk - TM88
  (359, 35900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 71),
  -- Absol - Substitute - TM90
  (359, 35900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 72),
  -- Absol - Rock Smash - TM94
  (359, 35900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 73),
  -- Absol - Snarl - TM95
  (359, 35900, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 74),
  -- Absol - Dark Pulse - TM97
  (359, 35900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 75),
  -- Absol - Confide - TM100
  (359, 35900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 76),
  -- Absol - Cut - HM01
  (359, 35900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 77),
  -- Absol - Strength - HM04
  (359, 35900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 78),
  -- Absol - Double-Edge - Egg
  (359, 35900, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Absol - Curse - Egg
  (359, 35900, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Absol - Feint Attack - Egg
  (359, 35900, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Absol - Perish Song - Egg
  (359, 35900, 195, 13, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Absol - Mean Look - Egg
  (359, 35900, 212, 13, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Absol - Megahorn - Egg
  (359, 35900, 224, 13, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Absol - Baton Pass - Egg
  (359, 35900, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Absol - Magic Coat - Egg
  (359, 35900, 277, 13, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Absol - Assurance - Egg
  (359, 35900, 372, 13, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Absol - Me First - Egg
  (359, 35900, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Absol - Punishment - Egg
  (359, 35900, 386, 13, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Absol - Sucker Punch - Egg
  (359, 35900, 389, 13, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Absol - Zen Headbutt - Egg
  (359, 35900, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Absol - Hex - Egg
  (359, 35900, 506, 13, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Absol - Play Rough - Egg
  (359, 35900, 583, 13, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Wynaut - Splash - Level 1
  (360, 36000, 150, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wynaut - Charm - Level 1
  (360, 36000, 204, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wynaut - Encore - Level 1
  (360, 36000, 227, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wynaut - Counter - Level 15
  (360, 36000, 68, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Wynaut - Destiny Bond - Level 15
  (360, 36000, 194, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wynaut - Safeguard - Level 15
  (360, 36000, 219, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wynaut - Mirror Coat - Level 15
  (360, 36000, 243, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wynaut - Safeguard - TM20
  (360, 36000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 8),
  -- Snorunt - Leer - Level 1
  (361, 36100, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Double Team - Level 4
  (361, 36100, 104, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Snorunt - Bite - Level 10
  (361, 36100, 44, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Icy Wind - Level 13
  (361, 36100, 196, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snorunt - Headbutt - Level 19
  (361, 36100, 29, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Snorunt - Protect - Level 22
  (361, 36100, 182, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Snorunt - Ice Fang - Level 28
  (361, 36100, 423, 13, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorunt - Crunch - Level 31
  (361, 36100, 242, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Snorunt - Ice Shard - Level 37
  (361, 36100, 420, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Snorunt - Hail - Level 40
  (361, 36100, 258, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Snorunt - Blizzard - Level 46
  (361, 36100, 59, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snorunt - Toxic - TM06
  (361, 36100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Snorunt - Hail - TM07
  (361, 36100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Snorunt - Hidden Power - TM10
  (361, 36100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Snorunt - Ice Beam - TM13
  (361, 36100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Snorunt - Blizzard - TM14
  (361, 36100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Snorunt - Light Screen - TM16
  (361, 36100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 18),
  -- Snorunt - Protect - TM17
  (361, 36100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Snorunt - Rain Dance - TM18
  (361, 36100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Snorunt - Safeguard - TM20
  (361, 36100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Snorunt - Frustration - TM21
  (361, 36100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Snorunt - Return - TM27
  (361, 36100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Snorunt - Shadow Ball - TM30
  (361, 36100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 24),
  -- Snorunt - Double Team - TM32
  (361, 36100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Snorunt - Facade - TM42
  (361, 36100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Snorunt - Rest - TM44
  (361, 36100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Snorunt - Attract - TM45
  (361, 36100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Snorunt - Round - TM48
  (361, 36100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Snorunt - Flash - TM70
  (361, 36100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 30),
  -- Snorunt - Frost Breath - TM79
  (361, 36100, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 31),
  -- Snorunt - Swagger - TM87
  (361, 36100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Snorunt - Sleep Talk - TM88
  (361, 36100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Snorunt - Substitute - TM90
  (361, 36100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Snorunt - Confide - TM100
  (361, 36100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Snorunt - Disable - Egg
  (361, 36100, 50, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Snorunt - Bide - Egg
  (361, 36100, 117, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Snorunt - Spikes - Egg
  (361, 36100, 191, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Snorunt - Rollout - Egg
  (361, 36100, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snorunt - Weather Ball - Egg
  (361, 36100, 311, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snorunt - Fake Tears - Egg
  (361, 36100, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snorunt - Block - Egg
  (361, 36100, 335, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snorunt - Switcheroo - Egg
  (361, 36100, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snorunt - Avalanche - Egg
  (361, 36100, 419, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snorunt - Hex - Egg
  (361, 36100, 506, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Glalie - Leer - Level 1
  (362, 36200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Bite - Level 1
  (362, 36200, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Double Team - Level 1
  (362, 36200, 104, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glalie - Sheer Cold - Level 1
  (362, 36200, 329, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glalie - Double Team - Level 4
  (362, 36200, 104, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Glalie - Bite - Level 10
  (362, 36200, 44, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Glalie - Icy Wind - Level 13
  (362, 36200, 196, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Glalie - Headbutt - Level 19
  (362, 36200, 29, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Glalie - Protect - Level 22
  (362, 36200, 182, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Glalie - Ice Fang - Level 28
  (362, 36200, 423, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Glalie - Crunch - Level 31
  (362, 36200, 242, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Glalie - Ice Beam - Level 37
  (362, 36200, 58, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Glalie - Hail - Level 40
  (362, 36200, 258, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Glalie - Blizzard - Level 51
  (362, 36200, 59, 13, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Glalie - Sheer Cold - Level 59
  (362, 36200, 329, 13, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Glalie - Toxic - TM06
  (362, 36200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Glalie - Hail - TM07
  (362, 36200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Glalie - Hidden Power - TM10
  (362, 36200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Glalie - Taunt - TM12
  (362, 36200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Glalie - Ice Beam - TM13
  (362, 36200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Glalie - Blizzard - TM14
  (362, 36200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Glalie - Hyper Beam - TM15
  (362, 36200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Glalie - Light Screen - TM16
  (362, 36200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Glalie - Protect - TM17
  (362, 36200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Glalie - Rain Dance - TM18
  (362, 36200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Glalie - Safeguard - TM20
  (362, 36200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Glalie - Frustration - TM21
  (362, 36200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Glalie - Earthquake - TM26
  (362, 36200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Glalie - Return - TM27
  (362, 36200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Glalie - Shadow Ball - TM30
  (362, 36200, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Glalie - Double Team - TM32
  (362, 36200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Glalie - Torment - TM41
  (362, 36200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 33),
  -- Glalie - Facade - TM42
  (362, 36200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Glalie - Rest - TM44
  (362, 36200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Glalie - Attract - TM45
  (362, 36200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Glalie - Round - TM48
  (362, 36200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Glalie - Explosion - TM64
  (362, 36200, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 38),
  -- Glalie - Payback - TM66
  (362, 36200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Glalie - Giga Impact - TM68
  (362, 36200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Glalie - Flash - TM70
  (362, 36200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Glalie - Gyro Ball - TM74
  (362, 36200, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 42),
  -- Glalie - Bulldoze - TM78
  (362, 36200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 43),
  -- Glalie - Frost Breath - TM79
  (362, 36200, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 44),
  -- Glalie - Swagger - TM87
  (362, 36200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Glalie - Sleep Talk - TM88
  (362, 36200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Glalie - Substitute - TM90
  (362, 36200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Glalie - Dark Pulse - TM97
  (362, 36200, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 48),
  -- Glalie - Confide - TM100
  (362, 36200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Spheal - Growl - Level 1
  (363, 36300, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spheal - Water Gun - Level 1
  (363, 36300, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spheal - Defense Curl - Level 1
  (363, 36300, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Spheal - Powder Snow - Level 1
  (363, 36300, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Spheal - Encore - Level 7
  (363, 36300, 227, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Spheal - Ice Ball - Level 13
  (363, 36300, 301, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Spheal - Body Slam - Level 19
  (363, 36300, 34, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spheal - Aurora Beam - Level 25
  (363, 36300, 62, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Spheal - Hail - Level 31
  (363, 36300, 258, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Spheal - Rest - Level 37
  (363, 36300, 156, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Spheal - Snore - Level 37
  (363, 36300, 173, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spheal - Blizzard - Level 43
  (363, 36300, 59, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Spheal - Sheer Cold - Level 49
  (363, 36300, 329, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Spheal - Toxic - TM06
  (363, 36300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Spheal - Hail - TM07
  (363, 36300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 15),
  -- Spheal - Hidden Power - TM10
  (363, 36300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Spheal - Ice Beam - TM13
  (363, 36300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Spheal - Blizzard - TM14
  (363, 36300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Spheal - Protect - TM17
  (363, 36300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Spheal - Rain Dance - TM18
  (363, 36300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Spheal - Frustration - TM21
  (363, 36300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Spheal - Earthquake - TM26
  (363, 36300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 22),
  -- Spheal - Return - TM27
  (363, 36300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Spheal - Double Team - TM32
  (363, 36300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Spheal - Rock Tomb - TM39
  (363, 36300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 25),
  -- Spheal - Facade - TM42
  (363, 36300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Spheal - Rest - TM44
  (363, 36300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Spheal - Attract - TM45
  (363, 36300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Spheal - Round - TM48
  (363, 36300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Spheal - Echoed Voice - TM49
  (363, 36300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 30),
  -- Spheal - Bulldoze - TM78
  (363, 36300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 31),
  -- Spheal - Frost Breath - TM79
  (363, 36300, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 32),
  -- Spheal - Rock Slide - TM80
  (363, 36300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 33),
  -- Spheal - Swagger - TM87
  (363, 36300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Spheal - Sleep Talk - TM88
  (363, 36300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Spheal - Substitute - TM90
  (363, 36300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Spheal - Rock Smash - TM94
  (363, 36300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 37),
  -- Spheal - Confide - TM100
  (363, 36300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Spheal - Surf - HM03
  (363, 36300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 39),
  -- Spheal - Strength - HM04
  (363, 36300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 40),
  -- Spheal - Waterfall - HM05
  (363, 36300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Spheal - Fissure - Egg
  (363, 36300, 90, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spheal - Curse - Egg
  (363, 36300, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spheal - Belly Drum - Egg
  (363, 36300, 187, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spheal - Rollout - Egg
  (363, 36300, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spheal - Sleep Talk - Egg
  (363, 36300, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spheal - Stockpile - Egg
  (363, 36300, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spheal - Spit Up - Egg
  (363, 36300, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spheal - Swallow - Egg
  (363, 36300, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spheal - Yawn - Egg
  (363, 36300, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spheal - Signal Beam - Egg
  (363, 36300, 324, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spheal - Water Sport - Egg
  (363, 36300, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spheal - Water Pulse - Egg
  (363, 36300, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spheal - Aqua Ring - Egg
  (363, 36300, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sealeo - Growl - Level 1
  (364, 36400, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sealeo - Water Gun - Level 1
  (364, 36400, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sealeo - Powder Snow - Level 1
  (364, 36400, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sealeo - Encore - Level 1
  (364, 36400, 227, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sealeo - Encore - Level 7
  (364, 36400, 227, 13, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Sealeo - Ice Ball - Level 13
  (364, 36400, 301, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sealeo - Body Slam - Level 19
  (364, 36400, 34, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sealeo - Aurora Beam - Level 25
  (364, 36400, 62, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sealeo - Hail - Level 31
  (364, 36400, 258, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Sealeo - Swagger - Level 32
  (364, 36400, 207, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Sealeo - Rest - Level 39
  (364, 36400, 156, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Sealeo - Snore - Level 39
  (364, 36400, 173, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Sealeo - Blizzard - Level 47
  (364, 36400, 59, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Sealeo - Sheer Cold - Level 55
  (364, 36400, 329, 13, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Sealeo - Roar - TM05
  (364, 36400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Sealeo - Toxic - TM06
  (364, 36400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Sealeo - Hail - TM07
  (364, 36400, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Sealeo - Hidden Power - TM10
  (364, 36400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Sealeo - Ice Beam - TM13
  (364, 36400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Sealeo - Blizzard - TM14
  (364, 36400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Sealeo - Protect - TM17
  (364, 36400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Sealeo - Rain Dance - TM18
  (364, 36400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Sealeo - Frustration - TM21
  (364, 36400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Sealeo - Earthquake - TM26
  (364, 36400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Sealeo - Return - TM27
  (364, 36400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Sealeo - Double Team - TM32
  (364, 36400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Sealeo - Rock Tomb - TM39
  (364, 36400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Sealeo - Facade - TM42
  (364, 36400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Sealeo - Rest - TM44
  (364, 36400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Sealeo - Attract - TM45
  (364, 36400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Sealeo - Round - TM48
  (364, 36400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Sealeo - Echoed Voice - TM49
  (364, 36400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 32),
  -- Sealeo - Bulldoze - TM78
  (364, 36400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 33),
  -- Sealeo - Frost Breath - TM79
  (364, 36400, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 34),
  -- Sealeo - Rock Slide - TM80
  (364, 36400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Sealeo - Swagger - TM87
  (364, 36400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Sealeo - Sleep Talk - TM88
  (364, 36400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Sealeo - Substitute - TM90
  (364, 36400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Sealeo - Rock Smash - TM94
  (364, 36400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 39),
  -- Sealeo - Confide - TM100
  (364, 36400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Sealeo - Surf - HM03
  (364, 36400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 41),
  -- Sealeo - Strength - HM04
  (364, 36400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 42),
  -- Sealeo - Waterfall - HM05
  (364, 36400, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 43),
  -- Walrein - Growl - Level 1
  (365, 36500, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walrein - Water Gun - Level 1
  (365, 36500, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Walrein - Powder Snow - Level 1
  (365, 36500, 181, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Walrein - Encore - Level 1
  (365, 36500, 227, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Walrein - Crunch - Level 1
  (365, 36500, 242, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Walrein - Encore - Level 7
  (365, 36500, 227, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Walrein - Ice Ball - Level 13
  (365, 36500, 301, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Walrein - Body Slam - Level 19
  (365, 36500, 34, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Walrein - Aurora Beam - Level 25
  (365, 36500, 62, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Walrein - Hail - Level 31
  (365, 36500, 258, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Walrein - Swagger - Level 32
  (365, 36500, 207, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Walrein - Rest - Level 39
  (365, 36500, 156, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Walrein - Snore - Level 39
  (365, 36500, 173, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Walrein - Ice Fang - Level 44
  (365, 36500, 423, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Walrein - Blizzard - Level 52
  (365, 36500, 59, 13, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Walrein - Sheer Cold - Level 65
  (365, 36500, 329, 13, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Walrein - Roar - TM05
  (365, 36500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Walrein - Toxic - TM06
  (365, 36500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Walrein - Hail - TM07
  (365, 36500, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 19),
  -- Walrein - Hidden Power - TM10
  (365, 36500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Walrein - Ice Beam - TM13
  (365, 36500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Walrein - Blizzard - TM14
  (365, 36500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Walrein - Hyper Beam - TM15
  (365, 36500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Walrein - Protect - TM17
  (365, 36500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Walrein - Rain Dance - TM18
  (365, 36500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Walrein - Frustration - TM21
  (365, 36500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Walrein - Earthquake - TM26
  (365, 36500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Walrein - Return - TM27
  (365, 36500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Walrein - Double Team - TM32
  (365, 36500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Walrein - Rock Tomb - TM39
  (365, 36500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Walrein - Facade - TM42
  (365, 36500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Walrein - Rest - TM44
  (365, 36500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Walrein - Attract - TM45
  (365, 36500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Walrein - Round - TM48
  (365, 36500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Walrein - Echoed Voice - TM49
  (365, 36500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 35),
  -- Walrein - Giga Impact - TM68
  (365, 36500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 36),
  -- Walrein - Bulldoze - TM78
  (365, 36500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Walrein - Frost Breath - TM79
  (365, 36500, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 38),
  -- Walrein - Rock Slide - TM80
  (365, 36500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Walrein - Swagger - TM87
  (365, 36500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Walrein - Sleep Talk - TM88
  (365, 36500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Walrein - Substitute - TM90
  (365, 36500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Walrein - Rock Smash - TM94
  (365, 36500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Walrein - Confide - TM100
  (365, 36500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Walrein - Surf - HM03
  (365, 36500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 45),
  -- Walrein - Strength - HM04
  (365, 36500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Walrein - Waterfall - HM05
  (365, 36500, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 47),
  -- Clamperl - Water Gun - Level 1
  (366, 36600, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clamperl - Clamp - Level 1
  (366, 36600, 128, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clamperl - Whirlpool - Level 1
  (366, 36600, 250, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clamperl - Iron Defense - Level 1
  (366, 36600, 334, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clamperl - Shell Smash - Level 50
  (366, 36600, 504, 13, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Clamperl - Toxic - TM06
  (366, 36600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 6),
  -- Clamperl - Hail - TM07
  (366, 36600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 7),
  -- Clamperl - Hidden Power - TM10
  (366, 36600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Clamperl - Ice Beam - TM13
  (366, 36600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 9),
  -- Clamperl - Blizzard - TM14
  (366, 36600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 10),
  -- Clamperl - Protect - TM17
  (366, 36600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Clamperl - Rain Dance - TM18
  (366, 36600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 12),
  -- Clamperl - Frustration - TM21
  (366, 36600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 13),
  -- Clamperl - Return - TM27
  (366, 36600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 14),
  -- Clamperl - Double Team - TM32
  (366, 36600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 15),
  -- Clamperl - Facade - TM42
  (366, 36600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 16),
  -- Clamperl - Rest - TM44
  (366, 36600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 17),
  -- Clamperl - Attract - TM45
  (366, 36600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 18),
  -- Clamperl - Round - TM48
  (366, 36600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 19),
  -- Clamperl - Scald - TM55
  (366, 36600, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 20),
  -- Clamperl - Swagger - TM87
  (366, 36600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 21),
  -- Clamperl - Sleep Talk - TM88
  (366, 36600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 22),
  -- Clamperl - Substitute - TM90
  (366, 36600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 23),
  -- Clamperl - Confide - TM100
  (366, 36600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 24),
  -- Clamperl - Surf - HM03
  (366, 36600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 25),
  -- Clamperl - Waterfall - HM05
  (366, 36600, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 26),
  -- Clamperl - Body Slam - Egg
  (366, 36600, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Clamperl - Supersonic - Egg
  (366, 36600, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Clamperl - Confuse Ray - Egg
  (366, 36600, 109, 13, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Clamperl - Barrier - Egg
  (366, 36600, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Clamperl - Endure - Egg
  (366, 36600, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Clamperl - Refresh - Egg
  (366, 36600, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Clamperl - Mud Sport - Egg
  (366, 36600, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Clamperl - Muddy Water - Egg
  (366, 36600, 330, 13, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Clamperl - Water Pulse - Egg
  (366, 36600, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Clamperl - Brine - Egg
  (366, 36600, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Clamperl - Aqua Ring - Egg
  (366, 36600, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Huntail - Whirlpool - Level 1
  (367, 36700, 250, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Huntail - Bite - Level 6
  (367, 36700, 44, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Huntail - Screech - Level 10
  (367, 36700, 103, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Huntail - Water Pulse - Level 15
  (367, 36700, 352, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Huntail - Scary Face - Level 19
  (367, 36700, 184, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Huntail - Ice Fang - Level 24
  (367, 36700, 423, 13, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Huntail - Brine - Level 28
  (367, 36700, 362, 13, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Huntail - Baton Pass - Level 33
  (367, 36700, 226, 13, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Huntail - Dive - Level 37
  (367, 36700, 291, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Huntail - Crunch - Level 42
  (367, 36700, 242, 13, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Huntail - Aqua Tail - Level 46
  (367, 36700, 401, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Huntail - Hydro Pump - Level 50
  (367, 36700, 56, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Huntail - Toxic - TM06
  (367, 36700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Huntail - Hail - TM07
  (367, 36700, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Huntail - Hidden Power - TM10
  (367, 36700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Huntail - Ice Beam - TM13
  (367, 36700, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Huntail - Blizzard - TM14
  (367, 36700, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Huntail - Hyper Beam - TM15
  (367, 36700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Huntail - Protect - TM17
  (367, 36700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Huntail - Rain Dance - TM18
  (367, 36700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Huntail - Frustration - TM21
  (367, 36700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Huntail - Return - TM27
  (367, 36700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Huntail - Double Team - TM32
  (367, 36700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Huntail - Rock Tomb - TM39
  (367, 36700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 24),
  -- Huntail - Facade - TM42
  (367, 36700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Huntail - Rest - TM44
  (367, 36700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Huntail - Attract - TM45
  (367, 36700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Huntail - Round - TM48
  (367, 36700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Huntail - Scald - TM55
  (367, 36700, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 29),
  -- Huntail - Giga Impact - TM68
  (367, 36700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 30),
  -- Huntail - Infestation - TM83
  (367, 36700, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 31),
  -- Huntail - Swagger - TM87
  (367, 36700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Huntail - Sleep Talk - TM88
  (367, 36700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Huntail - Substitute - TM90
  (367, 36700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Huntail - Confide - TM100
  (367, 36700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Huntail - Surf - HM03
  (367, 36700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 36),
  -- Huntail - Waterfall - HM05
  (367, 36700, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 37),
  -- Gorebyss - Whirlpool - Level 1
  (368, 36800, 250, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gorebyss - Confusion - Level 6
  (368, 36800, 93, 13, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gorebyss - Agility - Level 10
  (368, 36800, 97, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Gorebyss - Water Pulse - Level 15
  (368, 36800, 352, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Gorebyss - Amnesia - Level 19
  (368, 36800, 133, 13, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Gorebyss - Aqua Ring - Level 24
  (368, 36800, 392, 13, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Gorebyss - Captivate - Level 28
  (368, 36800, 445, 13, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gorebyss - Baton Pass - Level 33
  (368, 36800, 226, 13, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gorebyss - Dive - Level 37
  (368, 36800, 291, 13, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Gorebyss - Psychic - Level 42
  (368, 36800, 94, 13, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Gorebyss - Aqua Tail - Level 46
  (368, 36800, 401, 13, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Gorebyss - Hydro Pump - Level 50
  (368, 36800, 56, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Gorebyss - Toxic - TM06
  (368, 36800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Gorebyss - Hail - TM07
  (368, 36800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 14),
  -- Gorebyss - Hidden Power - TM10
  (368, 36800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Gorebyss - Ice Beam - TM13
  (368, 36800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 16),
  -- Gorebyss - Blizzard - TM14
  (368, 36800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 17),
  -- Gorebyss - Hyper Beam - TM15
  (368, 36800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 18),
  -- Gorebyss - Protect - TM17
  (368, 36800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Gorebyss - Rain Dance - TM18
  (368, 36800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Gorebyss - Safeguard - TM20
  (368, 36800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Gorebyss - Frustration - TM21
  (368, 36800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Gorebyss - Return - TM27
  (368, 36800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Gorebyss - Psychic - TM29
  (368, 36800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 24),
  -- Gorebyss - Shadow Ball - TM30
  (368, 36800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Gorebyss - Double Team - TM32
  (368, 36800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Gorebyss - Facade - TM42
  (368, 36800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Gorebyss - Rest - TM44
  (368, 36800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Gorebyss - Attract - TM45
  (368, 36800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Gorebyss - Round - TM48
  (368, 36800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Gorebyss - Scald - TM55
  (368, 36800, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 31),
  -- Gorebyss - Giga Impact - TM68
  (368, 36800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 32),
  -- Gorebyss - Psych Up - TM77
  (368, 36800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 33),
  -- Gorebyss - Infestation - TM83
  (368, 36800, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 34),
  -- Gorebyss - Swagger - TM87
  (368, 36800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Gorebyss - Sleep Talk - TM88
  (368, 36800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Gorebyss - Substitute - TM90
  (368, 36800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Gorebyss - Confide - TM100
  (368, 36800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Gorebyss - Surf - HM03
  (368, 36800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 39),
  -- Gorebyss - Waterfall - HM05
  (368, 36800, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 40),
  -- Relicanth - Tackle - Level 1
  (369, 36900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Relicanth - Hydro Pump - Level 1
  (369, 36900, 56, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Relicanth - Harden - Level 1
  (369, 36900, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Relicanth - Ancient Power - Level 1
  (369, 36900, 246, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Relicanth - Mud Sport - Level 1
  (369, 36900, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Relicanth - Head Smash - Level 1
  (369, 36900, 457, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Relicanth - Water Gun - Level 8
  (369, 36900, 55, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Relicanth - Rock Tomb - Level 15
  (369, 36900, 317, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Relicanth - Yawn - Level 22
  (369, 36900, 281, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Relicanth - Take Down - Level 29
  (369, 36900, 36, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Relicanth - Mud Sport - Level 36
  (369, 36900, 300, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Relicanth - Ancient Power - Level 43
  (369, 36900, 246, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Relicanth - Double-Edge - Level 50
  (369, 36900, 38, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Relicanth - Dive - Level 57
  (369, 36900, 291, 13, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Relicanth - Rest - Level 64
  (369, 36900, 156, 13, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Relicanth - Hydro Pump - Level 71
  (369, 36900, 56, 13, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Relicanth - Head Smash - Level 78
  (369, 36900, 457, 13, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Relicanth - Calm Mind - TM04
  (369, 36900, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Relicanth - Toxic - TM06
  (369, 36900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Relicanth - Hail - TM07
  (369, 36900, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Relicanth - Hidden Power - TM10
  (369, 36900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Relicanth - Ice Beam - TM13
  (369, 36900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Relicanth - Blizzard - TM14
  (369, 36900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Relicanth - Hyper Beam - TM15
  (369, 36900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Relicanth - Protect - TM17
  (369, 36900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Relicanth - Rain Dance - TM18
  (369, 36900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Relicanth - Safeguard - TM20
  (369, 36900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Relicanth - Frustration - TM21
  (369, 36900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Relicanth - Smack Down - TM23
  (369, 36900, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 29),
  -- Relicanth - Earthquake - TM26
  (369, 36900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Relicanth - Return - TM27
  (369, 36900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Relicanth - Double Team - TM32
  (369, 36900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Relicanth - Sandstorm - TM37
  (369, 36900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 33),
  -- Relicanth - Rock Tomb - TM39
  (369, 36900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Relicanth - Facade - TM42
  (369, 36900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Relicanth - Rest - TM44
  (369, 36900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Relicanth - Attract - TM45
  (369, 36900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Relicanth - Round - TM48
  (369, 36900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Relicanth - Scald - TM55
  (369, 36900, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 39),
  -- Relicanth - Giga Impact - TM68
  (369, 36900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Relicanth - Rock Polish - TM69
  (369, 36900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 41),
  -- Relicanth - Stone Edge - TM71
  (369, 36900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 42),
  -- Relicanth - Psych Up - TM77
  (369, 36900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Relicanth - Bulldoze - TM78
  (369, 36900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Relicanth - Rock Slide - TM80
  (369, 36900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Relicanth - Swagger - TM87
  (369, 36900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Relicanth - Sleep Talk - TM88
  (369, 36900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Relicanth - Substitute - TM90
  (369, 36900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Relicanth - Rock Smash - TM94
  (369, 36900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Relicanth - Confide - TM100
  (369, 36900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Relicanth - Surf - HM03
  (369, 36900, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 51),
  -- Relicanth - Waterfall - HM05
  (369, 36900, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 52),
  -- Relicanth - Skull Bash - Egg
  (369, 36900, 130, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Relicanth - Amnesia - Egg
  (369, 36900, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Relicanth - Snore - Egg
  (369, 36900, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Relicanth - Mud-Slap - Egg
  (369, 36900, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Relicanth - Sleep Talk - Egg
  (369, 36900, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Relicanth - Magnitude - Egg
  (369, 36900, 222, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Relicanth - Muddy Water - Egg
  (369, 36900, 330, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Relicanth - Mud Shot - Egg
  (369, 36900, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Relicanth - Water Sport - Egg
  (369, 36900, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Relicanth - Brine - Egg
  (369, 36900, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Relicanth - Aqua Tail - Egg
  (369, 36900, 401, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Relicanth - Zen Headbutt - Egg
  (369, 36900, 428, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Luvdisc - Tackle - Level 1
  (370, 37000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luvdisc - Charm - Level 4
  (370, 37000, 204, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Luvdisc - Water Gun - Level 7
  (370, 37000, 55, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Luvdisc - Agility - Level 9
  (370, 37000, 97, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Luvdisc - Take Down - Level 14
  (370, 37000, 36, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Luvdisc - Lucky Chant - Level 17
  (370, 37000, 381, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Luvdisc - Water Pulse - Level 22
  (370, 37000, 352, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Luvdisc - Attract - Level 27
  (370, 37000, 213, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Luvdisc - Flail - Level 31
  (370, 37000, 175, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Luvdisc - Sweet Kiss - Level 37
  (370, 37000, 186, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Luvdisc - Hydro Pump - Level 40
  (370, 37000, 56, 13, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Luvdisc - Aqua Ring - Level 46
  (370, 37000, 392, 13, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Luvdisc - Captivate - Level 50
  (370, 37000, 445, 13, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Luvdisc - Safeguard - Level 55
  (370, 37000, 219, 13, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Luvdisc - Toxic - TM06
  (370, 37000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Luvdisc - Hail - TM07
  (370, 37000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Luvdisc - Hidden Power - TM10
  (370, 37000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Luvdisc - Ice Beam - TM13
  (370, 37000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 18),
  -- Luvdisc - Blizzard - TM14
  (370, 37000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 19),
  -- Luvdisc - Protect - TM17
  (370, 37000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Luvdisc - Rain Dance - TM18
  (370, 37000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Luvdisc - Safeguard - TM20
  (370, 37000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 22),
  -- Luvdisc - Frustration - TM21
  (370, 37000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Luvdisc - Return - TM27
  (370, 37000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Luvdisc - Double Team - TM32
  (370, 37000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Luvdisc - Facade - TM42
  (370, 37000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Luvdisc - Rest - TM44
  (370, 37000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Luvdisc - Attract - TM45
  (370, 37000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Luvdisc - Round - TM48
  (370, 37000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Luvdisc - Scald - TM55
  (370, 37000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 30),
  -- Luvdisc - Psych Up - TM77
  (370, 37000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 31),
  -- Luvdisc - Swagger - TM87
  (370, 37000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Luvdisc - Sleep Talk - TM88
  (370, 37000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Luvdisc - Substitute - TM90
  (370, 37000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Luvdisc - Confide - TM100
  (370, 37000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Luvdisc - Surf - HM03
  (370, 37000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 36),
  -- Luvdisc - Waterfall - HM05
  (370, 37000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 37),
  -- Luvdisc - Supersonic - Egg
  (370, 37000, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Luvdisc - Splash - Egg
  (370, 37000, 150, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Luvdisc - Mud Sport - Egg
  (370, 37000, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Luvdisc - Water Sport - Egg
  (370, 37000, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Luvdisc - Brine - Egg
  (370, 37000, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Luvdisc - Aqua Ring - Egg
  (370, 37000, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Luvdisc - Captivate - Egg
  (370, 37000, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Luvdisc - Aqua Jet - Egg
  (370, 37000, 453, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Luvdisc - Entrainment - Egg
  (370, 37000, 494, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Luvdisc - Heal Pulse - Egg
  (370, 37000, 505, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bagon - Rage - Level 1
  (371, 37100, 99, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Bite - Level 5
  (371, 37100, 44, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bagon - Leer - Level 10
  (371, 37100, 43, 13, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Bagon - Headbutt - Level 16
  (371, 37100, 29, 13, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Bagon - Focus Energy - Level 20
  (371, 37100, 116, 13, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Bagon - Ember - Level 25
  (371, 37100, 52, 13, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Bagon - Dragon Breath - Level 31
  (371, 37100, 225, 13, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Bagon - Zen Headbutt - Level 35
  (371, 37100, 428, 13, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Bagon - Scary Face - Level 40
  (371, 37100, 184, 13, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Bagon - Crunch - Level 46
  (371, 37100, 242, 13, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Bagon - Dragon Claw - Level 50
  (371, 37100, 337, 13, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Bagon - Double-Edge - Level 55
  (371, 37100, 38, 13, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Bagon - Hone Claws - TM01
  (371, 37100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 13),
  -- Bagon - Dragon Claw - TM02
  (371, 37100, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 14),
  -- Bagon - Roar - TM05
  (371, 37100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Bagon - Toxic - TM06
  (371, 37100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Bagon - Hidden Power - TM10
  (371, 37100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Bagon - Sunny Day - TM11
  (371, 37100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Bagon - Protect - TM17
  (371, 37100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Bagon - Rain Dance - TM18
  (371, 37100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Bagon - Frustration - TM21
  (371, 37100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Bagon - Return - TM27
  (371, 37100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Bagon - Brick Break - TM31
  (371, 37100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 23),
  -- Bagon - Double Team - TM32
  (371, 37100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Bagon - Flamethrower - TM35
  (371, 37100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 25),
  -- Bagon - Fire Blast - TM38
  (371, 37100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 26),
  -- Bagon - Rock Tomb - TM39
  (371, 37100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Bagon - Aerial Ace - TM40
  (371, 37100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Bagon - Facade - TM42
  (371, 37100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Bagon - Rest - TM44
  (371, 37100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Bagon - Attract - TM45
  (371, 37100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Bagon - Round - TM48
  (371, 37100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Bagon - Incinerate - TM59
  (371, 37100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 33),
  -- Bagon - Shadow Claw - TM65
  (371, 37100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 34),
  -- Bagon - Rock Slide - TM80
  (371, 37100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Bagon - Swagger - TM87
  (371, 37100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Bagon - Sleep Talk - TM88
  (371, 37100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Bagon - Substitute - TM90
  (371, 37100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Bagon - Rock Smash - TM94
  (371, 37100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 39),
  -- Bagon - Confide - TM100
  (371, 37100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Bagon - Cut - HM01
  (371, 37100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 41),
  -- Bagon - Strength - HM04
  (371, 37100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 42),
  -- Bagon - Thrash - Egg
  (371, 37100, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bagon - Hydro Pump - Egg
  (371, 37100, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bagon - Dragon Rage - Egg
  (371, 37100, 82, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bagon - Defense Curl - Egg
  (371, 37100, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bagon - Endure - Egg
  (371, 37100, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bagon - Twister - Egg
  (371, 37100, 239, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bagon - Dragon Dance - Egg
  (371, 37100, 349, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bagon - Dragon Pulse - Egg
  (371, 37100, 406, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bagon - Dragon Rush - Egg
  (371, 37100, 407, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bagon - Fire Fang - Egg
  (371, 37100, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bagon - Draco Meteor - Tutor
  (371, 37100, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 53),
  -- Shelgon - Headbutt - Level 1
  (372, 37200, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Rage - Level 1
  (372, 37200, 99, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shelgon - Bite - Level 5
  (372, 37200, 44, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Shelgon - Leer - Level 10
  (372, 37200, 43, 13, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Shelgon - Headbutt - Level 16
  (372, 37200, 29, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Shelgon - Focus Energy - Level 20
  (372, 37200, 116, 13, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Shelgon - Ember - Level 25
  (372, 37200, 52, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Shelgon - Protect - Level 30
  (372, 37200, 182, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Shelgon - Dragon Breath - Level 32
  (372, 37200, 225, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Shelgon - Zen Headbutt - Level 37
  (372, 37200, 428, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Shelgon - Scary Face - Level 43
  (372, 37200, 184, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Shelgon - Crunch - Level 50
  (372, 37200, 242, 13, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Shelgon - Dragon Claw - Level 55
  (372, 37200, 337, 13, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Shelgon - Double-Edge - Level 61
  (372, 37200, 38, 13, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Shelgon - Hone Claws - TM01
  (372, 37200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Shelgon - Dragon Claw - TM02
  (372, 37200, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 18),
  -- Shelgon - Roar - TM05
  (372, 37200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 19),
  -- Shelgon - Toxic - TM06
  (372, 37200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Shelgon - Hidden Power - TM10
  (372, 37200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Shelgon - Sunny Day - TM11
  (372, 37200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Shelgon - Protect - TM17
  (372, 37200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Shelgon - Rain Dance - TM18
  (372, 37200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Shelgon - Frustration - TM21
  (372, 37200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Shelgon - Return - TM27
  (372, 37200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Shelgon - Brick Break - TM31
  (372, 37200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Shelgon - Double Team - TM32
  (372, 37200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Shelgon - Flamethrower - TM35
  (372, 37200, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 29),
  -- Shelgon - Fire Blast - TM38
  (372, 37200, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 30),
  -- Shelgon - Rock Tomb - TM39
  (372, 37200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 31),
  -- Shelgon - Aerial Ace - TM40
  (372, 37200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 32),
  -- Shelgon - Facade - TM42
  (372, 37200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Shelgon - Rest - TM44
  (372, 37200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Shelgon - Attract - TM45
  (372, 37200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Shelgon - Round - TM48
  (372, 37200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Shelgon - Incinerate - TM59
  (372, 37200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 37),
  -- Shelgon - Shadow Claw - TM65
  (372, 37200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 38),
  -- Shelgon - Rock Slide - TM80
  (372, 37200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Shelgon - Swagger - TM87
  (372, 37200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Shelgon - Sleep Talk - TM88
  (372, 37200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Shelgon - Substitute - TM90
  (372, 37200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Shelgon - Rock Smash - TM94
  (372, 37200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Shelgon - Confide - TM100
  (372, 37200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Shelgon - Cut - HM01
  (372, 37200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 45),
  -- Shelgon - Strength - HM04
  (372, 37200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Shelgon - Draco Meteor - Tutor
  (372, 37200, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 47),
  -- Salamence - Headbutt - Level 1
  (373, 37300, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Double-Edge - Level 1
  (373, 37300, 38, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Rage - Level 1
  (373, 37300, 99, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salamence - Thunder Fang - Level 1
  (373, 37300, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salamence - Fire Fang - Level 1
  (373, 37300, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salamence - Bite - Level 5
  (373, 37300, 44, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Salamence - Leer - Level 10
  (373, 37300, 43, 13, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Salamence - Headbutt - Level 16
  (373, 37300, 29, 13, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Salamence - Focus Energy - Level 20
  (373, 37300, 116, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Salamence - Ember - Level 25
  (373, 37300, 52, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Salamence - Protect - Level 30
  (373, 37300, 182, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Salamence - Dragon Breath - Level 32
  (373, 37300, 225, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Salamence - Zen Headbutt - Level 37
  (373, 37300, 428, 13, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Salamence - Scary Face - Level 43
  (373, 37300, 184, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Salamence - Fly - Level 50
  (373, 37300, 19, 13, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Salamence - Crunch - Level 53
  (373, 37300, 242, 13, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Salamence - Dragon Claw - Level 61
  (373, 37300, 337, 13, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Salamence - Double-Edge - Level 70
  (373, 37300, 38, 13, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Salamence - Dragon Tail - Level 80
  (373, 37300, 525, 13, NULL, 1, 80, NULL, NULL, NULL, 21),
  -- Salamence - Hone Claws - TM01
  (373, 37300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 22),
  -- Salamence - Dragon Claw - TM02
  (373, 37300, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 23),
  -- Salamence - Roar - TM05
  (373, 37300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 24),
  -- Salamence - Toxic - TM06
  (373, 37300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 25),
  -- Salamence - Hidden Power - TM10
  (373, 37300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 26),
  -- Salamence - Sunny Day - TM11
  (373, 37300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 27),
  -- Salamence - Hyper Beam - TM15
  (373, 37300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 28),
  -- Salamence - Protect - TM17
  (373, 37300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 29),
  -- Salamence - Rain Dance - TM18
  (373, 37300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 30),
  -- Salamence - Roost - TM19
  (373, 37300, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 31),
  -- Salamence - Frustration - TM21
  (373, 37300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 32),
  -- Salamence - Earthquake - TM26
  (373, 37300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 33),
  -- Salamence - Return - TM27
  (373, 37300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 34),
  -- Salamence - Brick Break - TM31
  (373, 37300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 35),
  -- Salamence - Double Team - TM32
  (373, 37300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 36),
  -- Salamence - Flamethrower - TM35
  (373, 37300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 37),
  -- Salamence - Fire Blast - TM38
  (373, 37300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 38),
  -- Salamence - Rock Tomb - TM39
  (373, 37300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 39),
  -- Salamence - Aerial Ace - TM40
  (373, 37300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 40),
  -- Salamence - Facade - TM42
  (373, 37300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Salamence - Rest - TM44
  (373, 37300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Salamence - Attract - TM45
  (373, 37300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Salamence - Round - TM48
  (373, 37300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Salamence - Steel Wing - TM51
  (373, 37300, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 45),
  -- Salamence - Incinerate - TM59
  (373, 37300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 46),
  -- Salamence - Shadow Claw - TM65
  (373, 37300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 47),
  -- Salamence - Giga Impact - TM68
  (373, 37300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Salamence - Stone Edge - TM71
  (373, 37300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 49),
  -- Salamence - Bulldoze - TM78
  (373, 37300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Salamence - Rock Slide - TM80
  (373, 37300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Salamence - Dragon Tail - TM82
  (373, 37300, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 52),
  -- Salamence - Swagger - TM87
  (373, 37300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Salamence - Sleep Talk - TM88
  (373, 37300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Salamence - Substitute - TM90
  (373, 37300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 55),
  -- Salamence - Rock Smash - TM94
  (373, 37300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 56),
  -- Salamence - Confide - TM100
  (373, 37300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Salamence - Cut - HM01
  (373, 37300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 58),
  -- Salamence - Fly - HM02
  (373, 37300, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 59),
  -- Salamence - Strength - HM04
  (373, 37300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 60),
  -- Salamence - Draco Meteor - Tutor
  (373, 37300, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 61),
  -- Beldum - Take Down - Level 1
  (374, 37400, 36, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Take Down - Level 1
  (375, 37500, 36, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Confusion - Level 1
  (375, 37500, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metang - Metal Claw - Level 1
  (375, 37500, 232, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metang - Magnet Rise - Level 1
  (375, 37500, 393, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metang - Confusion - Level 20
  (375, 37500, 93, 13, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Metang - Metal Claw - Level 20
  (375, 37500, 232, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Metang - Pursuit - Level 23
  (375, 37500, 228, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Metang - Miracle Eye - Level 26
  (375, 37500, 357, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Metang - Zen Headbutt - Level 29
  (375, 37500, 428, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Metang - Bullet Punch - Level 32
  (375, 37500, 418, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Metang - Scary Face - Level 35
  (375, 37500, 184, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Metang - Agility - Level 38
  (375, 37500, 97, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Metang - Psychic - Level 41
  (375, 37500, 94, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Metang - Meteor Mash - Level 44
  (375, 37500, 309, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Metang - Iron Defense - Level 47
  (375, 37500, 334, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Metang - Hyper Beam - Level 50
  (375, 37500, 63, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Metang - Hone Claws - TM01
  (375, 37500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Metang - Psyshock - TM03
  (375, 37500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Metang - Toxic - TM06
  (375, 37500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Metang - Hidden Power - TM10
  (375, 37500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Metang - Sunny Day - TM11
  (375, 37500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Metang - Hyper Beam - TM15
  (375, 37500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Metang - Light Screen - TM16
  (375, 37500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Metang - Protect - TM17
  (375, 37500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Metang - Rain Dance - TM18
  (375, 37500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Metang - Frustration - TM21
  (375, 37500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Metang - Earthquake - TM26
  (375, 37500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Metang - Return - TM27
  (375, 37500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Metang - Psychic - TM29
  (375, 37500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 29),
  -- Metang - Shadow Ball - TM30
  (375, 37500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 30),
  -- Metang - Brick Break - TM31
  (375, 37500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Metang - Double Team - TM32
  (375, 37500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Metang - Reflect - TM33
  (375, 37500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 33),
  -- Metang - Sludge Bomb - TM36
  (375, 37500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 34),
  -- Metang - Sandstorm - TM37
  (375, 37500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Metang - Rock Tomb - TM39
  (375, 37500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Metang - Aerial Ace - TM40
  (375, 37500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Metang - Facade - TM42
  (375, 37500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Metang - Rest - TM44
  (375, 37500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Metang - Round - TM48
  (375, 37500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Metang - Explosion - TM64
  (375, 37500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 41),
  -- Metang - Rock Polish - TM69
  (375, 37500, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 42),
  -- Metang - Flash - TM70
  (375, 37500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Metang - Gyro Ball - TM74
  (375, 37500, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 44),
  -- Metang - Psych Up - TM77
  (375, 37500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Metang - Bulldoze - TM78
  (375, 37500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 46),
  -- Metang - Rock Slide - TM80
  (375, 37500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Metang - Grass Knot - TM86
  (375, 37500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Metang - Swagger - TM87
  (375, 37500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Metang - Sleep Talk - TM88
  (375, 37500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Metang - Substitute - TM90
  (375, 37500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Metang - Flash Cannon - TM91
  (375, 37500, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 52),
  -- Metang - Rock Smash - TM94
  (375, 37500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Metang - Power-Up Punch - TM98
  (375, 37500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Metang - Confide - TM100
  (375, 37500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Metang - Cut - HM01
  (375, 37500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 56),
  -- Metang - Strength - HM04
  (375, 37500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Metagross - Take Down - Level 1
  (376, 37600, 36, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Magnet Rise - Level 1
  (376, 37600, 393, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Confusion - Level 20
  (376, 37600, 93, 13, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Metagross - Metal Claw - Level 20
  (376, 37600, 232, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Metagross - Pursuit - Level 23
  (376, 37600, 228, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Metagross - Miracle Eye - Level 26
  (376, 37600, 357, 13, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Metagross - Zen Headbutt - Level 29
  (376, 37600, 428, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Metagross - Bullet Punch - Level 32
  (376, 37600, 418, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Metagross - Scary Face - Level 35
  (376, 37600, 184, 13, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Metagross - Agility - Level 38
  (376, 37600, 97, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Metagross - Psychic - Level 41
  (376, 37600, 94, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Metagross - Meteor Mash - Level 44
  (376, 37600, 309, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Metagross - Hammer Arm - Level 45
  (376, 37600, 359, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Metagross - Iron Defense - Level 53
  (376, 37600, 334, 13, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Metagross - Hyper Beam - Level 62
  (376, 37600, 63, 13, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Metagross - Hone Claws - TM01
  (376, 37600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Metagross - Psyshock - TM03
  (376, 37600, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 19),
  -- Metagross - Toxic - TM06
  (376, 37600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Metagross - Hidden Power - TM10
  (376, 37600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Metagross - Sunny Day - TM11
  (376, 37600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Metagross - Hyper Beam - TM15
  (376, 37600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Metagross - Light Screen - TM16
  (376, 37600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Metagross - Protect - TM17
  (376, 37600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Metagross - Rain Dance - TM18
  (376, 37600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Metagross - Frustration - TM21
  (376, 37600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Metagross - Earthquake - TM26
  (376, 37600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Metagross - Return - TM27
  (376, 37600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Metagross - Psychic - TM29
  (376, 37600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 30),
  -- Metagross - Shadow Ball - TM30
  (376, 37600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Metagross - Brick Break - TM31
  (376, 37600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Metagross - Double Team - TM32
  (376, 37600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Metagross - Reflect - TM33
  (376, 37600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 34),
  -- Metagross - Sludge Bomb - TM36
  (376, 37600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 35),
  -- Metagross - Sandstorm - TM37
  (376, 37600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 36),
  -- Metagross - Rock Tomb - TM39
  (376, 37600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Metagross - Aerial Ace - TM40
  (376, 37600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Metagross - Facade - TM42
  (376, 37600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Metagross - Rest - TM44
  (376, 37600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Metagross - Round - TM48
  (376, 37600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Metagross - Explosion - TM64
  (376, 37600, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 42),
  -- Metagross - Giga Impact - TM68
  (376, 37600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Metagross - Rock Polish - TM69
  (376, 37600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 44),
  -- Metagross - Flash - TM70
  (376, 37600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 45),
  -- Metagross - Gyro Ball - TM74
  (376, 37600, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 46),
  -- Metagross - Psych Up - TM77
  (376, 37600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Metagross - Bulldoze - TM78
  (376, 37600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Metagross - Rock Slide - TM80
  (376, 37600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Metagross - Grass Knot - TM86
  (376, 37600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Metagross - Swagger - TM87
  (376, 37600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Metagross - Sleep Talk - TM88
  (376, 37600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Metagross - Substitute - TM90
  (376, 37600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Metagross - Flash Cannon - TM91
  (376, 37600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 54),
  -- Metagross - Rock Smash - TM94
  (376, 37600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Metagross - Power-Up Punch - TM98
  (376, 37600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Metagross - Confide - TM100
  (376, 37600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Metagross - Cut - HM01
  (376, 37600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 58),
  -- Metagross - Strength - HM04
  (376, 37600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Regirock - Stomp - Level 1
  (377, 37700, 23, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regirock - Explosion - Level 1
  (377, 37700, 153, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regirock - Zap Cannon - Level 1
  (377, 37700, 192, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regirock - Lock-On - Level 1
  (377, 37700, 199, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regirock - Hammer Arm - Level 1
  (377, 37700, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regirock - Rock Throw - Level 9
  (377, 37700, 88, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Regirock - Curse - Level 17
  (377, 37700, 174, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Regirock - Superpower - Level 25
  (377, 37700, 276, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Regirock - Ancient Power - Level 33
  (377, 37700, 246, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Regirock - Iron Defense - Level 41
  (377, 37700, 334, 13, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Regirock - Charge Beam - Level 49
  (377, 37700, 451, 13, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Regirock - Lock-On - Level 57
  (377, 37700, 199, 13, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Regirock - Zap Cannon - Level 65
  (377, 37700, 192, 13, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Regirock - Stone Edge - Level 73
  (377, 37700, 444, 13, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Regirock - Hammer Arm - Level 81
  (377, 37700, 359, 13, NULL, 1, 81, NULL, NULL, NULL, 15),
  -- Regirock - Hyper Beam - Level 89
  (377, 37700, 63, 13, NULL, 1, 89, NULL, NULL, NULL, 16),
  -- Regirock - Toxic - TM06
  (377, 37700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Regirock - Hidden Power - TM10
  (377, 37700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Regirock - Sunny Day - TM11
  (377, 37700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Regirock - Hyper Beam - TM15
  (377, 37700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Regirock - Protect - TM17
  (377, 37700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Regirock - Safeguard - TM20
  (377, 37700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 22),
  -- Regirock - Frustration - TM21
  (377, 37700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Regirock - Smack Down - TM23
  (377, 37700, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 24),
  -- Regirock - Thunderbolt - TM24
  (377, 37700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 25),
  -- Regirock - Thunder - TM25
  (377, 37700, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 26),
  -- Regirock - Earthquake - TM26
  (377, 37700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Regirock - Return - TM27
  (377, 37700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Regirock - Dig - TM28
  (377, 37700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Regirock - Brick Break - TM31
  (377, 37700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Regirock - Double Team - TM32
  (377, 37700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Regirock - Sandstorm - TM37
  (377, 37700, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 32),
  -- Regirock - Rock Tomb - TM39
  (377, 37700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Regirock - Facade - TM42
  (377, 37700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Regirock - Rest - TM44
  (377, 37700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Regirock - Round - TM48
  (377, 37700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Regirock - Focus Blast - TM52
  (377, 37700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 37),
  -- Regirock - Fling - TM56
  (377, 37700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Regirock - Charge Beam - TM57
  (377, 37700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Regirock - Explosion - TM64
  (377, 37700, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 40),
  -- Regirock - Giga Impact - TM68
  (377, 37700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Regirock - Rock Polish - TM69
  (377, 37700, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 42),
  -- Regirock - Stone Edge - TM71
  (377, 37700, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 43),
  -- Regirock - Thunder Wave - TM73
  (377, 37700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Regirock - Psych Up - TM77
  (377, 37700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 45),
  -- Regirock - Bulldoze - TM78
  (377, 37700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 46),
  -- Regirock - Rock Slide - TM80
  (377, 37700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Regirock - Swagger - TM87
  (377, 37700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Regirock - Sleep Talk - TM88
  (377, 37700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Regirock - Substitute - TM90
  (377, 37700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Regirock - Rock Smash - TM94
  (377, 37700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Regirock - Power-Up Punch - TM98
  (377, 37700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 52),
  -- Regirock - Confide - TM100
  (377, 37700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Regirock - Strength - HM04
  (377, 37700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Regice - Stomp - Level 1
  (378, 37800, 23, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regice - Explosion - Level 1
  (378, 37800, 153, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regice - Zap Cannon - Level 1
  (378, 37800, 192, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Regice - Lock-On - Level 1
  (378, 37800, 199, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Regice - Hammer Arm - Level 1
  (378, 37800, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Regice - Icy Wind - Level 9
  (378, 37800, 196, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Regice - Curse - Level 17
  (378, 37800, 174, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Regice - Superpower - Level 25
  (378, 37800, 276, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Regice - Ancient Power - Level 33
  (378, 37800, 246, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Regice - Amnesia - Level 41
  (378, 37800, 133, 13, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Regice - Charge Beam - Level 49
  (378, 37800, 451, 13, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Regice - Lock-On - Level 57
  (378, 37800, 199, 13, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Regice - Zap Cannon - Level 65
  (378, 37800, 192, 13, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Regice - Ice Beam - Level 73
  (378, 37800, 58, 13, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Regice - Hammer Arm - Level 81
  (378, 37800, 359, 13, NULL, 1, 81, NULL, NULL, NULL, 15),
  -- Regice - Hyper Beam - Level 89
  (378, 37800, 63, 13, NULL, 1, 89, NULL, NULL, NULL, 16),
  -- Regice - Toxic - TM06
  (378, 37800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Regice - Hail - TM07
  (378, 37800, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Regice - Hidden Power - TM10
  (378, 37800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Regice - Ice Beam - TM13
  (378, 37800, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Regice - Blizzard - TM14
  (378, 37800, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Regice - Hyper Beam - TM15
  (378, 37800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Regice - Protect - TM17
  (378, 37800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Regice - Rain Dance - TM18
  (378, 37800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Regice - Safeguard - TM20
  (378, 37800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Regice - Frustration - TM21
  (378, 37800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Regice - Thunderbolt - TM24
  (378, 37800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Regice - Thunder - TM25
  (378, 37800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Regice - Earthquake - TM26
  (378, 37800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Regice - Return - TM27
  (378, 37800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Regice - Brick Break - TM31
  (378, 37800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 31),
  -- Regice - Double Team - TM32
  (378, 37800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Regice - Rock Tomb - TM39
  (378, 37800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Regice - Facade - TM42
  (378, 37800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Regice - Rest - TM44
  (378, 37800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Regice - Round - TM48
  (378, 37800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Regice - Focus Blast - TM52
  (378, 37800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 37),
  -- Regice - Fling - TM56
  (378, 37800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Regice - Charge Beam - TM57
  (378, 37800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Regice - Explosion - TM64
  (378, 37800, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 40),
  -- Regice - Giga Impact - TM68
  (378, 37800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 41),
  -- Regice - Rock Polish - TM69
  (378, 37800, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 42),
  -- Regice - Thunder Wave - TM73
  (378, 37800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 43),
  -- Regice - Psych Up - TM77
  (378, 37800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 44),
  -- Regice - Bulldoze - TM78
  (378, 37800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Regice - Frost Breath - TM79
  (378, 37800, 524, 13, NULL, 2, NULL, NULL, 13002079, NULL, 46),
  -- Regice - Rock Slide - TM80
  (378, 37800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Regice - Swagger - TM87
  (378, 37800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Regice - Sleep Talk - TM88
  (378, 37800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Regice - Substitute - TM90
  (378, 37800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Regice - Flash Cannon - TM91
  (378, 37800, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 51),
  -- Regice - Rock Smash - TM94
  (378, 37800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 52),
  -- Regice - Power-Up Punch - TM98
  (378, 37800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 53),
  -- Regice - Confide - TM100
  (378, 37800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Regice - Strength - HM04
  (378, 37800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Registeel - Stomp - Level 1
  (379, 37900, 23, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Registeel - Explosion - Level 1
  (379, 37900, 153, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Registeel - Zap Cannon - Level 1
  (379, 37900, 192, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Registeel - Lock-On - Level 1
  (379, 37900, 199, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Registeel - Hammer Arm - Level 1
  (379, 37900, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Registeel - Iron Head - Level 1
  (379, 37900, 442, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Registeel - Metal Claw - Level 9
  (379, 37900, 232, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Registeel - Curse - Level 17
  (379, 37900, 174, 13, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Registeel - Superpower - Level 25
  (379, 37900, 276, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Registeel - Ancient Power - Level 33
  (379, 37900, 246, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Registeel - Amnesia - Level 41
  (379, 37900, 133, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Registeel - Iron Defense - Level 41
  (379, 37900, 334, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Registeel - Charge Beam - Level 49
  (379, 37900, 451, 13, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Registeel - Lock-On - Level 57
  (379, 37900, 199, 13, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Registeel - Zap Cannon - Level 65
  (379, 37900, 192, 13, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Registeel - Flash Cannon - Level 73
  (379, 37900, 430, 13, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Registeel - Iron Head - Level 73
  (379, 37900, 442, 13, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Registeel - Hammer Arm - Level 81
  (379, 37900, 359, 13, NULL, 1, 81, NULL, NULL, NULL, 18),
  -- Registeel - Hyper Beam - Level 89
  (379, 37900, 63, 13, NULL, 1, 89, NULL, NULL, NULL, 19),
  -- Registeel - Hone Claws - TM01
  (379, 37900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Registeel - Toxic - TM06
  (379, 37900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Registeel - Hidden Power - TM10
  (379, 37900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Registeel - Sunny Day - TM11
  (379, 37900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Registeel - Hyper Beam - TM15
  (379, 37900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Registeel - Protect - TM17
  (379, 37900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Registeel - Rain Dance - TM18
  (379, 37900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Registeel - Safeguard - TM20
  (379, 37900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Registeel - Frustration - TM21
  (379, 37900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Registeel - Thunderbolt - TM24
  (379, 37900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Registeel - Thunder - TM25
  (379, 37900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Registeel - Earthquake - TM26
  (379, 37900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 31),
  -- Registeel - Return - TM27
  (379, 37900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 32),
  -- Registeel - Brick Break - TM31
  (379, 37900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Registeel - Double Team - TM32
  (379, 37900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Registeel - Sandstorm - TM37
  (379, 37900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Registeel - Rock Tomb - TM39
  (379, 37900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 36),
  -- Registeel - Aerial Ace - TM40
  (379, 37900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 37),
  -- Registeel - Facade - TM42
  (379, 37900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Registeel - Rest - TM44
  (379, 37900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 39),
  -- Registeel - Round - TM48
  (379, 37900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 40),
  -- Registeel - Focus Blast - TM52
  (379, 37900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 41),
  -- Registeel - Fling - TM56
  (379, 37900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Registeel - Charge Beam - TM57
  (379, 37900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 43),
  -- Registeel - Explosion - TM64
  (379, 37900, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 44),
  -- Registeel - Shadow Claw - TM65
  (379, 37900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Registeel - Giga Impact - TM68
  (379, 37900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Registeel - Rock Polish - TM69
  (379, 37900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 47),
  -- Registeel - Thunder Wave - TM73
  (379, 37900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 48),
  -- Registeel - Psych Up - TM77
  (379, 37900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 49),
  -- Registeel - Bulldoze - TM78
  (379, 37900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 50),
  -- Registeel - Rock Slide - TM80
  (379, 37900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 51),
  -- Registeel - Swagger - TM87
  (379, 37900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Registeel - Sleep Talk - TM88
  (379, 37900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Registeel - Substitute - TM90
  (379, 37900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Registeel - Flash Cannon - TM91
  (379, 37900, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 55),
  -- Registeel - Rock Smash - TM94
  (379, 37900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 56),
  -- Registeel - Power-Up Punch - TM98
  (379, 37900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 57),
  -- Registeel - Confide - TM100
  (379, 37900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Registeel - Strength - HM04
  (379, 37900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Latias - Psywave - Level 1
  (380, 38000, 149, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Charm - Level 1
  (380, 38000, 204, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latias - Healing Wish - Level 1
  (380, 38000, 361, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Latias - Dragon Pulse - Level 1
  (380, 38000, 406, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Latias - Guard Split - Level 1
  (380, 38000, 470, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Latias - Heal Pulse - Level 1
  (380, 38000, 505, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Latias - Reflect Type - Level 1
  (380, 38000, 513, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Latias - Wish - Level 5
  (380, 38000, 273, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Latias - Helping Hand - Level 10
  (380, 38000, 270, 13, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Latias - Safeguard - Level 15
  (380, 38000, 219, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Latias - Dragon Breath - Level 20
  (380, 38000, 225, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Latias - Water Sport - Level 25
  (380, 38000, 346, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Latias - Refresh - Level 30
  (380, 38000, 287, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Latias - Mist Ball - Level 35
  (380, 38000, 296, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Latias - Zen Headbutt - Level 40
  (380, 38000, 428, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Latias - Recover - Level 45
  (380, 38000, 105, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Latias - Psycho Shift - Level 50
  (380, 38000, 375, 13, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Latias - Charm - Level 55
  (380, 38000, 204, 13, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Latias - Psychic - Level 60
  (380, 38000, 94, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Latias - Heal Pulse - Level 65
  (380, 38000, 505, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Latias - Reflect Type - Level 70
  (380, 38000, 513, 13, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Latias - Guard Split - Level 75
  (380, 38000, 470, 13, NULL, 1, 75, NULL, NULL, NULL, 22),
  -- Latias - Dragon Pulse - Level 80
  (380, 38000, 406, 13, NULL, 1, 80, NULL, NULL, NULL, 23),
  -- Latias - Healing Wish - Level 85
  (380, 38000, 361, 13, NULL, 1, 85, NULL, NULL, NULL, 24),
  -- Latias - Hone Claws - TM01
  (380, 38000, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 25),
  -- Latias - Dragon Claw - TM02
  (380, 38000, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 26),
  -- Latias - Psyshock - TM03
  (380, 38000, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 27),
  -- Latias - Calm Mind - TM04
  (380, 38000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 28),
  -- Latias - Roar - TM05
  (380, 38000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 29),
  -- Latias - Toxic - TM06
  (380, 38000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 30),
  -- Latias - Hidden Power - TM10
  (380, 38000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 31),
  -- Latias - Sunny Day - TM11
  (380, 38000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 32),
  -- Latias - Ice Beam - TM13
  (380, 38000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 33),
  -- Latias - Hyper Beam - TM15
  (380, 38000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 34),
  -- Latias - Light Screen - TM16
  (380, 38000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 35),
  -- Latias - Protect - TM17
  (380, 38000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 36),
  -- Latias - Rain Dance - TM18
  (380, 38000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 37),
  -- Latias - Roost - TM19
  (380, 38000, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 38),
  -- Latias - Safeguard - TM20
  (380, 38000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 39),
  -- Latias - Frustration - TM21
  (380, 38000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 40),
  -- Latias - Solar Beam - TM22
  (380, 38000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 41),
  -- Latias - Thunderbolt - TM24
  (380, 38000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 42),
  -- Latias - Thunder - TM25
  (380, 38000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 43),
  -- Latias - Earthquake - TM26
  (380, 38000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 44),
  -- Latias - Return - TM27
  (380, 38000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 45),
  -- Latias - Psychic - TM29
  (380, 38000, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 46),
  -- Latias - Shadow Ball - TM30
  (380, 38000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 47),
  -- Latias - Double Team - TM32
  (380, 38000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 48),
  -- Latias - Reflect - TM33
  (380, 38000, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 49),
  -- Latias - Sandstorm - TM37
  (380, 38000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 50),
  -- Latias - Aerial Ace - TM40
  (380, 38000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 51),
  -- Latias - Facade - TM42
  (380, 38000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 52),
  -- Latias - Rest - TM44
  (380, 38000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 53),
  -- Latias - Attract - TM45
  (380, 38000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 54),
  -- Latias - Round - TM48
  (380, 38000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 55),
  -- Latias - Steel Wing - TM51
  (380, 38000, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 56),
  -- Latias - Energy Ball - TM53
  (380, 38000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 57),
  -- Latias - Charge Beam - TM57
  (380, 38000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 58),
  -- Latias - Shadow Claw - TM65
  (380, 38000, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 59),
  -- Latias - Retaliate - TM67
  (380, 38000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 60),
  -- Latias - Giga Impact - TM68
  (380, 38000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 61),
  -- Latias - Flash - TM70
  (380, 38000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 62),
  -- Latias - Thunder Wave - TM73
  (380, 38000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 63),
  -- Latias - Psych Up - TM77
  (380, 38000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 64),
  -- Latias - Bulldoze - TM78
  (380, 38000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 65),
  -- Latias - Dream Eater - TM85
  (380, 38000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 66),
  -- Latias - Grass Knot - TM86
  (380, 38000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 67),
  -- Latias - Swagger - TM87
  (380, 38000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 68),
  -- Latias - Sleep Talk - TM88
  (380, 38000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 69),
  -- Latias - Substitute - TM90
  (380, 38000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 70),
  -- Latias - Confide - TM100
  (380, 38000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 71),
  -- Latias - Cut - HM01
  (380, 38000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 72),
  -- Latias - Fly - HM02
  (380, 38000, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 73),
  -- Latias - Surf - HM03
  (380, 38000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 74),
  -- Latias - Waterfall - HM05
  (380, 38000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 75),
  -- Latias - Draco Meteor - Tutor
  (380, 38000, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 76),
  -- Latios - Psywave - Level 1
  (381, 38100, 149, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Memento - Level 1
  (381, 38100, 262, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latios - Dragon Dance - Level 1
  (381, 38100, 349, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Latios - Dragon Pulse - Level 1
  (381, 38100, 406, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Latios - Power Split - Level 1
  (381, 38100, 471, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Latios - Telekinesis - Level 1
  (381, 38100, 477, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Latios - Heal Pulse - Level 1
  (381, 38100, 505, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Latios - Heal Block - Level 5
  (381, 38100, 377, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Latios - Helping Hand - Level 10
  (381, 38100, 270, 13, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Latios - Safeguard - Level 15
  (381, 38100, 219, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Latios - Dragon Breath - Level 20
  (381, 38100, 225, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Latios - Protect - Level 25
  (381, 38100, 182, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Latios - Refresh - Level 30
  (381, 38100, 287, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Latios - Luster Purge - Level 35
  (381, 38100, 295, 13, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Latios - Zen Headbutt - Level 40
  (381, 38100, 428, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Latios - Recover - Level 45
  (381, 38100, 105, 13, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Latios - Psycho Shift - Level 50
  (381, 38100, 375, 13, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Latios - Dragon Dance - Level 55
  (381, 38100, 349, 13, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Latios - Psychic - Level 60
  (381, 38100, 94, 13, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Latios - Heal Pulse - Level 65
  (381, 38100, 505, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Latios - Telekinesis - Level 70
  (381, 38100, 477, 13, NULL, 1, 70, NULL, NULL, NULL, 21),
  -- Latios - Power Split - Level 75
  (381, 38100, 471, 13, NULL, 1, 75, NULL, NULL, NULL, 22),
  -- Latios - Dragon Pulse - Level 80
  (381, 38100, 406, 13, NULL, 1, 80, NULL, NULL, NULL, 23),
  -- Latios - Memento - Level 85
  (381, 38100, 262, 13, NULL, 1, 85, NULL, NULL, NULL, 24),
  -- Latios - Hone Claws - TM01
  (381, 38100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 25),
  -- Latios - Dragon Claw - TM02
  (381, 38100, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 26),
  -- Latios - Psyshock - TM03
  (381, 38100, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 27),
  -- Latios - Calm Mind - TM04
  (381, 38100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 28),
  -- Latios - Roar - TM05
  (381, 38100, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 29),
  -- Latios - Toxic - TM06
  (381, 38100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 30),
  -- Latios - Hidden Power - TM10
  (381, 38100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 31),
  -- Latios - Sunny Day - TM11
  (381, 38100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 32),
  -- Latios - Ice Beam - TM13
  (381, 38100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 33),
  -- Latios - Hyper Beam - TM15
  (381, 38100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 34),
  -- Latios - Light Screen - TM16
  (381, 38100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 35),
  -- Latios - Protect - TM17
  (381, 38100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 36),
  -- Latios - Rain Dance - TM18
  (381, 38100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 37),
  -- Latios - Roost - TM19
  (381, 38100, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 38),
  -- Latios - Safeguard - TM20
  (381, 38100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 39),
  -- Latios - Frustration - TM21
  (381, 38100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 40),
  -- Latios - Solar Beam - TM22
  (381, 38100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 41),
  -- Latios - Thunderbolt - TM24
  (381, 38100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 42),
  -- Latios - Thunder - TM25
  (381, 38100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 43),
  -- Latios - Earthquake - TM26
  (381, 38100, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 44),
  -- Latios - Return - TM27
  (381, 38100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 45),
  -- Latios - Psychic - TM29
  (381, 38100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 46),
  -- Latios - Shadow Ball - TM30
  (381, 38100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 47),
  -- Latios - Double Team - TM32
  (381, 38100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 48),
  -- Latios - Reflect - TM33
  (381, 38100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 49),
  -- Latios - Sandstorm - TM37
  (381, 38100, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 50),
  -- Latios - Aerial Ace - TM40
  (381, 38100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 51),
  -- Latios - Facade - TM42
  (381, 38100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 52),
  -- Latios - Rest - TM44
  (381, 38100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 53),
  -- Latios - Attract - TM45
  (381, 38100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 54),
  -- Latios - Round - TM48
  (381, 38100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 55),
  -- Latios - Steel Wing - TM51
  (381, 38100, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 56),
  -- Latios - Energy Ball - TM53
  (381, 38100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 57),
  -- Latios - Charge Beam - TM57
  (381, 38100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 58),
  -- Latios - Shadow Claw - TM65
  (381, 38100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 59),
  -- Latios - Retaliate - TM67
  (381, 38100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 60),
  -- Latios - Giga Impact - TM68
  (381, 38100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 61),
  -- Latios - Flash - TM70
  (381, 38100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 62),
  -- Latios - Thunder Wave - TM73
  (381, 38100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 63),
  -- Latios - Psych Up - TM77
  (381, 38100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 64),
  -- Latios - Bulldoze - TM78
  (381, 38100, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 65),
  -- Latios - Dream Eater - TM85
  (381, 38100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 66),
  -- Latios - Grass Knot - TM86
  (381, 38100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 67),
  -- Latios - Swagger - TM87
  (381, 38100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 68),
  -- Latios - Sleep Talk - TM88
  (381, 38100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 69),
  -- Latios - Substitute - TM90
  (381, 38100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 70),
  -- Latios - Confide - TM100
  (381, 38100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 71),
  -- Latios - Cut - HM01
  (381, 38100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 72),
  -- Latios - Fly - HM02
  (381, 38100, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 73),
  -- Latios - Surf - HM03
  (381, 38100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 74),
  -- Latios - Waterfall - HM05
  (381, 38100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 75),
  -- Latios - Draco Meteor - Tutor
  (381, 38100, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 76),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Scary Face - Level 5
  (382, 38200, 184, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Kyogre - Body Slam - Level 15
  (382, 38200, 34, 13, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Kyogre - Muddy Water - Level 20
  (382, 38200, 330, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Kyogre - Aqua Ring - Level 30
  (382, 38200, 392, 13, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Kyogre - Ice Beam - Level 35
  (382, 38200, 58, 13, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Kyogre - Ancient Power - Level 45
  (382, 38200, 246, 13, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Kyogre - Water Spout - Level 50
  (382, 38200, 323, 13, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Kyogre - Calm Mind - Level 60
  (382, 38200, 347, 13, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Kyogre - Aqua Tail - Level 65
  (382, 38200, 401, 13, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Kyogre - Sheer Cold - Level 75
  (382, 38200, 329, 13, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Kyogre - Double-Edge - Level 80
  (382, 38200, 38, 13, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Kyogre - Hydro Pump - Level 90
  (382, 38200, 56, 13, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Kyogre - Calm Mind - TM04
  (382, 38200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 14),
  -- Kyogre - Roar - TM05
  (382, 38200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 15),
  -- Kyogre - Toxic - TM06
  (382, 38200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Kyogre - Hail - TM07
  (382, 38200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Kyogre - Hidden Power - TM10
  (382, 38200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Kyogre - Ice Beam - TM13
  (382, 38200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 19),
  -- Kyogre - Blizzard - TM14
  (382, 38200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 20),
  -- Kyogre - Hyper Beam - TM15
  (382, 38200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Kyogre - Protect - TM17
  (382, 38200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Kyogre - Rain Dance - TM18
  (382, 38200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Kyogre - Safeguard - TM20
  (382, 38200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Kyogre - Frustration - TM21
  (382, 38200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Kyogre - Thunderbolt - TM24
  (382, 38200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Kyogre - Thunder - TM25
  (382, 38200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 27),
  -- Kyogre - Earthquake - TM26
  (382, 38200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Kyogre - Return - TM27
  (382, 38200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Kyogre - Brick Break - TM31
  (382, 38200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Kyogre - Double Team - TM32
  (382, 38200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Kyogre - Rock Tomb - TM39
  (382, 38200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Kyogre - Facade - TM42
  (382, 38200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Kyogre - Rest - TM44
  (382, 38200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Kyogre - Round - TM48
  (382, 38200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Kyogre - Scald - TM55
  (382, 38200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 36),
  -- Kyogre - Giga Impact - TM68
  (382, 38200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Kyogre - Thunder Wave - TM73
  (382, 38200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Kyogre - Psych Up - TM77
  (382, 38200, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 39),
  -- Kyogre - Bulldoze - TM78
  (382, 38200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 40),
  -- Kyogre - Rock Slide - TM80
  (382, 38200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 41),
  -- Kyogre - Swagger - TM87
  (382, 38200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Kyogre - Sleep Talk - TM88
  (382, 38200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Kyogre - Substitute - TM90
  (382, 38200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Kyogre - Rock Smash - TM94
  (382, 38200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Kyogre - Confide - TM100
  (382, 38200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Kyogre - Surf - HM03
  (382, 38200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Kyogre - Strength - HM04
  (382, 38200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Kyogre - Waterfall - HM05
  (382, 38200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 49),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Scary Face - Level 5
  (383, 38300, 184, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Groudon - Lava Plume - Level 15
  (383, 38300, 436, 13, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Groudon - Hammer Arm - Level 20
  (383, 38300, 359, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Groudon - Rest - Level 30
  (383, 38300, 156, 13, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Groudon - Earthquake - Level 35
  (383, 38300, 89, 13, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Groudon - Ancient Power - Level 45
  (383, 38300, 246, 13, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Groudon - Eruption - Level 50
  (383, 38300, 284, 13, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Groudon - Bulk Up - Level 60
  (383, 38300, 339, 13, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Groudon - Earth Power - Level 65
  (383, 38300, 414, 13, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Groudon - Fissure - Level 75
  (383, 38300, 90, 13, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Groudon - Solar Beam - Level 80
  (383, 38300, 76, 13, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Groudon - Fire Blast - Level 90
  (383, 38300, 126, 13, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Groudon - Hone Claws - TM01
  (383, 38300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Groudon - Dragon Claw - TM02
  (383, 38300, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 15),
  -- Groudon - Roar - TM05
  (383, 38300, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Groudon - Toxic - TM06
  (383, 38300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Groudon - Bulk Up - TM08
  (383, 38300, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Groudon - Hidden Power - TM10
  (383, 38300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Groudon - Sunny Day - TM11
  (383, 38300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Groudon - Hyper Beam - TM15
  (383, 38300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Groudon - Protect - TM17
  (383, 38300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Groudon - Safeguard - TM20
  (383, 38300, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 23),
  -- Groudon - Frustration - TM21
  (383, 38300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Groudon - Solar Beam - TM22
  (383, 38300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Groudon - Smack Down - TM23
  (383, 38300, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 26),
  -- Groudon - Thunderbolt - TM24
  (383, 38300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 27),
  -- Groudon - Thunder - TM25
  (383, 38300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 28),
  -- Groudon - Earthquake - TM26
  (383, 38300, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Groudon - Return - TM27
  (383, 38300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Groudon - Dig - TM28
  (383, 38300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Groudon - Brick Break - TM31
  (383, 38300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Groudon - Double Team - TM32
  (383, 38300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Groudon - Flamethrower - TM35
  (383, 38300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Groudon - Sandstorm - TM37
  (383, 38300, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Groudon - Fire Blast - TM38
  (383, 38300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Groudon - Rock Tomb - TM39
  (383, 38300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Groudon - Aerial Ace - TM40
  (383, 38300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Groudon - Facade - TM42
  (383, 38300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Groudon - Rest - TM44
  (383, 38300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Groudon - Round - TM48
  (383, 38300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Groudon - Overheat - TM50
  (383, 38300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 42),
  -- Groudon - Focus Blast - TM52
  (383, 38300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 43),
  -- Groudon - Fling - TM56
  (383, 38300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 44),
  -- Groudon - Incinerate - TM59
  (383, 38300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 45),
  -- Groudon - Shadow Claw - TM65
  (383, 38300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 46),
  -- Groudon - Giga Impact - TM68
  (383, 38300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Groudon - Rock Polish - TM69
  (383, 38300, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 48),
  -- Groudon - Stone Edge - TM71
  (383, 38300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 49),
  -- Groudon - Thunder Wave - TM73
  (383, 38300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 50),
  -- Groudon - Swords Dance - TM75
  (383, 38300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 51),
  -- Groudon - Psych Up - TM77
  (383, 38300, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Groudon - Bulldoze - TM78
  (383, 38300, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 53),
  -- Groudon - Rock Slide - TM80
  (383, 38300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 54),
  -- Groudon - Dragon Tail - TM82
  (383, 38300, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 55),
  -- Groudon - Swagger - TM87
  (383, 38300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 56),
  -- Groudon - Sleep Talk - TM88
  (383, 38300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 57),
  -- Groudon - Substitute - TM90
  (383, 38300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Groudon - Rock Smash - TM94
  (383, 38300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 59),
  -- Groudon - Power-Up Punch - TM98
  (383, 38300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 60),
  -- Groudon - Confide - TM100
  (383, 38300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 61),
  -- Groudon - Cut - HM01
  (383, 38300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 62),
  -- Groudon - Strength - HM04
  (383, 38300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 63),
  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Scary Face - Level 5
  (384, 38400, 184, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Rayquaza - Crunch - Level 15
  (384, 38400, 242, 13, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Rayquaza - Hyper Voice - Level 20
  (384, 38400, 304, 13, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Rayquaza - Rest - Level 30
  (384, 38400, 156, 13, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Rayquaza - Air Slash - Level 35
  (384, 38400, 403, 13, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Rayquaza - Ancient Power - Level 45
  (384, 38400, 246, 13, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Rayquaza - Outrage - Level 50
  (384, 38400, 200, 13, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Rayquaza - Dragon Dance - Level 60
  (384, 38400, 349, 13, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Rayquaza - Fly - Level 65
  (384, 38400, 19, 13, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Rayquaza - Extreme Speed - Level 75
  (384, 38400, 245, 13, NULL, 1, 75, NULL, NULL, NULL, 11),
  -- Rayquaza - Hyper Beam - Level 80
  (384, 38400, 63, 13, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Rayquaza - Dragon Pulse - Level 90
  (384, 38400, 406, 13, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Rayquaza - Hone Claws - TM01
  (384, 38400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Rayquaza - Dragon Claw - TM02
  (384, 38400, 337, 13, NULL, 2, NULL, NULL, 13002002, NULL, 15),
  -- Rayquaza - Roar - TM05
  (384, 38400, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Rayquaza - Toxic - TM06
  (384, 38400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Rayquaza - Bulk Up - TM08
  (384, 38400, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Rayquaza - Hidden Power - TM10
  (384, 38400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Rayquaza - Sunny Day - TM11
  (384, 38400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Rayquaza - Ice Beam - TM13
  (384, 38400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Rayquaza - Blizzard - TM14
  (384, 38400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 22),
  -- Rayquaza - Hyper Beam - TM15
  (384, 38400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Rayquaza - Protect - TM17
  (384, 38400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Rayquaza - Rain Dance - TM18
  (384, 38400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Rayquaza - Frustration - TM21
  (384, 38400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Rayquaza - Solar Beam - TM22
  (384, 38400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Rayquaza - Thunderbolt - TM24
  (384, 38400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Rayquaza - Thunder - TM25
  (384, 38400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Rayquaza - Earthquake - TM26
  (384, 38400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Rayquaza - Return - TM27
  (384, 38400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Rayquaza - Brick Break - TM31
  (384, 38400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Rayquaza - Double Team - TM32
  (384, 38400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Rayquaza - Flamethrower - TM35
  (384, 38400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 34),
  -- Rayquaza - Sandstorm - TM37
  (384, 38400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Rayquaza - Fire Blast - TM38
  (384, 38400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Rayquaza - Rock Tomb - TM39
  (384, 38400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Rayquaza - Aerial Ace - TM40
  (384, 38400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Rayquaza - Facade - TM42
  (384, 38400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Rayquaza - Rest - TM44
  (384, 38400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Rayquaza - Round - TM48
  (384, 38400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Rayquaza - Echoed Voice - TM49
  (384, 38400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 42),
  -- Rayquaza - Overheat - TM50
  (384, 38400, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 43),
  -- Rayquaza - Focus Blast - TM52
  (384, 38400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Rayquaza - Energy Ball - TM53
  (384, 38400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 45),
  -- Rayquaza - Fling - TM56
  (384, 38400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Rayquaza - Sky Drop - TM58
  (384, 38400, 507, 13, NULL, 2, NULL, NULL, 13002058, NULL, 47),
  -- Rayquaza - Incinerate - TM59
  (384, 38400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 48),
  -- Rayquaza - Shadow Claw - TM65
  (384, 38400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 49),
  -- Rayquaza - Giga Impact - TM68
  (384, 38400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 50),
  -- Rayquaza - Stone Edge - TM71
  (384, 38400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 51),
  -- Rayquaza - Thunder Wave - TM73
  (384, 38400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 52),
  -- Rayquaza - Gyro Ball - TM74
  (384, 38400, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 53),
  -- Rayquaza - Swords Dance - TM75
  (384, 38400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 54),
  -- Rayquaza - Psych Up - TM77
  (384, 38400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 55),
  -- Rayquaza - Bulldoze - TM78
  (384, 38400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 56),
  -- Rayquaza - Rock Slide - TM80
  (384, 38400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 57),
  -- Rayquaza - Dragon Tail - TM82
  (384, 38400, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 58),
  -- Rayquaza - Swagger - TM87
  (384, 38400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Rayquaza - Sleep Talk - TM88
  (384, 38400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Rayquaza - Substitute - TM90
  (384, 38400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Rayquaza - Rock Smash - TM94
  (384, 38400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 62),
  -- Rayquaza - Confide - TM100
  (384, 38400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 63),
  -- Rayquaza - Fly - HM02
  (384, 38400, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 64),
  -- Rayquaza - Surf - HM03
  (384, 38400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 65),
  -- Rayquaza - Strength - HM04
  (384, 38400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Rayquaza - Waterfall - HM05
  (384, 38400, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 67),
  -- Rayquaza - Draco Meteor - Tutor
  (384, 38400, 434, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 68),
  -- Jirachi - Confusion - Level 1
  (385, 38500, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jirachi - Wish - Level 1
  (385, 38500, 273, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jirachi - Rest - Level 5
  (385, 38500, 156, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Jirachi - Swift - Level 10
  (385, 38500, 129, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Jirachi - Helping Hand - Level 15
  (385, 38500, 270, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Jirachi - Psychic - Level 20
  (385, 38500, 94, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Jirachi - Refresh - Level 25
  (385, 38500, 287, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Jirachi - Rest - Level 30
  (385, 38500, 156, 13, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Jirachi - Zen Headbutt - Level 35
  (385, 38500, 428, 13, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Jirachi - Double-Edge - Level 40
  (385, 38500, 38, 13, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Jirachi - Gravity - Level 45
  (385, 38500, 356, 13, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Jirachi - Healing Wish - Level 50
  (385, 38500, 361, 13, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Jirachi - Future Sight - Level 55
  (385, 38500, 248, 13, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Jirachi - Cosmic Power - Level 60
  (385, 38500, 322, 13, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Jirachi - Last Resort - Level 65
  (385, 38500, 387, 13, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Jirachi - Doom Desire - Level 70
  (385, 38500, 353, 13, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Jirachi - Psyshock - TM03
  (385, 38500, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Jirachi - Calm Mind - TM04
  (385, 38500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Jirachi - Toxic - TM06
  (385, 38500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Jirachi - Hidden Power - TM10
  (385, 38500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Jirachi - Sunny Day - TM11
  (385, 38500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Jirachi - Hyper Beam - TM15
  (385, 38500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Jirachi - Light Screen - TM16
  (385, 38500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Jirachi - Protect - TM17
  (385, 38500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Jirachi - Rain Dance - TM18
  (385, 38500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Jirachi - Safeguard - TM20
  (385, 38500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Jirachi - Frustration - TM21
  (385, 38500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Jirachi - Thunderbolt - TM24
  (385, 38500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Jirachi - Thunder - TM25
  (385, 38500, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Jirachi - Return - TM27
  (385, 38500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Jirachi - Psychic - TM29
  (385, 38500, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Jirachi - Shadow Ball - TM30
  (385, 38500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Jirachi - Double Team - TM32
  (385, 38500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Jirachi - Reflect - TM33
  (385, 38500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 34),
  -- Jirachi - Sandstorm - TM37
  (385, 38500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 35),
  -- Jirachi - Aerial Ace - TM40
  (385, 38500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 36),
  -- Jirachi - Facade - TM42
  (385, 38500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Jirachi - Rest - TM44
  (385, 38500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Jirachi - Round - TM48
  (385, 38500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Jirachi - Energy Ball - TM53
  (385, 38500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 40),
  -- Jirachi - Fling - TM56
  (385, 38500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Jirachi - Charge Beam - TM57
  (385, 38500, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 42),
  -- Jirachi - Giga Impact - TM68
  (385, 38500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Jirachi - Flash - TM70
  (385, 38500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Jirachi - Thunder Wave - TM73
  (385, 38500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Jirachi - Psych Up - TM77
  (385, 38500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Jirachi - Dream Eater - TM85
  (385, 38500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Jirachi - Grass Knot - TM86
  (385, 38500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Jirachi - Swagger - TM87
  (385, 38500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Jirachi - Sleep Talk - TM88
  (385, 38500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Jirachi - U-turn - TM89
  (385, 38500, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 51),
  -- Jirachi - Substitute - TM90
  (385, 38500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Jirachi - Flash Cannon - TM91
  (385, 38500, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 53),
  -- Jirachi - Trick Room - TM92
  (385, 38500, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 54),
  -- Jirachi - Power-Up Punch - TM98
  (385, 38500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 55),
  -- Jirachi - Dazzling Gleam - TM99
  (385, 38500, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 56),
  -- Jirachi - Confide - TM100
  (385, 38500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Deoxys - Wrap - Level 1
  (386, 38600, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys - Leer - Level 1
  (386, 38600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys - Night Shade - Level 9
  (386, 38600, 101, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys - Teleport - Level 17
  (386, 38600, 100, 13, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys - Knock Off - Level 25
  (386, 38600, 282, 13, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys - Pursuit - Level 33
  (386, 38600, 228, 13, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys - Psychic - Level 41
  (386, 38600, 94, 13, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys - Snatch - Level 49
  (386, 38600, 289, 13, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys - Psycho Shift - Level 57
  (386, 38600, 375, 13, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys - Zen Headbutt - Level 65
  (386, 38600, 428, 13, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys - Cosmic Power - Level 73
  (386, 38600, 322, 13, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys - Recover - Level 81
  (386, 38600, 105, 13, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys - Psycho Boost - Level 89
  (386, 38600, 354, 13, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys - Hyper Beam - Level 97
  (386, 38600, 63, 13, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys - Psyshock - TM03
  (386, 38600, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 15),
  -- Deoxys - Calm Mind - TM04
  (386, 38600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Deoxys - Toxic - TM06
  (386, 38600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Deoxys - Hidden Power - TM10
  (386, 38600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Deoxys - Sunny Day - TM11
  (386, 38600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Deoxys - Taunt - TM12
  (386, 38600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Deoxys - Ice Beam - TM13
  (386, 38600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 21),
  -- Deoxys - Hyper Beam - TM15
  (386, 38600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Deoxys - Light Screen - TM16
  (386, 38600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Deoxys - Protect - TM17
  (386, 38600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Deoxys - Rain Dance - TM18
  (386, 38600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Deoxys - Safeguard - TM20
  (386, 38600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Deoxys - Frustration - TM21
  (386, 38600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Deoxys - Solar Beam - TM22
  (386, 38600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Deoxys - Thunderbolt - TM24
  (386, 38600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Deoxys - Thunder - TM25
  (386, 38600, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Deoxys - Return - TM27
  (386, 38600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Deoxys - Psychic - TM29
  (386, 38600, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Deoxys - Shadow Ball - TM30
  (386, 38600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Deoxys - Brick Break - TM31
  (386, 38600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 34),
  -- Deoxys - Double Team - TM32
  (386, 38600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Deoxys - Reflect - TM33
  (386, 38600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 36),
  -- Deoxys - Rock Tomb - TM39
  (386, 38600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Deoxys - Aerial Ace - TM40
  (386, 38600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Deoxys - Torment - TM41
  (386, 38600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 39),
  -- Deoxys - Facade - TM42
  (386, 38600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Deoxys - Rest - TM44
  (386, 38600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Deoxys - Low Sweep - TM47
  (386, 38600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 42),
  -- Deoxys - Round - TM48
  (386, 38600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 43),
  -- Deoxys - Focus Blast - TM52
  (386, 38600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 44),
  -- Deoxys - Energy Ball - TM53
  (386, 38600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 45),
  -- Deoxys - Fling - TM56
  (386, 38600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Deoxys - Charge Beam - TM57
  (386, 38600, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 47),
  -- Deoxys - Giga Impact - TM68
  (386, 38600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 48),
  -- Deoxys - Flash - TM70
  (386, 38600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 49),
  -- Deoxys - Thunder Wave - TM73
  (386, 38600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 50),
  -- Deoxys - Psych Up - TM77
  (386, 38600, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 51),
  -- Deoxys - Rock Slide - TM80
  (386, 38600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 52),
  -- Deoxys - Poison Jab - TM84
  (386, 38600, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 53),
  -- Deoxys - Dream Eater - TM85
  (386, 38600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 54),
  -- Deoxys - Grass Knot - TM86
  (386, 38600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 55),
  -- Deoxys - Swagger - TM87
  (386, 38600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 56),
  -- Deoxys - Sleep Talk - TM88
  (386, 38600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 57),
  -- Deoxys - Substitute - TM90
  (386, 38600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Deoxys - Flash Cannon - TM91
  (386, 38600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 59),
  -- Deoxys - Trick Room - TM92
  (386, 38600, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 60),
  -- Deoxys - Rock Smash - TM94
  (386, 38600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 61),
  -- Deoxys - Dark Pulse - TM97
  (386, 38600, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 62),
  -- Deoxys - Power-Up Punch - TM98
  (386, 38600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 63),
  -- Deoxys - Confide - TM100
  (386, 38600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 64),
  -- Deoxys - Cut - HM01
  (386, 38600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 65),
  -- Deoxys - Strength - HM04
  (386, 38600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Turtwig - Tackle - Level 1
  (387, 38700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtwig - Withdraw - Level 5
  (387, 38700, 110, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Turtwig - Absorb - Level 9
  (387, 38700, 71, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Turtwig - Razor Leaf - Level 13
  (387, 38700, 75, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Turtwig - Curse - Level 17
  (387, 38700, 174, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Turtwig - Bite - Level 21
  (387, 38700, 44, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Turtwig - Mega Drain - Level 25
  (387, 38700, 72, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Turtwig - Leech Seed - Level 29
  (387, 38700, 73, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Turtwig - Synthesis - Level 33
  (387, 38700, 235, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Turtwig - Crunch - Level 37
  (387, 38700, 242, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Turtwig - Giga Drain - Level 41
  (387, 38700, 202, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Turtwig - Leaf Storm - Level 45
  (387, 38700, 437, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Turtwig - Toxic - TM06
  (387, 38700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Turtwig - Hidden Power - TM10
  (387, 38700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Turtwig - Sunny Day - TM11
  (387, 38700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Turtwig - Light Screen - TM16
  (387, 38700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 16),
  -- Turtwig - Protect - TM17
  (387, 38700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Turtwig - Safeguard - TM20
  (387, 38700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 18),
  -- Turtwig - Frustration - TM21
  (387, 38700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Turtwig - Solar Beam - TM22
  (387, 38700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 20),
  -- Turtwig - Return - TM27
  (387, 38700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Turtwig - Double Team - TM32
  (387, 38700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Turtwig - Reflect - TM33
  (387, 38700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 23),
  -- Turtwig - Facade - TM42
  (387, 38700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Turtwig - Rest - TM44
  (387, 38700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Turtwig - Attract - TM45
  (387, 38700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Turtwig - Round - TM48
  (387, 38700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Turtwig - Energy Ball - TM53
  (387, 38700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 28),
  -- Turtwig - Flash - TM70
  (387, 38700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 29),
  -- Turtwig - Swords Dance - TM75
  (387, 38700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 30),
  -- Turtwig - Grass Knot - TM86
  (387, 38700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 31),
  -- Turtwig - Swagger - TM87
  (387, 38700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Turtwig - Sleep Talk - TM88
  (387, 38700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Turtwig - Substitute - TM90
  (387, 38700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Turtwig - Rock Smash - TM94
  (387, 38700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 35),
  -- Turtwig - Nature Power - TM96
  (387, 38700, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 36),
  -- Turtwig - Confide - TM100
  (387, 38700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Turtwig - Cut - HM01
  (387, 38700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 38),
  -- Turtwig - Strength - HM04
  (387, 38700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 39),
  -- Turtwig - Body Slam - Egg
  (387, 38700, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Turtwig - Thrash - Egg
  (387, 38700, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Turtwig - Double-Edge - Egg
  (387, 38700, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Turtwig - Growth - Egg
  (387, 38700, 74, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Turtwig - Amnesia - Egg
  (387, 38700, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Turtwig - Stockpile - Egg
  (387, 38700, 254, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Turtwig - Spit Up - Egg
  (387, 38700, 255, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Turtwig - Swallow - Egg
  (387, 38700, 256, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Turtwig - Superpower - Egg
  (387, 38700, 276, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Turtwig - Tickle - Egg
  (387, 38700, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Turtwig - Sand Tomb - Egg
  (387, 38700, 328, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Turtwig - Seed Bomb - Egg
  (387, 38700, 402, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Turtwig - Earth Power - Egg
  (387, 38700, 414, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Turtwig - Wide Guard - Egg
  (387, 38700, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Turtwig - Grassy Terrain - Egg
  (387, 38700, 580, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Turtwig - Grass Pledge - Tutor
  (387, 38700, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 55),
  -- Grotle - Tackle - Level 1
  (388, 38800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grotle - Withdraw - Level 1
  (388, 38800, 110, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grotle - Withdraw - Level 5
  (388, 38800, 110, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grotle - Absorb - Level 9
  (388, 38800, 71, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Grotle - Razor Leaf - Level 13
  (388, 38800, 75, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Grotle - Curse - Level 17
  (388, 38800, 174, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Grotle - Bite - Level 22
  (388, 38800, 44, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Grotle - Mega Drain - Level 27
  (388, 38800, 72, 13, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Grotle - Leech Seed - Level 32
  (388, 38800, 73, 13, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Grotle - Synthesis - Level 37
  (388, 38800, 235, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Grotle - Crunch - Level 42
  (388, 38800, 242, 13, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Grotle - Giga Drain - Level 47
  (388, 38800, 202, 13, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Grotle - Leaf Storm - Level 52
  (388, 38800, 437, 13, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Grotle - Toxic - TM06
  (388, 38800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Grotle - Hidden Power - TM10
  (388, 38800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Grotle - Sunny Day - TM11
  (388, 38800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Grotle - Light Screen - TM16
  (388, 38800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 17),
  -- Grotle - Protect - TM17
  (388, 38800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Grotle - Safeguard - TM20
  (388, 38800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 19),
  -- Grotle - Frustration - TM21
  (388, 38800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Grotle - Solar Beam - TM22
  (388, 38800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 21),
  -- Grotle - Return - TM27
  (388, 38800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Grotle - Double Team - TM32
  (388, 38800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Grotle - Reflect - TM33
  (388, 38800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 24),
  -- Grotle - Facade - TM42
  (388, 38800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Grotle - Rest - TM44
  (388, 38800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Grotle - Attract - TM45
  (388, 38800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Grotle - Round - TM48
  (388, 38800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Grotle - Energy Ball - TM53
  (388, 38800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 29),
  -- Grotle - Flash - TM70
  (388, 38800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 30),
  -- Grotle - Swords Dance - TM75
  (388, 38800, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 31),
  -- Grotle - Grass Knot - TM86
  (388, 38800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 32),
  -- Grotle - Swagger - TM87
  (388, 38800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Grotle - Sleep Talk - TM88
  (388, 38800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Grotle - Substitute - TM90
  (388, 38800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Grotle - Rock Smash - TM94
  (388, 38800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 36),
  -- Grotle - Nature Power - TM96
  (388, 38800, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 37),
  -- Grotle - Confide - TM100
  (388, 38800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Grotle - Cut - HM01
  (388, 38800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 39),
  -- Grotle - Strength - HM04
  (388, 38800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 40),
  -- Grotle - Grass Pledge - Tutor
  (388, 38800, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 41),
  -- Torterra - Tackle - Level 1
  (389, 38900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torterra - Absorb - Level 1
  (389, 38900, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torterra - Razor Leaf - Level 1
  (389, 38900, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torterra - Withdraw - Level 1
  (389, 38900, 110, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torterra - Wood Hammer - Level 1
  (389, 38900, 452, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Torterra - Withdraw - Level 5
  (389, 38900, 110, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Torterra - Absorb - Level 9
  (389, 38900, 71, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Torterra - Razor Leaf - Level 13
  (389, 38900, 75, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Torterra - Curse - Level 17
  (389, 38900, 174, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Torterra - Bite - Level 22
  (389, 38900, 44, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Torterra - Mega Drain - Level 27
  (389, 38900, 72, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Torterra - Earthquake - Level 32
  (389, 38900, 89, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Torterra - Leech Seed - Level 33
  (389, 38900, 73, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Torterra - Synthesis - Level 39
  (389, 38900, 235, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Torterra - Crunch - Level 45
  (389, 38900, 242, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Torterra - Giga Drain - Level 51
  (389, 38900, 202, 13, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Torterra - Leaf Storm - Level 57
  (389, 38900, 437, 13, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Torterra - Roar - TM05
  (389, 38900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 18),
  -- Torterra - Toxic - TM06
  (389, 38900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Torterra - Hidden Power - TM10
  (389, 38900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Torterra - Sunny Day - TM11
  (389, 38900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Torterra - Hyper Beam - TM15
  (389, 38900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Torterra - Light Screen - TM16
  (389, 38900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Torterra - Protect - TM17
  (389, 38900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Torterra - Safeguard - TM20
  (389, 38900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Torterra - Frustration - TM21
  (389, 38900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Torterra - Solar Beam - TM22
  (389, 38900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Torterra - Earthquake - TM26
  (389, 38900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 28),
  -- Torterra - Return - TM27
  (389, 38900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Torterra - Double Team - TM32
  (389, 38900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Torterra - Reflect - TM33
  (389, 38900, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Torterra - Sandstorm - TM37
  (389, 38900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 32),
  -- Torterra - Rock Tomb - TM39
  (389, 38900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Torterra - Facade - TM42
  (389, 38900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Torterra - Rest - TM44
  (389, 38900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Torterra - Attract - TM45
  (389, 38900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Torterra - Round - TM48
  (389, 38900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Torterra - Energy Ball - TM53
  (389, 38900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Torterra - Giga Impact - TM68
  (389, 38900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 39),
  -- Torterra - Rock Polish - TM69
  (389, 38900, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 40),
  -- Torterra - Flash - TM70
  (389, 38900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Torterra - Stone Edge - TM71
  (389, 38900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 42),
  -- Torterra - Swords Dance - TM75
  (389, 38900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 43),
  -- Torterra - Bulldoze - TM78
  (389, 38900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Torterra - Rock Slide - TM80
  (389, 38900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Torterra - Grass Knot - TM86
  (389, 38900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Torterra - Swagger - TM87
  (389, 38900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Torterra - Sleep Talk - TM88
  (389, 38900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Torterra - Substitute - TM90
  (389, 38900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Torterra - Rock Smash - TM94
  (389, 38900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Torterra - Nature Power - TM96
  (389, 38900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 51),
  -- Torterra - Confide - TM100
  (389, 38900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Torterra - Cut - HM01
  (389, 38900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 53),
  -- Torterra - Strength - HM04
  (389, 38900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Torterra - Frenzy Plant - Tutor
  (389, 38900, 338, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 55),
  -- Torterra - Grass Pledge - Tutor
  (389, 38900, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 56),
  -- Chimchar - Scratch - Level 1
  (390, 39000, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimchar - Leer - Level 1
  (390, 39000, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimchar - Ember - Level 7
  (390, 39000, 52, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chimchar - Taunt - Level 9
  (390, 39000, 269, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chimchar - Fury Swipes - Level 15
  (390, 39000, 154, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chimchar - Flame Wheel - Level 17
  (390, 39000, 172, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chimchar - Nasty Plot - Level 23
  (390, 39000, 417, 13, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Chimchar - Torment - Level 25
  (390, 39000, 259, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Chimchar - Facade - Level 31
  (390, 39000, 263, 13, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Chimchar - Fire Spin - Level 33
  (390, 39000, 83, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Chimchar - Acrobatics - Level 39
  (390, 39000, 512, 13, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Chimchar - Slack Off - Level 41
  (390, 39000, 303, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Chimchar - Flamethrower - Level 47
  (390, 39000, 53, 13, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Chimchar - Hone Claws - TM01
  (390, 39000, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 14),
  -- Chimchar - Toxic - TM06
  (390, 39000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Chimchar - Bulk Up - TM08
  (390, 39000, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 16),
  -- Chimchar - Hidden Power - TM10
  (390, 39000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Chimchar - Sunny Day - TM11
  (390, 39000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Chimchar - Taunt - TM12
  (390, 39000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Chimchar - Protect - TM17
  (390, 39000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Chimchar - Frustration - TM21
  (390, 39000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Chimchar - Return - TM27
  (390, 39000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Chimchar - Dig - TM28
  (390, 39000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Chimchar - Brick Break - TM31
  (390, 39000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 24),
  -- Chimchar - Double Team - TM32
  (390, 39000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Chimchar - Flamethrower - TM35
  (390, 39000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 26),
  -- Chimchar - Fire Blast - TM38
  (390, 39000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 27),
  -- Chimchar - Aerial Ace - TM40
  (390, 39000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Chimchar - Torment - TM41
  (390, 39000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 29),
  -- Chimchar - Facade - TM42
  (390, 39000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Chimchar - Flame Charge - TM43
  (390, 39000, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 31),
  -- Chimchar - Rest - TM44
  (390, 39000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Chimchar - Attract - TM45
  (390, 39000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Chimchar - Low Sweep - TM47
  (390, 39000, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 34),
  -- Chimchar - Round - TM48
  (390, 39000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Chimchar - Overheat - TM50
  (390, 39000, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 36),
  -- Chimchar - Fling - TM56
  (390, 39000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Chimchar - Incinerate - TM59
  (390, 39000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 38),
  -- Chimchar - Will-O-Wisp - TM61
  (390, 39000, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 39),
  -- Chimchar - Acrobatics - TM62
  (390, 39000, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 40),
  -- Chimchar - Shadow Claw - TM65
  (390, 39000, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 41),
  -- Chimchar - Swords Dance - TM75
  (390, 39000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 42),
  -- Chimchar - Grass Knot - TM86
  (390, 39000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Chimchar - Swagger - TM87
  (390, 39000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Chimchar - Sleep Talk - TM88
  (390, 39000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Chimchar - U-turn - TM89
  (390, 39000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 46),
  -- Chimchar - Substitute - TM90
  (390, 39000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Chimchar - Rock Smash - TM94
  (390, 39000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Chimchar - Power-Up Punch - TM98
  (390, 39000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 49),
  -- Chimchar - Confide - TM100
  (390, 39000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Chimchar - Cut - HM01
  (390, 39000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Chimchar - Strength - HM04
  (390, 39000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Chimchar - Fire Punch - Egg
  (390, 39000, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimchar - Thunder Punch - Egg
  (390, 39000, 9, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimchar - Double Kick - Egg
  (390, 39000, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimchar - Submission - Egg
  (390, 39000, 66, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimchar - Counter - Egg
  (390, 39000, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimchar - Focus Energy - Egg
  (390, 39000, 116, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimchar - Encore - Egg
  (390, 39000, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimchar - Fake Out - Egg
  (390, 39000, 252, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimchar - Heat Wave - Egg
  (390, 39000, 257, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimchar - Focus Punch - Egg
  (390, 39000, 264, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Chimchar - Helping Hand - Egg
  (390, 39000, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Chimchar - Assist - Egg
  (390, 39000, 274, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Chimchar - Blaze Kick - Egg
  (390, 39000, 299, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Chimchar - Quick Guard - Egg
  (390, 39000, 501, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Chimchar - Fire Pledge - Tutor
  (390, 39000, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 67),
  -- Monferno - Scratch - Level 1
  (391, 39100, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Monferno - Leer - Level 1
  (391, 39100, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Monferno - Ember - Level 1
  (391, 39100, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Monferno - Ember - Level 7
  (391, 39100, 52, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Monferno - Taunt - Level 9
  (391, 39100, 269, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Monferno - Mach Punch - Level 14
  (391, 39100, 183, 13, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Monferno - Fury Swipes - Level 16
  (391, 39100, 154, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Monferno - Flame Wheel - Level 19
  (391, 39100, 172, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Monferno - Feint - Level 26
  (391, 39100, 364, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Monferno - Torment - Level 29
  (391, 39100, 259, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Monferno - Close Combat - Level 36
  (391, 39100, 370, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Monferno - Fire Spin - Level 39
  (391, 39100, 83, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Monferno - Acrobatics - Level 46
  (391, 39100, 512, 13, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Monferno - Slack Off - Level 49
  (391, 39100, 303, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Monferno - Flare Blitz - Level 56
  (391, 39100, 394, 13, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Monferno - Hone Claws - TM01
  (391, 39100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Monferno - Toxic - TM06
  (391, 39100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Monferno - Bulk Up - TM08
  (391, 39100, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Monferno - Hidden Power - TM10
  (391, 39100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Monferno - Sunny Day - TM11
  (391, 39100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Monferno - Taunt - TM12
  (391, 39100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Monferno - Protect - TM17
  (391, 39100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Monferno - Frustration - TM21
  (391, 39100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Monferno - Return - TM27
  (391, 39100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Monferno - Dig - TM28
  (391, 39100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Monferno - Brick Break - TM31
  (391, 39100, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 26),
  -- Monferno - Double Team - TM32
  (391, 39100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Monferno - Flamethrower - TM35
  (391, 39100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Monferno - Fire Blast - TM38
  (391, 39100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 29),
  -- Monferno - Rock Tomb - TM39
  (391, 39100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Monferno - Aerial Ace - TM40
  (391, 39100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Monferno - Torment - TM41
  (391, 39100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 32),
  -- Monferno - Facade - TM42
  (391, 39100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Monferno - Flame Charge - TM43
  (391, 39100, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 34),
  -- Monferno - Rest - TM44
  (391, 39100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Monferno - Attract - TM45
  (391, 39100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Monferno - Low Sweep - TM47
  (391, 39100, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 37),
  -- Monferno - Round - TM48
  (391, 39100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Monferno - Overheat - TM50
  (391, 39100, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Monferno - Focus Blast - TM52
  (391, 39100, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Monferno - Fling - TM56
  (391, 39100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Monferno - Incinerate - TM59
  (391, 39100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 42),
  -- Monferno - Will-O-Wisp - TM61
  (391, 39100, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 43),
  -- Monferno - Acrobatics - TM62
  (391, 39100, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 44),
  -- Monferno - Shadow Claw - TM65
  (391, 39100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Monferno - Retaliate - TM67
  (391, 39100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 46),
  -- Monferno - Swords Dance - TM75
  (391, 39100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 47),
  -- Monferno - Rock Slide - TM80
  (391, 39100, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 48),
  -- Monferno - Poison Jab - TM84
  (391, 39100, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 49),
  -- Monferno - Grass Knot - TM86
  (391, 39100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Monferno - Swagger - TM87
  (391, 39100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Monferno - Sleep Talk - TM88
  (391, 39100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Monferno - U-turn - TM89
  (391, 39100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 53),
  -- Monferno - Substitute - TM90
  (391, 39100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Monferno - Rock Smash - TM94
  (391, 39100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Monferno - Power-Up Punch - TM98
  (391, 39100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 56),
  -- Monferno - Confide - TM100
  (391, 39100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 57),
  -- Monferno - Cut - HM01
  (391, 39100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 58),
  -- Monferno - Strength - HM04
  (391, 39100, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Monferno - Fire Pledge - Tutor
  (391, 39100, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 60),
  -- Infernape - Scratch - Level 1
  (392, 39200, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Infernape - Leer - Level 1
  (392, 39200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Infernape - Ember - Level 1
  (392, 39200, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Infernape - Taunt - Level 1
  (392, 39200, 269, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Infernape - Flare Blitz - Level 1
  (392, 39200, 394, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Infernape - Ember - Level 7
  (392, 39200, 52, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Infernape - Taunt - Level 9
  (392, 39200, 269, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Infernape - Mach Punch - Level 14
  (392, 39200, 183, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Infernape - Fury Swipes - Level 16
  (392, 39200, 154, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Infernape - Flame Wheel - Level 19
  (392, 39200, 172, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Infernape - Feint - Level 26
  (392, 39200, 364, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Infernape - Punishment - Level 29
  (392, 39200, 386, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Infernape - Close Combat - Level 36
  (392, 39200, 370, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Infernape - Fire Spin - Level 42
  (392, 39200, 83, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Infernape - Acrobatics - Level 52
  (392, 39200, 512, 13, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Infernape - Calm Mind - Level 58
  (392, 39200, 347, 13, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Infernape - Flare Blitz - Level 68
  (392, 39200, 394, 13, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Infernape - Hone Claws - TM01
  (392, 39200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Infernape - Calm Mind - TM04
  (392, 39200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Infernape - Roar - TM05
  (392, 39200, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Infernape - Toxic - TM06
  (392, 39200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Infernape - Bulk Up - TM08
  (392, 39200, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 22),
  -- Infernape - Hidden Power - TM10
  (392, 39200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Infernape - Sunny Day - TM11
  (392, 39200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Infernape - Taunt - TM12
  (392, 39200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 25),
  -- Infernape - Hyper Beam - TM15
  (392, 39200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Infernape - Protect - TM17
  (392, 39200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Infernape - Frustration - TM21
  (392, 39200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Infernape - Solar Beam - TM22
  (392, 39200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Infernape - Earthquake - TM26
  (392, 39200, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 30),
  -- Infernape - Return - TM27
  (392, 39200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Infernape - Dig - TM28
  (392, 39200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Infernape - Brick Break - TM31
  (392, 39200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 33),
  -- Infernape - Double Team - TM32
  (392, 39200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Infernape - Flamethrower - TM35
  (392, 39200, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Infernape - Fire Blast - TM38
  (392, 39200, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 36),
  -- Infernape - Rock Tomb - TM39
  (392, 39200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 37),
  -- Infernape - Aerial Ace - TM40
  (392, 39200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 38),
  -- Infernape - Torment - TM41
  (392, 39200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 39),
  -- Infernape - Facade - TM42
  (392, 39200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 40),
  -- Infernape - Flame Charge - TM43
  (392, 39200, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 41),
  -- Infernape - Rest - TM44
  (392, 39200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Infernape - Attract - TM45
  (392, 39200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Infernape - Low Sweep - TM47
  (392, 39200, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 44),
  -- Infernape - Round - TM48
  (392, 39200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 45),
  -- Infernape - Overheat - TM50
  (392, 39200, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 46),
  -- Infernape - Focus Blast - TM52
  (392, 39200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 47),
  -- Infernape - Fling - TM56
  (392, 39200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 48),
  -- Infernape - Incinerate - TM59
  (392, 39200, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 49),
  -- Infernape - Will-O-Wisp - TM61
  (392, 39200, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 50),
  -- Infernape - Acrobatics - TM62
  (392, 39200, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 51),
  -- Infernape - Shadow Claw - TM65
  (392, 39200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 52),
  -- Infernape - Retaliate - TM67
  (392, 39200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 53),
  -- Infernape - Giga Impact - TM68
  (392, 39200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 54),
  -- Infernape - Stone Edge - TM71
  (392, 39200, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 55),
  -- Infernape - Swords Dance - TM75
  (392, 39200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 56),
  -- Infernape - Bulldoze - TM78
  (392, 39200, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 57),
  -- Infernape - Rock Slide - TM80
  (392, 39200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 58),
  -- Infernape - Poison Jab - TM84
  (392, 39200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 59),
  -- Infernape - Grass Knot - TM86
  (392, 39200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 60),
  -- Infernape - Swagger - TM87
  (392, 39200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 61),
  -- Infernape - Sleep Talk - TM88
  (392, 39200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 62),
  -- Infernape - U-turn - TM89
  (392, 39200, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 63),
  -- Infernape - Substitute - TM90
  (392, 39200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 64),
  -- Infernape - Rock Smash - TM94
  (392, 39200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 65),
  -- Infernape - Power-Up Punch - TM98
  (392, 39200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 66),
  -- Infernape - Confide - TM100
  (392, 39200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 67),
  -- Infernape - Cut - HM01
  (392, 39200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 68),
  -- Infernape - Strength - HM04
  (392, 39200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 69),
  -- Infernape - Blast Burn - Tutor
  (392, 39200, 307, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 70),
  -- Infernape - Fire Pledge - Tutor
  (392, 39200, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 71),
  -- Piplup - Pound - Level 1
  (393, 39300, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piplup - Growl - Level 4
  (393, 39300, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Piplup - Bubble - Level 8
  (393, 39300, 145, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Piplup - Water Sport - Level 11
  (393, 39300, 346, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Piplup - Peck - Level 15
  (393, 39300, 64, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Piplup - Bubble Beam - Level 18
  (393, 39300, 61, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Piplup - Bide - Level 22
  (393, 39300, 117, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Piplup - Fury Attack - Level 25
  (393, 39300, 31, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Piplup - Brine - Level 29
  (393, 39300, 362, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Piplup - Whirlpool - Level 32
  (393, 39300, 250, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Piplup - Mist - Level 36
  (393, 39300, 54, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Piplup - Drill Peck - Level 39
  (393, 39300, 65, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Piplup - Hydro Pump - Level 43
  (393, 39300, 56, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Piplup - Toxic - TM06
  (393, 39300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Piplup - Hail - TM07
  (393, 39300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 15),
  -- Piplup - Hidden Power - TM10
  (393, 39300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 16),
  -- Piplup - Ice Beam - TM13
  (393, 39300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Piplup - Blizzard - TM14
  (393, 39300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Piplup - Protect - TM17
  (393, 39300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Piplup - Rain Dance - TM18
  (393, 39300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Piplup - Frustration - TM21
  (393, 39300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Piplup - Return - TM27
  (393, 39300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Piplup - Dig - TM28
  (393, 39300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Piplup - Brick Break - TM31
  (393, 39300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 24),
  -- Piplup - Double Team - TM32
  (393, 39300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Piplup - Rock Tomb - TM39
  (393, 39300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 26),
  -- Piplup - Aerial Ace - TM40
  (393, 39300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 27),
  -- Piplup - Facade - TM42
  (393, 39300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Piplup - Rest - TM44
  (393, 39300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Piplup - Attract - TM45
  (393, 39300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Piplup - Round - TM48
  (393, 39300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Piplup - Echoed Voice - TM49
  (393, 39300, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 32),
  -- Piplup - Scald - TM55
  (393, 39300, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 33),
  -- Piplup - Fling - TM56
  (393, 39300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Piplup - Quash - TM60
  (393, 39300, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 35),
  -- Piplup - Grass Knot - TM86
  (393, 39300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 36),
  -- Piplup - Swagger - TM87
  (393, 39300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Piplup - Sleep Talk - TM88
  (393, 39300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Piplup - Substitute - TM90
  (393, 39300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Piplup - Confide - TM100
  (393, 39300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Piplup - Cut - HM01
  (393, 39300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 41),
  -- Piplup - Surf - HM03
  (393, 39300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 42),
  -- Piplup - Waterfall - HM05
  (393, 39300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 43),
  -- Piplup - Supersonic - Egg
  (393, 39300, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Piplup - Hydro Pump - Egg
  (393, 39300, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Piplup - Agility - Egg
  (393, 39300, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Piplup - Bide - Egg
  (393, 39300, 117, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Piplup - Snore - Egg
  (393, 39300, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Piplup - Flail - Egg
  (393, 39300, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piplup - Mud-Slap - Egg
  (393, 39300, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Piplup - Icy Wind - Egg
  (393, 39300, 196, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piplup - Yawn - Egg
  (393, 39300, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piplup - Feather Dance - Egg
  (393, 39300, 297, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Piplup - Mud Sport - Egg
  (393, 39300, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Piplup - Aqua Ring - Egg
  (393, 39300, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Piplup - Double Hit - Egg
  (393, 39300, 458, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Piplup - Water Pledge - Tutor
  (393, 39300, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 57),
  -- Prinplup - Tackle - Level 1
  (394, 39400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Prinplup - Growl - Level 1
  (394, 39400, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Prinplup - Growl - Level 4
  (394, 39400, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Prinplup - Bubble - Level 8
  (394, 39400, 145, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Prinplup - Water Sport - Level 11
  (394, 39400, 346, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Prinplup - Peck - Level 15
  (394, 39400, 64, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Prinplup - Metal Claw - Level 16
  (394, 39400, 232, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Prinplup - Bubble Beam - Level 19
  (394, 39400, 61, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Prinplup - Bide - Level 24
  (394, 39400, 117, 13, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Prinplup - Fury Attack - Level 28
  (394, 39400, 31, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Prinplup - Brine - Level 33
  (394, 39400, 362, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Prinplup - Whirlpool - Level 37
  (394, 39400, 250, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Prinplup - Mist - Level 42
  (394, 39400, 54, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Prinplup - Drill Peck - Level 46
  (394, 39400, 65, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Prinplup - Hydro Pump - Level 50
  (394, 39400, 56, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Prinplup - Hone Claws - TM01
  (394, 39400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Prinplup - Toxic - TM06
  (394, 39400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Prinplup - Hail - TM07
  (394, 39400, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Prinplup - Hidden Power - TM10
  (394, 39400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Prinplup - Ice Beam - TM13
  (394, 39400, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Prinplup - Blizzard - TM14
  (394, 39400, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Prinplup - Protect - TM17
  (394, 39400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Prinplup - Rain Dance - TM18
  (394, 39400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Prinplup - Frustration - TM21
  (394, 39400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Prinplup - Return - TM27
  (394, 39400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Prinplup - Dig - TM28
  (394, 39400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Prinplup - Brick Break - TM31
  (394, 39400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Prinplup - Double Team - TM32
  (394, 39400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Prinplup - Rock Tomb - TM39
  (394, 39400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Prinplup - Aerial Ace - TM40
  (394, 39400, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Prinplup - Facade - TM42
  (394, 39400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Prinplup - Rest - TM44
  (394, 39400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Prinplup - Attract - TM45
  (394, 39400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Prinplup - Round - TM48
  (394, 39400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Prinplup - Echoed Voice - TM49
  (394, 39400, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 35),
  -- Prinplup - Scald - TM55
  (394, 39400, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 36),
  -- Prinplup - Fling - TM56
  (394, 39400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Prinplup - Quash - TM60
  (394, 39400, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 38),
  -- Prinplup - Shadow Claw - TM65
  (394, 39400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 39),
  -- Prinplup - Grass Knot - TM86
  (394, 39400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 40),
  -- Prinplup - Swagger - TM87
  (394, 39400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Prinplup - Sleep Talk - TM88
  (394, 39400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Prinplup - Substitute - TM90
  (394, 39400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Prinplup - Rock Smash - TM94
  (394, 39400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Prinplup - Confide - TM100
  (394, 39400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Prinplup - Cut - HM01
  (394, 39400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Prinplup - Surf - HM03
  (394, 39400, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 47),
  -- Prinplup - Strength - HM04
  (394, 39400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 48),
  -- Prinplup - Waterfall - HM05
  (394, 39400, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 49),
  -- Prinplup - Water Pledge - Tutor
  (394, 39400, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 50),
  -- Empoleon - Tackle - Level 1
  (395, 39500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Empoleon - Growl - Level 1
  (395, 39500, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Empoleon - Bubble - Level 1
  (395, 39500, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Empoleon - Growl - Level 4
  (395, 39500, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Empoleon - Bubble - Level 8
  (395, 39500, 145, 13, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Empoleon - Swords Dance - Level 11
  (395, 39500, 14, 13, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Empoleon - Peck - Level 15
  (395, 39500, 64, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Empoleon - Metal Claw - Level 16
  (395, 39500, 232, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Empoleon - Bubble Beam - Level 19
  (395, 39500, 61, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Empoleon - Swagger - Level 24
  (395, 39500, 207, 13, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Empoleon - Fury Attack - Level 28
  (395, 39500, 31, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Empoleon - Brine - Level 33
  (395, 39500, 362, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Empoleon - Aqua Jet - Level 36
  (395, 39500, 453, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Empoleon - Whirlpool - Level 39
  (395, 39500, 250, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Empoleon - Mist - Level 46
  (395, 39500, 54, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Empoleon - Drill Peck - Level 52
  (395, 39500, 65, 13, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Empoleon - Hydro Pump - Level 59
  (395, 39500, 56, 13, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Empoleon - Hone Claws - TM01
  (395, 39500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Empoleon - Roar - TM05
  (395, 39500, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 19),
  -- Empoleon - Toxic - TM06
  (395, 39500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Empoleon - Hail - TM07
  (395, 39500, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Empoleon - Hidden Power - TM10
  (395, 39500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Empoleon - Ice Beam - TM13
  (395, 39500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Empoleon - Blizzard - TM14
  (395, 39500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Empoleon - Hyper Beam - TM15
  (395, 39500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Empoleon - Protect - TM17
  (395, 39500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Empoleon - Rain Dance - TM18
  (395, 39500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Empoleon - Frustration - TM21
  (395, 39500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Empoleon - Earthquake - TM26
  (395, 39500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Empoleon - Return - TM27
  (395, 39500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Empoleon - Dig - TM28
  (395, 39500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Empoleon - Brick Break - TM31
  (395, 39500, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Empoleon - Double Team - TM32
  (395, 39500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Empoleon - Rock Tomb - TM39
  (395, 39500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Empoleon - Aerial Ace - TM40
  (395, 39500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Empoleon - Facade - TM42
  (395, 39500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Empoleon - Rest - TM44
  (395, 39500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Empoleon - Attract - TM45
  (395, 39500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Empoleon - Round - TM48
  (395, 39500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Empoleon - Echoed Voice - TM49
  (395, 39500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 40),
  -- Empoleon - Steel Wing - TM51
  (395, 39500, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 41),
  -- Empoleon - Scald - TM55
  (395, 39500, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 42),
  -- Empoleon - Fling - TM56
  (395, 39500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Empoleon - Quash - TM60
  (395, 39500, 511, 13, NULL, 2, NULL, NULL, 13002060, NULL, 44),
  -- Empoleon - Shadow Claw - TM65
  (395, 39500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 45),
  -- Empoleon - Giga Impact - TM68
  (395, 39500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 46),
  -- Empoleon - Swords Dance - TM75
  (395, 39500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 47),
  -- Empoleon - Bulldoze - TM78
  (395, 39500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Empoleon - Rock Slide - TM80
  (395, 39500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Empoleon - Grass Knot - TM86
  (395, 39500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 50),
  -- Empoleon - Swagger - TM87
  (395, 39500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 51),
  -- Empoleon - Sleep Talk - TM88
  (395, 39500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 52),
  -- Empoleon - Substitute - TM90
  (395, 39500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 53),
  -- Empoleon - Flash Cannon - TM91
  (395, 39500, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 54),
  -- Empoleon - Rock Smash - TM94
  (395, 39500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 55),
  -- Empoleon - Confide - TM100
  (395, 39500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Empoleon - Cut - HM01
  (395, 39500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Empoleon - Surf - HM03
  (395, 39500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 58),
  -- Empoleon - Strength - HM04
  (395, 39500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Empoleon - Waterfall - HM05
  (395, 39500, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 60),
  -- Empoleon - Hydro Cannon - Tutor
  (395, 39500, 308, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 61),
  -- Empoleon - Water Pledge - Tutor
  (395, 39500, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 62),
  -- Starly - Tackle - Level 1
  (396, 39600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starly - Growl - Level 1
  (396, 39600, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starly - Quick Attack - Level 5
  (396, 39600, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Starly - Wing Attack - Level 9
  (396, 39600, 17, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Starly - Double Team - Level 13
  (396, 39600, 104, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Starly - Endeavor - Level 17
  (396, 39600, 283, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Starly - Whirlwind - Level 21
  (396, 39600, 18, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Starly - Aerial Ace - Level 25
  (396, 39600, 332, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Starly - Take Down - Level 29
  (396, 39600, 36, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Starly - Agility - Level 33
  (396, 39600, 97, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Starly - Brave Bird - Level 37
  (396, 39600, 413, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Starly - Final Gambit - Level 41
  (396, 39600, 515, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Starly - Toxic - TM06
  (396, 39600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Starly - Hidden Power - TM10
  (396, 39600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Starly - Sunny Day - TM11
  (396, 39600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Starly - Protect - TM17
  (396, 39600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Starly - Rain Dance - TM18
  (396, 39600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 17),
  -- Starly - Roost - TM19
  (396, 39600, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 18),
  -- Starly - Frustration - TM21
  (396, 39600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Starly - Return - TM27
  (396, 39600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Starly - Double Team - TM32
  (396, 39600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Starly - Aerial Ace - TM40
  (396, 39600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 22),
  -- Starly - Facade - TM42
  (396, 39600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Starly - Rest - TM44
  (396, 39600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Starly - Attract - TM45
  (396, 39600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Starly - Thief - TM46
  (396, 39600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Starly - Round - TM48
  (396, 39600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Starly - Echoed Voice - TM49
  (396, 39600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 28),
  -- Starly - Steel Wing - TM51
  (396, 39600, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 29),
  -- Starly - Swagger - TM87
  (396, 39600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 30),
  -- Starly - Sleep Talk - TM88
  (396, 39600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 31),
  -- Starly - U-turn - TM89
  (396, 39600, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 32),
  -- Starly - Substitute - TM90
  (396, 39600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 33),
  -- Starly - Confide - TM100
  (396, 39600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 34),
  -- Starly - Fly - HM02
  (396, 39600, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 35),
  -- Starly - Sand Attack - Egg
  (396, 39600, 28, 13, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Starly - Fury Attack - Egg
  (396, 39600, 31, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Starly - Double-Edge - Egg
  (396, 39600, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Starly - Mirror Move - Egg
  (396, 39600, 119, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Starly - Foresight - Egg
  (396, 39600, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Starly - Detect - Egg
  (396, 39600, 197, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Starly - Steel Wing - Egg
  (396, 39600, 211, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Starly - Pursuit - Egg
  (396, 39600, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Starly - Uproar - Egg
  (396, 39600, 253, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Starly - Revenge - Egg
  (396, 39600, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Starly - Feather Dance - Egg
  (396, 39600, 297, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Starly - Astonish - Egg
  (396, 39600, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Starly - Roost - Egg
  (396, 39600, 355, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Staravia - Tackle - Level 1
  (397, 39700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staravia - Growl - Level 1
  (397, 39700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staravia - Quick Attack - Level 1
  (397, 39700, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staravia - Quick Attack - Level 5
  (397, 39700, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Staravia - Wing Attack - Level 9
  (397, 39700, 17, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Staravia - Double Team - Level 13
  (397, 39700, 104, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Staravia - Endeavor - Level 18
  (397, 39700, 283, 13, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Staravia - Whirlwind - Level 23
  (397, 39700, 18, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Staravia - Aerial Ace - Level 28
  (397, 39700, 332, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Staravia - Take Down - Level 33
  (397, 39700, 36, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Staravia - Agility - Level 38
  (397, 39700, 97, 13, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Staravia - Brave Bird - Level 43
  (397, 39700, 413, 13, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Staravia - Final Gambit - Level 48
  (397, 39700, 515, 13, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Staravia - Toxic - TM06
  (397, 39700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Staravia - Hidden Power - TM10
  (397, 39700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Staravia - Sunny Day - TM11
  (397, 39700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 16),
  -- Staravia - Protect - TM17
  (397, 39700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Staravia - Rain Dance - TM18
  (397, 39700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Staravia - Roost - TM19
  (397, 39700, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 19),
  -- Staravia - Frustration - TM21
  (397, 39700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Staravia - Return - TM27
  (397, 39700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Staravia - Double Team - TM32
  (397, 39700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Staravia - Aerial Ace - TM40
  (397, 39700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 23),
  -- Staravia - Facade - TM42
  (397, 39700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Staravia - Rest - TM44
  (397, 39700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Staravia - Attract - TM45
  (397, 39700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Staravia - Thief - TM46
  (397, 39700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 27),
  -- Staravia - Round - TM48
  (397, 39700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Staravia - Echoed Voice - TM49
  (397, 39700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 29),
  -- Staravia - Steel Wing - TM51
  (397, 39700, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 30),
  -- Staravia - Retaliate - TM67
  (397, 39700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 31),
  -- Staravia - Swagger - TM87
  (397, 39700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Staravia - Sleep Talk - TM88
  (397, 39700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Staravia - U-turn - TM89
  (397, 39700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 34),
  -- Staravia - Substitute - TM90
  (397, 39700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Staravia - Confide - TM100
  (397, 39700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 36),
  -- Staravia - Fly - HM02
  (397, 39700, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 37),
  -- Staraptor - Wing Attack - Level 1
  (398, 39800, 17, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staraptor - Tackle - Level 1
  (398, 39800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staraptor - Growl - Level 1
  (398, 39800, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staraptor - Quick Attack - Level 1
  (398, 39800, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Staraptor - Quick Attack - Level 5
  (398, 39800, 98, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Staraptor - Wing Attack - Level 9
  (398, 39800, 17, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Staraptor - Double Team - Level 13
  (398, 39800, 104, 13, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Staraptor - Endeavor - Level 18
  (398, 39800, 283, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Staraptor - Whirlwind - Level 23
  (398, 39800, 18, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Staraptor - Aerial Ace - Level 28
  (398, 39800, 332, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Staraptor - Take Down - Level 33
  (398, 39800, 36, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Staraptor - Close Combat - Level 34
  (398, 39800, 370, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Staraptor - Agility - Level 41
  (398, 39800, 97, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Staraptor - Brave Bird - Level 49
  (398, 39800, 413, 13, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Staraptor - Final Gambit - Level 57
  (398, 39800, 515, 13, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Staraptor - Toxic - TM06
  (398, 39800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Staraptor - Hidden Power - TM10
  (398, 39800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Staraptor - Sunny Day - TM11
  (398, 39800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Staraptor - Hyper Beam - TM15
  (398, 39800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 19),
  -- Staraptor - Protect - TM17
  (398, 39800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Staraptor - Rain Dance - TM18
  (398, 39800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Staraptor - Roost - TM19
  (398, 39800, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 22),
  -- Staraptor - Frustration - TM21
  (398, 39800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Staraptor - Return - TM27
  (398, 39800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Staraptor - Double Team - TM32
  (398, 39800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Staraptor - Aerial Ace - TM40
  (398, 39800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 26),
  -- Staraptor - Facade - TM42
  (398, 39800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Staraptor - Rest - TM44
  (398, 39800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Staraptor - Attract - TM45
  (398, 39800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Staraptor - Thief - TM46
  (398, 39800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 30),
  -- Staraptor - Round - TM48
  (398, 39800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Staraptor - Echoed Voice - TM49
  (398, 39800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 32),
  -- Staraptor - Steel Wing - TM51
  (398, 39800, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 33),
  -- Staraptor - Retaliate - TM67
  (398, 39800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 34),
  -- Staraptor - Giga Impact - TM68
  (398, 39800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Staraptor - Swagger - TM87
  (398, 39800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Staraptor - Sleep Talk - TM88
  (398, 39800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Staraptor - U-turn - TM89
  (398, 39800, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 38),
  -- Staraptor - Substitute - TM90
  (398, 39800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Staraptor - Confide - TM100
  (398, 39800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Staraptor - Fly - HM02
  (398, 39800, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 41),
  -- Bidoof - Tackle - Level 1
  (399, 39900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bidoof - Growl - Level 5
  (399, 39900, 45, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Bidoof - Defense Curl - Level 9
  (399, 39900, 111, 13, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Bidoof - Rollout - Level 13
  (399, 39900, 205, 13, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bidoof - Headbutt - Level 17
  (399, 39900, 29, 13, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bidoof - Hyper Fang - Level 21
  (399, 39900, 158, 13, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bidoof - Yawn - Level 25
  (399, 39900, 281, 13, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bidoof - Amnesia - Level 29
  (399, 39900, 133, 13, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Bidoof - Take Down - Level 33
  (399, 39900, 36, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Bidoof - Super Fang - Level 37
  (399, 39900, 162, 13, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Bidoof - Superpower - Level 41
  (399, 39900, 276, 13, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Bidoof - Curse - Level 45
  (399, 39900, 174, 13, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Bidoof - Toxic - TM06
  (399, 39900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 13),
  -- Bidoof - Hidden Power - TM10
  (399, 39900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 14),
  -- Bidoof - Sunny Day - TM11
  (399, 39900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 15),
  -- Bidoof - Taunt - TM12
  (399, 39900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 16),
  -- Bidoof - Ice Beam - TM13
  (399, 39900, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 17),
  -- Bidoof - Blizzard - TM14
  (399, 39900, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 18),
  -- Bidoof - Protect - TM17
  (399, 39900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Bidoof - Rain Dance - TM18
  (399, 39900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Bidoof - Frustration - TM21
  (399, 39900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Bidoof - Thunderbolt - TM24
  (399, 39900, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 22),
  -- Bidoof - Thunder - TM25
  (399, 39900, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 23),
  -- Bidoof - Return - TM27
  (399, 39900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Bidoof - Dig - TM28
  (399, 39900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Bidoof - Shadow Ball - TM30
  (399, 39900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Bidoof - Double Team - TM32
  (399, 39900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Bidoof - Facade - TM42
  (399, 39900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Bidoof - Rest - TM44
  (399, 39900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Bidoof - Attract - TM45
  (399, 39900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Bidoof - Thief - TM46
  (399, 39900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 31),
  -- Bidoof - Round - TM48
  (399, 39900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Bidoof - Echoed Voice - TM49
  (399, 39900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 33),
  -- Bidoof - Charge Beam - TM57
  (399, 39900, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 34),
  -- Bidoof - Retaliate - TM67
  (399, 39900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 35),
  -- Bidoof - Thunder Wave - TM73
  (399, 39900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 36),
  -- Bidoof - Grass Knot - TM86
  (399, 39900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 37),
  -- Bidoof - Swagger - TM87
  (399, 39900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Bidoof - Sleep Talk - TM88
  (399, 39900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Bidoof - Substitute - TM90
  (399, 39900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Bidoof - Rock Smash - TM94
  (399, 39900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Bidoof - Confide - TM100
  (399, 39900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Bidoof - Cut - HM01
  (399, 39900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 43),
  -- Bidoof - Double-Edge - Egg
  (399, 39900, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bidoof - Quick Attack - Egg
  (399, 39900, 98, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bidoof - Defense Curl - Egg
  (399, 39900, 111, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bidoof - Skull Bash - Egg
  (399, 39900, 130, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bidoof - Fury Swipes - Egg
  (399, 39900, 154, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bidoof - Endure - Egg
  (399, 39900, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bidoof - Rollout - Egg
  (399, 39900, 205, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bidoof - Sleep Talk - Egg
  (399, 39900, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bidoof - Odor Sleuth - Egg
  (399, 39900, 316, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bidoof - Water Sport - Egg
  (399, 39900, 346, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Bidoof - Aqua Tail - Egg
  (399, 39900, 401, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Bidoof - Rock Climb - Egg
  (399, 39900, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Bibarel - Tackle - Level 1
  (400, 40000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bibarel - Growl - Level 1
  (400, 40000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bibarel - Rototiller - Level 1
  (400, 40000, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bibarel - Growl - Level 5
  (400, 40000, 45, 13, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Bibarel - Defense Curl - Level 9
  (400, 40000, 111, 13, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bibarel - Rollout - Level 13
  (400, 40000, 205, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Bibarel - Water Gun - Level 15
  (400, 40000, 55, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bibarel - Headbutt - Level 18
  (400, 40000, 29, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bibarel - Hyper Fang - Level 23
  (400, 40000, 158, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Bibarel - Yawn - Level 28
  (400, 40000, 281, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Bibarel - Amnesia - Level 33
  (400, 40000, 133, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Bibarel - Take Down - Level 38
  (400, 40000, 36, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Bibarel - Super Fang - Level 43
  (400, 40000, 162, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Bibarel - Superpower - Level 48
  (400, 40000, 276, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Bibarel - Curse - Level 53
  (400, 40000, 174, 13, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Bibarel - Toxic - TM06
  (400, 40000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Bibarel - Hidden Power - TM10
  (400, 40000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Bibarel - Sunny Day - TM11
  (400, 40000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Bibarel - Taunt - TM12
  (400, 40000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Bibarel - Ice Beam - TM13
  (400, 40000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Bibarel - Blizzard - TM14
  (400, 40000, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Bibarel - Hyper Beam - TM15
  (400, 40000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Bibarel - Protect - TM17
  (400, 40000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Bibarel - Rain Dance - TM18
  (400, 40000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Bibarel - Frustration - TM21
  (400, 40000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Bibarel - Thunderbolt - TM24
  (400, 40000, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Bibarel - Thunder - TM25
  (400, 40000, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 27),
  -- Bibarel - Return - TM27
  (400, 40000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Bibarel - Dig - TM28
  (400, 40000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Bibarel - Shadow Ball - TM30
  (400, 40000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 30),
  -- Bibarel - Double Team - TM32
  (400, 40000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Bibarel - Facade - TM42
  (400, 40000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Bibarel - Rest - TM44
  (400, 40000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Bibarel - Attract - TM45
  (400, 40000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Bibarel - Thief - TM46
  (400, 40000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Bibarel - Round - TM48
  (400, 40000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 36),
  -- Bibarel - Echoed Voice - TM49
  (400, 40000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 37),
  -- Bibarel - Scald - TM55
  (400, 40000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 38),
  -- Bibarel - Fling - TM56
  (400, 40000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Bibarel - Charge Beam - TM57
  (400, 40000, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 40),
  -- Bibarel - Retaliate - TM67
  (400, 40000, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Bibarel - Giga Impact - TM68
  (400, 40000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Bibarel - Thunder Wave - TM73
  (400, 40000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 43),
  -- Bibarel - Bulldoze - TM78
  (400, 40000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Bibarel - Grass Knot - TM86
  (400, 40000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 45),
  -- Bibarel - Swagger - TM87
  (400, 40000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Bibarel - Sleep Talk - TM88
  (400, 40000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Bibarel - Substitute - TM90
  (400, 40000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Bibarel - Rock Smash - TM94
  (400, 40000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Bibarel - Confide - TM100
  (400, 40000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Bibarel - Cut - HM01
  (400, 40000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Bibarel - Surf - HM03
  (400, 40000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 52),
  -- Bibarel - Strength - HM04
  (400, 40000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 53),
  -- Bibarel - Waterfall - HM05
  (400, 40000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 54);
