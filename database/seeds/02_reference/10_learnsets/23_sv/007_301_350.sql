-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 301-350.
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
  (302, 30200, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Astonish - Level 3
  (302, 30200, 310, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sableye - Shadow Sneak - Level 9
  (302, 30200, 425, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sableye - Fake Out - Level 12
  (302, 30200, 252, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sableye - Disable - Level 15
  (302, 30200, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sableye - Detect - Level 18
  (302, 30200, 197, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sableye - Night Shade - Level 21
  (302, 30200, 101, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Sableye - Fury Swipes - Level 24
  (302, 30200, 154, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sableye - Knock Off - Level 27
  (302, 30200, 282, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Sableye - Quash - Level 30
  (302, 30200, 511, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Sableye - Shadow Claw - Level 33
  (302, 30200, 421, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Sableye - Mean Look - Level 36
  (302, 30200, 212, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Sableye - Power Gem - Level 39
  (302, 30200, 408, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Sableye - Zen Headbutt - Level 42
  (302, 30200, 428, 23, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Sableye - Shadow Ball - Level 45
  (302, 30200, 247, 23, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Sableye - Foul Play - Level 48
  (302, 30200, 492, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Sableye - Take Down - TM001
  (302, 30200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Sableye - Mud-Slap - TM005
  (302, 30200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Sableye - Protect - TM007
  (302, 30200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Sableye - Low Kick - TM012
  (302, 30200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Sableye - Psybeam - TM016
  (302, 30200, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Sableye - Confuse Ray - TM017
  (302, 30200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Sableye - Thief - TM018
  (302, 30200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Sableye - Facade - TM025
  (302, 30200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Sableye - Aerial Ace - TM027
  (302, 30200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Sableye - Hex - TM029
  (302, 30200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Sableye - Snarl - TM030
  (302, 30200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Sableye - Metal Claw - TM031
  (302, 30200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 29),
  -- Sableye - Icy Wind - TM034
  (302, 30200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Sableye - Mud Shot - TM035
  (302, 30200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Sableye - Rock Tomb - TM036
  (302, 30200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 32),
  -- Sableye - Low Sweep - TM039
  (302, 30200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 33),
  -- Sableye - Night Shade - TM042
  (302, 30200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 34),
  -- Sableye - Fling - TM043
  (302, 30200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Sableye - Endure - TM047
  (302, 30200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Sableye - Sunny Day - TM049
  (302, 30200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Sableye - Rain Dance - TM050
  (302, 30200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Sableye - Dig - TM055
  (302, 30200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 39),
  -- Sableye - Brick Break - TM058
  (302, 30200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Sableye - Zen Headbutt - TM059
  (302, 30200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 41),
  -- Sableye - Shadow Claw - TM061
  (302, 30200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 42),
  -- Sableye - Foul Play - TM062
  (302, 30200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 43),
  -- Sableye - Bulk Up - TM064
  (302, 30200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 44),
  -- Sableye - Body Slam - TM066
  (302, 30200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 45),
  -- Sableye - Fire Punch - TM067
  (302, 30200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 46),
  -- Sableye - Thunder Punch - TM068
  (302, 30200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 47),
  -- Sableye - Ice Punch - TM069
  (302, 30200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 48),
  -- Sableye - Sleep Talk - TM070
  (302, 30200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 49),
  -- Sableye - Drain Punch - TM073
  (302, 30200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 50),
  -- Sableye - Reflect - TM074
  (302, 30200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 51),
  -- Sableye - Light Screen - TM075
  (302, 30200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 52),
  -- Sableye - Dazzling Gleam - TM079
  (302, 30200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 53),
  -- Sableye - Metronome - TM080
  (302, 30200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 54),
  -- Sableye - Thunder Wave - TM082
  (302, 30200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 55),
  -- Sableye - Poison Jab - TM083
  (302, 30200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 56),
  -- Sableye - Rest - TM085
  (302, 30200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 57),
  -- Sableye - Taunt - TM087
  (302, 30200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 58),
  -- Sableye - Imprison - TM092
  (302, 30200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 59),
  -- Sableye - Dark Pulse - TM094
  (302, 30200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 60),
  -- Sableye - Skill Swap - TM098
  (302, 30200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 61),
  -- Sableye - Power Gem - TM101
  (302, 30200, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 62),
  -- Sableye - Substitute - TM103
  (302, 30200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 63),
  -- Sableye - X-Scissor - TM105
  (302, 30200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 64),
  -- Sableye - Will-O-Wisp - TM107
  (302, 30200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 65),
  -- Sableye - Trick - TM109
  (302, 30200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 66),
  -- Sableye - Giga Drain - TM111
  (302, 30200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 67),
  -- Sableye - Shadow Ball - TM114
  (302, 30200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 68),
  -- Sableye - Energy Ball - TM119
  (302, 30200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 69),
  -- Sableye - Psychic - TM120
  (302, 30200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 70),
  -- Sableye - Encore - TM122
  (302, 30200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 71),
  -- Sableye - Calm Mind - TM129
  (302, 30200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 72),
  -- Sableye - Helping Hand - TM130
  (302, 30200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 73),
  -- Sableye - Nasty Plot - TM140
  (302, 30200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 74),
  -- Sableye - Phantom Force - TM151
  (302, 30200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 75),
  -- Sableye - Giga Impact - TM152
  (302, 30200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 76),
  -- Sableye - Hyper Beam - TM163
  (302, 30200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 77),
  -- Sableye - Tera Blast - TM171
  (302, 30200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 78),
  -- Sableye - Recover - Egg
  (302, 30200, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Sableye - Torment - Egg
  (302, 30200, 259, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Sableye - Flatter - Egg
  (302, 30200, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Sableye - Feint - Egg
  (302, 30200, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Sableye - Metal Burst - Egg
  (302, 30200, 368, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Sableye - Sucker Punch - Egg
  (302, 30200, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Meditite - Confusion - Level 1
  (307, 30700, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Work Up - Level 1
  (307, 30700, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meditite - Detect - Level 9
  (307, 30700, 197, 23, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Meditite - Endure - Level 12
  (307, 30700, 203, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Meditite - Feint - Level 15
  (307, 30700, 364, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Meditite - Force Palm - Level 17
  (307, 30700, 395, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Meditite - Psybeam - Level 20
  (307, 30700, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meditite - Calm Mind - Level 23
  (307, 30700, 347, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Meditite - Zen Headbutt - Level 25
  (307, 30700, 428, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Meditite - High Jump Kick - Level 28
  (307, 30700, 136, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Meditite - Psych Up - Level 31
  (307, 30700, 244, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Meditite - Acupressure - Level 33
  (307, 30700, 367, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Meditite - Power Trick - Level 36
  (307, 30700, 379, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Meditite - Reversal - Level 39
  (307, 30700, 179, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Meditite - Recover - Level 41
  (307, 30700, 105, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Meditite - Counter - Level 44
  (307, 30700, 68, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Meditite - Take Down - TM001
  (307, 30700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Meditite - Protect - TM007
  (307, 30700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Meditite - Low Kick - TM012
  (307, 30700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Meditite - Psybeam - TM016
  (307, 30700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Meditite - Thief - TM018
  (307, 30700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Meditite - Trailblaze - TM020
  (307, 30700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Meditite - Facade - TM025
  (307, 30700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Meditite - Aerial Ace - TM027
  (307, 30700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Meditite - Swift - TM032
  (307, 30700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Meditite - Rock Tomb - TM036
  (307, 30700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Meditite - Low Sweep - TM039
  (307, 30700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Meditite - Stored Power - TM041
  (307, 30700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Meditite - Night Shade - TM042
  (307, 30700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 29),
  -- Meditite - Fling - TM043
  (307, 30700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Meditite - Endure - TM047
  (307, 30700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Meditite - Sunny Day - TM049
  (307, 30700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Meditite - Rain Dance - TM050
  (307, 30700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Meditite - Psyshock - TM054
  (307, 30700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Meditite - Brick Break - TM058
  (307, 30700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Meditite - Zen Headbutt - TM059
  (307, 30700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Meditite - Bulk Up - TM064
  (307, 30700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Meditite - Body Slam - TM066
  (307, 30700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Meditite - Fire Punch - TM067
  (307, 30700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Meditite - Thunder Punch - TM068
  (307, 30700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Meditite - Ice Punch - TM069
  (307, 30700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Meditite - Sleep Talk - TM070
  (307, 30700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Meditite - Drain Punch - TM073
  (307, 30700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Meditite - Reflect - TM074
  (307, 30700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 44),
  -- Meditite - Light Screen - TM075
  (307, 30700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Meditite - Metronome - TM080
  (307, 30700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 46),
  -- Meditite - Grass Knot - TM081
  (307, 30700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 47),
  -- Meditite - Poison Jab - TM083
  (307, 30700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 48),
  -- Meditite - Rest - TM085
  (307, 30700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Meditite - Rock Slide - TM086
  (307, 30700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Meditite - Taunt - TM087
  (307, 30700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Meditite - Imprison - TM092
  (307, 30700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 52),
  -- Meditite - Skill Swap - TM098
  (307, 30700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 53),
  -- Meditite - Substitute - TM103
  (307, 30700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Meditite - Trick - TM109
  (307, 30700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 55),
  -- Meditite - Shadow Ball - TM114
  (307, 30700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 56),
  -- Meditite - Psychic - TM120
  (307, 30700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 57),
  -- Meditite - Calm Mind - TM129
  (307, 30700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Meditite - Helping Hand - TM130
  (307, 30700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Meditite - Baton Pass - TM132
  (307, 30700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 60),
  -- Meditite - Reversal - TM134
  (307, 30700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 61),
  -- Meditite - Psychic Terrain - TM138
  (307, 30700, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 62),
  -- Meditite - Focus Blast - TM158
  (307, 30700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Meditite - Trick Room - TM161
  (307, 30700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 64),
  -- Meditite - Close Combat - TM167
  (307, 30700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 65),
  -- Meditite - Tera Blast - TM171
  (307, 30700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Meditite - Fire Punch - Egg
  (307, 30700, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Meditite - Ice Punch - Egg
  (307, 30700, 8, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Meditite - Thunder Punch - Egg
  (307, 30700, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Meditite - Dynamic Punch - Egg
  (307, 30700, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Meditite - Baton Pass - Egg
  (307, 30700, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Meditite - Fake Out - Egg
  (307, 30700, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Meditite - Power Swap - Egg
  (307, 30700, 384, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Meditite - Guard Swap - Egg
  (307, 30700, 385, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Meditite - Bullet Punch - Egg
  (307, 30700, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Meditite - Psycho Cut - Egg
  (307, 30700, 427, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Meditite - Quick Guard - Egg
  (307, 30700, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Medicham - Fire Punch - Level 1
  (308, 30800, 7, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Ice Punch - Level 1
  (308, 30800, 8, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Thunder Punch - Level 1
  (308, 30800, 9, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Medicham - Detect - Level 1
  (308, 30800, 197, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Medicham - Work Up - Level 1
  (308, 30800, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Medicham - Endure - Level 12
  (308, 30800, 203, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Medicham - Feint - Level 15
  (308, 30800, 364, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Medicham - Force Palm - Level 17
  (308, 30800, 395, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Medicham - Psybeam - Level 20
  (308, 30800, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Medicham - Calm Mind - Level 23
  (308, 30800, 347, 23, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Medicham - Zen Headbutt - Level 25
  (308, 30800, 428, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Medicham - High Jump Kick - Level 28
  (308, 30800, 136, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Medicham - Psych Up - Level 31
  (308, 30800, 244, 23, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Medicham - Acupressure - Level 33
  (308, 30800, 367, 23, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Medicham - Power Trick - Level 36
  (308, 30800, 379, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Medicham - Recover - Level 47
  (308, 30800, 105, 23, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Medicham - Counter - Level 53
  (308, 30800, 68, 23, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Medicham - Axe Kick - Level 53
  (308, 30800, 853, 23, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Medicham - Take Down - TM001
  (308, 30800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Medicham - Protect - TM007
  (308, 30800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Medicham - Low Kick - TM012
  (308, 30800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Medicham - Psybeam - TM016
  (308, 30800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 23),
  -- Medicham - Thief - TM018
  (308, 30800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Medicham - Trailblaze - TM020
  (308, 30800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Medicham - Facade - TM025
  (308, 30800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Medicham - Aerial Ace - TM027
  (308, 30800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Medicham - Swift - TM032
  (308, 30800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Medicham - Rock Tomb - TM036
  (308, 30800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Medicham - Low Sweep - TM039
  (308, 30800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Medicham - Stored Power - TM041
  (308, 30800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 31),
  -- Medicham - Night Shade - TM042
  (308, 30800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 32),
  -- Medicham - Fling - TM043
  (308, 30800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Medicham - Endure - TM047
  (308, 30800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Medicham - Sunny Day - TM049
  (308, 30800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Medicham - Rain Dance - TM050
  (308, 30800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Medicham - Psyshock - TM054
  (308, 30800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 37),
  -- Medicham - Brick Break - TM058
  (308, 30800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Medicham - Zen Headbutt - TM059
  (308, 30800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 39),
  -- Medicham - Bulk Up - TM064
  (308, 30800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Medicham - Body Slam - TM066
  (308, 30800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Medicham - Fire Punch - TM067
  (308, 30800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 42),
  -- Medicham - Thunder Punch - TM068
  (308, 30800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Medicham - Ice Punch - TM069
  (308, 30800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Medicham - Sleep Talk - TM070
  (308, 30800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Medicham - Drain Punch - TM073
  (308, 30800, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 46),
  -- Medicham - Reflect - TM074
  (308, 30800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 47),
  -- Medicham - Light Screen - TM075
  (308, 30800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 48),
  -- Medicham - Metronome - TM080
  (308, 30800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 49),
  -- Medicham - Grass Knot - TM081
  (308, 30800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 50),
  -- Medicham - Poison Jab - TM083
  (308, 30800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 51),
  -- Medicham - Rest - TM085
  (308, 30800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 52),
  -- Medicham - Rock Slide - TM086
  (308, 30800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 53),
  -- Medicham - Taunt - TM087
  (308, 30800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 54),
  -- Medicham - Imprison - TM092
  (308, 30800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 55),
  -- Medicham - Skill Swap - TM098
  (308, 30800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 56),
  -- Medicham - Substitute - TM103
  (308, 30800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 57),
  -- Medicham - Trick - TM109
  (308, 30800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 58),
  -- Medicham - Aura Sphere - TM112
  (308, 30800, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 59),
  -- Medicham - Shadow Ball - TM114
  (308, 30800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 60),
  -- Medicham - Energy Ball - TM119
  (308, 30800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 61),
  -- Medicham - Psychic - TM120
  (308, 30800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 62),
  -- Medicham - Calm Mind - TM129
  (308, 30800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 63),
  -- Medicham - Helping Hand - TM130
  (308, 30800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 64),
  -- Medicham - Baton Pass - TM132
  (308, 30800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 65),
  -- Medicham - Reversal - TM134
  (308, 30800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 66),
  -- Medicham - Psychic Terrain - TM138
  (308, 30800, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 67),
  -- Medicham - Giga Impact - TM152
  (308, 30800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Medicham - Focus Blast - TM158
  (308, 30800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 69),
  -- Medicham - Trick Room - TM161
  (308, 30800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 70),
  -- Medicham - Hyper Beam - TM163
  (308, 30800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 71),
  -- Medicham - Close Combat - TM167
  (308, 30800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 72),
  -- Medicham - Tera Blast - TM171
  (308, 30800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 73),
  -- Medicham - Fire Punch - Egg
  (308, 30800, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Medicham - Ice Punch - Egg
  (308, 30800, 8, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Medicham - Thunder Punch - Egg
  (308, 30800, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Medicham - Dynamic Punch - Egg
  (308, 30800, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Medicham - Baton Pass - Egg
  (308, 30800, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Medicham - Fake Out - Egg
  (308, 30800, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Medicham - Power Swap - Egg
  (308, 30800, 384, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Medicham - Guard Swap - Egg
  (308, 30800, 385, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Medicham - Bullet Punch - Egg
  (308, 30800, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Medicham - Psycho Cut - Egg
  (308, 30800, 427, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Medicham - Quick Guard - Egg
  (308, 30800, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Plusle - Growl - Level 1
  (311, 31100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Plusle - Thunder Wave - Level 1
  (311, 31100, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Plusle - Quick Attack - Level 1
  (311, 31100, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Plusle - Play Nice - Level 1
  (311, 31100, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Plusle - Helping Hand - Level 4
  (311, 31100, 270, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Plusle - Spark - Level 7
  (311, 31100, 209, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Plusle - Encore - Level 10
  (311, 31100, 227, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Plusle - Switcheroo - Level 13
  (311, 31100, 415, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Plusle - Swift - Level 16
  (311, 31100, 129, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Plusle - Electro Ball - Level 19
  (311, 31100, 486, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Plusle - Copycat - Level 22
  (311, 31100, 383, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Plusle - Charge - Level 26
  (311, 31100, 268, 23, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Plusle - Discharge - Level 31
  (311, 31100, 435, 23, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Plusle - Baton Pass - Level 34
  (311, 31100, 226, 23, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Plusle - Agility - Level 37
  (311, 31100, 97, 23, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Plusle - Last Resort - Level 40
  (311, 31100, 387, 23, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Plusle - Thunder - Level 43
  (311, 31100, 87, 23, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Plusle - Nasty Plot - Level 46
  (311, 31100, 417, 23, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Plusle - Entrainment - Level 49
  (311, 31100, 494, 23, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Plusle - Charm - TM002
  (311, 31100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Plusle - Fake Tears - TM003
  (311, 31100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 21),
  -- Plusle - Agility - TM004
  (311, 31100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 22),
  -- Plusle - Mud-Slap - TM005
  (311, 31100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 23),
  -- Plusle - Protect - TM007
  (311, 31100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Plusle - Trailblaze - TM020
  (311, 31100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Plusle - Charge Beam - TM023
  (311, 31100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Plusle - Facade - TM025
  (311, 31100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Plusle - Swift - TM032
  (311, 31100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Plusle - Fling - TM043
  (311, 31100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Plusle - Endure - TM047
  (311, 31100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Plusle - Volt Switch - TM048
  (311, 31100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 31),
  -- Plusle - Rain Dance - TM050
  (311, 31100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Plusle - Thunder Punch - TM068
  (311, 31100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Plusle - Sleep Talk - TM070
  (311, 31100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Plusle - Electro Ball - TM072
  (311, 31100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 35),
  -- Plusle - Light Screen - TM075
  (311, 31100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Plusle - Grass Knot - TM081
  (311, 31100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Plusle - Thunder Wave - TM082
  (311, 31100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 38),
  -- Plusle - Rest - TM085
  (311, 31100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Plusle - Eerie Impulse - TM096
  (311, 31100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 40),
  -- Plusle - Skill Swap - TM098
  (311, 31100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 41),
  -- Plusle - Substitute - TM103
  (311, 31100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Plusle - Encore - TM122
  (311, 31100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Plusle - Thunderbolt - TM126
  (311, 31100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Plusle - Play Rough - TM127
  (311, 31100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 45),
  -- Plusle - Helping Hand - TM130
  (311, 31100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Plusle - Baton Pass - TM132
  (311, 31100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Plusle - Electric Terrain - TM136
  (311, 31100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 48),
  -- Plusle - Nasty Plot - TM140
  (311, 31100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Plusle - Wild Charge - TM147
  (311, 31100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 50),
  -- Plusle - Thunder - TM166
  (311, 31100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 51),
  -- Plusle - Tera Blast - TM171
  (311, 31100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Plusle - Sing - Egg
  (311, 31100, 47, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Plusle - Sweet Kiss - Egg
  (311, 31100, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Plusle - Charm - Egg
  (311, 31100, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Plusle - Wish - Egg
  (311, 31100, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Plusle - Nuzzle - Reminder
  (311, 31100, 609, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Minun - Growl - Level 1
  (312, 31200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minun - Thunder Wave - Level 1
  (312, 31200, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Minun - Quick Attack - Level 1
  (312, 31200, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Minun - Play Nice - Level 1
  (312, 31200, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Minun - Helping Hand - Level 4
  (312, 31200, 270, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Minun - Spark - Level 7
  (312, 31200, 209, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Minun - Encore - Level 10
  (312, 31200, 227, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Minun - Switcheroo - Level 13
  (312, 31200, 415, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Minun - Swift - Level 16
  (312, 31200, 129, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Minun - Electro Ball - Level 19
  (312, 31200, 486, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Minun - Copycat - Level 22
  (312, 31200, 383, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Minun - Charge - Level 26
  (312, 31200, 268, 23, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Minun - Discharge - Level 31
  (312, 31200, 435, 23, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Minun - Baton Pass - Level 34
  (312, 31200, 226, 23, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Minun - Agility - Level 37
  (312, 31200, 97, 23, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Minun - Last Resort - Level 40
  (312, 31200, 387, 23, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Minun - Thunder - Level 43
  (312, 31200, 87, 23, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Minun - Nasty Plot - Level 46
  (312, 31200, 417, 23, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Minun - Entrainment - Level 49
  (312, 31200, 494, 23, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Minun - Charm - TM002
  (312, 31200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Minun - Fake Tears - TM003
  (312, 31200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 21),
  -- Minun - Agility - TM004
  (312, 31200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 22),
  -- Minun - Mud-Slap - TM005
  (312, 31200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 23),
  -- Minun - Protect - TM007
  (312, 31200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Minun - Trailblaze - TM020
  (312, 31200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Minun - Charge Beam - TM023
  (312, 31200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Minun - Facade - TM025
  (312, 31200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Minun - Swift - TM032
  (312, 31200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Minun - Fling - TM043
  (312, 31200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Minun - Endure - TM047
  (312, 31200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Minun - Volt Switch - TM048
  (312, 31200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 31),
  -- Minun - Rain Dance - TM050
  (312, 31200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Minun - Thunder Punch - TM068
  (312, 31200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Minun - Sleep Talk - TM070
  (312, 31200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Minun - Electro Ball - TM072
  (312, 31200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 35),
  -- Minun - Light Screen - TM075
  (312, 31200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Minun - Grass Knot - TM081
  (312, 31200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Minun - Thunder Wave - TM082
  (312, 31200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 38),
  -- Minun - Rest - TM085
  (312, 31200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Minun - Substitute - TM103
  (312, 31200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Minun - Encore - TM122
  (312, 31200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 41),
  -- Minun - Thunderbolt - TM126
  (312, 31200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Minun - Play Rough - TM127
  (312, 31200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Minun - Helping Hand - TM130
  (312, 31200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Minun - Baton Pass - TM132
  (312, 31200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 45),
  -- Minun - Electric Terrain - TM136
  (312, 31200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 46),
  -- Minun - Nasty Plot - TM140
  (312, 31200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 47),
  -- Minun - Wild Charge - TM147
  (312, 31200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 48),
  -- Minun - Thunder - TM166
  (312, 31200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 49),
  -- Minun - Tera Blast - TM171
  (312, 31200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Minun - Sing - Egg
  (312, 31200, 47, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minun - Sweet Kiss - Egg
  (312, 31200, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Minun - Charm - Egg
  (312, 31200, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Minun - Wish - Egg
  (312, 31200, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Minun - Fake Tears - Egg
  (312, 31200, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Minun - Nuzzle - Reminder
  (312, 31200, 609, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Volbeat - Tackle - Level 1
  (313, 31300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volbeat - Double Team - Level 5
  (313, 31300, 104, 23, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Volbeat - Confuse Ray - Level 8
  (313, 31300, 109, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Volbeat - Quick Attack - Level 12
  (313, 31300, 98, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Volbeat - Struggle Bug - Level 15
  (313, 31300, 522, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Volbeat - Moonlight - Level 19
  (313, 31300, 236, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Volbeat - Tail Glow - Level 22
  (313, 31300, 294, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Volbeat - Protect - Level 26
  (313, 31300, 182, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Volbeat - Zen Headbutt - Level 29
  (313, 31300, 428, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Volbeat - Helping Hand - Level 33
  (313, 31300, 270, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Volbeat - Bug Buzz - Level 36
  (313, 31300, 405, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Volbeat - Play Rough - Level 40
  (313, 31300, 583, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Volbeat - Double-Edge - Level 43
  (313, 31300, 38, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Volbeat - Infestation - Level 47
  (313, 31300, 611, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Volbeat - Take Down - TM001
  (313, 31300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Volbeat - Mud-Slap - TM005
  (313, 31300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Volbeat - Protect - TM007
  (313, 31300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Volbeat - Water Pulse - TM011
  (313, 31300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Volbeat - Acrobatics - TM014
  (313, 31300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Volbeat - Struggle Bug - TM015
  (313, 31300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 20),
  -- Volbeat - Confuse Ray - TM017
  (313, 31300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Volbeat - Thief - TM018
  (313, 31300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Volbeat - Trailblaze - TM020
  (313, 31300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Volbeat - Pounce - TM021
  (313, 31300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Volbeat - Chilling Water - TM022
  (313, 31300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Volbeat - Charge Beam - TM023
  (313, 31300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Volbeat - Facade - TM025
  (313, 31300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Volbeat - Aerial Ace - TM027
  (313, 31300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Volbeat - Swift - TM032
  (313, 31300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Volbeat - Air Cutter - TM040
  (313, 31300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 30),
  -- Volbeat - Fling - TM043
  (313, 31300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Volbeat - Endure - TM047
  (313, 31300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Volbeat - Sunny Day - TM049
  (313, 31300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Volbeat - Rain Dance - TM050
  (313, 31300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Volbeat - Brick Break - TM058
  (313, 31300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Volbeat - Zen Headbutt - TM059
  (313, 31300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Volbeat - U-turn - TM060
  (313, 31300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Volbeat - Air Slash - TM065
  (313, 31300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Volbeat - Body Slam - TM066
  (313, 31300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Volbeat - Thunder Punch - TM068
  (313, 31300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Volbeat - Ice Punch - TM069
  (313, 31300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Volbeat - Sleep Talk - TM070
  (313, 31300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Volbeat - Light Screen - TM075
  (313, 31300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 43),
  -- Volbeat - Dazzling Gleam - TM079
  (313, 31300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 44),
  -- Volbeat - Metronome - TM080
  (313, 31300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 45),
  -- Volbeat - Thunder Wave - TM082
  (313, 31300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Volbeat - Rest - TM085
  (313, 31300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Volbeat - Taunt - TM087
  (313, 31300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Volbeat - Substitute - TM103
  (313, 31300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Volbeat - Trick - TM109
  (313, 31300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 50),
  -- Volbeat - Giga Drain - TM111
  (313, 31300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 51),
  -- Volbeat - Tailwind - TM113
  (313, 31300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 52),
  -- Volbeat - Shadow Ball - TM114
  (313, 31300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Volbeat - Encore - TM122
  (313, 31300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Volbeat - Play Rough - TM127
  (313, 31300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 55),
  -- Volbeat - Helping Hand - TM130
  (313, 31300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Volbeat - Baton Pass - TM132
  (313, 31300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 57),
  -- Volbeat - Bug Buzz - TM162
  (313, 31300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 58),
  -- Volbeat - Thunder - TM166
  (313, 31300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 59),
  -- Volbeat - Solar Beam - TM168
  (313, 31300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 60),
  -- Volbeat - Tera Blast - TM171
  (313, 31300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Volbeat - Counter - Egg
  (313, 31300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Volbeat - Seismic Toss - Egg
  (313, 31300, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Volbeat - Swagger - Egg
  (313, 31300, 207, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Volbeat - Roost - Egg
  (313, 31300, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Illumise - Tackle - Level 1
  (314, 31400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Illumise - Play Nice - Level 1
  (314, 31400, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 12
  (314, 31400, 98, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Illumise - Struggle Bug - Level 15
  (314, 31400, 522, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Illumise - Moonlight - Level 19
  (314, 31400, 236, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Illumise - Wish - Level 22
  (314, 31400, 273, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Illumise - Encore - Level 26
  (314, 31400, 227, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Illumise - Zen Headbutt - Level 33
  (314, 31400, 428, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Illumise - Helping Hand - Level 36
  (314, 31400, 270, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Illumise - Bug Buzz - Level 40
  (314, 31400, 405, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Illumise - Play Rough - Level 43
  (314, 31400, 583, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Illumise - Infestation - Level 47
  (314, 31400, 611, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Illumise - Take Down - TM001
  (314, 31400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Illumise - Charm - TM002
  (314, 31400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Illumise - Fake Tears - TM003
  (314, 31400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Illumise - Mud-Slap - TM005
  (314, 31400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Illumise - Protect - TM007
  (314, 31400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Illumise - Water Pulse - TM011
  (314, 31400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Illumise - Acrobatics - TM014
  (314, 31400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Illumise - Struggle Bug - TM015
  (314, 31400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 23),
  -- Illumise - Confuse Ray - TM017
  (314, 31400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Illumise - Thief - TM018
  (314, 31400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Illumise - Disarming Voice - TM019
  (314, 31400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 26),
  -- Illumise - Trailblaze - TM020
  (314, 31400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 27),
  -- Illumise - Pounce - TM021
  (314, 31400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 28),
  -- Illumise - Charge Beam - TM023
  (314, 31400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 29),
  -- Illumise - Facade - TM025
  (314, 31400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Illumise - Aerial Ace - TM027
  (314, 31400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 31),
  -- Illumise - Swift - TM032
  (314, 31400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Illumise - Draining Kiss - TM037
  (314, 31400, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 33),
  -- Illumise - Air Cutter - TM040
  (314, 31400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 34),
  -- Illumise - Fling - TM043
  (314, 31400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Illumise - Endure - TM047
  (314, 31400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Illumise - Sunny Day - TM049
  (314, 31400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Illumise - Rain Dance - TM050
  (314, 31400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Illumise - Brick Break - TM058
  (314, 31400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 39),
  -- Illumise - Zen Headbutt - TM059
  (314, 31400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 40),
  -- Illumise - U-turn - TM060
  (314, 31400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 41),
  -- Illumise - Air Slash - TM065
  (314, 31400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 42),
  -- Illumise - Thunder Punch - TM068
  (314, 31400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Illumise - Ice Punch - TM069
  (314, 31400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Illumise - Sleep Talk - TM070
  (314, 31400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Illumise - Light Screen - TM075
  (314, 31400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 46),
  -- Illumise - Dazzling Gleam - TM079
  (314, 31400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 47),
  -- Illumise - Metronome - TM080
  (314, 31400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 48),
  -- Illumise - Thunder Wave - TM082
  (314, 31400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 49),
  -- Illumise - Rest - TM085
  (314, 31400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Illumise - Substitute - TM103
  (314, 31400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Illumise - Trick - TM109
  (314, 31400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Illumise - Giga Drain - TM111
  (314, 31400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 53),
  -- Illumise - Tailwind - TM113
  (314, 31400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 54),
  -- Illumise - Shadow Ball - TM114
  (314, 31400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Illumise - Encore - TM122
  (314, 31400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 56),
  -- Illumise - Thunderbolt - TM126
  (314, 31400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Illumise - Play Rough - TM127
  (314, 31400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 58),
  -- Illumise - Helping Hand - TM130
  (314, 31400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Illumise - Baton Pass - TM132
  (314, 31400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 60),
  -- Illumise - Bug Buzz - TM162
  (314, 31400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 61),
  -- Illumise - Thunder - TM166
  (314, 31400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Illumise - Solar Beam - TM168
  (314, 31400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 63),
  -- Illumise - Tera Blast - TM171
  (314, 31400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Illumise - Growth - Egg
  (314, 31400, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Illumise - Attract - Egg
  (314, 31400, 213, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Illumise - Roost - Egg
  (314, 31400, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gulpin - Pound - Level 1
  (316, 31600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 5
  (316, 31600, 281, 23, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 8
  (316, 31600, 139, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 10
  (316, 31600, 124, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 12
  (316, 31600, 133, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gulpin - Acid Spray - Level 17
  (316, 31600, 491, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Gulpin - Encore - Level 20
  (316, 31600, 227, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gulpin - Toxic - Level 25
  (316, 31600, 92, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Gulpin - Stockpile - Level 28
  (316, 31600, 254, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gulpin - Spit Up - Level 28
  (316, 31600, 255, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Gulpin - Swallow - Level 28
  (316, 31600, 256, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gulpin - Sludge Bomb - Level 33
  (316, 31600, 188, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gulpin - Gastro Acid - Level 36
  (316, 31600, 380, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gulpin - Belch - Level 41
  (316, 31600, 562, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Gulpin - Pain Split - Level 44
  (316, 31600, 220, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Gulpin - Gunk Shot - Level 49
  (316, 31600, 441, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gulpin - Take Down - TM001
  (316, 31600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Gulpin - Mud-Slap - TM005
  (316, 31600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Gulpin - Protect - TM007
  (316, 31600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Gulpin - Water Pulse - TM011
  (316, 31600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Gulpin - Acid Spray - TM013
  (316, 31600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Gulpin - Thief - TM018
  (316, 31600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Gulpin - Facade - TM025
  (316, 31600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Gulpin - Mud Shot - TM035
  (316, 31600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Gulpin - Fling - TM043
  (316, 31600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Gulpin - Venoshock - TM045
  (316, 31600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Gulpin - Endure - TM047
  (316, 31600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Gulpin - Sunny Day - TM049
  (316, 31600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Gulpin - Rain Dance - TM050
  (316, 31600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Gulpin - Bullet Seed - TM056
  (316, 31600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Gulpin - Body Slam - TM066
  (316, 31600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Gulpin - Fire Punch - TM067
  (316, 31600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Gulpin - Thunder Punch - TM068
  (316, 31600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Gulpin - Ice Punch - TM069
  (316, 31600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 34),
  -- Gulpin - Sleep Talk - TM070
  (316, 31600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Gulpin - Seed Bomb - TM071
  (316, 31600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 36),
  -- Gulpin - Thunder Wave - TM082
  (316, 31600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Gulpin - Poison Jab - TM083
  (316, 31600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Gulpin - Rest - TM085
  (316, 31600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Gulpin - Swords Dance - TM088
  (316, 31600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Gulpin - Toxic Spikes - TM091
  (316, 31600, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 41),
  -- Gulpin - Gunk Shot - TM102
  (316, 31600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 42),
  -- Gulpin - Substitute - TM103
  (316, 31600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Gulpin - Giga Drain - TM111
  (316, 31600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 44),
  -- Gulpin - Shadow Ball - TM114
  (316, 31600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Gulpin - Encore - TM122
  (316, 31600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Gulpin - Amnesia - TM128
  (316, 31600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 47),
  -- Gulpin - Helping Hand - TM130
  (316, 31600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Gulpin - Ice Beam - TM135
  (316, 31600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 49),
  -- Gulpin - Sludge Bomb - TM148
  (316, 31600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Gulpin - Solar Beam - TM168
  (316, 31600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Gulpin - Tera Blast - TM171
  (316, 31600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Gulpin - Smog - Egg
  (316, 31600, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gulpin - Acid Armor - Egg
  (316, 31600, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gulpin - Curse - Egg
  (316, 31600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gulpin - Mud-Slap - Egg
  (316, 31600, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gulpin - Destiny Bond - Egg
  (316, 31600, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gulpin - Clear Smog - Egg
  (316, 31600, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gulpin - Stuff Cheeks - Egg
  (316, 31600, 747, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Swalot - Pound - Level 1
  (317, 31700, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Sludge - Level 1
  (317, 31700, 124, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Poison Gas - Level 1
  (317, 31700, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swalot - Yawn - Level 1
  (317, 31700, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swalot - Gunk Shot - Level 1
  (317, 31700, 441, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swalot - Amnesia - Level 12
  (317, 31700, 133, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Swalot - Acid Spray - Level 17
  (317, 31700, 491, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Swalot - Encore - Level 20
  (317, 31700, 227, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Swalot - Toxic - Level 25
  (317, 31700, 92, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Swalot - Stockpile - Level 30
  (317, 31700, 254, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Swalot - Spit Up - Level 30
  (317, 31700, 255, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Swalot - Swallow - Level 30
  (317, 31700, 256, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Swalot - Sludge Bomb - Level 37
  (317, 31700, 188, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Swalot - Gastro Acid - Level 42
  (317, 31700, 380, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Swalot - Belch - Level 49
  (317, 31700, 562, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Swalot - Take Down - TM001
  (317, 31700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Swalot - Mud-Slap - TM005
  (317, 31700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Swalot - Protect - TM007
  (317, 31700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Swalot - Water Pulse - TM011
  (317, 31700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Swalot - Acid Spray - TM013
  (317, 31700, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Swalot - Thief - TM018
  (317, 31700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Swalot - Facade - TM025
  (317, 31700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Swalot - Bulldoze - TM028
  (317, 31700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Swalot - Mud Shot - TM035
  (317, 31700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Swalot - Fling - TM043
  (317, 31700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Swalot - Venoshock - TM045
  (317, 31700, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 26),
  -- Swalot - Endure - TM047
  (317, 31700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Swalot - Sunny Day - TM049
  (317, 31700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Swalot - Rain Dance - TM050
  (317, 31700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Swalot - Bullet Seed - TM056
  (317, 31700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Swalot - Brick Break - TM058
  (317, 31700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Swalot - Zen Headbutt - TM059
  (317, 31700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Swalot - Body Slam - TM066
  (317, 31700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Swalot - Fire Punch - TM067
  (317, 31700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Swalot - Thunder Punch - TM068
  (317, 31700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Swalot - Ice Punch - TM069
  (317, 31700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 36),
  -- Swalot - Sleep Talk - TM070
  (317, 31700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Swalot - Seed Bomb - TM071
  (317, 31700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Swalot - Metronome - TM080
  (317, 31700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 39),
  -- Swalot - Thunder Wave - TM082
  (317, 31700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Swalot - Poison Jab - TM083
  (317, 31700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Swalot - Rest - TM085
  (317, 31700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Swalot - Swords Dance - TM088
  (317, 31700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Swalot - Body Press - TM089
  (317, 31700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 44),
  -- Swalot - Toxic Spikes - TM091
  (317, 31700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 45),
  -- Swalot - Gunk Shot - TM102
  (317, 31700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 46),
  -- Swalot - Substitute - TM103
  (317, 31700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Swalot - Giga Drain - TM111
  (317, 31700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Swalot - Shadow Ball - TM114
  (317, 31700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Swalot - Encore - TM122
  (317, 31700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 50),
  -- Swalot - Amnesia - TM128
  (317, 31700, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Swalot - Helping Hand - TM130
  (317, 31700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Swalot - Ice Beam - TM135
  (317, 31700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 53),
  -- Swalot - Sludge Bomb - TM148
  (317, 31700, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 54),
  -- Swalot - Earthquake - TM149
  (317, 31700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Swalot - Giga Impact - TM152
  (317, 31700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Swalot - Hyper Beam - TM163
  (317, 31700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Swalot - Solar Beam - TM168
  (317, 31700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Swalot - Tera Blast - TM171
  (317, 31700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Swalot - Smog - Egg
  (317, 31700, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Swalot - Acid Armor - Egg
  (317, 31700, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Swalot - Curse - Egg
  (317, 31700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Swalot - Mud-Slap - Egg
  (317, 31700, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Swalot - Destiny Bond - Egg
  (317, 31700, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Swalot - Clear Smog - Egg
  (317, 31700, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Swalot - Stuff Cheeks - Egg
  (317, 31700, 747, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Swalot - Body Slam - Evolution
  (317, 31700, 34, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Numel - Tackle - Level 1
  (322, 32200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Focus Energy - Level 8
  (322, 32200, 116, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Numel - Bulldoze - Level 12
  (322, 32200, 523, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Numel - Incinerate - Level 15
  (322, 32200, 510, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 19
  (322, 32200, 133, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Numel - Lava Plume - Level 22
  (322, 32200, 436, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Numel - Earth Power - Level 26
  (322, 32200, 414, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Numel - Curse - Level 29
  (322, 32200, 174, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Numel - Take Down - Level 31
  (322, 32200, 36, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Numel - Earthquake - Level 40
  (322, 32200, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Numel - Flamethrower - Level 43
  (322, 32200, 53, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Numel - Double-Edge - Level 47
  (322, 32200, 38, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Numel - Take Down - TM001
  (322, 32200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Numel - Charm - TM002
  (322, 32200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Numel - Mud-Slap - TM005
  (322, 32200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Numel - Scary Face - TM006
  (322, 32200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Numel - Protect - TM007
  (322, 32200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Numel - Trailblaze - TM020
  (322, 32200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Numel - Fire Spin - TM024
  (322, 32200, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Numel - Facade - TM025
  (322, 32200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Numel - Bulldoze - TM028
  (322, 32200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Numel - Mud Shot - TM035
  (322, 32200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Numel - Rock Tomb - TM036
  (322, 32200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Numel - Flame Charge - TM038
  (322, 32200, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Numel - Endure - TM047
  (322, 32200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Numel - Sunny Day - TM049
  (322, 32200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Numel - Rain Dance - TM050
  (322, 32200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Numel - Sandstorm - TM051
  (322, 32200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Numel - Dig - TM055
  (322, 32200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Numel - Zen Headbutt - TM059
  (322, 32200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Numel - Body Slam - TM066
  (322, 32200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Numel - Sleep Talk - TM070
  (322, 32200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Numel - Stomping Tantrum - TM084
  (322, 32200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Numel - Rest - TM085
  (322, 32200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Numel - Rock Slide - TM086
  (322, 32200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Numel - Body Press - TM089
  (322, 32200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Numel - Flash Cannon - TM093
  (322, 32200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Numel - Iron Head - TM099
  (322, 32200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Numel - Substitute - TM103
  (322, 32200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Numel - Will-O-Wisp - TM107
  (322, 32200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Numel - Stealth Rock - TM116
  (322, 32200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 43),
  -- Numel - Heat Wave - TM118
  (322, 32200, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Numel - Heavy Slam - TM121
  (322, 32200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 45),
  -- Numel - Flamethrower - TM125
  (322, 32200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Numel - Amnesia - TM128
  (322, 32200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 47),
  -- Numel - Helping Hand - TM130
  (322, 32200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Numel - Earth Power - TM133
  (322, 32200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 49),
  -- Numel - Fire Blast - TM141
  (322, 32200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Numel - Earthquake - TM149
  (322, 32200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 51),
  -- Numel - Stone Edge - TM150
  (322, 32200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Numel - Overheat - TM157
  (322, 32200, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 53),
  -- Numel - Flare Blitz - TM165
  (322, 32200, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 54),
  -- Numel - Tera Blast - TM171
  (322, 32200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Numel - Stomp - Egg
  (322, 32200, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Numel - Body Slam - Egg
  (322, 32200, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Numel - Growth - Egg
  (322, 32200, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Numel - Defense Curl - Egg
  (322, 32200, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Numel - Scary Face - Egg
  (322, 32200, 184, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Numel - Rollout - Egg
  (322, 32200, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Numel - Ancient Power - Egg
  (322, 32200, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Numel - Stockpile - Egg
  (322, 32200, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Numel - Spit Up - Egg
  (322, 32200, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Numel - Swallow - Egg
  (322, 32200, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Numel - Heat Wave - Egg
  (322, 32200, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Numel - Yawn - Egg
  (322, 32200, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Numel - Howl - Egg
  (322, 32200, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Numel - Iron Head - Egg
  (322, 32200, 442, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Numel - Heavy Slam - Egg
  (322, 32200, 484, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 1
  (323, 32300, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Camerupt - Fissure - Level 1
  (323, 32300, 90, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Camerupt - Focus Energy - Level 1
  (323, 32300, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Camerupt - Eruption - Level 1
  (323, 32300, 284, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Camerupt - Bulldoze - Level 12
  (323, 32300, 523, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Camerupt - Incinerate - Level 15
  (323, 32300, 510, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Camerupt - Amnesia - Level 19
  (323, 32300, 133, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Camerupt - Lava Plume - Level 22
  (323, 32300, 436, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Camerupt - Earth Power - Level 26
  (323, 32300, 414, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Camerupt - Curse - Level 29
  (323, 32300, 174, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Camerupt - Take Down - Level 31
  (323, 32300, 36, 23, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Camerupt - Yawn - Level 39
  (323, 32300, 281, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Camerupt - Earthquake - Level 46
  (323, 32300, 89, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Camerupt - Take Down - TM001
  (323, 32300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Camerupt - Charm - TM002
  (323, 32300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Camerupt - Mud-Slap - TM005
  (323, 32300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Camerupt - Scary Face - TM006
  (323, 32300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Camerupt - Protect - TM007
  (323, 32300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Camerupt - Trailblaze - TM020
  (323, 32300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Camerupt - Fire Spin - TM024
  (323, 32300, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Camerupt - Facade - TM025
  (323, 32300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Camerupt - Bulldoze - TM028
  (323, 32300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Camerupt - Mud Shot - TM035
  (323, 32300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Camerupt - Rock Tomb - TM036
  (323, 32300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Camerupt - Flame Charge - TM038
  (323, 32300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 27),
  -- Camerupt - Endure - TM047
  (323, 32300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Camerupt - Sunny Day - TM049
  (323, 32300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Camerupt - Rain Dance - TM050
  (323, 32300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Camerupt - Sandstorm - TM051
  (323, 32300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Camerupt - Dig - TM055
  (323, 32300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Camerupt - Zen Headbutt - TM059
  (323, 32300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Camerupt - Body Slam - TM066
  (323, 32300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Camerupt - Sleep Talk - TM070
  (323, 32300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Camerupt - Stomping Tantrum - TM084
  (323, 32300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Camerupt - Rest - TM085
  (323, 32300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Camerupt - Rock Slide - TM086
  (323, 32300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Camerupt - Body Press - TM089
  (323, 32300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Camerupt - Flash Cannon - TM093
  (323, 32300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 40),
  -- Camerupt - Iron Head - TM099
  (323, 32300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Camerupt - Substitute - TM103
  (323, 32300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Camerupt - Will-O-Wisp - TM107
  (323, 32300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 43),
  -- Camerupt - Stealth Rock - TM116
  (323, 32300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Camerupt - Heat Wave - TM118
  (323, 32300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Camerupt - Heavy Slam - TM121
  (323, 32300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 46),
  -- Camerupt - Flamethrower - TM125
  (323, 32300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Camerupt - Amnesia - TM128
  (323, 32300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 48),
  -- Camerupt - Helping Hand - TM130
  (323, 32300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Camerupt - Earth Power - TM133
  (323, 32300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 50),
  -- Camerupt - Fire Blast - TM141
  (323, 32300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 51),
  -- Camerupt - Earthquake - TM149
  (323, 32300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Camerupt - Stone Edge - TM150
  (323, 32300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 53),
  -- Camerupt - Giga Impact - TM152
  (323, 32300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Camerupt - Overheat - TM157
  (323, 32300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 55),
  -- Camerupt - Hyper Beam - TM163
  (323, 32300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Camerupt - Flare Blitz - TM165
  (323, 32300, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 57),
  -- Camerupt - Solar Beam - TM168
  (323, 32300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Camerupt - Tera Blast - TM171
  (323, 32300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Camerupt - Stomp - Egg
  (323, 32300, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Camerupt - Body Slam - Egg
  (323, 32300, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Camerupt - Growth - Egg
  (323, 32300, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Camerupt - Defense Curl - Egg
  (323, 32300, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Camerupt - Scary Face - Egg
  (323, 32300, 184, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Camerupt - Rollout - Egg
  (323, 32300, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Camerupt - Ancient Power - Egg
  (323, 32300, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Camerupt - Stockpile - Egg
  (323, 32300, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Camerupt - Spit Up - Egg
  (323, 32300, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Camerupt - Swallow - Egg
  (323, 32300, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Camerupt - Heat Wave - Egg
  (323, 32300, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Camerupt - Yawn - Egg
  (323, 32300, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Camerupt - Howl - Egg
  (323, 32300, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Camerupt - Iron Head - Egg
  (323, 32300, 442, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Camerupt - Heavy Slam - Egg
  (323, 32300, 484, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Camerupt - Rock Slide - Evolution
  (323, 32300, 157, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Smog - Level 1
  (324, 32400, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torkoal - Withdraw - Level 4
  (324, 32400, 110, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Torkoal - Rapid Spin - Level 8
  (324, 32400, 229, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Torkoal - Smokescreen - Level 12
  (324, 32400, 108, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Torkoal - Clear Smog - Level 16
  (324, 32400, 499, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Torkoal - Flame Wheel - Level 20
  (324, 32400, 172, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Torkoal - Protect - Level 24
  (324, 32400, 182, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Torkoal - Lava Plume - Level 28
  (324, 32400, 436, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Torkoal - Body Slam - Level 32
  (324, 32400, 34, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Torkoal - Iron Defense - Level 36
  (324, 32400, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Torkoal - Flamethrower - Level 40
  (324, 32400, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Torkoal - Curse - Level 44
  (324, 32400, 174, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Torkoal - Heat Wave - Level 48
  (324, 32400, 257, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Torkoal - Amnesia - Level 52
  (324, 32400, 133, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Torkoal - Inferno - Level 56
  (324, 32400, 517, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Torkoal - Shell Smash - Level 60
  (324, 32400, 504, 23, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Torkoal - Eruption - Level 64
  (324, 32400, 284, 23, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Torkoal - Take Down - TM001
  (324, 32400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Torkoal - Protect - TM007
  (324, 32400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Torkoal - Fire Spin - TM024
  (324, 32400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Torkoal - Facade - TM025
  (324, 32400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Torkoal - Bulldoze - TM028
  (324, 32400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Torkoal - Rock Tomb - TM036
  (324, 32400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Torkoal - Flame Charge - TM038
  (324, 32400, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Torkoal - Endure - TM047
  (324, 32400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Torkoal - Sunny Day - TM049
  (324, 32400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Torkoal - Sandstorm - TM051
  (324, 32400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Torkoal - Zen Headbutt - TM059
  (324, 32400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Torkoal - Body Slam - TM066
  (324, 32400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Torkoal - Sleep Talk - TM070
  (324, 32400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Torkoal - Stomping Tantrum - TM084
  (324, 32400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Torkoal - Rest - TM085
  (324, 32400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Torkoal - Rock Slide - TM086
  (324, 32400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Torkoal - Body Press - TM089
  (324, 32400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 35),
  -- Torkoal - Substitute - TM103
  (324, 32400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Torkoal - Iron Defense - TM104
  (324, 32400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Torkoal - Will-O-Wisp - TM107
  (324, 32400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Torkoal - Stealth Rock - TM116
  (324, 32400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Torkoal - Heat Wave - TM118
  (324, 32400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Torkoal - Heavy Slam - TM121
  (324, 32400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 41),
  -- Torkoal - Flamethrower - TM125
  (324, 32400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Torkoal - Amnesia - TM128
  (324, 32400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 43),
  -- Torkoal - Helping Hand - TM130
  (324, 32400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Torkoal - Earth Power - TM133
  (324, 32400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Torkoal - Fire Blast - TM141
  (324, 32400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Torkoal - Sludge Bomb - TM148
  (324, 32400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 47),
  -- Torkoal - Earthquake - TM149
  (324, 32400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Torkoal - Stone Edge - TM150
  (324, 32400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Torkoal - Giga Impact - TM152
  (324, 32400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Torkoal - Overheat - TM157
  (324, 32400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Torkoal - Hyper Beam - TM163
  (324, 32400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Torkoal - Flare Blitz - TM165
  (324, 32400, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 53),
  -- Torkoal - Solar Beam - TM168
  (324, 32400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Torkoal - Tera Blast - TM171
  (324, 32400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Torkoal - Fissure - Egg
  (324, 32400, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torkoal - Flail - Egg
  (324, 32400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torkoal - Ancient Power - Egg
  (324, 32400, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Torkoal - Yawn - Egg
  (324, 32400, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spoink - Splash - Level 1
  (325, 32500, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Confusion - Level 7
  (325, 32500, 93, 23, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Growl - Level 10
  (325, 32500, 45, 23, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 18
  (325, 32500, 244, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 22
  (325, 32500, 109, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Spoink - Rest - Level 29
  (325, 32500, 156, 23, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Spoink - Power Gem - Level 29
  (325, 32500, 408, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Spoink - Snore - Level 33
  (325, 32500, 173, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Spoink - Psyshock - Level 38
  (325, 32500, 473, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Spoink - Payback - Level 40
  (325, 32500, 371, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Spoink - Psychic - Level 44
  (325, 32500, 94, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Spoink - Bounce - Level 50
  (325, 32500, 340, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Spoink - Take Down - TM001
  (325, 32500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Spoink - Protect - TM007
  (325, 32500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Spoink - Psybeam - TM016
  (325, 32500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 16),
  -- Spoink - Confuse Ray - TM017
  (325, 32500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Spoink - Thief - TM018
  (325, 32500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Spoink - Trailblaze - TM020
  (325, 32500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Spoink - Chilling Water - TM022
  (325, 32500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Spoink - Charge Beam - TM023
  (325, 32500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Spoink - Facade - TM025
  (325, 32500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Spoink - Snarl - TM030
  (325, 32500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Spoink - Swift - TM032
  (325, 32500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Spoink - Icy Wind - TM034
  (325, 32500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Spoink - Stored Power - TM041
  (325, 32500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Spoink - Night Shade - TM042
  (325, 32500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Spoink - Endure - TM047
  (325, 32500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Spoink - Sunny Day - TM049
  (325, 32500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Spoink - Rain Dance - TM050
  (325, 32500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Spoink - Snowscape - TM052
  (325, 32500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Spoink - Psyshock - TM054
  (325, 32500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 32),
  -- Spoink - Zen Headbutt - TM059
  (325, 32500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Spoink - Body Slam - TM066
  (325, 32500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Spoink - Sleep Talk - TM070
  (325, 32500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Spoink - Reflect - TM074
  (325, 32500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Spoink - Light Screen - TM075
  (325, 32500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Spoink - Dazzling Gleam - TM079
  (325, 32500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Spoink - Grass Knot - TM081
  (325, 32500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Spoink - Thunder Wave - TM082
  (325, 32500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Spoink - Rest - TM085
  (325, 32500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Spoink - Taunt - TM087
  (325, 32500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Spoink - Imprison - TM092
  (325, 32500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 43),
  -- Spoink - Flash Cannon - TM093
  (325, 32500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Spoink - Skill Swap - TM098
  (325, 32500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 45),
  -- Spoink - Power Gem - TM101
  (325, 32500, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 46),
  -- Spoink - Substitute - TM103
  (325, 32500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Spoink - Trick - TM109
  (325, 32500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 48),
  -- Spoink - Shadow Ball - TM114
  (325, 32500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Spoink - Psychic - TM120
  (325, 32500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 50),
  -- Spoink - Encore - TM122
  (325, 32500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 51),
  -- Spoink - Amnesia - TM128
  (325, 32500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 52),
  -- Spoink - Calm Mind - TM129
  (325, 32500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 53),
  -- Spoink - Helping Hand - TM130
  (325, 32500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Spoink - Psychic Terrain - TM138
  (325, 32500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 55),
  -- Spoink - Trick Room - TM161
  (325, 32500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 56),
  -- Spoink - Tera Blast - TM171
  (325, 32500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Spoink - Whirlwind - Egg
  (325, 32500, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spoink - Amnesia - Egg
  (325, 32500, 133, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spoink - Mirror Coat - Egg
  (325, 32500, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Spoink - Future Sight - Egg
  (325, 32500, 248, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Spoink - Trick - Egg
  (325, 32500, 271, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Spoink - Extrasensory - Egg
  (325, 32500, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Spoink - Zen Headbutt - Egg
  (325, 32500, 428, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Spoink - Simple Beam - Egg
  (325, 32500, 493, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Grumpig - Psybeam - Level 1
  (326, 32600, 60, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Confusion - Level 1
  (326, 32600, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grumpig - Belch - Level 1
  (326, 32600, 562, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grumpig - Psych Up - Level 18
  (326, 32600, 244, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Grumpig - Confuse Ray - Level 22
  (326, 32600, 109, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Grumpig - Zen Headbutt - Level 26
  (326, 32600, 428, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Grumpig - Power Gem - Level 29
  (326, 32600, 408, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Grumpig - Rest - Level 35
  (326, 32600, 156, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Grumpig - Snore - Level 35
  (326, 32600, 173, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Grumpig - Psyshock - Level 42
  (326, 32600, 473, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Grumpig - Payback - Level 46
  (326, 32600, 371, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Grumpig - Psychic - Level 52
  (326, 32600, 94, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Grumpig - Bounce - Level 60
  (326, 32600, 340, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Grumpig - Take Down - TM001
  (326, 32600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Grumpig - Mud-Slap - TM005
  (326, 32600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Grumpig - Protect - TM007
  (326, 32600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Grumpig - Low Kick - TM012
  (326, 32600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Grumpig - Psybeam - TM016
  (326, 32600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Grumpig - Confuse Ray - TM017
  (326, 32600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Grumpig - Thief - TM018
  (326, 32600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Grumpig - Trailblaze - TM020
  (326, 32600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Grumpig - Chilling Water - TM022
  (326, 32600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Grumpig - Charge Beam - TM023
  (326, 32600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Grumpig - Facade - TM025
  (326, 32600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Grumpig - Bulldoze - TM028
  (326, 32600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Grumpig - Snarl - TM030
  (326, 32600, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Grumpig - Swift - TM032
  (326, 32600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Grumpig - Icy Wind - TM034
  (326, 32600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Grumpig - Mud Shot - TM035
  (326, 32600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Grumpig - Low Sweep - TM039
  (326, 32600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 31),
  -- Grumpig - Stored Power - TM041
  (326, 32600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 32),
  -- Grumpig - Night Shade - TM042
  (326, 32600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 33),
  -- Grumpig - Fling - TM043
  (326, 32600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 34),
  -- Grumpig - Endure - TM047
  (326, 32600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Grumpig - Sunny Day - TM049
  (326, 32600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 36),
  -- Grumpig - Rain Dance - TM050
  (326, 32600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 37),
  -- Grumpig - Snowscape - TM052
  (326, 32600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 38),
  -- Grumpig - Psyshock - TM054
  (326, 32600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 39),
  -- Grumpig - Dig - TM055
  (326, 32600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 40),
  -- Grumpig - Brick Break - TM058
  (326, 32600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 41),
  -- Grumpig - Zen Headbutt - TM059
  (326, 32600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 42),
  -- Grumpig - Body Slam - TM066
  (326, 32600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Grumpig - Fire Punch - TM067
  (326, 32600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 44),
  -- Grumpig - Thunder Punch - TM068
  (326, 32600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 45),
  -- Grumpig - Ice Punch - TM069
  (326, 32600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 46),
  -- Grumpig - Sleep Talk - TM070
  (326, 32600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 47),
  -- Grumpig - Seed Bomb - TM071
  (326, 32600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 48),
  -- Grumpig - Drain Punch - TM073
  (326, 32600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 49),
  -- Grumpig - Reflect - TM074
  (326, 32600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 50),
  -- Grumpig - Light Screen - TM075
  (326, 32600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 51),
  -- Grumpig - Dazzling Gleam - TM079
  (326, 32600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 52),
  -- Grumpig - Metronome - TM080
  (326, 32600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 53),
  -- Grumpig - Grass Knot - TM081
  (326, 32600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 54),
  -- Grumpig - Thunder Wave - TM082
  (326, 32600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 55),
  -- Grumpig - Stomping Tantrum - TM084
  (326, 32600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 56),
  -- Grumpig - Rest - TM085
  (326, 32600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 57),
  -- Grumpig - Taunt - TM087
  (326, 32600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 58),
  -- Grumpig - Body Press - TM089
  (326, 32600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 59),
  -- Grumpig - Imprison - TM092
  (326, 32600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 60),
  -- Grumpig - Flash Cannon - TM093
  (326, 32600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 61),
  -- Grumpig - Skill Swap - TM098
  (326, 32600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 62),
  -- Grumpig - Power Gem - TM101
  (326, 32600, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 63),
  -- Grumpig - Substitute - TM103
  (326, 32600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 64),
  -- Grumpig - Trick - TM109
  (326, 32600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 65),
  -- Grumpig - Shadow Ball - TM114
  (326, 32600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 66),
  -- Grumpig - Hyper Voice - TM117
  (326, 32600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 67),
  -- Grumpig - Energy Ball - TM119
  (326, 32600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 68),
  -- Grumpig - Psychic - TM120
  (326, 32600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 69),
  -- Grumpig - Encore - TM122
  (326, 32600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 70),
  -- Grumpig - Amnesia - TM128
  (326, 32600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 71),
  -- Grumpig - Calm Mind - TM129
  (326, 32600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 72),
  -- Grumpig - Helping Hand - TM130
  (326, 32600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 73),
  -- Grumpig - Earth Power - TM133
  (326, 32600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 74),
  -- Grumpig - Psychic Terrain - TM138
  (326, 32600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 75),
  -- Grumpig - Nasty Plot - TM140
  (326, 32600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 76),
  -- Grumpig - Giga Impact - TM152
  (326, 32600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 77),
  -- Grumpig - Focus Blast - TM158
  (326, 32600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 78),
  -- Grumpig - Trick Room - TM161
  (326, 32600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 79),
  -- Grumpig - Hyper Beam - TM163
  (326, 32600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 80),
  -- Grumpig - Tera Blast - TM171
  (326, 32600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 81),
  -- Grumpig - Whirlwind - Egg
  (326, 32600, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Grumpig - Amnesia - Egg
  (326, 32600, 133, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Grumpig - Mirror Coat - Egg
  (326, 32600, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Grumpig - Future Sight - Egg
  (326, 32600, 248, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Grumpig - Trick - Egg
  (326, 32600, 271, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Grumpig - Extrasensory - Egg
  (326, 32600, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Grumpig - Zen Headbutt - Egg
  (326, 32600, 428, 23, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Grumpig - Simple Beam - Egg
  (326, 32600, 493, 23, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Grumpig - Teeter Dance - Evolution
  (326, 32600, 298, 23, NULL, 7, NULL, NULL, NULL, NULL, 90),
  -- Trapinch - Sand Attack - Level 1
  (328, 32800, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Astonish - Level 1
  (328, 32800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trapinch - Bite - Level 8
  (328, 32800, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Trapinch - Mud-Slap - Level 12
  (328, 32800, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Trapinch - Sand Tomb - Level 16
  (328, 32800, 328, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Trapinch - Bulldoze - Level 20
  (328, 32800, 523, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Trapinch - Dig - Level 24
  (328, 32800, 91, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Trapinch - Crunch - Level 28
  (328, 32800, 242, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Trapinch - Sandstorm - Level 32
  (328, 32800, 201, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Trapinch - Earth Power - Level 36
  (328, 32800, 414, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Trapinch - Earthquake - Level 40
  (328, 32800, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Trapinch - Superpower - Level 44
  (328, 32800, 276, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Trapinch - Fissure - Level 48
  (328, 32800, 90, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Trapinch - Take Down - TM001
  (328, 32800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Trapinch - Mud-Slap - TM005
  (328, 32800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Trapinch - Protect - TM007
  (328, 32800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Trapinch - Struggle Bug - TM015
  (328, 32800, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Trapinch - Facade - TM025
  (328, 32800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Trapinch - Bulldoze - TM028
  (328, 32800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Trapinch - Mud Shot - TM035
  (328, 32800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Trapinch - Rock Tomb - TM036
  (328, 32800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Trapinch - Endure - TM047
  (328, 32800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Trapinch - Sunny Day - TM049
  (328, 32800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Trapinch - Sandstorm - TM051
  (328, 32800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Trapinch - Dig - TM055
  (328, 32800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Trapinch - Body Slam - TM066
  (328, 32800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Trapinch - Sleep Talk - TM070
  (328, 32800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Trapinch - Rest - TM085
  (328, 32800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Trapinch - Rock Slide - TM086
  (328, 32800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 29),
  -- Trapinch - Substitute - TM103
  (328, 32800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Trapinch - Crunch - TM108
  (328, 32800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 31),
  -- Trapinch - Giga Drain - TM111
  (328, 32800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 32),
  -- Trapinch - Stealth Rock - TM116
  (328, 32800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 33),
  -- Trapinch - Earth Power - TM133
  (328, 32800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 34),
  -- Trapinch - Earthquake - TM149
  (328, 32800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 35),
  -- Trapinch - Stone Edge - TM150
  (328, 32800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 36),
  -- Trapinch - Hyper Beam - TM163
  (328, 32800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 37),
  -- Trapinch - Tera Blast - TM171
  (328, 32800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Trapinch - Gust - Egg
  (328, 32800, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Trapinch - Quick Attack - Egg
  (328, 32800, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Trapinch - Flail - Egg
  (328, 32800, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Trapinch - Fury Cutter - Egg
  (328, 32800, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trapinch - Feint - Egg
  (328, 32800, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trapinch - Bug Bite - Egg
  (328, 32800, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trapinch - First Impression - Egg
  (328, 32800, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Bite - Level 1
  (329, 32900, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Dig - Level 1
  (329, 32900, 91, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Mud-Slap - Level 12
  (329, 32900, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Vibrava - Sand Tomb - Level 16
  (329, 32900, 328, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Vibrava - Dragon Tail - Level 20
  (329, 32900, 525, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Vibrava - Screech - Level 24
  (329, 32900, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Vibrava - Bug Buzz - Level 28
  (329, 32900, 405, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Vibrava - Sandstorm - Level 32
  (329, 32900, 201, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Vibrava - Earth Power - Level 38
  (329, 32900, 414, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Vibrava - Earthquake - Level 44
  (329, 32900, 89, 23, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Vibrava - Uproar - Level 50
  (329, 32900, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Vibrava - Dragon Rush - Level 56
  (329, 32900, 407, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Vibrava - Boomburst - Level 62
  (329, 32900, 586, 23, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Vibrava - Take Down - TM001
  (329, 32900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Vibrava - Mud-Slap - TM005
  (329, 32900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Vibrava - Protect - TM007
  (329, 32900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Vibrava - Struggle Bug - TM015
  (329, 32900, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 18),
  -- Vibrava - Facade - TM025
  (329, 32900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Vibrava - Aerial Ace - TM027
  (329, 32900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Vibrava - Bulldoze - TM028
  (329, 32900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Vibrava - Swift - TM032
  (329, 32900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Vibrava - Mud Shot - TM035
  (329, 32900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Vibrava - Rock Tomb - TM036
  (329, 32900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Vibrava - Air Cutter - TM040
  (329, 32900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Vibrava - Dragon Tail - TM044
  (329, 32900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Vibrava - Endure - TM047
  (329, 32900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Vibrava - Sunny Day - TM049
  (329, 32900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Vibrava - Sandstorm - TM051
  (329, 32900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Vibrava - Dig - TM055
  (329, 32900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Vibrava - U-turn - TM060
  (329, 32900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Vibrava - Air Slash - TM065
  (329, 32900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Vibrava - Body Slam - TM066
  (329, 32900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Vibrava - Sleep Talk - TM070
  (329, 32900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Vibrava - Dragon Claw - TM078
  (329, 32900, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Vibrava - Rest - TM085
  (329, 32900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Vibrava - Rock Slide - TM086
  (329, 32900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Vibrava - Fly - TM097
  (329, 32900, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Vibrava - Substitute - TM103
  (329, 32900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Vibrava - Crunch - TM108
  (329, 32900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 40),
  -- Vibrava - Giga Drain - TM111
  (329, 32900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Vibrava - Tailwind - TM113
  (329, 32900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 42),
  -- Vibrava - Dragon Pulse - TM115
  (329, 32900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 43),
  -- Vibrava - Stealth Rock - TM116
  (329, 32900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Vibrava - Heat Wave - TM118
  (329, 32900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Vibrava - Earth Power - TM133
  (329, 32900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 46),
  -- Vibrava - Earthquake - TM149
  (329, 32900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Vibrava - Stone Edge - TM150
  (329, 32900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Vibrava - Giga Impact - TM152
  (329, 32900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Vibrava - Outrage - TM156
  (329, 32900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 50),
  -- Vibrava - Bug Buzz - TM162
  (329, 32900, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 51),
  -- Vibrava - Hyper Beam - TM163
  (329, 32900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Vibrava - Solar Beam - TM168
  (329, 32900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 53),
  -- Vibrava - Draco Meteor - TM169
  (329, 32900, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 54),
  -- Vibrava - Tera Blast - TM171
  (329, 32900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Vibrava - Gust - Egg
  (329, 32900, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Vibrava - Quick Attack - Egg
  (329, 32900, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Vibrava - Flail - Egg
  (329, 32900, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Vibrava - Fury Cutter - Egg
  (329, 32900, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Vibrava - Feint - Egg
  (329, 32900, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Vibrava - Bug Bite - Egg
  (329, 32900, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Vibrava - First Impression - Egg
  (329, 32900, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Vibrava - Dragon Breath - Evolution
  (329, 32900, 225, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Vibrava - Supersonic - Reminder
  (329, 32900, 48, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Vibrava - Fissure - Reminder
  (329, 32900, 90, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Vibrava - Crunch - Reminder
  (329, 32900, 242, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Vibrava - Superpower - Reminder
  (329, 32900, 276, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Vibrava - Astonish - Reminder
  (329, 32900, 310, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Vibrava - Bulldoze - Reminder
  (329, 32900, 523, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Supersonic - Level 1
  (330, 33000, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Dragon Breath - Level 1
  (330, 33000, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Bulldoze - Level 1
  (330, 33000, 523, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flygon - Mud-Slap - Level 12
  (330, 33000, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Flygon - Sand Tomb - Level 16
  (330, 33000, 328, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Flygon - Dragon Tail - Level 20
  (330, 33000, 525, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Flygon - Screech - Level 24
  (330, 33000, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Flygon - Bug Buzz - Level 28
  (330, 33000, 405, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Flygon - Sandstorm - Level 32
  (330, 33000, 201, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Flygon - Earth Power - Level 38
  (330, 33000, 414, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Flygon - Earthquake - Level 44
  (330, 33000, 89, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Flygon - Uproar - Level 52
  (330, 33000, 253, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Flygon - Dragon Rush - Level 60
  (330, 33000, 407, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Flygon - Boomburst - Level 68
  (330, 33000, 586, 23, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Flygon - Take Down - TM001
  (330, 33000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Flygon - Agility - TM004
  (330, 33000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Flygon - Mud-Slap - TM005
  (330, 33000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Flygon - Protect - TM007
  (330, 33000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Flygon - Struggle Bug - TM015
  (330, 33000, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 20),
  -- Flygon - Fire Spin - TM024
  (330, 33000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Flygon - Facade - TM025
  (330, 33000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Flygon - Aerial Ace - TM027
  (330, 33000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Flygon - Bulldoze - TM028
  (330, 33000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Flygon - Swift - TM032
  (330, 33000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Flygon - Mud Shot - TM035
  (330, 33000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Flygon - Rock Tomb - TM036
  (330, 33000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Flygon - Air Cutter - TM040
  (330, 33000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Flygon - Dragon Tail - TM044
  (330, 33000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Flygon - Endure - TM047
  (330, 33000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Flygon - Sunny Day - TM049
  (330, 33000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Flygon - Sandstorm - TM051
  (330, 33000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Flygon - Dig - TM055
  (330, 33000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Flygon - U-turn - TM060
  (330, 33000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Flygon - Air Slash - TM065
  (330, 33000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Flygon - Body Slam - TM066
  (330, 33000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Flygon - Fire Punch - TM067
  (330, 33000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Flygon - Thunder Punch - TM068
  (330, 33000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Flygon - Sleep Talk - TM070
  (330, 33000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Flygon - Dragon Claw - TM078
  (330, 33000, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Flygon - Rest - TM085
  (330, 33000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Flygon - Rock Slide - TM086
  (330, 33000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Flygon - Fly - TM097
  (330, 33000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 43),
  -- Flygon - Dragon Dance - TM100
  (330, 33000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 44),
  -- Flygon - Substitute - TM103
  (330, 33000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Flygon - Crunch - TM108
  (330, 33000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 46),
  -- Flygon - Giga Drain - TM111
  (330, 33000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 47),
  -- Flygon - Tailwind - TM113
  (330, 33000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 48),
  -- Flygon - Dragon Pulse - TM115
  (330, 33000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Flygon - Stealth Rock - TM116
  (330, 33000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Flygon - Heat Wave - TM118
  (330, 33000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 51),
  -- Flygon - Flamethrower - TM125
  (330, 33000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Flygon - Helping Hand - TM130
  (330, 33000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Flygon - Earth Power - TM133
  (330, 33000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 54),
  -- Flygon - Fire Blast - TM141
  (330, 33000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Flygon - Earthquake - TM149
  (330, 33000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Flygon - Stone Edge - TM150
  (330, 33000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Flygon - Giga Impact - TM152
  (330, 33000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Flygon - Outrage - TM156
  (330, 33000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Flygon - Bug Buzz - TM162
  (330, 33000, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 60),
  -- Flygon - Hyper Beam - TM163
  (330, 33000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Flygon - Solar Beam - TM168
  (330, 33000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 62),
  -- Flygon - Draco Meteor - TM169
  (330, 33000, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 63),
  -- Flygon - Tera Blast - TM171
  (330, 33000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Flygon - Gust - Egg
  (330, 33000, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Flygon - Quick Attack - Egg
  (330, 33000, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Flygon - Flail - Egg
  (330, 33000, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Flygon - Fury Cutter - Egg
  (330, 33000, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Flygon - Feint - Egg
  (330, 33000, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Flygon - Bug Bite - Egg
  (330, 33000, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Flygon - First Impression - Egg
  (330, 33000, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Flygon - Dragon Claw - Evolution
  (330, 33000, 337, 23, NULL, 7, NULL, NULL, NULL, NULL, 72),
  -- Flygon - Bite - Reminder
  (330, 33000, 44, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Flygon - Fissure - Reminder
  (330, 33000, 90, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Flygon - Dig - Reminder
  (330, 33000, 91, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Flygon - Crunch - Reminder
  (330, 33000, 242, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Flygon - Superpower - Reminder
  (330, 33000, 276, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Flygon - Astonish - Reminder
  (330, 33000, 310, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Flygon - Dragon Dance - Reminder
  (330, 33000, 349, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Flygon - Feint - Reminder
  (330, 33000, 364, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Cacnea - Poison Sting - Level 1
  (331, 33100, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Level 1
  (331, 33100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 4
  (331, 33100, 71, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 7
  (331, 33100, 74, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 10
  (331, 33100, 73, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 13
  (331, 33100, 28, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cacnea - Bullet Seed - Level 16
  (331, 33100, 331, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cacnea - Power Trip - Level 19
  (331, 33100, 681, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Cacnea - Ingrain - Level 22
  (331, 33100, 275, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Cacnea - Payback - Level 26
  (331, 33100, 371, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Cacnea - Spikes - Level 30
  (331, 33100, 191, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Cacnea - Sucker Punch - Level 34
  (331, 33100, 389, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Cacnea - Pin Missile - Level 38
  (331, 33100, 42, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Cacnea - Energy Ball - Level 42
  (331, 33100, 412, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Cacnea - Cotton Spore - Level 46
  (331, 33100, 178, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Cacnea - Sandstorm - Level 50
  (331, 33100, 201, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Cacnea - Destiny Bond - Level 54
  (331, 33100, 194, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Cacnea - Take Down - TM001
  (331, 33100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Cacnea - Scary Face - TM006
  (331, 33100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Cacnea - Protect - TM007
  (331, 33100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Cacnea - Low Kick - TM012
  (331, 33100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Cacnea - Thief - TM018
  (331, 33100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Cacnea - Trailblaze - TM020
  (331, 33100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Cacnea - Facade - TM025
  (331, 33100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Cacnea - Bulldoze - TM028
  (331, 33100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Cacnea - Swift - TM032
  (331, 33100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Cacnea - Magical Leaf - TM033
  (331, 33100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Cacnea - Fling - TM043
  (331, 33100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Cacnea - Venoshock - TM045
  (331, 33100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Cacnea - Endure - TM047
  (331, 33100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Cacnea - Sunny Day - TM049
  (331, 33100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Cacnea - Rain Dance - TM050
  (331, 33100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Cacnea - Sandstorm - TM051
  (331, 33100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Cacnea - Dig - TM055
  (331, 33100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Cacnea - Bullet Seed - TM056
  (331, 33100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 35),
  -- Cacnea - Brick Break - TM058
  (331, 33100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Cacnea - Foul Play - TM062
  (331, 33100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Cacnea - Body Slam - TM066
  (331, 33100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Cacnea - Thunder Punch - TM068
  (331, 33100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Cacnea - Sleep Talk - TM070
  (331, 33100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Cacnea - Seed Bomb - TM071
  (331, 33100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 41),
  -- Cacnea - Drain Punch - TM073
  (331, 33100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Cacnea - Grass Knot - TM081
  (331, 33100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Cacnea - Poison Jab - TM083
  (331, 33100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Cacnea - Rest - TM085
  (331, 33100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Cacnea - Swords Dance - TM088
  (331, 33100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Cacnea - Spikes - TM090
  (331, 33100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 47),
  -- Cacnea - Toxic Spikes - TM091
  (331, 33100, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 48),
  -- Cacnea - Dark Pulse - TM094
  (331, 33100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Cacnea - Substitute - TM103
  (331, 33100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Cacnea - Giga Drain - TM111
  (331, 33100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 51),
  -- Cacnea - Energy Ball - TM119
  (331, 33100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 52),
  -- Cacnea - Encore - TM122
  (331, 33100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 53),
  -- Cacnea - Helping Hand - TM130
  (331, 33100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Cacnea - Grassy Terrain - TM137
  (331, 33100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 55),
  -- Cacnea - Nasty Plot - TM140
  (331, 33100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Cacnea - Leaf Storm - TM159
  (331, 33100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 57),
  -- Cacnea - Solar Beam - TM168
  (331, 33100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Cacnea - Tera Blast - TM171
  (331, 33100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Cacnea - Disable - Egg
  (331, 33100, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cacnea - Acid - Egg
  (331, 33100, 51, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cacnea - Counter - Egg
  (331, 33100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cacnea - Teeter Dance - Egg
  (331, 33100, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cacnea - Block - Egg
  (331, 33100, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Cacnea - Switcheroo - Egg
  (331, 33100, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Cacnea - Belch - Egg
  (331, 33100, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Cacnea - Fell Stinger - Egg
  (331, 33100, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Cacturne - Poison Sting - Level 1
  (332, 33200, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacturne - Leer - Level 1
  (332, 33200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacturne - Absorb - Level 1
  (332, 33200, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cacturne - Growth - Level 1
  (332, 33200, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cacturne - Destiny Bond - Level 1
  (332, 33200, 194, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cacturne - Leech Seed - Level 10
  (332, 33200, 73, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Cacturne - Sand Attack - Level 13
  (332, 33200, 28, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Cacturne - Bullet Seed - Level 16
  (332, 33200, 331, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Cacturne - Power Trip - Level 19
  (332, 33200, 681, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Cacturne - Ingrain - Level 22
  (332, 33200, 275, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Cacturne - Payback - Level 26
  (332, 33200, 371, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Cacturne - Spikes - Level 30
  (332, 33200, 191, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Cacturne - Sucker Punch - Level 35
  (332, 33200, 389, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Cacturne - Pin Missile - Level 38
  (332, 33200, 42, 23, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Cacturne - Energy Ball - Level 44
  (332, 33200, 412, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Cacturne - Cotton Spore - Level 49
  (332, 33200, 178, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Cacturne - Sandstorm - Level 54
  (332, 33200, 201, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Cacturne - Take Down - TM001
  (332, 33200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Cacturne - Scary Face - TM006
  (332, 33200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Cacturne - Protect - TM007
  (332, 33200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Cacturne - Low Kick - TM012
  (332, 33200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Cacturne - Thief - TM018
  (332, 33200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Cacturne - Trailblaze - TM020
  (332, 33200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Cacturne - Facade - TM025
  (332, 33200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Cacturne - Bulldoze - TM028
  (332, 33200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Cacturne - Swift - TM032
  (332, 33200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Cacturne - Magical Leaf - TM033
  (332, 33200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Cacturne - Fling - TM043
  (332, 33200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Cacturne - Venoshock - TM045
  (332, 33200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Cacturne - Endure - TM047
  (332, 33200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Cacturne - Sunny Day - TM049
  (332, 33200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Cacturne - Rain Dance - TM050
  (332, 33200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Cacturne - Sandstorm - TM051
  (332, 33200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Cacturne - Dig - TM055
  (332, 33200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Cacturne - Bullet Seed - TM056
  (332, 33200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 35),
  -- Cacturne - Brick Break - TM058
  (332, 33200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Cacturne - Zen Headbutt - TM059
  (332, 33200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Cacturne - Foul Play - TM062
  (332, 33200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Cacturne - Body Slam - TM066
  (332, 33200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Cacturne - Thunder Punch - TM068
  (332, 33200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Cacturne - Sleep Talk - TM070
  (332, 33200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Cacturne - Seed Bomb - TM071
  (332, 33200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 42),
  -- Cacturne - Drain Punch - TM073
  (332, 33200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Cacturne - Grass Knot - TM081
  (332, 33200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Cacturne - Poison Jab - TM083
  (332, 33200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Cacturne - Stomping Tantrum - TM084
  (332, 33200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 46),
  -- Cacturne - Rest - TM085
  (332, 33200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Cacturne - Taunt - TM087
  (332, 33200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Cacturne - Swords Dance - TM088
  (332, 33200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Cacturne - Spikes - TM090
  (332, 33200, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 50),
  -- Cacturne - Toxic Spikes - TM091
  (332, 33200, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 51),
  -- Cacturne - Dark Pulse - TM094
  (332, 33200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 52),
  -- Cacturne - Substitute - TM103
  (332, 33200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Cacturne - Giga Drain - TM111
  (332, 33200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 54),
  -- Cacturne - Shadow Ball - TM114
  (332, 33200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Cacturne - Energy Ball - TM119
  (332, 33200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 56),
  -- Cacturne - Encore - TM122
  (332, 33200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 57),
  -- Cacturne - Helping Hand - TM130
  (332, 33200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Cacturne - Grassy Terrain - TM137
  (332, 33200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 59),
  -- Cacturne - Nasty Plot - TM140
  (332, 33200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 60),
  -- Cacturne - Giga Impact - TM152
  (332, 33200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Cacturne - Focus Blast - TM158
  (332, 33200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Cacturne - Leaf Storm - TM159
  (332, 33200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 63),
  -- Cacturne - Hyper Beam - TM163
  (332, 33200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Cacturne - Solar Beam - TM168
  (332, 33200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Cacturne - Tera Blast - TM171
  (332, 33200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Cacturne - Disable - Egg
  (332, 33200, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Cacturne - Acid - Egg
  (332, 33200, 51, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Cacturne - Counter - Egg
  (332, 33200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Cacturne - Teeter Dance - Egg
  (332, 33200, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Cacturne - Block - Egg
  (332, 33200, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Cacturne - Switcheroo - Egg
  (332, 33200, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Cacturne - Belch - Egg
  (332, 33200, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Cacturne - Fell Stinger - Egg
  (332, 33200, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Cacturne - Spiky Shield - Evolution
  (332, 33200, 596, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Disarming Voice - Level 4
  (333, 33300, 574, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swablu - Mist - Level 8
  (333, 33300, 54, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 12
  (333, 33300, 31, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Swablu - Round - Level 16
  (333, 33300, 496, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Swablu - Dragon Breath - Level 20
  (333, 33300, 225, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Swablu - Safeguard - Level 24
  (333, 33300, 219, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Swablu - Sing - Level 28
  (333, 33300, 47, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swablu - Cotton Guard - Level 32
  (333, 33300, 538, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Swablu - Take Down - Level 36
  (333, 33300, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Swablu - Moonblast - Level 40
  (333, 33300, 585, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swablu - Perish Song - Level 44
  (333, 33300, 195, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Swablu - Take Down - TM001
  (333, 33300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Swablu - Agility - TM004
  (333, 33300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Swablu - Protect - TM007
  (333, 33300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Swablu - Acrobatics - TM014
  (333, 33300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Swablu - Thief - TM018
  (333, 33300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Swablu - Disarming Voice - TM019
  (333, 33300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 19),
  -- Swablu - Trailblaze - TM020
  (333, 33300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Swablu - Facade - TM025
  (333, 33300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Swablu - Aerial Ace - TM027
  (333, 33300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Swablu - Swift - TM032
  (333, 33300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Swablu - Endure - TM047
  (333, 33300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Swablu - Sunny Day - TM049
  (333, 33300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Swablu - Rain Dance - TM050
  (333, 33300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Swablu - Body Slam - TM066
  (333, 33300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Swablu - Sleep Talk - TM070
  (333, 33300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Swablu - Dazzling Gleam - TM079
  (333, 33300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 29),
  -- Swablu - Rest - TM085
  (333, 33300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Swablu - Fly - TM097
  (333, 33300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 31),
  -- Swablu - Substitute - TM103
  (333, 33300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Swablu - Tailwind - TM113
  (333, 33300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 33),
  -- Swablu - Dragon Pulse - TM115
  (333, 33300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 34),
  -- Swablu - Hyper Voice - TM117
  (333, 33300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 35),
  -- Swablu - Heat Wave - TM118
  (333, 33300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Swablu - Play Rough - TM127
  (333, 33300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Swablu - Helping Hand - TM130
  (333, 33300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Swablu - Ice Beam - TM135
  (333, 33300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Swablu - Hurricane - TM160
  (333, 33300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 40),
  -- Swablu - Brave Bird - TM164
  (333, 33300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 41),
  -- Swablu - Solar Beam - TM168
  (333, 33300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Swablu - Tera Blast - TM171
  (333, 33300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Swablu - Haze - Egg
  (333, 33300, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swablu - Feather Dance - Egg
  (333, 33300, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swablu - Astonish - Egg
  (333, 33300, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Roost - Egg
  (333, 33300, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swablu - Tailwind - Egg
  (333, 33300, 366, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swablu - Dragon Rush - Egg
  (333, 33300, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swablu - Defog - Egg
  (333, 33300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Mist - Level 1
  (334, 33400, 54, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Pluck - Level 1
  (334, 33400, 365, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Disarming Voice - Level 1
  (334, 33400, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Altaria - Fury Attack - Level 12
  (334, 33400, 31, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Altaria - Round - Level 16
  (334, 33400, 496, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Altaria - Dragon Breath - Level 20
  (334, 33400, 225, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Altaria - Safeguard - Level 24
  (334, 33400, 219, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Altaria - Sing - Level 28
  (334, 33400, 47, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Altaria - Cotton Guard - Level 32
  (334, 33400, 538, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Altaria - Take Down - Level 38
  (334, 33400, 36, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Altaria - Moonblast - Level 44
  (334, 33400, 585, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Altaria - Perish Song - Level 50
  (334, 33400, 195, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Altaria - Sky Attack - Level 56
  (334, 33400, 143, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Altaria - Take Down - TM001
  (334, 33400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Altaria - Agility - TM004
  (334, 33400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Altaria - Protect - TM007
  (334, 33400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Altaria - Acrobatics - TM014
  (334, 33400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Altaria - Thief - TM018
  (334, 33400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Altaria - Disarming Voice - TM019
  (334, 33400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Altaria - Trailblaze - TM020
  (334, 33400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Altaria - Fire Spin - TM024
  (334, 33400, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Altaria - Facade - TM025
  (334, 33400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Altaria - Aerial Ace - TM027
  (334, 33400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Altaria - Bulldoze - TM028
  (334, 33400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Altaria - Swift - TM032
  (334, 33400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Altaria - Endure - TM047
  (334, 33400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Altaria - Sunny Day - TM049
  (334, 33400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Altaria - Rain Dance - TM050
  (334, 33400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Altaria - Snowscape - TM052
  (334, 33400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Altaria - Body Slam - TM066
  (334, 33400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Altaria - Sleep Talk - TM070
  (334, 33400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Altaria - Dragon Claw - TM078
  (334, 33400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 34),
  -- Altaria - Dazzling Gleam - TM079
  (334, 33400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Altaria - Rest - TM085
  (334, 33400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Altaria - Fly - TM097
  (334, 33400, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Altaria - Dragon Dance - TM100
  (334, 33400, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 38),
  -- Altaria - Substitute - TM103
  (334, 33400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Altaria - Will-O-Wisp - TM107
  (334, 33400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Altaria - Tailwind - TM113
  (334, 33400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Altaria - Dragon Pulse - TM115
  (334, 33400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 42),
  -- Altaria - Hyper Voice - TM117
  (334, 33400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Altaria - Heat Wave - TM118
  (334, 33400, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 44),
  -- Altaria - Flamethrower - TM125
  (334, 33400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 45),
  -- Altaria - Play Rough - TM127
  (334, 33400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 46),
  -- Altaria - Helping Hand - TM130
  (334, 33400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Altaria - Ice Beam - TM135
  (334, 33400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Altaria - Fire Blast - TM141
  (334, 33400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Altaria - Earthquake - TM149
  (334, 33400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Altaria - Giga Impact - TM152
  (334, 33400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Altaria - Outrage - TM156
  (334, 33400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Altaria - Hurricane - TM160
  (334, 33400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 53),
  -- Altaria - Hyper Beam - TM163
  (334, 33400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Altaria - Brave Bird - TM164
  (334, 33400, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 55),
  -- Altaria - Solar Beam - TM168
  (334, 33400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Altaria - Draco Meteor - TM169
  (334, 33400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 57),
  -- Altaria - Tera Blast - TM171
  (334, 33400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Altaria - Haze - Egg
  (334, 33400, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Altaria - Feather Dance - Egg
  (334, 33400, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Altaria - Astonish - Egg
  (334, 33400, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Altaria - Roost - Egg
  (334, 33400, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Altaria - Tailwind - Egg
  (334, 33400, 366, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Altaria - Dragon Rush - Egg
  (334, 33400, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Altaria - Defog - Egg
  (334, 33400, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Altaria - Dragon Pulse - Evolution
  (334, 33400, 406, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Zangoose - Scratch - Level 1
  (335, 33500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 1
  (335, 33500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Fury Cutter - Level 8
  (335, 33500, 210, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zangoose - Metal Claw - Level 12
  (335, 33500, 232, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zangoose - Hone Claws - Level 15
  (335, 33500, 468, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zangoose - Slash - Level 19
  (335, 33500, 163, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zangoose - Power Trip - Level 22
  (335, 33500, 681, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zangoose - Crush Claw - Level 26
  (335, 33500, 306, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zangoose - False Swipe - Level 29
  (335, 33500, 206, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zangoose - Switcheroo - Level 33
  (335, 33500, 415, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zangoose - Detect - Level 36
  (335, 33500, 197, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zangoose - X-Scissor - Level 40
  (335, 33500, 404, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zangoose - Taunt - Level 43
  (335, 33500, 269, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Zangoose - Swords Dance - Level 47
  (335, 33500, 14, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Zangoose - Close Combat - Level 50
  (335, 33500, 370, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Zangoose - Take Down - TM001
  (335, 33500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Zangoose - Agility - TM004
  (335, 33500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Zangoose - Protect - TM007
  (335, 33500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Zangoose - Low Kick - TM012
  (335, 33500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Zangoose - Thief - TM018
  (335, 33500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Zangoose - Facade - TM025
  (335, 33500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Zangoose - Aerial Ace - TM027
  (335, 33500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Zangoose - Metal Claw - TM031
  (335, 33500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Zangoose - Swift - TM032
  (335, 33500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Zangoose - Icy Wind - TM034
  (335, 33500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Zangoose - Rock Tomb - TM036
  (335, 33500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Zangoose - Low Sweep - TM039
  (335, 33500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Zangoose - Fling - TM043
  (335, 33500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Zangoose - Endure - TM047
  (335, 33500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Zangoose - Sunny Day - TM049
  (335, 33500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Zangoose - Rain Dance - TM050
  (335, 33500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Zangoose - Dig - TM055
  (335, 33500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Zangoose - False Swipe - TM057
  (335, 33500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Zangoose - Brick Break - TM058
  (335, 33500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Zangoose - Zen Headbutt - TM059
  (335, 33500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Zangoose - Shadow Claw - TM061
  (335, 33500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Zangoose - Body Slam - TM066
  (335, 33500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Zangoose - Fire Punch - TM067
  (335, 33500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Zangoose - Thunder Punch - TM068
  (335, 33500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Zangoose - Ice Punch - TM069
  (335, 33500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Zangoose - Sleep Talk - TM070
  (335, 33500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Zangoose - Seed Bomb - TM071
  (335, 33500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Zangoose - Grass Knot - TM081
  (335, 33500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Zangoose - Thunder Wave - TM082
  (335, 33500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Zangoose - Poison Jab - TM083
  (335, 33500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 46),
  -- Zangoose - Rest - TM085
  (335, 33500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Zangoose - Rock Slide - TM086
  (335, 33500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 48),
  -- Zangoose - Taunt - TM087
  (335, 33500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 49),
  -- Zangoose - Swords Dance - TM088
  (335, 33500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 50),
  -- Zangoose - Gunk Shot - TM102
  (335, 33500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 51),
  -- Zangoose - Substitute - TM103
  (335, 33500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Zangoose - X-Scissor - TM105
  (335, 33500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 53),
  -- Zangoose - Aura Sphere - TM112
  (335, 33500, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 54),
  -- Zangoose - Shadow Ball - TM114
  (335, 33500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Zangoose - Surf - TM123
  (335, 33500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 56),
  -- Zangoose - Flamethrower - TM125
  (335, 33500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 57),
  -- Zangoose - Thunderbolt - TM126
  (335, 33500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 58),
  -- Zangoose - Helping Hand - TM130
  (335, 33500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Zangoose - Baton Pass - TM132
  (335, 33500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 60),
  -- Zangoose - Reversal - TM134
  (335, 33500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 61),
  -- Zangoose - Ice Beam - TM135
  (335, 33500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 62),
  -- Zangoose - Fire Blast - TM141
  (335, 33500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 63),
  -- Zangoose - Blizzard - TM143
  (335, 33500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 64),
  -- Zangoose - Giga Impact - TM152
  (335, 33500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 65),
  -- Zangoose - Focus Blast - TM158
  (335, 33500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 66),
  -- Zangoose - Hyper Beam - TM163
  (335, 33500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Zangoose - Thunder - TM166
  (335, 33500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Zangoose - Close Combat - TM167
  (335, 33500, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 69),
  -- Zangoose - Solar Beam - TM168
  (335, 33500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 70),
  -- Zangoose - Tera Blast - TM171
  (335, 33500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 71),
  -- Zangoose - Double Kick - Reminder
  (335, 33500, 24, 23, NULL, 9, NULL, NULL, NULL, NULL, 72),
  -- Zangoose - Disable - Reminder
  (335, 33500, 50, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Zangoose - Counter - Reminder
  (335, 33500, 68, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Zangoose - Fury Swipes - Reminder
  (335, 33500, 154, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Zangoose - Curse - Reminder
  (335, 33500, 174, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Zangoose - Flail - Reminder
  (335, 33500, 175, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Zangoose - Belly Drum - Reminder
  (335, 33500, 187, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Zangoose - Feint - Reminder
  (335, 33500, 364, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Zangoose - Night Slash - Reminder
  (335, 33500, 400, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Zangoose - Double Hit - Reminder
  (335, 33500, 458, 23, NULL, 9, NULL, NULL, NULL, NULL, 81),
  -- Zangoose - Quick Guard - Reminder
  (335, 33500, 501, 23, NULL, 9, NULL, NULL, NULL, NULL, 82),
  -- Zangoose - Final Gambit - Reminder
  (335, 33500, 515, 23, NULL, 9, NULL, NULL, NULL, NULL, 83),
  -- Seviper - Wrap - Level 1
  (336, 33600, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Swagger - Level 1
  (336, 33600, 207, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 4
  (336, 33600, 44, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Seviper - Lick - Level 6
  (336, 33600, 122, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Seviper - Poison Tail - Level 9
  (336, 33600, 342, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Seviper - Feint - Level 11
  (336, 33600, 364, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Seviper - Screech - Level 14
  (336, 33600, 103, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Seviper - Glare - Level 19
  (336, 33600, 137, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Seviper - Poison Fang - Level 21
  (336, 33600, 305, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Seviper - Venoshock - Level 24
  (336, 33600, 474, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Seviper - Gastro Acid - Level 29
  (336, 33600, 380, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Seviper - Poison Jab - Level 31
  (336, 33600, 398, 23, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Seviper - Haze - Level 34
  (336, 33600, 114, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Seviper - Crunch - Level 39
  (336, 33600, 242, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Seviper - Belch - Level 41
  (336, 33600, 562, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Seviper - Coil - Level 44
  (336, 33600, 489, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Seviper - Sludge Bomb - Level 46
  (336, 33600, 188, 23, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Seviper - Take Down - TM001
  (336, 33600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Seviper - Scary Face - TM006
  (336, 33600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Seviper - Protect - TM007
  (336, 33600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Seviper - Fire Fang - TM008
  (336, 33600, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Seviper - Thunder Fang - TM009
  (336, 33600, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Seviper - Ice Fang - TM010
  (336, 33600, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Seviper - Acid Spray - TM013
  (336, 33600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 24),
  -- Seviper - Thief - TM018
  (336, 33600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Seviper - Trailblaze - TM020
  (336, 33600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Seviper - Pounce - TM021
  (336, 33600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 27),
  -- Seviper - Facade - TM025
  (336, 33600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Seviper - Poison Tail - TM026
  (336, 33600, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 29),
  -- Seviper - Bulldoze - TM028
  (336, 33600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 30),
  -- Seviper - Snarl - TM030
  (336, 33600, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 31),
  -- Seviper - Venoshock - TM045
  (336, 33600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 32),
  -- Seviper - Endure - TM047
  (336, 33600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Seviper - Sunny Day - TM049
  (336, 33600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Seviper - Rain Dance - TM050
  (336, 33600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Seviper - Dig - TM055
  (336, 33600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Seviper - Brick Break - TM058
  (336, 33600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Seviper - Zen Headbutt - TM059
  (336, 33600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 38),
  -- Seviper - Psychic Fangs - TM063
  (336, 33600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 39),
  -- Seviper - Body Slam - TM066
  (336, 33600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Seviper - Sleep Talk - TM070
  (336, 33600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Seviper - Seed Bomb - TM071
  (336, 33600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 42),
  -- Seviper - Poison Jab - TM083
  (336, 33600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 43),
  -- Seviper - Rest - TM085
  (336, 33600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Seviper - Taunt - TM087
  (336, 33600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Seviper - Swords Dance - TM088
  (336, 33600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Seviper - Dark Pulse - TM094
  (336, 33600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Seviper - Iron Head - TM099
  (336, 33600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Seviper - Gunk Shot - TM102
  (336, 33600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 49),
  -- Seviper - Substitute - TM103
  (336, 33600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Seviper - X-Scissor - TM105
  (336, 33600, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 51),
  -- Seviper - Crunch - TM108
  (336, 33600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 52),
  -- Seviper - Giga Drain - TM111
  (336, 33600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 53),
  -- Seviper - Flamethrower - TM125
  (336, 33600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 54),
  -- Seviper - Helping Hand - TM130
  (336, 33600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Seviper - Reversal - TM134
  (336, 33600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 56),
  -- Seviper - Sludge Bomb - TM148
  (336, 33600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Seviper - Earthquake - TM149
  (336, 33600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Seviper - Giga Impact - TM152
  (336, 33600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Seviper - Hyper Beam - TM163
  (336, 33600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Seviper - Tera Blast - TM171
  (336, 33600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Seviper - Body Slam - Egg
  (336, 33600, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Seviper - Scary Face - Egg
  (336, 33600, 184, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Seviper - Stockpile - Egg
  (336, 33600, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Seviper - Spit Up - Egg
  (336, 33600, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Seviper - Swallow - Egg
  (336, 33600, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Seviper - Assurance - Egg
  (336, 33600, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Seviper - Night Slash - Egg
  (336, 33600, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Seviper - Switcheroo - Egg
  (336, 33600, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Seviper - Final Gambit - Egg
  (336, 33600, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Barboach - Water Gun - Level 1
  (339, 33900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barboach - Rest - Level 6
  (339, 33900, 156, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Snore - Level 6
  (339, 33900, 173, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Barboach - Water Pulse - Level 12
  (339, 33900, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 18
  (339, 33900, 133, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barboach - Aqua Tail - Level 24
  (339, 33900, 401, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Barboach - Muddy Water - Level 31
  (339, 33900, 330, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Barboach - Earthquake - Level 36
  (339, 33900, 89, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Barboach - Future Sight - Level 42
  (339, 33900, 248, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Barboach - Fissure - Level 48
  (339, 33900, 90, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Barboach - Take Down - TM001
  (339, 33900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Barboach - Mud-Slap - TM005
  (339, 33900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Barboach - Protect - TM007
  (339, 33900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Barboach - Water Pulse - TM011
  (339, 33900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Barboach - Chilling Water - TM022
  (339, 33900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Barboach - Facade - TM025
  (339, 33900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Barboach - Bulldoze - TM028
  (339, 33900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Barboach - Swift - TM032
  (339, 33900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 19),
  -- Barboach - Icy Wind - TM034
  (339, 33900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Barboach - Mud Shot - TM035
  (339, 33900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Barboach - Rock Tomb - TM036
  (339, 33900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Barboach - Endure - TM047
  (339, 33900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Barboach - Sunny Day - TM049
  (339, 33900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Barboach - Rain Dance - TM050
  (339, 33900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Barboach - Sandstorm - TM051
  (339, 33900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Barboach - Zen Headbutt - TM059
  (339, 33900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Barboach - Sleep Talk - TM070
  (339, 33900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Barboach - Waterfall - TM077
  (339, 33900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Barboach - Stomping Tantrum - TM084
  (339, 33900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 30),
  -- Barboach - Rest - TM085
  (339, 33900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Barboach - Rock Slide - TM086
  (339, 33900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Barboach - Dragon Dance - TM100
  (339, 33900, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 33),
  -- Barboach - Substitute - TM103
  (339, 33900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Barboach - Liquidation - TM110
  (339, 33900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 35),
  -- Barboach - Stealth Rock - TM116
  (339, 33900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 36),
  -- Barboach - Surf - TM123
  (339, 33900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 37),
  -- Barboach - Amnesia - TM128
  (339, 33900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 38),
  -- Barboach - Helping Hand - TM130
  (339, 33900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Barboach - Earth Power - TM133
  (339, 33900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 40),
  -- Barboach - Ice Beam - TM135
  (339, 33900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Barboach - Hydro Pump - TM142
  (339, 33900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Barboach - Blizzard - TM143
  (339, 33900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Barboach - Earthquake - TM149
  (339, 33900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 44),
  -- Barboach - Stone Edge - TM150
  (339, 33900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 45),
  -- Barboach - Outrage - TM156
  (339, 33900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Barboach - Tera Blast - TM171
  (339, 33900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Barboach - Take Down - Egg
  (339, 33900, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Barboach - Thrash - Egg
  (339, 33900, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Barboach - Flail - Egg
  (339, 33900, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Barboach - Spark - Egg
  (339, 33900, 209, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Whiscash - Water Gun - Level 1
  (340, 34000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Rest - Level 1
  (340, 34000, 156, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Snore - Level 1
  (340, 34000, 173, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whiscash - Zen Headbutt - Level 1
  (340, 34000, 428, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Whiscash - Belch - Level 1
  (340, 34000, 562, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Whiscash - Water Pulse - Level 12
  (340, 34000, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Whiscash - Amnesia - Level 18
  (340, 34000, 133, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Whiscash - Aqua Tail - Level 24
  (340, 34000, 401, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Whiscash - Muddy Water - Level 33
  (340, 34000, 330, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Whiscash - Earthquake - Level 40
  (340, 34000, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Whiscash - Future Sight - Level 48
  (340, 34000, 248, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Whiscash - Fissure - Level 56
  (340, 34000, 90, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Whiscash - Take Down - TM001
  (340, 34000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Whiscash - Mud-Slap - TM005
  (340, 34000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Whiscash - Scary Face - TM006
  (340, 34000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Whiscash - Protect - TM007
  (340, 34000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Whiscash - Water Pulse - TM011
  (340, 34000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Whiscash - Chilling Water - TM022
  (340, 34000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Whiscash - Facade - TM025
  (340, 34000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Whiscash - Bulldoze - TM028
  (340, 34000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Whiscash - Swift - TM032
  (340, 34000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Whiscash - Icy Wind - TM034
  (340, 34000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Whiscash - Mud Shot - TM035
  (340, 34000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Whiscash - Rock Tomb - TM036
  (340, 34000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Whiscash - Endure - TM047
  (340, 34000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Whiscash - Sunny Day - TM049
  (340, 34000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Whiscash - Rain Dance - TM050
  (340, 34000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Whiscash - Sandstorm - TM051
  (340, 34000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Whiscash - Zen Headbutt - TM059
  (340, 34000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Whiscash - Body Slam - TM066
  (340, 34000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Whiscash - Sleep Talk - TM070
  (340, 34000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Whiscash - Waterfall - TM077
  (340, 34000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Whiscash - Stomping Tantrum - TM084
  (340, 34000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Whiscash - Rest - TM085
  (340, 34000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Whiscash - Rock Slide - TM086
  (340, 34000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Whiscash - Spikes - TM090
  (340, 34000, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 38),
  -- Whiscash - Dragon Dance - TM100
  (340, 34000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 39),
  -- Whiscash - Substitute - TM103
  (340, 34000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Whiscash - Liquidation - TM110
  (340, 34000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 41),
  -- Whiscash - Stealth Rock - TM116
  (340, 34000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Whiscash - Surf - TM123
  (340, 34000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Whiscash - Amnesia - TM128
  (340, 34000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 44),
  -- Whiscash - Helping Hand - TM130
  (340, 34000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Whiscash - Earth Power - TM133
  (340, 34000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 46),
  -- Whiscash - Ice Beam - TM135
  (340, 34000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 47),
  -- Whiscash - Hydro Pump - TM142
  (340, 34000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 48),
  -- Whiscash - Blizzard - TM143
  (340, 34000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 49),
  -- Whiscash - Earthquake - TM149
  (340, 34000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Whiscash - Stone Edge - TM150
  (340, 34000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 51),
  -- Whiscash - Giga Impact - TM152
  (340, 34000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Whiscash - Outrage - TM156
  (340, 34000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 53),
  -- Whiscash - Hyper Beam - TM163
  (340, 34000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Whiscash - Tera Blast - TM171
  (340, 34000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Whiscash - Take Down - Egg
  (340, 34000, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Whiscash - Thrash - Egg
  (340, 34000, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Whiscash - Flail - Egg
  (340, 34000, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Whiscash - Spark - Egg
  (340, 34000, 209, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Whiscash - Thrash - Evolution
  (340, 34000, 37, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Corphish - Water Gun - Level 1
  (341, 34100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 1
  (341, 34100, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corphish - Leer - Level 4
  (341, 34100, 43, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Corphish - Taunt - Level 8
  (341, 34100, 269, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 12
  (341, 34100, 61, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Corphish - Knock Off - Level 16
  (341, 34100, 282, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Corphish - Double Hit - Level 20
  (341, 34100, 458, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Corphish - Protect - Level 24
  (341, 34100, 182, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 28
  (341, 34100, 400, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Corphish - Razor Shell - Level 32
  (341, 34100, 534, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Corphish - Swords Dance - Level 36
  (341, 34100, 14, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Corphish - Crunch - Level 40
  (341, 34100, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Corphish - Crabhammer - Level 44
  (341, 34100, 152, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Corphish - Endeavor - Level 48
  (341, 34100, 283, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Corphish - Guillotine - Level 52
  (341, 34100, 12, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Corphish - Take Down - TM001
  (341, 34100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Corphish - Protect - TM007
  (341, 34100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Corphish - Water Pulse - TM011
  (341, 34100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Corphish - Thief - TM018
  (341, 34100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Corphish - Chilling Water - TM022
  (341, 34100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Corphish - Facade - TM025
  (341, 34100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Corphish - Metal Claw - TM031
  (341, 34100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Corphish - Icy Wind - TM034
  (341, 34100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Corphish - Mud Shot - TM035
  (341, 34100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Corphish - Rock Tomb - TM036
  (341, 34100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Corphish - Fling - TM043
  (341, 34100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Corphish - Endure - TM047
  (341, 34100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Corphish - Rain Dance - TM050
  (341, 34100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Corphish - Dig - TM055
  (341, 34100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Corphish - False Swipe - TM057
  (341, 34100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 30),
  -- Corphish - Brick Break - TM058
  (341, 34100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Corphish - Body Slam - TM066
  (341, 34100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Corphish - Sleep Talk - TM070
  (341, 34100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Corphish - Waterfall - TM077
  (341, 34100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Corphish - Rest - TM085
  (341, 34100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Corphish - Rock Slide - TM086
  (341, 34100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Corphish - Taunt - TM087
  (341, 34100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Corphish - Swords Dance - TM088
  (341, 34100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Corphish - Dragon Dance - TM100
  (341, 34100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 39),
  -- Corphish - Substitute - TM103
  (341, 34100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Corphish - Iron Defense - TM104
  (341, 34100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Corphish - X-Scissor - TM105
  (341, 34100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 42),
  -- Corphish - Crunch - TM108
  (341, 34100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Corphish - Liquidation - TM110
  (341, 34100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 44),
  -- Corphish - Surf - TM123
  (341, 34100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Corphish - Ice Beam - TM135
  (341, 34100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 46),
  -- Corphish - Hydro Pump - TM142
  (341, 34100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 47),
  -- Corphish - Blizzard - TM143
  (341, 34100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Corphish - Sludge Bomb - TM148
  (341, 34100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 49),
  -- Corphish - Tera Blast - TM171
  (341, 34100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Corphish - Double-Edge - Egg
  (341, 34100, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corphish - Slash - Egg
  (341, 34100, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corphish - Metal Claw - Egg
  (341, 34100, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Ancient Power - Egg
  (341, 34100, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Switcheroo - Egg
  (341, 34100, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Aqua Jet - Egg
  (341, 34100, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Water Gun - Level 1
  (342, 34200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Taunt - Level 1
  (342, 34200, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Bubble Beam - Level 12
  (342, 34200, 61, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Crawdaunt - Knock Off - Level 16
  (342, 34200, 282, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Crawdaunt - Double Hit - Level 20
  (342, 34200, 458, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Crawdaunt - Protect - Level 24
  (342, 34200, 182, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Crawdaunt - Night Slash - Level 28
  (342, 34200, 400, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Crawdaunt - Razor Shell - Level 34
  (342, 34200, 534, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Crawdaunt - Swords Dance - Level 40
  (342, 34200, 14, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Crawdaunt - Crunch - Level 46
  (342, 34200, 242, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Crawdaunt - Crabhammer - Level 52
  (342, 34200, 152, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Crawdaunt - Endeavor - Level 58
  (342, 34200, 283, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Crawdaunt - Guillotine - Level 64
  (342, 34200, 12, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Crawdaunt - Take Down - TM001
  (342, 34200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Crawdaunt - Scary Face - TM006
  (342, 34200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Crawdaunt - Protect - TM007
  (342, 34200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Crawdaunt - Water Pulse - TM011
  (342, 34200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Crawdaunt - Thief - TM018
  (342, 34200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Crawdaunt - Chilling Water - TM022
  (342, 34200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Crawdaunt - Facade - TM025
  (342, 34200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Crawdaunt - Snarl - TM030
  (342, 34200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Crawdaunt - Metal Claw - TM031
  (342, 34200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Crawdaunt - Swift - TM032
  (342, 34200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Crawdaunt - Icy Wind - TM034
  (342, 34200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Crawdaunt - Mud Shot - TM035
  (342, 34200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Crawdaunt - Rock Tomb - TM036
  (342, 34200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Crawdaunt - Fling - TM043
  (342, 34200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Crawdaunt - Avalanche - TM046
  (342, 34200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 30),
  -- Crawdaunt - Endure - TM047
  (342, 34200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Crawdaunt - Rain Dance - TM050
  (342, 34200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Crawdaunt - Dig - TM055
  (342, 34200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Crawdaunt - False Swipe - TM057
  (342, 34200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Crawdaunt - Brick Break - TM058
  (342, 34200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Crawdaunt - Body Slam - TM066
  (342, 34200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Crawdaunt - Sleep Talk - TM070
  (342, 34200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Crawdaunt - Waterfall - TM077
  (342, 34200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 38),
  -- Crawdaunt - Rest - TM085
  (342, 34200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Crawdaunt - Rock Slide - TM086
  (342, 34200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Crawdaunt - Taunt - TM087
  (342, 34200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Crawdaunt - Swords Dance - TM088
  (342, 34200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Crawdaunt - Dark Pulse - TM094
  (342, 34200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Crawdaunt - Dragon Dance - TM100
  (342, 34200, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 44),
  -- Crawdaunt - Substitute - TM103
  (342, 34200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Crawdaunt - Iron Defense - TM104
  (342, 34200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 46),
  -- Crawdaunt - X-Scissor - TM105
  (342, 34200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 47),
  -- Crawdaunt - Crunch - TM108
  (342, 34200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Crawdaunt - Liquidation - TM110
  (342, 34200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 49),
  -- Crawdaunt - Surf - TM123
  (342, 34200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 50),
  -- Crawdaunt - Ice Beam - TM135
  (342, 34200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 51),
  -- Crawdaunt - Nasty Plot - TM140
  (342, 34200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 52),
  -- Crawdaunt - Hydro Pump - TM142
  (342, 34200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Crawdaunt - Blizzard - TM143
  (342, 34200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Crawdaunt - Sludge Bomb - TM148
  (342, 34200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 55),
  -- Crawdaunt - Giga Impact - TM152
  (342, 34200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Crawdaunt - Hyper Beam - TM163
  (342, 34200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Crawdaunt - Close Combat - TM167
  (342, 34200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 58),
  -- Crawdaunt - Tera Blast - TM171
  (342, 34200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Crawdaunt - Double-Edge - Egg
  (342, 34200, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Crawdaunt - Slash - Egg
  (342, 34200, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Crawdaunt - Metal Claw - Egg
  (342, 34200, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Crawdaunt - Ancient Power - Egg
  (342, 34200, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Crawdaunt - Switcheroo - Egg
  (342, 34200, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Crawdaunt - Aqua Jet - Egg
  (342, 34200, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Crawdaunt - Swift - Evolution
  (342, 34200, 129, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 23, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 25
  (349, 34900, 175, 23, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Feebas - Protect - TM007
  (349, 34900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 4),
  -- Feebas - Water Pulse - TM011
  (349, 34900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 5),
  -- Feebas - Confuse Ray - TM017
  (349, 34900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 6),
  -- Feebas - Chilling Water - TM022
  (349, 34900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 7),
  -- Feebas - Facade - TM025
  (349, 34900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 8),
  -- Feebas - Swift - TM032
  (349, 34900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 9),
  -- Feebas - Icy Wind - TM034
  (349, 34900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 10),
  -- Feebas - Mud Shot - TM035
  (349, 34900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 11),
  -- Feebas - Endure - TM047
  (349, 34900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 12),
  -- Feebas - Rain Dance - TM050
  (349, 34900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 13),
  -- Feebas - Sleep Talk - TM070
  (349, 34900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 14),
  -- Feebas - Light Screen - TM075
  (349, 34900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 15),
  -- Feebas - Waterfall - TM077
  (349, 34900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 16),
  -- Feebas - Rest - TM085
  (349, 34900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 17),
  -- Feebas - Substitute - TM103
  (349, 34900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 18),
  -- Feebas - Dragon Pulse - TM115
  (349, 34900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 19),
  -- Feebas - Surf - TM123
  (349, 34900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 20),
  -- Feebas - Ice Beam - TM135
  (349, 34900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 21),
  -- Feebas - Blizzard - TM143
  (349, 34900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 22),
  -- Feebas - Tera Blast - TM171
  (349, 34900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 23),
  -- Feebas - Mist - Egg
  (349, 34900, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Feebas - Hypnosis - Egg
  (349, 34900, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Feebas - Confuse Ray - Egg
  (349, 34900, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Feebas - Haze - Egg
  (349, 34900, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Feebas - Dragon Breath - Egg
  (349, 34900, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Feebas - Mirror Coat - Egg
  (349, 34900, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Feebas - Tickle - Egg
  (349, 34900, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Milotic - Tackle - Level 1
  (350, 35000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Wrap - Level 1
  (350, 35000, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Milotic - Splash - Level 1
  (350, 35000, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Milotic - Flail - Level 1
  (350, 35000, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Milotic - Disarming Voice - Level 4
  (350, 35000, 574, 23, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Milotic - Twister - Level 8
  (350, 35000, 239, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Milotic - Aqua Ring - Level 12
  (350, 35000, 392, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Milotic - Attract - Level 16
  (350, 35000, 213, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Milotic - Life Dew - Level 20
  (350, 35000, 791, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Milotic - Dragon Tail - Level 24
  (350, 35000, 525, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Milotic - Recover - Level 28
  (350, 35000, 105, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Milotic - Aqua Tail - Level 32
  (350, 35000, 401, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Milotic - Safeguard - Level 36
  (350, 35000, 219, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Milotic - Surf - Level 40
  (350, 35000, 57, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Milotic - Rain Dance - Level 44
  (350, 35000, 240, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Milotic - Coil - Level 48
  (350, 35000, 489, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Milotic - Hydro Pump - Level 52
  (350, 35000, 56, 23, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Milotic - Take Down - TM001
  (350, 35000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Milotic - Protect - TM007
  (350, 35000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Milotic - Water Pulse - TM011
  (350, 35000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Milotic - Confuse Ray - TM017
  (350, 35000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Milotic - Disarming Voice - TM019
  (350, 35000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 23),
  -- Milotic - Chilling Water - TM022
  (350, 35000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Milotic - Facade - TM025
  (350, 35000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Milotic - Bulldoze - TM028
  (350, 35000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Milotic - Swift - TM032
  (350, 35000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Milotic - Icy Wind - TM034
  (350, 35000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Milotic - Mud Shot - TM035
  (350, 35000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Milotic - Draining Kiss - TM037
  (350, 35000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 30),
  -- Milotic - Dragon Tail - TM044
  (350, 35000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 31),
  -- Milotic - Avalanche - TM046
  (350, 35000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 32),
  -- Milotic - Endure - TM047
  (350, 35000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Milotic - Rain Dance - TM050
  (350, 35000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Milotic - Body Slam - TM066
  (350, 35000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Milotic - Sleep Talk - TM070
  (350, 35000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Milotic - Light Screen - TM075
  (350, 35000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Milotic - Waterfall - TM077
  (350, 35000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 38),
  -- Milotic - Rest - TM085
  (350, 35000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Milotic - Imprison - TM092
  (350, 35000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Milotic - Iron Head - TM099
  (350, 35000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Milotic - Dragon Dance - TM100
  (350, 35000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 42),
  -- Milotic - Substitute - TM103
  (350, 35000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Milotic - Dragon Pulse - TM115
  (350, 35000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 44),
  -- Milotic - Surf - TM123
  (350, 35000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Milotic - Helping Hand - TM130
  (350, 35000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Milotic - Ice Beam - TM135
  (350, 35000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 47),
  -- Milotic - Hydro Pump - TM142
  (350, 35000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 48),
  -- Milotic - Blizzard - TM143
  (350, 35000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 49),
  -- Milotic - Giga Impact - TM152
  (350, 35000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Milotic - Hyper Beam - TM163
  (350, 35000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Milotic - Tera Blast - TM171
  (350, 35000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Milotic - Mist - Egg
  (350, 35000, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Milotic - Hypnosis - Egg
  (350, 35000, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Milotic - Confuse Ray - Egg
  (350, 35000, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Milotic - Haze - Egg
  (350, 35000, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Milotic - Dragon Breath - Egg
  (350, 35000, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Milotic - Mirror Coat - Egg
  (350, 35000, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Milotic - Tickle - Egg
  (350, 35000, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Milotic - Water Pulse - Evolution
  (350, 35000, 352, 23, NULL, 7, NULL, NULL, NULL, NULL, 60);
