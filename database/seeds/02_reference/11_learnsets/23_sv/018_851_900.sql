-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- Correction: legendary and mythical rows and every form's Scarlet / Violet
-- TMs are checked against each game's own data (PKHeX learnset and personal
-- tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 851-900.
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
  -- Sinistea - Withdraw - Level 1
  (854, 85400, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sinistea - Astonish - Level 1
  (854, 85400, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sinistea - Aromatic Mist - Level 6
  (854, 85400, 597, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sinistea - Mega Drain - Level 12
  (854, 85400, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Sinistea - Sucker Punch - Level 24
  (854, 85400, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Sinistea - Sweet Scent - Level 30
  (854, 85400, 230, 23, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Sinistea - Giga Drain - Level 36
  (854, 85400, 202, 23, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Sinistea - Nasty Plot - Level 42
  (854, 85400, 417, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Sinistea - Shadow Ball - Level 48
  (854, 85400, 247, 23, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Sinistea - Memento - Level 54
  (854, 85400, 262, 23, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Sinistea - Shell Smash - Level 60
  (854, 85400, 504, 23, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Sinistea - Protect - TM007
  (854, 85400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Sinistea - Psybeam - TM016
  (854, 85400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 13),
  -- Sinistea - Confuse Ray - TM017
  (854, 85400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 14),
  -- Sinistea - Facade - TM025
  (854, 85400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 15),
  -- Sinistea - Hex - TM029
  (854, 85400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 16),
  -- Sinistea - Magical Leaf - TM033
  (854, 85400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 17),
  -- Sinistea - Stored Power - TM041
  (854, 85400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 18),
  -- Sinistea - Night Shade - TM042
  (854, 85400, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 19),
  -- Sinistea - Endure - TM047
  (854, 85400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Sinistea - Psyshock - TM054
  (854, 85400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 21),
  -- Sinistea - Foul Play - TM062
  (854, 85400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 22),
  -- Sinistea - Sleep Talk - TM070
  (854, 85400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Sinistea - Metronome - TM080
  (854, 85400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 24),
  -- Sinistea - Rest - TM085
  (854, 85400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Sinistea - Imprison - TM092
  (854, 85400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 26),
  -- Sinistea - Dark Pulse - TM094
  (854, 85400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 27),
  -- Sinistea - Skill Swap - TM098
  (854, 85400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 28),
  -- Sinistea - Substitute - TM103
  (854, 85400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Sinistea - Will-O-Wisp - TM107
  (854, 85400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 30),
  -- Sinistea - Trick - TM109
  (854, 85400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 31),
  -- Sinistea - Giga Drain - TM111
  (854, 85400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 32),
  -- Sinistea - Shadow Ball - TM114
  (854, 85400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 33),
  -- Sinistea - Psychic - TM120
  (854, 85400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 34),
  -- Sinistea - Calm Mind - TM129
  (854, 85400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 35),
  -- Sinistea - Baton Pass - TM132
  (854, 85400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 36),
  -- Sinistea - Nasty Plot - TM140
  (854, 85400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 37),
  -- Sinistea - Phantom Force - TM151
  (854, 85400, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 38),
  -- Sinistea - Trick Room - TM161
  (854, 85400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 39),
  -- Sinistea - Tera Blast - TM171
  (854, 85400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Sinistea - Ally Switch - Egg
  (854, 85400, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Polteageist - Mega Drain - Level 1
  (855, 85500, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Polteageist - Withdraw - Level 1
  (855, 85500, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Polteageist - Astonish - Level 1
  (855, 85500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Polteageist - Aromatic Mist - Level 1
  (855, 85500, 597, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Polteageist - Strength Sap - Level 1
  (855, 85500, 668, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Polteageist - Protect - Level 18
  (855, 85500, 182, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Polteageist - Sucker Punch - Level 24
  (855, 85500, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Polteageist - Sweet Scent - Level 30
  (855, 85500, 230, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Polteageist - Giga Drain - Level 36
  (855, 85500, 202, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Polteageist - Nasty Plot - Level 42
  (855, 85500, 417, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Polteageist - Shadow Ball - Level 48
  (855, 85500, 247, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Polteageist - Memento - Level 54
  (855, 85500, 262, 23, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Polteageist - Shell Smash - Level 60
  (855, 85500, 504, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Polteageist - Curse - Level 66
  (855, 85500, 174, 23, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Polteageist - Protect - TM007
  (855, 85500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Polteageist - Psybeam - TM016
  (855, 85500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 16),
  -- Polteageist - Confuse Ray - TM017
  (855, 85500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Polteageist - Facade - TM025
  (855, 85500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Polteageist - Hex - TM029
  (855, 85500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Polteageist - Magical Leaf - TM033
  (855, 85500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Polteageist - Stored Power - TM041
  (855, 85500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 21),
  -- Polteageist - Night Shade - TM042
  (855, 85500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 22),
  -- Polteageist - Endure - TM047
  (855, 85500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Polteageist - Psyshock - TM054
  (855, 85500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 24),
  -- Polteageist - Foul Play - TM062
  (855, 85500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 25),
  -- Polteageist - Sleep Talk - TM070
  (855, 85500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Polteageist - Reflect - TM074
  (855, 85500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 27),
  -- Polteageist - Light Screen - TM075
  (855, 85500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Polteageist - Metronome - TM080
  (855, 85500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 29),
  -- Polteageist - Rest - TM085
  (855, 85500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Polteageist - Imprison - TM092
  (855, 85500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 31),
  -- Polteageist - Dark Pulse - TM094
  (855, 85500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 32),
  -- Polteageist - Skill Swap - TM098
  (855, 85500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 33),
  -- Polteageist - Substitute - TM103
  (855, 85500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Polteageist - Will-O-Wisp - TM107
  (855, 85500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 35),
  -- Polteageist - Trick - TM109
  (855, 85500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 36),
  -- Polteageist - Giga Drain - TM111
  (855, 85500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Polteageist - Shadow Ball - TM114
  (855, 85500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 38),
  -- Polteageist - Psychic - TM120
  (855, 85500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 39),
  -- Polteageist - Calm Mind - TM129
  (855, 85500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Polteageist - Baton Pass - TM132
  (855, 85500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 41),
  -- Polteageist - Nasty Plot - TM140
  (855, 85500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 42),
  -- Polteageist - Phantom Force - TM151
  (855, 85500, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 43),
  -- Polteageist - Giga Impact - TM152
  (855, 85500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Polteageist - Trick Room - TM161
  (855, 85500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 45),
  -- Polteageist - Hyper Beam - TM163
  (855, 85500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Polteageist - Tera Blast - TM171
  (855, 85500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Polteageist - Ally Switch - Egg
  (855, 85500, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Polteageist - Teatime - Evolution
  (855, 85500, 752, 23, NULL, 7, NULL, NULL, NULL, NULL, 49),
  -- Hatenna - Confusion - Level 1
  (856, 85600, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hatenna - Play Nice - Level 1
  (856, 85600, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hatenna - Life Dew - Level 5
  (856, 85600, 791, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Hatenna - Disarming Voice - Level 10
  (856, 85600, 574, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hatenna - Aromatic Mist - Level 15
  (856, 85600, 597, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Hatenna - Psybeam - Level 20
  (856, 85600, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Hatenna - Heal Pulse - Level 25
  (856, 85600, 505, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hatenna - Dazzling Gleam - Level 30
  (856, 85600, 605, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Hatenna - Calm Mind - Level 35
  (856, 85600, 347, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Hatenna - Psychic - Level 40
  (856, 85600, 94, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Hatenna - Healing Wish - Level 45
  (856, 85600, 361, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Hatenna - Charm - TM002
  (856, 85600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 12),
  -- Hatenna - Protect - TM007
  (856, 85600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Hatenna - Psybeam - TM016
  (856, 85600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 14),
  -- Hatenna - Disarming Voice - TM019
  (856, 85600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Hatenna - Facade - TM025
  (856, 85600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Hatenna - Swift - TM032
  (856, 85600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Hatenna - Magical Leaf - TM033
  (856, 85600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Hatenna - Draining Kiss - TM037
  (856, 85600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 19),
  -- Hatenna - Stored Power - TM041
  (856, 85600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 20),
  -- Hatenna - Endure - TM047
  (856, 85600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Hatenna - Psyshock - TM054
  (856, 85600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 22),
  -- Hatenna - Sleep Talk - TM070
  (856, 85600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Hatenna - Reflect - TM074
  (856, 85600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 24),
  -- Hatenna - Light Screen - TM075
  (856, 85600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 25),
  -- Hatenna - Dazzling Gleam - TM079
  (856, 85600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 26),
  -- Hatenna - Metronome - TM080
  (856, 85600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 27),
  -- Hatenna - Thunder Wave - TM082
  (856, 85600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 28),
  -- Hatenna - Rest - TM085
  (856, 85600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Hatenna - Imprison - TM092
  (856, 85600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 30),
  -- Hatenna - Dark Pulse - TM094
  (856, 85600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 31),
  -- Hatenna - Skill Swap - TM098
  (856, 85600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 32),
  -- Hatenna - Substitute - TM103
  (856, 85600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Hatenna - Trick - TM109
  (856, 85600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 34),
  -- Hatenna - Giga Drain - TM111
  (856, 85600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Hatenna - Psychic - TM120
  (856, 85600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 36),
  -- Hatenna - Play Rough - TM127
  (856, 85600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Hatenna - Calm Mind - TM129
  (856, 85600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 38),
  -- Hatenna - Helping Hand - TM130
  (856, 85600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Hatenna - Baton Pass - TM132
  (856, 85600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 40),
  -- Hatenna - Psychic Terrain - TM138
  (856, 85600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 41),
  -- Hatenna - Misty Terrain - TM139
  (856, 85600, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 42),
  -- Hatenna - Trick Room - TM161
  (856, 85600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Hatenna - Tera Blast - TM171
  (856, 85600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Hatenna - After You - Egg
  (856, 85600, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hatenna - Quash - Egg
  (856, 85600, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hatenna - Mystical Fire - Egg
  (856, 85600, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hatenna - Nuzzle - Egg
  (856, 85600, 609, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hattrem - Confusion - Level 1
  (857, 85700, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hattrem - Disarming Voice - Level 1
  (857, 85700, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hattrem - Play Nice - Level 1
  (857, 85700, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hattrem - Life Dew - Level 1
  (857, 85700, 791, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hattrem - Aromatic Mist - Level 15
  (857, 85700, 597, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Hattrem - Psybeam - Level 20
  (857, 85700, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Hattrem - Heal Pulse - Level 25
  (857, 85700, 505, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hattrem - Dazzling Gleam - Level 30
  (857, 85700, 605, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Hattrem - Calm Mind - Level 37
  (857, 85700, 347, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Hattrem - Psychic - Level 44
  (857, 85700, 94, 23, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Hattrem - Healing Wish - Level 51
  (857, 85700, 361, 23, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Hattrem - Charm - TM002
  (857, 85700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 12),
  -- Hattrem - Protect - TM007
  (857, 85700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Hattrem - Psybeam - TM016
  (857, 85700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 14),
  -- Hattrem - Disarming Voice - TM019
  (857, 85700, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 15),
  -- Hattrem - Facade - TM025
  (857, 85700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Hattrem - Swift - TM032
  (857, 85700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Hattrem - Magical Leaf - TM033
  (857, 85700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Hattrem - Draining Kiss - TM037
  (857, 85700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 19),
  -- Hattrem - Stored Power - TM041
  (857, 85700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 20),
  -- Hattrem - Endure - TM047
  (857, 85700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Hattrem - Psyshock - TM054
  (857, 85700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 22),
  -- Hattrem - Sleep Talk - TM070
  (857, 85700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Hattrem - Reflect - TM074
  (857, 85700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 24),
  -- Hattrem - Light Screen - TM075
  (857, 85700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 25),
  -- Hattrem - Dazzling Gleam - TM079
  (857, 85700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 26),
  -- Hattrem - Metronome - TM080
  (857, 85700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 27),
  -- Hattrem - Thunder Wave - TM082
  (857, 85700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 28),
  -- Hattrem - Rest - TM085
  (857, 85700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Hattrem - Imprison - TM092
  (857, 85700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 30),
  -- Hattrem - Dark Pulse - TM094
  (857, 85700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 31),
  -- Hattrem - Skill Swap - TM098
  (857, 85700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 32),
  -- Hattrem - Substitute - TM103
  (857, 85700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Hattrem - Trick - TM109
  (857, 85700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 34),
  -- Hattrem - Giga Drain - TM111
  (857, 85700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Hattrem - Psychic - TM120
  (857, 85700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 36),
  -- Hattrem - Play Rough - TM127
  (857, 85700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Hattrem - Calm Mind - TM129
  (857, 85700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 38),
  -- Hattrem - Helping Hand - TM130
  (857, 85700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Hattrem - Baton Pass - TM132
  (857, 85700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 40),
  -- Hattrem - Psychic Terrain - TM138
  (857, 85700, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 41),
  -- Hattrem - Misty Terrain - TM139
  (857, 85700, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 42),
  -- Hattrem - Trick Room - TM161
  (857, 85700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Hattrem - Tera Blast - TM171
  (857, 85700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Hattrem - After You - Egg
  (857, 85700, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hattrem - Quash - Egg
  (857, 85700, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hattrem - Mystical Fire - Egg
  (857, 85700, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hattrem - Nuzzle - Egg
  (857, 85700, 609, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hattrem - Brutal Swing - Evolution
  (857, 85700, 693, 23, NULL, 7, NULL, NULL, NULL, NULL, 49),
  -- Hatterene - Confusion - Level 1
  (858, 85800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hatterene - Disarming Voice - Level 1
  (858, 85800, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hatterene - Play Nice - Level 1
  (858, 85800, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hatterene - Brutal Swing - Level 1
  (858, 85800, 693, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hatterene - Life Dew - Level 1
  (858, 85800, 791, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hatterene - Aromatic Mist - Level 15
  (858, 85800, 597, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hatterene - Psybeam - Level 20
  (858, 85800, 60, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hatterene - Heal Pulse - Level 25
  (858, 85800, 505, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Hatterene - Dazzling Gleam - Level 30
  (858, 85800, 605, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Hatterene - Calm Mind - Level 37
  (858, 85800, 347, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Hatterene - Psychic - Level 46
  (858, 85800, 94, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Hatterene - Healing Wish - Level 55
  (858, 85800, 361, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Hatterene - Magic Powder - Level 64
  (858, 85800, 750, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Hatterene - Charm - TM002
  (858, 85800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Hatterene - Agility - TM004
  (858, 85800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Hatterene - Protect - TM007
  (858, 85800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Hatterene - Psybeam - TM016
  (858, 85800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 17),
  -- Hatterene - Disarming Voice - TM019
  (858, 85800, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Hatterene - Facade - TM025
  (858, 85800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Hatterene - Swift - TM032
  (858, 85800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Hatterene - Magical Leaf - TM033
  (858, 85800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Hatterene - Draining Kiss - TM037
  (858, 85800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 22),
  -- Hatterene - Stored Power - TM041
  (858, 85800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Hatterene - Endure - TM047
  (858, 85800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Hatterene - Psyshock - TM054
  (858, 85800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 25),
  -- Hatterene - Shadow Claw - TM061
  (858, 85800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 26),
  -- Hatterene - Sleep Talk - TM070
  (858, 85800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Hatterene - Reflect - TM074
  (858, 85800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Hatterene - Light Screen - TM075
  (858, 85800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Hatterene - Dazzling Gleam - TM079
  (858, 85800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Hatterene - Metronome - TM080
  (858, 85800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 31),
  -- Hatterene - Thunder Wave - TM082
  (858, 85800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Hatterene - Rest - TM085
  (858, 85800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Hatterene - Swords Dance - TM088
  (858, 85800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Hatterene - Imprison - TM092
  (858, 85800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Hatterene - Dark Pulse - TM094
  (858, 85800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Hatterene - Skill Swap - TM098
  (858, 85800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 37),
  -- Hatterene - Substitute - TM103
  (858, 85800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Hatterene - Trick - TM109
  (858, 85800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 39),
  -- Hatterene - Giga Drain - TM111
  (858, 85800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Hatterene - Shadow Ball - TM114
  (858, 85800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Hatterene - Psychic - TM120
  (858, 85800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Hatterene - Play Rough - TM127
  (858, 85800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Hatterene - Calm Mind - TM129
  (858, 85800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Hatterene - Helping Hand - TM130
  (858, 85800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Hatterene - Baton Pass - TM132
  (858, 85800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Hatterene - Psychic Terrain - TM138
  (858, 85800, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 47),
  -- Hatterene - Misty Terrain - TM139
  (858, 85800, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 48),
  -- Hatterene - Giga Impact - TM152
  (858, 85800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Hatterene - Trick Room - TM161
  (858, 85800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 50),
  -- Hatterene - Hyper Beam - TM163
  (858, 85800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Hatterene - Tera Blast - TM171
  (858, 85800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Hatterene - After You - Egg
  (858, 85800, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hatterene - Quash - Egg
  (858, 85800, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Hatterene - Mystical Fire - Egg
  (858, 85800, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Hatterene - Nuzzle - Egg
  (858, 85800, 609, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Hatterene - Psycho Cut - Evolution
  (858, 85800, 427, 23, NULL, 7, NULL, NULL, NULL, NULL, 57),
  -- Impidimp - Fake Out - Level 1
  (859, 85900, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Impidimp - Confide - Level 1
  (859, 85900, 590, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Impidimp - Bite - Level 4
  (859, 85900, 44, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Impidimp - Flatter - Level 8
  (859, 85900, 260, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Impidimp - Fake Tears - Level 12
  (859, 85900, 313, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Impidimp - Assurance - Level 16
  (859, 85900, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Impidimp - Swagger - Level 20
  (859, 85900, 207, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Impidimp - Sucker Punch - Level 24
  (859, 85900, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Impidimp - Torment - Level 28
  (859, 85900, 259, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Impidimp - Dark Pulse - Level 33
  (859, 85900, 399, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Impidimp - Nasty Plot - Level 36
  (859, 85900, 417, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Impidimp - Play Rough - Level 40
  (859, 85900, 583, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Impidimp - Foul Play - Level 44
  (859, 85900, 492, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Impidimp - Take Down - TM001
  (859, 85900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Impidimp - Fake Tears - TM003
  (859, 85900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Impidimp - Scary Face - TM006
  (859, 85900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Impidimp - Protect - TM007
  (859, 85900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Impidimp - Low Kick - TM012
  (859, 85900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Impidimp - Thief - TM018
  (859, 85900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Impidimp - Trailblaze - TM020
  (859, 85900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Impidimp - Chilling Water - TM022
  (859, 85900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Impidimp - Facade - TM025
  (859, 85900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Impidimp - Draining Kiss - TM037
  (859, 85900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Impidimp - Fling - TM043
  (859, 85900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Impidimp - Endure - TM047
  (859, 85900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Impidimp - Foul Play - TM062
  (859, 85900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 26),
  -- Impidimp - Sleep Talk - TM070
  (859, 85900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Impidimp - Drain Punch - TM073
  (859, 85900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 28),
  -- Impidimp - Reflect - TM074
  (859, 85900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Impidimp - Light Screen - TM075
  (859, 85900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Impidimp - Dazzling Gleam - TM079
  (859, 85900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Impidimp - Metronome - TM080
  (859, 85900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 32),
  -- Impidimp - Thunder Wave - TM082
  (859, 85900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Impidimp - Rest - TM085
  (859, 85900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Impidimp - Taunt - TM087
  (859, 85900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 35),
  -- Impidimp - Dark Pulse - TM094
  (859, 85900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Impidimp - Leech Life - TM095
  (859, 85900, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 37),
  -- Impidimp - Substitute - TM103
  (859, 85900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Impidimp - Trick - TM109
  (859, 85900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 39),
  -- Impidimp - Play Rough - TM127
  (859, 85900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 40),
  -- Impidimp - Misty Terrain - TM139
  (859, 85900, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 41),
  -- Impidimp - Nasty Plot - TM140
  (859, 85900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 42),
  -- Impidimp - Tera Blast - TM171
  (859, 85900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Impidimp - Parting Shot - Egg
  (859, 85900, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Morgrem - Bite - Level 1
  (860, 86000, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morgrem - Fake Out - Level 1
  (860, 86000, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Morgrem - Flatter - Level 1
  (860, 86000, 260, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Morgrem - Confide - Level 1
  (860, 86000, 590, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Morgrem - Fake Tears - Level 12
  (860, 86000, 313, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Morgrem - Assurance - Level 16
  (860, 86000, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Morgrem - Swagger - Level 20
  (860, 86000, 207, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Morgrem - Sucker Punch - Level 24
  (860, 86000, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Morgrem - Torment - Level 28
  (860, 86000, 259, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Morgrem - Dark Pulse - Level 35
  (860, 86000, 399, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Morgrem - Nasty Plot - Level 40
  (860, 86000, 417, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Morgrem - Play Rough - Level 46
  (860, 86000, 583, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Morgrem - Foul Play - Level 52
  (860, 86000, 492, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Morgrem - Take Down - TM001
  (860, 86000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Morgrem - Fake Tears - TM003
  (860, 86000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Morgrem - Scary Face - TM006
  (860, 86000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Morgrem - Protect - TM007
  (860, 86000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Morgrem - Low Kick - TM012
  (860, 86000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Morgrem - Thief - TM018
  (860, 86000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Morgrem - Trailblaze - TM020
  (860, 86000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Morgrem - Chilling Water - TM022
  (860, 86000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Morgrem - Facade - TM025
  (860, 86000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Morgrem - Draining Kiss - TM037
  (860, 86000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Morgrem - Fling - TM043
  (860, 86000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Morgrem - Endure - TM047
  (860, 86000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Morgrem - Shadow Claw - TM061
  (860, 86000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 26),
  -- Morgrem - Foul Play - TM062
  (860, 86000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 27),
  -- Morgrem - Sleep Talk - TM070
  (860, 86000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Morgrem - Drain Punch - TM073
  (860, 86000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 29),
  -- Morgrem - Reflect - TM074
  (860, 86000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Morgrem - Light Screen - TM075
  (860, 86000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Morgrem - Dazzling Gleam - TM079
  (860, 86000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Morgrem - Metronome - TM080
  (860, 86000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 33),
  -- Morgrem - Thunder Wave - TM082
  (860, 86000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Morgrem - Rest - TM085
  (860, 86000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Morgrem - Taunt - TM087
  (860, 86000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Morgrem - Imprison - TM092
  (860, 86000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 37),
  -- Morgrem - Dark Pulse - TM094
  (860, 86000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 38),
  -- Morgrem - Leech Life - TM095
  (860, 86000, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 39),
  -- Morgrem - Substitute - TM103
  (860, 86000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Morgrem - Trick - TM109
  (860, 86000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Morgrem - Play Rough - TM127
  (860, 86000, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Morgrem - Misty Terrain - TM139
  (860, 86000, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 43),
  -- Morgrem - Nasty Plot - TM140
  (860, 86000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Morgrem - Tera Blast - TM171
  (860, 86000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Morgrem - Parting Shot - Egg
  (860, 86000, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Morgrem - False Surrender - Evolution
  (860, 86000, 793, 23, NULL, 7, NULL, NULL, NULL, NULL, 47),
  -- Grimmsnarl - Bite - Level 1
  (861, 86100, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimmsnarl - Fake Out - Level 1
  (861, 86100, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimmsnarl - Flatter - Level 1
  (861, 86100, 260, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grimmsnarl - Bulk Up - Level 1
  (861, 86100, 339, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grimmsnarl - Confide - Level 1
  (861, 86100, 590, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Grimmsnarl - False Surrender - Level 1
  (861, 86100, 793, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Grimmsnarl - Fake Tears - Level 12
  (861, 86100, 313, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Grimmsnarl - Assurance - Level 16
  (861, 86100, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Grimmsnarl - Swagger - Level 20
  (861, 86100, 207, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Grimmsnarl - Sucker Punch - Level 24
  (861, 86100, 389, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Grimmsnarl - Torment - Level 28
  (861, 86100, 259, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Grimmsnarl - Dark Pulse - Level 35
  (861, 86100, 399, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Grimmsnarl - Nasty Plot - Level 40
  (861, 86100, 417, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimmsnarl - Play Rough - Level 48
  (861, 86100, 583, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Grimmsnarl - Foul Play - Level 56
  (861, 86100, 492, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Grimmsnarl - Hammer Arm - Level 64
  (861, 86100, 359, 23, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Grimmsnarl - Take Down - TM001
  (861, 86100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Grimmsnarl - Fake Tears - TM003
  (861, 86100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Grimmsnarl - Scary Face - TM006
  (861, 86100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Grimmsnarl - Protect - TM007
  (861, 86100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Grimmsnarl - Low Kick - TM012
  (861, 86100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Grimmsnarl - Thief - TM018
  (861, 86100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Grimmsnarl - Trailblaze - TM020
  (861, 86100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Grimmsnarl - Chilling Water - TM022
  (861, 86100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Grimmsnarl - Facade - TM025
  (861, 86100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Grimmsnarl - Draining Kiss - TM037
  (861, 86100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 26),
  -- Grimmsnarl - Low Sweep - TM039
  (861, 86100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Grimmsnarl - Fling - TM043
  (861, 86100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Grimmsnarl - Endure - TM047
  (861, 86100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Grimmsnarl - Brick Break - TM058
  (861, 86100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Grimmsnarl - Shadow Claw - TM061
  (861, 86100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Grimmsnarl - Foul Play - TM062
  (861, 86100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Grimmsnarl - Bulk Up - TM064
  (861, 86100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 33),
  -- Grimmsnarl - Body Slam - TM066
  (861, 86100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Grimmsnarl - Fire Punch - TM067
  (861, 86100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Grimmsnarl - Thunder Punch - TM068
  (861, 86100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Grimmsnarl - Ice Punch - TM069
  (861, 86100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Grimmsnarl - Sleep Talk - TM070
  (861, 86100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Grimmsnarl - Drain Punch - TM073
  (861, 86100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Grimmsnarl - Reflect - TM074
  (861, 86100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Grimmsnarl - Light Screen - TM075
  (861, 86100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Grimmsnarl - Dazzling Gleam - TM079
  (861, 86100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 42),
  -- Grimmsnarl - Metronome - TM080
  (861, 86100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 43),
  -- Grimmsnarl - Thunder Wave - TM082
  (861, 86100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 44),
  -- Grimmsnarl - Stomping Tantrum - TM084
  (861, 86100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Grimmsnarl - Rest - TM085
  (861, 86100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Grimmsnarl - Taunt - TM087
  (861, 86100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Grimmsnarl - Body Press - TM089
  (861, 86100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 48),
  -- Grimmsnarl - Imprison - TM092
  (861, 86100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 49),
  -- Grimmsnarl - Dark Pulse - TM094
  (861, 86100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 50),
  -- Grimmsnarl - Leech Life - TM095
  (861, 86100, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 51),
  -- Grimmsnarl - Substitute - TM103
  (861, 86100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Grimmsnarl - Crunch - TM108
  (861, 86100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Grimmsnarl - Trick - TM109
  (861, 86100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 54),
  -- Grimmsnarl - Play Rough - TM127
  (861, 86100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 55),
  -- Grimmsnarl - Misty Terrain - TM139
  (861, 86100, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 56),
  -- Grimmsnarl - Nasty Plot - TM140
  (861, 86100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 57),
  -- Grimmsnarl - Giga Impact - TM152
  (861, 86100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Grimmsnarl - Focus Blast - TM158
  (861, 86100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Grimmsnarl - Hyper Beam - TM163
  (861, 86100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Grimmsnarl - Tera Blast - TM171
  (861, 86100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Grimmsnarl - Parting Shot - Egg
  (861, 86100, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grimmsnarl - Spirit Break - Evolution
  (861, 86100, 789, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Perrserker - Scratch - Level 1
  (863, 86300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Perrserker - Growl - Level 1
  (863, 86300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Perrserker - Fake Out - Level 1
  (863, 86300, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Perrserker - Iron Defense - Level 1
  (863, 86300, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Perrserker - Metal Burst - Level 1
  (863, 86300, 368, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Perrserker - Hone Claws - Level 1
  (863, 86300, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Perrserker - Pay Day - Level 12
  (863, 86300, 6, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Perrserker - Metal Claw - Level 16
  (863, 86300, 232, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Perrserker - Taunt - Level 20
  (863, 86300, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Perrserker - Swagger - Level 24
  (863, 86300, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Perrserker - Fury Swipes - Level 31
  (863, 86300, 154, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Perrserker - Screech - Level 36
  (863, 86300, 103, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Perrserker - Slash - Level 42
  (863, 86300, 163, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Perrserker - Metal Sound - Level 48
  (863, 86300, 319, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Perrserker - Thrash - Level 54
  (863, 86300, 37, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Perrserker - Take Down - TM001
  (863, 86300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Perrserker - Charm - TM002
  (863, 86300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Perrserker - Fake Tears - TM003
  (863, 86300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Perrserker - Protect - TM007
  (863, 86300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Perrserker - Thief - TM018
  (863, 86300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Perrserker - Trailblaze - TM020
  (863, 86300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Perrserker - Chilling Water - TM022
  (863, 86300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Perrserker - Facade - TM025
  (863, 86300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Perrserker - Aerial Ace - TM027
  (863, 86300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Perrserker - Metal Claw - TM031
  (863, 86300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Perrserker - Fling - TM043
  (863, 86300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Perrserker - Endure - TM047
  (863, 86300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Perrserker - Sunny Day - TM049
  (863, 86300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Perrserker - Rain Dance - TM050
  (863, 86300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Perrserker - Dig - TM055
  (863, 86300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Perrserker - False Swipe - TM057
  (863, 86300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 31),
  -- Perrserker - Brick Break - TM058
  (863, 86300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Perrserker - U-turn - TM060
  (863, 86300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Perrserker - Shadow Claw - TM061
  (863, 86300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Perrserker - Foul Play - TM062
  (863, 86300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Perrserker - Body Slam - TM066
  (863, 86300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Perrserker - Sleep Talk - TM070
  (863, 86300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Perrserker - Seed Bomb - TM071
  (863, 86300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Perrserker - Metronome - TM080
  (863, 86300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 39),
  -- Perrserker - Rest - TM085
  (863, 86300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Perrserker - Taunt - TM087
  (863, 86300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Perrserker - Swords Dance - TM088
  (863, 86300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Perrserker - Flash Cannon - TM093
  (863, 86300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Perrserker - Dark Pulse - TM094
  (863, 86300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 44),
  -- Perrserker - Iron Head - TM099
  (863, 86300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Perrserker - Gunk Shot - TM102
  (863, 86300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 46),
  -- Perrserker - Substitute - TM103
  (863, 86300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Perrserker - Iron Defense - TM104
  (863, 86300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 48),
  -- Perrserker - X-Scissor - TM105
  (863, 86300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 49),
  -- Perrserker - Crunch - TM108
  (863, 86300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 50),
  -- Perrserker - Shadow Ball - TM114
  (863, 86300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Perrserker - Stealth Rock - TM116
  (863, 86300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 52),
  -- Perrserker - Hyper Voice - TM117
  (863, 86300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 53),
  -- Perrserker - Heavy Slam - TM121
  (863, 86300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 54),
  -- Perrserker - Thunderbolt - TM126
  (863, 86300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 55),
  -- Perrserker - Play Rough - TM127
  (863, 86300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 56),
  -- Perrserker - Amnesia - TM128
  (863, 86300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 57),
  -- Perrserker - Helping Hand - TM130
  (863, 86300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Perrserker - Baton Pass - TM132
  (863, 86300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 59),
  -- Perrserker - Nasty Plot - TM140
  (863, 86300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 60),
  -- Perrserker - Giga Impact - TM152
  (863, 86300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Perrserker - Hyper Beam - TM163
  (863, 86300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Perrserker - Thunder - TM166
  (863, 86300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 63),
  -- Perrserker - Close Combat - TM167
  (863, 86300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 64),
  -- Perrserker - Steel Beam - TM170
  (863, 86300, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 65),
  -- Perrserker - Tera Blast - TM171
  (863, 86300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Perrserker - Double-Edge - Egg
  (863, 86300, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Perrserker - Curse - Egg
  (863, 86300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Perrserker - Flail - Egg
  (863, 86300, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Perrserker - Spite - Egg
  (863, 86300, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Perrserker - Covet - Egg
  (863, 86300, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Perrserker - Night Slash - Egg
  (863, 86300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Perrserker - Iron Head - Evolution
  (863, 86300, 442, 23, NULL, 7, NULL, NULL, NULL, NULL, 73),
  -- Milcery - Tackle - Level 1
  (868, 86800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milcery - Aromatic Mist - Level 1
  (868, 86800, 597, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milcery - Sweet Kiss - Level 5
  (868, 86800, 186, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Milcery - Sweet Scent - Level 10
  (868, 86800, 230, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Milcery - Draining Kiss - Level 15
  (868, 86800, 577, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Milcery - Charm - Level 20
  (868, 86800, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Milcery - Attract - Level 25
  (868, 86800, 213, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Milcery - Acid Armor - Level 30
  (868, 86800, 151, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Milcery - Dazzling Gleam - Level 35
  (868, 86800, 605, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Milcery - Recover - Level 40
  (868, 86800, 105, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Milcery - Misty Terrain - Level 45
  (868, 86800, 581, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Milcery - Entrainment - Level 50
  (868, 86800, 494, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Milcery - Charm - TM002
  (868, 86800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 13),
  -- Milcery - Protect - TM007
  (868, 86800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Milcery - Facade - TM025
  (868, 86800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 15),
  -- Milcery - Draining Kiss - TM037
  (868, 86800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 16),
  -- Milcery - Stored Power - TM041
  (868, 86800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 17),
  -- Milcery - Endure - TM047
  (868, 86800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Milcery - Sleep Talk - TM070
  (868, 86800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 19),
  -- Milcery - Dazzling Gleam - TM079
  (868, 86800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 20),
  -- Milcery - Rest - TM085
  (868, 86800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 21),
  -- Milcery - Substitute - TM103
  (868, 86800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 22),
  -- Milcery - Helping Hand - TM130
  (868, 86800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 23),
  -- Milcery - Misty Terrain - TM139
  (868, 86800, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 24),
  -- Milcery - Tera Blast - TM171
  (868, 86800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 25),
  -- Milcery - Last Resort - Egg
  (868, 86800, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Milcery - Baby-Doll Eyes - Egg
  (868, 86800, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Alcremie - Tackle - Level 1
  (869, 86900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alcremie - Sweet Kiss - Level 1
  (869, 86900, 186, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alcremie - Sweet Scent - Level 1
  (869, 86900, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alcremie - Aromatic Mist - Level 1
  (869, 86900, 597, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alcremie - Draining Kiss - Level 15
  (869, 86900, 577, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Alcremie - Charm - Level 20
  (869, 86900, 204, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Alcremie - Attract - Level 25
  (869, 86900, 213, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Alcremie - Acid Armor - Level 30
  (869, 86900, 151, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Alcremie - Dazzling Gleam - Level 35
  (869, 86900, 605, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Alcremie - Recover - Level 40
  (869, 86900, 105, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Alcremie - Misty Terrain - Level 45
  (869, 86900, 581, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Alcremie - Entrainment - Level 50
  (869, 86900, 494, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Alcremie - Charm - TM002
  (869, 86900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 13),
  -- Alcremie - Fake Tears - TM003
  (869, 86900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 14),
  -- Alcremie - Protect - TM007
  (869, 86900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Alcremie - Disarming Voice - TM019
  (869, 86900, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 16),
  -- Alcremie - Facade - TM025
  (869, 86900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Alcremie - Magical Leaf - TM033
  (869, 86900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Alcremie - Draining Kiss - TM037
  (869, 86900, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 19),
  -- Alcremie - Stored Power - TM041
  (869, 86900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 20),
  -- Alcremie - Fling - TM043
  (869, 86900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Alcremie - Endure - TM047
  (869, 86900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Alcremie - Psyshock - TM054
  (869, 86900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 23),
  -- Alcremie - Sleep Talk - TM070
  (869, 86900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Alcremie - Drain Punch - TM073
  (869, 86900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 25),
  -- Alcremie - Light Screen - TM075
  (869, 86900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 26),
  -- Alcremie - Dazzling Gleam - TM079
  (869, 86900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 27),
  -- Alcremie - Metronome - TM080
  (869, 86900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 28),
  -- Alcremie - Rest - TM085
  (869, 86900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Alcremie - Imprison - TM092
  (869, 86900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 30),
  -- Alcremie - Substitute - TM103
  (869, 86900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Alcremie - Giga Drain - TM111
  (869, 86900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 32),
  -- Alcremie - Energy Ball - TM119
  (869, 86900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 33),
  -- Alcremie - Psychic - TM120
  (869, 86900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 34),
  -- Alcremie - Encore - TM122
  (869, 86900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 35),
  -- Alcremie - Play Rough - TM127
  (869, 86900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 36),
  -- Alcremie - Calm Mind - TM129
  (869, 86900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 37),
  -- Alcremie - Helping Hand - TM130
  (869, 86900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Alcremie - Misty Terrain - TM139
  (869, 86900, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 39),
  -- Alcremie - Giga Impact - TM152
  (869, 86900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Alcremie - Hyper Beam - TM163
  (869, 86900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 41),
  -- Alcremie - Solar Beam - TM168
  (869, 86900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Alcremie - Tera Blast - TM171
  (869, 86900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Alcremie - Last Resort - Egg
  (869, 86900, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Alcremie - Baby-Doll Eyes - Egg
  (869, 86900, 608, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Alcremie - Decorate - Evolution
  (869, 86900, 777, 23, NULL, 7, NULL, NULL, NULL, NULL, 46),
  -- Falinks - Tackle - Level 1
  (870, 87000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Falinks - Protect - Level 1
  (870, 87000, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Falinks - Rock Smash - Level 5
  (870, 87000, 249, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Falinks - Focus Energy - Level 10
  (870, 87000, 116, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Falinks - Headbutt - Level 15
  (870, 87000, 29, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Falinks - Bulk Up - Level 20
  (870, 87000, 339, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Falinks - Endure - Level 25
  (870, 87000, 203, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Falinks - Reversal - Level 30
  (870, 87000, 179, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Falinks - First Impression - Level 35
  (870, 87000, 660, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Falinks - No Retreat - Level 40
  (870, 87000, 748, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Falinks - Iron Defense - Level 45
  (870, 87000, 334, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Falinks - Close Combat - Level 50
  (870, 87000, 370, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Falinks - Megahorn - Level 55
  (870, 87000, 224, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Falinks - Counter - Level 60
  (870, 87000, 68, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Falinks - Take Down - TM001
  (870, 87000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Falinks - Agility - TM004
  (870, 87000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Falinks - Protect - TM007
  (870, 87000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Falinks - Trailblaze - TM020
  (870, 87000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Falinks - Facade - TM025
  (870, 87000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Falinks - Rock Tomb - TM036
  (870, 87000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Falinks - Endure - TM047
  (870, 87000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Falinks - Sunny Day - TM049
  (870, 87000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Falinks - Rain Dance - TM050
  (870, 87000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Falinks - Smart Strike - TM053
  (870, 87000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 24),
  -- Falinks - False Swipe - TM057
  (870, 87000, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 25),
  -- Falinks - Brick Break - TM058
  (870, 87000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 26),
  -- Falinks - Zen Headbutt - TM059
  (870, 87000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Falinks - Bulk Up - TM064
  (870, 87000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 28),
  -- Falinks - Body Slam - TM066
  (870, 87000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Falinks - Sleep Talk - TM070
  (870, 87000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Falinks - Poison Jab - TM083
  (870, 87000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 31),
  -- Falinks - Rest - TM085
  (870, 87000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Falinks - Rock Slide - TM086
  (870, 87000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Falinks - Swords Dance - TM088
  (870, 87000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Falinks - Body Press - TM089
  (870, 87000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 35),
  -- Falinks - Iron Head - TM099
  (870, 87000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Falinks - Substitute - TM103
  (870, 87000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Falinks - Iron Defense - TM104
  (870, 87000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Falinks - Helping Hand - TM130
  (870, 87000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Falinks - Reversal - TM134
  (870, 87000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 40),
  -- Falinks - Giga Impact - TM152
  (870, 87000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Falinks - Focus Blast - TM158
  (870, 87000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 42),
  -- Falinks - Hyper Beam - TM163
  (870, 87000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Falinks - Close Combat - TM167
  (870, 87000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 44),
  -- Falinks - Tera Blast - TM171
  (870, 87000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Pincurchin - Peck - Level 1
  (871, 87100, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pincurchin - Thunder Shock - Level 1
  (871, 87100, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pincurchin - Water Gun - Level 5
  (871, 87100, 55, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pincurchin - Charge - Level 10
  (871, 87100, 268, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pincurchin - Fury Attack - Level 15
  (871, 87100, 31, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pincurchin - Spark - Level 20
  (871, 87100, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pincurchin - Bubble Beam - Level 25
  (871, 87100, 61, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pincurchin - Recover - Level 30
  (871, 87100, 105, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pincurchin - Curse - Level 35
  (871, 87100, 174, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Pincurchin - Electric Terrain - Level 40
  (871, 87100, 604, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pincurchin - Poison Jab - Level 45
  (871, 87100, 398, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pincurchin - Zing Zap - Level 50
  (871, 87100, 716, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pincurchin - Acupressure - Level 55
  (871, 87100, 367, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Pincurchin - Discharge - Level 60
  (871, 87100, 435, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Pincurchin - Take Down - TM001
  (871, 87100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Pincurchin - Protect - TM007
  (871, 87100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Pincurchin - Chilling Water - TM022
  (871, 87100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Pincurchin - Charge Beam - TM023
  (871, 87100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Pincurchin - Facade - TM025
  (871, 87100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Pincurchin - Hex - TM029
  (871, 87100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 20),
  -- Pincurchin - Swift - TM032
  (871, 87100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Pincurchin - Venoshock - TM045
  (871, 87100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 22),
  -- Pincurchin - Endure - TM047
  (871, 87100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Pincurchin - Rain Dance - TM050
  (871, 87100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Pincurchin - Body Slam - TM066
  (871, 87100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Pincurchin - Sleep Talk - TM070
  (871, 87100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Pincurchin - Electro Ball - TM072
  (871, 87100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 27),
  -- Pincurchin - Thunder Wave - TM082
  (871, 87100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 28),
  -- Pincurchin - Poison Jab - TM083
  (871, 87100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 29),
  -- Pincurchin - Rest - TM085
  (871, 87100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Pincurchin - Spikes - TM090
  (871, 87100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 31),
  -- Pincurchin - Toxic Spikes - TM091
  (871, 87100, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 32),
  -- Pincurchin - Substitute - TM103
  (871, 87100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Pincurchin - Liquidation - TM110
  (871, 87100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Pincurchin - Surf - TM123
  (871, 87100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Pincurchin - Thunderbolt - TM126
  (871, 87100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 36),
  -- Pincurchin - Reversal - TM134
  (871, 87100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 37),
  -- Pincurchin - Electric Terrain - TM136
  (871, 87100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 38),
  -- Pincurchin - Hydro Pump - TM142
  (871, 87100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Pincurchin - Wild Charge - TM147
  (871, 87100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 40),
  -- Pincurchin - Giga Impact - TM152
  (871, 87100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Pincurchin - Hyper Beam - TM163
  (871, 87100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Pincurchin - Thunder - TM166
  (871, 87100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 43),
  -- Pincurchin - Tera Blast - TM171
  (871, 87100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Pincurchin - Memento - Egg
  (871, 87100, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pincurchin - Sucker Punch - Egg
  (871, 87100, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snom - Powder Snow - Level 1
  (872, 87200, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snom - Struggle Bug - Level 1
  (872, 87200, 522, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snom - Protect - TM007
  (872, 87200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 3),
  -- Snom - Struggle Bug - TM015
  (872, 87200, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 4),
  -- Snom - Pounce - TM021
  (872, 87200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 5),
  -- Snom - Facade - TM025
  (872, 87200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 6),
  -- Snom - Icy Wind - TM034
  (872, 87200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 7),
  -- Snom - Sleep Talk - TM070
  (872, 87200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 8),
  -- Snom - Rest - TM085
  (872, 87200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 9),
  -- Snom - Substitute - TM103
  (872, 87200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 10),
  -- Snom - Bug Buzz - TM162
  (872, 87200, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 11),
  -- Snom - Tera Blast - TM171
  (872, 87200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 12),
  -- Snom - Mirror Coat - Egg
  (872, 87200, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 13),
  -- Snom - Bug Bite - Egg
  (872, 87200, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 14),
  -- Snom - Fairy Wind - Egg
  (872, 87200, 584, 23, NULL, 5, NULL, NULL, NULL, NULL, 15),
  -- Frosmoth - Powder Snow - Level 1
  (873, 87300, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frosmoth - Attract - Level 1
  (873, 87300, 213, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frosmoth - Helping Hand - Level 1
  (873, 87300, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Frosmoth - Struggle Bug - Level 1
  (873, 87300, 522, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Frosmoth - Stun Spore - Level 4
  (873, 87300, 78, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Frosmoth - Infestation - Level 8
  (873, 87300, 611, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Frosmoth - Mist - Level 12
  (873, 87300, 54, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Frosmoth - Defog - Level 16
  (873, 87300, 432, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Frosmoth - Feather Dance - Level 21
  (873, 87300, 297, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Frosmoth - Aurora Beam - Level 24
  (873, 87300, 62, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Frosmoth - Snowscape - Level 28
  (873, 87300, 883, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Frosmoth - Bug Buzz - Level 32
  (873, 87300, 405, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Frosmoth - Aurora Veil - Level 36
  (873, 87300, 694, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Frosmoth - Blizzard - Level 40
  (873, 87300, 59, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Frosmoth - Tailwind - Level 44
  (873, 87300, 366, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Frosmoth - Wide Guard - Level 48
  (873, 87300, 469, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Frosmoth - Quiver Dance - Level 52
  (873, 87300, 483, 23, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Frosmoth - Take Down - TM001
  (873, 87300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Frosmoth - Protect - TM007
  (873, 87300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Frosmoth - Acrobatics - TM014
  (873, 87300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Frosmoth - Struggle Bug - TM015
  (873, 87300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 21),
  -- Frosmoth - Pounce - TM021
  (873, 87300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Frosmoth - Facade - TM025
  (873, 87300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Frosmoth - Swift - TM032
  (873, 87300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Frosmoth - Icy Wind - TM034
  (873, 87300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Frosmoth - Avalanche - TM046
  (873, 87300, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Frosmoth - Endure - TM047
  (873, 87300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Frosmoth - Snowscape - TM052
  (873, 87300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Frosmoth - U-turn - TM060
  (873, 87300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Frosmoth - Air Slash - TM065
  (873, 87300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Frosmoth - Sleep Talk - TM070
  (873, 87300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Frosmoth - Reflect - TM074
  (873, 87300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Frosmoth - Light Screen - TM075
  (873, 87300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Frosmoth - Dazzling Gleam - TM079
  (873, 87300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 34),
  -- Frosmoth - Rest - TM085
  (873, 87300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Frosmoth - Imprison - TM092
  (873, 87300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Frosmoth - Leech Life - TM095
  (873, 87300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 37),
  -- Frosmoth - Substitute - TM103
  (873, 87300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Frosmoth - Giga Drain - TM111
  (873, 87300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 39),
  -- Frosmoth - Tailwind - TM113
  (873, 87300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Frosmoth - Ice Spinner - TM124
  (873, 87300, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 41),
  -- Frosmoth - Play Rough - TM127
  (873, 87300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Frosmoth - Calm Mind - TM129
  (873, 87300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Frosmoth - Helping Hand - TM130
  (873, 87300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Frosmoth - Ice Beam - TM135
  (873, 87300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Frosmoth - Blizzard - TM143
  (873, 87300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 46),
  -- Frosmoth - Giga Impact - TM152
  (873, 87300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Frosmoth - Hurricane - TM160
  (873, 87300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Frosmoth - Bug Buzz - TM162
  (873, 87300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 49),
  -- Frosmoth - Hyper Beam - TM163
  (873, 87300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Frosmoth - Tera Blast - TM171
  (873, 87300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Frosmoth - Mirror Coat - Egg
  (873, 87300, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Frosmoth - Bug Bite - Egg
  (873, 87300, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Frosmoth - Fairy Wind - Egg
  (873, 87300, 584, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Frosmoth - Icy Wind - Evolution
  (873, 87300, 196, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Stonjourner - Rock Throw - Level 1
  (874, 87400, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stonjourner - Block - Level 1
  (874, 87400, 335, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stonjourner - Rock Polish - Level 6
  (874, 87400, 397, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Stonjourner - Rock Tomb - Level 12
  (874, 87400, 317, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Stonjourner - Gravity - Level 18
  (874, 87400, 356, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Stonjourner - Stomp - Level 24
  (874, 87400, 23, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Stonjourner - Stealth Rock - Level 30
  (874, 87400, 446, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Stonjourner - Rock Slide - Level 36
  (874, 87400, 157, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Stonjourner - Body Slam - Level 42
  (874, 87400, 34, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Stonjourner - Wide Guard - Level 48
  (874, 87400, 469, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Stonjourner - Heavy Slam - Level 54
  (874, 87400, 484, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Stonjourner - Stone Edge - Level 60
  (874, 87400, 444, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Stonjourner - Mega Kick - Level 66
  (874, 87400, 25, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Stonjourner - Take Down - TM001
  (874, 87400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Stonjourner - Protect - TM007
  (874, 87400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Stonjourner - Low Kick - TM012
  (874, 87400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Stonjourner - Facade - TM025
  (874, 87400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Stonjourner - Bulldoze - TM028
  (874, 87400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Stonjourner - Rock Tomb - TM036
  (874, 87400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 19),
  -- Stonjourner - Low Sweep - TM039
  (874, 87400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 20),
  -- Stonjourner - Endure - TM047
  (874, 87400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Stonjourner - Sunny Day - TM049
  (874, 87400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Stonjourner - Sandstorm - TM051
  (874, 87400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Stonjourner - Body Slam - TM066
  (874, 87400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Stonjourner - Sleep Talk - TM070
  (874, 87400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Stonjourner - Rock Blast - TM076
  (874, 87400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 26),
  -- Stonjourner - Stomping Tantrum - TM084
  (874, 87400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 27),
  -- Stonjourner - Rest - TM085
  (874, 87400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Stonjourner - Rock Slide - TM086
  (874, 87400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 29),
  -- Stonjourner - Body Press - TM089
  (874, 87400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 30),
  -- Stonjourner - Imprison - TM092
  (874, 87400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 31),
  -- Stonjourner - Power Gem - TM101
  (874, 87400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 32),
  -- Stonjourner - Substitute - TM103
  (874, 87400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Stonjourner - Iron Defense - TM104
  (874, 87400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 34),
  -- Stonjourner - Stealth Rock - TM116
  (874, 87400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 35),
  -- Stonjourner - Heavy Slam - TM121
  (874, 87400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 36),
  -- Stonjourner - Earth Power - TM133
  (874, 87400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 37),
  -- Stonjourner - Earthquake - TM149
  (874, 87400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 38),
  -- Stonjourner - Stone Edge - TM150
  (874, 87400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 39),
  -- Stonjourner - Giga Impact - TM152
  (874, 87400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Stonjourner - Hyper Beam - TM163
  (874, 87400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 41),
  -- Stonjourner - Tera Blast - TM171
  (874, 87400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Stonjourner - Curse - Egg
  (874, 87400, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Stonjourner - Ancient Power - Egg
  (874, 87400, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eiscue - Tackle - Level 1
  (875, 87500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eiscue - Powder Snow - Level 1
  (875, 87500, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eiscue - Mist - Level 6
  (875, 87500, 54, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Eiscue - Weather Ball - Level 12
  (875, 87500, 311, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Eiscue - Icy Wind - Level 18
  (875, 87500, 196, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Eiscue - Headbutt - Level 24
  (875, 87500, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Eiscue - Amnesia - Level 30
  (875, 87500, 133, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Eiscue - Freeze-Dry - Level 36
  (875, 87500, 573, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Eiscue - Snowscape - Level 42
  (875, 87500, 883, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Eiscue - Aurora Veil - Level 48
  (875, 87500, 694, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Eiscue - Surf - Level 54
  (875, 87500, 57, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Eiscue - Blizzard - Level 60
  (875, 87500, 59, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Eiscue - Take Down - TM001
  (875, 87500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Eiscue - Agility - TM004
  (875, 87500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Eiscue - Protect - TM007
  (875, 87500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Eiscue - Water Pulse - TM011
  (875, 87500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Eiscue - Chilling Water - TM022
  (875, 87500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 17),
  -- Eiscue - Facade - TM025
  (875, 87500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Eiscue - Icy Wind - TM034
  (875, 87500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Eiscue - Avalanche - TM046
  (875, 87500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 20),
  -- Eiscue - Endure - TM047
  (875, 87500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Eiscue - Rain Dance - TM050
  (875, 87500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Eiscue - Snowscape - TM052
  (875, 87500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 23),
  -- Eiscue - Zen Headbutt - TM059
  (875, 87500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 24),
  -- Eiscue - Body Slam - TM066
  (875, 87500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Eiscue - Ice Punch - TM069
  (875, 87500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 26),
  -- Eiscue - Sleep Talk - TM070
  (875, 87500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Eiscue - Reflect - TM074
  (875, 87500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Eiscue - Waterfall - TM077
  (875, 87500, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Eiscue - Rest - TM085
  (875, 87500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Eiscue - Iron Head - TM099
  (875, 87500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 31),
  -- Eiscue - Substitute - TM103
  (875, 87500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Eiscue - Iron Defense - TM104
  (875, 87500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 33),
  -- Eiscue - Liquidation - TM110
  (875, 87500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Eiscue - Surf - TM123
  (875, 87500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Eiscue - Ice Spinner - TM124
  (875, 87500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 36),
  -- Eiscue - Amnesia - TM128
  (875, 87500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 37),
  -- Eiscue - Reversal - TM134
  (875, 87500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 38),
  -- Eiscue - Ice Beam - TM135
  (875, 87500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Eiscue - Hydro Pump - TM142
  (875, 87500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Eiscue - Blizzard - TM143
  (875, 87500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Eiscue - Giga Impact - TM152
  (875, 87500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Eiscue - Hyper Beam - TM163
  (875, 87500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Eiscue - Tera Blast - TM171
  (875, 87500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Eiscue - Double-Edge - Egg
  (875, 87500, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eiscue - Belly Drum - Egg
  (875, 87500, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eiscue - Aqua Ring - Egg
  (875, 87500, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Eiscue - Head Smash - Egg
  (875, 87500, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Eiscue - Soak - Egg
  (875, 87500, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Eiscue - Icicle Crash - Egg
  (875, 87500, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Indeedee - Stored Power - Level 1
  (876, 87600, 500, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Indeedee - Play Nice - Level 1
  (876, 87600, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Indeedee - Baton Pass - Level 5
  (876, 87600, 226, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Indeedee - Encore - Level 5
  (876, 87600, 227, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Indeedee - Disarming Voice - Level 10
  (876, 87600, 574, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Indeedee - Psybeam - Level 15
  (876, 87600, 60, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Indeedee - Helping Hand - Level 20
  (876, 87600, 270, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Indeedee - Follow Me - Level 25
  (876, 87600, 266, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Indeedee - After You - Level 25
  (876, 87600, 495, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Indeedee - Healing Wish - Level 30
  (876, 87600, 361, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Indeedee - Psychic - Level 35
  (876, 87600, 94, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Indeedee - Calm Mind - Level 40
  (876, 87600, 347, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Indeedee - Guard Split - Level 45
  (876, 87600, 470, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Indeedee - Power Split - Level 45
  (876, 87600, 471, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Indeedee - Psychic Terrain - Level 50
  (876, 87600, 678, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Indeedee - Last Resort - Level 55
  (876, 87600, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Indeedee - Take Down - TM001
  (876, 87600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Indeedee - Protect - TM007
  (876, 87600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Indeedee - Psybeam - TM016
  (876, 87600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Indeedee - Disarming Voice - TM019
  (876, 87600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 20),
  -- Indeedee - Facade - TM025
  (876, 87600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Indeedee - Swift - TM032
  (876, 87600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Indeedee - Magical Leaf - TM033
  (876, 87600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Indeedee - Draining Kiss - TM037
  (876, 87600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Indeedee - Stored Power - TM041
  (876, 87600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Indeedee - Endure - TM047
  (876, 87600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Indeedee - Psyshock - TM054
  (876, 87600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 27),
  -- Indeedee - Zen Headbutt - TM059
  (876, 87600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Indeedee - Body Slam - TM066
  (876, 87600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Indeedee - Sleep Talk - TM070
  (876, 87600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Indeedee - Drain Punch - TM073
  (876, 87600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 31),
  -- Indeedee - Dazzling Gleam - TM079
  (876, 87600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Indeedee - Metronome - TM080
  (876, 87600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 33),
  -- Indeedee - Rest - TM085
  (876, 87600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Indeedee - Imprison - TM092
  (876, 87600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Indeedee - Skill Swap - TM098
  (876, 87600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 36),
  -- Indeedee - Substitute - TM103
  (876, 87600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Indeedee - Trick - TM109
  (876, 87600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 38),
  -- Indeedee - Shadow Ball - TM114
  (876, 87600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Indeedee - Hyper Voice - TM117
  (876, 87600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Indeedee - Energy Ball - TM119
  (876, 87600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 41),
  -- Indeedee - Psychic - TM120
  (876, 87600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 42),
  -- Indeedee - Encore - TM122
  (876, 87600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 43),
  -- Indeedee - Play Rough - TM127
  (876, 87600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 44),
  -- Indeedee - Calm Mind - TM129
  (876, 87600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Indeedee - Helping Hand - TM130
  (876, 87600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Indeedee - Psychic Terrain - TM138
  (876, 87600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 47),
  -- Indeedee - Trick Room - TM161
  (876, 87600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 48),
  -- Indeedee - Tera Blast - TM171
  (876, 87600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Indeedee - Psych Up - Egg
  (876, 87600, 244, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Indeedee - Fake Out - Egg
  (876, 87600, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Indeedee - Extrasensory - Egg
  (876, 87600, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Indeedee - Heal Pulse - Egg
  (876, 87600, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Indeedee (Female) - Stored Power - Level 1
  (876, 87601, 500, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Indeedee (Female) - Play Nice - Level 1
  (876, 87601, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Indeedee (Female) - Baton Pass - Level 5
  (876, 87601, 226, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Indeedee (Female) - Encore - Level 5
  (876, 87601, 227, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Indeedee (Female) - Disarming Voice - Level 10
  (876, 87601, 574, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Indeedee (Female) - Psybeam - Level 15
  (876, 87601, 60, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Indeedee (Female) - Helping Hand - Level 20
  (876, 87601, 270, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Indeedee (Female) - Follow Me - Level 25
  (876, 87601, 266, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Indeedee (Female) - After You - Level 25
  (876, 87601, 495, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Indeedee (Female) - Healing Wish - Level 30
  (876, 87601, 361, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Indeedee (Female) - Psychic - Level 35
  (876, 87601, 94, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Indeedee (Female) - Calm Mind - Level 40
  (876, 87601, 347, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Indeedee (Female) - Guard Split - Level 45
  (876, 87601, 470, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Indeedee (Female) - Power Split - Level 45
  (876, 87601, 471, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Indeedee (Female) - Psychic Terrain - Level 50
  (876, 87601, 678, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Indeedee (Female) - Last Resort - Level 55
  (876, 87601, 387, 23, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Indeedee (Female) - Take Down - TM001
  (876, 87601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Indeedee (Female) - Charm - TM002
  (876, 87601, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Indeedee (Female) - Protect - TM007
  (876, 87601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Indeedee (Female) - Psybeam - TM016
  (876, 87601, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Indeedee (Female) - Disarming Voice - TM019
  (876, 87601, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Indeedee (Female) - Facade - TM025
  (876, 87601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Indeedee (Female) - Swift - TM032
  (876, 87601, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Indeedee (Female) - Magical Leaf - TM033
  (876, 87601, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 24),
  -- Indeedee (Female) - Draining Kiss - TM037
  (876, 87601, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 25),
  -- Indeedee (Female) - Stored Power - TM041
  (876, 87601, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Indeedee (Female) - Endure - TM047
  (876, 87601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Indeedee (Female) - Psyshock - TM054
  (876, 87601, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Indeedee (Female) - Zen Headbutt - TM059
  (876, 87601, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Indeedee (Female) - Body Slam - TM066
  (876, 87601, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Indeedee (Female) - Sleep Talk - TM070
  (876, 87601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Indeedee (Female) - Drain Punch - TM073
  (876, 87601, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 32),
  -- Indeedee (Female) - Reflect - TM074
  (876, 87601, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Indeedee (Female) - Light Screen - TM075
  (876, 87601, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Indeedee (Female) - Dazzling Gleam - TM079
  (876, 87601, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Indeedee (Female) - Metronome - TM080
  (876, 87601, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 36),
  -- Indeedee (Female) - Rest - TM085
  (876, 87601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Indeedee (Female) - Imprison - TM092
  (876, 87601, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Indeedee (Female) - Skill Swap - TM098
  (876, 87601, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 39),
  -- Indeedee (Female) - Substitute - TM103
  (876, 87601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Indeedee (Female) - Trick - TM109
  (876, 87601, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Indeedee (Female) - Shadow Ball - TM114
  (876, 87601, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Indeedee (Female) - Hyper Voice - TM117
  (876, 87601, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Indeedee (Female) - Energy Ball - TM119
  (876, 87601, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Indeedee (Female) - Psychic - TM120
  (876, 87601, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Indeedee (Female) - Play Rough - TM127
  (876, 87601, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 46),
  -- Indeedee (Female) - Calm Mind - TM129
  (876, 87601, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Indeedee (Female) - Helping Hand - TM130
  (876, 87601, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Indeedee (Female) - Baton Pass - TM132
  (876, 87601, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Indeedee (Female) - Psychic Terrain - TM138
  (876, 87601, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 50),
  -- Indeedee (Female) - Trick Room - TM161
  (876, 87601, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 51),
  -- Indeedee (Female) - Tera Blast - TM171
  (876, 87601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Indeedee (Female) - Psych Up - Egg
  (876, 87601, 244, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Indeedee (Female) - Fake Out - Egg
  (876, 87601, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Indeedee (Female) - Extrasensory - Egg
  (876, 87601, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Indeedee (Female) - Heal Pulse - Egg
  (876, 87601, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Morpeko - Tail Whip - Level 1
  (877, 87700, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morpeko - Thunder Shock - Level 1
  (877, 87700, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Morpeko - Leer - Level 5
  (877, 87700, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Morpeko - Power Trip - Level 10
  (877, 87700, 681, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Morpeko - Quick Attack - Level 15
  (877, 87700, 98, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Morpeko - Flatter - Level 20
  (877, 87700, 260, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Morpeko - Bite - Level 25
  (877, 87700, 44, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Morpeko - Spark - Level 30
  (877, 87700, 209, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Morpeko - Torment - Level 35
  (877, 87700, 259, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Morpeko - Agility - Level 40
  (877, 87700, 97, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Morpeko - Bullet Seed - Level 45
  (877, 87700, 331, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Morpeko - Crunch - Level 50
  (877, 87700, 242, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Morpeko - Aura Wheel - Level 55
  (877, 87700, 783, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Morpeko - Thrash - Level 60
  (877, 87700, 37, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Morpeko - Take Down - TM001
  (877, 87700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Morpeko - Fake Tears - TM003
  (877, 87700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Morpeko - Agility - TM004
  (877, 87700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Morpeko - Scary Face - TM006
  (877, 87700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Morpeko - Protect - TM007
  (877, 87700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Morpeko - Fire Fang - TM008
  (877, 87700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Morpeko - Thunder Fang - TM009
  (877, 87700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Morpeko - Ice Fang - TM010
  (877, 87700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Morpeko - Thief - TM018
  (877, 87700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Morpeko - Charge Beam - TM023
  (877, 87700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Morpeko - Facade - TM025
  (877, 87700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Morpeko - Snarl - TM030
  (877, 87700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Morpeko - Swift - TM032
  (877, 87700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Morpeko - Fling - TM043
  (877, 87700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Morpeko - Endure - TM047
  (877, 87700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Morpeko - Volt Switch - TM048
  (877, 87700, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 30),
  -- Morpeko - Bullet Seed - TM056
  (877, 87700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Morpeko - Brick Break - TM058
  (877, 87700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Morpeko - Foul Play - TM062
  (877, 87700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Morpeko - Psychic Fangs - TM063
  (877, 87700, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 34),
  -- Morpeko - Thunder Punch - TM068
  (877, 87700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Morpeko - Sleep Talk - TM070
  (877, 87700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Morpeko - Seed Bomb - TM071
  (877, 87700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Morpeko - Electro Ball - TM072
  (877, 87700, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 38),
  -- Morpeko - Thunder Wave - TM082
  (877, 87700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Morpeko - Stomping Tantrum - TM084
  (877, 87700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Morpeko - Rest - TM085
  (877, 87700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Morpeko - Taunt - TM087
  (877, 87700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Morpeko - Dark Pulse - TM094
  (877, 87700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Morpeko - Eerie Impulse - TM096
  (877, 87700, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 44),
  -- Morpeko - Substitute - TM103
  (877, 87700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Morpeko - Crunch - TM108
  (877, 87700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 46),
  -- Morpeko - Thunderbolt - TM126
  (877, 87700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Morpeko - Baton Pass - TM132
  (877, 87700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 48),
  -- Morpeko - Reversal - TM134
  (877, 87700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Morpeko - Electric Terrain - TM136
  (877, 87700, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 50),
  -- Morpeko - Nasty Plot - TM140
  (877, 87700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Morpeko - Wild Charge - TM147
  (877, 87700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 52),
  -- Morpeko - Outrage - TM156
  (877, 87700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 53),
  -- Morpeko - Thunder - TM166
  (877, 87700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Morpeko - Tera Blast - TM171
  (877, 87700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Morpeko - Super Fang - Egg
  (877, 87700, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Morpeko - Swagger - Egg
  (877, 87700, 207, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Morpeko - Rapid Spin - Egg
  (877, 87700, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Morpeko - Fake Out - Egg
  (877, 87700, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Morpeko - Charge - Egg
  (877, 87700, 268, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Morpeko - Tickle - Egg
  (877, 87700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Morpeko - Quash - Egg
  (877, 87700, 511, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Morpeko - Parting Shot - Egg
  (877, 87700, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cufant - Tackle - Level 1
  (878, 87800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cufant - Growl - Level 1
  (878, 87800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cufant - Rollout - Level 5
  (878, 87800, 205, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cufant - Rock Smash - Level 10
  (878, 87800, 249, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cufant - Bulldoze - Level 15
  (878, 87800, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Cufant - Stomp - Level 20
  (878, 87800, 23, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Cufant - Iron Defense - Level 25
  (878, 87800, 334, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Cufant - Dig - Level 30
  (878, 87800, 91, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Cufant - Strength - Level 35
  (878, 87800, 70, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cufant - Iron Head - Level 40
  (878, 87800, 442, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cufant - Play Rough - Level 45
  (878, 87800, 583, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Cufant - High Horsepower - Level 50
  (878, 87800, 667, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Cufant - Superpower - Level 55
  (878, 87800, 276, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Cufant - Take Down - TM001
  (878, 87800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Cufant - Protect - TM007
  (878, 87800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Cufant - Facade - TM025
  (878, 87800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Cufant - Bulldoze - TM028
  (878, 87800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 17),
  -- Cufant - Mud Shot - TM035
  (878, 87800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 18),
  -- Cufant - Rock Tomb - TM036
  (878, 87800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 19),
  -- Cufant - Fling - TM043
  (878, 87800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 20),
  -- Cufant - Endure - TM047
  (878, 87800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Cufant - Sandstorm - TM051
  (878, 87800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 22),
  -- Cufant - Dig - TM055
  (878, 87800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 23),
  -- Cufant - Brick Break - TM058
  (878, 87800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 24),
  -- Cufant - Zen Headbutt - TM059
  (878, 87800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Cufant - Body Slam - TM066
  (878, 87800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Cufant - Sleep Talk - TM070
  (878, 87800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Cufant - Rock Blast - TM076
  (878, 87800, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 28),
  -- Cufant - Stomping Tantrum - TM084
  (878, 87800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 29),
  -- Cufant - Rest - TM085
  (878, 87800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Cufant - Rock Slide - TM086
  (878, 87800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 31),
  -- Cufant - Body Press - TM089
  (878, 87800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 32),
  -- Cufant - Flash Cannon - TM093
  (878, 87800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Cufant - Iron Head - TM099
  (878, 87800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Cufant - Substitute - TM103
  (878, 87800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Cufant - Iron Defense - TM104
  (878, 87800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 36),
  -- Cufant - Stealth Rock - TM116
  (878, 87800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Cufant - Heavy Slam - TM121
  (878, 87800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Cufant - Play Rough - TM127
  (878, 87800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 39),
  -- Cufant - Earth Power - TM133
  (878, 87800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 40),
  -- Cufant - Earthquake - TM149
  (878, 87800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 41),
  -- Cufant - Stone Edge - TM150
  (878, 87800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 42),
  -- Cufant - Steel Beam - TM170
  (878, 87800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 43),
  -- Cufant - Tera Blast - TM171
  (878, 87800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Cufant - Whirlwind - Egg
  (878, 87800, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cufant - Slam - Egg
  (878, 87800, 21, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cufant - Double-Edge - Egg
  (878, 87800, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cufant - Fissure - Egg
  (878, 87800, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cufant - Defense Curl - Egg
  (878, 87800, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cufant - Curse - Egg
  (878, 87800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cufant - Swagger - Egg
  (878, 87800, 207, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cufant - Belch - Egg
  (878, 87800, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Copperajah - Tackle - Level 1
  (879, 87900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Copperajah - Growl - Level 1
  (879, 87900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Copperajah - Rollout - Level 1
  (879, 87900, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Copperajah - Rock Smash - Level 1
  (879, 87900, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Copperajah - Bulldoze - Level 15
  (879, 87900, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Copperajah - Stomp - Level 20
  (879, 87900, 23, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Copperajah - Iron Defense - Level 25
  (879, 87900, 334, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Copperajah - Dig - Level 30
  (879, 87900, 91, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Copperajah - Strength - Level 37
  (879, 87900, 70, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Copperajah - Iron Head - Level 44
  (879, 87900, 442, 23, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Copperajah - Play Rough - Level 51
  (879, 87900, 583, 23, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Copperajah - High Horsepower - Level 58
  (879, 87900, 667, 23, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Copperajah - Superpower - Level 65
  (879, 87900, 276, 23, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Copperajah - Take Down - TM001
  (879, 87900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Copperajah - Protect - TM007
  (879, 87900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Copperajah - Facade - TM025
  (879, 87900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Copperajah - Bulldoze - TM028
  (879, 87900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 17),
  -- Copperajah - Snarl - TM030
  (879, 87900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 18),
  -- Copperajah - Mud Shot - TM035
  (879, 87900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 19),
  -- Copperajah - Rock Tomb - TM036
  (879, 87900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Copperajah - Fling - TM043
  (879, 87900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 21),
  -- Copperajah - Endure - TM047
  (879, 87900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Copperajah - Sandstorm - TM051
  (879, 87900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Copperajah - Dig - TM055
  (879, 87900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Copperajah - Brick Break - TM058
  (879, 87900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 25),
  -- Copperajah - Zen Headbutt - TM059
  (879, 87900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 26),
  -- Copperajah - Body Slam - TM066
  (879, 87900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Copperajah - Sleep Talk - TM070
  (879, 87900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Copperajah - Rock Blast - TM076
  (879, 87900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 29),
  -- Copperajah - Stomping Tantrum - TM084
  (879, 87900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 30),
  -- Copperajah - Rest - TM085
  (879, 87900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Copperajah - Rock Slide - TM086
  (879, 87900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Copperajah - Taunt - TM087
  (879, 87900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Copperajah - Body Press - TM089
  (879, 87900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 34),
  -- Copperajah - Flash Cannon - TM093
  (879, 87900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Copperajah - Iron Head - TM099
  (879, 87900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Copperajah - Substitute - TM103
  (879, 87900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Copperajah - Iron Defense - TM104
  (879, 87900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Copperajah - Stealth Rock - TM116
  (879, 87900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 39),
  -- Copperajah - Heavy Slam - TM121
  (879, 87900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 40),
  -- Copperajah - Play Rough - TM127
  (879, 87900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 41),
  -- Copperajah - Earth Power - TM133
  (879, 87900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 42),
  -- Copperajah - Earthquake - TM149
  (879, 87900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 43),
  -- Copperajah - Stone Edge - TM150
  (879, 87900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Copperajah - Giga Impact - TM152
  (879, 87900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Copperajah - Outrage - TM156
  (879, 87900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Copperajah - Hyper Beam - TM163
  (879, 87900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Copperajah - Steel Beam - TM170
  (879, 87900, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 48),
  -- Copperajah - Tera Blast - TM171
  (879, 87900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Copperajah - Whirlwind - Egg
  (879, 87900, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Copperajah - Slam - Egg
  (879, 87900, 21, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Copperajah - Double-Edge - Egg
  (879, 87900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Copperajah - Fissure - Egg
  (879, 87900, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Copperajah - Defense Curl - Egg
  (879, 87900, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Copperajah - Curse - Egg
  (879, 87900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Copperajah - Swagger - Egg
  (879, 87900, 207, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Copperajah - Belch - Egg
  (879, 87900, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Copperajah - Heavy Slam - Evolution
  (879, 87900, 484, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Duraludon - Leer - Level 1
  (884, 88400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duraludon - Metal Claw - Level 1
  (884, 88400, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duraludon - Rock Smash - Level 6
  (884, 88400, 249, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Duraludon - Hone Claws - Level 12
  (884, 88400, 468, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Duraludon - Metal Sound - Level 18
  (884, 88400, 319, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Duraludon - Breaking Swipe - Level 24
  (884, 88400, 784, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Duraludon - Dragon Tail - Level 30
  (884, 88400, 525, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Duraludon - Iron Defense - Level 36
  (884, 88400, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Duraludon - Focus Energy - Level 42
  (884, 88400, 116, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Duraludon - Dragon Claw - Level 48
  (884, 88400, 337, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Duraludon - Flash Cannon - Level 54
  (884, 88400, 430, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Duraludon - Metal Burst - Level 60
  (884, 88400, 368, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Duraludon - Hyper Beam - Level 66
  (884, 88400, 63, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Duraludon - Take Down - TM001
  (884, 88400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Duraludon - Scary Face - TM006
  (884, 88400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Duraludon - Protect - TM007
  (884, 88400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Duraludon - Facade - TM025
  (884, 88400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Duraludon - Snarl - TM030
  (884, 88400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 18),
  -- Duraludon - Metal Claw - TM031
  (884, 88400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 19),
  -- Duraludon - Rock Tomb - TM036
  (884, 88400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Duraludon - Dragon Tail - TM044
  (884, 88400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 21),
  -- Duraludon - Endure - TM047
  (884, 88400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Duraludon - Brick Break - TM058
  (884, 88400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 23),
  -- Duraludon - Foul Play - TM062
  (884, 88400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 24),
  -- Duraludon - Body Slam - TM066
  (884, 88400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Duraludon - Sleep Talk - TM070
  (884, 88400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Duraludon - Reflect - TM074
  (884, 88400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 27),
  -- Duraludon - Light Screen - TM075
  (884, 88400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Duraludon - Dragon Claw - TM078
  (884, 88400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 29),
  -- Duraludon - Thunder Wave - TM082
  (884, 88400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 30),
  -- Duraludon - Rest - TM085
  (884, 88400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Duraludon - Rock Slide - TM086
  (884, 88400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 32),
  -- Duraludon - Swords Dance - TM088
  (884, 88400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 33),
  -- Duraludon - Body Press - TM089
  (884, 88400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 34),
  -- Duraludon - Flash Cannon - TM093
  (884, 88400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 35),
  -- Duraludon - Dark Pulse - TM094
  (884, 88400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Duraludon - Iron Head - TM099
  (884, 88400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Duraludon - Substitute - TM103
  (884, 88400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Duraludon - Iron Defense - TM104
  (884, 88400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Duraludon - Dragon Pulse - TM115
  (884, 88400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Duraludon - Stealth Rock - TM116
  (884, 88400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Duraludon - Heavy Slam - TM121
  (884, 88400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 42),
  -- Duraludon - Thunderbolt - TM126
  (884, 88400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Duraludon - Stone Edge - TM150
  (884, 88400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 44),
  -- Duraludon - Giga Impact - TM152
  (884, 88400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Duraludon - Outrage - TM156
  (884, 88400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Duraludon - Hyper Beam - TM163
  (884, 88400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Duraludon - Thunder - TM166
  (884, 88400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 48),
  -- Duraludon - Solar Beam - TM168
  (884, 88400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Duraludon - Draco Meteor - TM169
  (884, 88400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Duraludon - Steel Beam - TM170
  (884, 88400, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 51),
  -- Duraludon - Tera Blast - TM171
  (884, 88400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Duraludon - Slash - Egg
  (884, 88400, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Duraludon - Mirror Coat - Egg
  (884, 88400, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Duraludon - Night Slash - Egg
  (884, 88400, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dreepy - Bite - Level 1
  (885, 88500, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dreepy - Quick Attack - Level 1
  (885, 88500, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dreepy - Astonish - Level 1
  (885, 88500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dreepy - Infestation - Level 1
  (885, 88500, 611, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dreepy - Protect - TM007
  (885, 88500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 5),
  -- Dreepy - Confuse Ray - TM017
  (885, 88500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 6),
  -- Dreepy - Facade - TM025
  (885, 88500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 7),
  -- Dreepy - Swift - TM032
  (885, 88500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 8),
  -- Dreepy - Dragon Tail - TM044
  (885, 88500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 9),
  -- Dreepy - Endure - TM047
  (885, 88500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 10),
  -- Dreepy - Sleep Talk - TM070
  (885, 88500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 11),
  -- Dreepy - Thunder Wave - TM082
  (885, 88500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 12),
  -- Dreepy - Rest - TM085
  (885, 88500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 13),
  -- Dreepy - Substitute - TM103
  (885, 88500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 14),
  -- Dreepy - Helping Hand - TM130
  (885, 88500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 15),
  -- Dreepy - Baton Pass - TM132
  (885, 88500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 16),
  -- Dreepy - Draco Meteor - TM169
  (885, 88500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 17),
  -- Dreepy - Tera Blast - TM171
  (885, 88500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 18),
  -- Dreepy - Disable - Egg
  (885, 88500, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 19),
  -- Dreepy - Double Team - Egg
  (885, 88500, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 20),
  -- Dreepy - Confuse Ray - Egg
  (885, 88500, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 21),
  -- Dreepy - Curse - Egg
  (885, 88500, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 22),
  -- Dreepy - Sucker Punch - Egg
  (885, 88500, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Dreepy - Dragon Tail - Egg
  (885, 88500, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Drakloak - Bite - Level 1
  (886, 88600, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drakloak - Quick Attack - Level 1
  (886, 88600, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drakloak - Astonish - Level 1
  (886, 88600, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drakloak - Infestation - Level 1
  (886, 88600, 611, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drakloak - Lock-On - Level 6
  (886, 88600, 199, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Drakloak - Assurance - Level 12
  (886, 88600, 372, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Drakloak - Hex - Level 18
  (886, 88600, 506, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Drakloak - Agility - Level 24
  (886, 88600, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Drakloak - Double Hit - Level 30
  (886, 88600, 458, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Drakloak - U-turn - Level 36
  (886, 88600, 369, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Drakloak - Dragon Dance - Level 42
  (886, 88600, 349, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Drakloak - Phantom Force - Level 48
  (886, 88600, 566, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Drakloak - Take Down - Level 54
  (886, 88600, 36, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Drakloak - Dragon Rush - Level 61
  (886, 88600, 407, 23, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Drakloak - Double-Edge - Level 66
  (886, 88600, 38, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Drakloak - Last Resort - Level 72
  (886, 88600, 387, 23, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Drakloak - Take Down - TM001
  (886, 88600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Drakloak - Agility - TM004
  (886, 88600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Drakloak - Protect - TM007
  (886, 88600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Drakloak - Acrobatics - TM014
  (886, 88600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Drakloak - Confuse Ray - TM017
  (886, 88600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Drakloak - Thief - TM018
  (886, 88600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Drakloak - Pounce - TM021
  (886, 88600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 23),
  -- Drakloak - Facade - TM025
  (886, 88600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Drakloak - Hex - TM029
  (886, 88600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Drakloak - Swift - TM032
  (886, 88600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Drakloak - Night Shade - TM042
  (886, 88600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Drakloak - Dragon Tail - TM044
  (886, 88600, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Drakloak - Endure - TM047
  (886, 88600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Drakloak - Sunny Day - TM049
  (886, 88600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Drakloak - U-turn - TM060
  (886, 88600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Drakloak - Psychic Fangs - TM063
  (886, 88600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 32),
  -- Drakloak - Sleep Talk - TM070
  (886, 88600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Drakloak - Reflect - TM074
  (886, 88600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Drakloak - Light Screen - TM075
  (886, 88600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Drakloak - Thunder Wave - TM082
  (886, 88600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Drakloak - Rest - TM085
  (886, 88600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Drakloak - Dragon Dance - TM100
  (886, 88600, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 38),
  -- Drakloak - Substitute - TM103
  (886, 88600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Drakloak - Will-O-Wisp - TM107
  (886, 88600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Drakloak - Shadow Ball - TM114
  (886, 88600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Drakloak - Dragon Pulse - TM115
  (886, 88600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 42),
  -- Drakloak - Surf - TM123
  (886, 88600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Drakloak - Flamethrower - TM125
  (886, 88600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Drakloak - Thunderbolt - TM126
  (886, 88600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Drakloak - Helping Hand - TM130
  (886, 88600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Drakloak - Baton Pass - TM132
  (886, 88600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Drakloak - Fire Blast - TM141
  (886, 88600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 48),
  -- Drakloak - Hydro Pump - TM142
  (886, 88600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Drakloak - Phantom Force - TM151
  (886, 88600, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 50),
  -- Drakloak - Outrage - TM156
  (886, 88600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Drakloak - Thunder - TM166
  (886, 88600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 52),
  -- Drakloak - Draco Meteor - TM169
  (886, 88600, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 53),
  -- Drakloak - Tera Blast - TM171
  (886, 88600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Drakloak - Disable - Egg
  (886, 88600, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drakloak - Double Team - Egg
  (886, 88600, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drakloak - Confuse Ray - Egg
  (886, 88600, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drakloak - Curse - Egg
  (886, 88600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drakloak - Sucker Punch - Egg
  (886, 88600, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drakloak - Dragon Tail - Egg
  (886, 88600, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drakloak - Dragon Pulse - Evolution
  (886, 88600, 406, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Dragapult - Bite - Level 1
  (887, 88700, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragapult - Quick Attack - Level 1
  (887, 88700, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragapult - Dragon Breath - Level 1
  (887, 88700, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragapult - Astonish - Level 1
  (887, 88700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragapult - Infestation - Level 1
  (887, 88700, 611, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragapult - Lock-On - Level 6
  (887, 88700, 199, 23, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Dragapult - Assurance - Level 12
  (887, 88700, 372, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Dragapult - Hex - Level 18
  (887, 88700, 506, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Dragapult - Agility - Level 24
  (887, 88700, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Dragapult - Double Hit - Level 30
  (887, 88700, 458, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dragapult - U-turn - Level 36
  (887, 88700, 369, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dragapult - Dragon Dance - Level 42
  (887, 88700, 349, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Dragapult - Phantom Force - Level 48
  (887, 88700, 566, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Dragapult - Take Down - Level 54
  (887, 88700, 36, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Dragapult - Dragon Rush - Level 63
  (887, 88700, 407, 23, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Dragapult - Double-Edge - Level 70
  (887, 88700, 38, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Dragapult - Last Resort - Level 78
  (887, 88700, 387, 23, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Dragapult - Take Down - TM001
  (887, 88700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Dragapult - Agility - TM004
  (887, 88700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Dragapult - Protect - TM007
  (887, 88700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Dragapult - Acrobatics - TM014
  (887, 88700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Dragapult - Confuse Ray - TM017
  (887, 88700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Dragapult - Thief - TM018
  (887, 88700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Dragapult - Pounce - TM021
  (887, 88700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Dragapult - Facade - TM025
  (887, 88700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Dragapult - Hex - TM029
  (887, 88700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Dragapult - Swift - TM032
  (887, 88700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Dragapult - Night Shade - TM042
  (887, 88700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 28),
  -- Dragapult - Dragon Tail - TM044
  (887, 88700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Dragapult - Endure - TM047
  (887, 88700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Dragapult - Sunny Day - TM049
  (887, 88700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Dragapult - U-turn - TM060
  (887, 88700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Dragapult - Psychic Fangs - TM063
  (887, 88700, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Dragapult - Body Slam - TM066
  (887, 88700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Dragapult - Sleep Talk - TM070
  (887, 88700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Dragapult - Reflect - TM074
  (887, 88700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Dragapult - Light Screen - TM075
  (887, 88700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Dragapult - Dragon Claw - TM078
  (887, 88700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 38),
  -- Dragapult - Thunder Wave - TM082
  (887, 88700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Dragapult - Rest - TM085
  (887, 88700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Dragapult - Fly - TM097
  (887, 88700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 41),
  -- Dragapult - Dragon Dance - TM100
  (887, 88700, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 42),
  -- Dragapult - Substitute - TM103
  (887, 88700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Dragapult - Will-O-Wisp - TM107
  (887, 88700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Dragapult - Shadow Ball - TM114
  (887, 88700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Dragapult - Dragon Pulse - TM115
  (887, 88700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 46),
  -- Dragapult - Surf - TM123
  (887, 88700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 47),
  -- Dragapult - Flamethrower - TM125
  (887, 88700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 48),
  -- Dragapult - Thunderbolt - TM126
  (887, 88700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Dragapult - Helping Hand - TM130
  (887, 88700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Dragapult - Baton Pass - TM132
  (887, 88700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 51),
  -- Dragapult - Fire Blast - TM141
  (887, 88700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Dragapult - Hydro Pump - TM142
  (887, 88700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Dragapult - Phantom Force - TM151
  (887, 88700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 54),
  -- Dragapult - Giga Impact - TM152
  (887, 88700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Dragapult - Outrage - TM156
  (887, 88700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 56),
  -- Dragapult - Hyper Beam - TM163
  (887, 88700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Dragapult - Thunder - TM166
  (887, 88700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 58),
  -- Dragapult - Solar Beam - TM168
  (887, 88700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 59),
  -- Dragapult - Draco Meteor - TM169
  (887, 88700, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 60),
  -- Dragapult - Tera Blast - TM171
  (887, 88700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Dragapult - Disable - Egg
  (887, 88700, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dragapult - Double Team - Egg
  (887, 88700, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dragapult - Confuse Ray - Egg
  (887, 88700, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dragapult - Curse - Egg
  (887, 88700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dragapult - Sucker Punch - Egg
  (887, 88700, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Dragapult - Dragon Tail - Egg
  (887, 88700, 525, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Dragapult - Dragon Darts - Evolution
  (887, 88700, 751, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Zacian - Bite - Level 1
  (888, 88800, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zacian - Quick Attack - Level 1
  (888, 88800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zacian - Metal Claw - Level 1
  (888, 88800, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zacian - Howl - Level 1
  (888, 88800, 336, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zacian - Quick Guard - Level 1
  (888, 88800, 501, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zacian - Sacred Sword - Level 1
  (888, 88800, 533, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zacian - Slash - Level 11
  (888, 88800, 163, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Zacian - Swords Dance - Level 22
  (888, 88800, 14, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zacian - Iron Head - Level 33
  (888, 88800, 442, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Zacian - Noble Roar - Level 44
  (888, 88800, 568, 23, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Zacian - Crunch - Level 55
  (888, 88800, 242, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Zacian - Moonblast - Level 66
  (888, 88800, 585, 23, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Zacian - Close Combat - Level 77
  (888, 88800, 370, 23, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Zacian - Giga Impact - Level 88
  (888, 88800, 416, 23, NULL, 1, 88, NULL, NULL, NULL, 14),
  -- Zacian - Take Down - TM001
  (888, 88800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Zacian - Agility - TM004
  (888, 88800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Zacian - Scary Face - TM006
  (888, 88800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Zacian - Protect - TM007
  (888, 88800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Zacian - Fire Fang - TM008
  (888, 88800, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Zacian - Thunder Fang - TM009
  (888, 88800, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Zacian - Ice Fang - TM010
  (888, 88800, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Zacian - Trailblaze - TM020
  (888, 88800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Zacian - Facade - TM025
  (888, 88800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Zacian - Snarl - TM030
  (888, 88800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Zacian - Metal Claw - TM031
  (888, 88800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Zacian - Swift - TM032
  (888, 88800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Zacian - Endure - TM047
  (888, 88800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Zacian - Dig - TM055
  (888, 88800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Zacian - False Swipe - TM057
  (888, 88800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 29),
  -- Zacian - Brick Break - TM058
  (888, 88800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Zacian - Psychic Fangs - TM063
  (888, 88800, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 31),
  -- Zacian - Air Slash - TM065
  (888, 88800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Zacian - Body Slam - TM066
  (888, 88800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Zacian - Sleep Talk - TM070
  (888, 88800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Zacian - Dazzling Gleam - TM079
  (888, 88800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Zacian - Poison Jab - TM083
  (888, 88800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Zacian - Rest - TM085
  (888, 88800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Zacian - Swords Dance - TM088
  (888, 88800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Zacian - Imprison - TM092
  (888, 88800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 39),
  -- Zacian - Flash Cannon - TM093
  (888, 88800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 40),
  -- Zacian - Iron Head - TM099
  (888, 88800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Zacian - Substitute - TM103
  (888, 88800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Zacian - Iron Defense - TM104
  (888, 88800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 43),
  -- Zacian - Crunch - TM108
  (888, 88800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Zacian - Hyper Voice - TM117
  (888, 88800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 45),
  -- Zacian - Play Rough - TM127
  (888, 88800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 46),
  -- Zacian - Helping Hand - TM130
  (888, 88800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Zacian - Reversal - TM134
  (888, 88800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Zacian - Misty Terrain - TM139
  (888, 88800, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 49),
  -- Zacian - Wild Charge - TM147
  (888, 88800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 50),
  -- Zacian - Giga Impact - TM152
  (888, 88800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Zacian - Focus Blast - TM158
  (888, 88800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Zacian - Hyper Beam - TM163
  (888, 88800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Zacian - Close Combat - TM167
  (888, 88800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Zacian - Steel Beam - TM170
  (888, 88800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 55),
  -- Zacian - Tera Blast - TM171
  (888, 88800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Zamazenta - Bite - Level 1
  (889, 88900, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zamazenta - Quick Attack - Level 1
  (889, 88900, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zamazenta - Metal Claw - Level 1
  (889, 88900, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zamazenta - Howl - Level 1
  (889, 88900, 336, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zamazenta - Wide Guard - Level 1
  (889, 88900, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zamazenta - Slash - Level 11
  (889, 88900, 163, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Zamazenta - Iron Defense - Level 22
  (889, 88900, 334, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Zamazenta - Iron Head - Level 33
  (889, 88900, 442, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Zamazenta - Metal Burst - Level 44
  (889, 88900, 368, 23, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Zamazenta - Crunch - Level 55
  (889, 88900, 242, 23, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Zamazenta - Moonblast - Level 66
  (889, 88900, 585, 23, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Zamazenta - Close Combat - Level 77
  (889, 88900, 370, 23, NULL, 1, 77, NULL, NULL, NULL, 12),
  -- Zamazenta - Giga Impact - Level 88
  (889, 88900, 416, 23, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Zamazenta - Take Down - TM001
  (889, 88900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Zamazenta - Agility - TM004
  (889, 88900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Zamazenta - Scary Face - TM006
  (889, 88900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Zamazenta - Protect - TM007
  (889, 88900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Zamazenta - Fire Fang - TM008
  (889, 88900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Zamazenta - Thunder Fang - TM009
  (889, 88900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 19),
  -- Zamazenta - Ice Fang - TM010
  (889, 88900, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 20),
  -- Zamazenta - Trailblaze - TM020
  (889, 88900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Zamazenta - Facade - TM025
  (889, 88900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Zamazenta - Snarl - TM030
  (889, 88900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Zamazenta - Metal Claw - TM031
  (889, 88900, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Zamazenta - Swift - TM032
  (889, 88900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Zamazenta - Endure - TM047
  (889, 88900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Zamazenta - Sunny Day - TM049
  (889, 88900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Zamazenta - Rain Dance - TM050
  (889, 88900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Zamazenta - Sandstorm - TM051
  (889, 88900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Zamazenta - Dig - TM055
  (889, 88900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Zamazenta - Brick Break - TM058
  (889, 88900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Zamazenta - Psychic Fangs - TM063
  (889, 88900, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 32),
  -- Zamazenta - Body Slam - TM066
  (889, 88900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Zamazenta - Sleep Talk - TM070
  (889, 88900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Zamazenta - Reflect - TM074
  (889, 88900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Zamazenta - Light Screen - TM075
  (889, 88900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Zamazenta - Dazzling Gleam - TM079
  (889, 88900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 37),
  -- Zamazenta - Rest - TM085
  (889, 88900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Zamazenta - Body Press - TM089
  (889, 88900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Zamazenta - Imprison - TM092
  (889, 88900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Zamazenta - Flash Cannon - TM093
  (889, 88900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 41),
  -- Zamazenta - Iron Head - TM099
  (889, 88900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Zamazenta - Substitute - TM103
  (889, 88900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Zamazenta - Iron Defense - TM104
  (889, 88900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Zamazenta - Crunch - TM108
  (889, 88900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Zamazenta - Hyper Voice - TM117
  (889, 88900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Zamazenta - Heavy Slam - TM121
  (889, 88900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 47),
  -- Zamazenta - Play Rough - TM127
  (889, 88900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 48),
  -- Zamazenta - Helping Hand - TM130
  (889, 88900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Zamazenta - Reversal - TM134
  (889, 88900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Zamazenta - Wild Charge - TM147
  (889, 88900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 51),
  -- Zamazenta - Stone Edge - TM150
  (889, 88900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Zamazenta - Giga Impact - TM152
  (889, 88900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Zamazenta - Focus Blast - TM158
  (889, 88900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 54),
  -- Zamazenta - Hyper Beam - TM163
  (889, 88900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Zamazenta - Close Combat - TM167
  (889, 88900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 56),
  -- Zamazenta - Solar Beam - TM168
  (889, 88900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 57),
  -- Zamazenta - Steel Beam - TM170
  (889, 88900, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 58),
  -- Zamazenta - Tera Blast - TM171
  (889, 88900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Eternatus - Agility - Level 1
  (890, 89000, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eternatus - Confuse Ray - Level 1
  (890, 89000, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eternatus - Poison Tail - Level 1
  (890, 89000, 342, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eternatus - Dragon Tail - Level 1
  (890, 89000, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eternatus - Toxic - Level 8
  (890, 89000, 92, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Eternatus - Venoshock - Level 16
  (890, 89000, 474, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Eternatus - Dragon Dance - Level 24
  (890, 89000, 349, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Eternatus - Cross Poison - Level 32
  (890, 89000, 440, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Eternatus - Dragon Pulse - Level 40
  (890, 89000, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Eternatus - Flamethrower - Level 48
  (890, 89000, 53, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Eternatus - Dynamax Cannon - Level 56
  (890, 89000, 744, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Eternatus - Cosmic Power - Level 64
  (890, 89000, 322, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Eternatus - Recover - Level 72
  (890, 89000, 105, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Eternatus - Hyper Beam - Level 80
  (890, 89000, 63, 23, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Eternatus - Outrage - Level 88
  (890, 89000, 200, 23, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Eternatus - Take Down - TM001
  (890, 89000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Eternatus - Agility - TM004
  (890, 89000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Eternatus - Scary Face - TM006
  (890, 89000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Eternatus - Protect - TM007
  (890, 89000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Eternatus - Confuse Ray - TM017
  (890, 89000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Eternatus - Fire Spin - TM024
  (890, 89000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Eternatus - Facade - TM025
  (890, 89000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Eternatus - Poison Tail - TM026
  (890, 89000, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 23),
  -- Eternatus - Dragon Tail - TM044
  (890, 89000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Eternatus - Venoshock - TM045
  (890, 89000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 25),
  -- Eternatus - Endure - TM047
  (890, 89000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Eternatus - Sunny Day - TM049
  (890, 89000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Eternatus - Rain Dance - TM050
  (890, 89000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Eternatus - Body Slam - TM066
  (890, 89000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Eternatus - Sleep Talk - TM070
  (890, 89000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Eternatus - Reflect - TM074
  (890, 89000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Eternatus - Light Screen - TM075
  (890, 89000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Eternatus - Poison Jab - TM083
  (890, 89000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 33),
  -- Eternatus - Rest - TM085
  (890, 89000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Eternatus - Toxic Spikes - TM091
  (890, 89000, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 35),
  -- Eternatus - Flash Cannon - TM093
  (890, 89000, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 36),
  -- Eternatus - Fly - TM097
  (890, 89000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Eternatus - Dragon Dance - TM100
  (890, 89000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 38),
  -- Eternatus - Gunk Shot - TM102
  (890, 89000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 39),
  -- Eternatus - Substitute - TM103
  (890, 89000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Eternatus - Shadow Ball - TM114
  (890, 89000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Eternatus - Dragon Pulse - TM115
  (890, 89000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 42),
  -- Eternatus - Flamethrower - TM125
  (890, 89000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Eternatus - Fire Blast - TM141
  (890, 89000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Eternatus - Sludge Bomb - TM148
  (890, 89000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 45),
  -- Eternatus - Giga Impact - TM152
  (890, 89000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Eternatus - Outrage - TM156
  (890, 89000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Eternatus - Hyper Beam - TM163
  (890, 89000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Eternatus - Solar Beam - TM168
  (890, 89000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 49),
  -- Eternatus - Draco Meteor - TM169
  (890, 89000, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 50),
  -- Eternatus - Tera Blast - TM171
  (890, 89000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Kubfu - Leer - Level 1
  (891, 89100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kubfu - Rock Smash - Level 1
  (891, 89100, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kubfu - Endure - Level 4
  (891, 89100, 203, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Kubfu - Focus Energy - Level 8
  (891, 89100, 116, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Kubfu - Aerial Ace - Level 12
  (891, 89100, 332, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kubfu - Scary Face - Level 16
  (891, 89100, 184, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kubfu - Headbutt - Level 20
  (891, 89100, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kubfu - Brick Break - Level 24
  (891, 89100, 280, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kubfu - Detect - Level 28
  (891, 89100, 197, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kubfu - Bulk Up - Level 32
  (891, 89100, 339, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Kubfu - Iron Head - Level 36
  (891, 89100, 442, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kubfu - Dynamic Punch - Level 40
  (891, 89100, 223, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kubfu - Counter - Level 44
  (891, 89100, 68, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kubfu - Close Combat - Level 48
  (891, 89100, 370, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kubfu - Focus Punch - Level 52
  (891, 89100, 264, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Kubfu - Take Down - TM001
  (891, 89100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Kubfu - Scary Face - TM006
  (891, 89100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Kubfu - Protect - TM007
  (891, 89100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Kubfu - Low Kick - TM012
  (891, 89100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Kubfu - Acrobatics - TM014
  (891, 89100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Kubfu - Facade - TM025
  (891, 89100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Kubfu - Aerial Ace - TM027
  (891, 89100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Kubfu - Metal Claw - TM031
  (891, 89100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Kubfu - Low Sweep - TM039
  (891, 89100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 24),
  -- Kubfu - Fling - TM043
  (891, 89100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Kubfu - Endure - TM047
  (891, 89100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Kubfu - Dig - TM055
  (891, 89100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Kubfu - Brick Break - TM058
  (891, 89100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Kubfu - Zen Headbutt - TM059
  (891, 89100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Kubfu - U-turn - TM060
  (891, 89100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Kubfu - Bulk Up - TM064
  (891, 89100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Kubfu - Body Slam - TM066
  (891, 89100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Kubfu - Fire Punch - TM067
  (891, 89100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Kubfu - Thunder Punch - TM068
  (891, 89100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Kubfu - Ice Punch - TM069
  (891, 89100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Kubfu - Sleep Talk - TM070
  (891, 89100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Kubfu - Rest - TM085
  (891, 89100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Kubfu - Swords Dance - TM088
  (891, 89100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Kubfu - Iron Head - TM099
  (891, 89100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Kubfu - Substitute - TM103
  (891, 89100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Kubfu - Helping Hand - TM130
  (891, 89100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Kubfu - Reversal - TM134
  (891, 89100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Kubfu - Close Combat - TM167
  (891, 89100, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 43),
  -- Kubfu - Tera Blast - TM171
  (891, 89100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Urshifu - Leer - Level 1
  (892, 89200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Urshifu - Focus Energy - Level 1
  (892, 89200, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Urshifu - Endure - Level 1
  (892, 89200, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Urshifu - Rock Smash - Level 1
  (892, 89200, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Urshifu - Sucker Punch - Level 1
  (892, 89200, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Urshifu - Aerial Ace - Level 12
  (892, 89200, 332, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Urshifu - Scary Face - Level 16
  (892, 89200, 184, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Urshifu - Headbutt - Level 20
  (892, 89200, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Urshifu - Brick Break - Level 24
  (892, 89200, 280, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Urshifu - Detect - Level 28
  (892, 89200, 197, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Urshifu - Bulk Up - Level 32
  (892, 89200, 339, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Urshifu - Iron Head - Level 36
  (892, 89200, 442, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Urshifu - Dynamic Punch - Level 40
  (892, 89200, 223, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Urshifu - Counter - Level 44
  (892, 89200, 68, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Urshifu - Close Combat - Level 48
  (892, 89200, 370, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Urshifu - Focus Punch - Level 52
  (892, 89200, 264, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Urshifu - Take Down - TM001
  (892, 89200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Urshifu - Scary Face - TM006
  (892, 89200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Urshifu - Protect - TM007
  (892, 89200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Urshifu - Low Kick - TM012
  (892, 89200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Urshifu - Acrobatics - TM014
  (892, 89200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Urshifu - Trailblaze - TM020
  (892, 89200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Urshifu - Facade - TM025
  (892, 89200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Urshifu - Aerial Ace - TM027
  (892, 89200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Urshifu - Snarl - TM030
  (892, 89200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Urshifu - Metal Claw - TM031
  (892, 89200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 26),
  -- Urshifu - Swift - TM032
  (892, 89200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Urshifu - Rock Tomb - TM036
  (892, 89200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Urshifu - Low Sweep - TM039
  (892, 89200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Urshifu - Fling - TM043
  (892, 89200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Urshifu - Endure - TM047
  (892, 89200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Urshifu - Dig - TM055
  (892, 89200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Urshifu - False Swipe - TM057
  (892, 89200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 33),
  -- Urshifu - Brick Break - TM058
  (892, 89200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Urshifu - Zen Headbutt - TM059
  (892, 89200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Urshifu - U-turn - TM060
  (892, 89200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Urshifu - Foul Play - TM062
  (892, 89200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Urshifu - Bulk Up - TM064
  (892, 89200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Urshifu - Body Slam - TM066
  (892, 89200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Urshifu - Fire Punch - TM067
  (892, 89200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Urshifu - Thunder Punch - TM068
  (892, 89200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Urshifu - Ice Punch - TM069
  (892, 89200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Urshifu - Sleep Talk - TM070
  (892, 89200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Urshifu - Drain Punch - TM073
  (892, 89200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Urshifu - Poison Jab - TM083
  (892, 89200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Urshifu - Rest - TM085
  (892, 89200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Urshifu - Rock Slide - TM086
  (892, 89200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Urshifu - Taunt - TM087
  (892, 89200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Urshifu - Swords Dance - TM088
  (892, 89200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Urshifu - Body Press - TM089
  (892, 89200, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Urshifu - Dark Pulse - TM094
  (892, 89200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 51),
  -- Urshifu - Iron Head - TM099
  (892, 89200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 52),
  -- Urshifu - Substitute - TM103
  (892, 89200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Urshifu - Iron Defense - TM104
  (892, 89200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 54),
  -- Urshifu - Crunch - TM108
  (892, 89200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 55),
  -- Urshifu - Aura Sphere - TM112
  (892, 89200, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 56),
  -- Urshifu - Helping Hand - TM130
  (892, 89200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Urshifu - Reversal - TM134
  (892, 89200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 58),
  -- Urshifu - Stone Edge - TM150
  (892, 89200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Urshifu - Giga Impact - TM152
  (892, 89200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Urshifu - Focus Blast - TM158
  (892, 89200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Urshifu - Close Combat - TM167
  (892, 89200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 62),
  -- Urshifu - Tera Blast - TM171
  (892, 89200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Urshifu - Wicked Blow - Evolution
  (892, 89200, 817, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Urshifu (Rapid Strike) - Leer - Level 1
  (892, 89201, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Urshifu (Rapid Strike) - Focus Energy - Level 1
  (892, 89201, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Urshifu (Rapid Strike) - Endure - Level 1
  (892, 89201, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Urshifu (Rapid Strike) - Rock Smash - Level 1
  (892, 89201, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Urshifu (Rapid Strike) - Aqua Jet - Level 1
  (892, 89201, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Urshifu (Rapid Strike) - Aerial Ace - Level 12
  (892, 89201, 332, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Urshifu (Rapid Strike) - Scary Face - Level 16
  (892, 89201, 184, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Urshifu (Rapid Strike) - Headbutt - Level 20
  (892, 89201, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Urshifu (Rapid Strike) - Brick Break - Level 24
  (892, 89201, 280, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Urshifu (Rapid Strike) - Detect - Level 28
  (892, 89201, 197, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Urshifu (Rapid Strike) - Bulk Up - Level 32
  (892, 89201, 339, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Urshifu (Rapid Strike) - Iron Head - Level 36
  (892, 89201, 442, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Urshifu (Rapid Strike) - Dynamic Punch - Level 40
  (892, 89201, 223, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Urshifu (Rapid Strike) - Counter - Level 44
  (892, 89201, 68, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Urshifu (Rapid Strike) - Close Combat - Level 48
  (892, 89201, 370, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Urshifu (Rapid Strike) - Focus Punch - Level 52
  (892, 89201, 264, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Urshifu (Rapid Strike) - Surging Strikes - Evolution
  (892, 89201, 818, 23, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Urshifu (Rapid Strike) - Take Down - TM001
  (892, 89201, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Urshifu (Rapid Strike) - Scary Face - TM006
  (892, 89201, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Urshifu (Rapid Strike) - Protect - TM007
  (892, 89201, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Urshifu (Rapid Strike) - Low Kick - TM012
  (892, 89201, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Urshifu (Rapid Strike) - Acrobatics - TM014
  (892, 89201, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Urshifu (Rapid Strike) - Trailblaze - TM020
  (892, 89201, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Urshifu (Rapid Strike) - Chilling Water - TM022
  (892, 89201, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Urshifu (Rapid Strike) - Facade - TM025
  (892, 89201, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Urshifu (Rapid Strike) - Aerial Ace - TM027
  (892, 89201, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Urshifu (Rapid Strike) - Swift - TM032
  (892, 89201, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Urshifu (Rapid Strike) - Rock Tomb - TM036
  (892, 89201, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Urshifu (Rapid Strike) - Low Sweep - TM039
  (892, 89201, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Urshifu (Rapid Strike) - Fling - TM043
  (892, 89201, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Urshifu (Rapid Strike) - Endure - TM047
  (892, 89201, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Urshifu (Rapid Strike) - Rain Dance - TM050
  (892, 89201, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Urshifu (Rapid Strike) - Dig - TM055
  (892, 89201, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Urshifu (Rapid Strike) - False Swipe - TM057
  (892, 89201, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 34),
  -- Urshifu (Rapid Strike) - Brick Break - TM058
  (892, 89201, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Urshifu (Rapid Strike) - Zen Headbutt - TM059
  (892, 89201, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Urshifu (Rapid Strike) - U-turn - TM060
  (892, 89201, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Urshifu (Rapid Strike) - Bulk Up - TM064
  (892, 89201, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Urshifu (Rapid Strike) - Body Slam - TM066
  (892, 89201, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Urshifu (Rapid Strike) - Fire Punch - TM067
  (892, 89201, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Urshifu (Rapid Strike) - Thunder Punch - TM068
  (892, 89201, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Urshifu (Rapid Strike) - Ice Punch - TM069
  (892, 89201, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Urshifu (Rapid Strike) - Sleep Talk - TM070
  (892, 89201, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Urshifu (Rapid Strike) - Drain Punch - TM073
  (892, 89201, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Urshifu (Rapid Strike) - Waterfall - TM077
  (892, 89201, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 45),
  -- Urshifu (Rapid Strike) - Poison Jab - TM083
  (892, 89201, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 46),
  -- Urshifu (Rapid Strike) - Rest - TM085
  (892, 89201, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Urshifu (Rapid Strike) - Rock Slide - TM086
  (892, 89201, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 48),
  -- Urshifu (Rapid Strike) - Taunt - TM087
  (892, 89201, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 49),
  -- Urshifu (Rapid Strike) - Swords Dance - TM088
  (892, 89201, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 50),
  -- Urshifu (Rapid Strike) - Body Press - TM089
  (892, 89201, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 51),
  -- Urshifu (Rapid Strike) - Iron Head - TM099
  (892, 89201, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 52),
  -- Urshifu (Rapid Strike) - Substitute - TM103
  (892, 89201, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Urshifu (Rapid Strike) - Iron Defense - TM104
  (892, 89201, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 54),
  -- Urshifu (Rapid Strike) - Liquidation - TM110
  (892, 89201, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 55),
  -- Urshifu (Rapid Strike) - Aura Sphere - TM112
  (892, 89201, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 56),
  -- Urshifu (Rapid Strike) - Ice Spinner - TM124
  (892, 89201, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 57),
  -- Urshifu (Rapid Strike) - Helping Hand - TM130
  (892, 89201, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Urshifu (Rapid Strike) - Reversal - TM134
  (892, 89201, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 59),
  -- Urshifu (Rapid Strike) - Stone Edge - TM150
  (892, 89201, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 60),
  -- Urshifu (Rapid Strike) - Giga Impact - TM152
  (892, 89201, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Urshifu (Rapid Strike) - Focus Blast - TM158
  (892, 89201, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Urshifu (Rapid Strike) - Close Combat - TM167
  (892, 89201, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Urshifu (Rapid Strike) - Tera Blast - TM171
  (892, 89201, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Zarude - Scratch - Level 1
  (893, 89300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zarude - Bind - Level 1
  (893, 89300, 20, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zarude - Leer - Level 6
  (893, 89300, 43, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Zarude - Vine Whip - Level 12
  (893, 89300, 22, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Zarude - Growth - Level 18
  (893, 89300, 74, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Zarude - Fury Swipes - Level 24
  (893, 89300, 154, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Zarude - Scary Face - Level 30
  (893, 89300, 184, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Zarude - Grass Knot - Level 36
  (893, 89300, 447, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Zarude - Bite - Level 42
  (893, 89300, 44, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Zarude - U-turn - Level 48
  (893, 89300, 369, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Zarude - Swagger - Level 54
  (893, 89300, 207, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Zarude - Energy Ball - Level 60
  (893, 89300, 412, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Zarude - Synthesis - Level 66
  (893, 89300, 235, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Zarude - Hammer Arm - Level 72
  (893, 89300, 359, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Zarude - Thrash - Level 78
  (893, 89300, 37, 23, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Zarude - Power Whip - Level 84
  (893, 89300, 438, 23, NULL, 1, 84, NULL, NULL, NULL, 16),
  -- Zarude - Jungle Healing - Level 90
  (893, 89300, 816, 23, NULL, 1, 90, NULL, NULL, NULL, 17),
  -- Zarude - Take Down - TM001
  (893, 89300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Zarude - Scary Face - TM006
  (893, 89300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Zarude - Protect - TM007
  (893, 89300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Zarude - Low Kick - TM012
  (893, 89300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Zarude - Acrobatics - TM014
  (893, 89300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Zarude - Thief - TM018
  (893, 89300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Zarude - Trailblaze - TM020
  (893, 89300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Zarude - Facade - TM025
  (893, 89300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Zarude - Aerial Ace - TM027
  (893, 89300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Zarude - Snarl - TM030
  (893, 89300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Zarude - Swift - TM032
  (893, 89300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Zarude - Magical Leaf - TM033
  (893, 89300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 29),
  -- Zarude - Mud Shot - TM035
  (893, 89300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Zarude - Rock Tomb - TM036
  (893, 89300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Zarude - Low Sweep - TM039
  (893, 89300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Zarude - Fling - TM043
  (893, 89300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Zarude - Endure - TM047
  (893, 89300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Zarude - Sunny Day - TM049
  (893, 89300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Zarude - Dig - TM055
  (893, 89300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Zarude - Bullet Seed - TM056
  (893, 89300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 37),
  -- Zarude - Brick Break - TM058
  (893, 89300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Zarude - U-turn - TM060
  (893, 89300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 39),
  -- Zarude - Bulk Up - TM064
  (893, 89300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Zarude - Body Slam - TM066
  (893, 89300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Zarude - Sleep Talk - TM070
  (893, 89300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Zarude - Seed Bomb - TM071
  (893, 89300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Zarude - Drain Punch - TM073
  (893, 89300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Zarude - Grass Knot - TM081
  (893, 89300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Zarude - Stomping Tantrum - TM084
  (893, 89300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 46),
  -- Zarude - Rest - TM085
  (893, 89300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Zarude - Rock Slide - TM086
  (893, 89300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 48),
  -- Zarude - Taunt - TM087
  (893, 89300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 49),
  -- Zarude - Swords Dance - TM088
  (893, 89300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 50),
  -- Zarude - Dark Pulse - TM094
  (893, 89300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 51),
  -- Zarude - Substitute - TM103
  (893, 89300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Zarude - Crunch - TM108
  (893, 89300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Zarude - Giga Drain - TM111
  (893, 89300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 54),
  -- Zarude - Hyper Voice - TM117
  (893, 89300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 55),
  -- Zarude - Energy Ball - TM119
  (893, 89300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 56),
  -- Zarude - Encore - TM122
  (893, 89300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 57),
  -- Zarude - Helping Hand - TM130
  (893, 89300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Zarude - Grassy Terrain - TM137
  (893, 89300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 59),
  -- Zarude - Nasty Plot - TM140
  (893, 89300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 60),
  -- Zarude - Giga Impact - TM152
  (893, 89300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Zarude - Leaf Storm - TM159
  (893, 89300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 62),
  -- Zarude - Hyper Beam - TM163
  (893, 89300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Zarude - Close Combat - TM167
  (893, 89300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 64),
  -- Zarude - Solar Beam - TM168
  (893, 89300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Zarude - Tera Blast - TM171
  (893, 89300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Regieleki - Thunder Shock - Level 1
  (894, 89400, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regieleki - Rapid Spin - Level 1
  (894, 89400, 229, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regieleki - Electroweb - Level 6
  (894, 89400, 527, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regieleki - Ancient Power - Level 12
  (894, 89400, 246, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regieleki - Shock Wave - Level 18
  (894, 89400, 351, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regieleki - Thunder Wave - Level 24
  (894, 89400, 86, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regieleki - Extreme Speed - Level 30
  (894, 89400, 245, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regieleki - Thunder Cage - Level 36
  (894, 89400, 819, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regieleki - Thunderbolt - Level 42
  (894, 89400, 85, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regieleki - Magnet Rise - Level 48
  (894, 89400, 393, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regieleki - Thrash - Level 54
  (894, 89400, 37, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regieleki - Lock-On - Level 60
  (894, 89400, 199, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regieleki - Zap Cannon - Level 66
  (894, 89400, 192, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regieleki - Hyper Beam - Level 72
  (894, 89400, 63, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regieleki - Explosion - Level 78
  (894, 89400, 153, 23, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regieleki - Take Down - TM001
  (894, 89400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Regieleki - Agility - TM004
  (894, 89400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Regieleki - Protect - TM007
  (894, 89400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Regieleki - Acrobatics - TM014
  (894, 89400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Regieleki - Charge Beam - TM023
  (894, 89400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Regieleki - Facade - TM025
  (894, 89400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Regieleki - Swift - TM032
  (894, 89400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Regieleki - Endure - TM047
  (894, 89400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Regieleki - Volt Switch - TM048
  (894, 89400, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Regieleki - Rain Dance - TM050
  (894, 89400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Regieleki - Body Slam - TM066
  (894, 89400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Regieleki - Sleep Talk - TM070
  (894, 89400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Regieleki - Electro Ball - TM072
  (894, 89400, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 28),
  -- Regieleki - Reflect - TM074
  (894, 89400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Regieleki - Light Screen - TM075
  (894, 89400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Regieleki - Thunder Wave - TM082
  (894, 89400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Regieleki - Rest - TM085
  (894, 89400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Regieleki - Eerie Impulse - TM096
  (894, 89400, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 33),
  -- Regieleki - Substitute - TM103
  (894, 89400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Regieleki - Thunderbolt - TM126
  (894, 89400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 35),
  -- Regieleki - Electric Terrain - TM136
  (894, 89400, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 36),
  -- Regieleki - Wild Charge - TM147
  (894, 89400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 37),
  -- Regieleki - Giga Impact - TM152
  (894, 89400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 38),
  -- Regieleki - Hyper Beam - TM163
  (894, 89400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 39),
  -- Regieleki - Thunder - TM166
  (894, 89400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 40),
  -- Regieleki - Tera Blast - TM171
  (894, 89400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 41),
  -- Regidrago - Vise Grip - Level 1
  (895, 89500, 11, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regidrago - Twister - Level 1
  (895, 89500, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regidrago - Bite - Level 6
  (895, 89500, 44, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regidrago - Ancient Power - Level 12
  (895, 89500, 246, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regidrago - Dragon Breath - Level 18
  (895, 89500, 225, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regidrago - Crunch - Level 30
  (895, 89500, 242, 23, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Regidrago - Dragon Claw - Level 36
  (895, 89500, 337, 23, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Regidrago - Hammer Arm - Level 42
  (895, 89500, 359, 23, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Regidrago - Dragon Dance - Level 48
  (895, 89500, 349, 23, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Regidrago - Thrash - Level 54
  (895, 89500, 37, 23, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Regidrago - Focus Energy - Level 60
  (895, 89500, 116, 23, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Regidrago - Dragon Energy - Level 66
  (895, 89500, 820, 23, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Regidrago - Hyper Beam - Level 72
  (895, 89500, 63, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Regidrago - Explosion - Level 78
  (895, 89500, 153, 23, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Regidrago - Take Down - TM001
  (895, 89500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Regidrago - Protect - TM007
  (895, 89500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Regidrago - Fire Fang - TM008
  (895, 89500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 17),
  -- Regidrago - Thunder Fang - TM009
  (895, 89500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 18),
  -- Regidrago - Ice Fang - TM010
  (895, 89500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Regidrago - Facade - TM025
  (895, 89500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Regidrago - Swift - TM032
  (895, 89500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Regidrago - Endure - TM047
  (895, 89500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Regidrago - Body Slam - TM066
  (895, 89500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 23),
  -- Regidrago - Sleep Talk - TM070
  (895, 89500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 24),
  -- Regidrago - Reflect - TM074
  (895, 89500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 25),
  -- Regidrago - Light Screen - TM075
  (895, 89500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 26),
  -- Regidrago - Dragon Claw - TM078
  (895, 89500, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 27),
  -- Regidrago - Rest - TM085
  (895, 89500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Regidrago - Dragon Dance - TM100
  (895, 89500, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 29),
  -- Regidrago - Substitute - TM103
  (895, 89500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Regidrago - Crunch - TM108
  (895, 89500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 31),
  -- Regidrago - Dragon Pulse - TM115
  (895, 89500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 32),
  -- Regidrago - Earth Power - TM133
  (895, 89500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 33),
  -- Regidrago - Reversal - TM134
  (895, 89500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 34),
  -- Regidrago - Earthquake - TM149
  (895, 89500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 35),
  -- Regidrago - Giga Impact - TM152
  (895, 89500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 36),
  -- Regidrago - Outrage - TM156
  (895, 89500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 37),
  -- Regidrago - Hyper Beam - TM163
  (895, 89500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 38),
  -- Regidrago - Draco Meteor - TM169
  (895, 89500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 39),
  -- Regidrago - Tera Blast - TM171
  (895, 89500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Glastrier - Tackle - Level 1
  (896, 89600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glastrier - Tail Whip - Level 1
  (896, 89600, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glastrier - Double Kick - Level 6
  (896, 89600, 24, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Glastrier - Avalanche - Level 12
  (896, 89600, 419, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Glastrier - Stomp - Level 18
  (896, 89600, 23, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Glastrier - Torment - Level 24
  (896, 89600, 259, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Glastrier - Mist - Level 30
  (896, 89600, 54, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Glastrier - Icicle Crash - Level 36
  (896, 89600, 556, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Glastrier - Take Down - Level 42
  (896, 89600, 36, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Glastrier - Iron Defense - Level 48
  (896, 89600, 334, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Glastrier - Thrash - Level 54
  (896, 89600, 37, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Glastrier - Taunt - Level 60
  (896, 89600, 269, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Glastrier - Double-Edge - Level 66
  (896, 89600, 38, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Glastrier - Swords Dance - Level 72
  (896, 89600, 14, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Glastrier - Take Down - TM001
  (896, 89600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Glastrier - Scary Face - TM006
  (896, 89600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Glastrier - Protect - TM007
  (896, 89600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Glastrier - Trailblaze - TM020
  (896, 89600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Glastrier - Facade - TM025
  (896, 89600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Glastrier - Bulldoze - TM028
  (896, 89600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Glastrier - Snarl - TM030
  (896, 89600, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 21),
  -- Glastrier - Icy Wind - TM034
  (896, 89600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Glastrier - Mud Shot - TM035
  (896, 89600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Glastrier - Avalanche - TM046
  (896, 89600, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 24),
  -- Glastrier - Endure - TM047
  (896, 89600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Glastrier - Snowscape - TM052
  (896, 89600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 26),
  -- Glastrier - Smart Strike - TM053
  (896, 89600, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 27),
  -- Glastrier - Zen Headbutt - TM059
  (896, 89600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Glastrier - Body Slam - TM066
  (896, 89600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Glastrier - Sleep Talk - TM070
  (896, 89600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Glastrier - Stomping Tantrum - TM084
  (896, 89600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 31),
  -- Glastrier - Rest - TM085
  (896, 89600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Glastrier - Taunt - TM087
  (896, 89600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Glastrier - Swords Dance - TM088
  (896, 89600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Glastrier - Body Press - TM089
  (896, 89600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 35),
  -- Glastrier - Substitute - TM103
  (896, 89600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Glastrier - Iron Defense - TM104
  (896, 89600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Glastrier - Crunch - TM108
  (896, 89600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 38),
  -- Glastrier - Heavy Slam - TM121
  (896, 89600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Glastrier - Ice Beam - TM135
  (896, 89600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Glastrier - Blizzard - TM143
  (896, 89600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Glastrier - Giga Impact - TM152
  (896, 89600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Glastrier - Outrage - TM156
  (896, 89600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 43),
  -- Glastrier - Hyper Beam - TM163
  (896, 89600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Glastrier - Close Combat - TM167
  (896, 89600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 45),
  -- Glastrier - Tera Blast - TM171
  (896, 89600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Spectrier - Tackle - Level 1
  (897, 89700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spectrier - Tail Whip - Level 1
  (897, 89700, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spectrier - Double Kick - Level 6
  (897, 89700, 24, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Spectrier - Hex - Level 12
  (897, 89700, 506, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Spectrier - Stomp - Level 18
  (897, 89700, 23, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Spectrier - Confuse Ray - Level 24
  (897, 89700, 109, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Spectrier - Haze - Level 30
  (897, 89700, 114, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Spectrier - Shadow Ball - Level 36
  (897, 89700, 247, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Spectrier - Take Down - Level 42
  (897, 89700, 36, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Spectrier - Agility - Level 48
  (897, 89700, 97, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Spectrier - Thrash - Level 54
  (897, 89700, 37, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Spectrier - Disable - Level 60
  (897, 89700, 50, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Spectrier - Double-Edge - Level 66
  (897, 89700, 38, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Spectrier - Nasty Plot - Level 72
  (897, 89700, 417, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Spectrier - Take Down - TM001
  (897, 89700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Spectrier - Agility - TM004
  (897, 89700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Spectrier - Scary Face - TM006
  (897, 89700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Spectrier - Protect - TM007
  (897, 89700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Spectrier - Confuse Ray - TM017
  (897, 89700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Spectrier - Facade - TM025
  (897, 89700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Spectrier - Bulldoze - TM028
  (897, 89700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Spectrier - Hex - TM029
  (897, 89700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Spectrier - Snarl - TM030
  (897, 89700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Spectrier - Swift - TM032
  (897, 89700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Spectrier - Mud Shot - TM035
  (897, 89700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Spectrier - Draining Kiss - TM037
  (897, 89700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 26),
  -- Spectrier - Night Shade - TM042
  (897, 89700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Spectrier - Endure - TM047
  (897, 89700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Spectrier - Foul Play - TM062
  (897, 89700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Spectrier - Body Slam - TM066
  (897, 89700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Spectrier - Sleep Talk - TM070
  (897, 89700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Spectrier - Stomping Tantrum - TM084
  (897, 89700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Spectrier - Rest - TM085
  (897, 89700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Spectrier - Taunt - TM087
  (897, 89700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Spectrier - Dark Pulse - TM094
  (897, 89700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 35),
  -- Spectrier - Substitute - TM103
  (897, 89700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Spectrier - Will-O-Wisp - TM107
  (897, 89700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 37),
  -- Spectrier - Crunch - TM108
  (897, 89700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 38),
  -- Spectrier - Shadow Ball - TM114
  (897, 89700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Spectrier - Psychic - TM120
  (897, 89700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 40),
  -- Spectrier - Calm Mind - TM129
  (897, 89700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 41),
  -- Spectrier - Nasty Plot - TM140
  (897, 89700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 42),
  -- Spectrier - Phantom Force - TM151
  (897, 89700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 43),
  -- Spectrier - Giga Impact - TM152
  (897, 89700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 44),
  -- Spectrier - Hyper Beam - TM163
  (897, 89700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 45),
  -- Spectrier - Tera Blast - TM171
  (897, 89700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Calyrex - Pound - Level 1
  (898, 89800, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Calyrex - Mega Drain - Level 1
  (898, 89800, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Calyrex - Growth - Level 1
  (898, 89800, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Calyrex - Confusion - Level 1
  (898, 89800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Calyrex - Life Dew - Level 8
  (898, 89800, 791, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Calyrex - Giga Drain - Level 16
  (898, 89800, 202, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Calyrex - Psyshock - Level 24
  (898, 89800, 473, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Calyrex - Helping Hand - Level 32
  (898, 89800, 270, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Calyrex - Grassy Terrain - Level 40
  (898, 89800, 580, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Calyrex - Psychic Terrain - Level 40
  (898, 89800, 678, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Calyrex - Energy Ball - Level 48
  (898, 89800, 412, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Calyrex - Psychic - Level 56
  (898, 89800, 94, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Calyrex - Leech Seed - Level 64
  (898, 89800, 73, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Calyrex - Heal Pulse - Level 72
  (898, 89800, 505, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Calyrex - Solar Beam - Level 80
  (898, 89800, 76, 23, NULL, 1, 80, NULL, NULL, NULL, 15),
  -- Calyrex - Future Sight - Level 88
  (898, 89800, 248, 23, NULL, 1, 88, NULL, NULL, NULL, 16),
  -- Calyrex - Take Down - TM001
  (898, 89800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Calyrex - Agility - TM004
  (898, 89800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Calyrex - Scary Face - TM006
  (898, 89800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Calyrex - Protect - TM007
  (898, 89800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Calyrex - Psybeam - TM016
  (898, 89800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Calyrex - Facade - TM025
  (898, 89800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Calyrex - Snarl - TM030
  (898, 89800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Calyrex - Swift - TM032
  (898, 89800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Calyrex - Magical Leaf - TM033
  (898, 89800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Calyrex - Mud Shot - TM035
  (898, 89800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Calyrex - Draining Kiss - TM037
  (898, 89800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 27),
  -- Calyrex - Stored Power - TM041
  (898, 89800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Calyrex - Endure - TM047
  (898, 89800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Calyrex - Sunny Day - TM049
  (898, 89800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Calyrex - Psyshock - TM054
  (898, 89800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Calyrex - Bullet Seed - TM056
  (898, 89800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Calyrex - Zen Headbutt - TM059
  (898, 89800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Calyrex - Sleep Talk - TM070
  (898, 89800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Calyrex - Seed Bomb - TM071
  (898, 89800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Calyrex - Reflect - TM074
  (898, 89800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Calyrex - Light Screen - TM075
  (898, 89800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Calyrex - Metronome - TM080
  (898, 89800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 38),
  -- Calyrex - Grass Knot - TM081
  (898, 89800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Calyrex - Rest - TM085
  (898, 89800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Calyrex - Body Press - TM089
  (898, 89800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Calyrex - Imprison - TM092
  (898, 89800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Calyrex - Skill Swap - TM098
  (898, 89800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Calyrex - Substitute - TM103
  (898, 89800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Calyrex - Trick - TM109
  (898, 89800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 45),
  -- Calyrex - Giga Drain - TM111
  (898, 89800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 46),
  -- Calyrex - Energy Ball - TM119
  (898, 89800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 47),
  -- Calyrex - Psychic - TM120
  (898, 89800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Calyrex - Encore - TM122
  (898, 89800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Calyrex - Calm Mind - TM129
  (898, 89800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Calyrex - Helping Hand - TM130
  (898, 89800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Calyrex - Pollen Puff - TM131
  (898, 89800, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 52),
  -- Calyrex - Baton Pass - TM132
  (898, 89800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 53),
  -- Calyrex - Grassy Terrain - TM137
  (898, 89800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 54),
  -- Calyrex - Psychic Terrain - TM138
  (898, 89800, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 55),
  -- Calyrex - Giga Impact - TM152
  (898, 89800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Calyrex - Leaf Storm - TM159
  (898, 89800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 57),
  -- Calyrex - Trick Room - TM161
  (898, 89800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 58),
  -- Calyrex - Hyper Beam - TM163
  (898, 89800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Calyrex - Solar Beam - TM168
  (898, 89800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 60),
  -- Calyrex - Tera Blast - TM171
  (898, 89800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Calyrex (Ice Rider) - Glacial Lance - Level 1
  (898, 89801, 824, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Calyrex (Ice Rider) - Icicle Crash - Level 1
  (898, 89801, 556, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Calyrex (Ice Rider) - Avalanche - Level 1
  (898, 89801, 419, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Calyrex (Ice Rider) - Iron Defense - Level 1
  (898, 89801, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Calyrex (Ice Rider) - Taunt - Level 1
  (898, 89801, 269, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Calyrex (Ice Rider) - Torment - Level 1
  (898, 89801, 259, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Calyrex (Ice Rider) - Confusion - Level 1
  (898, 89801, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Calyrex (Ice Rider) - Growth - Level 1
  (898, 89801, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Calyrex (Ice Rider) - Mega Drain - Level 1
  (898, 89801, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Calyrex (Ice Rider) - Pound - Level 1
  (898, 89801, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Calyrex (Ice Rider) - Tail Whip - Level 1
  (898, 89801, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Calyrex (Ice Rider) - Swords Dance - Level 1
  (898, 89801, 14, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Calyrex (Ice Rider) - Double-Edge - Level 1
  (898, 89801, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Calyrex (Ice Rider) - Thrash - Level 1
  (898, 89801, 37, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Calyrex (Ice Rider) - Stomp - Level 1
  (898, 89801, 23, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Calyrex (Ice Rider) - Take Down - Level 1
  (898, 89801, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Calyrex (Ice Rider) - Tackle - Level 1
  (898, 89801, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Calyrex (Ice Rider) - Mist - Level 1
  (898, 89801, 54, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Calyrex (Ice Rider) - Double Kick - Level 1
  (898, 89801, 24, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Calyrex (Ice Rider) - Life Dew - Level 8
  (898, 89801, 791, 23, NULL, 1, 8, NULL, NULL, NULL, 20),
  -- Calyrex (Ice Rider) - Giga Drain - Level 16
  (898, 89801, 202, 23, NULL, 1, 16, NULL, NULL, NULL, 21),
  -- Calyrex (Ice Rider) - Psyshock - Level 24
  (898, 89801, 473, 23, NULL, 1, 24, NULL, NULL, NULL, 22),
  -- Calyrex (Ice Rider) - Helping Hand - Level 32
  (898, 89801, 270, 23, NULL, 1, 32, NULL, NULL, NULL, 23),
  -- Calyrex (Ice Rider) - Grassy Terrain - Level 40
  (898, 89801, 580, 23, NULL, 1, 40, NULL, NULL, NULL, 24),
  -- Calyrex (Ice Rider) - Psychic Terrain - Level 40
  (898, 89801, 678, 23, NULL, 1, 40, NULL, NULL, NULL, 25),
  -- Calyrex (Ice Rider) - Energy Ball - Level 48
  (898, 89801, 412, 23, NULL, 1, 48, NULL, NULL, NULL, 26),
  -- Calyrex (Ice Rider) - Psychic - Level 56
  (898, 89801, 94, 23, NULL, 1, 56, NULL, NULL, NULL, 27),
  -- Calyrex (Ice Rider) - Leech Seed - Level 64
  (898, 89801, 73, 23, NULL, 1, 64, NULL, NULL, NULL, 28),
  -- Calyrex (Ice Rider) - Heal Pulse - Level 72
  (898, 89801, 505, 23, NULL, 1, 72, NULL, NULL, NULL, 29),
  -- Calyrex (Ice Rider) - Solar Beam - Level 80
  (898, 89801, 76, 23, NULL, 1, 80, NULL, NULL, NULL, 30),
  -- Calyrex (Ice Rider) - Future Sight - Level 88
  (898, 89801, 248, 23, NULL, 1, 88, NULL, NULL, NULL, 31),
  -- Calyrex (Ice Rider) - Take Down - TM001
  (898, 89801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 32),
  -- Calyrex (Ice Rider) - Agility - TM004
  (898, 89801, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 33),
  -- Calyrex (Ice Rider) - Scary Face - TM006
  (898, 89801, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 34),
  -- Calyrex (Ice Rider) - Protect - TM007
  (898, 89801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 35),
  -- Calyrex (Ice Rider) - Psybeam - TM016
  (898, 89801, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 36),
  -- Calyrex (Ice Rider) - Trailblaze - TM020
  (898, 89801, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 37),
  -- Calyrex (Ice Rider) - Facade - TM025
  (898, 89801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 38),
  -- Calyrex (Ice Rider) - Bulldoze - TM028
  (898, 89801, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 39),
  -- Calyrex (Ice Rider) - Snarl - TM030
  (898, 89801, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 40),
  -- Calyrex (Ice Rider) - Swift - TM032
  (898, 89801, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 41),
  -- Calyrex (Ice Rider) - Magical Leaf - TM033
  (898, 89801, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 42),
  -- Calyrex (Ice Rider) - Icy Wind - TM034
  (898, 89801, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 43),
  -- Calyrex (Ice Rider) - Mud Shot - TM035
  (898, 89801, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 44),
  -- Calyrex (Ice Rider) - Draining Kiss - TM037
  (898, 89801, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 45),
  -- Calyrex (Ice Rider) - Stored Power - TM041
  (898, 89801, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 46),
  -- Calyrex (Ice Rider) - Avalanche - TM046
  (898, 89801, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 47),
  -- Calyrex (Ice Rider) - Endure - TM047
  (898, 89801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 48),
  -- Calyrex (Ice Rider) - Sunny Day - TM049
  (898, 89801, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 49),
  -- Calyrex (Ice Rider) - Snowscape - TM052
  (898, 89801, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 50),
  -- Calyrex (Ice Rider) - Smart Strike - TM053
  (898, 89801, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 51),
  -- Calyrex (Ice Rider) - Psyshock - TM054
  (898, 89801, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 52),
  -- Calyrex (Ice Rider) - Bullet Seed - TM056
  (898, 89801, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 53),
  -- Calyrex (Ice Rider) - Zen Headbutt - TM059
  (898, 89801, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 54),
  -- Calyrex (Ice Rider) - Body Slam - TM066
  (898, 89801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 55),
  -- Calyrex (Ice Rider) - Sleep Talk - TM070
  (898, 89801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 56),
  -- Calyrex (Ice Rider) - Seed Bomb - TM071
  (898, 89801, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 57),
  -- Calyrex (Ice Rider) - Reflect - TM074
  (898, 89801, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 58),
  -- Calyrex (Ice Rider) - Light Screen - TM075
  (898, 89801, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 59),
  -- Calyrex (Ice Rider) - Metronome - TM080
  (898, 89801, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 60),
  -- Calyrex (Ice Rider) - Grass Knot - TM081
  (898, 89801, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 61),
  -- Calyrex (Ice Rider) - Stomping Tantrum - TM084
  (898, 89801, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 62),
  -- Calyrex (Ice Rider) - Rest - TM085
  (898, 89801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 63),
  -- Calyrex (Ice Rider) - Taunt - TM087
  (898, 89801, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 64),
  -- Calyrex (Ice Rider) - Swords Dance - TM088
  (898, 89801, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 65),
  -- Calyrex (Ice Rider) - Body Press - TM089
  (898, 89801, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 66),
  -- Calyrex (Ice Rider) - Imprison - TM092
  (898, 89801, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 67),
  -- Calyrex (Ice Rider) - Skill Swap - TM098
  (898, 89801, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 68),
  -- Calyrex (Ice Rider) - Substitute - TM103
  (898, 89801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 69),
  -- Calyrex (Ice Rider) - Iron Defense - TM104
  (898, 89801, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 70),
  -- Calyrex (Ice Rider) - Crunch - TM108
  (898, 89801, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 71),
  -- Calyrex (Ice Rider) - Trick - TM109
  (898, 89801, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 72),
  -- Calyrex (Ice Rider) - Giga Drain - TM111
  (898, 89801, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 73),
  -- Calyrex (Ice Rider) - Energy Ball - TM119
  (898, 89801, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 74),
  -- Calyrex (Ice Rider) - Psychic - TM120
  (898, 89801, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 75),
  -- Calyrex (Ice Rider) - Heavy Slam - TM121
  (898, 89801, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 76),
  -- Calyrex (Ice Rider) - Encore - TM122
  (898, 89801, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 77),
  -- Calyrex (Ice Rider) - Calm Mind - TM129
  (898, 89801, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 78),
  -- Calyrex (Ice Rider) - Helping Hand - TM130
  (898, 89801, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 79),
  -- Calyrex (Ice Rider) - Pollen Puff - TM131
  (898, 89801, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 80),
  -- Calyrex (Ice Rider) - Baton Pass - TM132
  (898, 89801, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 81),
  -- Calyrex (Ice Rider) - Ice Beam - TM135
  (898, 89801, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 82),
  -- Calyrex (Ice Rider) - Grassy Terrain - TM137
  (898, 89801, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 83),
  -- Calyrex (Ice Rider) - Psychic Terrain - TM138
  (898, 89801, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 84),
  -- Calyrex (Ice Rider) - Blizzard - TM143
  (898, 89801, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 85),
  -- Calyrex (Ice Rider) - Giga Impact - TM152
  (898, 89801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 86),
  -- Calyrex (Ice Rider) - Outrage - TM156
  (898, 89801, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 87),
  -- Calyrex (Ice Rider) - Leaf Storm - TM159
  (898, 89801, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 88),
  -- Calyrex (Ice Rider) - Trick Room - TM161
  (898, 89801, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 89),
  -- Calyrex (Ice Rider) - Hyper Beam - TM163
  (898, 89801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 90),
  -- Calyrex (Ice Rider) - Close Combat - TM167
  (898, 89801, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 91),
  -- Calyrex (Ice Rider) - Solar Beam - TM168
  (898, 89801, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 92),
  -- Calyrex (Ice Rider) - Tera Blast - TM171
  (898, 89801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 93),
  -- Calyrex (Shadow Rider) - Astral Barrage - Level 1
  (898, 89802, 825, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Calyrex (Shadow Rider) - Hex - Level 1
  (898, 89802, 506, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Calyrex (Shadow Rider) - Nasty Plot - Level 1
  (898, 89802, 417, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Calyrex (Shadow Rider) - Shadow Ball - Level 1
  (898, 89802, 247, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Calyrex (Shadow Rider) - Haze - Level 1
  (898, 89802, 114, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Calyrex (Shadow Rider) - Confuse Ray - Level 1
  (898, 89802, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Calyrex (Shadow Rider) - Confusion - Level 1
  (898, 89802, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Calyrex (Shadow Rider) - Growth - Level 1
  (898, 89802, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Calyrex (Shadow Rider) - Mega Drain - Level 1
  (898, 89802, 72, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Calyrex (Shadow Rider) - Agility - Level 1
  (898, 89802, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Calyrex (Shadow Rider) - Stomp - Level 1
  (898, 89802, 23, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Calyrex (Shadow Rider) - Double Kick - Level 1
  (898, 89802, 24, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Calyrex (Shadow Rider) - Disable - Level 1
  (898, 89802, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Calyrex (Shadow Rider) - Tackle - Level 1
  (898, 89802, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Calyrex (Shadow Rider) - Take Down - Level 1
  (898, 89802, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Calyrex (Shadow Rider) - Thrash - Level 1
  (898, 89802, 37, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Calyrex (Shadow Rider) - Pound - Level 1
  (898, 89802, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Calyrex (Shadow Rider) - Double-Edge - Level 1
  (898, 89802, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Calyrex (Shadow Rider) - Tail Whip - Level 1
  (898, 89802, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Calyrex (Shadow Rider) - Life Dew - Level 8
  (898, 89802, 791, 23, NULL, 1, 8, NULL, NULL, NULL, 20),
  -- Calyrex (Shadow Rider) - Giga Drain - Level 16
  (898, 89802, 202, 23, NULL, 1, 16, NULL, NULL, NULL, 21),
  -- Calyrex (Shadow Rider) - Psyshock - Level 24
  (898, 89802, 473, 23, NULL, 1, 24, NULL, NULL, NULL, 22),
  -- Calyrex (Shadow Rider) - Helping Hand - Level 32
  (898, 89802, 270, 23, NULL, 1, 32, NULL, NULL, NULL, 23),
  -- Calyrex (Shadow Rider) - Grassy Terrain - Level 40
  (898, 89802, 580, 23, NULL, 1, 40, NULL, NULL, NULL, 24),
  -- Calyrex (Shadow Rider) - Psychic Terrain - Level 40
  (898, 89802, 678, 23, NULL, 1, 40, NULL, NULL, NULL, 25),
  -- Calyrex (Shadow Rider) - Energy Ball - Level 48
  (898, 89802, 412, 23, NULL, 1, 48, NULL, NULL, NULL, 26),
  -- Calyrex (Shadow Rider) - Psychic - Level 56
  (898, 89802, 94, 23, NULL, 1, 56, NULL, NULL, NULL, 27),
  -- Calyrex (Shadow Rider) - Leech Seed - Level 64
  (898, 89802, 73, 23, NULL, 1, 64, NULL, NULL, NULL, 28),
  -- Calyrex (Shadow Rider) - Heal Pulse - Level 72
  (898, 89802, 505, 23, NULL, 1, 72, NULL, NULL, NULL, 29),
  -- Calyrex (Shadow Rider) - Solar Beam - Level 80
  (898, 89802, 76, 23, NULL, 1, 80, NULL, NULL, NULL, 30),
  -- Calyrex (Shadow Rider) - Future Sight - Level 88
  (898, 89802, 248, 23, NULL, 1, 88, NULL, NULL, NULL, 31),
  -- Calyrex (Shadow Rider) - Take Down - TM001
  (898, 89802, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 32),
  -- Calyrex (Shadow Rider) - Agility - TM004
  (898, 89802, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 33),
  -- Calyrex (Shadow Rider) - Scary Face - TM006
  (898, 89802, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 34),
  -- Calyrex (Shadow Rider) - Protect - TM007
  (898, 89802, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 35),
  -- Calyrex (Shadow Rider) - Psybeam - TM016
  (898, 89802, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 36),
  -- Calyrex (Shadow Rider) - Confuse Ray - TM017
  (898, 89802, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 37),
  -- Calyrex (Shadow Rider) - Facade - TM025
  (898, 89802, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 38),
  -- Calyrex (Shadow Rider) - Bulldoze - TM028
  (898, 89802, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 39),
  -- Calyrex (Shadow Rider) - Hex - TM029
  (898, 89802, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 40),
  -- Calyrex (Shadow Rider) - Snarl - TM030
  (898, 89802, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 41),
  -- Calyrex (Shadow Rider) - Swift - TM032
  (898, 89802, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 42),
  -- Calyrex (Shadow Rider) - Magical Leaf - TM033
  (898, 89802, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 43),
  -- Calyrex (Shadow Rider) - Mud Shot - TM035
  (898, 89802, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 44),
  -- Calyrex (Shadow Rider) - Draining Kiss - TM037
  (898, 89802, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 45),
  -- Calyrex (Shadow Rider) - Stored Power - TM041
  (898, 89802, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 46),
  -- Calyrex (Shadow Rider) - Night Shade - TM042
  (898, 89802, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 47),
  -- Calyrex (Shadow Rider) - Endure - TM047
  (898, 89802, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 48),
  -- Calyrex (Shadow Rider) - Sunny Day - TM049
  (898, 89802, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 49),
  -- Calyrex (Shadow Rider) - Psyshock - TM054
  (898, 89802, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 50),
  -- Calyrex (Shadow Rider) - Bullet Seed - TM056
  (898, 89802, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 51),
  -- Calyrex (Shadow Rider) - Zen Headbutt - TM059
  (898, 89802, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 52),
  -- Calyrex (Shadow Rider) - Foul Play - TM062
  (898, 89802, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 53),
  -- Calyrex (Shadow Rider) - Body Slam - TM066
  (898, 89802, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 54),
  -- Calyrex (Shadow Rider) - Sleep Talk - TM070
  (898, 89802, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 55),
  -- Calyrex (Shadow Rider) - Seed Bomb - TM071
  (898, 89802, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 56),
  -- Calyrex (Shadow Rider) - Reflect - TM074
  (898, 89802, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 57),
  -- Calyrex (Shadow Rider) - Light Screen - TM075
  (898, 89802, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 58),
  -- Calyrex (Shadow Rider) - Metronome - TM080
  (898, 89802, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 59),
  -- Calyrex (Shadow Rider) - Grass Knot - TM081
  (898, 89802, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 60),
  -- Calyrex (Shadow Rider) - Stomping Tantrum - TM084
  (898, 89802, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 61),
  -- Calyrex (Shadow Rider) - Rest - TM085
  (898, 89802, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 62),
  -- Calyrex (Shadow Rider) - Taunt - TM087
  (898, 89802, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 63),
  -- Calyrex (Shadow Rider) - Imprison - TM092
  (898, 89802, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 64),
  -- Calyrex (Shadow Rider) - Dark Pulse - TM094
  (898, 89802, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 65),
  -- Calyrex (Shadow Rider) - Skill Swap - TM098
  (898, 89802, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 66),
  -- Calyrex (Shadow Rider) - Substitute - TM103
  (898, 89802, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 67),
  -- Calyrex (Shadow Rider) - Will-O-Wisp - TM107
  (898, 89802, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 68),
  -- Calyrex (Shadow Rider) - Crunch - TM108
  (898, 89802, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 69),
  -- Calyrex (Shadow Rider) - Trick - TM109
  (898, 89802, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 70),
  -- Calyrex (Shadow Rider) - Giga Drain - TM111
  (898, 89802, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 71),
  -- Calyrex (Shadow Rider) - Shadow Ball - TM114
  (898, 89802, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 72),
  -- Calyrex (Shadow Rider) - Energy Ball - TM119
  (898, 89802, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 73),
  -- Calyrex (Shadow Rider) - Psychic - TM120
  (898, 89802, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 74),
  -- Calyrex (Shadow Rider) - Encore - TM122
  (898, 89802, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 75),
  -- Calyrex (Shadow Rider) - Calm Mind - TM129
  (898, 89802, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 76),
  -- Calyrex (Shadow Rider) - Helping Hand - TM130
  (898, 89802, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 77),
  -- Calyrex (Shadow Rider) - Pollen Puff - TM131
  (898, 89802, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 78),
  -- Calyrex (Shadow Rider) - Baton Pass - TM132
  (898, 89802, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 79),
  -- Calyrex (Shadow Rider) - Grassy Terrain - TM137
  (898, 89802, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 80),
  -- Calyrex (Shadow Rider) - Psychic Terrain - TM138
  (898, 89802, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 81),
  -- Calyrex (Shadow Rider) - Nasty Plot - TM140
  (898, 89802, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 82),
  -- Calyrex (Shadow Rider) - Phantom Force - TM151
  (898, 89802, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 83),
  -- Calyrex (Shadow Rider) - Giga Impact - TM152
  (898, 89802, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 84),
  -- Calyrex (Shadow Rider) - Leaf Storm - TM159
  (898, 89802, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 85),
  -- Calyrex (Shadow Rider) - Trick Room - TM161
  (898, 89802, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 86),
  -- Calyrex (Shadow Rider) - Hyper Beam - TM163
  (898, 89802, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 87),
  -- Calyrex (Shadow Rider) - Solar Beam - TM168
  (898, 89802, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 88),
  -- Calyrex (Shadow Rider) - Tera Blast - TM171
  (898, 89802, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 89),
  -- Wyrdeer - Tackle - Level 1
  (899, 89900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wyrdeer - Leer - Level 3
  (899, 89900, 43, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Wyrdeer - Astonish - Level 7
  (899, 89900, 310, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Wyrdeer - Hypnosis - Level 10
  (899, 89900, 95, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Wyrdeer - Stomp - Level 13
  (899, 89900, 23, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Wyrdeer - Sand Attack - Level 16
  (899, 89900, 28, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Wyrdeer - Take Down - Level 21
  (899, 89900, 36, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wyrdeer - Confuse Ray - Level 23
  (899, 89900, 109, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Wyrdeer - Calm Mind - Level 27
  (899, 89900, 347, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wyrdeer - Role Play - Level 32
  (899, 89900, 272, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Wyrdeer - Zen Headbutt - Level 37
  (899, 89900, 428, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Wyrdeer - Imprison - Level 49
  (899, 89900, 286, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Wyrdeer - Double-Edge - Level 55
  (899, 89900, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Wyrdeer - Megahorn - Level 62
  (899, 89900, 224, 23, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Wyrdeer - Take Down - TM001
  (899, 89900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Wyrdeer - Agility - TM004
  (899, 89900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Wyrdeer - Scary Face - TM006
  (899, 89900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Wyrdeer - Protect - TM007
  (899, 89900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Wyrdeer - Psybeam - TM016
  (899, 89900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Wyrdeer - Confuse Ray - TM017
  (899, 89900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Wyrdeer - Thief - TM018
  (899, 89900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Wyrdeer - Trailblaze - TM020
  (899, 89900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Wyrdeer - Charge Beam - TM023
  (899, 89900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Wyrdeer - Facade - TM025
  (899, 89900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Wyrdeer - Bulldoze - TM028
  (899, 89900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Wyrdeer - Swift - TM032
  (899, 89900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Wyrdeer - Stored Power - TM041
  (899, 89900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Wyrdeer - Endure - TM047
  (899, 89900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Wyrdeer - Sunny Day - TM049
  (899, 89900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Wyrdeer - Rain Dance - TM050
  (899, 89900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Wyrdeer - Psyshock - TM054
  (899, 89900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Wyrdeer - Dig - TM055
  (899, 89900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Wyrdeer - Zen Headbutt - TM059
  (899, 89900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Wyrdeer - Body Slam - TM066
  (899, 89900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Wyrdeer - Sleep Talk - TM070
  (899, 89900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Wyrdeer - Reflect - TM074
  (899, 89900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Wyrdeer - Light Screen - TM075
  (899, 89900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Wyrdeer - Thunder Wave - TM082
  (899, 89900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 38),
  -- Wyrdeer - Rest - TM085
  (899, 89900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Wyrdeer - Imprison - TM092
  (899, 89900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Wyrdeer - Skill Swap - TM098
  (899, 89900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 41),
  -- Wyrdeer - Substitute - TM103
  (899, 89900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Wyrdeer - Trick - TM109
  (899, 89900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Wyrdeer - Shadow Ball - TM114
  (899, 89900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Wyrdeer - Energy Ball - TM119
  (899, 89900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 45),
  -- Wyrdeer - Psychic - TM120
  (899, 89900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Wyrdeer - Thunderbolt - TM126
  (899, 89900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Wyrdeer - Calm Mind - TM129
  (899, 89900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 48),
  -- Wyrdeer - Helping Hand - TM130
  (899, 89900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Wyrdeer - Earth Power - TM133
  (899, 89900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 50),
  -- Wyrdeer - Wild Charge - TM147
  (899, 89900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 51),
  -- Wyrdeer - Earthquake - TM149
  (899, 89900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Wyrdeer - Giga Impact - TM152
  (899, 89900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Wyrdeer - Trick Room - TM161
  (899, 89900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 54),
  -- Wyrdeer - Hyper Beam - TM163
  (899, 89900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Wyrdeer - Thunder - TM166
  (899, 89900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Wyrdeer - Solar Beam - TM168
  (899, 89900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 57),
  -- Wyrdeer - Tera Blast - TM171
  (899, 89900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Wyrdeer - Double Kick - Egg
  (899, 89900, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Wyrdeer - Thrash - Egg
  (899, 89900, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Wyrdeer - Bite - Egg
  (899, 89900, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Wyrdeer - Disable - Egg
  (899, 89900, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Wyrdeer - Spite - Egg
  (899, 89900, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Wyrdeer - Megahorn - Egg
  (899, 89900, 224, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Wyrdeer - Extrasensory - Egg
  (899, 89900, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Wyrdeer - Psyshield Bash - Egg
  (899, 89900, 828, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Wyrdeer - Psyshield Bash - Evolution
  (899, 89900, 828, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Kleavor - Leer - Level 1
  (900, 90000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kleavor - Quick Attack - Level 1
  (900, 90000, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kleavor - Fury Cutter - Level 4
  (900, 90000, 210, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Kleavor - False Swipe - Level 8
  (900, 90000, 206, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Kleavor - Smack Down - Level 12
  (900, 90000, 479, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kleavor - Double Team - Level 16
  (900, 90000, 104, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kleavor - Double Hit - Level 20
  (900, 90000, 458, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kleavor - Slash - Level 24
  (900, 90000, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kleavor - Focus Energy - Level 28
  (900, 90000, 116, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kleavor - Agility - Level 32
  (900, 90000, 97, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Kleavor - Rock Slide - Level 36
  (900, 90000, 157, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kleavor - X-Scissor - Level 40
  (900, 90000, 404, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kleavor - Swords Dance - Level 44
  (900, 90000, 14, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kleavor - Take Down - TM001
  (900, 90000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Kleavor - Agility - TM004
  (900, 90000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Kleavor - Scary Face - TM006
  (900, 90000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Kleavor - Protect - TM007
  (900, 90000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Kleavor - Acrobatics - TM014
  (900, 90000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Kleavor - Struggle Bug - TM015
  (900, 90000, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 19),
  -- Kleavor - Thief - TM018
  (900, 90000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Kleavor - Trailblaze - TM020
  (900, 90000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Kleavor - Pounce - TM021
  (900, 90000, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Kleavor - Facade - TM025
  (900, 90000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Kleavor - Aerial Ace - TM027
  (900, 90000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Kleavor - Swift - TM032
  (900, 90000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Kleavor - Rock Tomb - TM036
  (900, 90000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Kleavor - Air Cutter - TM040
  (900, 90000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Kleavor - Endure - TM047
  (900, 90000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Kleavor - Sunny Day - TM049
  (900, 90000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Kleavor - Rain Dance - TM050
  (900, 90000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Kleavor - Sandstorm - TM051
  (900, 90000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Kleavor - False Swipe - TM057
  (900, 90000, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Kleavor - Brick Break - TM058
  (900, 90000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Kleavor - U-turn - TM060
  (900, 90000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Kleavor - Air Slash - TM065
  (900, 90000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Kleavor - Sleep Talk - TM070
  (900, 90000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Kleavor - Light Screen - TM075
  (900, 90000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Kleavor - Rock Blast - TM076
  (900, 90000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 38),
  -- Kleavor - Rest - TM085
  (900, 90000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Kleavor - Rock Slide - TM086
  (900, 90000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Kleavor - Swords Dance - TM088
  (900, 90000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Kleavor - Substitute - TM103
  (900, 90000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Kleavor - X-Scissor - TM105
  (900, 90000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 43),
  -- Kleavor - Tailwind - TM113
  (900, 90000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Kleavor - Stealth Rock - TM116
  (900, 90000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Kleavor - Helping Hand - TM130
  (900, 90000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Kleavor - Baton Pass - TM132
  (900, 90000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Kleavor - Reversal - TM134
  (900, 90000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Kleavor - Stone Edge - TM150
  (900, 90000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Kleavor - Giga Impact - TM152
  (900, 90000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Kleavor - Bug Buzz - TM162
  (900, 90000, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 51),
  -- Kleavor - Hyper Beam - TM163
  (900, 90000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Kleavor - Close Combat - TM167
  (900, 90000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Kleavor - Tera Blast - TM171
  (900, 90000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Kleavor - Counter - Egg
  (900, 90000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kleavor - Feint - Egg
  (900, 90000, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kleavor - Night Slash - Egg
  (900, 90000, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kleavor - Defog - Egg
  (900, 90000, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kleavor - Quick Guard - Egg
  (900, 90000, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kleavor - Stone Axe - Evolution
  (900, 90000, 830, 23, NULL, 7, NULL, NULL, NULL, NULL, 60);
