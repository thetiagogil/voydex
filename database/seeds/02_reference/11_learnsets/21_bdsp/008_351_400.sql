-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded, except Deoxys Attack, Defense and Speed Formes, seeded from the game's own data.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 351-400.
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
  -- Castform - Tackle - Starting Move
  (351, 35100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Castform - Water Gun - Level 10
  (351, 35100, 55, 21, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Castform - Ember - Level 10
  (351, 35100, 52, 21, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Castform - Powder Snow - Level 10
  (351, 35100, 181, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Castform - Headbutt - Level 15
  (351, 35100, 29, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Castform - Rain Dance - Level 20
  (351, 35100, 240, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Castform - Sunny Day - Level 20
  (351, 35100, 241, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Castform - Hail - Level 20
  (351, 35100, 258, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Castform - Weather Ball - Level 25
  (351, 35100, 311, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Castform - Hydro Pump - Level 35
  (351, 35100, 56, 21, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Castform - Fire Blast - Level 35
  (351, 35100, 126, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Castform - Blizzard - Level 35
  (351, 35100, 59, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Castform - Hurricane - Level 45
  (351, 35100, 542, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Castform - Water Pulse - TM03
  (351, 35100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Castform - Hail - TM07
  (351, 35100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Castform - Work Up - TM10
  (351, 35100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Castform - Sunny Day - TM11
  (351, 35100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Castform - Ice Beam - TM13
  (351, 35100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Castform - Blizzard - TM14
  (351, 35100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Castform - Protect - TM17
  (351, 35100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Castform - Rain Dance - TM18
  (351, 35100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Castform - Solar Beam - TM22
  (351, 35100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Castform - Thunderbolt - TM24
  (351, 35100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 23),
  -- Castform - Thunder - TM25
  (351, 35100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 24),
  -- Castform - Shadow Ball - TM30
  (351, 35100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Castform - Double Team - TM32
  (351, 35100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Castform - Shock Wave - TM34
  (351, 35100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Castform - Flamethrower - TM35
  (351, 35100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Castform - Sandstorm - TM37
  (351, 35100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Castform - Fire Blast - TM38
  (351, 35100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Castform - Facade - TM42
  (351, 35100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Castform - Rest - TM44
  (351, 35100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Castform - Attract - TM45
  (351, 35100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Castform - Thief - TM46
  (351, 35100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Castform - Scald - TM49
  (351, 35100, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 35),
  -- Castform - Energy Ball - TM53
  (351, 35100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 36),
  -- Castform - Endure - TM58
  (351, 35100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Castform - Flash - TM70
  (351, 35100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Castform - Avalanche - TM72
  (351, 35100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 39),
  -- Castform - Thunder Wave - TM73
  (351, 35100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Castform - Psych Up - TM77
  (351, 35100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Castform - Sleep Talk - TM82
  (351, 35100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Castform - Swagger - TM87
  (351, 35100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Castform - Substitute - TM90
  (351, 35100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Castform - Amnesia - Egg
  (351, 35100, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Castform - Clear Smog - Egg
  (351, 35100, 499, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Castform - Cosmic Power - Egg
  (351, 35100, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Castform - Disable - Egg
  (351, 35100, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Castform - Future Sight - Egg
  (351, 35100, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Castform - Guard Swap - Egg
  (351, 35100, 385, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Castform - Hex - Egg
  (351, 35100, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Castform - Reflect Type - Egg
  (351, 35100, 513, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kecleon - Thief - Starting Move
  (352, 35200, 168, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kecleon - Tail Whip - Starting Move
  (352, 35200, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kecleon - Astonish - Starting Move
  (352, 35200, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kecleon - Lick - Starting Move
  (352, 35200, 122, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kecleon - Scratch - Starting Move
  (352, 35200, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Kecleon - Bind - Level 4
  (352, 35200, 20, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Kecleon - Shadow Sneak - Level 7
  (352, 35200, 425, 21, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Kecleon - Feint - Level 10
  (352, 35200, 364, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Kecleon - Fury Swipes - Level 13
  (352, 35200, 154, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Kecleon - Disable - Level 16
  (352, 35200, 50, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Kecleon - Psybeam - Level 18
  (352, 35200, 60, 21, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Kecleon - Ancient Power - Level 21
  (352, 35200, 246, 21, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Kecleon - Slash - Level 25
  (352, 35200, 163, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Kecleon - Detect - Level 30
  (352, 35200, 197, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Kecleon - Shadow Claw - Level 33
  (352, 35200, 421, 21, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Kecleon - Screech - Level 38
  (352, 35200, 103, 21, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Kecleon - Substitute - Level 42
  (352, 35200, 164, 21, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Kecleon - Sucker Punch - Level 46
  (352, 35200, 389, 21, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Kecleon - Foul Play - Level 50
  (352, 35200, 492, 21, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Kecleon - Focus Punch - TM01
  (352, 35200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Kecleon - Water Pulse - TM03
  (352, 35200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 21),
  -- Kecleon - Work Up - TM10
  (352, 35200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Kecleon - Sunny Day - TM11
  (352, 35200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Kecleon - Ice Beam - TM13
  (352, 35200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Kecleon - Blizzard - TM14
  (352, 35200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Kecleon - Protect - TM17
  (352, 35200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Kecleon - Rain Dance - TM18
  (352, 35200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Kecleon - Solar Beam - TM22
  (352, 35200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Kecleon - Iron Tail - TM23
  (352, 35200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Kecleon - Thunderbolt - TM24
  (352, 35200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Kecleon - Thunder - TM25
  (352, 35200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Kecleon - Dig - TM28
  (352, 35200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Kecleon - Shadow Ball - TM30
  (352, 35200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Kecleon - Brick Break - TM31
  (352, 35200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Kecleon - Double Team - TM32
  (352, 35200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Kecleon - Shock Wave - TM34
  (352, 35200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Kecleon - Flamethrower - TM35
  (352, 35200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 37),
  -- Kecleon - Fire Blast - TM38
  (352, 35200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 38),
  -- Kecleon - Rock Tomb - TM39
  (352, 35200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 39),
  -- Kecleon - Aerial Ace - TM40
  (352, 35200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 40),
  -- Kecleon - Facade - TM42
  (352, 35200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Kecleon - Rest - TM44
  (352, 35200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Kecleon - Attract - TM45
  (352, 35200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 43),
  -- Kecleon - Thief - TM46
  (352, 35200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 44),
  -- Kecleon - Skill Swap - TM48
  (352, 35200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 45),
  -- Kecleon - Fling - TM56
  (352, 35200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Kecleon - Charge Beam - TM57
  (352, 35200, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 47),
  -- Kecleon - Endure - TM58
  (352, 35200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 48),
  -- Kecleon - Drain Punch - TM60
  (352, 35200, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 49),
  -- Kecleon - Nasty Plot - TM63
  (352, 35200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 50),
  -- Kecleon - Shadow Claw - TM65
  (352, 35200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 51),
  -- Kecleon - Recycle - TM67
  (352, 35200, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 52),
  -- Kecleon - Flash - TM70
  (352, 35200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 53),
  -- Kecleon - Thunder Wave - TM73
  (352, 35200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 54),
  -- Kecleon - Stealth Rock - TM76
  (352, 35200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 55),
  -- Kecleon - Psych Up - TM77
  (352, 35200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 56),
  -- Kecleon - Rock Slide - TM80
  (352, 35200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Kecleon - Sleep Talk - TM82
  (352, 35200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Kecleon - Grass Knot - TM86
  (352, 35200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 59),
  -- Kecleon - Swagger - TM87
  (352, 35200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 60),
  -- Kecleon - Substitute - TM90
  (352, 35200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 61),
  -- Kecleon - Trick Room - TM92
  (352, 35200, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 62),
  -- Kecleon - Cut - TM93
  (352, 35200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 63),
  -- Kecleon - Strength - TM96
  (352, 35200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 64),
  -- Kecleon - Rock Smash - TM98
  (352, 35200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 65),
  -- Kecleon - Disable - Egg
  (352, 35200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kecleon - Fake Out - Egg
  (352, 35200, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kecleon - Foul Play - Egg
  (352, 35200, 492, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kecleon - Magic Coat - Egg
  (352, 35200, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kecleon - Power-Up Punch - Egg
  (352, 35200, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kecleon - Recover - Egg
  (352, 35200, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kecleon - Trick - Egg
  (352, 35200, 271, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Shuppet - Knock Off - Starting Move
  (353, 35300, 282, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shuppet - Screech - Level 4
  (353, 35300, 103, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shuppet - Night Shade - Level 7
  (353, 35300, 101, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Shuppet - Spite - Level 10
  (353, 35300, 180, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shuppet - Shadow Sneak - Level 13
  (353, 35300, 425, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Shuppet - Will-O-Wisp - Level 16
  (353, 35300, 261, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shuppet - Pain Split - Level 19
  (353, 35300, 220, 21, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Shuppet - Hex - Level 22
  (353, 35300, 506, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Shuppet - Curse - Level 26
  (353, 35300, 174, 21, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Shuppet - Shadow Ball - Level 30
  (353, 35300, 247, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Shuppet - Role Play - Level 34
  (353, 35300, 272, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Shuppet - Sucker Punch - Level 38
  (353, 35300, 389, 21, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Shuppet - Knock Off - Level 42
  (353, 35300, 282, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Shuppet - Grudge - Level 46
  (353, 35300, 288, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Shuppet - Trick - Level 50
  (353, 35300, 271, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Shuppet - Phantom Force - Level 54
  (353, 35300, 566, 21, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Shuppet - Calm Mind - TM04
  (353, 35300, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Shuppet - Sunny Day - TM11
  (353, 35300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Shuppet - Taunt - TM12
  (353, 35300, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Shuppet - Protect - TM17
  (353, 35300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Shuppet - Rain Dance - TM18
  (353, 35300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Shuppet - Dazzling Gleam - TM21
  (353, 35300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 22),
  -- Shuppet - Thunderbolt - TM24
  (353, 35300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 23),
  -- Shuppet - Thunder - TM25
  (353, 35300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 24),
  -- Shuppet - Psychic - TM29
  (353, 35300, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 25),
  -- Shuppet - Shadow Ball - TM30
  (353, 35300, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Shuppet - Double Team - TM32
  (353, 35300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Shuppet - Shock Wave - TM34
  (353, 35300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Shuppet - Torment - TM41
  (353, 35300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Shuppet - Facade - TM42
  (353, 35300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Shuppet - Rest - TM44
  (353, 35300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Shuppet - Attract - TM45
  (353, 35300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Shuppet - Thief - TM46
  (353, 35300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 33),
  -- Shuppet - Skill Swap - TM48
  (353, 35300, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 34),
  -- Shuppet - Charge Beam - TM57
  (353, 35300, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Shuppet - Endure - TM58
  (353, 35300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Shuppet - Will-O-Wisp - TM61
  (353, 35300, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 37),
  -- Shuppet - Payback - TM66
  (353, 35300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 38),
  -- Shuppet - Flash - TM70
  (353, 35300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Shuppet - Thunder Wave - TM73
  (353, 35300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 40),
  -- Shuppet - Psych Up - TM77
  (353, 35300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Shuppet - Dark Pulse - TM79
  (353, 35300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 42),
  -- Shuppet - Sleep Talk - TM82
  (353, 35300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Shuppet - Dream Eater - TM85
  (353, 35300, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 44),
  -- Shuppet - Swagger - TM87
  (353, 35300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Shuppet - Substitute - TM90
  (353, 35300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Shuppet - Trick Room - TM92
  (353, 35300, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 47),
  -- Shuppet - Astonish - Egg
  (353, 35300, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shuppet - Confuse Ray - Egg
  (353, 35300, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shuppet - Destiny Bond - Egg
  (353, 35300, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shuppet - Disable - Egg
  (353, 35300, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuppet - Gunk Shot - Egg
  (353, 35300, 441, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuppet - Imprison - Egg
  (353, 35300, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuppet - Phantom Force - Egg
  (353, 35300, 566, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuppet - Shadow Sneak - Egg
  (353, 35300, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Banette - Phantom Force - Starting Move
  (354, 35400, 566, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Banette - Knock Off - Starting Move
  (354, 35400, 282, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Banette - Screech - Starting Move
  (354, 35400, 103, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Banette - Night Shade - Starting Move
  (354, 35400, 101, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Banette - Spite - Starting Move
  (354, 35400, 180, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Banette - Screech - Level 4
  (354, 35400, 103, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Banette - Night Shade - Level 7
  (354, 35400, 101, 21, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Banette - Spite - Level 10
  (354, 35400, 180, 21, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Banette - Shadow Sneak - Level 13
  (354, 35400, 425, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Banette - Will-O-Wisp - Level 16
  (354, 35400, 261, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Banette - Pain Split - Level 19
  (354, 35400, 220, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Banette - Hex - Level 22
  (354, 35400, 506, 21, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Banette - Curse - Level 26
  (354, 35400, 174, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Banette - Shadow Ball - Level 30
  (354, 35400, 247, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Banette - Role Play - Level 34
  (354, 35400, 272, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Banette - Sucker Punch - Level 40
  (354, 35400, 389, 21, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Banette - Knock Off - Level 46
  (354, 35400, 282, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Banette - Grudge - Level 52
  (354, 35400, 288, 21, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Banette - Trick - Level 58
  (354, 35400, 271, 21, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Banette - Phantom Force - Level 64
  (354, 35400, 566, 21, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Banette - Calm Mind - TM04
  (354, 35400, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 21),
  -- Banette - Sunny Day - TM11
  (354, 35400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Banette - Taunt - TM12
  (354, 35400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 23),
  -- Banette - Hyper Beam - TM15
  (354, 35400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Banette - Protect - TM17
  (354, 35400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Banette - Rain Dance - TM18
  (354, 35400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Banette - Dazzling Gleam - TM21
  (354, 35400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 27),
  -- Banette - Thunderbolt - TM24
  (354, 35400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 28),
  -- Banette - Thunder - TM25
  (354, 35400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 29),
  -- Banette - Psychic - TM29
  (354, 35400, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Banette - Shadow Ball - TM30
  (354, 35400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Banette - Double Team - TM32
  (354, 35400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Banette - Shock Wave - TM34
  (354, 35400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Banette - Torment - TM41
  (354, 35400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 34),
  -- Banette - Facade - TM42
  (354, 35400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Banette - Rest - TM44
  (354, 35400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Banette - Attract - TM45
  (354, 35400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Banette - Thief - TM46
  (354, 35400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Banette - Skill Swap - TM48
  (354, 35400, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 39),
  -- Banette - Fling - TM56
  (354, 35400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Banette - Charge Beam - TM57
  (354, 35400, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Banette - Endure - TM58
  (354, 35400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Banette - Will-O-Wisp - TM61
  (354, 35400, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 43),
  -- Banette - Shadow Claw - TM65
  (354, 35400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 44),
  -- Banette - Payback - TM66
  (354, 35400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Banette - Giga Impact - TM68
  (354, 35400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Banette - Flash - TM70
  (354, 35400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 47),
  -- Banette - Thunder Wave - TM73
  (354, 35400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 48),
  -- Banette - Psych Up - TM77
  (354, 35400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Banette - Dark Pulse - TM79
  (354, 35400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 50),
  -- Banette - Sleep Talk - TM82
  (354, 35400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 51),
  -- Banette - Dream Eater - TM85
  (354, 35400, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 52),
  -- Banette - Swagger - TM87
  (354, 35400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Banette - Substitute - TM90
  (354, 35400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Banette - Trick Room - TM92
  (354, 35400, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 55),
  -- Banette - Astonish - Egg
  (354, 35400, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Banette - Confuse Ray - Egg
  (354, 35400, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Banette - Destiny Bond - Egg
  (354, 35400, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Banette - Disable - Egg
  (354, 35400, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Banette - Gunk Shot - Egg
  (354, 35400, 441, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Banette - Imprison - Egg
  (354, 35400, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Banette - Phantom Force - Egg
  (354, 35400, 566, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Banette - Shadow Sneak - Egg
  (354, 35400, 425, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Duskull - Astonish - Starting Move
  (355, 35500, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Duskull - Leer - Starting Move
  (355, 35500, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 4
  (355, 35500, 50, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Duskull - Shadow Sneak - Level 8
  (355, 35500, 425, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Duskull - Confuse Ray - Level 12
  (355, 35500, 109, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Duskull - Night Shade - Level 16
  (355, 35500, 101, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Duskull - Payback - Level 20
  (355, 35500, 371, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Duskull - Will-O-Wisp - Level 24
  (355, 35500, 261, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Duskull - Mean Look - Level 28
  (355, 35500, 212, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Duskull - Hex - Level 32
  (355, 35500, 506, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Duskull - Curse - Level 36
  (355, 35500, 174, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Duskull - Shadow Ball - Level 40
  (355, 35500, 247, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Duskull - Future Sight - Level 44
  (355, 35500, 248, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Duskull - Calm Mind - TM04
  (355, 35500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 14),
  -- Duskull - Sunny Day - TM11
  (355, 35500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Duskull - Taunt - TM12
  (355, 35500, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 16),
  -- Duskull - Ice Beam - TM13
  (355, 35500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Duskull - Blizzard - TM14
  (355, 35500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Duskull - Protect - TM17
  (355, 35500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Duskull - Rain Dance - TM18
  (355, 35500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Duskull - Psychic - TM29
  (355, 35500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 21),
  -- Duskull - Shadow Ball - TM30
  (355, 35500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 22),
  -- Duskull - Double Team - TM32
  (355, 35500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Duskull - Torment - TM41
  (355, 35500, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 24),
  -- Duskull - Facade - TM42
  (355, 35500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Duskull - Rest - TM44
  (355, 35500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Duskull - Attract - TM45
  (355, 35500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Duskull - Thief - TM46
  (355, 35500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 28),
  -- Duskull - Skill Swap - TM48
  (355, 35500, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 29),
  -- Duskull - Fling - TM56
  (355, 35500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 30),
  -- Duskull - Charge Beam - TM57
  (355, 35500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 31),
  -- Duskull - Endure - TM58
  (355, 35500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Duskull - Will-O-Wisp - TM61
  (355, 35500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 33),
  -- Duskull - Payback - TM66
  (355, 35500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 34),
  -- Duskull - Flash - TM70
  (355, 35500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 35),
  -- Duskull - Psych Up - TM77
  (355, 35500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 36),
  -- Duskull - Dark Pulse - TM79
  (355, 35500, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 37),
  -- Duskull - Sleep Talk - TM82
  (355, 35500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Duskull - Dream Eater - TM85
  (355, 35500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 39),
  -- Duskull - Swagger - TM87
  (355, 35500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Duskull - Substitute - TM90
  (355, 35500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Duskull - Trick Room - TM92
  (355, 35500, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 42),
  -- Duskull - Destiny Bond - Egg
  (355, 35500, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Duskull - Grudge - Egg
  (355, 35500, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Duskull - Haze - Egg
  (355, 35500, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Duskull - Imprison - Egg
  (355, 35500, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Duskull - Memento - Egg
  (355, 35500, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Duskull - Pain Split - Egg
  (355, 35500, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dusclops - Shadow Punch - Starting Move
  (356, 35600, 325, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Dusclops - Fire Punch - Starting Move
  (356, 35600, 7, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Dusclops - Ice Punch - Starting Move
  (356, 35600, 8, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Dusclops - Thunder Punch - Starting Move
  (356, 35600, 9, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Dusclops - Gravity - Starting Move
  (356, 35600, 356, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Dusclops - Bind - Starting Move
  (356, 35600, 20, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Dusclops - Astonish - Starting Move
  (356, 35600, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Dusclops - Leer - Starting Move
  (356, 35600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Dusclops - Disable - Starting Move
  (356, 35600, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Dusclops - Shadow Sneak - Starting Move
  (356, 35600, 425, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Dusclops - Shadow Punch - Evolution
  (356, 35600, 325, 21, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Dusclops - Confuse Ray - Level 12
  (356, 35600, 109, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Dusclops - Night Shade - Level 16
  (356, 35600, 101, 21, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Dusclops - Payback - Level 20
  (356, 35600, 371, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Dusclops - Will-O-Wisp - Level 24
  (356, 35600, 261, 21, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Dusclops - Mean Look - Level 28
  (356, 35600, 212, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Dusclops - Hex - Level 32
  (356, 35600, 506, 21, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Dusclops - Curse - Level 36
  (356, 35600, 174, 21, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Dusclops - Shadow Ball - Level 42
  (356, 35600, 247, 21, NULL, 1, 42, NULL, NULL, NULL, 19),
  -- Dusclops - Future Sight - Level 48
  (356, 35600, 248, 21, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Dusclops - Focus Punch - TM01
  (356, 35600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Dusclops - Calm Mind - TM04
  (356, 35600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 22),
  -- Dusclops - Sunny Day - TM11
  (356, 35600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Dusclops - Taunt - TM12
  (356, 35600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Dusclops - Ice Beam - TM13
  (356, 35600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 25),
  -- Dusclops - Blizzard - TM14
  (356, 35600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 26),
  -- Dusclops - Hyper Beam - TM15
  (356, 35600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 27),
  -- Dusclops - Protect - TM17
  (356, 35600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 28),
  -- Dusclops - Rain Dance - TM18
  (356, 35600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 29),
  -- Dusclops - Earthquake - TM26
  (356, 35600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Dusclops - Psychic - TM29
  (356, 35600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 31),
  -- Dusclops - Shadow Ball - TM30
  (356, 35600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Dusclops - Brick Break - TM31
  (356, 35600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Dusclops - Double Team - TM32
  (356, 35600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Dusclops - Rock Tomb - TM39
  (356, 35600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Dusclops - Torment - TM41
  (356, 35600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Dusclops - Facade - TM42
  (356, 35600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Dusclops - Rest - TM44
  (356, 35600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Dusclops - Attract - TM45
  (356, 35600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Dusclops - Thief - TM46
  (356, 35600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Dusclops - Skill Swap - TM48
  (356, 35600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Dusclops - Fling - TM56
  (356, 35600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Dusclops - Charge Beam - TM57
  (356, 35600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 43),
  -- Dusclops - Endure - TM58
  (356, 35600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 44),
  -- Dusclops - Will-O-Wisp - TM61
  (356, 35600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 45),
  -- Dusclops - Payback - TM66
  (356, 35600, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 46),
  -- Dusclops - Giga Impact - TM68
  (356, 35600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Dusclops - Flash - TM70
  (356, 35600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Dusclops - Psych Up - TM77
  (356, 35600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 49),
  -- Dusclops - Dark Pulse - TM79
  (356, 35600, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 50),
  -- Dusclops - Rock Slide - TM80
  (356, 35600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Dusclops - Sleep Talk - TM82
  (356, 35600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Dusclops - Bulldoze - TM83
  (356, 35600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Dusclops - Dream Eater - TM85
  (356, 35600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 54),
  -- Dusclops - Swagger - TM87
  (356, 35600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 55),
  -- Dusclops - Substitute - TM90
  (356, 35600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 56),
  -- Dusclops - Trick Room - TM92
  (356, 35600, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 57),
  -- Dusclops - Strength - TM96
  (356, 35600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 58),
  -- Dusclops - Rock Smash - TM98
  (356, 35600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 59),
  -- Dusclops - Destiny Bond - Egg
  (356, 35600, 194, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dusclops - Grudge - Egg
  (356, 35600, 288, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dusclops - Haze - Egg
  (356, 35600, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dusclops - Imprison - Egg
  (356, 35600, 286, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dusclops - Memento - Egg
  (356, 35600, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dusclops - Pain Split - Egg
  (356, 35600, 220, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Tropius - Leaf Storm - Starting Move
  (357, 35700, 437, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Tropius - Leer - Starting Move
  (357, 35700, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Tropius - Gust - Starting Move
  (357, 35700, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Tropius - Growth - Starting Move
  (357, 35700, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Tropius - Razor Leaf - Starting Move
  (357, 35700, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Tropius - Sweet Scent - Level 6
  (357, 35700, 230, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Tropius - Stomp - Level 10
  (357, 35700, 23, 21, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Tropius - Magical Leaf - Level 16
  (357, 35700, 345, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Tropius - Whirlwind - Level 21
  (357, 35700, 18, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tropius - Leaf Tornado - Level 26
  (357, 35700, 536, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Tropius - Dragon Dance - Level 30
  (357, 35700, 349, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Tropius - Air Slash - Level 36
  (357, 35700, 403, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tropius - Body Slam - Level 41
  (357, 35700, 34, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Tropius - Dragon Hammer - Level 46
  (357, 35700, 692, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Tropius - Synthesis - Level 50
  (357, 35700, 235, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Tropius - Solar Beam - Level 56
  (357, 35700, 76, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Tropius - Leaf Storm - Level 61
  (357, 35700, 437, 21, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Tropius - Roar - TM05
  (357, 35700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Tropius - Bullet Seed - TM09
  (357, 35700, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 19),
  -- Tropius - Sunny Day - TM11
  (357, 35700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Tropius - Hyper Beam - TM15
  (357, 35700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Tropius - Protect - TM17
  (357, 35700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Tropius - Giga Drain - TM19
  (357, 35700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Tropius - Safeguard - TM20
  (357, 35700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Tropius - Solar Beam - TM22
  (357, 35700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 25),
  -- Tropius - Earthquake - TM26
  (357, 35700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Tropius - Double Team - TM32
  (357, 35700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Tropius - Aerial Ace - TM40
  (357, 35700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Tropius - Facade - TM42
  (357, 35700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Tropius - Rest - TM44
  (357, 35700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Tropius - Attract - TM45
  (357, 35700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Tropius - Steel Wing - TM47
  (357, 35700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 32),
  -- Tropius - Roost - TM51
  (357, 35700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 33),
  -- Tropius - Energy Ball - TM53
  (357, 35700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 34),
  -- Tropius - Endure - TM58
  (357, 35700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Tropius - Dragon Pulse - TM59
  (357, 35700, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Tropius - Giga Impact - TM68
  (357, 35700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Tropius - Flash - TM70
  (357, 35700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Tropius - Swords Dance - TM75
  (357, 35700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Tropius - Sleep Talk - TM82
  (357, 35700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Tropius - Bulldoze - TM83
  (357, 35700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Tropius - Grass Knot - TM86
  (357, 35700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 42),
  -- Tropius - Swagger - TM87
  (357, 35700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Tropius - Substitute - TM90
  (357, 35700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Tropius - Cut - TM93
  (357, 35700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Tropius - Fly - TM94
  (357, 35700, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 46),
  -- Tropius - Strength - TM96
  (357, 35700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Tropius - Defog - TM97
  (357, 35700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 48),
  -- Tropius - Rock Smash - TM98
  (357, 35700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Tropius - Curse - Egg
  (357, 35700, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tropius - Dragon Dance - Egg
  (357, 35700, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tropius - Dragon Hammer - Egg
  (357, 35700, 692, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tropius - Headbutt - Egg
  (357, 35700, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tropius - Leaf Blade - Egg
  (357, 35700, 348, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tropius - Leaf Storm - Egg
  (357, 35700, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tropius - Leech Seed - Egg
  (357, 35700, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tropius - Nature Power - Egg
  (357, 35700, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tropius - Slam - Egg
  (357, 35700, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tropius - Synthesis - Egg
  (357, 35700, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimecho - Healing Wish - Starting Move
  (358, 35800, 361, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chimecho - Wrap - Starting Move
  (358, 35800, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Chimecho - Growl - Starting Move
  (358, 35800, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Chimecho - Astonish - Starting Move
  (358, 35800, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Chimecho - Confusion - Starting Move
  (358, 35800, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Chimecho - Last Resort - Starting Move
  (358, 35800, 387, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Chimecho - Entrainment - Starting Move
  (358, 35800, 494, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Chimecho - Growl - Level 4
  (358, 35800, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Chimecho - Astonish - Level 7
  (358, 35800, 310, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Chimecho - Confusion - Level 10
  (358, 35800, 93, 21, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Chimecho - Yawn - Level 13
  (358, 35800, 281, 21, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Chimecho - Light Screen - Level 16
  (358, 35800, 113, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Chimecho - Take Down - Level 19
  (358, 35800, 36, 21, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Chimecho - Extrasensory - Level 22
  (358, 35800, 326, 21, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Chimecho - Heal Bell - Level 27
  (358, 35800, 215, 21, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Chimecho - Uproar - Level 32
  (358, 35800, 253, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Chimecho - Safeguard - Level 37
  (358, 35800, 219, 21, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Chimecho - Double-Edge - Level 42
  (358, 35800, 38, 21, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Chimecho - Heal Pulse - Level 47
  (358, 35800, 505, 21, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Chimecho - Psychic - Level 52
  (358, 35800, 94, 21, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Chimecho - Healing Wish - Level 57
  (358, 35800, 361, 21, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Chimecho - Calm Mind - TM04
  (358, 35800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 22),
  -- Chimecho - Sunny Day - TM11
  (358, 35800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Chimecho - Taunt - TM12
  (358, 35800, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 24),
  -- Chimecho - Light Screen - TM16
  (358, 35800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Chimecho - Protect - TM17
  (358, 35800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Chimecho - Rain Dance - TM18
  (358, 35800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Chimecho - Safeguard - TM20
  (358, 35800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Chimecho - Dazzling Gleam - TM21
  (358, 35800, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 29),
  -- Chimecho - Psychic - TM29
  (358, 35800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Chimecho - Shadow Ball - TM30
  (358, 35800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Chimecho - Double Team - TM32
  (358, 35800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Chimecho - Reflect - TM33
  (358, 35800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 33),
  -- Chimecho - Shock Wave - TM34
  (358, 35800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Chimecho - Torment - TM41
  (358, 35800, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 35),
  -- Chimecho - Facade - TM42
  (358, 35800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Chimecho - Rest - TM44
  (358, 35800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Chimecho - Attract - TM45
  (358, 35800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Chimecho - Skill Swap - TM48
  (358, 35800, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 39),
  -- Chimecho - Energy Ball - TM53
  (358, 35800, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 40),
  -- Chimecho - Charge Beam - TM57
  (358, 35800, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Chimecho - Endure - TM58
  (358, 35800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Chimecho - Recycle - TM67
  (358, 35800, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Chimecho - Flash - TM70
  (358, 35800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 44),
  -- Chimecho - Thunder Wave - TM73
  (358, 35800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 45),
  -- Chimecho - Psych Up - TM77
  (358, 35800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 46),
  -- Chimecho - Sleep Talk - TM82
  (358, 35800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Chimecho - Dream Eater - TM85
  (358, 35800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 48),
  -- Chimecho - Grass Knot - TM86
  (358, 35800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Chimecho - Swagger - TM87
  (358, 35800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Chimecho - Substitute - TM90
  (358, 35800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Chimecho - Trick Room - TM92
  (358, 35800, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 52),
  -- Chimecho - Cosmic Power - Egg
  (358, 35800, 322, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimecho - Curse - Egg
  (358, 35800, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimecho - Disable - Egg
  (358, 35800, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimecho - Future Sight - Egg
  (358, 35800, 248, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimecho - Hypnosis - Egg
  (358, 35800, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimecho - Perish Song - Egg
  (358, 35800, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimecho - Recover - Egg
  (358, 35800, 105, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimecho - Stored Power - Egg
  (358, 35800, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimecho - Wish - Egg
  (358, 35800, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Absol - Quick Attack - Starting Move
  (359, 35900, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Absol - Leer - Starting Move
  (359, 35900, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Absol - Double Team - Level 5
  (359, 35900, 104, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Absol - Knock Off - Level 10
  (359, 35900, 282, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Absol - Detect - Level 15
  (359, 35900, 197, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Absol - Taunt - Level 20
  (359, 35900, 269, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Absol - Slash - Level 25
  (359, 35900, 163, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Absol - Night Slash - Level 30
  (359, 35900, 400, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Absol - Focus Energy - Level 35
  (359, 35900, 116, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Absol - Sucker Punch - Level 40
  (359, 35900, 389, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Absol - Swords Dance - Level 45
  (359, 35900, 14, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Absol - Future Sight - Level 50
  (359, 35900, 248, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Absol - Perish Song - Level 55
  (359, 35900, 195, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Absol - Water Pulse - TM03
  (359, 35900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Absol - Calm Mind - TM04
  (359, 35900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Absol - Hail - TM07
  (359, 35900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Absol - Sunny Day - TM11
  (359, 35900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Absol - Taunt - TM12
  (359, 35900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 18),
  -- Absol - Ice Beam - TM13
  (359, 35900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Absol - Blizzard - TM14
  (359, 35900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Absol - Hyper Beam - TM15
  (359, 35900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Absol - Protect - TM17
  (359, 35900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Absol - Rain Dance - TM18
  (359, 35900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Absol - Iron Tail - TM23
  (359, 35900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Absol - Thunderbolt - TM24
  (359, 35900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Absol - Thunder - TM25
  (359, 35900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Absol - Shadow Ball - TM30
  (359, 35900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Absol - Double Team - TM32
  (359, 35900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Absol - Shock Wave - TM34
  (359, 35900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Absol - Flamethrower - TM35
  (359, 35900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Absol - Sandstorm - TM37
  (359, 35900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 31),
  -- Absol - Fire Blast - TM38
  (359, 35900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 32),
  -- Absol - Rock Tomb - TM39
  (359, 35900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Absol - Aerial Ace - TM40
  (359, 35900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 34),
  -- Absol - Torment - TM41
  (359, 35900, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 35),
  -- Absol - Facade - TM42
  (359, 35900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Absol - Rest - TM44
  (359, 35900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Absol - Attract - TM45
  (359, 35900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Absol - Thief - TM46
  (359, 35900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Absol - False Swipe - TM54
  (359, 35900, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 40),
  -- Absol - Charge Beam - TM57
  (359, 35900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Absol - Endure - TM58
  (359, 35900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Absol - Will-O-Wisp - TM61
  (359, 35900, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 43),
  -- Absol - Shadow Claw - TM65
  (359, 35900, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 44),
  -- Absol - Payback - TM66
  (359, 35900, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 45),
  -- Absol - Giga Impact - TM68
  (359, 35900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 46),
  -- Absol - Flash - TM70
  (359, 35900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 47),
  -- Absol - Stone Edge - TM71
  (359, 35900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 48),
  -- Absol - Thunder Wave - TM73
  (359, 35900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 49),
  -- Absol - Swords Dance - TM75
  (359, 35900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 50),
  -- Absol - Psych Up - TM77
  (359, 35900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 51),
  -- Absol - Snarl - TM78
  (359, 35900, 555, 21, NULL, 2, NULL, NULL, 21002078, NULL, 52),
  -- Absol - Dark Pulse - TM79
  (359, 35900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 53),
  -- Absol - Rock Slide - TM80
  (359, 35900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 54),
  -- Absol - X-Scissor - TM81
  (359, 35900, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 55),
  -- Absol - Sleep Talk - TM82
  (359, 35900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 56),
  -- Absol - Dream Eater - TM85
  (359, 35900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 57),
  -- Absol - Swagger - TM87
  (359, 35900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 58),
  -- Absol - Substitute - TM90
  (359, 35900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 59),
  -- Absol - Cut - TM93
  (359, 35900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 60),
  -- Absol - Strength - TM96
  (359, 35900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 61),
  -- Absol - Rock Smash - TM98
  (359, 35900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 62),
  -- Absol - Assurance - Egg
  (359, 35900, 372, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Absol - Baton Pass - Egg
  (359, 35900, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Absol - Bite - Egg
  (359, 35900, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Absol - Curse - Egg
  (359, 35900, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Absol - Double-Edge - Egg
  (359, 35900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Absol - Feint - Egg
  (359, 35900, 364, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Absol - Hex - Egg
  (359, 35900, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Absol - Magic Coat - Egg
  (359, 35900, 277, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Absol - Mean Look - Egg
  (359, 35900, 212, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Absol - Megahorn - Egg
  (359, 35900, 224, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Absol - Perish Song - Egg
  (359, 35900, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Absol - Play Rough - Egg
  (359, 35900, 583, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Absol - Sucker Punch - Egg
  (359, 35900, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Absol - Zen Headbutt - Egg
  (359, 35900, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Wynaut - Counter - Starting Move
  (360, 36000, 68, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wynaut - Mirror Coat - Starting Move
  (360, 36000, 243, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wynaut - Safeguard - Starting Move
  (360, 36000, 219, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Wynaut - Destiny Bond - Starting Move
  (360, 36000, 194, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Wynaut - Splash - Starting Move
  (360, 36000, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Wynaut - Charm - Starting Move
  (360, 36000, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Wynaut - Encore - Starting Move
  (360, 36000, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Wynaut - Amnesia - Starting Move
  (360, 36000, 133, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Wynaut - Safeguard - TM20
  (360, 36000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 9),
  -- Snorunt - Powder Snow - Starting Move
  (361, 36100, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Snorunt - Astonish - Starting Move
  (361, 36100, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Snorunt - Leer - Level 5
  (361, 36100, 43, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snorunt - Double Team - Level 10
  (361, 36100, 104, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Ice Shard - Level 15
  (361, 36100, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Snorunt - Protect - Level 20
  (361, 36100, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snorunt - Icy Wind - Level 25
  (361, 36100, 196, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorunt - Frost Breath - Level 30
  (361, 36100, 524, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Snorunt - Bite - Level 35
  (361, 36100, 44, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Snorunt - Ice Fang - Level 40
  (361, 36100, 423, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Snorunt - Hail - Level 45
  (361, 36100, 258, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Snorunt - Headbutt - Level 50
  (361, 36100, 29, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Snorunt - Crunch - Level 55
  (361, 36100, 242, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Snorunt - Blizzard - Level 60
  (361, 36100, 59, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Snorunt - Water Pulse - TM03
  (361, 36100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Snorunt - Hail - TM07
  (361, 36100, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Snorunt - Ice Beam - TM13
  (361, 36100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Snorunt - Blizzard - TM14
  (361, 36100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Snorunt - Light Screen - TM16
  (361, 36100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Snorunt - Protect - TM17
  (361, 36100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Snorunt - Rain Dance - TM18
  (361, 36100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Snorunt - Safeguard - TM20
  (361, 36100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Snorunt - Shadow Ball - TM30
  (361, 36100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 23),
  -- Snorunt - Double Team - TM32
  (361, 36100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Snorunt - Facade - TM42
  (361, 36100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Snorunt - Rest - TM44
  (361, 36100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Snorunt - Attract - TM45
  (361, 36100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Snorunt - Endure - TM58
  (361, 36100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Snorunt - Flash - TM70
  (361, 36100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 29),
  -- Snorunt - Avalanche - TM72
  (361, 36100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 30),
  -- Snorunt - Sleep Talk - TM82
  (361, 36100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Snorunt - Swagger - TM87
  (361, 36100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 32),
  -- Snorunt - Substitute - TM90
  (361, 36100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 33),
  -- Snorunt - Block - Egg
  (361, 36100, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Snorunt - Disable - Egg
  (361, 36100, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Snorunt - Fake Tears - Egg
  (361, 36100, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Snorunt - Hex - Egg
  (361, 36100, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Snorunt - Icicle Crash - Egg
  (361, 36100, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Snorunt - Rollout - Egg
  (361, 36100, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snorunt - Spikes - Egg
  (361, 36100, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snorunt - Switcheroo - Egg
  (361, 36100, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snorunt - Weather Ball - Egg
  (361, 36100, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Glalie - Freeze-Dry - Starting Move
  (362, 36200, 573, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Glalie - Sheer Cold - Starting Move
  (362, 36200, 329, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Glalie - Powder Snow - Starting Move
  (362, 36200, 181, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Glalie - Astonish - Starting Move
  (362, 36200, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Glalie - Leer - Starting Move
  (362, 36200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Glalie - Double Team - Starting Move
  (362, 36200, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Glalie - Freeze-Dry - Evolution
  (362, 36200, 573, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Glalie - Ice Shard - Level 15
  (362, 36200, 420, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Glalie - Protect - Level 20
  (362, 36200, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Glalie - Icy Wind - Level 25
  (362, 36200, 196, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Glalie - Frost Breath - Level 30
  (362, 36200, 524, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Glalie - Bite - Level 35
  (362, 36200, 44, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Glalie - Ice Fang - Level 40
  (362, 36200, 423, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Glalie - Hail - Level 47
  (362, 36200, 258, 21, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Glalie - Headbutt - Level 54
  (362, 36200, 29, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Glalie - Crunch - Level 61
  (362, 36200, 242, 21, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Glalie - Blizzard - Level 68
  (362, 36200, 59, 21, NULL, 1, 68, NULL, NULL, NULL, 17),
  -- Glalie - Water Pulse - TM03
  (362, 36200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Glalie - Hail - TM07
  (362, 36200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Glalie - Taunt - TM12
  (362, 36200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 20),
  -- Glalie - Ice Beam - TM13
  (362, 36200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Glalie - Blizzard - TM14
  (362, 36200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Glalie - Hyper Beam - TM15
  (362, 36200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Glalie - Light Screen - TM16
  (362, 36200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Glalie - Protect - TM17
  (362, 36200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Glalie - Rain Dance - TM18
  (362, 36200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Glalie - Safeguard - TM20
  (362, 36200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 27),
  -- Glalie - Earthquake - TM26
  (362, 36200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Glalie - Shadow Ball - TM30
  (362, 36200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Glalie - Double Team - TM32
  (362, 36200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Glalie - Torment - TM41
  (362, 36200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 31),
  -- Glalie - Facade - TM42
  (362, 36200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Glalie - Rest - TM44
  (362, 36200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Glalie - Attract - TM45
  (362, 36200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Glalie - Endure - TM58
  (362, 36200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Glalie - Explosion - TM64
  (362, 36200, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 36),
  -- Glalie - Payback - TM66
  (362, 36200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 37),
  -- Glalie - Giga Impact - TM68
  (362, 36200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Glalie - Flash - TM70
  (362, 36200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 39),
  -- Glalie - Avalanche - TM72
  (362, 36200, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 40),
  -- Glalie - Gyro Ball - TM74
  (362, 36200, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 41),
  -- Glalie - Dark Pulse - TM79
  (362, 36200, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 42),
  -- Glalie - Sleep Talk - TM82
  (362, 36200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Glalie - Bulldoze - TM83
  (362, 36200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Glalie - Swagger - TM87
  (362, 36200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Glalie - Substitute - TM90
  (362, 36200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Glalie - Block - Egg
  (362, 36200, 335, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Glalie - Disable - Egg
  (362, 36200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Glalie - Fake Tears - Egg
  (362, 36200, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Glalie - Hex - Egg
  (362, 36200, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Glalie - Icicle Crash - Egg
  (362, 36200, 556, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Glalie - Rollout - Egg
  (362, 36200, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Glalie - Spikes - Egg
  (362, 36200, 191, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glalie - Switcheroo - Egg
  (362, 36200, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glalie - Weather Ball - Egg
  (362, 36200, 311, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spheal - Rollout - Starting Move
  (363, 36300, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Spheal - Defense Curl - Starting Move
  (363, 36300, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Spheal - Growl - Level 4
  (363, 36300, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Spheal - Water Gun - Level 8
  (363, 36300, 55, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spheal - Powder Snow - Level 12
  (363, 36300, 181, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spheal - Rest - Level 16
  (363, 36300, 156, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Spheal - Snore - Level 20
  (363, 36300, 173, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Spheal - Brine - Level 24
  (363, 36300, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Spheal - Aurora Beam - Level 28
  (363, 36300, 62, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Spheal - Encore - Level 33
  (363, 36300, 227, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Spheal - Body Slam - Level 36
  (363, 36300, 34, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Spheal - Surf - Level 40
  (363, 36300, 57, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Spheal - Blizzard - Level 44
  (363, 36300, 59, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Spheal - Hail - Level 48
  (363, 36300, 258, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Spheal - Sheer Cold - Level 52
  (363, 36300, 329, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Spheal - Water Pulse - TM03
  (363, 36300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Spheal - Hail - TM07
  (363, 36300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Spheal - Ice Beam - TM13
  (363, 36300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Spheal - Blizzard - TM14
  (363, 36300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Spheal - Protect - TM17
  (363, 36300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Spheal - Rain Dance - TM18
  (363, 36300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Spheal - Iron Tail - TM23
  (363, 36300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Spheal - Earthquake - TM26
  (363, 36300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Spheal - Double Team - TM32
  (363, 36300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Spheal - Rock Tomb - TM39
  (363, 36300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Spheal - Facade - TM42
  (363, 36300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Spheal - Rest - TM44
  (363, 36300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Spheal - Attract - TM45
  (363, 36300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Spheal - Brine - TM55
  (363, 36300, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 29),
  -- Spheal - Endure - TM58
  (363, 36300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Spheal - Rock Slide - TM80
  (363, 36300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 31),
  -- Spheal - Sleep Talk - TM82
  (363, 36300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Spheal - Bulldoze - TM83
  (363, 36300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 33),
  -- Spheal - Swagger - TM87
  (363, 36300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Spheal - Substitute - TM90
  (363, 36300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Spheal - Surf - TM95
  (363, 36300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 36),
  -- Spheal - Strength - TM96
  (363, 36300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 37),
  -- Spheal - Rock Smash - TM98
  (363, 36300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 38),
  -- Spheal - Waterfall - TM99
  (363, 36300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 39),
  -- Spheal - Aqua Ring - Egg
  (363, 36300, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spheal - Belly Drum - Egg
  (363, 36300, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spheal - Curse - Egg
  (363, 36300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spheal - Fissure - Egg
  (363, 36300, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spheal - Rollout - Egg
  (363, 36300, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spheal - Spit Up - Egg
  (363, 36300, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spheal - Stockpile - Egg
  (363, 36300, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spheal - Swallow - Egg
  (363, 36300, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spheal - Yawn - Egg
  (363, 36300, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sealeo - Swagger - Starting Move
  (364, 36400, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sealeo - Rollout - Starting Move
  (364, 36400, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sealeo - Defense Curl - Starting Move
  (364, 36400, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Sealeo - Growl - Starting Move
  (364, 36400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Sealeo - Water Gun - Starting Move
  (364, 36400, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Sealeo - Swagger - Evolution
  (364, 36400, 207, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Sealeo - Powder Snow - Level 12
  (364, 36400, 181, 21, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Sealeo - Rest - Level 16
  (364, 36400, 156, 21, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Sealeo - Snore - Level 20
  (364, 36400, 173, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Sealeo - Brine - Level 24
  (364, 36400, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sealeo - Aurora Beam - Level 28
  (364, 36400, 62, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sealeo - Encore - Level 35
  (364, 36400, 227, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Sealeo - Body Slam - Level 40
  (364, 36400, 34, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Sealeo - Surf - Level 46
  (364, 36400, 57, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Sealeo - Blizzard - Level 52
  (364, 36400, 59, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Sealeo - Hail - Level 58
  (364, 36400, 258, 21, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Sealeo - Sheer Cold - Level 64
  (364, 36400, 329, 21, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Sealeo - Water Pulse - TM03
  (364, 36400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Sealeo - Roar - TM05
  (364, 36400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Sealeo - Hail - TM07
  (364, 36400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Sealeo - Ice Beam - TM13
  (364, 36400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Sealeo - Blizzard - TM14
  (364, 36400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Sealeo - Protect - TM17
  (364, 36400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Sealeo - Rain Dance - TM18
  (364, 36400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Sealeo - Iron Tail - TM23
  (364, 36400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Sealeo - Earthquake - TM26
  (364, 36400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Sealeo - Double Team - TM32
  (364, 36400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Sealeo - Rock Tomb - TM39
  (364, 36400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Sealeo - Facade - TM42
  (364, 36400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Sealeo - Rest - TM44
  (364, 36400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Sealeo - Attract - TM45
  (364, 36400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Sealeo - Brine - TM55
  (364, 36400, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 32),
  -- Sealeo - Endure - TM58
  (364, 36400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Sealeo - Rock Slide - TM80
  (364, 36400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 34),
  -- Sealeo - Sleep Talk - TM82
  (364, 36400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Sealeo - Bulldoze - TM83
  (364, 36400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 36),
  -- Sealeo - Swagger - TM87
  (364, 36400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Sealeo - Substitute - TM90
  (364, 36400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Sealeo - Surf - TM95
  (364, 36400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 39),
  -- Sealeo - Strength - TM96
  (364, 36400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Sealeo - Rock Smash - TM98
  (364, 36400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Sealeo - Waterfall - TM99
  (364, 36400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 42),
  -- Sealeo - Aqua Ring - Egg
  (364, 36400, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sealeo - Belly Drum - Egg
  (364, 36400, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sealeo - Curse - Egg
  (364, 36400, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sealeo - Fissure - Egg
  (364, 36400, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sealeo - Rollout - Egg
  (364, 36400, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sealeo - Spit Up - Egg
  (364, 36400, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sealeo - Stockpile - Egg
  (364, 36400, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sealeo - Swallow - Egg
  (364, 36400, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sealeo - Yawn - Egg
  (364, 36400, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Walrein - Swagger - Starting Move
  (365, 36500, 207, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Walrein - Crunch - Starting Move
  (365, 36500, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Walrein - Ice Fang - Starting Move
  (365, 36500, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Walrein - Rollout - Starting Move
  (365, 36500, 205, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Walrein - Defense Curl - Starting Move
  (365, 36500, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Walrein - Growl - Starting Move
  (365, 36500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Walrein - Water Gun - Starting Move
  (365, 36500, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Walrein - Powder Snow - Level 12
  (365, 36500, 181, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Walrein - Rest - Level 16
  (365, 36500, 156, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Walrein - Snore - Level 20
  (365, 36500, 173, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Walrein - Brine - Level 24
  (365, 36500, 362, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Walrein - Aurora Beam - Level 28
  (365, 36500, 62, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Walrein - Encore - Level 35
  (365, 36500, 227, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Walrein - Body Slam - Level 40
  (365, 36500, 34, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Walrein - Surf - Level 48
  (365, 36500, 57, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Walrein - Blizzard - Level 56
  (365, 36500, 59, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Walrein - Hail - Level 64
  (365, 36500, 258, 21, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Walrein - Sheer Cold - Level 72
  (365, 36500, 329, 21, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Walrein - Water Pulse - TM03
  (365, 36500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Walrein - Roar - TM05
  (365, 36500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Walrein - Hail - TM07
  (365, 36500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 21),
  -- Walrein - Ice Beam - TM13
  (365, 36500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Walrein - Blizzard - TM14
  (365, 36500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Walrein - Hyper Beam - TM15
  (365, 36500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Walrein - Protect - TM17
  (365, 36500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Walrein - Rain Dance - TM18
  (365, 36500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Walrein - Iron Tail - TM23
  (365, 36500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Walrein - Earthquake - TM26
  (365, 36500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Walrein - Double Team - TM32
  (365, 36500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Walrein - Rock Tomb - TM39
  (365, 36500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Walrein - Facade - TM42
  (365, 36500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Walrein - Rest - TM44
  (365, 36500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Walrein - Attract - TM45
  (365, 36500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Walrein - Brine - TM55
  (365, 36500, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 34),
  -- Walrein - Endure - TM58
  (365, 36500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Walrein - Giga Impact - TM68
  (365, 36500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Walrein - Avalanche - TM72
  (365, 36500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 37),
  -- Walrein - Swords Dance - TM75
  (365, 36500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Walrein - Rock Slide - TM80
  (365, 36500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 39),
  -- Walrein - Sleep Talk - TM82
  (365, 36500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Walrein - Bulldoze - TM83
  (365, 36500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 41),
  -- Walrein - Swagger - TM87
  (365, 36500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Walrein - Substitute - TM90
  (365, 36500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Walrein - Surf - TM95
  (365, 36500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 44),
  -- Walrein - Strength - TM96
  (365, 36500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 45),
  -- Walrein - Rock Smash - TM98
  (365, 36500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 46),
  -- Walrein - Waterfall - TM99
  (365, 36500, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 47),
  -- Walrein - Aqua Ring - Egg
  (365, 36500, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Walrein - Belly Drum - Egg
  (365, 36500, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Walrein - Curse - Egg
  (365, 36500, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Walrein - Fissure - Egg
  (365, 36500, 90, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Walrein - Rollout - Egg
  (365, 36500, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Walrein - Spit Up - Egg
  (365, 36500, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Walrein - Stockpile - Egg
  (365, 36500, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Walrein - Swallow - Egg
  (365, 36500, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Walrein - Yawn - Egg
  (365, 36500, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Clamperl - Water Gun - Starting Move
  (366, 36600, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Clamperl - Whirlpool - Starting Move
  (366, 36600, 250, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Clamperl - Iron Defense - Starting Move
  (366, 36600, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Clamperl - Shell Smash - Level 50
  (366, 36600, 504, 21, NULL, 1, 50, NULL, NULL, NULL, 4),
  -- Clamperl - Water Pulse - TM03
  (366, 36600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 5),
  -- Clamperl - Hail - TM07
  (366, 36600, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 6),
  -- Clamperl - Ice Beam - TM13
  (366, 36600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 7),
  -- Clamperl - Blizzard - TM14
  (366, 36600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 8),
  -- Clamperl - Protect - TM17
  (366, 36600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 9),
  -- Clamperl - Rain Dance - TM18
  (366, 36600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 10),
  -- Clamperl - Double Team - TM32
  (366, 36600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 11),
  -- Clamperl - Facade - TM42
  (366, 36600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 12),
  -- Clamperl - Rest - TM44
  (366, 36600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 13),
  -- Clamperl - Attract - TM45
  (366, 36600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 14),
  -- Clamperl - Scald - TM49
  (366, 36600, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 15),
  -- Clamperl - Brine - TM55
  (366, 36600, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 16),
  -- Clamperl - Endure - TM58
  (366, 36600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 17),
  -- Clamperl - Sleep Talk - TM82
  (366, 36600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 18),
  -- Clamperl - Swagger - TM87
  (366, 36600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 19),
  -- Clamperl - Substitute - TM90
  (366, 36600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 20),
  -- Clamperl - Surf - TM95
  (366, 36600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 21),
  -- Clamperl - Waterfall - TM99
  (366, 36600, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 22),
  -- Clamperl - Aqua Ring - Egg
  (366, 36600, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Clamperl - Body Slam - Egg
  (366, 36600, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Clamperl - Confuse Ray - Egg
  (366, 36600, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Clamperl - Muddy Water - Egg
  (366, 36600, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Clamperl - Supersonic - Egg
  (366, 36600, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Huntail - Water Gun - Starting Move
  (367, 36700, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Huntail - Iron Defense - Starting Move
  (367, 36700, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Huntail - Shell Smash - Starting Move
  (367, 36700, 504, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Huntail - Whirlpool - Starting Move
  (367, 36700, 250, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Huntail - Bite - Starting Move
  (367, 36700, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Huntail - Screech - Level 5
  (367, 36700, 103, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Huntail - Scary Face - Level 9
  (367, 36700, 184, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Huntail - Rain Dance - Level 11
  (367, 36700, 240, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Huntail - Water Pulse - Level 14
  (367, 36700, 352, 21, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Huntail - Ice Fang - Level 16
  (367, 36700, 423, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Huntail - Brine - Level 19
  (367, 36700, 362, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Huntail - Sucker Punch - Level 23
  (367, 36700, 389, 21, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Huntail - Dive - Level 26
  (367, 36700, 291, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Huntail - Baton Pass - Level 29
  (367, 36700, 226, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Huntail - Crunch - Level 34
  (367, 36700, 242, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Huntail - Aqua Tail - Level 39
  (367, 36700, 401, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Huntail - Coil - Level 45
  (367, 36700, 489, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Huntail - Hydro Pump - Level 50
  (367, 36700, 56, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Huntail - Water Pulse - TM03
  (367, 36700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Huntail - Hail - TM07
  (367, 36700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Huntail - Ice Beam - TM13
  (367, 36700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Huntail - Blizzard - TM14
  (367, 36700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Huntail - Hyper Beam - TM15
  (367, 36700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Huntail - Protect - TM17
  (367, 36700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Huntail - Rain Dance - TM18
  (367, 36700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Huntail - Double Team - TM32
  (367, 36700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Huntail - Rock Tomb - TM39
  (367, 36700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Huntail - Facade - TM42
  (367, 36700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Huntail - Rest - TM44
  (367, 36700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Huntail - Attract - TM45
  (367, 36700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Huntail - Scald - TM49
  (367, 36700, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Huntail - Brine - TM55
  (367, 36700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 32),
  -- Huntail - Endure - TM58
  (367, 36700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Huntail - Giga Impact - TM68
  (367, 36700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 34),
  -- Huntail - Sleep Talk - TM82
  (367, 36700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Huntail - Swagger - TM87
  (367, 36700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Huntail - Substitute - TM90
  (367, 36700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Huntail - Surf - TM95
  (367, 36700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 38),
  -- Huntail - Waterfall - TM99
  (367, 36700, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 39),
  -- Huntail - Aqua Ring - Egg
  (367, 36700, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Huntail - Body Slam - Egg
  (367, 36700, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Huntail - Confuse Ray - Egg
  (367, 36700, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Huntail - Muddy Water - Egg
  (367, 36700, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Huntail - Supersonic - Egg
  (367, 36700, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gorebyss - Water Gun - Starting Move
  (368, 36800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gorebyss - Iron Defense - Starting Move
  (368, 36800, 334, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gorebyss - Shell Smash - Starting Move
  (368, 36800, 504, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gorebyss - Whirlpool - Starting Move
  (368, 36800, 250, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gorebyss - Confusion - Starting Move
  (368, 36800, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Gorebyss - Rain Dance - Level 5
  (368, 36800, 240, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Gorebyss - Agility - Level 9
  (368, 36800, 97, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Gorebyss - Draining Kiss - Level 11
  (368, 36800, 577, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Gorebyss - Water Pulse - Level 14
  (368, 36800, 352, 21, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Gorebyss - Amnesia - Level 16
  (368, 36800, 133, 21, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Gorebyss - Aqua Ring - Level 19
  (368, 36800, 392, 21, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Gorebyss - Safeguard - Level 23
  (368, 36800, 219, 21, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Gorebyss - Dive - Level 26
  (368, 36800, 291, 21, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Gorebyss - Baton Pass - Level 29
  (368, 36800, 226, 21, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Gorebyss - Psychic - Level 34
  (368, 36800, 94, 21, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gorebyss - Aqua Tail - Level 39
  (368, 36800, 401, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gorebyss - Coil - Level 45
  (368, 36800, 489, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Gorebyss - Hydro Pump - Level 50
  (368, 36800, 56, 21, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Gorebyss - Water Pulse - TM03
  (368, 36800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Gorebyss - Hail - TM07
  (368, 36800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Gorebyss - Ice Beam - TM13
  (368, 36800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Gorebyss - Blizzard - TM14
  (368, 36800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Gorebyss - Hyper Beam - TM15
  (368, 36800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Gorebyss - Protect - TM17
  (368, 36800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Gorebyss - Rain Dance - TM18
  (368, 36800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Gorebyss - Safeguard - TM20
  (368, 36800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 26),
  -- Gorebyss - Psychic - TM29
  (368, 36800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Gorebyss - Shadow Ball - TM30
  (368, 36800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Gorebyss - Double Team - TM32
  (368, 36800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Gorebyss - Facade - TM42
  (368, 36800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Gorebyss - Rest - TM44
  (368, 36800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Gorebyss - Attract - TM45
  (368, 36800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Gorebyss - Scald - TM49
  (368, 36800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 33),
  -- Gorebyss - Brine - TM55
  (368, 36800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 34),
  -- Gorebyss - Endure - TM58
  (368, 36800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Gorebyss - Giga Impact - TM68
  (368, 36800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Gorebyss - Psych Up - TM77
  (368, 36800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 37),
  -- Gorebyss - Sleep Talk - TM82
  (368, 36800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Gorebyss - Swagger - TM87
  (368, 36800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Gorebyss - Substitute - TM90
  (368, 36800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Gorebyss - Surf - TM95
  (368, 36800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 41),
  -- Gorebyss - Waterfall - TM99
  (368, 36800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 42),
  -- Gorebyss - Aqua Ring - Egg
  (368, 36800, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gorebyss - Body Slam - Egg
  (368, 36800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gorebyss - Confuse Ray - Egg
  (368, 36800, 109, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gorebyss - Muddy Water - Egg
  (368, 36800, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gorebyss - Supersonic - Egg
  (368, 36800, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Relicanth - Tackle - Starting Move
  (369, 36900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Relicanth - Harden - Starting Move
  (369, 36900, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Relicanth - Water Gun - Level 5
  (369, 36900, 55, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Relicanth - Ancient Power - Level 10
  (369, 36900, 246, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Relicanth - Yawn - Level 15
  (369, 36900, 281, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Relicanth - Dive - Level 20
  (369, 36900, 291, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Relicanth - Take Down - Level 25
  (369, 36900, 36, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Relicanth - Aqua Tail - Level 30
  (369, 36900, 401, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Relicanth - Rest - Level 35
  (369, 36900, 156, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Relicanth - Flail - Level 40
  (369, 36900, 175, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Relicanth - Hydro Pump - Level 45
  (369, 36900, 56, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Relicanth - Double-Edge - Level 50
  (369, 36900, 38, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Relicanth - Head Smash - Level 55
  (369, 36900, 457, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Relicanth - Water Pulse - TM03
  (369, 36900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Relicanth - Calm Mind - TM04
  (369, 36900, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 15),
  -- Relicanth - Hail - TM07
  (369, 36900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 16),
  -- Relicanth - Ice Beam - TM13
  (369, 36900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Relicanth - Blizzard - TM14
  (369, 36900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Relicanth - Hyper Beam - TM15
  (369, 36900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Relicanth - Protect - TM17
  (369, 36900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Relicanth - Rain Dance - TM18
  (369, 36900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Relicanth - Safeguard - TM20
  (369, 36900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Relicanth - Earthquake - TM26
  (369, 36900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Relicanth - Double Team - TM32
  (369, 36900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Relicanth - Sandstorm - TM37
  (369, 36900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 25),
  -- Relicanth - Rock Tomb - TM39
  (369, 36900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 26),
  -- Relicanth - Facade - TM42
  (369, 36900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Relicanth - Rest - TM44
  (369, 36900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Relicanth - Attract - TM45
  (369, 36900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Relicanth - Scald - TM49
  (369, 36900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 30),
  -- Relicanth - Brine - TM55
  (369, 36900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 31),
  -- Relicanth - Endure - TM58
  (369, 36900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Relicanth - Giga Impact - TM68
  (369, 36900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Relicanth - Rock Polish - TM69
  (369, 36900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 34),
  -- Relicanth - Stone Edge - TM71
  (369, 36900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 35),
  -- Relicanth - Stealth Rock - TM76
  (369, 36900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 36),
  -- Relicanth - Psych Up - TM77
  (369, 36900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 37),
  -- Relicanth - Rock Slide - TM80
  (369, 36900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 38),
  -- Relicanth - Sleep Talk - TM82
  (369, 36900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Relicanth - Bulldoze - TM83
  (369, 36900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 40),
  -- Relicanth - Swagger - TM87
  (369, 36900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Relicanth - Substitute - TM90
  (369, 36900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Relicanth - Surf - TM95
  (369, 36900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 43),
  -- Relicanth - Rock Smash - TM98
  (369, 36900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Relicanth - Waterfall - TM99
  (369, 36900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 45),
  -- Relicanth - Amnesia - Egg
  (369, 36900, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Relicanth - Aqua Tail - Egg
  (369, 36900, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Relicanth - Mud Shot - Egg
  (369, 36900, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Relicanth - Muddy Water - Egg
  (369, 36900, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Relicanth - Mud-Slap - Egg
  (369, 36900, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Relicanth - Skull Bash - Egg
  (369, 36900, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Relicanth - Snore - Egg
  (369, 36900, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Relicanth - Zen Headbutt - Egg
  (369, 36900, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Luvdisc - Tackle - Starting Move
  (370, 37000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Luvdisc - Charm - Starting Move
  (370, 37000, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Luvdisc - Water Gun - Level 4
  (370, 37000, 55, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Luvdisc - Agility - Level 7
  (370, 37000, 97, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Luvdisc - Draining Kiss - Level 9
  (370, 37000, 577, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Luvdisc - Tearful Look - Level 13
  (370, 37000, 715, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Luvdisc - Water Pulse - Level 17
  (370, 37000, 352, 21, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Luvdisc - Attract - Level 20
  (370, 37000, 213, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Luvdisc - Brine - Level 22
  (370, 37000, 362, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Luvdisc - Flail - Level 26
  (370, 37000, 175, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Luvdisc - Sweet Kiss - Level 31
  (370, 37000, 186, 21, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Luvdisc - Take Down - Level 34
  (370, 37000, 36, 21, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Luvdisc - Baby-Doll Eyes - Level 37
  (370, 37000, 608, 21, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Luvdisc - Aqua Ring - Level 40
  (370, 37000, 392, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Luvdisc - Soak - Level 42
  (370, 37000, 487, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Luvdisc - Hydro Pump - Level 46
  (370, 37000, 56, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Luvdisc - Safeguard - Level 49
  (370, 37000, 219, 21, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Luvdisc - Water Pulse - TM03
  (370, 37000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Luvdisc - Hail - TM07
  (370, 37000, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Luvdisc - Ice Beam - TM13
  (370, 37000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Luvdisc - Blizzard - TM14
  (370, 37000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 21),
  -- Luvdisc - Protect - TM17
  (370, 37000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Luvdisc - Rain Dance - TM18
  (370, 37000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Luvdisc - Safeguard - TM20
  (370, 37000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Luvdisc - Double Team - TM32
  (370, 37000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Luvdisc - Facade - TM42
  (370, 37000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Luvdisc - Rest - TM44
  (370, 37000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Luvdisc - Attract - TM45
  (370, 37000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Luvdisc - Scald - TM49
  (370, 37000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 29),
  -- Luvdisc - Brine - TM55
  (370, 37000, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 30),
  -- Luvdisc - Endure - TM58
  (370, 37000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Luvdisc - Psych Up - TM77
  (370, 37000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 32),
  -- Luvdisc - Sleep Talk - TM82
  (370, 37000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Luvdisc - Swagger - TM87
  (370, 37000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Luvdisc - Substitute - TM90
  (370, 37000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Luvdisc - Surf - TM95
  (370, 37000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 36),
  -- Luvdisc - Waterfall - TM99
  (370, 37000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 37),
  -- Luvdisc - Aqua Jet - Egg
  (370, 37000, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Luvdisc - Aqua Ring - Egg
  (370, 37000, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Luvdisc - Entrainment - Egg
  (370, 37000, 494, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Luvdisc - Heal Pulse - Egg
  (370, 37000, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Luvdisc - Splash - Egg
  (370, 37000, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Luvdisc - Supersonic - Egg
  (370, 37000, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bagon - Ember - Starting Move
  (371, 37100, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bagon - Leer - Starting Move
  (371, 37100, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bagon - Bite - Level 5
  (371, 37100, 44, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bagon - Dragon Breath - Level 10
  (371, 37100, 225, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bagon - Headbutt - Level 15
  (371, 37100, 29, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bagon - Scary Face - Level 20
  (371, 37100, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bagon - Crunch - Level 25
  (371, 37100, 242, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bagon - Dragon Claw - Level 31
  (371, 37100, 337, 21, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Bagon - Zen Headbutt - Level 35
  (371, 37100, 428, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Bagon - Focus Energy - Level 40
  (371, 37100, 116, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Bagon - Flamethrower - Level 45
  (371, 37100, 53, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Bagon - Outrage - Level 50
  (371, 37100, 200, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Bagon - Double-Edge - Level 55
  (371, 37100, 38, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Bagon - Dragon Claw - TM02
  (371, 37100, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 14),
  -- Bagon - Roar - TM05
  (371, 37100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 15),
  -- Bagon - Sunny Day - TM11
  (371, 37100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Bagon - Protect - TM17
  (371, 37100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Bagon - Rain Dance - TM18
  (371, 37100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Bagon - Brick Break - TM31
  (371, 37100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 19),
  -- Bagon - Double Team - TM32
  (371, 37100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Bagon - Flamethrower - TM35
  (371, 37100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 21),
  -- Bagon - Fire Blast - TM38
  (371, 37100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 22),
  -- Bagon - Rock Tomb - TM39
  (371, 37100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 23),
  -- Bagon - Aerial Ace - TM40
  (371, 37100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 24),
  -- Bagon - Facade - TM42
  (371, 37100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Bagon - Rest - TM44
  (371, 37100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Bagon - Attract - TM45
  (371, 37100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Bagon - Endure - TM58
  (371, 37100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Bagon - Dragon Pulse - TM59
  (371, 37100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 29),
  -- Bagon - Shadow Claw - TM65
  (371, 37100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 30),
  -- Bagon - Rock Slide - TM80
  (371, 37100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 31),
  -- Bagon - Sleep Talk - TM82
  (371, 37100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Bagon - Swagger - TM87
  (371, 37100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Bagon - Substitute - TM90
  (371, 37100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Bagon - Cut - TM93
  (371, 37100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 35),
  -- Bagon - Strength - TM96
  (371, 37100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 36),
  -- Bagon - Rock Smash - TM98
  (371, 37100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 37),
  -- Bagon - Defense Curl - Egg
  (371, 37100, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bagon - Dragon Dance - Egg
  (371, 37100, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bagon - Dragon Rush - Egg
  (371, 37100, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Bagon - Fire Fang - Egg
  (371, 37100, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bagon - Hydro Pump - Egg
  (371, 37100, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bagon - Thrash - Egg
  (371, 37100, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bagon - Twister - Egg
  (371, 37100, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shelgon - Protect - Starting Move
  (372, 37200, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Shelgon - Ember - Starting Move
  (372, 37200, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Shelgon - Leer - Starting Move
  (372, 37200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Shelgon - Bite - Starting Move
  (372, 37200, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Shelgon - Dragon Breath - Starting Move
  (372, 37200, 225, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Shelgon - Protect - Evolution
  (372, 37200, 182, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Shelgon - Headbutt - Level 15
  (372, 37200, 29, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Shelgon - Scary Face - Level 20
  (372, 37200, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Shelgon - Crunch - Level 25
  (372, 37200, 242, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Shelgon - Dragon Claw - Level 33
  (372, 37200, 337, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Shelgon - Zen Headbutt - Level 39
  (372, 37200, 428, 21, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Shelgon - Focus Energy - Level 46
  (372, 37200, 116, 21, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Shelgon - Flamethrower - Level 53
  (372, 37200, 53, 21, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Shelgon - Outrage - Level 60
  (372, 37200, 200, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Shelgon - Double-Edge - Level 67
  (372, 37200, 38, 21, NULL, 1, 67, NULL, NULL, NULL, 15),
  -- Shelgon - Dragon Claw - TM02
  (372, 37200, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 16),
  -- Shelgon - Roar - TM05
  (372, 37200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Shelgon - Sunny Day - TM11
  (372, 37200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Shelgon - Protect - TM17
  (372, 37200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Shelgon - Rain Dance - TM18
  (372, 37200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Shelgon - Brick Break - TM31
  (372, 37200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 21),
  -- Shelgon - Double Team - TM32
  (372, 37200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Shelgon - Flamethrower - TM35
  (372, 37200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 23),
  -- Shelgon - Fire Blast - TM38
  (372, 37200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 24),
  -- Shelgon - Rock Tomb - TM39
  (372, 37200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 25),
  -- Shelgon - Aerial Ace - TM40
  (372, 37200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 26),
  -- Shelgon - Facade - TM42
  (372, 37200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Shelgon - Rest - TM44
  (372, 37200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Shelgon - Attract - TM45
  (372, 37200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Shelgon - Endure - TM58
  (372, 37200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Shelgon - Dragon Pulse - TM59
  (372, 37200, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 31),
  -- Shelgon - Shadow Claw - TM65
  (372, 37200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 32),
  -- Shelgon - Rock Slide - TM80
  (372, 37200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 33),
  -- Shelgon - Sleep Talk - TM82
  (372, 37200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Shelgon - Swagger - TM87
  (372, 37200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Shelgon - Substitute - TM90
  (372, 37200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Shelgon - Cut - TM93
  (372, 37200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Shelgon - Strength - TM96
  (372, 37200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Shelgon - Rock Smash - TM98
  (372, 37200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Shelgon - Defense Curl - Egg
  (372, 37200, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shelgon - Dragon Dance - Egg
  (372, 37200, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shelgon - Dragon Rush - Egg
  (372, 37200, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shelgon - Fire Fang - Egg
  (372, 37200, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shelgon - Hydro Pump - Egg
  (372, 37200, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shelgon - Thrash - Egg
  (372, 37200, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shelgon - Twister - Egg
  (372, 37200, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Salamence - Fly - Starting Move
  (373, 37300, 19, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Salamence - Protect - Starting Move
  (373, 37300, 182, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Salamence - Dragon Tail - Starting Move
  (373, 37300, 525, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Salamence - Ember - Starting Move
  (373, 37300, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Salamence - Leer - Starting Move
  (373, 37300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Salamence - Bite - Starting Move
  (373, 37300, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Salamence - Dragon Breath - Starting Move
  (373, 37300, 225, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Salamence - Fly - Evolution
  (373, 37300, 19, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Salamence - Headbutt - Level 15
  (373, 37300, 29, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Salamence - Scary Face - Level 20
  (373, 37300, 184, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Salamence - Crunch - Level 25
  (373, 37300, 242, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Salamence - Dragon Claw - Level 33
  (373, 37300, 337, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Salamence - Zen Headbutt - Level 39
  (373, 37300, 428, 21, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Salamence - Focus Energy - Level 46
  (373, 37300, 116, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Salamence - Flamethrower - Level 55
  (373, 37300, 53, 21, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Salamence - Outrage - Level 64
  (373, 37300, 200, 21, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Salamence - Double-Edge - Level 73
  (373, 37300, 38, 21, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Salamence - Dragon Claw - TM02
  (373, 37300, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 18),
  -- Salamence - Roar - TM05
  (373, 37300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Salamence - Sunny Day - TM11
  (373, 37300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Salamence - Hyper Beam - TM15
  (373, 37300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Salamence - Protect - TM17
  (373, 37300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Salamence - Rain Dance - TM18
  (373, 37300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Salamence - Iron Tail - TM23
  (373, 37300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Salamence - Earthquake - TM26
  (373, 37300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 25),
  -- Salamence - Brick Break - TM31
  (373, 37300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Salamence - Double Team - TM32
  (373, 37300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Salamence - Flamethrower - TM35
  (373, 37300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 28),
  -- Salamence - Fire Blast - TM38
  (373, 37300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 29),
  -- Salamence - Rock Tomb - TM39
  (373, 37300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Salamence - Aerial Ace - TM40
  (373, 37300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Salamence - Facade - TM42
  (373, 37300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Salamence - Rest - TM44
  (373, 37300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Salamence - Attract - TM45
  (373, 37300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Salamence - Steel Wing - TM47
  (373, 37300, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 35),
  -- Salamence - Roost - TM51
  (373, 37300, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Salamence - Endure - TM58
  (373, 37300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 37),
  -- Salamence - Dragon Pulse - TM59
  (373, 37300, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 38),
  -- Salamence - Shadow Claw - TM65
  (373, 37300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 39),
  -- Salamence - Giga Impact - TM68
  (373, 37300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Salamence - Stone Edge - TM71
  (373, 37300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 41),
  -- Salamence - Rock Slide - TM80
  (373, 37300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Salamence - Sleep Talk - TM82
  (373, 37300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Salamence - Bulldoze - TM83
  (373, 37300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Salamence - Swagger - TM87
  (373, 37300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Salamence - Substitute - TM90
  (373, 37300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Salamence - Cut - TM93
  (373, 37300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 47),
  -- Salamence - Fly - TM94
  (373, 37300, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 48),
  -- Salamence - Strength - TM96
  (373, 37300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Salamence - Defog - TM97
  (373, 37300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 50),
  -- Salamence - Rock Smash - TM98
  (373, 37300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Salamence - Defense Curl - Egg
  (373, 37300, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Salamence - Dragon Dance - Egg
  (373, 37300, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Salamence - Dragon Rush - Egg
  (373, 37300, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Salamence - Fire Fang - Egg
  (373, 37300, 424, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Salamence - Hydro Pump - Egg
  (373, 37300, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Salamence - Thrash - Egg
  (373, 37300, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Salamence - Twister - Egg
  (373, 37300, 239, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Beldum - Tackle - Starting Move
  (374, 37400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Metang - Confusion - Starting Move
  (375, 37500, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Metang - Metal Claw - Starting Move
  (375, 37500, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Metang - Bullet Punch - Starting Move
  (375, 37500, 418, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Metang - Tackle - Starting Move
  (375, 37500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Metang - Confusion - Evolution
  (375, 37500, 93, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Metang - Metal Claw - Evolution
  (375, 37500, 232, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Metang - Zen Headbutt - Level 6
  (375, 37500, 428, 21, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Metang - Magnet Rise - Level 12
  (375, 37500, 393, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Metang - Flash Cannon - Level 18
  (375, 37500, 430, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Metang - Take Down - Level 26
  (375, 37500, 36, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Metang - Psychic - Level 34
  (375, 37500, 94, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Metang - Scary Face - Level 42
  (375, 37500, 184, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Metang - Meteor Mash - Level 50
  (375, 37500, 309, 21, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Metang - Iron Defense - Level 58
  (375, 37500, 334, 21, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Metang - Agility - Level 66
  (375, 37500, 97, 21, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Metang - Hyper Beam - Level 74
  (375, 37500, 63, 21, NULL, 1, 74, NULL, NULL, NULL, 16),
  -- Metang - Sunny Day - TM11
  (375, 37500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Metang - Hyper Beam - TM15
  (375, 37500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Metang - Light Screen - TM16
  (375, 37500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Metang - Protect - TM17
  (375, 37500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Metang - Rain Dance - TM18
  (375, 37500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Metang - Earthquake - TM26
  (375, 37500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 22),
  -- Metang - Psychic - TM29
  (375, 37500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Metang - Shadow Ball - TM30
  (375, 37500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Metang - Brick Break - TM31
  (375, 37500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Metang - Double Team - TM32
  (375, 37500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Metang - Reflect - TM33
  (375, 37500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Metang - Sludge Bomb - TM36
  (375, 37500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Metang - Sandstorm - TM37
  (375, 37500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Metang - Rock Tomb - TM39
  (375, 37500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Metang - Aerial Ace - TM40
  (375, 37500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Metang - Facade - TM42
  (375, 37500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Metang - Rest - TM44
  (375, 37500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Metang - Endure - TM58
  (375, 37500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Metang - Explosion - TM64
  (375, 37500, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 35),
  -- Metang - Rock Polish - TM69
  (375, 37500, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 36),
  -- Metang - Flash - TM70
  (375, 37500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Metang - Gyro Ball - TM74
  (375, 37500, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 38),
  -- Metang - Stealth Rock - TM76
  (375, 37500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 39),
  -- Metang - Psych Up - TM77
  (375, 37500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Metang - Rock Slide - TM80
  (375, 37500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Metang - Sleep Talk - TM82
  (375, 37500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Metang - Bulldoze - TM83
  (375, 37500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Metang - Grass Knot - TM86
  (375, 37500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 44),
  -- Metang - Swagger - TM87
  (375, 37500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Metang - Substitute - TM90
  (375, 37500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Metang - Flash Cannon - TM91
  (375, 37500, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 47),
  -- Metang - Cut - TM93
  (375, 37500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 48),
  -- Metang - Strength - TM96
  (375, 37500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Metang - Rock Smash - TM98
  (375, 37500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Metagross - Hammer Arm - Starting Move
  (376, 37600, 359, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Starting Move
  (376, 37600, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Starting Move
  (376, 37600, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Metagross - Bullet Punch - Starting Move
  (376, 37600, 418, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Metagross - Tackle - Starting Move
  (376, 37600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Metagross - Hammer Arm - Evolution
  (376, 37600, 359, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Metagross - Zen Headbutt - Level 6
  (376, 37600, 428, 21, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Metagross - Magnet Rise - Level 12
  (376, 37600, 393, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Metagross - Flash Cannon - Level 16
  (376, 37600, 430, 21, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Metagross - Take Down - Level 26
  (376, 37600, 36, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Metagross - Psychic - Level 34
  (376, 37600, 94, 21, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Metagross - Scary Face - Level 42
  (376, 37600, 184, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Metagross - Meteor Mash - Level 52
  (376, 37600, 309, 21, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Metagross - Iron Defense - Level 62
  (376, 37600, 334, 21, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Metagross - Agility - Level 72
  (376, 37600, 97, 21, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Metagross - Hyper Beam - Level 82
  (376, 37600, 63, 21, NULL, 1, 82, NULL, NULL, NULL, 16),
  -- Metagross - Sunny Day - TM11
  (376, 37600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Metagross - Hyper Beam - TM15
  (376, 37600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Metagross - Light Screen - TM16
  (376, 37600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Metagross - Protect - TM17
  (376, 37600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Metagross - Rain Dance - TM18
  (376, 37600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Metagross - Earthquake - TM26
  (376, 37600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 22),
  -- Metagross - Psychic - TM29
  (376, 37600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 23),
  -- Metagross - Shadow Ball - TM30
  (376, 37600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 24),
  -- Metagross - Brick Break - TM31
  (376, 37600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Metagross - Double Team - TM32
  (376, 37600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Metagross - Reflect - TM33
  (376, 37600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 27),
  -- Metagross - Sludge Bomb - TM36
  (376, 37600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Metagross - Sandstorm - TM37
  (376, 37600, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 29),
  -- Metagross - Rock Tomb - TM39
  (376, 37600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Metagross - Aerial Ace - TM40
  (376, 37600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Metagross - Facade - TM42
  (376, 37600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Metagross - Rest - TM44
  (376, 37600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Metagross - Endure - TM58
  (376, 37600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Metagross - Explosion - TM64
  (376, 37600, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 35),
  -- Metagross - Giga Impact - TM68
  (376, 37600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Metagross - Rock Polish - TM69
  (376, 37600, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 37),
  -- Metagross - Flash - TM70
  (376, 37600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 38),
  -- Metagross - Gyro Ball - TM74
  (376, 37600, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 39),
  -- Metagross - Stealth Rock - TM76
  (376, 37600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Metagross - Psych Up - TM77
  (376, 37600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Metagross - Rock Slide - TM80
  (376, 37600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 42),
  -- Metagross - Sleep Talk - TM82
  (376, 37600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Metagross - Bulldoze - TM83
  (376, 37600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Metagross - Grass Knot - TM86
  (376, 37600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 45),
  -- Metagross - Swagger - TM87
  (376, 37600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Metagross - Substitute - TM90
  (376, 37600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Metagross - Flash Cannon - TM91
  (376, 37600, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 48),
  -- Metagross - Cut - TM93
  (376, 37600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 49),
  -- Metagross - Strength - TM96
  (376, 37600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Metagross - Rock Smash - TM98
  (376, 37600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Regirock - Charge Beam - Starting Move
  (377, 37700, 451, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Regirock - Rock Throw - Starting Move
  (377, 37700, 88, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Regirock - Bulldoze - Level 6
  (377, 37700, 523, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regirock - Ancient Power - Level 12
  (377, 37700, 246, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regirock - Stomp - Level 18
  (377, 37700, 23, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regirock - Rock Slide - Level 24
  (377, 37700, 157, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regirock - Curse - Level 30
  (377, 37700, 174, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regirock - Iron Defense - Level 36
  (377, 37700, 334, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regirock - Hammer Arm - Level 42
  (377, 37700, 359, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regirock - Stone Edge - Level 48
  (377, 37700, 444, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regirock - Superpower - Level 54
  (377, 37700, 276, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regirock - Lock-On - Level 60
  (377, 37700, 199, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regirock - Zap Cannon - Level 66
  (377, 37700, 192, 21, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regirock - Hyper Beam - Level 72
  (377, 37700, 63, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regirock - Explosion - Level 78
  (377, 37700, 153, 21, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regirock - Focus Punch - TM01
  (377, 37700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Regirock - Sunny Day - TM11
  (377, 37700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Regirock - Hyper Beam - TM15
  (377, 37700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 18),
  -- Regirock - Protect - TM17
  (377, 37700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Regirock - Safeguard - TM20
  (377, 37700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Regirock - Thunderbolt - TM24
  (377, 37700, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 21),
  -- Regirock - Thunder - TM25
  (377, 37700, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 22),
  -- Regirock - Earthquake - TM26
  (377, 37700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Regirock - Dig - TM28
  (377, 37700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Regirock - Brick Break - TM31
  (377, 37700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Regirock - Double Team - TM32
  (377, 37700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Regirock - Shock Wave - TM34
  (377, 37700, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Regirock - Sandstorm - TM37
  (377, 37700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Regirock - Rock Tomb - TM39
  (377, 37700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Regirock - Facade - TM42
  (377, 37700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Regirock - Rest - TM44
  (377, 37700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Regirock - Focus Blast - TM52
  (377, 37700, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 32),
  -- Regirock - Fling - TM56
  (377, 37700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Regirock - Charge Beam - TM57
  (377, 37700, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 34),
  -- Regirock - Endure - TM58
  (377, 37700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Regirock - Drain Punch - TM60
  (377, 37700, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 36),
  -- Regirock - Explosion - TM64
  (377, 37700, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 37),
  -- Regirock - Giga Impact - TM68
  (377, 37700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Regirock - Rock Polish - TM69
  (377, 37700, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 39),
  -- Regirock - Stone Edge - TM71
  (377, 37700, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 40),
  -- Regirock - Thunder Wave - TM73
  (377, 37700, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 41),
  -- Regirock - Stealth Rock - TM76
  (377, 37700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 42),
  -- Regirock - Psych Up - TM77
  (377, 37700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 43),
  -- Regirock - Rock Slide - TM80
  (377, 37700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 44),
  -- Regirock - Sleep Talk - TM82
  (377, 37700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Regirock - Bulldoze - TM83
  (377, 37700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 46),
  -- Regirock - Swagger - TM87
  (377, 37700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Regirock - Substitute - TM90
  (377, 37700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 48),
  -- Regirock - Flash Cannon - TM91
  (377, 37700, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 49),
  -- Regirock - Strength - TM96
  (377, 37700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 50),
  -- Regirock - Rock Smash - TM98
  (377, 37700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 51),
  -- Regirock - Rock Climb - TM100
  (377, 37700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 52),
  -- Regice - Charge Beam - Starting Move
  (378, 37800, 451, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Regice - Icy Wind - Starting Move
  (378, 37800, 196, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Regice - Bulldoze - Level 6
  (378, 37800, 523, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regice - Ancient Power - Level 12
  (378, 37800, 246, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regice - Stomp - Level 18
  (378, 37800, 23, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regice - Ice Beam - Level 24
  (378, 37800, 58, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regice - Curse - Level 30
  (378, 37800, 174, 21, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regice - Amnesia - Level 36
  (378, 37800, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regice - Hammer Arm - Level 42
  (378, 37800, 359, 21, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regice - Blizzard - Level 48
  (378, 37800, 59, 21, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regice - Superpower - Level 54
  (378, 37800, 276, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regice - Lock-On - Level 60
  (378, 37800, 199, 21, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regice - Zap Cannon - Level 66
  (378, 37800, 192, 21, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regice - Hyper Beam - Level 72
  (378, 37800, 63, 21, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regice - Explosion - Level 78
  (378, 37800, 153, 21, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regice - Focus Punch - TM01
  (378, 37800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 16),
  -- Regice - Hail - TM07
  (378, 37800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Regice - Ice Beam - TM13
  (378, 37800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Regice - Blizzard - TM14
  (378, 37800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Regice - Hyper Beam - TM15
  (378, 37800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Regice - Protect - TM17
  (378, 37800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Regice - Rain Dance - TM18
  (378, 37800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Regice - Safeguard - TM20
  (378, 37800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Regice - Thunderbolt - TM24
  (378, 37800, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Regice - Thunder - TM25
  (378, 37800, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Regice - Earthquake - TM26
  (378, 37800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Regice - Brick Break - TM31
  (378, 37800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Regice - Double Team - TM32
  (378, 37800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Regice - Shock Wave - TM34
  (378, 37800, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Regice - Rock Tomb - TM39
  (378, 37800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 30),
  -- Regice - Facade - TM42
  (378, 37800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Regice - Rest - TM44
  (378, 37800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Regice - Focus Blast - TM52
  (378, 37800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 33),
  -- Regice - Fling - TM56
  (378, 37800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Regice - Charge Beam - TM57
  (378, 37800, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 35),
  -- Regice - Endure - TM58
  (378, 37800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Regice - Explosion - TM64
  (378, 37800, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 37),
  -- Regice - Giga Impact - TM68
  (378, 37800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 38),
  -- Regice - Rock Polish - TM69
  (378, 37800, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 39),
  -- Regice - Avalanche - TM72
  (378, 37800, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 40),
  -- Regice - Thunder Wave - TM73
  (378, 37800, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 41),
  -- Regice - Psych Up - TM77
  (378, 37800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Regice - Rock Slide - TM80
  (378, 37800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 43),
  -- Regice - Sleep Talk - TM82
  (378, 37800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Regice - Bulldoze - TM83
  (378, 37800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 45),
  -- Regice - Swagger - TM87
  (378, 37800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Regice - Substitute - TM90
  (378, 37800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Regice - Flash Cannon - TM91
  (378, 37800, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 48),
  -- Regice - Strength - TM96
  (378, 37800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Regice - Rock Smash - TM98
  (378, 37800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Regice - Rock Climb - TM100
  (378, 37800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 51),
  -- Registeel - Charge Beam - Starting Move
  (379, 37900, 451, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Registeel - Metal Claw - Starting Move
  (379, 37900, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Registeel - Bulldoze - Level 6
  (379, 37900, 523, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Registeel - Ancient Power - Level 12
  (379, 37900, 246, 21, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Registeel - Stomp - Level 18
  (379, 37900, 23, 21, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Registeel - Iron Head - Level 24
  (379, 37900, 442, 21, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Registeel - Flash Cannon - Level 24
  (379, 37900, 430, 21, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Registeel - Curse - Level 30
  (379, 37900, 174, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Registeel - Iron Defense - Level 36
  (379, 37900, 334, 21, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Registeel - Amnesia - Level 36
  (379, 37900, 133, 21, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Registeel - Hammer Arm - Level 42
  (379, 37900, 359, 21, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Registeel - Heavy Slam - Level 48
  (379, 37900, 484, 21, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Registeel - Superpower - Level 54
  (379, 37900, 276, 21, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Registeel - Lock-On - Level 60
  (379, 37900, 199, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Registeel - Zap Cannon - Level 66
  (379, 37900, 192, 21, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Registeel - Hyper Beam - Level 72
  (379, 37900, 63, 21, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Registeel - Explosion - Level 78
  (379, 37900, 153, 21, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Registeel - Focus Punch - TM01
  (379, 37900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Registeel - Sunny Day - TM11
  (379, 37900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Registeel - Hyper Beam - TM15
  (379, 37900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Registeel - Protect - TM17
  (379, 37900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Registeel - Rain Dance - TM18
  (379, 37900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Registeel - Safeguard - TM20
  (379, 37900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Registeel - Thunderbolt - TM24
  (379, 37900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Registeel - Thunder - TM25
  (379, 37900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Registeel - Earthquake - TM26
  (379, 37900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Registeel - Brick Break - TM31
  (379, 37900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 27),
  -- Registeel - Double Team - TM32
  (379, 37900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Registeel - Shock Wave - TM34
  (379, 37900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 29),
  -- Registeel - Sandstorm - TM37
  (379, 37900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 30),
  -- Registeel - Rock Tomb - TM39
  (379, 37900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Registeel - Aerial Ace - TM40
  (379, 37900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 32),
  -- Registeel - Facade - TM42
  (379, 37900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Registeel - Rest - TM44
  (379, 37900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Registeel - Focus Blast - TM52
  (379, 37900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 35),
  -- Registeel - Fling - TM56
  (379, 37900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 36),
  -- Registeel - Charge Beam - TM57
  (379, 37900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 37),
  -- Registeel - Endure - TM58
  (379, 37900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Registeel - Explosion - TM64
  (379, 37900, 153, 21, NULL, 2, NULL, NULL, 21002064, NULL, 39),
  -- Registeel - Shadow Claw - TM65
  (379, 37900, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 40),
  -- Registeel - Giga Impact - TM68
  (379, 37900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Registeel - Rock Polish - TM69
  (379, 37900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 42),
  -- Registeel - Thunder Wave - TM73
  (379, 37900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Registeel - Stealth Rock - TM76
  (379, 37900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 44),
  -- Registeel - Psych Up - TM77
  (379, 37900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 45),
  -- Registeel - Rock Slide - TM80
  (379, 37900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 46),
  -- Registeel - Sleep Talk - TM82
  (379, 37900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Registeel - Bulldoze - TM83
  (379, 37900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Registeel - Swagger - TM87
  (379, 37900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Registeel - Substitute - TM90
  (379, 37900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Registeel - Flash Cannon - TM91
  (379, 37900, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 51),
  -- Registeel - Strength - TM96
  (379, 37900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 52),
  -- Registeel - Rock Smash - TM98
  (379, 37900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 53),
  -- Registeel - Rock Climb - TM100
  (379, 37900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 54),
  -- Latias - Stored Power - Starting Move
  (380, 38000, 500, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Latias - Charm - Starting Move
  (380, 38000, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Latias - Helping Hand - Level 5
  (380, 38000, 270, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latias - Recover - Level 10
  (380, 38000, 105, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latias - Confusion - Level 15
  (380, 38000, 93, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latias - Tailwind - Level 20
  (380, 38000, 366, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latias - Dragon Breath - Level 25
  (380, 38000, 225, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latias - Wish - Level 30
  (380, 38000, 273, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latias - Mist Ball - Level 35
  (380, 38000, 296, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latias - Zen Headbutt - Level 40
  (380, 38000, 428, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latias - Dragon Pulse - Level 45
  (380, 38000, 406, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latias - Heal Pulse - Level 50
  (380, 38000, 505, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latias - Reflect Type - Level 55
  (380, 38000, 513, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latias - Psychic - Level 60
  (380, 38000, 94, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latias - Guard Split - Level 65
  (380, 38000, 470, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latias - Healing Wish - Level 70
  (380, 38000, 361, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Latias - Psycho Shift - Level 75
  (380, 38000, 375, 21, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Latias - Dragon Claw - TM02
  (380, 38000, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 18),
  -- Latias - Water Pulse - TM03
  (380, 38000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Latias - Calm Mind - TM04
  (380, 38000, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 20),
  -- Latias - Roar - TM05
  (380, 38000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Latias - Sunny Day - TM11
  (380, 38000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Latias - Ice Beam - TM13
  (380, 38000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Latias - Hyper Beam - TM15
  (380, 38000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Latias - Light Screen - TM16
  (380, 38000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Latias - Protect - TM17
  (380, 38000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Latias - Rain Dance - TM18
  (380, 38000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Latias - Safeguard - TM20
  (380, 38000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Latias - Solar Beam - TM22
  (380, 38000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Latias - Thunderbolt - TM24
  (380, 38000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Latias - Thunder - TM25
  (380, 38000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Latias - Earthquake - TM26
  (380, 38000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Latias - Psychic - TM29
  (380, 38000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 33),
  -- Latias - Shadow Ball - TM30
  (380, 38000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Latias - Double Team - TM32
  (380, 38000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Latias - Reflect - TM33
  (380, 38000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Latias - Shock Wave - TM34
  (380, 38000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Latias - Sandstorm - TM37
  (380, 38000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 38),
  -- Latias - Aerial Ace - TM40
  (380, 38000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Latias - Facade - TM42
  (380, 38000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Latias - Rest - TM44
  (380, 38000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Latias - Attract - TM45
  (380, 38000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Latias - Steel Wing - TM47
  (380, 38000, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 43),
  -- Latias - Roost - TM51
  (380, 38000, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 44),
  -- Latias - Energy Ball - TM53
  (380, 38000, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 45),
  -- Latias - Charge Beam - TM57
  (380, 38000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 46),
  -- Latias - Endure - TM58
  (380, 38000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Latias - Dragon Pulse - TM59
  (380, 38000, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 48),
  -- Latias - Shadow Claw - TM65
  (380, 38000, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 49),
  -- Latias - Giga Impact - TM68
  (380, 38000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Latias - Flash - TM70
  (380, 38000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 51),
  -- Latias - Thunder Wave - TM73
  (380, 38000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 52),
  -- Latias - Psych Up - TM77
  (380, 38000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 53),
  -- Latias - Sleep Talk - TM82
  (380, 38000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Latias - Bulldoze - TM83
  (380, 38000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Latias - Dream Eater - TM85
  (380, 38000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 56),
  -- Latias - Grass Knot - TM86
  (380, 38000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 57),
  -- Latias - Swagger - TM87
  (380, 38000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 58),
  -- Latias - Substitute - TM90
  (380, 38000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 59),
  -- Latias - Cut - TM93
  (380, 38000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 60),
  -- Latias - Fly - TM94
  (380, 38000, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 61),
  -- Latias - Surf - TM95
  (380, 38000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 62),
  -- Latias - Defog - TM97
  (380, 38000, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 63),
  -- Latias - Waterfall - TM99
  (380, 38000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 64),
  -- Latios - Stored Power - Starting Move
  (381, 38100, 500, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Latios - Dragon Dance - Starting Move
  (381, 38100, 349, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Latios - Helping Hand - Level 5
  (381, 38100, 270, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latios - Recover - Level 10
  (381, 38100, 105, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latios - Confusion - Level 15
  (381, 38100, 93, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latios - Tailwind - Level 20
  (381, 38100, 366, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latios - Dragon Breath - Level 25
  (381, 38100, 225, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latios - Ally Switch - Level 30
  (381, 38100, 502, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latios - Luster Purge - Level 35
  (381, 38100, 295, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latios - Zen Headbutt - Level 40
  (381, 38100, 428, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latios - Dragon Pulse - Level 45
  (381, 38100, 406, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latios - Heal Pulse - Level 50
  (381, 38100, 505, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latios - Simple Beam - Level 55
  (381, 38100, 493, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latios - Psychic - Level 60
  (381, 38100, 94, 21, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latios - Power Split - Level 65
  (381, 38100, 471, 21, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latios - Memento - Level 70
  (381, 38100, 262, 21, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Latios - Psycho Shift - Level 75
  (381, 38100, 375, 21, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Latios - Dragon Claw - TM02
  (381, 38100, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 18),
  -- Latios - Water Pulse - TM03
  (381, 38100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Latios - Calm Mind - TM04
  (381, 38100, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 20),
  -- Latios - Roar - TM05
  (381, 38100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Latios - Sunny Day - TM11
  (381, 38100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Latios - Ice Beam - TM13
  (381, 38100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Latios - Hyper Beam - TM15
  (381, 38100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Latios - Light Screen - TM16
  (381, 38100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Latios - Protect - TM17
  (381, 38100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Latios - Rain Dance - TM18
  (381, 38100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Latios - Safeguard - TM20
  (381, 38100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Latios - Solar Beam - TM22
  (381, 38100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Latios - Thunderbolt - TM24
  (381, 38100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Latios - Thunder - TM25
  (381, 38100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Latios - Earthquake - TM26
  (381, 38100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 32),
  -- Latios - Psychic - TM29
  (381, 38100, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 33),
  -- Latios - Shadow Ball - TM30
  (381, 38100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 34),
  -- Latios - Double Team - TM32
  (381, 38100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Latios - Reflect - TM33
  (381, 38100, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Latios - Shock Wave - TM34
  (381, 38100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Latios - Sandstorm - TM37
  (381, 38100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 38),
  -- Latios - Aerial Ace - TM40
  (381, 38100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Latios - Facade - TM42
  (381, 38100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 40),
  -- Latios - Rest - TM44
  (381, 38100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 41),
  -- Latios - Attract - TM45
  (381, 38100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 42),
  -- Latios - Steel Wing - TM47
  (381, 38100, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 43),
  -- Latios - Roost - TM51
  (381, 38100, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 44),
  -- Latios - Energy Ball - TM53
  (381, 38100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 45),
  -- Latios - Charge Beam - TM57
  (381, 38100, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 46),
  -- Latios - Endure - TM58
  (381, 38100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 47),
  -- Latios - Dragon Pulse - TM59
  (381, 38100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 48),
  -- Latios - Shadow Claw - TM65
  (381, 38100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 49),
  -- Latios - Giga Impact - TM68
  (381, 38100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Latios - Flash - TM70
  (381, 38100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 51),
  -- Latios - Thunder Wave - TM73
  (381, 38100, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 52),
  -- Latios - Psych Up - TM77
  (381, 38100, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 53),
  -- Latios - Sleep Talk - TM82
  (381, 38100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 54),
  -- Latios - Bulldoze - TM83
  (381, 38100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 55),
  -- Latios - Dream Eater - TM85
  (381, 38100, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 56),
  -- Latios - Grass Knot - TM86
  (381, 38100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 57),
  -- Latios - Swagger - TM87
  (381, 38100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 58),
  -- Latios - Substitute - TM90
  (381, 38100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 59),
  -- Latios - Cut - TM93
  (381, 38100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 60),
  -- Latios - Fly - TM94
  (381, 38100, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 61),
  -- Latios - Surf - TM95
  (381, 38100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 62),
  -- Latios - Defog - TM97
  (381, 38100, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 63),
  -- Latios - Waterfall - TM99
  (381, 38100, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 64),
  -- Kyogre - Water Pulse - Starting Move
  (382, 38200, 352, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kyogre - Ancient Power - Starting Move
  (382, 38200, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Kyogre - Body Slam - Starting Move
  (382, 38200, 34, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Kyogre - Scary Face - Starting Move
  (382, 38200, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Kyogre - Aqua Tail - Level 9
  (382, 38200, 401, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Kyogre - Calm Mind - Level 18
  (382, 38200, 347, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Kyogre - Muddy Water - Level 27
  (382, 38200, 330, 21, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Kyogre - Ice Beam - Level 36
  (382, 38200, 58, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Kyogre - Sheer Cold - Level 45
  (382, 38200, 329, 21, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Kyogre - Aqua Ring - Level 54
  (382, 38200, 392, 21, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Kyogre - Origin Pulse - Level 63
  (382, 38200, 618, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Kyogre - Hydro Pump - Level 72
  (382, 38200, 56, 21, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Kyogre - Double-Edge - Level 81
  (382, 38200, 38, 21, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Kyogre - Water Spout - Level 90
  (382, 38200, 323, 21, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Kyogre - Water Pulse - TM03
  (382, 38200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 15),
  -- Kyogre - Calm Mind - TM04
  (382, 38200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 16),
  -- Kyogre - Roar - TM05
  (382, 38200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Kyogre - Hail - TM07
  (382, 38200, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 18),
  -- Kyogre - Ice Beam - TM13
  (382, 38200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Kyogre - Blizzard - TM14
  (382, 38200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Kyogre - Hyper Beam - TM15
  (382, 38200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Kyogre - Protect - TM17
  (382, 38200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Kyogre - Rain Dance - TM18
  (382, 38200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Kyogre - Safeguard - TM20
  (382, 38200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Kyogre - Thunderbolt - TM24
  (382, 38200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 25),
  -- Kyogre - Thunder - TM25
  (382, 38200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 26),
  -- Kyogre - Earthquake - TM26
  (382, 38200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Kyogre - Brick Break - TM31
  (382, 38200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Kyogre - Double Team - TM32
  (382, 38200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Kyogre - Shock Wave - TM34
  (382, 38200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Kyogre - Rock Tomb - TM39
  (382, 38200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 31),
  -- Kyogre - Facade - TM42
  (382, 38200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Kyogre - Rest - TM44
  (382, 38200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Kyogre - Scald - TM49
  (382, 38200, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 34),
  -- Kyogre - Brine - TM55
  (382, 38200, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 35),
  -- Kyogre - Endure - TM58
  (382, 38200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Kyogre - Giga Impact - TM68
  (382, 38200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 37),
  -- Kyogre - Avalanche - TM72
  (382, 38200, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 38),
  -- Kyogre - Thunder Wave - TM73
  (382, 38200, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 39),
  -- Kyogre - Psych Up - TM77
  (382, 38200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 40),
  -- Kyogre - Rock Slide - TM80
  (382, 38200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Kyogre - Sleep Talk - TM82
  (382, 38200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Kyogre - Bulldoze - TM83
  (382, 38200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Kyogre - Swagger - TM87
  (382, 38200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Kyogre - Substitute - TM90
  (382, 38200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Kyogre - Surf - TM95
  (382, 38200, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 46),
  -- Kyogre - Strength - TM96
  (382, 38200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Kyogre - Rock Smash - TM98
  (382, 38200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Kyogre - Waterfall - TM99
  (382, 38200, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 49),
  -- Groudon - Mud Shot - Starting Move
  (383, 38300, 341, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Groudon - Ancient Power - Starting Move
  (383, 38300, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Groudon - Lava Plume - Starting Move
  (383, 38300, 436, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Groudon - Scary Face - Starting Move
  (383, 38300, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Groudon - Earth Power - Level 9
  (383, 38300, 414, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Groudon - Bulk Up - Level 18
  (383, 38300, 339, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Groudon - Earthquake - Level 27
  (383, 38300, 89, 21, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Groudon - Hammer Arm - Level 36
  (383, 38300, 359, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Groudon - Fissure - Level 45
  (383, 38300, 90, 21, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Groudon - Rest - Level 54
  (383, 38300, 156, 21, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Groudon - Precipice Blades - Level 63
  (383, 38300, 619, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Groudon - Fire Blast - Level 72
  (383, 38300, 126, 21, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Groudon - Solar Beam - Level 81
  (383, 38300, 76, 21, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Groudon - Eruption - Level 90
  (383, 38300, 284, 21, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Groudon - Dragon Claw - TM02
  (383, 38300, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 15),
  -- Groudon - Roar - TM05
  (383, 38300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 16),
  -- Groudon - Bulk Up - TM08
  (383, 38300, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 17),
  -- Groudon - Sunny Day - TM11
  (383, 38300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Groudon - Hyper Beam - TM15
  (383, 38300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Groudon - Protect - TM17
  (383, 38300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Groudon - Safeguard - TM20
  (383, 38300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 21),
  -- Groudon - Solar Beam - TM22
  (383, 38300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 22),
  -- Groudon - Iron Tail - TM23
  (383, 38300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Groudon - Thunderbolt - TM24
  (383, 38300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 24),
  -- Groudon - Thunder - TM25
  (383, 38300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 25),
  -- Groudon - Earthquake - TM26
  (383, 38300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Groudon - Dig - TM28
  (383, 38300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Groudon - Brick Break - TM31
  (383, 38300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Groudon - Double Team - TM32
  (383, 38300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Groudon - Shock Wave - TM34
  (383, 38300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 30),
  -- Groudon - Flamethrower - TM35
  (383, 38300, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 31),
  -- Groudon - Sandstorm - TM37
  (383, 38300, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 32),
  -- Groudon - Fire Blast - TM38
  (383, 38300, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 33),
  -- Groudon - Rock Tomb - TM39
  (383, 38300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Groudon - Aerial Ace - TM40
  (383, 38300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 35),
  -- Groudon - Facade - TM42
  (383, 38300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Groudon - Rest - TM44
  (383, 38300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Groudon - Overheat - TM50
  (383, 38300, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 38),
  -- Groudon - Focus Blast - TM52
  (383, 38300, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 39),
  -- Groudon - Fling - TM56
  (383, 38300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Groudon - Endure - TM58
  (383, 38300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Groudon - Dragon Pulse - TM59
  (383, 38300, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 42),
  -- Groudon - Shadow Claw - TM65
  (383, 38300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 43),
  -- Groudon - Giga Impact - TM68
  (383, 38300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Groudon - Rock Polish - TM69
  (383, 38300, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 45),
  -- Groudon - Stone Edge - TM71
  (383, 38300, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 46),
  -- Groudon - Thunder Wave - TM73
  (383, 38300, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 47),
  -- Groudon - Swords Dance - TM75
  (383, 38300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 48),
  -- Groudon - Stealth Rock - TM76
  (383, 38300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 49),
  -- Groudon - Psych Up - TM77
  (383, 38300, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 50),
  -- Groudon - Rock Slide - TM80
  (383, 38300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 51),
  -- Groudon - Sleep Talk - TM82
  (383, 38300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 52),
  -- Groudon - Bulldoze - TM83
  (383, 38300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 53),
  -- Groudon - Swagger - TM87
  (383, 38300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 54),
  -- Groudon - Substitute - TM90
  (383, 38300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Groudon - Cut - TM93
  (383, 38300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 56),
  -- Groudon - Strength - TM96
  (383, 38300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Groudon - Rock Smash - TM98
  (383, 38300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Groudon - Rock Climb - TM100
  (383, 38300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 59),
  -- Rayquaza - Dragon Ascent - Starting Move
  (384, 38400, 620, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rayquaza - Twister - Starting Move
  (384, 38400, 239, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rayquaza - Ancient Power - Starting Move
  (384, 38400, 246, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Rayquaza - Air Slash - Starting Move
  (384, 38400, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Rayquaza - Scary Face - Starting Move
  (384, 38400, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Rayquaza - Crunch - Level 9
  (384, 38400, 242, 21, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rayquaza - Dragon Dance - Level 18
  (384, 38400, 349, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rayquaza - Extreme Speed - Level 27
  (384, 38400, 245, 21, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Rayquaza - Dragon Pulse - Level 36
  (384, 38400, 406, 21, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Rayquaza - Hyper Voice - Level 45
  (384, 38400, 304, 21, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Rayquaza - Rest - Level 54
  (384, 38400, 156, 21, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Rayquaza - Fly - Level 63
  (384, 38400, 19, 21, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Rayquaza - Hurricane - Level 72
  (384, 38400, 542, 21, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Rayquaza - Outrage - Level 81
  (384, 38400, 200, 21, NULL, 1, 81, NULL, NULL, NULL, 14),
  -- Rayquaza - Hyper Beam - Level 90
  (384, 38400, 63, 21, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Rayquaza - Dragon Claw - TM02
  (384, 38400, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 16),
  -- Rayquaza - Water Pulse - TM03
  (384, 38400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Rayquaza - Roar - TM05
  (384, 38400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 18),
  -- Rayquaza - Bulk Up - TM08
  (384, 38400, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 19),
  -- Rayquaza - Sunny Day - TM11
  (384, 38400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Rayquaza - Ice Beam - TM13
  (384, 38400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Rayquaza - Blizzard - TM14
  (384, 38400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Rayquaza - Hyper Beam - TM15
  (384, 38400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Rayquaza - Protect - TM17
  (384, 38400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Rayquaza - Rain Dance - TM18
  (384, 38400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 25),
  -- Rayquaza - Solar Beam - TM22
  (384, 38400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Rayquaza - Iron Tail - TM23
  (384, 38400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Rayquaza - Thunderbolt - TM24
  (384, 38400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 28),
  -- Rayquaza - Thunder - TM25
  (384, 38400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 29),
  -- Rayquaza - Earthquake - TM26
  (384, 38400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Rayquaza - Brick Break - TM31
  (384, 38400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Rayquaza - Double Team - TM32
  (384, 38400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Rayquaza - Shock Wave - TM34
  (384, 38400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 33),
  -- Rayquaza - Flamethrower - TM35
  (384, 38400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 34),
  -- Rayquaza - Sandstorm - TM37
  (384, 38400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 35),
  -- Rayquaza - Fire Blast - TM38
  (384, 38400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 36),
  -- Rayquaza - Rock Tomb - TM39
  (384, 38400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 37),
  -- Rayquaza - Aerial Ace - TM40
  (384, 38400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 38),
  -- Rayquaza - Facade - TM42
  (384, 38400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Rayquaza - Rest - TM44
  (384, 38400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Rayquaza - Overheat - TM50
  (384, 38400, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 41),
  -- Rayquaza - Focus Blast - TM52
  (384, 38400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Rayquaza - Energy Ball - TM53
  (384, 38400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 43),
  -- Rayquaza - Fling - TM56
  (384, 38400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Rayquaza - Endure - TM58
  (384, 38400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Rayquaza - Dragon Pulse - TM59
  (384, 38400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 46),
  -- Rayquaza - Shadow Claw - TM65
  (384, 38400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 47),
  -- Rayquaza - Giga Impact - TM68
  (384, 38400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 48),
  -- Rayquaza - Stone Edge - TM71
  (384, 38400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 49),
  -- Rayquaza - Avalanche - TM72
  (384, 38400, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 50),
  -- Rayquaza - Thunder Wave - TM73
  (384, 38400, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 51),
  -- Rayquaza - Gyro Ball - TM74
  (384, 38400, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 52),
  -- Rayquaza - Swords Dance - TM75
  (384, 38400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 53),
  -- Rayquaza - Psych Up - TM77
  (384, 38400, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 54),
  -- Rayquaza - Rock Slide - TM80
  (384, 38400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 55),
  -- Rayquaza - Sleep Talk - TM82
  (384, 38400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 56),
  -- Rayquaza - Bulldoze - TM83
  (384, 38400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 57),
  -- Rayquaza - Swagger - TM87
  (384, 38400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 58),
  -- Rayquaza - Substitute - TM90
  (384, 38400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 59),
  -- Rayquaza - Fly - TM94
  (384, 38400, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 60),
  -- Rayquaza - Surf - TM95
  (384, 38400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 61),
  -- Rayquaza - Strength - TM96
  (384, 38400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 62),
  -- Rayquaza - Rock Smash - TM98
  (384, 38400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 63),
  -- Rayquaza - Waterfall - TM99
  (384, 38400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 64),
  -- Jirachi - Confusion - Starting Move
  (385, 38500, 93, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Jirachi - Wish - Starting Move
  (385, 38500, 273, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Jirachi - Swift - Level 7
  (385, 38500, 129, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Jirachi - Helping Hand - Level 14
  (385, 38500, 270, 21, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Jirachi - Life Dew - Level 21
  (385, 38500, 791, 21, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Jirachi - Zen Headbutt - Level 28
  (385, 38500, 428, 21, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Jirachi - Gravity - Level 35
  (385, 38500, 356, 21, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Jirachi - Psychic - Level 42
  (385, 38500, 94, 21, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Jirachi - Meteor Mash - Level 49
  (385, 38500, 309, 21, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Jirachi - Healing Wish - Level 56
  (385, 38500, 361, 21, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Jirachi - Rest - Level 63
  (385, 38500, 156, 21, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Jirachi - Future Sight - Level 70
  (385, 38500, 248, 21, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Jirachi - Double-Edge - Level 77
  (385, 38500, 38, 21, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Jirachi - Cosmic Power - Level 84
  (385, 38500, 322, 21, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Jirachi - Last Resort - Level 91
  (385, 38500, 387, 21, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Jirachi - Doom Desire - Level 98
  (385, 38500, 353, 21, NULL, 1, 98, NULL, NULL, NULL, 16),
  -- Jirachi - Water Pulse - TM03
  (385, 38500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 17),
  -- Jirachi - Calm Mind - TM04
  (385, 38500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Jirachi - Sunny Day - TM11
  (385, 38500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Jirachi - Hyper Beam - TM15
  (385, 38500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Jirachi - Light Screen - TM16
  (385, 38500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 21),
  -- Jirachi - Protect - TM17
  (385, 38500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Jirachi - Rain Dance - TM18
  (385, 38500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Jirachi - Safeguard - TM20
  (385, 38500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Jirachi - Dazzling Gleam - TM21
  (385, 38500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Jirachi - Thunderbolt - TM24
  (385, 38500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Jirachi - Thunder - TM25
  (385, 38500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Jirachi - Psychic - TM29
  (385, 38500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Jirachi - Shadow Ball - TM30
  (385, 38500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 29),
  -- Jirachi - Double Team - TM32
  (385, 38500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Jirachi - Reflect - TM33
  (385, 38500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Jirachi - Shock Wave - TM34
  (385, 38500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Jirachi - Sandstorm - TM37
  (385, 38500, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 33),
  -- Jirachi - Aerial Ace - TM40
  (385, 38500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 34),
  -- Jirachi - Facade - TM42
  (385, 38500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Jirachi - Rest - TM44
  (385, 38500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Jirachi - Skill Swap - TM48
  (385, 38500, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 37),
  -- Jirachi - Energy Ball - TM53
  (385, 38500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Jirachi - Fling - TM56
  (385, 38500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Jirachi - Charge Beam - TM57
  (385, 38500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 40),
  -- Jirachi - Endure - TM58
  (385, 38500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Jirachi - Drain Punch - TM60
  (385, 38500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 42),
  -- Jirachi - Recycle - TM67
  (385, 38500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 43),
  -- Jirachi - Giga Impact - TM68
  (385, 38500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Jirachi - Flash - TM70
  (385, 38500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 45),
  -- Jirachi - Thunder Wave - TM73
  (385, 38500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 46),
  -- Jirachi - Stealth Rock - TM76
  (385, 38500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 47),
  -- Jirachi - Psych Up - TM77
  (385, 38500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 48),
  -- Jirachi - Sleep Talk - TM82
  (385, 38500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Jirachi - Dream Eater - TM85
  (385, 38500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 50),
  -- Jirachi - Grass Knot - TM86
  (385, 38500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Jirachi - Swagger - TM87
  (385, 38500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Jirachi - U-turn - TM89
  (385, 38500, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 53),
  -- Jirachi - Substitute - TM90
  (385, 38500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Jirachi - Flash Cannon - TM91
  (385, 38500, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 55),
  -- Jirachi - Trick Room - TM92
  (385, 38500, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 56),
  -- Deoxys - Leer - Starting Move
  (386, 38600, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Deoxys - Wrap - Starting Move
  (386, 38600, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Deoxys - Night Shade - Level 7
  (386, 38600, 101, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys - Teleport - Level 13
  (386, 38600, 100, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys - Knock Off - Level 19
  (386, 38600, 282, 21, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys - Toxic Spikes - Level 25
  (386, 38600, 390, 21, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys - Psychic - Level 31
  (386, 38600, 94, 21, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys - Switcheroo - Level 37
  (386, 38600, 415, 21, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys - Psycho Shift - Level 43
  (386, 38600, 375, 21, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys - Zen Headbutt - Level 49
  (386, 38600, 428, 21, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys - Cosmic Power - Level 55
  (386, 38600, 322, 21, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys - Recover - Level 61
  (386, 38600, 105, 21, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys - Psycho Boost - Level 67
  (386, 38600, 354, 21, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys - Hyper Beam - Level 73
  (386, 38600, 63, 21, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys - Focus Punch - TM01
  (386, 38600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Deoxys - Water Pulse - TM03
  (386, 38600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Deoxys - Calm Mind - TM04
  (386, 38600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Deoxys - Sunny Day - TM11
  (386, 38600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Deoxys - Taunt - TM12
  (386, 38600, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Deoxys - Ice Beam - TM13
  (386, 38600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Deoxys - Hyper Beam - TM15
  (386, 38600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Deoxys - Light Screen - TM16
  (386, 38600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Deoxys - Protect - TM17
  (386, 38600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Deoxys - Rain Dance - TM18
  (386, 38600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Deoxys - Safeguard - TM20
  (386, 38600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Deoxys - Solar Beam - TM22
  (386, 38600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Deoxys - Thunderbolt - TM24
  (386, 38600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Deoxys - Thunder - TM25
  (386, 38600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Deoxys - Low Sweep - TM27
  (386, 38600, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 29),
  -- Deoxys - Psychic - TM29
  (386, 38600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Deoxys - Shadow Ball - TM30
  (386, 38600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Deoxys - Brick Break - TM31
  (386, 38600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Deoxys - Double Team - TM32
  (386, 38600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Deoxys - Reflect - TM33
  (386, 38600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 34),
  -- Deoxys - Shock Wave - TM34
  (386, 38600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Deoxys - Rock Tomb - TM39
  (386, 38600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Deoxys - Aerial Ace - TM40
  (386, 38600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Deoxys - Torment - TM41
  (386, 38600, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Deoxys - Facade - TM42
  (386, 38600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Deoxys - Rest - TM44
  (386, 38600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Deoxys - Skill Swap - TM48
  (386, 38600, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Deoxys - Focus Blast - TM52
  (386, 38600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Deoxys - Energy Ball - TM53
  (386, 38600, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 43),
  -- Deoxys - Fling - TM56
  (386, 38600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Deoxys - Charge Beam - TM57
  (386, 38600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 45),
  -- Deoxys - Endure - TM58
  (386, 38600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Deoxys - Drain Punch - TM60
  (386, 38600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 47),
  -- Deoxys - Nasty Plot - TM63
  (386, 38600, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 48),
  -- Deoxys - Recycle - TM67
  (386, 38600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 49),
  -- Deoxys - Giga Impact - TM68
  (386, 38600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Deoxys - Flash - TM70
  (386, 38600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 51),
  -- Deoxys - Avalanche - TM72
  (386, 38600, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 52),
  -- Deoxys - Thunder Wave - TM73
  (386, 38600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 53),
  -- Deoxys - Stealth Rock - TM76
  (386, 38600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 54),
  -- Deoxys - Psych Up - TM77
  (386, 38600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 55),
  -- Deoxys - Dark Pulse - TM79
  (386, 38600, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 56),
  -- Deoxys - Rock Slide - TM80
  (386, 38600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Deoxys - Sleep Talk - TM82
  (386, 38600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Deoxys - Poison Jab - TM84
  (386, 38600, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 59),
  -- Deoxys - Dream Eater - TM85
  (386, 38600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 60),
  -- Deoxys - Grass Knot - TM86
  (386, 38600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 61),
  -- Deoxys - Swagger - TM87
  (386, 38600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Deoxys - Substitute - TM90
  (386, 38600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 63),
  -- Deoxys - Flash Cannon - TM91
  (386, 38600, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 64),
  -- Deoxys - Trick Room - TM92
  (386, 38600, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 65),
  -- Deoxys - Cut - TM93
  (386, 38600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 66),
  -- Deoxys - Strength - TM96
  (386, 38600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Deoxys - Rock Smash - TM98
  (386, 38600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Deoxys (Attack) - Leer - Starting Move
  (386, 38601, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Wrap - Starting Move
  (386, 38601, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 7
  (386, 38601, 101, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 13
  (386, 38601, 100, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 19
  (386, 38601, 269, 21, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Toxic Spikes - Level 25
  (386, 38601, 390, 21, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 31
  (386, 38601, 94, 21, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 37
  (386, 38601, 276, 21, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 43
  (386, 38601, 375, 21, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 49
  (386, 38601, 428, 21, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 55
  (386, 38601, 322, 21, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 61
  (386, 38601, 192, 21, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 67
  (386, 38601, 354, 21, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 73
  (386, 38601, 63, 21, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Focus Punch - TM01
  (386, 38601, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Deoxys (Attack) - Water Pulse - TM03
  (386, 38601, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Deoxys (Attack) - Low Sweep - TM27
  (386, 38601, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 29),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 34),
  -- Deoxys (Attack) - Shock Wave - TM34
  (386, 38601, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Deoxys (Attack) - Skill Swap - TM48
  (386, 38601, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 43),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 45),
  -- Deoxys (Attack) - Endure - TM58
  (386, 38601, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Deoxys (Attack) - Drain Punch - TM60
  (386, 38601, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 47),
  -- Deoxys (Attack) - Nasty Plot - TM63
  (386, 38601, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 48),
  -- Deoxys (Attack) - Recycle - TM67
  (386, 38601, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 49),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Deoxys (Attack) - Flash - TM70
  (386, 38601, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 51),
  -- Deoxys (Attack) - Avalanche - TM72
  (386, 38601, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 52),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 53),
  -- Deoxys (Attack) - Stealth Rock - TM76
  (386, 38601, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 54),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 55),
  -- Deoxys (Attack) - Dark Pulse - TM79
  (386, 38601, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 56),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Deoxys (Attack) - Sleep Talk - TM82
  (386, 38601, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 59),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 60),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 61),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 63),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 64),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 65),
  -- Deoxys (Attack) - Cut - TM93
  (386, 38601, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 66),
  -- Deoxys (Attack) - Strength - TM96
  (386, 38601, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Deoxys (Attack) - Rock Smash - TM98
  (386, 38601, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Deoxys (Defense) - Leer - Starting Move
  (386, 38602, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Wrap - Starting Move
  (386, 38602, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 7
  (386, 38602, 101, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 13
  (386, 38602, 100, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 19
  (386, 38602, 282, 21, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 25
  (386, 38602, 191, 21, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 31
  (386, 38602, 94, 21, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Switcheroo - Level 37
  (386, 38602, 415, 21, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Psycho Shift - Level 43
  (386, 38602, 375, 21, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 49
  (386, 38602, 428, 21, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Iron Defense - Level 55
  (386, 38602, 334, 21, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Amnesia - Level 55
  (386, 38602, 133, 21, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 61
  (386, 38602, 105, 21, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 67
  (386, 38602, 354, 21, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 73
  (386, 38602, 68, 21, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 73
  (386, 38602, 243, 21, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Focus Punch - TM01
  (386, 38602, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Deoxys (Defense) - Water Pulse - TM03
  (386, 38602, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 19),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 21),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 24),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 27),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 28),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Deoxys (Defense) - Low Sweep - TM27
  (386, 38602, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 31),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 32),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 36),
  -- Deoxys (Defense) - Shock Wave - TM34
  (386, 38602, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 37),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 38),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 39),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 40),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 41),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 42),
  -- Deoxys (Defense) - Skill Swap - TM48
  (386, 38602, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 43),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 44),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 45),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 46),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 47),
  -- Deoxys (Defense) - Endure - TM58
  (386, 38602, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 48),
  -- Deoxys (Defense) - Drain Punch - TM60
  (386, 38602, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 49),
  -- Deoxys (Defense) - Nasty Plot - TM63
  (386, 38602, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 50),
  -- Deoxys (Defense) - Recycle - TM67
  (386, 38602, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 51),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 52),
  -- Deoxys (Defense) - Flash - TM70
  (386, 38602, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 53),
  -- Deoxys (Defense) - Avalanche - TM72
  (386, 38602, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 54),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 55),
  -- Deoxys (Defense) - Stealth Rock - TM76
  (386, 38602, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 56),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 57),
  -- Deoxys (Defense) - Dark Pulse - TM79
  (386, 38602, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 58),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 59),
  -- Deoxys (Defense) - Sleep Talk - TM82
  (386, 38602, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 60),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 61),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 62),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 63),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 64),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 65),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 66),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 67),
  -- Deoxys (Defense) - Cut - TM93
  (386, 38602, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 68),
  -- Deoxys (Defense) - Strength - TM96
  (386, 38602, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 69),
  -- Deoxys (Defense) - Rock Smash - TM98
  (386, 38602, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 70),
  -- Deoxys (Speed) - Leer - Starting Move
  (386, 38603, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Wrap - Starting Move
  (386, 38603, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 7
  (386, 38603, 101, 21, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 13
  (386, 38603, 104, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 19
  (386, 38603, 282, 21, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Toxic Spikes - Level 25
  (386, 38603, 390, 21, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 31
  (386, 38603, 94, 21, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 37
  (386, 38603, 129, 21, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Psycho Shift - Level 43
  (386, 38603, 375, 21, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 49
  (386, 38603, 428, 21, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 55
  (386, 38603, 97, 21, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 61
  (386, 38603, 105, 21, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 67
  (386, 38603, 354, 21, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 73
  (386, 38603, 245, 21, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Focus Punch - TM01
  (386, 38603, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Deoxys (Speed) - Water Pulse - TM03
  (386, 38603, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 17),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 20),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 27),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 28),
  -- Deoxys (Speed) - Low Sweep - TM27
  (386, 38603, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 29),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 30),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 31),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 32),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 34),
  -- Deoxys (Speed) - Shock Wave - TM34
  (386, 38603, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 35),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 36),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 37),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 38),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 39),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 40),
  -- Deoxys (Speed) - Skill Swap - TM48
  (386, 38603, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 41),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 43),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 44),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 45),
  -- Deoxys (Speed) - Endure - TM58
  (386, 38603, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 46),
  -- Deoxys (Speed) - Drain Punch - TM60
  (386, 38603, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 47),
  -- Deoxys (Speed) - Nasty Plot - TM63
  (386, 38603, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 48),
  -- Deoxys (Speed) - Recycle - TM67
  (386, 38603, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 49),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 50),
  -- Deoxys (Speed) - Flash - TM70
  (386, 38603, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 51),
  -- Deoxys (Speed) - Avalanche - TM72
  (386, 38603, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 52),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 53),
  -- Deoxys (Speed) - Stealth Rock - TM76
  (386, 38603, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 54),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 55),
  -- Deoxys (Speed) - Dark Pulse - TM79
  (386, 38603, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 56),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Deoxys (Speed) - Sleep Talk - TM82
  (386, 38603, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 59),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 60),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 61),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 62),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 63),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 64),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 21, NULL, 2, NULL, NULL, 21002092, NULL, 65),
  -- Deoxys (Speed) - Cut - TM93
  (386, 38603, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 66),
  -- Deoxys (Speed) - Strength - TM96
  (386, 38603, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 67),
  -- Deoxys (Speed) - Rock Smash - TM98
  (386, 38603, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 68),
  -- Turtwig - Tackle - Starting Move
  (387, 38700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Turtwig - Withdraw - Level 5
  (387, 38700, 110, 21, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Turtwig - Leafage - Level 6
  (387, 38700, 670, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Turtwig - Growth - Level 10
  (387, 38700, 74, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Turtwig - Razor Leaf - Level 13
  (387, 38700, 75, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Turtwig - Curse - Level 17
  (387, 38700, 174, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Turtwig - Bite - Level 21
  (387, 38700, 44, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Turtwig - Mega Drain - Level 25
  (387, 38700, 72, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Turtwig - Leech Seed - Level 29
  (387, 38700, 73, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Turtwig - Synthesis - Level 33
  (387, 38700, 235, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Turtwig - Crunch - Level 37
  (387, 38700, 242, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Turtwig - Giga Drain - Level 41
  (387, 38700, 202, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Turtwig - Leaf Storm - Level 45
  (387, 38700, 437, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Turtwig - Bullet Seed - TM09
  (387, 38700, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 14),
  -- Turtwig - Work Up - TM10
  (387, 38700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Turtwig - Sunny Day - TM11
  (387, 38700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Turtwig - Light Screen - TM16
  (387, 38700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 17),
  -- Turtwig - Protect - TM17
  (387, 38700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Turtwig - Giga Drain - TM19
  (387, 38700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Turtwig - Safeguard - TM20
  (387, 38700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Turtwig - Solar Beam - TM22
  (387, 38700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Turtwig - Iron Tail - TM23
  (387, 38700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Turtwig - Double Team - TM32
  (387, 38700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Turtwig - Reflect - TM33
  (387, 38700, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 24),
  -- Turtwig - Facade - TM42
  (387, 38700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 25),
  -- Turtwig - Rest - TM44
  (387, 38700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 26),
  -- Turtwig - Attract - TM45
  (387, 38700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 27),
  -- Turtwig - Energy Ball - TM53
  (387, 38700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 28),
  -- Turtwig - Endure - TM58
  (387, 38700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Turtwig - Flash - TM70
  (387, 38700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Turtwig - Swords Dance - TM75
  (387, 38700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 31),
  -- Turtwig - Stealth Rock - TM76
  (387, 38700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 32),
  -- Turtwig - Sleep Talk - TM82
  (387, 38700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Turtwig - Grass Knot - TM86
  (387, 38700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Turtwig - Swagger - TM87
  (387, 38700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Turtwig - Substitute - TM90
  (387, 38700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Turtwig - Cut - TM93
  (387, 38700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Turtwig - Strength - TM96
  (387, 38700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 38),
  -- Turtwig - Rock Smash - TM98
  (387, 38700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 39),
  -- Turtwig - Rock Climb - TM100
  (387, 38700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 40),
  -- Turtwig - Amnesia - Egg
  (387, 38700, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Turtwig - Body Slam - Egg
  (387, 38700, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Turtwig - Double-Edge - Egg
  (387, 38700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Turtwig - Earth Power - Egg
  (387, 38700, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Turtwig - Grassy Terrain - Egg
  (387, 38700, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Turtwig - Growth - Egg
  (387, 38700, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Turtwig - Heavy Slam - Egg
  (387, 38700, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Turtwig - Sand Tomb - Egg
  (387, 38700, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Turtwig - Seed Bomb - Egg
  (387, 38700, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Turtwig - Spit Up - Egg
  (387, 38700, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Turtwig - Stockpile - Egg
  (387, 38700, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Turtwig - Superpower - Egg
  (387, 38700, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Turtwig - Swallow - Egg
  (387, 38700, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Turtwig - Thrash - Egg
  (387, 38700, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Turtwig - Tickle - Egg
  (387, 38700, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Turtwig - Wide Guard - Egg
  (387, 38700, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Turtwig - Worry Seed - Egg
  (387, 38700, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grotle - Tackle - Starting Move
  (388, 38800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Grotle - Withdraw - Starting Move
  (388, 38800, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Grotle - Absorb - Starting Move
  (388, 38800, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Grotle - Withdraw - Level 5
  (388, 38800, 110, 21, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Grotle - Leafage - Level 6
  (388, 38800, 670, 21, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Grotle - Growth - Level 10
  (388, 38800, 74, 21, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Grotle - Razor Leaf - Level 13
  (388, 38800, 75, 21, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Grotle - Curse - Level 17
  (388, 38800, 174, 21, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Grotle - Bite - Level 22
  (388, 38800, 44, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Grotle - Mega Drain - Level 27
  (388, 38800, 72, 21, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Grotle - Leech Seed - Level 32
  (388, 38800, 73, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grotle - Synthesis - Level 37
  (388, 38800, 235, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grotle - Crunch - Level 42
  (388, 38800, 242, 21, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Grotle - Giga Drain - Level 47
  (388, 38800, 202, 21, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Grotle - Leaf Storm - Level 52
  (388, 38800, 437, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Grotle - Bullet Seed - TM09
  (388, 38800, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Grotle - Work Up - TM10
  (388, 38800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Grotle - Sunny Day - TM11
  (388, 38800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Grotle - Light Screen - TM16
  (388, 38800, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 19),
  -- Grotle - Protect - TM17
  (388, 38800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Grotle - Giga Drain - TM19
  (388, 38800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Grotle - Safeguard - TM20
  (388, 38800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Grotle - Solar Beam - TM22
  (388, 38800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Grotle - Iron Tail - TM23
  (388, 38800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 24),
  -- Grotle - Double Team - TM32
  (388, 38800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Grotle - Reflect - TM33
  (388, 38800, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 26),
  -- Grotle - Facade - TM42
  (388, 38800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Grotle - Rest - TM44
  (388, 38800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Grotle - Attract - TM45
  (388, 38800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Grotle - Energy Ball - TM53
  (388, 38800, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Grotle - Endure - TM58
  (388, 38800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Grotle - Flash - TM70
  (388, 38800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 32),
  -- Grotle - Swords Dance - TM75
  (388, 38800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 33),
  -- Grotle - Stealth Rock - TM76
  (388, 38800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 34),
  -- Grotle - Sleep Talk - TM82
  (388, 38800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Grotle - Grass Knot - TM86
  (388, 38800, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Grotle - Swagger - TM87
  (388, 38800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Grotle - Substitute - TM90
  (388, 38800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Grotle - Cut - TM93
  (388, 38800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Grotle - Strength - TM96
  (388, 38800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Grotle - Rock Smash - TM98
  (388, 38800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Grotle - Rock Climb - TM100
  (388, 38800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 42),
  -- Grotle - Amnesia - Egg
  (388, 38800, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Grotle - Body Slam - Egg
  (388, 38800, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Grotle - Double-Edge - Egg
  (388, 38800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Grotle - Earth Power - Egg
  (388, 38800, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Grotle - Grassy Terrain - Egg
  (388, 38800, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Grotle - Growth - Egg
  (388, 38800, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Grotle - Heavy Slam - Egg
  (388, 38800, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Grotle - Sand Tomb - Egg
  (388, 38800, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Grotle - Seed Bomb - Egg
  (388, 38800, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Grotle - Spit Up - Egg
  (388, 38800, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Grotle - Stockpile - Egg
  (388, 38800, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grotle - Superpower - Egg
  (388, 38800, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grotle - Swallow - Egg
  (388, 38800, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grotle - Thrash - Egg
  (388, 38800, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grotle - Tickle - Egg
  (388, 38800, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grotle - Wide Guard - Egg
  (388, 38800, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grotle - Worry Seed - Egg
  (388, 38800, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Torterra - Earthquake - Starting Move
  (389, 38900, 89, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Torterra - Wood Hammer - Starting Move
  (389, 38900, 452, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Torterra - Tackle - Starting Move
  (389, 38900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Torterra - Withdraw - Starting Move
  (389, 38900, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Torterra - Absorb - Starting Move
  (389, 38900, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Torterra - Razor Leaf - Starting Move
  (389, 38900, 75, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Torterra - Earthquake - Evolution
  (389, 38900, 89, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Torterra - Withdraw - Level 5
  (389, 38900, 110, 21, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Torterra - Leafage - Level 6
  (389, 38900, 670, 21, NULL, 1, 6, NULL, NULL, NULL, 9),
  -- Torterra - Growth - Level 10
  (389, 38900, 74, 21, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Torterra - Razor Leaf - Level 13
  (389, 38900, 75, 21, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Torterra - Curse - Level 17
  (389, 38900, 174, 21, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Torterra - Bite - Level 22
  (389, 38900, 44, 21, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Torterra - Mega Drain - Level 27
  (389, 38900, 72, 21, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Torterra - Leech Seed - Level 33
  (389, 38900, 73, 21, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Torterra - Synthesis - Level 39
  (389, 38900, 235, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Torterra - Crunch - Level 45
  (389, 38900, 242, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Torterra - Giga Drain - Level 51
  (389, 38900, 202, 21, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Torterra - Leaf Storm - Level 57
  (389, 38900, 437, 21, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Torterra - Roar - TM05
  (389, 38900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 20),
  -- Torterra - Bullet Seed - TM09
  (389, 38900, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Torterra - Work Up - TM10
  (389, 38900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Torterra - Sunny Day - TM11
  (389, 38900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Torterra - Hyper Beam - TM15
  (389, 38900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Torterra - Light Screen - TM16
  (389, 38900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Torterra - Protect - TM17
  (389, 38900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Torterra - Giga Drain - TM19
  (389, 38900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Torterra - Safeguard - TM20
  (389, 38900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Torterra - Solar Beam - TM22
  (389, 38900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Torterra - Iron Tail - TM23
  (389, 38900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Torterra - Earthquake - TM26
  (389, 38900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Torterra - Double Team - TM32
  (389, 38900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Torterra - Reflect - TM33
  (389, 38900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 33),
  -- Torterra - Sandstorm - TM37
  (389, 38900, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 34),
  -- Torterra - Rock Tomb - TM39
  (389, 38900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Torterra - Facade - TM42
  (389, 38900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Torterra - Rest - TM44
  (389, 38900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Torterra - Attract - TM45
  (389, 38900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Torterra - Energy Ball - TM53
  (389, 38900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 39),
  -- Torterra - Endure - TM58
  (389, 38900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Torterra - Giga Impact - TM68
  (389, 38900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Torterra - Rock Polish - TM69
  (389, 38900, 397, 21, NULL, 2, NULL, NULL, 21002069, NULL, 42),
  -- Torterra - Flash - TM70
  (389, 38900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 43),
  -- Torterra - Stone Edge - TM71
  (389, 38900, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 44),
  -- Torterra - Swords Dance - TM75
  (389, 38900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Torterra - Stealth Rock - TM76
  (389, 38900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Torterra - Rock Slide - TM80
  (389, 38900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Torterra - Sleep Talk - TM82
  (389, 38900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Torterra - Bulldoze - TM83
  (389, 38900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 49),
  -- Torterra - Grass Knot - TM86
  (389, 38900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 50),
  -- Torterra - Swagger - TM87
  (389, 38900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 51),
  -- Torterra - Substitute - TM90
  (389, 38900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Torterra - Cut - TM93
  (389, 38900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Torterra - Strength - TM96
  (389, 38900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Torterra - Rock Smash - TM98
  (389, 38900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Torterra - Rock Climb - TM100
  (389, 38900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 56),
  -- Torterra - Amnesia - Egg
  (389, 38900, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torterra - Body Slam - Egg
  (389, 38900, 34, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Torterra - Double-Edge - Egg
  (389, 38900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Torterra - Earth Power - Egg
  (389, 38900, 414, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Torterra - Grassy Terrain - Egg
  (389, 38900, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Torterra - Growth - Egg
  (389, 38900, 74, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Torterra - Heavy Slam - Egg
  (389, 38900, 484, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Torterra - Sand Tomb - Egg
  (389, 38900, 328, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Torterra - Seed Bomb - Egg
  (389, 38900, 402, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Torterra - Spit Up - Egg
  (389, 38900, 255, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Torterra - Stockpile - Egg
  (389, 38900, 254, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Torterra - Superpower - Egg
  (389, 38900, 276, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Torterra - Swallow - Egg
  (389, 38900, 256, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Torterra - Thrash - Egg
  (389, 38900, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Torterra - Tickle - Egg
  (389, 38900, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Torterra - Wide Guard - Egg
  (389, 38900, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Torterra - Worry Seed - Egg
  (389, 38900, 388, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Chimchar - Scratch - Starting Move
  (390, 39000, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Chimchar - Leer - Starting Move
  (390, 39000, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Chimchar - Ember - Level 6
  (390, 39000, 52, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chimchar - Taunt - Level 9
  (390, 39000, 269, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chimchar - Power-Up Punch - Level 12
  (390, 39000, 612, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chimchar - Fury Swipes - Level 15
  (390, 39000, 154, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chimchar - Flame Wheel - Level 17
  (390, 39000, 172, 21, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Chimchar - Nasty Plot - Level 23
  (390, 39000, 417, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chimchar - Torment - Level 25
  (390, 39000, 259, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Chimchar - Facade - Level 31
  (390, 39000, 263, 21, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chimchar - Fire Spin - Level 33
  (390, 39000, 83, 21, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Chimchar - Acrobatics - Level 39
  (390, 39000, 512, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chimchar - Slack Off - Level 41
  (390, 39000, 303, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Chimchar - Flamethrower - Level 47
  (390, 39000, 53, 21, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Chimchar - Focus Punch - TM01
  (390, 39000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Chimchar - Bulk Up - TM08
  (390, 39000, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 16),
  -- Chimchar - Work Up - TM10
  (390, 39000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Chimchar - Sunny Day - TM11
  (390, 39000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Chimchar - Taunt - TM12
  (390, 39000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 19),
  -- Chimchar - Protect - TM17
  (390, 39000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Chimchar - Iron Tail - TM23
  (390, 39000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Chimchar - Low Sweep - TM27
  (390, 39000, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 22),
  -- Chimchar - Dig - TM28
  (390, 39000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 23),
  -- Chimchar - Brick Break - TM31
  (390, 39000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Chimchar - Double Team - TM32
  (390, 39000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Chimchar - Flamethrower - TM35
  (390, 39000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 26),
  -- Chimchar - Fire Blast - TM38
  (390, 39000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 27),
  -- Chimchar - Aerial Ace - TM40
  (390, 39000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Chimchar - Torment - TM41
  (390, 39000, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 29),
  -- Chimchar - Facade - TM42
  (390, 39000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Chimchar - Rest - TM44
  (390, 39000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Chimchar - Attract - TM45
  (390, 39000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Chimchar - Overheat - TM50
  (390, 39000, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 33),
  -- Chimchar - Fling - TM56
  (390, 39000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Chimchar - Endure - TM58
  (390, 39000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Chimchar - Will-O-Wisp - TM61
  (390, 39000, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 36),
  -- Chimchar - Nasty Plot - TM63
  (390, 39000, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 37),
  -- Chimchar - Shadow Claw - TM65
  (390, 39000, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 38),
  -- Chimchar - Swords Dance - TM75
  (390, 39000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Chimchar - Stealth Rock - TM76
  (390, 39000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Chimchar - Sleep Talk - TM82
  (390, 39000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 41),
  -- Chimchar - Grass Knot - TM86
  (390, 39000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 42),
  -- Chimchar - Swagger - TM87
  (390, 39000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 43),
  -- Chimchar - U-turn - TM89
  (390, 39000, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 44),
  -- Chimchar - Substitute - TM90
  (390, 39000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 45),
  -- Chimchar - Cut - TM93
  (390, 39000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 46),
  -- Chimchar - Strength - TM96
  (390, 39000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 47),
  -- Chimchar - Rock Smash - TM98
  (390, 39000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Chimchar - Rock Climb - TM100
  (390, 39000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 49),
  -- Chimchar - Blaze Kick - Egg
  (390, 39000, 299, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chimchar - Counter - Egg
  (390, 39000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chimchar - Double Kick - Egg
  (390, 39000, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chimchar - Encore - Egg
  (390, 39000, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chimchar - Fake Out - Egg
  (390, 39000, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chimchar - Fire Punch - Egg
  (390, 39000, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimchar - Focus Energy - Egg
  (390, 39000, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimchar - Heat Wave - Egg
  (390, 39000, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimchar - Helping Hand - Egg
  (390, 39000, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimchar - Power-Up Punch - Egg
  (390, 39000, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimchar - Quick Guard - Egg
  (390, 39000, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimchar - Submission - Egg
  (390, 39000, 66, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimchar - Thunder Punch - Egg
  (390, 39000, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Monferno - Mach Punch - Starting Move
  (391, 39100, 183, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Monferno - Nasty Plot - Starting Move
  (391, 39100, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Monferno - Facade - Starting Move
  (391, 39100, 263, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Monferno - Flamethrower - Starting Move
  (391, 39100, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Monferno - Scratch - Starting Move
  (391, 39100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Monferno - Leer - Starting Move
  (391, 39100, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Monferno - Ember - Starting Move
  (391, 39100, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Monferno - Mach Punch - Evolution
  (391, 39100, 183, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Monferno - Ember - Level 7
  (391, 39100, 52, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Monferno - Taunt - Level 9
  (391, 39100, 269, 21, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Monferno - Power-Up Punch - Level 12
  (391, 39100, 612, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Monferno - Fury Swipes - Level 16
  (391, 39100, 154, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Monferno - Flame Wheel - Level 19
  (391, 39100, 172, 21, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Monferno - Feint - Level 26
  (391, 39100, 364, 21, NULL, 1, 26, NULL, NULL, NULL, 14),
  -- Monferno - Torment - Level 29
  (391, 39100, 259, 21, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Monferno - Close Combat - Level 36
  (391, 39100, 370, 21, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Monferno - Fire Spin - Level 39
  (391, 39100, 83, 21, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Monferno - Acrobatics - Level 46
  (391, 39100, 512, 21, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Monferno - Slack Off - Level 49
  (391, 39100, 303, 21, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Monferno - Flare Blitz - Level 56
  (391, 39100, 394, 21, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Monferno - Focus Punch - TM01
  (391, 39100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Monferno - Bulk Up - TM08
  (391, 39100, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 22),
  -- Monferno - Work Up - TM10
  (391, 39100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 23),
  -- Monferno - Sunny Day - TM11
  (391, 39100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 24),
  -- Monferno - Taunt - TM12
  (391, 39100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 25),
  -- Monferno - Protect - TM17
  (391, 39100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Monferno - Iron Tail - TM23
  (391, 39100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Monferno - Low Sweep - TM27
  (391, 39100, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 28),
  -- Monferno - Dig - TM28
  (391, 39100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Monferno - Brick Break - TM31
  (391, 39100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Monferno - Double Team - TM32
  (391, 39100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Monferno - Flamethrower - TM35
  (391, 39100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 32),
  -- Monferno - Fire Blast - TM38
  (391, 39100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 33),
  -- Monferno - Rock Tomb - TM39
  (391, 39100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 34),
  -- Monferno - Aerial Ace - TM40
  (391, 39100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 35),
  -- Monferno - Torment - TM41
  (391, 39100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Monferno - Facade - TM42
  (391, 39100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Monferno - Rest - TM44
  (391, 39100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Monferno - Attract - TM45
  (391, 39100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Monferno - Overheat - TM50
  (391, 39100, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 40),
  -- Monferno - Focus Blast - TM52
  (391, 39100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 41),
  -- Monferno - Fling - TM56
  (391, 39100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Monferno - Endure - TM58
  (391, 39100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Monferno - Will-O-Wisp - TM61
  (391, 39100, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 44),
  -- Monferno - Nasty Plot - TM63
  (391, 39100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 45),
  -- Monferno - Shadow Claw - TM65
  (391, 39100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 46),
  -- Monferno - Swords Dance - TM75
  (391, 39100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 47),
  -- Monferno - Stealth Rock - TM76
  (391, 39100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 48),
  -- Monferno - Rock Slide - TM80
  (391, 39100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 49),
  -- Monferno - Sleep Talk - TM82
  (391, 39100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Monferno - Poison Jab - TM84
  (391, 39100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 51),
  -- Monferno - Grass Knot - TM86
  (391, 39100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 52),
  -- Monferno - Swagger - TM87
  (391, 39100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 53),
  -- Monferno - U-turn - TM89
  (391, 39100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 54),
  -- Monferno - Substitute - TM90
  (391, 39100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 55),
  -- Monferno - Cut - TM93
  (391, 39100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 56),
  -- Monferno - Strength - TM96
  (391, 39100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 57),
  -- Monferno - Rock Smash - TM98
  (391, 39100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 58),
  -- Monferno - Rock Climb - TM100
  (391, 39100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 59),
  -- Monferno - Blaze Kick - Egg
  (391, 39100, 299, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Monferno - Counter - Egg
  (391, 39100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Monferno - Double Kick - Egg
  (391, 39100, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Monferno - Encore - Egg
  (391, 39100, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Monferno - Fake Out - Egg
  (391, 39100, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Monferno - Fire Punch - Egg
  (391, 39100, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Monferno - Focus Energy - Egg
  (391, 39100, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Monferno - Heat Wave - Egg
  (391, 39100, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Monferno - Helping Hand - Egg
  (391, 39100, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Monferno - Power-Up Punch - Egg
  (391, 39100, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Monferno - Quick Guard - Egg
  (391, 39100, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Monferno - Submission - Egg
  (391, 39100, 66, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Monferno - Thunder Punch - Egg
  (391, 39100, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Infernape - Close Combat - Starting Move
  (392, 39200, 370, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Infernape - Mach Punch - Starting Move
  (392, 39200, 183, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Infernape - Flare Blitz - Starting Move
  (392, 39200, 394, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Infernape - Nasty Plot - Starting Move
  (392, 39200, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Infernape - Facade - Starting Move
  (392, 39200, 263, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Infernape - Flamethrower - Starting Move
  (392, 39200, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Infernape - Torment - Starting Move
  (392, 39200, 259, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Infernape - Slack Off - Starting Move
  (392, 39200, 303, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Infernape - Scratch - Starting Move
  (392, 39200, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Infernape - Leer - Starting Move
  (392, 39200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Infernape - Ember - Starting Move
  (392, 39200, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Infernape - Taunt - Starting Move
  (392, 39200, 269, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Infernape - Close Combat - Evolution
  (392, 39200, 370, 21, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Infernape - Ember - Level 7
  (392, 39200, 52, 21, NULL, 1, 7, NULL, NULL, NULL, 14),
  -- Infernape - Taunt - Level 9
  (392, 39200, 269, 21, NULL, 1, 9, NULL, NULL, NULL, 15),
  -- Infernape - Power-Up Punch - Level 12
  (392, 39200, 612, 21, NULL, 1, 12, NULL, NULL, NULL, 16),
  -- Infernape - Fury Swipes - Level 16
  (392, 39200, 154, 21, NULL, 1, 16, NULL, NULL, NULL, 17),
  -- Infernape - Flame Wheel - Level 19
  (392, 39200, 172, 21, NULL, 1, 19, NULL, NULL, NULL, 18),
  -- Infernape - Feint - Level 26
  (392, 39200, 364, 21, NULL, 1, 26, NULL, NULL, NULL, 19),
  -- Infernape - U-turn - Level 29
  (392, 39200, 369, 21, NULL, 1, 29, NULL, NULL, NULL, 20),
  -- Infernape - Fire Spin - Level 42
  (392, 39200, 83, 21, NULL, 1, 42, NULL, NULL, NULL, 21),
  -- Infernape - Acrobatics - Level 52
  (392, 39200, 512, 21, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Infernape - Calm Mind - Level 58
  (392, 39200, 347, 21, NULL, 1, 58, NULL, NULL, NULL, 23),
  -- Infernape - Flare Blitz - Level 68
  (392, 39200, 394, 21, NULL, 1, 68, NULL, NULL, NULL, 24),
  -- Infernape - Focus Punch - TM01
  (392, 39200, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 25),
  -- Infernape - Calm Mind - TM04
  (392, 39200, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 26),
  -- Infernape - Roar - TM05
  (392, 39200, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 27),
  -- Infernape - Bulk Up - TM08
  (392, 39200, 339, 21, NULL, 2, NULL, NULL, 21002008, NULL, 28),
  -- Infernape - Work Up - TM10
  (392, 39200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 29),
  -- Infernape - Sunny Day - TM11
  (392, 39200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 30),
  -- Infernape - Taunt - TM12
  (392, 39200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 31),
  -- Infernape - Hyper Beam - TM15
  (392, 39200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 32),
  -- Infernape - Protect - TM17
  (392, 39200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 33),
  -- Infernape - Solar Beam - TM22
  (392, 39200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 34),
  -- Infernape - Iron Tail - TM23
  (392, 39200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 35),
  -- Infernape - Earthquake - TM26
  (392, 39200, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 36),
  -- Infernape - Low Sweep - TM27
  (392, 39200, 490, 21, NULL, 2, NULL, NULL, 21002027, NULL, 37),
  -- Infernape - Dig - TM28
  (392, 39200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 38),
  -- Infernape - Brick Break - TM31
  (392, 39200, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 39),
  -- Infernape - Double Team - TM32
  (392, 39200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 40),
  -- Infernape - Flamethrower - TM35
  (392, 39200, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 41),
  -- Infernape - Fire Blast - TM38
  (392, 39200, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 42),
  -- Infernape - Rock Tomb - TM39
  (392, 39200, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 43),
  -- Infernape - Aerial Ace - TM40
  (392, 39200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 44),
  -- Infernape - Torment - TM41
  (392, 39200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 45),
  -- Infernape - Facade - TM42
  (392, 39200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 46),
  -- Infernape - Rest - TM44
  (392, 39200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 47),
  -- Infernape - Attract - TM45
  (392, 39200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 48),
  -- Infernape - Overheat - TM50
  (392, 39200, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 49),
  -- Infernape - Focus Blast - TM52
  (392, 39200, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 50),
  -- Infernape - Fling - TM56
  (392, 39200, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 51),
  -- Infernape - Endure - TM58
  (392, 39200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 52),
  -- Infernape - Will-O-Wisp - TM61
  (392, 39200, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 53),
  -- Infernape - Nasty Plot - TM63
  (392, 39200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 54),
  -- Infernape - Shadow Claw - TM65
  (392, 39200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 55),
  -- Infernape - Giga Impact - TM68
  (392, 39200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 56),
  -- Infernape - Stone Edge - TM71
  (392, 39200, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 57),
  -- Infernape - Swords Dance - TM75
  (392, 39200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 58),
  -- Infernape - Stealth Rock - TM76
  (392, 39200, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 59),
  -- Infernape - Rock Slide - TM80
  (392, 39200, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 60),
  -- Infernape - Sleep Talk - TM82
  (392, 39200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 61),
  -- Infernape - Bulldoze - TM83
  (392, 39200, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 62),
  -- Infernape - Poison Jab - TM84
  (392, 39200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 63),
  -- Infernape - Grass Knot - TM86
  (392, 39200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 64),
  -- Infernape - Swagger - TM87
  (392, 39200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 65),
  -- Infernape - U-turn - TM89
  (392, 39200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 66),
  -- Infernape - Substitute - TM90
  (392, 39200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 67),
  -- Infernape - Cut - TM93
  (392, 39200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 68),
  -- Infernape - Strength - TM96
  (392, 39200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 69),
  -- Infernape - Rock Smash - TM98
  (392, 39200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 70),
  -- Infernape - Rock Climb - TM100
  (392, 39200, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 71),
  -- Infernape - Blaze Kick - Egg
  (392, 39200, 299, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Infernape - Counter - Egg
  (392, 39200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Infernape - Double Kick - Egg
  (392, 39200, 24, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Infernape - Encore - Egg
  (392, 39200, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Infernape - Fake Out - Egg
  (392, 39200, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Infernape - Fire Punch - Egg
  (392, 39200, 7, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Infernape - Focus Energy - Egg
  (392, 39200, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Infernape - Heat Wave - Egg
  (392, 39200, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Infernape - Helping Hand - Egg
  (392, 39200, 270, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Infernape - Power-Up Punch - Egg
  (392, 39200, 612, 21, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Infernape - Quick Guard - Egg
  (392, 39200, 501, 21, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Infernape - Submission - Egg
  (392, 39200, 66, 21, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Infernape - Thunder Punch - Egg
  (392, 39200, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Piplup - Pound - Starting Move
  (393, 39300, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Piplup - Growl - Level 4
  (393, 39300, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Piplup - Water Gun - Level 6
  (393, 39300, 55, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Piplup - Charm - Level 11
  (393, 39300, 204, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Piplup - Peck - Level 15
  (393, 39300, 64, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Piplup - Bubble Beam - Level 18
  (393, 39300, 61, 21, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Piplup - Swagger - Level 22
  (393, 39300, 207, 21, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Piplup - Fury Attack - Level 25
  (393, 39300, 31, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Piplup - Brine - Level 29
  (393, 39300, 362, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Piplup - Whirlpool - Level 32
  (393, 39300, 250, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Piplup - Mist - Level 36
  (393, 39300, 54, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Piplup - Drill Peck - Level 39
  (393, 39300, 65, 21, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Piplup - Hydro Pump - Level 43
  (393, 39300, 56, 21, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Piplup - Water Pulse - TM03
  (393, 39300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Piplup - Hail - TM07
  (393, 39300, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 15),
  -- Piplup - Work Up - TM10
  (393, 39300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 16),
  -- Piplup - Ice Beam - TM13
  (393, 39300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Piplup - Blizzard - TM14
  (393, 39300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Piplup - Protect - TM17
  (393, 39300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Piplup - Rain Dance - TM18
  (393, 39300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Piplup - Dig - TM28
  (393, 39300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 21),
  -- Piplup - Brick Break - TM31
  (393, 39300, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 22),
  -- Piplup - Double Team - TM32
  (393, 39300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Piplup - Rock Tomb - TM39
  (393, 39300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Piplup - Aerial Ace - TM40
  (393, 39300, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Piplup - Facade - TM42
  (393, 39300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Piplup - Rest - TM44
  (393, 39300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Piplup - Attract - TM45
  (393, 39300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Piplup - Scald - TM49
  (393, 39300, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 29),
  -- Piplup - Brine - TM55
  (393, 39300, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 30),
  -- Piplup - Fling - TM56
  (393, 39300, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 31),
  -- Piplup - Endure - TM58
  (393, 39300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Piplup - Stealth Rock - TM76
  (393, 39300, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 33),
  -- Piplup - Sleep Talk - TM82
  (393, 39300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Piplup - Grass Knot - TM86
  (393, 39300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 35),
  -- Piplup - Swagger - TM87
  (393, 39300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Piplup - Pluck - TM88
  (393, 39300, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 37),
  -- Piplup - Substitute - TM90
  (393, 39300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Piplup - Cut - TM93
  (393, 39300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Piplup - Surf - TM95
  (393, 39300, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 40),
  -- Piplup - Defog - TM97
  (393, 39300, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 41),
  -- Piplup - Waterfall - TM99
  (393, 39300, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 42),
  -- Piplup - Agility - Egg
  (393, 39300, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Piplup - Aqua Ring - Egg
  (393, 39300, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Piplup - Double Hit - Egg
  (393, 39300, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Piplup - Feather Dance - Egg
  (393, 39300, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Piplup - Flail - Egg
  (393, 39300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Piplup - Hydro Pump - Egg
  (393, 39300, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Piplup - Icy Wind - Egg
  (393, 39300, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piplup - Mud-Slap - Egg
  (393, 39300, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Piplup - Snore - Egg
  (393, 39300, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piplup - Supersonic - Egg
  (393, 39300, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Piplup - Yawn - Egg
  (393, 39300, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Prinplup - Metal Claw - Starting Move
  (394, 39400, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Prinplup - Pound - Starting Move
  (394, 39400, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Prinplup - Tackle - Starting Move
  (394, 39400, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Prinplup - Growl - Starting Move
  (394, 39400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Prinplup - Metal Claw - Evolution
  (394, 39400, 232, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Prinplup - Growl - Level 4
  (394, 39400, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Prinplup - Water Gun - Level 8
  (394, 39400, 55, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Prinplup - Charm - Level 11
  (394, 39400, 204, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Prinplup - Peck - Level 15
  (394, 39400, 64, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Prinplup - Bubble Beam - Level 19
  (394, 39400, 61, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Prinplup - Swagger - Level 24
  (394, 39400, 207, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Prinplup - Fury Attack - Level 28
  (394, 39400, 31, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Prinplup - Brine - Level 33
  (394, 39400, 362, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Prinplup - Whirlpool - Level 37
  (394, 39400, 250, 21, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Prinplup - Mist - Level 42
  (394, 39400, 54, 21, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Prinplup - Drill Peck - Level 46
  (394, 39400, 65, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Prinplup - Hydro Pump - Level 50
  (394, 39400, 56, 21, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Prinplup - Water Pulse - TM03
  (394, 39400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Prinplup - Hail - TM07
  (394, 39400, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 19),
  -- Prinplup - Work Up - TM10
  (394, 39400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Prinplup - Ice Beam - TM13
  (394, 39400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 21),
  -- Prinplup - Blizzard - TM14
  (394, 39400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 22),
  -- Prinplup - Protect - TM17
  (394, 39400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Prinplup - Rain Dance - TM18
  (394, 39400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Prinplup - Dig - TM28
  (394, 39400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Prinplup - Brick Break - TM31
  (394, 39400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Prinplup - Double Team - TM32
  (394, 39400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Prinplup - Rock Tomb - TM39
  (394, 39400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 28),
  -- Prinplup - Aerial Ace - TM40
  (394, 39400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 29),
  -- Prinplup - Facade - TM42
  (394, 39400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 30),
  -- Prinplup - Rest - TM44
  (394, 39400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 31),
  -- Prinplup - Attract - TM45
  (394, 39400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 32),
  -- Prinplup - Scald - TM49
  (394, 39400, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 33),
  -- Prinplup - Brine - TM55
  (394, 39400, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 34),
  -- Prinplup - Fling - TM56
  (394, 39400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Prinplup - Endure - TM58
  (394, 39400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Prinplup - Shadow Claw - TM65
  (394, 39400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 37),
  -- Prinplup - Stealth Rock - TM76
  (394, 39400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 38),
  -- Prinplup - Sleep Talk - TM82
  (394, 39400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Prinplup - Grass Knot - TM86
  (394, 39400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 40),
  -- Prinplup - Swagger - TM87
  (394, 39400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Prinplup - Pluck - TM88
  (394, 39400, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 42),
  -- Prinplup - Substitute - TM90
  (394, 39400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Prinplup - Cut - TM93
  (394, 39400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Prinplup - Surf - TM95
  (394, 39400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 45),
  -- Prinplup - Strength - TM96
  (394, 39400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 46),
  -- Prinplup - Defog - TM97
  (394, 39400, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 47),
  -- Prinplup - Rock Smash - TM98
  (394, 39400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 48),
  -- Prinplup - Waterfall - TM99
  (394, 39400, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 49),
  -- Prinplup - Agility - Egg
  (394, 39400, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Prinplup - Aqua Ring - Egg
  (394, 39400, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Prinplup - Double Hit - Egg
  (394, 39400, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Prinplup - Feather Dance - Egg
  (394, 39400, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Prinplup - Flail - Egg
  (394, 39400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Prinplup - Hydro Pump - Egg
  (394, 39400, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Prinplup - Icy Wind - Egg
  (394, 39400, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Prinplup - Mud-Slap - Egg
  (394, 39400, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Prinplup - Snore - Egg
  (394, 39400, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Prinplup - Supersonic - Egg
  (394, 39400, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Prinplup - Yawn - Egg
  (394, 39400, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Empoleon - Aqua Jet - Starting Move
  (395, 39500, 453, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Empoleon - Metal Claw - Starting Move
  (395, 39500, 232, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Empoleon - Pound - Starting Move
  (395, 39500, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Empoleon - Charm - Starting Move
  (395, 39500, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Empoleon - Tackle - Starting Move
  (395, 39500, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Empoleon - Growl - Starting Move
  (395, 39500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Empoleon - Aqua Jet - Evolution
  (395, 39500, 453, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Empoleon - Growl - Level 4
  (395, 39500, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Empoleon - Water Gun - Level 8
  (395, 39500, 55, 21, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Empoleon - Swords Dance - Level 11
  (395, 39500, 14, 21, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Empoleon - Peck - Level 15
  (395, 39500, 64, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Empoleon - Bubble Beam - Level 19
  (395, 39500, 61, 21, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Empoleon - Swagger - Level 24
  (395, 39500, 207, 21, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Empoleon - Fury Attack - Level 28
  (395, 39500, 31, 21, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Empoleon - Brine - Level 33
  (395, 39500, 362, 21, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Empoleon - Whirlpool - Level 39
  (395, 39500, 250, 21, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Empoleon - Mist - Level 46
  (395, 39500, 54, 21, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Empoleon - Drill Peck - Level 52
  (395, 39500, 65, 21, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Empoleon - Hydro Pump - Level 59
  (395, 39500, 56, 21, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Empoleon - Water Pulse - TM03
  (395, 39500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 20),
  -- Empoleon - Roar - TM05
  (395, 39500, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 21),
  -- Empoleon - Hail - TM07
  (395, 39500, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 22),
  -- Empoleon - Work Up - TM10
  (395, 39500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 23),
  -- Empoleon - Ice Beam - TM13
  (395, 39500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 24),
  -- Empoleon - Blizzard - TM14
  (395, 39500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 25),
  -- Empoleon - Hyper Beam - TM15
  (395, 39500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Empoleon - Protect - TM17
  (395, 39500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Empoleon - Rain Dance - TM18
  (395, 39500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Empoleon - Earthquake - TM26
  (395, 39500, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 29),
  -- Empoleon - Dig - TM28
  (395, 39500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 30),
  -- Empoleon - Brick Break - TM31
  (395, 39500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 31),
  -- Empoleon - Double Team - TM32
  (395, 39500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 32),
  -- Empoleon - Rock Tomb - TM39
  (395, 39500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 33),
  -- Empoleon - Aerial Ace - TM40
  (395, 39500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 34),
  -- Empoleon - Facade - TM42
  (395, 39500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Empoleon - Rest - TM44
  (395, 39500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Empoleon - Attract - TM45
  (395, 39500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Empoleon - Steel Wing - TM47
  (395, 39500, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 38),
  -- Empoleon - Scald - TM49
  (395, 39500, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 39),
  -- Empoleon - Brine - TM55
  (395, 39500, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 40),
  -- Empoleon - Fling - TM56
  (395, 39500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 41),
  -- Empoleon - Endure - TM58
  (395, 39500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Empoleon - Shadow Claw - TM65
  (395, 39500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 43),
  -- Empoleon - Giga Impact - TM68
  (395, 39500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 44),
  -- Empoleon - Avalanche - TM72
  (395, 39500, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 45),
  -- Empoleon - Swords Dance - TM75
  (395, 39500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 46),
  -- Empoleon - Stealth Rock - TM76
  (395, 39500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 47),
  -- Empoleon - Rock Slide - TM80
  (395, 39500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 48),
  -- Empoleon - Sleep Talk - TM82
  (395, 39500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Empoleon - Bulldoze - TM83
  (395, 39500, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Empoleon - Grass Knot - TM86
  (395, 39500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Empoleon - Swagger - TM87
  (395, 39500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Empoleon - Pluck - TM88
  (395, 39500, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 53),
  -- Empoleon - Substitute - TM90
  (395, 39500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 54),
  -- Empoleon - Flash Cannon - TM91
  (395, 39500, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 55),
  -- Empoleon - Cut - TM93
  (395, 39500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 56),
  -- Empoleon - Surf - TM95
  (395, 39500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 57),
  -- Empoleon - Strength - TM96
  (395, 39500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 58),
  -- Empoleon - Defog - TM97
  (395, 39500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 59),
  -- Empoleon - Rock Smash - TM98
  (395, 39500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 60),
  -- Empoleon - Waterfall - TM99
  (395, 39500, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 61),
  -- Empoleon - Rock Climb - TM100
  (395, 39500, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 62),
  -- Empoleon - Agility - Egg
  (395, 39500, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Empoleon - Aqua Ring - Egg
  (395, 39500, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Empoleon - Double Hit - Egg
  (395, 39500, 458, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Empoleon - Feather Dance - Egg
  (395, 39500, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Empoleon - Flail - Egg
  (395, 39500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Empoleon - Hydro Pump - Egg
  (395, 39500, 56, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Empoleon - Icy Wind - Egg
  (395, 39500, 196, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Empoleon - Mud-Slap - Egg
  (395, 39500, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Empoleon - Snore - Egg
  (395, 39500, 173, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Empoleon - Supersonic - Egg
  (395, 39500, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Empoleon - Yawn - Egg
  (395, 39500, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Starly - Tackle - Starting Move
  (396, 39600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Starly - Growl - Starting Move
  (396, 39600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Starly - Quick Attack - Level 5
  (396, 39600, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Starly - Wing Attack - Level 9
  (396, 39600, 17, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Starly - Double Team - Level 13
  (396, 39600, 104, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Starly - Endeavor - Level 17
  (396, 39600, 283, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Starly - Whirlwind - Level 21
  (396, 39600, 18, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Starly - Aerial Ace - Level 25
  (396, 39600, 332, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Starly - Take Down - Level 29
  (396, 39600, 36, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Starly - Agility - Level 33
  (396, 39600, 97, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Starly - Brave Bird - Level 37
  (396, 39600, 413, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Starly - Final Gambit - Level 41
  (396, 39600, 515, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Starly - Work Up - TM10
  (396, 39600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 13),
  -- Starly - Sunny Day - TM11
  (396, 39600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Starly - Protect - TM17
  (396, 39600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 15),
  -- Starly - Rain Dance - TM18
  (396, 39600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 16),
  -- Starly - Double Team - TM32
  (396, 39600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 17),
  -- Starly - Aerial Ace - TM40
  (396, 39600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 18),
  -- Starly - Facade - TM42
  (396, 39600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 19),
  -- Starly - Rest - TM44
  (396, 39600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 20),
  -- Starly - Attract - TM45
  (396, 39600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 21),
  -- Starly - Thief - TM46
  (396, 39600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 22),
  -- Starly - Steel Wing - TM47
  (396, 39600, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 23),
  -- Starly - Roost - TM51
  (396, 39600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 24),
  -- Starly - Endure - TM58
  (396, 39600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 25),
  -- Starly - Sleep Talk - TM82
  (396, 39600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 26),
  -- Starly - Swagger - TM87
  (396, 39600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 27),
  -- Starly - Pluck - TM88
  (396, 39600, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 28),
  -- Starly - U-turn - TM89
  (396, 39600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 29),
  -- Starly - Substitute - TM90
  (396, 39600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 30),
  -- Starly - Fly - TM94
  (396, 39600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 31),
  -- Starly - Defog - TM97
  (396, 39600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 32),
  -- Starly - Astonish - Egg
  (396, 39600, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Starly - Detect - Egg
  (396, 39600, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Starly - Double-Edge - Egg
  (396, 39600, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Starly - Feather Dance - Egg
  (396, 39600, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Starly - Fury Attack - Egg
  (396, 39600, 31, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Starly - Revenge - Egg
  (396, 39600, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Starly - Sand Attack - Egg
  (396, 39600, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Starly - Uproar - Egg
  (396, 39600, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Staravia - Tackle - Starting Move
  (397, 39700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Staravia - Growl - Starting Move
  (397, 39700, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Staravia - Quick Attack - Starting Move
  (397, 39700, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Staravia - Quick Attack - Level 5
  (397, 39700, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Staravia - Wing Attack - Level 9
  (397, 39700, 17, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Staravia - Double Team - Level 13
  (397, 39700, 104, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Staravia - Endeavor - Level 18
  (397, 39700, 283, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Staravia - Whirlwind - Level 23
  (397, 39700, 18, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Staravia - Aerial Ace - Level 28
  (397, 39700, 332, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Staravia - Take Down - Level 33
  (397, 39700, 36, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Staravia - Agility - Level 38
  (397, 39700, 97, 21, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Staravia - Brave Bird - Level 43
  (397, 39700, 413, 21, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Staravia - Final Gambit - Level 48
  (397, 39700, 515, 21, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Staravia - Work Up - TM10
  (397, 39700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 14),
  -- Staravia - Sunny Day - TM11
  (397, 39700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Staravia - Protect - TM17
  (397, 39700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Staravia - Rain Dance - TM18
  (397, 39700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Staravia - Double Team - TM32
  (397, 39700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 18),
  -- Staravia - Aerial Ace - TM40
  (397, 39700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 19),
  -- Staravia - Facade - TM42
  (397, 39700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 20),
  -- Staravia - Rest - TM44
  (397, 39700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 21),
  -- Staravia - Attract - TM45
  (397, 39700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 22),
  -- Staravia - Thief - TM46
  (397, 39700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 23),
  -- Staravia - Steel Wing - TM47
  (397, 39700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 24),
  -- Staravia - Roost - TM51
  (397, 39700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 25),
  -- Staravia - Endure - TM58
  (397, 39700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Staravia - Sleep Talk - TM82
  (397, 39700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Staravia - Swagger - TM87
  (397, 39700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 28),
  -- Staravia - Pluck - TM88
  (397, 39700, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 29),
  -- Staravia - U-turn - TM89
  (397, 39700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 30),
  -- Staravia - Substitute - TM90
  (397, 39700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Staravia - Fly - TM94
  (397, 39700, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 32),
  -- Staravia - Defog - TM97
  (397, 39700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 33),
  -- Staravia - Astonish - Egg
  (397, 39700, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Staravia - Detect - Egg
  (397, 39700, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Staravia - Double-Edge - Egg
  (397, 39700, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Staravia - Feather Dance - Egg
  (397, 39700, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Staravia - Fury Attack - Egg
  (397, 39700, 31, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Staravia - Revenge - Egg
  (397, 39700, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Staravia - Sand Attack - Egg
  (397, 39700, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Staravia - Uproar - Egg
  (397, 39700, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Staraptor - Close Combat - Starting Move
  (398, 39800, 370, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Staraptor - Tackle - Starting Move
  (398, 39800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Staraptor - Growl - Starting Move
  (398, 39800, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Staraptor - Quick Attack - Starting Move
  (398, 39800, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Staraptor - Wing Attack - Starting Move
  (398, 39800, 17, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Staraptor - Close Combat - Evolution
  (398, 39800, 370, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Staraptor - Quick Attack - Level 5
  (398, 39800, 98, 21, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Staraptor - Wing Attack - Level 9
  (398, 39800, 17, 21, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Staraptor - Double Team - Level 13
  (398, 39800, 104, 21, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Staraptor - Endeavor - Level 18
  (398, 39800, 283, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Staraptor - Whirlwind - Level 23
  (398, 39800, 18, 21, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Staraptor - Aerial Ace - Level 28
  (398, 39800, 332, 21, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Staraptor - Take Down - Level 33
  (398, 39800, 36, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Staraptor - Agility - Level 41
  (398, 39800, 97, 21, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Staraptor - Brave Bird - Level 49
  (398, 39800, 413, 21, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Staraptor - Final Gambit - Level 57
  (398, 39800, 515, 21, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Staraptor - Work Up - TM10
  (398, 39800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Staraptor - Sunny Day - TM11
  (398, 39800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Staraptor - Hyper Beam - TM15
  (398, 39800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Staraptor - Protect - TM17
  (398, 39800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Staraptor - Rain Dance - TM18
  (398, 39800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Staraptor - Double Team - TM32
  (398, 39800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Staraptor - Aerial Ace - TM40
  (398, 39800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Staraptor - Facade - TM42
  (398, 39800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Staraptor - Rest - TM44
  (398, 39800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Staraptor - Attract - TM45
  (398, 39800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Staraptor - Thief - TM46
  (398, 39800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Staraptor - Steel Wing - TM47
  (398, 39800, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 28),
  -- Staraptor - Roost - TM51
  (398, 39800, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 29),
  -- Staraptor - Endure - TM58
  (398, 39800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Staraptor - Giga Impact - TM68
  (398, 39800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 31),
  -- Staraptor - Sleep Talk - TM82
  (398, 39800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Staraptor - Swagger - TM87
  (398, 39800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Staraptor - Pluck - TM88
  (398, 39800, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 34),
  -- Staraptor - U-turn - TM89
  (398, 39800, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 35),
  -- Staraptor - Substitute - TM90
  (398, 39800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Staraptor - Fly - TM94
  (398, 39800, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 37),
  -- Staraptor - Defog - TM97
  (398, 39800, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 38),
  -- Staraptor - Astonish - Egg
  (398, 39800, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Staraptor - Detect - Egg
  (398, 39800, 197, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Staraptor - Double-Edge - Egg
  (398, 39800, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Staraptor - Feather Dance - Egg
  (398, 39800, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Staraptor - Fury Attack - Egg
  (398, 39800, 31, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Staraptor - Revenge - Egg
  (398, 39800, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Staraptor - Sand Attack - Egg
  (398, 39800, 28, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Staraptor - Uproar - Egg
  (398, 39800, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bidoof - Tackle - Starting Move
  (399, 39900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bidoof - Growl - Starting Move
  (399, 39900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bidoof - Defense Curl - Level 5
  (399, 39900, 111, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bidoof - Rollout - Level 9
  (399, 39900, 205, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Bidoof - Headbutt - Level 13
  (399, 39900, 29, 21, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Bidoof - Taunt - Level 17
  (399, 39900, 269, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bidoof - Yawn - Level 21
  (399, 39900, 281, 21, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Bidoof - Crunch - Level 25
  (399, 39900, 242, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bidoof - Take Down - Level 29
  (399, 39900, 36, 21, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bidoof - Super Fang - Level 33
  (399, 39900, 162, 21, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Bidoof - Swords Dance - Level 37
  (399, 39900, 14, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Bidoof - Amnesia - Level 41
  (399, 39900, 133, 21, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bidoof - Superpower - Level 45
  (399, 39900, 276, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Bidoof - Curse - Level 49
  (399, 39900, 174, 21, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Bidoof - Work Up - TM10
  (399, 39900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Bidoof - Sunny Day - TM11
  (399, 39900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Bidoof - Taunt - TM12
  (399, 39900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 17),
  -- Bidoof - Ice Beam - TM13
  (399, 39900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 18),
  -- Bidoof - Blizzard - TM14
  (399, 39900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 19),
  -- Bidoof - Protect - TM17
  (399, 39900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Bidoof - Rain Dance - TM18
  (399, 39900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Bidoof - Iron Tail - TM23
  (399, 39900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Bidoof - Thunderbolt - TM24
  (399, 39900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 23),
  -- Bidoof - Thunder - TM25
  (399, 39900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 24),
  -- Bidoof - Dig - TM28
  (399, 39900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Bidoof - Shadow Ball - TM30
  (399, 39900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 26),
  -- Bidoof - Double Team - TM32
  (399, 39900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Bidoof - Shock Wave - TM34
  (399, 39900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 28),
  -- Bidoof - Facade - TM42
  (399, 39900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Bidoof - Rest - TM44
  (399, 39900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Bidoof - Attract - TM45
  (399, 39900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Bidoof - Thief - TM46
  (399, 39900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Bidoof - Charge Beam - TM57
  (399, 39900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 33),
  -- Bidoof - Endure - TM58
  (399, 39900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Bidoof - Thunder Wave - TM73
  (399, 39900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 35),
  -- Bidoof - Swords Dance - TM75
  (399, 39900, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 36),
  -- Bidoof - Stealth Rock - TM76
  (399, 39900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 37),
  -- Bidoof - Sleep Talk - TM82
  (399, 39900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Bidoof - Grass Knot - TM86
  (399, 39900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 39),
  -- Bidoof - Swagger - TM87
  (399, 39900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Bidoof - Pluck - TM88
  (399, 39900, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 41),
  -- Bidoof - Substitute - TM90
  (399, 39900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Bidoof - Cut - TM93
  (399, 39900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Bidoof - Rock Smash - TM98
  (399, 39900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 44),
  -- Bidoof - Aqua Tail - Egg
  (399, 39900, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bidoof - Defense Curl - Egg
  (399, 39900, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bidoof - Double-Edge - Egg
  (399, 39900, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bidoof - Fury Swipes - Egg
  (399, 39900, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bidoof - Quick Attack - Egg
  (399, 39900, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bidoof - Rollout - Egg
  (399, 39900, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bidoof - Skull Bash - Egg
  (399, 39900, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bibarel - Water Gun - Starting Move
  (400, 40000, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bibarel - Aqua Jet - Starting Move
  (400, 40000, 453, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bibarel - Tackle - Starting Move
  (400, 40000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Bibarel - Growl - Starting Move
  (400, 40000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Bibarel - Water Gun - Evolution
  (400, 40000, 55, 21, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Bibarel - Defense Curl - Level 5
  (400, 40000, 111, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Bibarel - Rollout - Level 9
  (400, 40000, 205, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Bibarel - Headbutt - Level 13
  (400, 40000, 29, 21, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Bibarel - Taunt - Level 18
  (400, 40000, 269, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Bibarel - Yawn - Level 23
  (400, 40000, 281, 21, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Bibarel - Crunch - Level 28
  (400, 40000, 242, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Bibarel - Take Down - Level 33
  (400, 40000, 36, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Bibarel - Super Fang - Level 38
  (400, 40000, 162, 21, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Bibarel - Swords Dance - Level 43
  (400, 40000, 14, 21, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Bibarel - Amnesia - Level 48
  (400, 40000, 133, 21, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Bibarel - Superpower - Level 53
  (400, 40000, 276, 21, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Bibarel - Curse - Level 58
  (400, 40000, 174, 21, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Bibarel - Focus Punch - TM01
  (400, 40000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Bibarel - Water Pulse - TM03
  (400, 40000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 19),
  -- Bibarel - Work Up - TM10
  (400, 40000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Bibarel - Sunny Day - TM11
  (400, 40000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Bibarel - Taunt - TM12
  (400, 40000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Bibarel - Ice Beam - TM13
  (400, 40000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Bibarel - Blizzard - TM14
  (400, 40000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Bibarel - Hyper Beam - TM15
  (400, 40000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Bibarel - Protect - TM17
  (400, 40000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Bibarel - Rain Dance - TM18
  (400, 40000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Bibarel - Iron Tail - TM23
  (400, 40000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Bibarel - Thunderbolt - TM24
  (400, 40000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Bibarel - Thunder - TM25
  (400, 40000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Bibarel - Dig - TM28
  (400, 40000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Bibarel - Shadow Ball - TM30
  (400, 40000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Bibarel - Double Team - TM32
  (400, 40000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Bibarel - Shock Wave - TM34
  (400, 40000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Bibarel - Facade - TM42
  (400, 40000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 35),
  -- Bibarel - Rest - TM44
  (400, 40000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 36),
  -- Bibarel - Attract - TM45
  (400, 40000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 37),
  -- Bibarel - Thief - TM46
  (400, 40000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 38),
  -- Bibarel - Scald - TM49
  (400, 40000, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 39),
  -- Bibarel - Fling - TM56
  (400, 40000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Bibarel - Charge Beam - TM57
  (400, 40000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 41),
  -- Bibarel - Endure - TM58
  (400, 40000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 42),
  -- Bibarel - Giga Impact - TM68
  (400, 40000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Bibarel - Thunder Wave - TM73
  (400, 40000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 44),
  -- Bibarel - Swords Dance - TM75
  (400, 40000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Bibarel - Stealth Rock - TM76
  (400, 40000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Bibarel - Sleep Talk - TM82
  (400, 40000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 47),
  -- Bibarel - Bulldoze - TM83
  (400, 40000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 48),
  -- Bibarel - Grass Knot - TM86
  (400, 40000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 49),
  -- Bibarel - Swagger - TM87
  (400, 40000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Bibarel - Pluck - TM88
  (400, 40000, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 51),
  -- Bibarel - Substitute - TM90
  (400, 40000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 52),
  -- Bibarel - Cut - TM93
  (400, 40000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 53),
  -- Bibarel - Surf - TM95
  (400, 40000, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 54),
  -- Bibarel - Strength - TM96
  (400, 40000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Bibarel - Rock Smash - TM98
  (400, 40000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Bibarel - Waterfall - TM99
  (400, 40000, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 57),
  -- Bibarel - Rock Climb - TM100
  (400, 40000, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 58),
  -- Bibarel - Aqua Tail - Egg
  (400, 40000, 401, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bibarel - Defense Curl - Egg
  (400, 40000, 111, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bibarel - Double-Edge - Egg
  (400, 40000, 38, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Bibarel - Fury Swipes - Egg
  (400, 40000, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Bibarel - Quick Attack - Egg
  (400, 40000, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Bibarel - Rollout - Egg
  (400, 40000, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Bibarel - Skull Bash - Egg
  (400, 40000, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 65);
