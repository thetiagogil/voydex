-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 351-400.
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
  -- Shuppet - Astonish - Level 1
  (353, 35300, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuppet - Screech - Level 4
  (353, 35300, 103, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shuppet - Night Shade - Level 7
  (353, 35300, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Shuppet - Spite - Level 10
  (353, 35300, 180, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shuppet - Will-O-Wisp - Level 16
  (353, 35300, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shuppet - Shadow Sneak - Level 19
  (353, 35300, 425, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shuppet - Hex - Level 22
  (353, 35300, 506, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Shuppet - Curse - Level 26
  (353, 35300, 174, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Shuppet - Shadow Ball - Level 30
  (353, 35300, 247, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Shuppet - Role Play - Level 34
  (353, 35300, 272, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Shuppet - Sucker Punch - Level 38
  (353, 35300, 389, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Shuppet - Trick - Level 42
  (353, 35300, 271, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Shuppet - Phantom Force - Level 48
  (353, 35300, 566, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Shuppet - Scary Face - TM006
  (353, 35300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Shuppet - Protect - TM007
  (353, 35300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Shuppet - Psybeam - TM016
  (353, 35300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 16),
  -- Shuppet - Confuse Ray - TM017
  (353, 35300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Shuppet - Thief - TM018
  (353, 35300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Shuppet - Pounce - TM021
  (353, 35300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Shuppet - Charge Beam - TM023
  (353, 35300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Shuppet - Facade - TM025
  (353, 35300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Shuppet - Hex - TM029
  (353, 35300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Shuppet - Icy Wind - TM034
  (353, 35300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Shuppet - Night Shade - TM042
  (353, 35300, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Shuppet - Endure - TM047
  (353, 35300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Shuppet - Sunny Day - TM049
  (353, 35300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Shuppet - Rain Dance - TM050
  (353, 35300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Shuppet - Foul Play - TM062
  (353, 35300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 28),
  -- Shuppet - Sleep Talk - TM070
  (353, 35300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Shuppet - Dazzling Gleam - TM079
  (353, 35300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 30),
  -- Shuppet - Metronome - TM080
  (353, 35300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 31),
  -- Shuppet - Thunder Wave - TM082
  (353, 35300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Shuppet - Rest - TM085
  (353, 35300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Shuppet - Taunt - TM087
  (353, 35300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Shuppet - Imprison - TM092
  (353, 35300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Shuppet - Dark Pulse - TM094
  (353, 35300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 36),
  -- Shuppet - Skill Swap - TM098
  (353, 35300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 37),
  -- Shuppet - Gunk Shot - TM102
  (353, 35300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 38),
  -- Shuppet - Substitute - TM103
  (353, 35300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Shuppet - Will-O-Wisp - TM107
  (353, 35300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 40),
  -- Shuppet - Trick - TM109
  (353, 35300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Shuppet - Shadow Ball - TM114
  (353, 35300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Shuppet - Psychic - TM120
  (353, 35300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 43),
  -- Shuppet - Encore - TM122
  (353, 35300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 44),
  -- Shuppet - Thunderbolt - TM126
  (353, 35300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Shuppet - Calm Mind - TM129
  (353, 35300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Shuppet - Helping Hand - TM130
  (353, 35300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Shuppet - Nasty Plot - TM140
  (353, 35300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 48),
  -- Shuppet - Phantom Force - TM151
  (353, 35300, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 49),
  -- Shuppet - Trick Room - TM161
  (353, 35300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 50),
  -- Shuppet - Thunder - TM166
  (353, 35300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 51),
  -- Shuppet - Tera Blast - TM171
  (353, 35300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Shuppet - Disable - Egg
  (353, 35300, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuppet - Confuse Ray - Egg
  (353, 35300, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuppet - Destiny Bond - Egg
  (353, 35300, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shuppet - Imprison - Egg
  (353, 35300, 286, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shuppet - Gunk Shot - Egg
  (353, 35300, 441, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Banette - Night Shade - Level 1
  (354, 35400, 101, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Banette - Screech - Level 1
  (354, 35400, 103, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Banette - Spite - Level 1
  (354, 35400, 180, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Banette - Will-O-Wisp - Level 16
  (354, 35400, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Banette - Shadow Sneak - Level 19
  (354, 35400, 425, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Banette - Hex - Level 22
  (354, 35400, 506, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Banette - Curse - Level 26
  (354, 35400, 174, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Banette - Shadow Ball - Level 30
  (354, 35400, 247, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Banette - Role Play - Level 34
  (354, 35400, 272, 23, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Banette - Sucker Punch - Level 40
  (354, 35400, 389, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Banette - Trick - Level 46
  (354, 35400, 271, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Banette - Phantom Force - Level 53
  (354, 35400, 566, 23, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Banette - Scary Face - TM006
  (354, 35400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 13),
  -- Banette - Protect - TM007
  (354, 35400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Banette - Psybeam - TM016
  (354, 35400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 15),
  -- Banette - Confuse Ray - TM017
  (354, 35400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 16),
  -- Banette - Thief - TM018
  (354, 35400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Banette - Trailblaze - TM020
  (354, 35400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Banette - Pounce - TM021
  (354, 35400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Banette - Charge Beam - TM023
  (354, 35400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Banette - Facade - TM025
  (354, 35400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Banette - Hex - TM029
  (354, 35400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Banette - Icy Wind - TM034
  (354, 35400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Banette - Night Shade - TM042
  (354, 35400, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Banette - Fling - TM043
  (354, 35400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Banette - Endure - TM047
  (354, 35400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Banette - Sunny Day - TM049
  (354, 35400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Banette - Rain Dance - TM050
  (354, 35400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Banette - Shadow Claw - TM061
  (354, 35400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Banette - Foul Play - TM062
  (354, 35400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Banette - Sleep Talk - TM070
  (354, 35400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Banette - Dazzling Gleam - TM079
  (354, 35400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Banette - Metronome - TM080
  (354, 35400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 33),
  -- Banette - Thunder Wave - TM082
  (354, 35400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Banette - Rest - TM085
  (354, 35400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Banette - Taunt - TM087
  (354, 35400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Banette - Swords Dance - TM088
  (354, 35400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 37),
  -- Banette - Imprison - TM092
  (354, 35400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Banette - Dark Pulse - TM094
  (354, 35400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Banette - Skill Swap - TM098
  (354, 35400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Banette - Gunk Shot - TM102
  (354, 35400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 41),
  -- Banette - Substitute - TM103
  (354, 35400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Banette - Will-O-Wisp - TM107
  (354, 35400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 43),
  -- Banette - Trick - TM109
  (354, 35400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 44),
  -- Banette - Shadow Ball - TM114
  (354, 35400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Banette - Psychic - TM120
  (354, 35400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 46),
  -- Banette - Encore - TM122
  (354, 35400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Banette - Thunderbolt - TM126
  (354, 35400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Banette - Calm Mind - TM129
  (354, 35400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Banette - Helping Hand - TM130
  (354, 35400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Banette - Nasty Plot - TM140
  (354, 35400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Banette - Phantom Force - TM151
  (354, 35400, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 52),
  -- Banette - Giga Impact - TM152
  (354, 35400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Banette - Trick Room - TM161
  (354, 35400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 54),
  -- Banette - Hyper Beam - TM163
  (354, 35400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Banette - Thunder - TM166
  (354, 35400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Banette - Tera Blast - TM171
  (354, 35400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Banette - Disable - Egg
  (354, 35400, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Banette - Confuse Ray - Egg
  (354, 35400, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Banette - Destiny Bond - Egg
  (354, 35400, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Banette - Imprison - Egg
  (354, 35400, 286, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Banette - Gunk Shot - Egg
  (354, 35400, 441, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Banette - Knock Off - Evolution
  (354, 35400, 282, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Duskull - Leer - Level 1
  (355, 35500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Astonish - Level 1
  (355, 35500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 4
  (355, 35500, 50, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Duskull - Shadow Sneak - Level 8
  (355, 35500, 425, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Duskull - Confuse Ray - Level 12
  (355, 35500, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Duskull - Night Shade - Level 16
  (355, 35500, 101, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Duskull - Payback - Level 20
  (355, 35500, 371, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Duskull - Will-O-Wisp - Level 24
  (355, 35500, 261, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Duskull - Mean Look - Level 28
  (355, 35500, 212, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Duskull - Hex - Level 32
  (355, 35500, 506, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Duskull - Curse - Level 36
  (355, 35500, 174, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Duskull - Shadow Ball - Level 40
  (355, 35500, 247, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Duskull - Future Sight - Level 44
  (355, 35500, 248, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Duskull - Protect - TM007
  (355, 35500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Duskull - Confuse Ray - TM017
  (355, 35500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 15),
  -- Duskull - Thief - TM018
  (355, 35500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 16),
  -- Duskull - Charge Beam - TM023
  (355, 35500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Duskull - Facade - TM025
  (355, 35500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Duskull - Hex - TM029
  (355, 35500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 19),
  -- Duskull - Icy Wind - TM034
  (355, 35500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Duskull - Night Shade - TM042
  (355, 35500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 21),
  -- Duskull - Fling - TM043
  (355, 35500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Duskull - Endure - TM047
  (355, 35500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Duskull - Sunny Day - TM049
  (355, 35500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Duskull - Rain Dance - TM050
  (355, 35500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Duskull - Sleep Talk - TM070
  (355, 35500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Duskull - Rest - TM085
  (355, 35500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Duskull - Taunt - TM087
  (355, 35500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 28),
  -- Duskull - Imprison - TM092
  (355, 35500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 29),
  -- Duskull - Dark Pulse - TM094
  (355, 35500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 30),
  -- Duskull - Leech Life - TM095
  (355, 35500, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 31),
  -- Duskull - Skill Swap - TM098
  (355, 35500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 32),
  -- Duskull - Substitute - TM103
  (355, 35500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Duskull - Will-O-Wisp - TM107
  (355, 35500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 34),
  -- Duskull - Trick - TM109
  (355, 35500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 35),
  -- Duskull - Shadow Ball - TM114
  (355, 35500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 36),
  -- Duskull - Psychic - TM120
  (355, 35500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Duskull - Calm Mind - TM129
  (355, 35500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 38),
  -- Duskull - Helping Hand - TM130
  (355, 35500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Duskull - Ice Beam - TM135
  (355, 35500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Duskull - Blizzard - TM143
  (355, 35500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Duskull - Phantom Force - TM151
  (355, 35500, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 42),
  -- Duskull - Trick Room - TM161
  (355, 35500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Duskull - Tera Blast - TM171
  (355, 35500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Duskull - Haze - Egg
  (355, 35500, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Duskull - Pain Split - Egg
  (355, 35500, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Duskull - Memento - Egg
  (355, 35500, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dusclops - Fire Punch - Level 1
  (356, 35600, 7, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Ice Punch - Level 1
  (356, 35600, 8, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusclops - Thunder Punch - Level 1
  (356, 35600, 9, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusclops - Bind - Level 1
  (356, 35600, 20, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusclops - Leer - Level 1
  (356, 35600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusclops - Disable - Level 1
  (356, 35600, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusclops - Astonish - Level 1
  (356, 35600, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusclops - Gravity - Level 1
  (356, 35600, 356, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusclops - Shadow Sneak - Level 1
  (356, 35600, 425, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dusclops - Confuse Ray - Level 12
  (356, 35600, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Dusclops - Night Shade - Level 16
  (356, 35600, 101, 23, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Dusclops - Payback - Level 20
  (356, 35600, 371, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Dusclops - Will-O-Wisp - Level 24
  (356, 35600, 261, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Dusclops - Mean Look - Level 28
  (356, 35600, 212, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Dusclops - Hex - Level 32
  (356, 35600, 506, 23, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Dusclops - Curse - Level 36
  (356, 35600, 174, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Dusclops - Shadow Ball - Level 42
  (356, 35600, 247, 23, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Dusclops - Future Sight - Level 48
  (356, 35600, 248, 23, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Dusclops - Protect - TM007
  (356, 35600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Dusclops - Confuse Ray - TM017
  (356, 35600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Dusclops - Thief - TM018
  (356, 35600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Dusclops - Charge Beam - TM023
  (356, 35600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Dusclops - Facade - TM025
  (356, 35600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Dusclops - Hex - TM029
  (356, 35600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Dusclops - Icy Wind - TM034
  (356, 35600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Dusclops - Night Shade - TM042
  (356, 35600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Dusclops - Fling - TM043
  (356, 35600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Dusclops - Endure - TM047
  (356, 35600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Dusclops - Sunny Day - TM049
  (356, 35600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Dusclops - Rain Dance - TM050
  (356, 35600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Dusclops - Brick Break - TM058
  (356, 35600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Dusclops - Body Slam - TM066
  (356, 35600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Dusclops - Fire Punch - TM067
  (356, 35600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Dusclops - Thunder Punch - TM068
  (356, 35600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Dusclops - Ice Punch - TM069
  (356, 35600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Dusclops - Sleep Talk - TM070
  (356, 35600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Dusclops - Metronome - TM080
  (356, 35600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 37),
  -- Dusclops - Rest - TM085
  (356, 35600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Dusclops - Taunt - TM087
  (356, 35600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Dusclops - Imprison - TM092
  (356, 35600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Dusclops - Dark Pulse - TM094
  (356, 35600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Dusclops - Leech Life - TM095
  (356, 35600, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 42),
  -- Dusclops - Skill Swap - TM098
  (356, 35600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Dusclops - Substitute - TM103
  (356, 35600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Dusclops - Will-O-Wisp - TM107
  (356, 35600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 45),
  -- Dusclops - Trick - TM109
  (356, 35600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Dusclops - Shadow Ball - TM114
  (356, 35600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Dusclops - Psychic - TM120
  (356, 35600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Dusclops - Calm Mind - TM129
  (356, 35600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Dusclops - Helping Hand - TM130
  (356, 35600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Dusclops - Ice Beam - TM135
  (356, 35600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 51),
  -- Dusclops - Blizzard - TM143
  (356, 35600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 52),
  -- Dusclops - Phantom Force - TM151
  (356, 35600, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 53),
  -- Dusclops - Giga Impact - TM152
  (356, 35600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Dusclops - Trick Room - TM161
  (356, 35600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 55),
  -- Dusclops - Hyper Beam - TM163
  (356, 35600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Dusclops - Tera Blast - TM171
  (356, 35600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Dusclops - Haze - Egg
  (356, 35600, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dusclops - Pain Split - Egg
  (356, 35600, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dusclops - Memento - Egg
  (356, 35600, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dusclops - Shadow Punch - Evolution
  (356, 35600, 325, 23, NULL, 7, NULL, NULL, NULL, NULL, 61),
  -- Tropius - Gust - Level 1
  (357, 35700, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tropius - Leer - Level 1
  (357, 35700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tropius - Growth - Level 1
  (357, 35700, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tropius - Razor Leaf - Level 1
  (357, 35700, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tropius - Leaf Storm - Level 1
  (357, 35700, 437, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tropius - Sweet Scent - Level 6
  (357, 35700, 230, 23, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Tropius - Stomp - Level 10
  (357, 35700, 23, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Tropius - Magical Leaf - Level 16
  (357, 35700, 345, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Tropius - Whirlwind - Level 21
  (357, 35700, 18, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tropius - Wide Guard - Level 30
  (357, 35700, 469, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Tropius - Air Slash - Level 36
  (357, 35700, 403, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tropius - Body Slam - Level 41
  (357, 35700, 34, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Tropius - Outrage - Level 46
  (357, 35700, 200, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Tropius - Synthesis - Level 50
  (357, 35700, 235, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Tropius - Solar Beam - Level 56
  (357, 35700, 76, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Tropius - Take Down - TM001
  (357, 35700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Tropius - Protect - TM007
  (357, 35700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tropius - Trailblaze - TM020
  (357, 35700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Tropius - Facade - TM025
  (357, 35700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Tropius - Aerial Ace - TM027
  (357, 35700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Tropius - Bulldoze - TM028
  (357, 35700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Tropius - Magical Leaf - TM033
  (357, 35700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Tropius - Air Cutter - TM040
  (357, 35700, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Tropius - Dragon Tail - TM044
  (357, 35700, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Tropius - Endure - TM047
  (357, 35700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Tropius - Sunny Day - TM049
  (357, 35700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Tropius - Rain Dance - TM050
  (357, 35700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Tropius - Bullet Seed - TM056
  (357, 35700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Tropius - Zen Headbutt - TM059
  (357, 35700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Tropius - U-turn - TM060
  (357, 35700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Tropius - Air Slash - TM065
  (357, 35700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Tropius - Body Slam - TM066
  (357, 35700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Tropius - Sleep Talk - TM070
  (357, 35700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Tropius - Seed Bomb - TM071
  (357, 35700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Tropius - Grass Knot - TM081
  (357, 35700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Tropius - Stomping Tantrum - TM084
  (357, 35700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Tropius - Rest - TM085
  (357, 35700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Tropius - Swords Dance - TM088
  (357, 35700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Tropius - Body Press - TM089
  (357, 35700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Tropius - Fly - TM097
  (357, 35700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 40),
  -- Tropius - Dragon Dance - TM100
  (357, 35700, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 41),
  -- Tropius - Substitute - TM103
  (357, 35700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Tropius - Giga Drain - TM111
  (357, 35700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 43),
  -- Tropius - Tailwind - TM113
  (357, 35700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 44),
  -- Tropius - Dragon Pulse - TM115
  (357, 35700, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 45),
  -- Tropius - Energy Ball - TM119
  (357, 35700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Tropius - Calm Mind - TM129
  (357, 35700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Tropius - Helping Hand - TM130
  (357, 35700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Tropius - Grassy Terrain - TM137
  (357, 35700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 49),
  -- Tropius - Earthquake - TM149
  (357, 35700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Tropius - Giga Impact - TM152
  (357, 35700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Tropius - Outrage - TM156
  (357, 35700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 52),
  -- Tropius - Leaf Storm - TM159
  (357, 35700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Tropius - Hurricane - TM160
  (357, 35700, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 54),
  -- Tropius - Hyper Beam - TM163
  (357, 35700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Tropius - Solar Beam - TM168
  (357, 35700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Tropius - Tera Blast - TM171
  (357, 35700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Tropius - Slam - Egg
  (357, 35700, 21, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tropius - Headbutt - Egg
  (357, 35700, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tropius - Leech Seed - Egg
  (357, 35700, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tropius - Curse - Egg
  (357, 35700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tropius - Leaf Blade - Egg
  (357, 35700, 348, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tropius - Dragon Dance - Egg
  (357, 35700, 349, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Chimecho - Wrap - Level 1
  (358, 35800, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Growl - Level 1
  (358, 35800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimecho - Confusion - Level 1
  (358, 35800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chimecho - Astonish - Level 1
  (358, 35800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chimecho - Healing Wish - Level 1
  (358, 35800, 361, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chimecho - Yawn - Level 13
  (358, 35800, 281, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Chimecho - Stored Power - Level 16
  (358, 35800, 500, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Chimecho - Take Down - Level 19
  (358, 35800, 36, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Chimecho - Extrasensory - Level 22
  (358, 35800, 326, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Chimecho - Heal Bell - Level 27
  (358, 35800, 215, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Chimecho - Uproar - Level 32
  (358, 35800, 253, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Chimecho - Safeguard - Level 37
  (358, 35800, 219, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Chimecho - Double-Edge - Level 42
  (358, 35800, 38, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chimecho - Heal Pulse - Level 47
  (358, 35800, 505, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Chimecho - Take Down - TM001
  (358, 35800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Chimecho - Charm - TM002
  (358, 35800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Chimecho - Fake Tears - TM003
  (358, 35800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Chimecho - Protect - TM007
  (358, 35800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Chimecho - Psybeam - TM016
  (358, 35800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Chimecho - Disarming Voice - TM019
  (358, 35800, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 20),
  -- Chimecho - Charge Beam - TM023
  (358, 35800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Chimecho - Facade - TM025
  (358, 35800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Chimecho - Snarl - TM030
  (358, 35800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Chimecho - Swift - TM032
  (358, 35800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Chimecho - Icy Wind - TM034
  (358, 35800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Chimecho - Draining Kiss - TM037
  (358, 35800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 26),
  -- Chimecho - Stored Power - TM041
  (358, 35800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Chimecho - Endure - TM047
  (358, 35800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Chimecho - Sunny Day - TM049
  (358, 35800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Chimecho - Rain Dance - TM050
  (358, 35800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Chimecho - Psyshock - TM054
  (358, 35800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Chimecho - Zen Headbutt - TM059
  (358, 35800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Chimecho - Sleep Talk - TM070
  (358, 35800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Chimecho - Reflect - TM074
  (358, 35800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Chimecho - Light Screen - TM075
  (358, 35800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Chimecho - Dazzling Gleam - TM079
  (358, 35800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 36),
  -- Chimecho - Grass Knot - TM081
  (358, 35800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Chimecho - Thunder Wave - TM082
  (358, 35800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 38),
  -- Chimecho - Rest - TM085
  (358, 35800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Chimecho - Taunt - TM087
  (358, 35800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Chimecho - Imprison - TM092
  (358, 35800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Chimecho - Skill Swap - TM098
  (358, 35800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 42),
  -- Chimecho - Substitute - TM103
  (358, 35800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Chimecho - Trick - TM109
  (358, 35800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 44),
  -- Chimecho - Shadow Ball - TM114
  (358, 35800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Chimecho - Hyper Voice - TM117
  (358, 35800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Chimecho - Energy Ball - TM119
  (358, 35800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 47),
  -- Chimecho - Psychic - TM120
  (358, 35800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Chimecho - Encore - TM122
  (358, 35800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Chimecho - Calm Mind - TM129
  (358, 35800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Chimecho - Helping Hand - TM130
  (358, 35800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Chimecho - Baton Pass - TM132
  (358, 35800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 52),
  -- Chimecho - Trick Room - TM161
  (358, 35800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 53),
  -- Chimecho - Tera Blast - TM171
  (358, 35800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Chimecho - Disable - Egg
  (358, 35800, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chimecho - Hypnosis - Egg
  (358, 35800, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chimecho - Recover - Egg
  (358, 35800, 105, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chimecho - Curse - Egg
  (358, 35800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chimecho - Wish - Egg
  (358, 35800, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chimecho - Recycle - Egg
  (358, 35800, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chimecho - Cosmic Power - Egg
  (358, 35800, 322, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimecho - Ally Switch - Egg
  (358, 35800, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snorunt - Headbutt - Level 1
  (361, 36100, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Astonish - Level 1
  (361, 36100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snorunt - Leer - Level 5
  (361, 36100, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Snorunt - Double Team - Level 10
  (361, 36100, 104, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Snorunt - Ice Shard - Level 15
  (361, 36100, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Snorunt - Protect - Level 20
  (361, 36100, 182, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Snorunt - Icy Wind - Level 25
  (361, 36100, 196, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Snorunt - Frost Breath - Level 30
  (361, 36100, 524, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Snorunt - Bite - Level 35
  (361, 36100, 44, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Snorunt - Ice Fang - Level 40
  (361, 36100, 423, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Snorunt - Snowscape - Level 45
  (361, 36100, 883, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Snorunt - Weather Ball - Level 50
  (361, 36100, 311, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Snorunt - Crunch - Level 55
  (361, 36100, 242, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Snorunt - Blizzard - Level 60
  (361, 36100, 59, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Snorunt - Take Down - TM001
  (361, 36100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Snorunt - Fake Tears - TM003
  (361, 36100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Snorunt - Protect - TM007
  (361, 36100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Snorunt - Ice Fang - TM010
  (361, 36100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Snorunt - Water Pulse - TM011
  (361, 36100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Snorunt - Trailblaze - TM020
  (361, 36100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Snorunt - Chilling Water - TM022
  (361, 36100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Snorunt - Facade - TM025
  (361, 36100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Snorunt - Hex - TM029
  (361, 36100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Snorunt - Icy Wind - TM034
  (361, 36100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Snorunt - Avalanche - TM046
  (361, 36100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Snorunt - Endure - TM047
  (361, 36100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Snorunt - Rain Dance - TM050
  (361, 36100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Snorunt - Snowscape - TM052
  (361, 36100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Snorunt - Body Slam - TM066
  (361, 36100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Snorunt - Sleep Talk - TM070
  (361, 36100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Snorunt - Light Screen - TM075
  (361, 36100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Snorunt - Rest - TM085
  (361, 36100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Snorunt - Spikes - TM090
  (361, 36100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 34),
  -- Snorunt - Substitute - TM103
  (361, 36100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Snorunt - Crunch - TM108
  (361, 36100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 36),
  -- Snorunt - Shadow Ball - TM114
  (361, 36100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 37),
  -- Snorunt - Ice Spinner - TM124
  (361, 36100, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 38),
  -- Snorunt - Helping Hand - TM130
  (361, 36100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Snorunt - Ice Beam - TM135
  (361, 36100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Snorunt - Blizzard - TM143
  (361, 36100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Snorunt - Tera Blast - TM171
  (361, 36100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Snorunt - Disable - Egg
  (361, 36100, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snorunt - Rollout - Egg
  (361, 36100, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snorunt - Block - Egg
  (361, 36100, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snorunt - Switcheroo - Egg
  (361, 36100, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snorunt - Icicle Crash - Egg
  (361, 36100, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Glalie - Headbutt - Level 1
  (362, 36200, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Leer - Level 1
  (362, 36200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Double Team - Level 1
  (362, 36200, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glalie - Astonish - Level 1
  (362, 36200, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glalie - Sheer Cold - Level 1
  (362, 36200, 329, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Glalie - Ice Shard - Level 15
  (362, 36200, 420, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Glalie - Protect - Level 20
  (362, 36200, 182, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Glalie - Icy Wind - Level 25
  (362, 36200, 196, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Glalie - Frost Breath - Level 30
  (362, 36200, 524, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Glalie - Bite - Level 35
  (362, 36200, 44, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Glalie - Ice Fang - Level 40
  (362, 36200, 423, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Glalie - Snowscape - Level 47
  (362, 36200, 883, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Glalie - Weather Ball - Level 54
  (362, 36200, 311, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Glalie - Crunch - Level 61
  (362, 36200, 242, 23, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Glalie - Blizzard - Level 68
  (362, 36200, 59, 23, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Glalie - Take Down - TM001
  (362, 36200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Glalie - Fake Tears - TM003
  (362, 36200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Glalie - Scary Face - TM006
  (362, 36200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Glalie - Protect - TM007
  (362, 36200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Glalie - Ice Fang - TM010
  (362, 36200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Glalie - Water Pulse - TM011
  (362, 36200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Glalie - Trailblaze - TM020
  (362, 36200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Glalie - Chilling Water - TM022
  (362, 36200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Glalie - Facade - TM025
  (362, 36200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Glalie - Bulldoze - TM028
  (362, 36200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Glalie - Hex - TM029
  (362, 36200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Glalie - Icy Wind - TM034
  (362, 36200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Glalie - Avalanche - TM046
  (362, 36200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Glalie - Endure - TM047
  (362, 36200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Glalie - Rain Dance - TM050
  (362, 36200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Glalie - Snowscape - TM052
  (362, 36200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Glalie - Foul Play - TM062
  (362, 36200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Glalie - Body Slam - TM066
  (362, 36200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Glalie - Sleep Talk - TM070
  (362, 36200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Glalie - Light Screen - TM075
  (362, 36200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Glalie - Rest - TM085
  (362, 36200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Glalie - Taunt - TM087
  (362, 36200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Glalie - Spikes - TM090
  (362, 36200, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 39),
  -- Glalie - Dark Pulse - TM094
  (362, 36200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 40),
  -- Glalie - Iron Head - TM099
  (362, 36200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Glalie - Substitute - TM103
  (362, 36200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Glalie - Crunch - TM108
  (362, 36200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Glalie - Shadow Ball - TM114
  (362, 36200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Glalie - Ice Spinner - TM124
  (362, 36200, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 45),
  -- Glalie - Helping Hand - TM130
  (362, 36200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Glalie - Ice Beam - TM135
  (362, 36200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 47),
  -- Glalie - Blizzard - TM143
  (362, 36200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Glalie - Earthquake - TM149
  (362, 36200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Glalie - Giga Impact - TM152
  (362, 36200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Glalie - Hyper Beam - TM163
  (362, 36200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Glalie - Tera Blast - TM171
  (362, 36200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Glalie - Disable - Egg
  (362, 36200, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Glalie - Rollout - Egg
  (362, 36200, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Glalie - Block - Egg
  (362, 36200, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Glalie - Switcheroo - Egg
  (362, 36200, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Glalie - Icicle Crash - Egg
  (362, 36200, 556, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Glalie - Freeze-Dry - Evolution
  (362, 36200, 573, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Luvdisc - Tackle - Level 1
  (370, 37000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Luvdisc - Charm - Level 1
  (370, 37000, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Luvdisc - Water Gun - Level 4
  (370, 37000, 55, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Luvdisc - Agility - Level 7
  (370, 37000, 97, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Luvdisc - Wish - Level 13
  (370, 37000, 273, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Luvdisc - Water Pulse - Level 17
  (370, 37000, 352, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Luvdisc - Attract - Level 20
  (370, 37000, 213, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Luvdisc - Draining Kiss - Level 22
  (370, 37000, 577, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Luvdisc - Flail - Level 26
  (370, 37000, 175, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Luvdisc - Sweet Kiss - Level 31
  (370, 37000, 186, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Luvdisc - Take Down - Level 34
  (370, 37000, 36, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Luvdisc - Baby-Doll Eyes - Level 37
  (370, 37000, 608, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Luvdisc - Aqua Ring - Level 40
  (370, 37000, 392, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Luvdisc - Soak - Level 42
  (370, 37000, 487, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Luvdisc - Hydro Pump - Level 46
  (370, 37000, 56, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Luvdisc - Safeguard - Level 49
  (370, 37000, 219, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Luvdisc - Take Down - TM001
  (370, 37000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Luvdisc - Charm - TM002
  (370, 37000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Luvdisc - Agility - TM004
  (370, 37000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Luvdisc - Protect - TM007
  (370, 37000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Luvdisc - Water Pulse - TM011
  (370, 37000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Luvdisc - Facade - TM025
  (370, 37000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Luvdisc - Icy Wind - TM034
  (370, 37000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Luvdisc - Draining Kiss - TM037
  (370, 37000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Luvdisc - Endure - TM047
  (370, 37000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Luvdisc - Rain Dance - TM050
  (370, 37000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Luvdisc - Snowscape - TM052
  (370, 37000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 27),
  -- Luvdisc - Sleep Talk - TM070
  (370, 37000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Luvdisc - Waterfall - TM077
  (370, 37000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Luvdisc - Rest - TM085
  (370, 37000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Luvdisc - Substitute - TM103
  (370, 37000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Luvdisc - Liquidation - TM110
  (370, 37000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Luvdisc - Surf - TM123
  (370, 37000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 33),
  -- Luvdisc - Ice Beam - TM135
  (370, 37000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 34),
  -- Luvdisc - Hydro Pump - TM142
  (370, 37000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 35),
  -- Luvdisc - Blizzard - TM143
  (370, 37000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 36),
  -- Luvdisc - Tera Blast - TM171
  (370, 37000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Luvdisc - Supersonic - Egg
  (370, 37000, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Luvdisc - Splash - Egg
  (370, 37000, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Luvdisc - Aqua Jet - Egg
  (370, 37000, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Luvdisc - Entrainment - Egg
  (370, 37000, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bagon - Leer - Level 1
  (371, 37100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Ember - Level 1
  (371, 37100, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bagon - Bite - Level 5
  (371, 37100, 44, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bagon - Dragon Breath - Level 10
  (371, 37100, 225, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bagon - Headbutt - Level 15
  (371, 37100, 29, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bagon - Scary Face - Level 20
  (371, 37100, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bagon - Crunch - Level 25
  (371, 37100, 242, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bagon - Dragon Claw - Level 31
  (371, 37100, 337, 23, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Bagon - Zen Headbutt - Level 35
  (371, 37100, 428, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Bagon - Focus Energy - Level 40
  (371, 37100, 116, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Bagon - Flamethrower - Level 45
  (371, 37100, 53, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Bagon - Outrage - Level 50
  (371, 37100, 200, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Bagon - Double-Edge - Level 55
  (371, 37100, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Bagon - Take Down - TM001
  (371, 37100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Bagon - Mud-Slap - TM005
  (371, 37100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Bagon - Scary Face - TM006
  (371, 37100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Bagon - Protect - TM007
  (371, 37100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Bagon - Fire Fang - TM008
  (371, 37100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Bagon - Thunder Fang - TM009
  (371, 37100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 19),
  -- Bagon - Fire Spin - TM024
  (371, 37100, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Bagon - Facade - TM025
  (371, 37100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Bagon - Rock Tomb - TM036
  (371, 37100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Bagon - Dragon Tail - TM044
  (371, 37100, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 23),
  -- Bagon - Endure - TM047
  (371, 37100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Bagon - Sunny Day - TM049
  (371, 37100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Bagon - Rain Dance - TM050
  (371, 37100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Bagon - Brick Break - TM058
  (371, 37100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Bagon - Zen Headbutt - TM059
  (371, 37100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Bagon - Shadow Claw - TM061
  (371, 37100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Bagon - Body Slam - TM066
  (371, 37100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Bagon - Sleep Talk - TM070
  (371, 37100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Bagon - Dragon Claw - TM078
  (371, 37100, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 32),
  -- Bagon - Rest - TM085
  (371, 37100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Bagon - Rock Slide - TM086
  (371, 37100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Bagon - Iron Head - TM099
  (371, 37100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 35),
  -- Bagon - Dragon Dance - TM100
  (371, 37100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 36),
  -- Bagon - Substitute - TM103
  (371, 37100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Bagon - Iron Defense - TM104
  (371, 37100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Bagon - Crunch - TM108
  (371, 37100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Bagon - Dragon Pulse - TM115
  (371, 37100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Bagon - Hyper Voice - TM117
  (371, 37100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Bagon - Flamethrower - TM125
  (371, 37100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Bagon - Helping Hand - TM130
  (371, 37100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Bagon - Fire Blast - TM141
  (371, 37100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Bagon - Hydro Pump - TM142
  (371, 37100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 45),
  -- Bagon - Outrage - TM156
  (371, 37100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Bagon - Draco Meteor - TM169
  (371, 37100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 47),
  -- Bagon - Tera Blast - TM171
  (371, 37100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Bagon - Thrash - Egg
  (371, 37100, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bagon - Defense Curl - Egg
  (371, 37100, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bagon - Twister - Egg
  (371, 37100, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bagon - Dragon Rush - Egg
  (371, 37100, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Ember - Level 1
  (372, 37200, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Dragon Breath - Level 1
  (372, 37200, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shelgon - Headbutt - Level 15
  (372, 37200, 29, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shelgon - Scary Face - Level 20
  (372, 37200, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shelgon - Crunch - Level 25
  (372, 37200, 242, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shelgon - Dragon Claw - Level 33
  (372, 37200, 337, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Shelgon - Zen Headbutt - Level 39
  (372, 37200, 428, 23, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Shelgon - Focus Energy - Level 46
  (372, 37200, 116, 23, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Shelgon - Flamethrower - Level 53
  (372, 37200, 53, 23, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Shelgon - Outrage - Level 60
  (372, 37200, 200, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Shelgon - Double-Edge - Level 67
  (372, 37200, 38, 23, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Shelgon - Take Down - TM001
  (372, 37200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Shelgon - Mud-Slap - TM005
  (372, 37200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Shelgon - Scary Face - TM006
  (372, 37200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Shelgon - Protect - TM007
  (372, 37200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Shelgon - Fire Fang - TM008
  (372, 37200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Shelgon - Thunder Fang - TM009
  (372, 37200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 19),
  -- Shelgon - Fire Spin - TM024
  (372, 37200, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Shelgon - Facade - TM025
  (372, 37200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Shelgon - Rock Tomb - TM036
  (372, 37200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Shelgon - Dragon Tail - TM044
  (372, 37200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 23),
  -- Shelgon - Endure - TM047
  (372, 37200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Shelgon - Sunny Day - TM049
  (372, 37200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Shelgon - Rain Dance - TM050
  (372, 37200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Shelgon - Brick Break - TM058
  (372, 37200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Shelgon - Zen Headbutt - TM059
  (372, 37200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Shelgon - Shadow Claw - TM061
  (372, 37200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Shelgon - Body Slam - TM066
  (372, 37200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Shelgon - Sleep Talk - TM070
  (372, 37200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Shelgon - Dragon Claw - TM078
  (372, 37200, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 32),
  -- Shelgon - Rest - TM085
  (372, 37200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Shelgon - Rock Slide - TM086
  (372, 37200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Shelgon - Iron Head - TM099
  (372, 37200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 35),
  -- Shelgon - Dragon Dance - TM100
  (372, 37200, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 36),
  -- Shelgon - Substitute - TM103
  (372, 37200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Shelgon - Iron Defense - TM104
  (372, 37200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Shelgon - Crunch - TM108
  (372, 37200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Shelgon - Dragon Pulse - TM115
  (372, 37200, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Shelgon - Hyper Voice - TM117
  (372, 37200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Shelgon - Flamethrower - TM125
  (372, 37200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 42),
  -- Shelgon - Helping Hand - TM130
  (372, 37200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Shelgon - Fire Blast - TM141
  (372, 37200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 44),
  -- Shelgon - Hydro Pump - TM142
  (372, 37200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 45),
  -- Shelgon - Outrage - TM156
  (372, 37200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 46),
  -- Shelgon - Draco Meteor - TM169
  (372, 37200, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 47),
  -- Shelgon - Tera Blast - TM171
  (372, 37200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Shelgon - Thrash - Egg
  (372, 37200, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shelgon - Defense Curl - Egg
  (372, 37200, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shelgon - Twister - Egg
  (372, 37200, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shelgon - Dragon Rush - Egg
  (372, 37200, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shelgon - Protect - Evolution
  (372, 37200, 182, 23, NULL, 7, NULL, NULL, NULL, NULL, 53),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Ember - Level 1
  (373, 37300, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Protect - Level 1
  (373, 37300, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Dragon Breath - Level 1
  (373, 37300, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salamence - Roost - Level 1
  (373, 37300, 355, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salamence - Dragon Tail - Level 1
  (373, 37300, 525, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salamence - Dual Wingbeat - Level 1
  (373, 37300, 814, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Salamence - Headbutt - Level 15
  (373, 37300, 29, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Salamence - Scary Face - Level 20
  (373, 37300, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Salamence - Crunch - Level 25
  (373, 37300, 242, 23, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Salamence - Dragon Claw - Level 33
  (373, 37300, 337, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Salamence - Zen Headbutt - Level 39
  (373, 37300, 428, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Salamence - Focus Energy - Level 46
  (373, 37300, 116, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Salamence - Flamethrower - Level 55
  (373, 37300, 53, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Salamence - Double-Edge - Level 73
  (373, 37300, 38, 23, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Salamence - Take Down - TM001
  (373, 37300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Salamence - Mud-Slap - TM005
  (373, 37300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Salamence - Scary Face - TM006
  (373, 37300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Salamence - Protect - TM007
  (373, 37300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Salamence - Fire Fang - TM008
  (373, 37300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Salamence - Thunder Fang - TM009
  (373, 37300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Salamence - Fire Spin - TM024
  (373, 37300, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Salamence - Facade - TM025
  (373, 37300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Salamence - Aerial Ace - TM027
  (373, 37300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Salamence - Bulldoze - TM028
  (373, 37300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Salamence - Swift - TM032
  (373, 37300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Salamence - Rock Tomb - TM036
  (373, 37300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Salamence - Dragon Tail - TM044
  (373, 37300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Salamence - Endure - TM047
  (373, 37300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Salamence - Sunny Day - TM049
  (373, 37300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Salamence - Rain Dance - TM050
  (373, 37300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Salamence - Brick Break - TM058
  (373, 37300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Salamence - Zen Headbutt - TM059
  (373, 37300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Salamence - Shadow Claw - TM061
  (373, 37300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Salamence - Psychic Fangs - TM063
  (373, 37300, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Salamence - Air Slash - TM065
  (373, 37300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Salamence - Body Slam - TM066
  (373, 37300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Salamence - Sleep Talk - TM070
  (373, 37300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Salamence - Dragon Claw - TM078
  (373, 37300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Salamence - Rest - TM085
  (373, 37300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Salamence - Rock Slide - TM086
  (373, 37300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Salamence - Fly - TM097
  (373, 37300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 43),
  -- Salamence - Iron Head - TM099
  (373, 37300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Salamence - Dragon Dance - TM100
  (373, 37300, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 45),
  -- Salamence - Substitute - TM103
  (373, 37300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Salamence - Iron Defense - TM104
  (373, 37300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 47),
  -- Salamence - Crunch - TM108
  (373, 37300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Salamence - Tailwind - TM113
  (373, 37300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 49),
  -- Salamence - Dragon Pulse - TM115
  (373, 37300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 50),
  -- Salamence - Hyper Voice - TM117
  (373, 37300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 51),
  -- Salamence - Heat Wave - TM118
  (373, 37300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 52),
  -- Salamence - Flamethrower - TM125
  (373, 37300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Salamence - Helping Hand - TM130
  (373, 37300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Salamence - Fire Blast - TM141
  (373, 37300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Salamence - Hydro Pump - TM142
  (373, 37300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 56),
  -- Salamence - Earthquake - TM149
  (373, 37300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 57),
  -- Salamence - Stone Edge - TM150
  (373, 37300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 58),
  -- Salamence - Giga Impact - TM152
  (373, 37300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Salamence - Outrage - TM156
  (373, 37300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 60),
  -- Salamence - Hurricane - TM160
  (373, 37300, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 61),
  -- Salamence - Hyper Beam - TM163
  (373, 37300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Salamence - Draco Meteor - TM169
  (373, 37300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 63),
  -- Salamence - Tera Blast - TM171
  (373, 37300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Salamence - Thrash - Egg
  (373, 37300, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Salamence - Defense Curl - Egg
  (373, 37300, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Salamence - Twister - Egg
  (373, 37300, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Salamence - Dragon Rush - Egg
  (373, 37300, 407, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Salamence - Fly - Evolution
  (373, 37300, 19, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Beldum - Tackle - Level 1
  (374, 37400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beldum - Take Down - TM001
  (374, 37400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 2),
  -- Beldum - Zen Headbutt - TM059
  (374, 37400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 3),
  -- Beldum - Iron Head - TM099
  (374, 37400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 4),
  -- Beldum - Iron Defense - TM104
  (374, 37400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 5),
  -- Beldum - Steel Beam - TM170
  (374, 37400, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 6),
  -- Beldum - Tera Blast - TM171
  (374, 37400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 7),
  -- Metang - Tackle - Level 1
  (375, 37500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Bullet Punch - Level 1
  (375, 37500, 418, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metang - Hone Claws - Level 1
  (375, 37500, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metang - Zen Headbutt - Level 6
  (375, 37500, 428, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Metang - Magnet Rise - Level 12
  (375, 37500, 393, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Metang - Flash Cannon - Level 18
  (375, 37500, 430, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Metang - Take Down - Level 26
  (375, 37500, 36, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Metang - Psychic - Level 34
  (375, 37500, 94, 23, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Metang - Scary Face - Level 42
  (375, 37500, 184, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Metang - Meteor Mash - Level 50
  (375, 37500, 309, 23, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Metang - Iron Defense - Level 58
  (375, 37500, 334, 23, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Metang - Agility - Level 66
  (375, 37500, 97, 23, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Metang - Hyper Beam - Level 74
  (375, 37500, 63, 23, NULL, 1, 74, NULL, NULL, NULL, 13),
  -- Metang - Take Down - TM001
  (375, 37500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Metang - Agility - TM004
  (375, 37500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Metang - Scary Face - TM006
  (375, 37500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Metang - Protect - TM007
  (375, 37500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Metang - Trailblaze - TM020
  (375, 37500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Metang - Facade - TM025
  (375, 37500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Metang - Aerial Ace - TM027
  (375, 37500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Metang - Bulldoze - TM028
  (375, 37500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Metang - Metal Claw - TM031
  (375, 37500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Metang - Swift - TM032
  (375, 37500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Metang - Icy Wind - TM034
  (375, 37500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Metang - Rock Tomb - TM036
  (375, 37500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Metang - Endure - TM047
  (375, 37500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Metang - Sunny Day - TM049
  (375, 37500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Metang - Rain Dance - TM050
  (375, 37500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Metang - Sandstorm - TM051
  (375, 37500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Metang - Psyshock - TM054
  (375, 37500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Metang - Brick Break - TM058
  (375, 37500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Metang - Zen Headbutt - TM059
  (375, 37500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Metang - Body Slam - TM066
  (375, 37500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Metang - Thunder Punch - TM068
  (375, 37500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Metang - Ice Punch - TM069
  (375, 37500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Metang - Sleep Talk - TM070
  (375, 37500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Metang - Reflect - TM074
  (375, 37500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 37),
  -- Metang - Light Screen - TM075
  (375, 37500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 38),
  -- Metang - Grass Knot - TM081
  (375, 37500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Metang - Rest - TM085
  (375, 37500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Metang - Rock Slide - TM086
  (375, 37500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Metang - Flash Cannon - TM093
  (375, 37500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 42),
  -- Metang - Iron Head - TM099
  (375, 37500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 43),
  -- Metang - Substitute - TM103
  (375, 37500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Metang - Iron Defense - TM104
  (375, 37500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 45),
  -- Metang - Trick - TM109
  (375, 37500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Metang - Shadow Ball - TM114
  (375, 37500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Metang - Stealth Rock - TM116
  (375, 37500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 48),
  -- Metang - Psychic - TM120
  (375, 37500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 49),
  -- Metang - Heavy Slam - TM121
  (375, 37500, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 50),
  -- Metang - Sludge Bomb - TM148
  (375, 37500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Metang - Earthquake - TM149
  (375, 37500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Metang - Giga Impact - TM152
  (375, 37500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Metang - Hyper Beam - TM163
  (375, 37500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Metang - Steel Beam - TM170
  (375, 37500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 55),
  -- Metang - Tera Blast - TM171
  (375, 37500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Metang - Confusion - Evolution
  (375, 37500, 93, 23, NULL, 7, NULL, NULL, NULL, NULL, 57),
  -- Metang - Metal Claw - Evolution
  (375, 37500, 232, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Metagross - Tackle - Level 1
  (376, 37600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Bullet Punch - Level 1
  (376, 37600, 418, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Zen Headbutt - Level 6
  (376, 37600, 428, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Metagross - Magnet Rise - Level 12
  (376, 37600, 393, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Metagross - Flash Cannon - Level 16
  (376, 37600, 430, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Metagross - Take Down - Level 26
  (376, 37600, 36, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Metagross - Psychic - Level 34
  (376, 37600, 94, 23, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Metagross - Scary Face - Level 42
  (376, 37600, 184, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Metagross - Meteor Mash - Level 52
  (376, 37600, 309, 23, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Metagross - Iron Defense - Level 62
  (376, 37600, 334, 23, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Metagross - Agility - Level 72
  (376, 37600, 97, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Metagross - Hyper Beam - Level 82
  (376, 37600, 63, 23, NULL, 1, 82, NULL, NULL, NULL, 14),
  -- Metagross - Take Down - TM001
  (376, 37600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Metagross - Agility - TM004
  (376, 37600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Metagross - Mud-Slap - TM005
  (376, 37600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Metagross - Scary Face - TM006
  (376, 37600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Metagross - Protect - TM007
  (376, 37600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Metagross - Trailblaze - TM020
  (376, 37600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Metagross - Facade - TM025
  (376, 37600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Metagross - Aerial Ace - TM027
  (376, 37600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Metagross - Bulldoze - TM028
  (376, 37600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Metagross - Metal Claw - TM031
  (376, 37600, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Metagross - Swift - TM032
  (376, 37600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Metagross - Icy Wind - TM034
  (376, 37600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Metagross - Rock Tomb - TM036
  (376, 37600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Metagross - Endure - TM047
  (376, 37600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Metagross - Sunny Day - TM049
  (376, 37600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Metagross - Rain Dance - TM050
  (376, 37600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Metagross - Sandstorm - TM051
  (376, 37600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Metagross - Psyshock - TM054
  (376, 37600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 32),
  -- Metagross - Brick Break - TM058
  (376, 37600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Metagross - Zen Headbutt - TM059
  (376, 37600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Metagross - Shadow Claw - TM061
  (376, 37600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Metagross - Psychic Fangs - TM063
  (376, 37600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 36),
  -- Metagross - Body Slam - TM066
  (376, 37600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Metagross - Thunder Punch - TM068
  (376, 37600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Metagross - Ice Punch - TM069
  (376, 37600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Metagross - Sleep Talk - TM070
  (376, 37600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Metagross - Reflect - TM074
  (376, 37600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 41),
  -- Metagross - Light Screen - TM075
  (376, 37600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Metagross - Grass Knot - TM081
  (376, 37600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Metagross - Stomping Tantrum - TM084
  (376, 37600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 44),
  -- Metagross - Rest - TM085
  (376, 37600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Metagross - Rock Slide - TM086
  (376, 37600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Metagross - Body Press - TM089
  (376, 37600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 47),
  -- Metagross - Flash Cannon - TM093
  (376, 37600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 48),
  -- Metagross - Iron Head - TM099
  (376, 37600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 49),
  -- Metagross - Substitute - TM103
  (376, 37600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Metagross - Iron Defense - TM104
  (376, 37600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 51),
  -- Metagross - Trick - TM109
  (376, 37600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Metagross - Shadow Ball - TM114
  (376, 37600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Metagross - Stealth Rock - TM116
  (376, 37600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 54),
  -- Metagross - Psychic - TM120
  (376, 37600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Metagross - Heavy Slam - TM121
  (376, 37600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 56),
  -- Metagross - Sludge Bomb - TM148
  (376, 37600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Metagross - Earthquake - TM149
  (376, 37600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Metagross - Stone Edge - TM150
  (376, 37600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Metagross - Giga Impact - TM152
  (376, 37600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Metagross - Hyper Beam - TM163
  (376, 37600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Metagross - Steel Beam - TM170
  (376, 37600, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 62),
  -- Metagross - Tera Blast - TM171
  (376, 37600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Metagross - Hammer Arm - Evolution
  (376, 37600, 359, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Metagross - Explosion - Reminder
  (376, 37600, 153, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Metagross - Hone Claws - Reminder
  (376, 37600, 468, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Regirock - Rock Throw - Level 1
  (377, 37700, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regirock - Charge Beam - Level 1
  (377, 37700, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regirock - Bulldoze - Level 6
  (377, 37700, 523, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regirock - Ancient Power - Level 12
  (377, 37700, 246, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regirock - Stomp - Level 18
  (377, 37700, 23, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regirock - Rock Slide - Level 24
  (377, 37700, 157, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regirock - Curse - Level 30
  (377, 37700, 174, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regirock - Iron Defense - Level 36
  (377, 37700, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regirock - Hammer Arm - Level 42
  (377, 37700, 359, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regirock - Stone Edge - Level 48
  (377, 37700, 444, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regirock - Superpower - Level 54
  (377, 37700, 276, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regirock - Lock-On - Level 60
  (377, 37700, 199, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regirock - Zap Cannon - Level 66
  (377, 37700, 192, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regirock - Hyper Beam - Level 72
  (377, 37700, 63, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regirock - Explosion - Level 78
  (377, 37700, 153, 23, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regirock - Take Down - TM001
  (377, 37700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Regirock - Protect - TM007
  (377, 37700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Regirock - Charge Beam - TM023
  (377, 37700, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Regirock - Facade - TM025
  (377, 37700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Regirock - Bulldoze - TM028
  (377, 37700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Regirock - Rock Tomb - TM036
  (377, 37700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Regirock - Fling - TM043
  (377, 37700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Regirock - Endure - TM047
  (377, 37700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Regirock - Sunny Day - TM049
  (377, 37700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Regirock - Sandstorm - TM051
  (377, 37700, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 25),
  -- Regirock - Dig - TM055
  (377, 37700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Regirock - Brick Break - TM058
  (377, 37700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Regirock - Body Slam - TM066
  (377, 37700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Regirock - Fire Punch - TM067
  (377, 37700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 29),
  -- Regirock - Thunder Punch - TM068
  (377, 37700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 30),
  -- Regirock - Ice Punch - TM069
  (377, 37700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 31),
  -- Regirock - Sleep Talk - TM070
  (377, 37700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Regirock - Drain Punch - TM073
  (377, 37700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 33),
  -- Regirock - Rock Blast - TM076
  (377, 37700, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Regirock - Thunder Wave - TM082
  (377, 37700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Regirock - Stomping Tantrum - TM084
  (377, 37700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Regirock - Rest - TM085
  (377, 37700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Regirock - Rock Slide - TM086
  (377, 37700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Regirock - Body Press - TM089
  (377, 37700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Regirock - Flash Cannon - TM093
  (377, 37700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 40),
  -- Regirock - Iron Head - TM099
  (377, 37700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 41),
  -- Regirock - Power Gem - TM101
  (377, 37700, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 42),
  -- Regirock - Substitute - TM103
  (377, 37700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Regirock - Iron Defense - TM104
  (377, 37700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Regirock - Stealth Rock - TM116
  (377, 37700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Regirock - Heavy Slam - TM121
  (377, 37700, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 46),
  -- Regirock - Thunderbolt - TM126
  (377, 37700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Regirock - Earth Power - TM133
  (377, 37700, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Regirock - Earthquake - TM149
  (377, 37700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Regirock - Stone Edge - TM150
  (377, 37700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Regirock - Giga Impact - TM152
  (377, 37700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Regirock - Focus Blast - TM158
  (377, 37700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Regirock - Hyper Beam - TM163
  (377, 37700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Regirock - Thunder - TM166
  (377, 37700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Regirock - Tera Blast - TM171
  (377, 37700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Regice - Icy Wind - Level 1
  (378, 37800, 196, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regice - Charge Beam - Level 1
  (378, 37800, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regice - Bulldoze - Level 6
  (378, 37800, 523, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regice - Ancient Power - Level 12
  (378, 37800, 246, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regice - Stomp - Level 18
  (378, 37800, 23, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regice - Ice Beam - Level 24
  (378, 37800, 58, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regice - Curse - Level 30
  (378, 37800, 174, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regice - Amnesia - Level 36
  (378, 37800, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regice - Hammer Arm - Level 42
  (378, 37800, 359, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regice - Blizzard - Level 48
  (378, 37800, 59, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regice - Superpower - Level 54
  (378, 37800, 276, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regice - Lock-On - Level 60
  (378, 37800, 199, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regice - Zap Cannon - Level 66
  (378, 37800, 192, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regice - Hyper Beam - Level 72
  (378, 37800, 63, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regice - Explosion - Level 78
  (378, 37800, 153, 23, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regice - Protect - TM007
  (378, 37800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Regice - Charge Beam - TM023
  (378, 37800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Regice - Facade - TM025
  (378, 37800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Regice - Bulldoze - TM028
  (378, 37800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Regice - Icy Wind - TM034
  (378, 37800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Regice - Rock Tomb - TM036
  (378, 37800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Regice - Fling - TM043
  (378, 37800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 22),
  -- Regice - Avalanche - TM046
  (378, 37800, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 23),
  -- Regice - Endure - TM047
  (378, 37800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Regice - Rain Dance - TM050
  (378, 37800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Regice - Snowscape - TM052
  (378, 37800, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 26),
  -- Regice - Brick Break - TM058
  (378, 37800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Regice - Body Slam - TM066
  (378, 37800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Regice - Thunder Punch - TM068
  (378, 37800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 29),
  -- Regice - Ice Punch - TM069
  (378, 37800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 30),
  -- Regice - Sleep Talk - TM070
  (378, 37800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Regice - Thunder Wave - TM082
  (378, 37800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Regice - Stomping Tantrum - TM084
  (378, 37800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 33),
  -- Regice - Rest - TM085
  (378, 37800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Regice - Rock Slide - TM086
  (378, 37800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Regice - Body Press - TM089
  (378, 37800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 36),
  -- Regice - Flash Cannon - TM093
  (378, 37800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Regice - Iron Head - TM099
  (378, 37800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 38),
  -- Regice - Substitute - TM103
  (378, 37800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Regice - Heavy Slam - TM121
  (378, 37800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 40),
  -- Regice - Ice Spinner - TM124
  (378, 37800, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 41),
  -- Regice - Thunderbolt - TM126
  (378, 37800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Regice - Amnesia - TM128
  (378, 37800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 43),
  -- Regice - Ice Beam - TM135
  (378, 37800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 44),
  -- Regice - Blizzard - TM143
  (378, 37800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Regice - Earthquake - TM149
  (378, 37800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 46),
  -- Regice - Giga Impact - TM152
  (378, 37800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Regice - Focus Blast - TM158
  (378, 37800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 48),
  -- Regice - Hyper Beam - TM163
  (378, 37800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Regice - Thunder - TM166
  (378, 37800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Regice - Tera Blast - TM171
  (378, 37800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Registeel - Metal Claw - Level 1
  (379, 37900, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Registeel - Charge Beam - Level 1
  (379, 37900, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Registeel - Bulldoze - Level 6
  (379, 37900, 523, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Registeel - Ancient Power - Level 12
  (379, 37900, 246, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Registeel - Stomp - Level 18
  (379, 37900, 23, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Registeel - Flash Cannon - Level 24
  (379, 37900, 430, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Registeel - Iron Head - Level 24
  (379, 37900, 442, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Registeel - Curse - Level 30
  (379, 37900, 174, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Registeel - Amnesia - Level 36
  (379, 37900, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Registeel - Iron Defense - Level 36
  (379, 37900, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Registeel - Hammer Arm - Level 42
  (379, 37900, 359, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Registeel - Heavy Slam - Level 48
  (379, 37900, 484, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Registeel - Superpower - Level 54
  (379, 37900, 276, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Registeel - Lock-On - Level 60
  (379, 37900, 199, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Registeel - Zap Cannon - Level 66
  (379, 37900, 192, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Registeel - Hyper Beam - Level 72
  (379, 37900, 63, 23, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Registeel - Explosion - Level 78
  (379, 37900, 153, 23, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Registeel - Take Down - TM001
  (379, 37900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Registeel - Protect - TM007
  (379, 37900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Registeel - Charge Beam - TM023
  (379, 37900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Registeel - Facade - TM025
  (379, 37900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Registeel - Bulldoze - TM028
  (379, 37900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Registeel - Metal Claw - TM031
  (379, 37900, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Registeel - Rock Tomb - TM036
  (379, 37900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Registeel - Fling - TM043
  (379, 37900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Registeel - Endure - TM047
  (379, 37900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Registeel - Sunny Day - TM049
  (379, 37900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Registeel - Rain Dance - TM050
  (379, 37900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Registeel - Sandstorm - TM051
  (379, 37900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Registeel - Brick Break - TM058
  (379, 37900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Registeel - Shadow Claw - TM061
  (379, 37900, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Registeel - Body Slam - TM066
  (379, 37900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Registeel - Thunder Punch - TM068
  (379, 37900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Registeel - Ice Punch - TM069
  (379, 37900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 34),
  -- Registeel - Sleep Talk - TM070
  (379, 37900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Registeel - Thunder Wave - TM082
  (379, 37900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Registeel - Stomping Tantrum - TM084
  (379, 37900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Registeel - Rest - TM085
  (379, 37900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Registeel - Rock Slide - TM086
  (379, 37900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Registeel - Body Press - TM089
  (379, 37900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 40),
  -- Registeel - Flash Cannon - TM093
  (379, 37900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 41),
  -- Registeel - Iron Head - TM099
  (379, 37900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Registeel - Substitute - TM103
  (379, 37900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Registeel - Iron Defense - TM104
  (379, 37900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Registeel - Stealth Rock - TM116
  (379, 37900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Registeel - Heavy Slam - TM121
  (379, 37900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 46),
  -- Registeel - Ice Spinner - TM124
  (379, 37900, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 47),
  -- Registeel - Thunderbolt - TM126
  (379, 37900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Registeel - Amnesia - TM128
  (379, 37900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 49),
  -- Registeel - Earthquake - TM149
  (379, 37900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Registeel - Giga Impact - TM152
  (379, 37900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Registeel - Focus Blast - TM158
  (379, 37900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Registeel - Hyper Beam - TM163
  (379, 37900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Registeel - Thunder - TM166
  (379, 37900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 54),
  -- Registeel - Steel Beam - TM170
  (379, 37900, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 55),
  -- Registeel - Tera Blast - TM171
  (379, 37900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Latias - Charm - Level 1
  (380, 38000, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Stored Power - Level 1
  (380, 38000, 500, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latias - Helping Hand - Level 5
  (380, 38000, 270, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latias - Recover - Level 10
  (380, 38000, 105, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latias - Confusion - Level 15
  (380, 38000, 93, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latias - Tailwind - Level 20
  (380, 38000, 366, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latias - Dragon Breath - Level 25
  (380, 38000, 225, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latias - Wish - Level 30
  (380, 38000, 273, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latias - Mist Ball - Level 35
  (380, 38000, 296, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latias - Zen Headbutt - Level 40
  (380, 38000, 428, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latias - Dragon Pulse - Level 45
  (380, 38000, 406, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latias - Heal Pulse - Level 50
  (380, 38000, 505, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latias - Reflect Type - Level 55
  (380, 38000, 513, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latias - Psychic - Level 60
  (380, 38000, 94, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latias - Guard Split - Level 65
  (380, 38000, 470, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latias - Healing Wish - Level 70
  (380, 38000, 361, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Latias - Take Down - TM001
  (380, 38000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Latias - Charm - TM002
  (380, 38000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Latias - Agility - TM004
  (380, 38000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Latias - Protect - TM007
  (380, 38000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Latias - Water Pulse - TM011
  (380, 38000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Latias - Disarming Voice - TM019
  (380, 38000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Latias - Chilling Water - TM022
  (380, 38000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Latias - Charge Beam - TM023
  (380, 38000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Latias - Facade - TM025
  (380, 38000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Latias - Aerial Ace - TM027
  (380, 38000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Latias - Bulldoze - TM028
  (380, 38000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Latias - Swift - TM032
  (380, 38000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Latias - Icy Wind - TM034
  (380, 38000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Latias - Draining Kiss - TM037
  (380, 38000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 30),
  -- Latias - Air Cutter - TM040
  (380, 38000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 31),
  -- Latias - Stored Power - TM041
  (380, 38000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 32),
  -- Latias - Endure - TM047
  (380, 38000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Latias - Sunny Day - TM049
  (380, 38000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Latias - Rain Dance - TM050
  (380, 38000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Latias - Sandstorm - TM051
  (380, 38000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 36),
  -- Latias - Psyshock - TM054
  (380, 38000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 37),
  -- Latias - Zen Headbutt - TM059
  (380, 38000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 38),
  -- Latias - Shadow Claw - TM061
  (380, 38000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Latias - Air Slash - TM065
  (380, 38000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 40),
  -- Latias - Body Slam - TM066
  (380, 38000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Latias - Sleep Talk - TM070
  (380, 38000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Latias - Reflect - TM074
  (380, 38000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Latias - Light Screen - TM075
  (380, 38000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Latias - Waterfall - TM077
  (380, 38000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 45),
  -- Latias - Dragon Claw - TM078
  (380, 38000, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 46),
  -- Latias - Grass Knot - TM081
  (380, 38000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 47),
  -- Latias - Thunder Wave - TM082
  (380, 38000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Latias - Rest - TM085
  (380, 38000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Latias - Fly - TM097
  (380, 38000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 50),
  -- Latias - Dragon Dance - TM100
  (380, 38000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 51),
  -- Latias - Substitute - TM103
  (380, 38000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Latias - Trick - TM109
  (380, 38000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 53),
  -- Latias - Liquidation - TM110
  (380, 38000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 54),
  -- Latias - Aura Sphere - TM112
  (380, 38000, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 55),
  -- Latias - Tailwind - TM113
  (380, 38000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 56),
  -- Latias - Shadow Ball - TM114
  (380, 38000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Latias - Dragon Pulse - TM115
  (380, 38000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 58),
  -- Latias - Energy Ball - TM119
  (380, 38000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 59),
  -- Latias - Psychic - TM120
  (380, 38000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 60),
  -- Latias - Surf - TM123
  (380, 38000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 61),
  -- Latias - Thunderbolt - TM126
  (380, 38000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 62),
  -- Latias - Calm Mind - TM129
  (380, 38000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 63),
  -- Latias - Helping Hand - TM130
  (380, 38000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 64),
  -- Latias - Baton Pass - TM132
  (380, 38000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 65),
  -- Latias - Ice Beam - TM135
  (380, 38000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 66),
  -- Latias - Earthquake - TM149
  (380, 38000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 67),
  -- Latias - Giga Impact - TM152
  (380, 38000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Latias - Outrage - TM156
  (380, 38000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 69),
  -- Latias - Hyper Beam - TM163
  (380, 38000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 70),
  -- Latias - Thunder - TM166
  (380, 38000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 71),
  -- Latias - Solar Beam - TM168
  (380, 38000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 72),
  -- Latias - Draco Meteor - TM169
  (380, 38000, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 73),
  -- Latias - Tera Blast - TM171
  (380, 38000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Latios - Dragon Dance - Level 1
  (381, 38100, 349, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Stored Power - Level 1
  (381, 38100, 500, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latios - Helping Hand - Level 5
  (381, 38100, 270, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latios - Recover - Level 10
  (381, 38100, 105, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latios - Confusion - Level 15
  (381, 38100, 93, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latios - Tailwind - Level 20
  (381, 38100, 366, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latios - Dragon Breath - Level 25
  (381, 38100, 225, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latios - Ally Switch - Level 30
  (381, 38100, 502, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latios - Luster Purge - Level 35
  (381, 38100, 295, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latios - Zen Headbutt - Level 40
  (381, 38100, 428, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latios - Dragon Pulse - Level 45
  (381, 38100, 406, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latios - Heal Pulse - Level 50
  (381, 38100, 505, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latios - Simple Beam - Level 55
  (381, 38100, 493, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latios - Psychic - Level 60
  (381, 38100, 94, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latios - Power Split - Level 65
  (381, 38100, 471, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latios - Memento - Level 70
  (381, 38100, 262, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Latios - Take Down - TM001
  (381, 38100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Latios - Agility - TM004
  (381, 38100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Latios - Protect - TM007
  (381, 38100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Latios - Water Pulse - TM011
  (381, 38100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Latios - Chilling Water - TM022
  (381, 38100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Latios - Charge Beam - TM023
  (381, 38100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Latios - Facade - TM025
  (381, 38100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Latios - Aerial Ace - TM027
  (381, 38100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Latios - Bulldoze - TM028
  (381, 38100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Latios - Swift - TM032
  (381, 38100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Latios - Icy Wind - TM034
  (381, 38100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Latios - Air Cutter - TM040
  (381, 38100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Latios - Stored Power - TM041
  (381, 38100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Latios - Endure - TM047
  (381, 38100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Latios - Sunny Day - TM049
  (381, 38100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Latios - Rain Dance - TM050
  (381, 38100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Latios - Sandstorm - TM051
  (381, 38100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Latios - Psyshock - TM054
  (381, 38100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Latios - Zen Headbutt - TM059
  (381, 38100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Latios - Shadow Claw - TM061
  (381, 38100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Latios - Air Slash - TM065
  (381, 38100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Latios - Body Slam - TM066
  (381, 38100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Latios - Sleep Talk - TM070
  (381, 38100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Latios - Reflect - TM074
  (381, 38100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Latios - Light Screen - TM075
  (381, 38100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Latios - Waterfall - TM077
  (381, 38100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 42),
  -- Latios - Dragon Claw - TM078
  (381, 38100, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 43),
  -- Latios - Grass Knot - TM081
  (381, 38100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Latios - Thunder Wave - TM082
  (381, 38100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Latios - Rest - TM085
  (381, 38100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Latios - Fly - TM097
  (381, 38100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 47),
  -- Latios - Dragon Dance - TM100
  (381, 38100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 48),
  -- Latios - Substitute - TM103
  (381, 38100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Latios - Trick - TM109
  (381, 38100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 50),
  -- Latios - Liquidation - TM110
  (381, 38100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 51),
  -- Latios - Aura Sphere - TM112
  (381, 38100, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 52),
  -- Latios - Tailwind - TM113
  (381, 38100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 53),
  -- Latios - Shadow Ball - TM114
  (381, 38100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 54),
  -- Latios - Dragon Pulse - TM115
  (381, 38100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 55),
  -- Latios - Energy Ball - TM119
  (381, 38100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 56),
  -- Latios - Psychic - TM120
  (381, 38100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 57),
  -- Latios - Surf - TM123
  (381, 38100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 58),
  -- Latios - Thunderbolt - TM126
  (381, 38100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 59),
  -- Latios - Calm Mind - TM129
  (381, 38100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 60),
  -- Latios - Helping Hand - TM130
  (381, 38100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Latios - Baton Pass - TM132
  (381, 38100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 62),
  -- Latios - Ice Beam - TM135
  (381, 38100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 63),
  -- Latios - Earthquake - TM149
  (381, 38100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 64),
  -- Latios - Giga Impact - TM152
  (381, 38100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 65),
  -- Latios - Outrage - TM156
  (381, 38100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 66),
  -- Latios - Hyper Beam - TM163
  (381, 38100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Latios - Thunder - TM166
  (381, 38100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Latios - Solar Beam - TM168
  (381, 38100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 69),
  -- Latios - Draco Meteor - TM169
  (381, 38100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 70),
  -- Latios - Tera Blast - TM171
  (381, 38100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 71),
  -- Kyogre - Body Slam - Level 1
  (382, 38200, 34, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Scary Face - Level 1
  (382, 38200, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyogre - Ancient Power - Level 1
  (382, 38200, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyogre - Origin Pulse - Level 1
  (382, 38200, 618, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kyogre - Aqua Tail - Level 9
  (382, 38200, 401, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Kyogre - Calm Mind - Level 18
  (382, 38200, 347, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Kyogre - Muddy Water - Level 27
  (382, 38200, 330, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Kyogre - Ice Beam - Level 36
  (382, 38200, 58, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Kyogre - Sheer Cold - Level 45
  (382, 38200, 329, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Kyogre - Aqua Ring - Level 54
  (382, 38200, 392, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Kyogre - Hydro Pump - Level 72
  (382, 38200, 56, 23, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Kyogre - Double-Edge - Level 81
  (382, 38200, 38, 23, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Kyogre - Water Spout - Level 90
  (382, 38200, 323, 23, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Kyogre - Take Down - TM001
  (382, 38200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Kyogre - Scary Face - TM006
  (382, 38200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Kyogre - Protect - TM007
  (382, 38200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Kyogre - Water Pulse - TM011
  (382, 38200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Kyogre - Chilling Water - TM022
  (382, 38200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Kyogre - Facade - TM025
  (382, 38200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Kyogre - Bulldoze - TM028
  (382, 38200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Kyogre - Icy Wind - TM034
  (382, 38200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Kyogre - Rock Tomb - TM036
  (382, 38200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Kyogre - Avalanche - TM046
  (382, 38200, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 24),
  -- Kyogre - Endure - TM047
  (382, 38200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Kyogre - Rain Dance - TM050
  (382, 38200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Kyogre - Brick Break - TM058
  (382, 38200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Kyogre - Body Slam - TM066
  (382, 38200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Kyogre - Sleep Talk - TM070
  (382, 38200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Kyogre - Waterfall - TM077
  (382, 38200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 30),
  -- Kyogre - Thunder Wave - TM082
  (382, 38200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Kyogre - Rest - TM085
  (382, 38200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Kyogre - Rock Slide - TM086
  (382, 38200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Kyogre - Iron Head - TM099
  (382, 38200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Kyogre - Substitute - TM103
  (382, 38200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Kyogre - Liquidation - TM110
  (382, 38200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Kyogre - Heavy Slam - TM121
  (382, 38200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 37),
  -- Kyogre - Surf - TM123
  (382, 38200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 38),
  -- Kyogre - Thunderbolt - TM126
  (382, 38200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 39),
  -- Kyogre - Calm Mind - TM129
  (382, 38200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Kyogre - Helping Hand - TM130
  (382, 38200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Kyogre - Ice Beam - TM135
  (382, 38200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Kyogre - Hydro Pump - TM142
  (382, 38200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 43),
  -- Kyogre - Blizzard - TM143
  (382, 38200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Kyogre - Earthquake - TM149
  (382, 38200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Kyogre - Giga Impact - TM152
  (382, 38200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Kyogre - Hyper Beam - TM163
  (382, 38200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Kyogre - Thunder - TM166
  (382, 38200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 48),
  -- Kyogre - Tera Blast - TM171
  (382, 38200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Groudon - Scary Face - Level 1
  (383, 38300, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Ancient Power - Level 1
  (383, 38300, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Groudon - Lava Plume - Level 1
  (383, 38300, 436, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Groudon - Precipice Blades - Level 1
  (383, 38300, 619, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Groudon - Earth Power - Level 9
  (383, 38300, 414, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Groudon - Bulk Up - Level 18
  (383, 38300, 339, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Groudon - Earthquake - Level 27
  (383, 38300, 89, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Groudon - Hammer Arm - Level 36
  (383, 38300, 359, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Groudon - Fissure - Level 45
  (383, 38300, 90, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Groudon - Rest - Level 54
  (383, 38300, 156, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Groudon - Fire Blast - Level 72
  (383, 38300, 126, 23, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Groudon - Solar Beam - Level 81
  (383, 38300, 76, 23, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Groudon - Eruption - Level 90
  (383, 38300, 284, 23, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Groudon - Take Down - TM001
  (383, 38300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Groudon - Mud-Slap - TM005
  (383, 38300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Groudon - Scary Face - TM006
  (383, 38300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Groudon - Protect - TM007
  (383, 38300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Groudon - Fire Fang - TM008
  (383, 38300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Groudon - Facade - TM025
  (383, 38300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Groudon - Aerial Ace - TM027
  (383, 38300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Groudon - Bulldoze - TM028
  (383, 38300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Groudon - Metal Claw - TM031
  (383, 38300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Groudon - Mud Shot - TM035
  (383, 38300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Groudon - Rock Tomb - TM036
  (383, 38300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Groudon - Fling - TM043
  (383, 38300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Groudon - Endure - TM047
  (383, 38300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Groudon - Sunny Day - TM049
  (383, 38300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Groudon - Sandstorm - TM051
  (383, 38300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Groudon - Dig - TM055
  (383, 38300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Groudon - Brick Break - TM058
  (383, 38300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Groudon - Zen Headbutt - TM059
  (383, 38300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Groudon - Shadow Claw - TM061
  (383, 38300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Groudon - Bulk Up - TM064
  (383, 38300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Groudon - Body Slam - TM066
  (383, 38300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Groudon - Fire Punch - TM067
  (383, 38300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Groudon - Thunder Punch - TM068
  (383, 38300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Groudon - Sleep Talk - TM070
  (383, 38300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Groudon - Rock Blast - TM076
  (383, 38300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 39),
  -- Groudon - Dragon Claw - TM078
  (383, 38300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Groudon - Thunder Wave - TM082
  (383, 38300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 41),
  -- Groudon - Stomping Tantrum - TM084
  (383, 38300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Groudon - Rest - TM085
  (383, 38300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Groudon - Rock Slide - TM086
  (383, 38300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Groudon - Swords Dance - TM088
  (383, 38300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Groudon - Body Press - TM089
  (383, 38300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 46),
  -- Groudon - Spikes - TM090
  (383, 38300, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 47),
  -- Groudon - Iron Head - TM099
  (383, 38300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 48),
  -- Groudon - Substitute - TM103
  (383, 38300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Groudon - Will-O-Wisp - TM107
  (383, 38300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 50),
  -- Groudon - Crunch - TM108
  (383, 38300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Groudon - Dragon Pulse - TM115
  (383, 38300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 52),
  -- Groudon - Stealth Rock - TM116
  (383, 38300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Groudon - Heat Wave - TM118
  (383, 38300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 54),
  -- Groudon - Heavy Slam - TM121
  (383, 38300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 55),
  -- Groudon - Flamethrower - TM125
  (383, 38300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 56),
  -- Groudon - Thunderbolt - TM126
  (383, 38300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Groudon - Helping Hand - TM130
  (383, 38300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Groudon - Earth Power - TM133
  (383, 38300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 59),
  -- Groudon - Fire Blast - TM141
  (383, 38300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 60),
  -- Groudon - Earthquake - TM149
  (383, 38300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 61),
  -- Groudon - Stone Edge - TM150
  (383, 38300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 62),
  -- Groudon - Giga Impact - TM152
  (383, 38300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Groudon - Overheat - TM157
  (383, 38300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 64),
  -- Groudon - Focus Blast - TM158
  (383, 38300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 65),
  -- Groudon - Hyper Beam - TM163
  (383, 38300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Groudon - Thunder - TM166
  (383, 38300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 67),
  -- Groudon - Solar Beam - TM168
  (383, 38300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 68),
  -- Groudon - Tera Blast - TM171
  (383, 38300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Rayquaza - Scary Face - Level 1
  (384, 38400, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rayquaza - Ancient Power - Level 1
  (384, 38400, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rayquaza - Air Slash - Level 1
  (384, 38400, 403, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rayquaza - Dragon Ascent - Level 1
  (384, 38400, 620, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rayquaza - Crunch - Level 9
  (384, 38400, 242, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rayquaza - Dragon Dance - Level 18
  (384, 38400, 349, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rayquaza - Extreme Speed - Level 27
  (384, 38400, 245, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Rayquaza - Dragon Pulse - Level 36
  (384, 38400, 406, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Rayquaza - Hyper Voice - Level 45
  (384, 38400, 304, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Rayquaza - Rest - Level 54
  (384, 38400, 156, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Rayquaza - Fly - Level 63
  (384, 38400, 19, 23, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Rayquaza - Hurricane - Level 72
  (384, 38400, 542, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Rayquaza - Outrage - Level 81
  (384, 38400, 200, 23, NULL, 1, 81, NULL, NULL, NULL, 14),
  -- Rayquaza - Hyper Beam - Level 90
  (384, 38400, 63, 23, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Rayquaza - Take Down - TM001
  (384, 38400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Rayquaza - Scary Face - TM006
  (384, 38400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Rayquaza - Protect - TM007
  (384, 38400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Rayquaza - Facade - TM025
  (384, 38400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Rayquaza - Aerial Ace - TM027
  (384, 38400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Rayquaza - Bulldoze - TM028
  (384, 38400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Rayquaza - Swift - TM032
  (384, 38400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Rayquaza - Icy Wind - TM034
  (384, 38400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Rayquaza - Rock Tomb - TM036
  (384, 38400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Rayquaza - Fling - TM043
  (384, 38400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Rayquaza - Dragon Tail - TM044
  (384, 38400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Rayquaza - Avalanche - TM046
  (384, 38400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Rayquaza - Endure - TM047
  (384, 38400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Rayquaza - Sunny Day - TM049
  (384, 38400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Rayquaza - Rain Dance - TM050
  (384, 38400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Rayquaza - Sandstorm - TM051
  (384, 38400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Rayquaza - Brick Break - TM058
  (384, 38400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Rayquaza - U-turn - TM060
  (384, 38400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Rayquaza - Shadow Claw - TM061
  (384, 38400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Rayquaza - Bulk Up - TM064
  (384, 38400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 35),
  -- Rayquaza - Air Slash - TM065
  (384, 38400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 36),
  -- Rayquaza - Body Slam - TM066
  (384, 38400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Rayquaza - Sleep Talk - TM070
  (384, 38400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Rayquaza - Waterfall - TM077
  (384, 38400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Rayquaza - Dragon Claw - TM078
  (384, 38400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Rayquaza - Thunder Wave - TM082
  (384, 38400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 41),
  -- Rayquaza - Rest - TM085
  (384, 38400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Rayquaza - Rock Slide - TM086
  (384, 38400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Rayquaza - Swords Dance - TM088
  (384, 38400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Rayquaza - Fly - TM097
  (384, 38400, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 45),
  -- Rayquaza - Iron Head - TM099
  (384, 38400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 46),
  -- Rayquaza - Dragon Dance - TM100
  (384, 38400, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 47),
  -- Rayquaza - Substitute - TM103
  (384, 38400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Rayquaza - Crunch - TM108
  (384, 38400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 49),
  -- Rayquaza - Tailwind - TM113
  (384, 38400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 50),
  -- Rayquaza - Dragon Pulse - TM115
  (384, 38400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 51),
  -- Rayquaza - Stealth Rock - TM116
  (384, 38400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 52),
  -- Rayquaza - Hyper Voice - TM117
  (384, 38400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 53),
  -- Rayquaza - Energy Ball - TM119
  (384, 38400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Rayquaza - Surf - TM123
  (384, 38400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 55),
  -- Rayquaza - Flamethrower - TM125
  (384, 38400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 56),
  -- Rayquaza - Thunderbolt - TM126
  (384, 38400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Rayquaza - Helping Hand - TM130
  (384, 38400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Rayquaza - Earth Power - TM133
  (384, 38400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 59),
  -- Rayquaza - Ice Beam - TM135
  (384, 38400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 60),
  -- Rayquaza - Fire Blast - TM141
  (384, 38400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 61),
  -- Rayquaza - Hydro Pump - TM142
  (384, 38400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 62),
  -- Rayquaza - Blizzard - TM143
  (384, 38400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 63),
  -- Rayquaza - Wild Charge - TM147
  (384, 38400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 64),
  -- Rayquaza - Earthquake - TM149
  (384, 38400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 65),
  -- Rayquaza - Stone Edge - TM150
  (384, 38400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 66),
  -- Rayquaza - Giga Impact - TM152
  (384, 38400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 67),
  -- Rayquaza - Outrage - TM156
  (384, 38400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 68),
  -- Rayquaza - Overheat - TM157
  (384, 38400, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 69),
  -- Rayquaza - Focus Blast - TM158
  (384, 38400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 70),
  -- Rayquaza - Hurricane - TM160
  (384, 38400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 71),
  -- Rayquaza - Hyper Beam - TM163
  (384, 38400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 72),
  -- Rayquaza - Thunder - TM166
  (384, 38400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 73),
  -- Rayquaza - Solar Beam - TM168
  (384, 38400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 74),
  -- Rayquaza - Draco Meteor - TM169
  (384, 38400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 75),
  -- Rayquaza - Tera Blast - TM171
  (384, 38400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 76),
  -- Jirachi - Confusion - Level 1
  (385, 38500, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jirachi - Wish - Level 1
  (385, 38500, 273, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jirachi - Swift - Level 7
  (385, 38500, 129, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Jirachi - Life Dew - Level 21
  (385, 38500, 791, 23, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Jirachi - Zen Headbutt - Level 28
  (385, 38500, 428, 23, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Jirachi - Gravity - Level 35
  (385, 38500, 356, 23, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Jirachi - Psychic - Level 42
  (385, 38500, 94, 23, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Jirachi - Meteor Mash - Level 49
  (385, 38500, 309, 23, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Jirachi - Healing Wish - Level 56
  (385, 38500, 361, 23, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Jirachi - Rest - Level 63
  (385, 38500, 156, 23, NULL, 1, 63, NULL, NULL, NULL, 10),
  -- Jirachi - Future Sight - Level 70
  (385, 38500, 248, 23, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Jirachi - Double-Edge - Level 77
  (385, 38500, 38, 23, NULL, 1, 77, NULL, NULL, NULL, 12),
  -- Jirachi - Cosmic Power - Level 84
  (385, 38500, 322, 23, NULL, 1, 84, NULL, NULL, NULL, 13),
  -- Jirachi - Last Resort - Level 91
  (385, 38500, 387, 23, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Jirachi - Doom Desire - Level 98
  (385, 38500, 353, 23, NULL, 1, 98, NULL, NULL, NULL, 15),
  -- Jirachi - Charm - TM002
  (385, 38500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Jirachi - Fake Tears - TM003
  (385, 38500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Jirachi - Mud-Slap - TM005
  (385, 38500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Jirachi - Protect - TM007
  (385, 38500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Jirachi - Water Pulse - TM011
  (385, 38500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Jirachi - Psybeam - TM016
  (385, 38500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Jirachi - Confuse Ray - TM017
  (385, 38500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Jirachi - Charge Beam - TM023
  (385, 38500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Jirachi - Facade - TM025
  (385, 38500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Jirachi - Swift - TM032
  (385, 38500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Jirachi - Icy Wind - TM034
  (385, 38500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Jirachi - Stored Power - TM041
  (385, 38500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 27),
  -- Jirachi - Fling - TM043
  (385, 38500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Jirachi - Endure - TM047
  (385, 38500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Jirachi - Sunny Day - TM049
  (385, 38500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Jirachi - Rain Dance - TM050
  (385, 38500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Jirachi - Sandstorm - TM051
  (385, 38500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Jirachi - Psyshock - TM054
  (385, 38500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Jirachi - Zen Headbutt - TM059
  (385, 38500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Jirachi - U-turn - TM060
  (385, 38500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Jirachi - Body Slam - TM066
  (385, 38500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Jirachi - Fire Punch - TM067
  (385, 38500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Jirachi - Thunder Punch - TM068
  (385, 38500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Jirachi - Ice Punch - TM069
  (385, 38500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Jirachi - Sleep Talk - TM070
  (385, 38500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Jirachi - Drain Punch - TM073
  (385, 38500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Jirachi - Reflect - TM074
  (385, 38500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 42),
  -- Jirachi - Light Screen - TM075
  (385, 38500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 43),
  -- Jirachi - Dazzling Gleam - TM079
  (385, 38500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 44),
  -- Jirachi - Metronome - TM080
  (385, 38500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 45),
  -- Jirachi - Grass Knot - TM081
  (385, 38500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 46),
  -- Jirachi - Thunder Wave - TM082
  (385, 38500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 47),
  -- Jirachi - Rest - TM085
  (385, 38500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Jirachi - Imprison - TM092
  (385, 38500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 49),
  -- Jirachi - Flash Cannon - TM093
  (385, 38500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 50),
  -- Jirachi - Skill Swap - TM098
  (385, 38500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 51),
  -- Jirachi - Iron Head - TM099
  (385, 38500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 52),
  -- Jirachi - Substitute - TM103
  (385, 38500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Jirachi - Iron Defense - TM104
  (385, 38500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 54),
  -- Jirachi - Trick - TM109
  (385, 38500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 55),
  -- Jirachi - Aura Sphere - TM112
  (385, 38500, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 56),
  -- Jirachi - Shadow Ball - TM114
  (385, 38500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Jirachi - Stealth Rock - TM116
  (385, 38500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 58),
  -- Jirachi - Energy Ball - TM119
  (385, 38500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 59),
  -- Jirachi - Psychic - TM120
  (385, 38500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 60),
  -- Jirachi - Encore - TM122
  (385, 38500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 61),
  -- Jirachi - Thunderbolt - TM126
  (385, 38500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 62),
  -- Jirachi - Play Rough - TM127
  (385, 38500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 63),
  -- Jirachi - Amnesia - TM128
  (385, 38500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 64),
  -- Jirachi - Calm Mind - TM129
  (385, 38500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 65),
  -- Jirachi - Helping Hand - TM130
  (385, 38500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 66),
  -- Jirachi - Baton Pass - TM132
  (385, 38500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 67),
  -- Jirachi - Giga Impact - TM152
  (385, 38500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Jirachi - Trick Room - TM161
  (385, 38500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 69),
  -- Jirachi - Hyper Beam - TM163
  (385, 38500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 70),
  -- Jirachi - Thunder - TM166
  (385, 38500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 71),
  -- Jirachi - Steel Beam - TM170
  (385, 38500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 72),
  -- Jirachi - Tera Blast - TM171
  (385, 38500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 73),
  -- Deoxys - Wrap - Level 1
  (386, 38600, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys - Leer - Level 1
  (386, 38600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys - Night Shade - Level 7
  (386, 38600, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys - Teleport - Level 13
  (386, 38600, 100, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys - Knock Off - Level 19
  (386, 38600, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys - Psyshock - Level 25
  (386, 38600, 473, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys - Psychic - Level 31
  (386, 38600, 94, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys - Gravity - Level 37
  (386, 38600, 356, 23, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys - Skill Swap - Level 43
  (386, 38600, 285, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys - Zen Headbutt - Level 49
  (386, 38600, 428, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys - Cosmic Power - Level 55
  (386, 38600, 322, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys - Recover - Level 61
  (386, 38600, 105, 23, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys - Psycho Boost - Level 67
  (386, 38600, 354, 23, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys - Hyper Beam - Level 73
  (386, 38600, 63, 23, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys - Take Down - TM001
  (386, 38600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Deoxys - Agility - TM004
  (386, 38600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Deoxys - Scary Face - TM006
  (386, 38600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Deoxys - Protect - TM007
  (386, 38600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Deoxys - Water Pulse - TM011
  (386, 38600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Deoxys - Low Kick - TM012
  (386, 38600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Deoxys - Psybeam - TM016
  (386, 38600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Deoxys - Charge Beam - TM023
  (386, 38600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Deoxys - Facade - TM025
  (386, 38600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Deoxys - Aerial Ace - TM027
  (386, 38600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Deoxys - Swift - TM032
  (386, 38600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Deoxys - Icy Wind - TM034
  (386, 38600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Deoxys - Rock Tomb - TM036
  (386, 38600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Deoxys - Low Sweep - TM039
  (386, 38600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Deoxys - Stored Power - TM041
  (386, 38600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Deoxys - Night Shade - TM042
  (386, 38600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Deoxys - Fling - TM043
  (386, 38600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Deoxys - Endure - TM047
  (386, 38600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Deoxys - Sunny Day - TM049
  (386, 38600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Deoxys - Rain Dance - TM050
  (386, 38600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Deoxys - Psyshock - TM054
  (386, 38600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 35),
  -- Deoxys - Brick Break - TM058
  (386, 38600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Deoxys - Zen Headbutt - TM059
  (386, 38600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Deoxys - Fire Punch - TM067
  (386, 38600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Deoxys - Thunder Punch - TM068
  (386, 38600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Deoxys - Ice Punch - TM069
  (386, 38600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Deoxys - Sleep Talk - TM070
  (386, 38600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Deoxys - Drain Punch - TM073
  (386, 38600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Deoxys - Reflect - TM074
  (386, 38600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Deoxys - Light Screen - TM075
  (386, 38600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Deoxys - Grass Knot - TM081
  (386, 38600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Deoxys - Thunder Wave - TM082
  (386, 38600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Deoxys - Poison Jab - TM083
  (386, 38600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Deoxys - Stomping Tantrum - TM084
  (386, 38600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Deoxys - Rest - TM085
  (386, 38600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Deoxys - Rock Slide - TM086
  (386, 38600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Deoxys - Imprison - TM092
  (386, 38600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 51),
  -- Deoxys - Flash Cannon - TM093
  (386, 38600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 52),
  -- Deoxys - Dark Pulse - TM094
  (386, 38600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 53),
  -- Deoxys - Skill Swap - TM098
  (386, 38600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 54),
  -- Deoxys - Substitute - TM103
  (386, 38600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Deoxys - Trick - TM109
  (386, 38600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 56),
  -- Deoxys - Shadow Ball - TM114
  (386, 38600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Deoxys - Stealth Rock - TM116
  (386, 38600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 58),
  -- Deoxys - Energy Ball - TM119
  (386, 38600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 59),
  -- Deoxys - Psychic - TM120
  (386, 38600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 60),
  -- Deoxys - Thunderbolt - TM126
  (386, 38600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 61),
  -- Deoxys - Calm Mind - TM129
  (386, 38600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 62),
  -- Deoxys - Ice Beam - TM135
  (386, 38600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 63),
  -- Deoxys - Psychic Terrain - TM138
  (386, 38600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 64),
  -- Deoxys - Nasty Plot - TM140
  (386, 38600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 65),
  -- Deoxys - Giga Impact - TM152
  (386, 38600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 66),
  -- Deoxys - Focus Blast - TM158
  (386, 38600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 67),
  -- Deoxys - Trick Room - TM161
  (386, 38600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 68),
  -- Deoxys - Hyper Beam - TM163
  (386, 38600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 69),
  -- Deoxys - Thunder - TM166
  (386, 38600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 70),
  -- Deoxys - Solar Beam - TM168
  (386, 38600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 71),
  -- Deoxys - Tera Blast - TM171
  (386, 38600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 72),
  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 7
  (386, 38601, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 13
  (386, 38601, 100, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 19
  (386, 38601, 269, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Psyshock - Level 25
  (386, 38601, 473, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 31
  (386, 38601, 94, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 37
  (386, 38601, 276, 23, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Skill Swap - Level 43
  (386, 38601, 285, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 49
  (386, 38601, 428, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 55
  (386, 38601, 322, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 61
  (386, 38601, 192, 23, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 67
  (386, 38601, 354, 23, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 73
  (386, 38601, 63, 23, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Take Down - TM001
  (386, 38601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Deoxys (Attack) - Agility - TM004
  (386, 38601, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Deoxys (Attack) - Scary Face - TM006
  (386, 38601, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Deoxys (Attack) - Protect - TM007
  (386, 38601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Deoxys (Attack) - Water Pulse - TM011
  (386, 38601, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Deoxys (Attack) - Low Kick - TM012
  (386, 38601, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Deoxys (Attack) - Psybeam - TM016
  (386, 38601, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Deoxys (Attack) - Charge Beam - TM023
  (386, 38601, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Deoxys (Attack) - Facade - TM025
  (386, 38601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Deoxys (Attack) - Aerial Ace - TM027
  (386, 38601, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Deoxys (Attack) - Swift - TM032
  (386, 38601, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Deoxys (Attack) - Icy Wind - TM034
  (386, 38601, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Deoxys (Attack) - Rock Tomb - TM036
  (386, 38601, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Deoxys (Attack) - Low Sweep - TM039
  (386, 38601, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Deoxys (Attack) - Stored Power - TM041
  (386, 38601, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Deoxys (Attack) - Night Shade - TM042
  (386, 38601, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Deoxys (Attack) - Fling - TM043
  (386, 38601, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Deoxys (Attack) - Endure - TM047
  (386, 38601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Deoxys (Attack) - Sunny Day - TM049
  (386, 38601, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Deoxys (Attack) - Rain Dance - TM050
  (386, 38601, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Deoxys (Attack) - Psyshock - TM054
  (386, 38601, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 35),
  -- Deoxys (Attack) - Brick Break - TM058
  (386, 38601, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Deoxys (Attack) - Zen Headbutt - TM059
  (386, 38601, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Deoxys (Attack) - Fire Punch - TM067
  (386, 38601, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Deoxys (Attack) - Thunder Punch - TM068
  (386, 38601, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Deoxys (Attack) - Ice Punch - TM069
  (386, 38601, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Deoxys (Attack) - Sleep Talk - TM070
  (386, 38601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Deoxys (Attack) - Drain Punch - TM073
  (386, 38601, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Deoxys (Attack) - Reflect - TM074
  (386, 38601, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Deoxys (Attack) - Light Screen - TM075
  (386, 38601, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Deoxys (Attack) - Grass Knot - TM081
  (386, 38601, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Deoxys (Attack) - Thunder Wave - TM082
  (386, 38601, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Deoxys (Attack) - Poison Jab - TM083
  (386, 38601, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Deoxys (Attack) - Stomping Tantrum - TM084
  (386, 38601, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Deoxys (Attack) - Rest - TM085
  (386, 38601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Deoxys (Attack) - Rock Slide - TM086
  (386, 38601, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Deoxys (Attack) - Taunt - TM087
  (386, 38601, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Deoxys (Attack) - Imprison - TM092
  (386, 38601, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 52),
  -- Deoxys (Attack) - Flash Cannon - TM093
  (386, 38601, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 53),
  -- Deoxys (Attack) - Dark Pulse - TM094
  (386, 38601, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 54),
  -- Deoxys (Attack) - Skill Swap - TM098
  (386, 38601, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 55),
  -- Deoxys (Attack) - Substitute - TM103
  (386, 38601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Deoxys (Attack) - Trick - TM109
  (386, 38601, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 57),
  -- Deoxys (Attack) - Shadow Ball - TM114
  (386, 38601, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 58),
  -- Deoxys (Attack) - Stealth Rock - TM116
  (386, 38601, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 59),
  -- Deoxys (Attack) - Energy Ball - TM119
  (386, 38601, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 60),
  -- Deoxys (Attack) - Psychic - TM120
  (386, 38601, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 61),
  -- Deoxys (Attack) - Thunderbolt - TM126
  (386, 38601, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 62),
  -- Deoxys (Attack) - Calm Mind - TM129
  (386, 38601, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 63),
  -- Deoxys (Attack) - Ice Beam - TM135
  (386, 38601, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 64),
  -- Deoxys (Attack) - Psychic Terrain - TM138
  (386, 38601, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 65),
  -- Deoxys (Attack) - Nasty Plot - TM140
  (386, 38601, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 66),
  -- Deoxys (Attack) - Giga Impact - TM152
  (386, 38601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 67),
  -- Deoxys (Attack) - Focus Blast - TM158
  (386, 38601, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 68),
  -- Deoxys (Attack) - Trick Room - TM161
  (386, 38601, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 69),
  -- Deoxys (Attack) - Hyper Beam - TM163
  (386, 38601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 70),
  -- Deoxys (Attack) - Thunder - TM166
  (386, 38601, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 71),
  -- Deoxys (Attack) - Solar Beam - TM168
  (386, 38601, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 72),
  -- Deoxys (Attack) - Tera Blast - TM171
  (386, 38601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 73),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 7
  (386, 38602, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 13
  (386, 38602, 100, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 19
  (386, 38602, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 25
  (386, 38602, 191, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 31
  (386, 38602, 94, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Protect - Level 37
  (386, 38602, 182, 23, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Skill Swap - Level 43
  (386, 38602, 285, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 49
  (386, 38602, 428, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Amnesia - Level 55
  (386, 38602, 133, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Iron Defense - Level 55
  (386, 38602, 334, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 61
  (386, 38602, 105, 23, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 67
  (386, 38602, 354, 23, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 73
  (386, 38602, 68, 23, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 73
  (386, 38602, 243, 23, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Take Down - TM001
  (386, 38602, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Deoxys (Defense) - Agility - TM004
  (386, 38602, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Deoxys (Defense) - Scary Face - TM006
  (386, 38602, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Deoxys (Defense) - Protect - TM007
  (386, 38602, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Deoxys (Defense) - Water Pulse - TM011
  (386, 38602, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Deoxys (Defense) - Low Kick - TM012
  (386, 38602, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Deoxys (Defense) - Psybeam - TM016
  (386, 38602, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 23),
  -- Deoxys (Defense) - Charge Beam - TM023
  (386, 38602, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Deoxys (Defense) - Facade - TM025
  (386, 38602, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Deoxys (Defense) - Aerial Ace - TM027
  (386, 38602, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Deoxys (Defense) - Swift - TM032
  (386, 38602, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Deoxys (Defense) - Icy Wind - TM034
  (386, 38602, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Deoxys (Defense) - Rock Tomb - TM036
  (386, 38602, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Deoxys (Defense) - Low Sweep - TM039
  (386, 38602, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Deoxys (Defense) - Stored Power - TM041
  (386, 38602, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 31),
  -- Deoxys (Defense) - Night Shade - TM042
  (386, 38602, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 32),
  -- Deoxys (Defense) - Fling - TM043
  (386, 38602, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Deoxys (Defense) - Endure - TM047
  (386, 38602, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Deoxys (Defense) - Sunny Day - TM049
  (386, 38602, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Deoxys (Defense) - Rain Dance - TM050
  (386, 38602, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Deoxys (Defense) - Psyshock - TM054
  (386, 38602, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 37),
  -- Deoxys (Defense) - Brick Break - TM058
  (386, 38602, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Deoxys (Defense) - Zen Headbutt - TM059
  (386, 38602, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 39),
  -- Deoxys (Defense) - Fire Punch - TM067
  (386, 38602, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Deoxys (Defense) - Thunder Punch - TM068
  (386, 38602, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Deoxys (Defense) - Ice Punch - TM069
  (386, 38602, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Deoxys (Defense) - Sleep Talk - TM070
  (386, 38602, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Deoxys (Defense) - Drain Punch - TM073
  (386, 38602, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Deoxys (Defense) - Reflect - TM074
  (386, 38602, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 45),
  -- Deoxys (Defense) - Light Screen - TM075
  (386, 38602, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 46),
  -- Deoxys (Defense) - Grass Knot - TM081
  (386, 38602, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 47),
  -- Deoxys (Defense) - Thunder Wave - TM082
  (386, 38602, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Deoxys (Defense) - Poison Jab - TM083
  (386, 38602, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 49),
  -- Deoxys (Defense) - Stomping Tantrum - TM084
  (386, 38602, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 50),
  -- Deoxys (Defense) - Rest - TM085
  (386, 38602, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 51),
  -- Deoxys (Defense) - Rock Slide - TM086
  (386, 38602, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 52),
  -- Deoxys (Defense) - Taunt - TM087
  (386, 38602, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 53),
  -- Deoxys (Defense) - Spikes - TM090
  (386, 38602, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 54),
  -- Deoxys (Defense) - Imprison - TM092
  (386, 38602, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 55),
  -- Deoxys (Defense) - Flash Cannon - TM093
  (386, 38602, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 56),
  -- Deoxys (Defense) - Dark Pulse - TM094
  (386, 38602, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 57),
  -- Deoxys (Defense) - Skill Swap - TM098
  (386, 38602, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 58),
  -- Deoxys (Defense) - Substitute - TM103
  (386, 38602, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 59),
  -- Deoxys (Defense) - Iron Defense - TM104
  (386, 38602, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 60),
  -- Deoxys (Defense) - Trick - TM109
  (386, 38602, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 61),
  -- Deoxys (Defense) - Shadow Ball - TM114
  (386, 38602, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 62),
  -- Deoxys (Defense) - Stealth Rock - TM116
  (386, 38602, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 63),
  -- Deoxys (Defense) - Energy Ball - TM119
  (386, 38602, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 64),
  -- Deoxys (Defense) - Psychic - TM120
  (386, 38602, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 65),
  -- Deoxys (Defense) - Thunderbolt - TM126
  (386, 38602, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 66),
  -- Deoxys (Defense) - Amnesia - TM128
  (386, 38602, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 67),
  -- Deoxys (Defense) - Calm Mind - TM129
  (386, 38602, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 68),
  -- Deoxys (Defense) - Ice Beam - TM135
  (386, 38602, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 69),
  -- Deoxys (Defense) - Psychic Terrain - TM138
  (386, 38602, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 70),
  -- Deoxys (Defense) - Giga Impact - TM152
  (386, 38602, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 71),
  -- Deoxys (Defense) - Focus Blast - TM158
  (386, 38602, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 72),
  -- Deoxys (Defense) - Trick Room - TM161
  (386, 38602, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 73),
  -- Deoxys (Defense) - Hyper Beam - TM163
  (386, 38602, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 74),
  -- Deoxys (Defense) - Thunder - TM166
  (386, 38602, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 75),
  -- Deoxys (Defense) - Solar Beam - TM168
  (386, 38602, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 76),
  -- Deoxys (Defense) - Tera Blast - TM171
  (386, 38602, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 77),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 7
  (386, 38603, 101, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 13
  (386, 38603, 104, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 19
  (386, 38603, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Psyshock - Level 25
  (386, 38603, 473, 23, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 31
  (386, 38603, 94, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 37
  (386, 38603, 129, 23, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Skill Swap - Level 43
  (386, 38603, 285, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 49
  (386, 38603, 428, 23, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 55
  (386, 38603, 97, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 61
  (386, 38603, 105, 23, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 67
  (386, 38603, 354, 23, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 73
  (386, 38603, 245, 23, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Take Down - TM001
  (386, 38603, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Deoxys (Speed) - Agility - TM004
  (386, 38603, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Deoxys (Speed) - Scary Face - TM006
  (386, 38603, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Deoxys (Speed) - Protect - TM007
  (386, 38603, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Deoxys (Speed) - Water Pulse - TM011
  (386, 38603, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Deoxys (Speed) - Low Kick - TM012
  (386, 38603, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Deoxys (Speed) - Psybeam - TM016
  (386, 38603, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Deoxys (Speed) - Charge Beam - TM023
  (386, 38603, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Deoxys (Speed) - Facade - TM025
  (386, 38603, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Deoxys (Speed) - Aerial Ace - TM027
  (386, 38603, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Deoxys (Speed) - Swift - TM032
  (386, 38603, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Deoxys (Speed) - Icy Wind - TM034
  (386, 38603, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Deoxys (Speed) - Rock Tomb - TM036
  (386, 38603, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Deoxys (Speed) - Low Sweep - TM039
  (386, 38603, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Deoxys (Speed) - Stored Power - TM041
  (386, 38603, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Deoxys (Speed) - Night Shade - TM042
  (386, 38603, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Deoxys (Speed) - Fling - TM043
  (386, 38603, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Deoxys (Speed) - Endure - TM047
  (386, 38603, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Deoxys (Speed) - Sunny Day - TM049
  (386, 38603, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Deoxys (Speed) - Rain Dance - TM050
  (386, 38603, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Deoxys (Speed) - Psyshock - TM054
  (386, 38603, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 35),
  -- Deoxys (Speed) - Brick Break - TM058
  (386, 38603, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Deoxys (Speed) - Zen Headbutt - TM059
  (386, 38603, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Deoxys (Speed) - Fire Punch - TM067
  (386, 38603, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Deoxys (Speed) - Thunder Punch - TM068
  (386, 38603, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Deoxys (Speed) - Ice Punch - TM069
  (386, 38603, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Deoxys (Speed) - Sleep Talk - TM070
  (386, 38603, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Deoxys (Speed) - Drain Punch - TM073
  (386, 38603, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Deoxys (Speed) - Reflect - TM074
  (386, 38603, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Deoxys (Speed) - Light Screen - TM075
  (386, 38603, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 44),
  -- Deoxys (Speed) - Grass Knot - TM081
  (386, 38603, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Deoxys (Speed) - Thunder Wave - TM082
  (386, 38603, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Deoxys (Speed) - Poison Jab - TM083
  (386, 38603, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Deoxys (Speed) - Stomping Tantrum - TM084
  (386, 38603, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Deoxys (Speed) - Rest - TM085
  (386, 38603, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Deoxys (Speed) - Rock Slide - TM086
  (386, 38603, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Deoxys (Speed) - Taunt - TM087
  (386, 38603, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Deoxys (Speed) - Imprison - TM092
  (386, 38603, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 52),
  -- Deoxys (Speed) - Flash Cannon - TM093
  (386, 38603, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 53),
  -- Deoxys (Speed) - Dark Pulse - TM094
  (386, 38603, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 54),
  -- Deoxys (Speed) - Skill Swap - TM098
  (386, 38603, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 55),
  -- Deoxys (Speed) - Substitute - TM103
  (386, 38603, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Deoxys (Speed) - Trick - TM109
  (386, 38603, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 57),
  -- Deoxys (Speed) - Shadow Ball - TM114
  (386, 38603, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 58),
  -- Deoxys (Speed) - Stealth Rock - TM116
  (386, 38603, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 59),
  -- Deoxys (Speed) - Energy Ball - TM119
  (386, 38603, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 60),
  -- Deoxys (Speed) - Psychic - TM120
  (386, 38603, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 61),
  -- Deoxys (Speed) - Thunderbolt - TM126
  (386, 38603, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 62),
  -- Deoxys (Speed) - Amnesia - TM128
  (386, 38603, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 63),
  -- Deoxys (Speed) - Calm Mind - TM129
  (386, 38603, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 64),
  -- Deoxys (Speed) - Ice Beam - TM135
  (386, 38603, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 65),
  -- Deoxys (Speed) - Psychic Terrain - TM138
  (386, 38603, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 66),
  -- Deoxys (Speed) - Nasty Plot - TM140
  (386, 38603, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 67),
  -- Deoxys (Speed) - Giga Impact - TM152
  (386, 38603, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Deoxys (Speed) - Focus Blast - TM158
  (386, 38603, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 69),
  -- Deoxys (Speed) - Trick Room - TM161
  (386, 38603, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 70),
  -- Deoxys (Speed) - Hyper Beam - TM163
  (386, 38603, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 71),
  -- Deoxys (Speed) - Thunder - TM166
  (386, 38603, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 72),
  -- Deoxys (Speed) - Solar Beam - TM168
  (386, 38603, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 73),
  -- Deoxys (Speed) - Tera Blast - TM171
  (386, 38603, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Turtwig - Tackle - Level 1
  (387, 38700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Turtwig - Withdraw - Level 5
  (387, 38700, 110, 23, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Turtwig - Absorb - Level 9
  (387, 38700, 71, 23, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Turtwig - Razor Leaf - Level 13
  (387, 38700, 75, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Turtwig - Curse - Level 17
  (387, 38700, 174, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Turtwig - Bite - Level 21
  (387, 38700, 44, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Turtwig - Mega Drain - Level 25
  (387, 38700, 72, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Turtwig - Leech Seed - Level 29
  (387, 38700, 73, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Turtwig - Synthesis - Level 33
  (387, 38700, 235, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Turtwig - Crunch - Level 37
  (387, 38700, 242, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Turtwig - Giga Drain - Level 41
  (387, 38700, 202, 23, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Turtwig - Leaf Storm - Level 45
  (387, 38700, 437, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Turtwig - Take Down - TM001
  (387, 38700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Turtwig - Mud-Slap - TM005
  (387, 38700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Turtwig - Protect - TM007
  (387, 38700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Turtwig - Trailblaze - TM020
  (387, 38700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Turtwig - Facade - TM025
  (387, 38700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Turtwig - Bulldoze - TM028
  (387, 38700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Turtwig - Magical Leaf - TM033
  (387, 38700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Turtwig - Mud Shot - TM035
  (387, 38700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Turtwig - Endure - TM047
  (387, 38700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Turtwig - Sunny Day - TM049
  (387, 38700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Turtwig - Bullet Seed - TM056
  (387, 38700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 23),
  -- Turtwig - Zen Headbutt - TM059
  (387, 38700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 24),
  -- Turtwig - Body Slam - TM066
  (387, 38700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Turtwig - Sleep Talk - TM070
  (387, 38700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Turtwig - Seed Bomb - TM071
  (387, 38700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Turtwig - Reflect - TM074
  (387, 38700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Turtwig - Light Screen - TM075
  (387, 38700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Turtwig - Grass Knot - TM081
  (387, 38700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 30),
  -- Turtwig - Rest - TM085
  (387, 38700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Turtwig - Swords Dance - TM088
  (387, 38700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Turtwig - Iron Head - TM099
  (387, 38700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 33),
  -- Turtwig - Substitute - TM103
  (387, 38700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Turtwig - Crunch - TM108
  (387, 38700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 35),
  -- Turtwig - Giga Drain - TM111
  (387, 38700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Turtwig - Stealth Rock - TM116
  (387, 38700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Turtwig - Energy Ball - TM119
  (387, 38700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Turtwig - Heavy Slam - TM121
  (387, 38700, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Turtwig - Amnesia - TM128
  (387, 38700, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 40),
  -- Turtwig - Earth Power - TM133
  (387, 38700, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 41),
  -- Turtwig - Grassy Terrain - TM137
  (387, 38700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Turtwig - Grass Pledge - TM146
  (387, 38700, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 43),
  -- Turtwig - Leaf Storm - TM159
  (387, 38700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 44),
  -- Turtwig - Solar Beam - TM168
  (387, 38700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Turtwig - Tera Blast - TM171
  (387, 38700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Turtwig - Thrash - Egg
  (387, 38700, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Turtwig - Double-Edge - Egg
  (387, 38700, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Turtwig - Growth - Egg
  (387, 38700, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Turtwig - Stockpile - Egg
  (387, 38700, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Turtwig - Spit Up - Egg
  (387, 38700, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Turtwig - Swallow - Egg
  (387, 38700, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Turtwig - Superpower - Egg
  (387, 38700, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Turtwig - Tickle - Egg
  (387, 38700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Turtwig - Worry Seed - Egg
  (387, 38700, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Turtwig - Wide Guard - Egg
  (387, 38700, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Turtwig - Shell Smash - Egg
  (387, 38700, 504, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grotle - Tackle - Level 1
  (388, 38800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grotle - Absorb - Level 1
  (388, 38800, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grotle - Withdraw - Level 1
  (388, 38800, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grotle - Razor Leaf - Level 13
  (388, 38800, 75, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Grotle - Curse - Level 17
  (388, 38800, 174, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Grotle - Bite - Level 22
  (388, 38800, 44, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Grotle - Mega Drain - Level 27
  (388, 38800, 72, 23, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Grotle - Leech Seed - Level 32
  (388, 38800, 73, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Grotle - Synthesis - Level 37
  (388, 38800, 235, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Grotle - Crunch - Level 42
  (388, 38800, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Grotle - Giga Drain - Level 47
  (388, 38800, 202, 23, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Grotle - Leaf Storm - Level 52
  (388, 38800, 437, 23, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Grotle - Take Down - TM001
  (388, 38800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Grotle - Mud-Slap - TM005
  (388, 38800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Grotle - Protect - TM007
  (388, 38800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Grotle - Trailblaze - TM020
  (388, 38800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Grotle - Facade - TM025
  (388, 38800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Grotle - Bulldoze - TM028
  (388, 38800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Grotle - Magical Leaf - TM033
  (388, 38800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Grotle - Mud Shot - TM035
  (388, 38800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 20),
  -- Grotle - Endure - TM047
  (388, 38800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Grotle - Sunny Day - TM049
  (388, 38800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Grotle - Bullet Seed - TM056
  (388, 38800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 23),
  -- Grotle - Zen Headbutt - TM059
  (388, 38800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 24),
  -- Grotle - Body Slam - TM066
  (388, 38800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Grotle - Sleep Talk - TM070
  (388, 38800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Grotle - Seed Bomb - TM071
  (388, 38800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Grotle - Reflect - TM074
  (388, 38800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Grotle - Light Screen - TM075
  (388, 38800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Grotle - Grass Knot - TM081
  (388, 38800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 30),
  -- Grotle - Rest - TM085
  (388, 38800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Grotle - Swords Dance - TM088
  (388, 38800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Grotle - Iron Head - TM099
  (388, 38800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 33),
  -- Grotle - Substitute - TM103
  (388, 38800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Grotle - Crunch - TM108
  (388, 38800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 35),
  -- Grotle - Giga Drain - TM111
  (388, 38800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Grotle - Stealth Rock - TM116
  (388, 38800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Grotle - Energy Ball - TM119
  (388, 38800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Grotle - Heavy Slam - TM121
  (388, 38800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Grotle - Amnesia - TM128
  (388, 38800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 40),
  -- Grotle - Earth Power - TM133
  (388, 38800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 41),
  -- Grotle - Grassy Terrain - TM137
  (388, 38800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Grotle - Grass Pledge - TM146
  (388, 38800, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 43),
  -- Grotle - Leaf Storm - TM159
  (388, 38800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 44),
  -- Grotle - Solar Beam - TM168
  (388, 38800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Grotle - Tera Blast - TM171
  (388, 38800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Grotle - Thrash - Egg
  (388, 38800, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Grotle - Double-Edge - Egg
  (388, 38800, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Grotle - Growth - Egg
  (388, 38800, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Grotle - Stockpile - Egg
  (388, 38800, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Grotle - Spit Up - Egg
  (388, 38800, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Grotle - Swallow - Egg
  (388, 38800, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Grotle - Superpower - Egg
  (388, 38800, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grotle - Tickle - Egg
  (388, 38800, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grotle - Worry Seed - Egg
  (388, 38800, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grotle - Wide Guard - Egg
  (388, 38800, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grotle - Shell Smash - Egg
  (388, 38800, 504, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torterra - Tackle - Level 1
  (389, 38900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torterra - Absorb - Level 1
  (389, 38900, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torterra - Razor Leaf - Level 1
  (389, 38900, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Torterra - Withdraw - Level 1
  (389, 38900, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Torterra - Wood Hammer - Level 1
  (389, 38900, 452, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Torterra - Curse - Level 17
  (389, 38900, 174, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Torterra - Bite - Level 22
  (389, 38900, 44, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Torterra - Mega Drain - Level 27
  (389, 38900, 72, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Torterra - Leech Seed - Level 33
  (389, 38900, 73, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Torterra - Synthesis - Level 39
  (389, 38900, 235, 23, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Torterra - Crunch - Level 45
  (389, 38900, 242, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Torterra - Giga Drain - Level 51
  (389, 38900, 202, 23, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Torterra - Leaf Storm - Level 57
  (389, 38900, 437, 23, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Torterra - Headlong Rush - Level 63
  (389, 38900, 838, 23, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Torterra - Take Down - TM001
  (389, 38900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Torterra - Mud-Slap - TM005
  (389, 38900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Torterra - Scary Face - TM006
  (389, 38900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Torterra - Protect - TM007
  (389, 38900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Torterra - Trailblaze - TM020
  (389, 38900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Torterra - Facade - TM025
  (389, 38900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Torterra - Bulldoze - TM028
  (389, 38900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Torterra - Magical Leaf - TM033
  (389, 38900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Torterra - Mud Shot - TM035
  (389, 38900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Torterra - Rock Tomb - TM036
  (389, 38900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Torterra - Endure - TM047
  (389, 38900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Torterra - Sunny Day - TM049
  (389, 38900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Torterra - Sandstorm - TM051
  (389, 38900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Torterra - Bullet Seed - TM056
  (389, 38900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Torterra - Zen Headbutt - TM059
  (389, 38900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Torterra - Body Slam - TM066
  (389, 38900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Torterra - Sleep Talk - TM070
  (389, 38900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Torterra - Seed Bomb - TM071
  (389, 38900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Torterra - Reflect - TM074
  (389, 38900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Torterra - Light Screen - TM075
  (389, 38900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Torterra - Rock Blast - TM076
  (389, 38900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 35),
  -- Torterra - Grass Knot - TM081
  (389, 38900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Torterra - Stomping Tantrum - TM084
  (389, 38900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Torterra - Rest - TM085
  (389, 38900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Torterra - Rock Slide - TM086
  (389, 38900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Torterra - Swords Dance - TM088
  (389, 38900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Torterra - Body Press - TM089
  (389, 38900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Torterra - Iron Head - TM099
  (389, 38900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Torterra - Substitute - TM103
  (389, 38900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Torterra - Iron Defense - TM104
  (389, 38900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Torterra - Crunch - TM108
  (389, 38900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Torterra - Giga Drain - TM111
  (389, 38900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 46),
  -- Torterra - Stealth Rock - TM116
  (389, 38900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Torterra - Hyper Voice - TM117
  (389, 38900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 48),
  -- Torterra - Energy Ball - TM119
  (389, 38900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 49),
  -- Torterra - Heavy Slam - TM121
  (389, 38900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 50),
  -- Torterra - Amnesia - TM128
  (389, 38900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Torterra - Earth Power - TM133
  (389, 38900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Torterra - Grassy Terrain - TM137
  (389, 38900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 53),
  -- Torterra - Grass Pledge - TM146
  (389, 38900, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 54),
  -- Torterra - Earthquake - TM149
  (389, 38900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Torterra - Stone Edge - TM150
  (389, 38900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Torterra - Giga Impact - TM152
  (389, 38900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Torterra - Frenzy Plant - TM155
  (389, 38900, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 58),
  -- Torterra - Outrage - TM156
  (389, 38900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Torterra - Leaf Storm - TM159
  (389, 38900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 60),
  -- Torterra - Hyper Beam - TM163
  (389, 38900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Torterra - Solar Beam - TM168
  (389, 38900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 62),
  -- Torterra - Tera Blast - TM171
  (389, 38900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Torterra - Thrash - Egg
  (389, 38900, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Torterra - Double-Edge - Egg
  (389, 38900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Torterra - Growth - Egg
  (389, 38900, 74, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Torterra - Stockpile - Egg
  (389, 38900, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Torterra - Spit Up - Egg
  (389, 38900, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Torterra - Swallow - Egg
  (389, 38900, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Torterra - Superpower - Egg
  (389, 38900, 276, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Torterra - Tickle - Egg
  (389, 38900, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Torterra - Worry Seed - Egg
  (389, 38900, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Torterra - Wide Guard - Egg
  (389, 38900, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Torterra - Shell Smash - Egg
  (389, 38900, 504, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Torterra - Earthquake - Evolution
  (389, 38900, 89, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Chimchar - Scratch - Level 1
  (390, 39000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimchar - Leer - Level 1
  (390, 39000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimchar - Ember - Level 7
  (390, 39000, 52, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chimchar - Taunt - Level 9
  (390, 39000, 269, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chimchar - Fury Swipes - Level 15
  (390, 39000, 154, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chimchar - Flame Wheel - Level 17
  (390, 39000, 172, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chimchar - Nasty Plot - Level 23
  (390, 39000, 417, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Chimchar - Torment - Level 25
  (390, 39000, 259, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Chimchar - Facade - Level 31
  (390, 39000, 263, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Chimchar - Fire Spin - Level 33
  (390, 39000, 83, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Chimchar - Acrobatics - Level 39
  (390, 39000, 512, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Chimchar - Slack Off - Level 41
  (390, 39000, 303, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Chimchar - Flamethrower - Level 47
  (390, 39000, 53, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Chimchar - Take Down - TM001
  (390, 39000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Chimchar - Fake Tears - TM003
  (390, 39000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Chimchar - Agility - TM004
  (390, 39000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Chimchar - Mud-Slap - TM005
  (390, 39000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Chimchar - Protect - TM007
  (390, 39000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Chimchar - Low Kick - TM012
  (390, 39000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Chimchar - Acrobatics - TM014
  (390, 39000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Chimchar - Thief - TM018
  (390, 39000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Chimchar - Fire Spin - TM024
  (390, 39000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Chimchar - Facade - TM025
  (390, 39000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Chimchar - Swift - TM032
  (390, 39000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Chimchar - Rock Tomb - TM036
  (390, 39000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Chimchar - Flame Charge - TM038
  (390, 39000, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Chimchar - Low Sweep - TM039
  (390, 39000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Chimchar - Fling - TM043
  (390, 39000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Chimchar - Endure - TM047
  (390, 39000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Chimchar - Sunny Day - TM049
  (390, 39000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Chimchar - Dig - TM055
  (390, 39000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Chimchar - Brick Break - TM058
  (390, 39000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Chimchar - Zen Headbutt - TM059
  (390, 39000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Chimchar - U-turn - TM060
  (390, 39000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Chimchar - Shadow Claw - TM061
  (390, 39000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Chimchar - Bulk Up - TM064
  (390, 39000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 36),
  -- Chimchar - Fire Punch - TM067
  (390, 39000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Chimchar - Thunder Punch - TM068
  (390, 39000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Chimchar - Sleep Talk - TM070
  (390, 39000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Chimchar - Metronome - TM080
  (390, 39000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 40),
  -- Chimchar - Grass Knot - TM081
  (390, 39000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Chimchar - Poison Jab - TM083
  (390, 39000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 42),
  -- Chimchar - Rest - TM085
  (390, 39000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Chimchar - Rock Slide - TM086
  (390, 39000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Chimchar - Taunt - TM087
  (390, 39000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Chimchar - Swords Dance - TM088
  (390, 39000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Chimchar - Gunk Shot - TM102
  (390, 39000, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 47),
  -- Chimchar - Substitute - TM103
  (390, 39000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Chimchar - Will-O-Wisp - TM107
  (390, 39000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 49),
  -- Chimchar - Stealth Rock - TM116
  (390, 39000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Chimchar - Heat Wave - TM118
  (390, 39000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 51),
  -- Chimchar - Encore - TM122
  (390, 39000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Chimchar - Flamethrower - TM125
  (390, 39000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Chimchar - Helping Hand - TM130
  (390, 39000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Chimchar - Nasty Plot - TM140
  (390, 39000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Chimchar - Fire Blast - TM141
  (390, 39000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 56),
  -- Chimchar - Fire Pledge - TM144
  (390, 39000, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 57),
  -- Chimchar - Overheat - TM157
  (390, 39000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 58),
  -- Chimchar - Flare Blitz - TM165
  (390, 39000, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 59),
  -- Chimchar - Tera Blast - TM171
  (390, 39000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Chimchar - Fire Punch - Egg
  (390, 39000, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chimchar - Thunder Punch - Egg
  (390, 39000, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Chimchar - Double Kick - Egg
  (390, 39000, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Chimchar - Counter - Egg
  (390, 39000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Chimchar - Focus Energy - Egg
  (390, 39000, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Chimchar - Encore - Egg
  (390, 39000, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Chimchar - Fake Out - Egg
  (390, 39000, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Chimchar - Heat Wave - Egg
  (390, 39000, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Chimchar - Helping Hand - Egg
  (390, 39000, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Chimchar - Switcheroo - Egg
  (390, 39000, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Monferno - Scratch - Level 1
  (391, 39100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Monferno - Leer - Level 1
  (391, 39100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Monferno - Ember - Level 1
  (391, 39100, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Monferno - Taunt - Level 9
  (391, 39100, 269, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Monferno - Fury Swipes - Level 16
  (391, 39100, 154, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Monferno - Flame Wheel - Level 19
  (391, 39100, 172, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Monferno - Feint - Level 26
  (391, 39100, 364, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Monferno - Torment - Level 29
  (391, 39100, 259, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Monferno - Close Combat - Level 36
  (391, 39100, 370, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Monferno - Fire Spin - Level 39
  (391, 39100, 83, 23, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Monferno - Acrobatics - Level 46
  (391, 39100, 512, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Monferno - Slack Off - Level 49
  (391, 39100, 303, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Monferno - Flare Blitz - Level 56
  (391, 39100, 394, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Monferno - Take Down - TM001
  (391, 39100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Monferno - Fake Tears - TM003
  (391, 39100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Monferno - Agility - TM004
  (391, 39100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Monferno - Mud-Slap - TM005
  (391, 39100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Monferno - Protect - TM007
  (391, 39100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Monferno - Low Kick - TM012
  (391, 39100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Monferno - Acrobatics - TM014
  (391, 39100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Monferno - Thief - TM018
  (391, 39100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Monferno - Fire Spin - TM024
  (391, 39100, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Monferno - Facade - TM025
  (391, 39100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Monferno - Swift - TM032
  (391, 39100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Monferno - Rock Tomb - TM036
  (391, 39100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Monferno - Flame Charge - TM038
  (391, 39100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Monferno - Low Sweep - TM039
  (391, 39100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Monferno - Fling - TM043
  (391, 39100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Monferno - Endure - TM047
  (391, 39100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Monferno - Sunny Day - TM049
  (391, 39100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Monferno - Dig - TM055
  (391, 39100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Monferno - Brick Break - TM058
  (391, 39100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Monferno - Zen Headbutt - TM059
  (391, 39100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Monferno - U-turn - TM060
  (391, 39100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Monferno - Shadow Claw - TM061
  (391, 39100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Monferno - Bulk Up - TM064
  (391, 39100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 36),
  -- Monferno - Fire Punch - TM067
  (391, 39100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Monferno - Thunder Punch - TM068
  (391, 39100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Monferno - Sleep Talk - TM070
  (391, 39100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Monferno - Drain Punch - TM073
  (391, 39100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 40),
  -- Monferno - Metronome - TM080
  (391, 39100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Monferno - Grass Knot - TM081
  (391, 39100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Monferno - Poison Jab - TM083
  (391, 39100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 43),
  -- Monferno - Rest - TM085
  (391, 39100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Monferno - Rock Slide - TM086
  (391, 39100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Monferno - Taunt - TM087
  (391, 39100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 46),
  -- Monferno - Swords Dance - TM088
  (391, 39100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 47),
  -- Monferno - Gunk Shot - TM102
  (391, 39100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 48),
  -- Monferno - Substitute - TM103
  (391, 39100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Monferno - Will-O-Wisp - TM107
  (391, 39100, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 50),
  -- Monferno - Stealth Rock - TM116
  (391, 39100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 51),
  -- Monferno - Heat Wave - TM118
  (391, 39100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 52),
  -- Monferno - Encore - TM122
  (391, 39100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 53),
  -- Monferno - Flamethrower - TM125
  (391, 39100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 54),
  -- Monferno - Helping Hand - TM130
  (391, 39100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Monferno - Reversal - TM134
  (391, 39100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 56),
  -- Monferno - Nasty Plot - TM140
  (391, 39100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 57),
  -- Monferno - Fire Blast - TM141
  (391, 39100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 58),
  -- Monferno - Fire Pledge - TM144
  (391, 39100, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 59),
  -- Monferno - Overheat - TM157
  (391, 39100, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 60),
  -- Monferno - Focus Blast - TM158
  (391, 39100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Monferno - Flare Blitz - TM165
  (391, 39100, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 62),
  -- Monferno - Close Combat - TM167
  (391, 39100, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Monferno - Tera Blast - TM171
  (391, 39100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Monferno - Fire Punch - Egg
  (391, 39100, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Monferno - Thunder Punch - Egg
  (391, 39100, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Monferno - Double Kick - Egg
  (391, 39100, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Monferno - Counter - Egg
  (391, 39100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Monferno - Focus Energy - Egg
  (391, 39100, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Monferno - Encore - Egg
  (391, 39100, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Monferno - Fake Out - Egg
  (391, 39100, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Monferno - Heat Wave - Egg
  (391, 39100, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Monferno - Helping Hand - Egg
  (391, 39100, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Monferno - Switcheroo - Egg
  (391, 39100, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Monferno - Mach Punch - Evolution
  (391, 39100, 183, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Infernape - Scratch - Level 1
  (392, 39200, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Infernape - Leer - Level 1
  (392, 39200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Infernape - Ember - Level 1
  (392, 39200, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Infernape - Mach Punch - Level 1
  (392, 39200, 183, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Infernape - Fury Swipes - Level 16
  (392, 39200, 154, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Infernape - Flame Wheel - Level 19
  (392, 39200, 172, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Infernape - Feint - Level 26
  (392, 39200, 364, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Infernape - Torment - Level 29
  (392, 39200, 259, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Infernape - Fire Spin - Level 42
  (392, 39200, 83, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Infernape - Flare Blitz - Level 47
  (392, 39200, 394, 23, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Infernape - Acrobatics - Level 52
  (392, 39200, 512, 23, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Infernape - Calm Mind - Level 58
  (392, 39200, 347, 23, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Infernape - Raging Fury - Level 65
  (392, 39200, 833, 23, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Infernape - Take Down - TM001
  (392, 39200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Infernape - Fake Tears - TM003
  (392, 39200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Infernape - Agility - TM004
  (392, 39200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Infernape - Mud-Slap - TM005
  (392, 39200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Infernape - Scary Face - TM006
  (392, 39200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Infernape - Protect - TM007
  (392, 39200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Infernape - Low Kick - TM012
  (392, 39200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Infernape - Acrobatics - TM014
  (392, 39200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Infernape - Thief - TM018
  (392, 39200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Infernape - Fire Spin - TM024
  (392, 39200, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Infernape - Facade - TM025
  (392, 39200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Infernape - Aerial Ace - TM027
  (392, 39200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Infernape - Bulldoze - TM028
  (392, 39200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Infernape - Swift - TM032
  (392, 39200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Infernape - Rock Tomb - TM036
  (392, 39200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Infernape - Flame Charge - TM038
  (392, 39200, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Infernape - Low Sweep - TM039
  (392, 39200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Infernape - Fling - TM043
  (392, 39200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Infernape - Endure - TM047
  (392, 39200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Infernape - Sunny Day - TM049
  (392, 39200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Infernape - Dig - TM055
  (392, 39200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Infernape - Brick Break - TM058
  (392, 39200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Infernape - Zen Headbutt - TM059
  (392, 39200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Infernape - U-turn - TM060
  (392, 39200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Infernape - Shadow Claw - TM061
  (392, 39200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Infernape - Bulk Up - TM064
  (392, 39200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 39),
  -- Infernape - Body Slam - TM066
  (392, 39200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Infernape - Fire Punch - TM067
  (392, 39200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 41),
  -- Infernape - Thunder Punch - TM068
  (392, 39200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 42),
  -- Infernape - Sleep Talk - TM070
  (392, 39200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Infernape - Drain Punch - TM073
  (392, 39200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Infernape - Metronome - TM080
  (392, 39200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 45),
  -- Infernape - Grass Knot - TM081
  (392, 39200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 46),
  -- Infernape - Poison Jab - TM083
  (392, 39200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Infernape - Rest - TM085
  (392, 39200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Infernape - Rock Slide - TM086
  (392, 39200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 49),
  -- Infernape - Taunt - TM087
  (392, 39200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 50),
  -- Infernape - Swords Dance - TM088
  (392, 39200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 51),
  -- Infernape - Gunk Shot - TM102
  (392, 39200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 52),
  -- Infernape - Substitute - TM103
  (392, 39200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Infernape - Will-O-Wisp - TM107
  (392, 39200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 54),
  -- Infernape - Aura Sphere - TM112
  (392, 39200, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 55),
  -- Infernape - Stealth Rock - TM116
  (392, 39200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 56),
  -- Infernape - Heat Wave - TM118
  (392, 39200, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 57),
  -- Infernape - Encore - TM122
  (392, 39200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 58),
  -- Infernape - Flamethrower - TM125
  (392, 39200, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 59),
  -- Infernape - Calm Mind - TM129
  (392, 39200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 60),
  -- Infernape - Helping Hand - TM130
  (392, 39200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Infernape - Reversal - TM134
  (392, 39200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 62),
  -- Infernape - Nasty Plot - TM140
  (392, 39200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Infernape - Fire Blast - TM141
  (392, 39200, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 64),
  -- Infernape - Fire Pledge - TM144
  (392, 39200, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 65),
  -- Infernape - Earthquake - TM149
  (392, 39200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 66),
  -- Infernape - Stone Edge - TM150
  (392, 39200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 67),
  -- Infernape - Giga Impact - TM152
  (392, 39200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Infernape - Blast Burn - TM153
  (392, 39200, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 69),
  -- Infernape - Overheat - TM157
  (392, 39200, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 70),
  -- Infernape - Focus Blast - TM158
  (392, 39200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 71),
  -- Infernape - Hyper Beam - TM163
  (392, 39200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 72),
  -- Infernape - Flare Blitz - TM165
  (392, 39200, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 73),
  -- Infernape - Close Combat - TM167
  (392, 39200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 74),
  -- Infernape - Solar Beam - TM168
  (392, 39200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 75),
  -- Infernape - Tera Blast - TM171
  (392, 39200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 76),
  -- Infernape - Fire Punch - Egg
  (392, 39200, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Infernape - Thunder Punch - Egg
  (392, 39200, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Infernape - Double Kick - Egg
  (392, 39200, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Infernape - Counter - Egg
  (392, 39200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Infernape - Focus Energy - Egg
  (392, 39200, 116, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Infernape - Encore - Egg
  (392, 39200, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Infernape - Fake Out - Egg
  (392, 39200, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Infernape - Heat Wave - Egg
  (392, 39200, 257, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Infernape - Helping Hand - Egg
  (392, 39200, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Infernape - Switcheroo - Egg
  (392, 39200, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Infernape - Close Combat - Evolution
  (392, 39200, 370, 23, NULL, 7, NULL, NULL, NULL, NULL, 87),
  -- Infernape - Taunt - Reminder
  (392, 39200, 269, 23, NULL, 9, NULL, NULL, NULL, NULL, 88),
  -- Infernape - Slack Off - Reminder
  (392, 39200, 303, 23, NULL, 9, NULL, NULL, NULL, NULL, 89),
  -- Piplup - Pound - Level 1
  (393, 39300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piplup - Growl - Level 4
  (393, 39300, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Piplup - Water Gun - Level 8
  (393, 39300, 55, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Piplup - Charm - Level 11
  (393, 39300, 204, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Piplup - Peck - Level 15
  (393, 39300, 64, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Piplup - Bubble Beam - Level 18
  (393, 39300, 61, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Piplup - Swagger - Level 22
  (393, 39300, 207, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Piplup - Fury Attack - Level 25
  (393, 39300, 31, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Piplup - Brine - Level 29
  (393, 39300, 362, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Piplup - Whirlpool - Level 32
  (393, 39300, 250, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Piplup - Mist - Level 36
  (393, 39300, 54, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Piplup - Drill Peck - Level 39
  (393, 39300, 65, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Piplup - Hydro Pump - Level 43
  (393, 39300, 56, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Piplup - Charm - TM002
  (393, 39300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Piplup - Agility - TM004
  (393, 39300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Piplup - Protect - TM007
  (393, 39300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Piplup - Water Pulse - TM011
  (393, 39300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Piplup - Disarming Voice - TM019
  (393, 39300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Piplup - Chilling Water - TM022
  (393, 39300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Piplup - Facade - TM025
  (393, 39300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Piplup - Aerial Ace - TM027
  (393, 39300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Piplup - Swift - TM032
  (393, 39300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Piplup - Icy Wind - TM034
  (393, 39300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Piplup - Rock Tomb - TM036
  (393, 39300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Piplup - Fling - TM043
  (393, 39300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Piplup - Endure - TM047
  (393, 39300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Piplup - Rain Dance - TM050
  (393, 39300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Piplup - Snowscape - TM052
  (393, 39300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 28),
  -- Piplup - Brick Break - TM058
  (393, 39300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Piplup - Sleep Talk - TM070
  (393, 39300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Piplup - Waterfall - TM077
  (393, 39300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 31),
  -- Piplup - Grass Knot - TM081
  (393, 39300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Piplup - Rest - TM085
  (393, 39300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Piplup - Substitute - TM103
  (393, 39300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Piplup - Liquidation - TM110
  (393, 39300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 35),
  -- Piplup - Surf - TM123
  (393, 39300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Piplup - Ice Spinner - TM124
  (393, 39300, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 37),
  -- Piplup - Helping Hand - TM130
  (393, 39300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Piplup - Ice Beam - TM135
  (393, 39300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Piplup - Hydro Pump - TM142
  (393, 39300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Piplup - Blizzard - TM143
  (393, 39300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Piplup - Water Pledge - TM145
  (393, 39300, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 42),
  -- Piplup - Tera Blast - TM171
  (393, 39300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Piplup - Supersonic - Egg
  (393, 39300, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Piplup - Snore - Egg
  (393, 39300, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Piplup - Yawn - Egg
  (393, 39300, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Piplup - Feather Dance - Egg
  (393, 39300, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Piplup - Roost - Egg
  (393, 39300, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Piplup - Aqua Ring - Egg
  (393, 39300, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Piplup - Power Trip - Egg
  (393, 39300, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Prinplup - Tackle - Level 1
  (394, 39400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Prinplup - Growl - Level 1
  (394, 39400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Prinplup - Water Gun - Level 1
  (394, 39400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Prinplup - Peck - Level 15
  (394, 39400, 64, 23, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Prinplup - Bubble Beam - Level 19
  (394, 39400, 61, 23, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Prinplup - Swagger - Level 24
  (394, 39400, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Prinplup - Fury Attack - Level 28
  (394, 39400, 31, 23, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Prinplup - Brine - Level 33
  (394, 39400, 362, 23, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Prinplup - Whirlpool - Level 37
  (394, 39400, 250, 23, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Prinplup - Mist - Level 42
  (394, 39400, 54, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Prinplup - Drill Peck - Level 46
  (394, 39400, 65, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Prinplup - Hydro Pump - Level 50
  (394, 39400, 56, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Prinplup - Take Down - TM001
  (394, 39400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Prinplup - Charm - TM002
  (394, 39400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Prinplup - Agility - TM004
  (394, 39400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Prinplup - Protect - TM007
  (394, 39400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Prinplup - Water Pulse - TM011
  (394, 39400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Prinplup - Disarming Voice - TM019
  (394, 39400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Prinplup - Chilling Water - TM022
  (394, 39400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Prinplup - Facade - TM025
  (394, 39400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Prinplup - Aerial Ace - TM027
  (394, 39400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Prinplup - Metal Claw - TM031
  (394, 39400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Prinplup - Swift - TM032
  (394, 39400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Prinplup - Icy Wind - TM034
  (394, 39400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Prinplup - Rock Tomb - TM036
  (394, 39400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Prinplup - Fling - TM043
  (394, 39400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Prinplup - Endure - TM047
  (394, 39400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Prinplup - Rain Dance - TM050
  (394, 39400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Prinplup - Snowscape - TM052
  (394, 39400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Prinplup - Brick Break - TM058
  (394, 39400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Prinplup - Shadow Claw - TM061
  (394, 39400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Prinplup - Sleep Talk - TM070
  (394, 39400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Prinplup - Waterfall - TM077
  (394, 39400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 33),
  -- Prinplup - Grass Knot - TM081
  (394, 39400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Prinplup - Rest - TM085
  (394, 39400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Prinplup - Substitute - TM103
  (394, 39400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Prinplup - Liquidation - TM110
  (394, 39400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Prinplup - Surf - TM123
  (394, 39400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 38),
  -- Prinplup - Ice Spinner - TM124
  (394, 39400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 39),
  -- Prinplup - Helping Hand - TM130
  (394, 39400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Prinplup - Ice Beam - TM135
  (394, 39400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Prinplup - Hydro Pump - TM142
  (394, 39400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Prinplup - Blizzard - TM143
  (394, 39400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Prinplup - Water Pledge - TM145
  (394, 39400, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 44),
  -- Prinplup - Tera Blast - TM171
  (394, 39400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Prinplup - Supersonic - Egg
  (394, 39400, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Prinplup - Snore - Egg
  (394, 39400, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Prinplup - Yawn - Egg
  (394, 39400, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Prinplup - Feather Dance - Egg
  (394, 39400, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Prinplup - Roost - Egg
  (394, 39400, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Prinplup - Aqua Ring - Egg
  (394, 39400, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Prinplup - Power Trip - Egg
  (394, 39400, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Prinplup - Metal Claw - Evolution
  (394, 39400, 232, 23, NULL, 7, NULL, NULL, NULL, NULL, 53),
  -- Empoleon - Tackle - Level 1
  (395, 39500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Empoleon - Growl - Level 1
  (395, 39500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Empoleon - Water Gun - Level 1
  (395, 39500, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Empoleon - Metal Claw - Level 1
  (395, 39500, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Empoleon - Swords Dance - Level 11
  (395, 39500, 14, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Empoleon - Peck - Level 15
  (395, 39500, 64, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Empoleon - Bubble Beam - Level 19
  (395, 39500, 61, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Empoleon - Swagger - Level 24
  (395, 39500, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Empoleon - Fury Attack - Level 28
  (395, 39500, 31, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Empoleon - Brine - Level 33
  (395, 39500, 362, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Empoleon - Whirlpool - Level 39
  (395, 39500, 250, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Empoleon - Mist - Level 46
  (395, 39500, 54, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Empoleon - Drill Peck - Level 52
  (395, 39500, 65, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Empoleon - Hydro Pump - Level 59
  (395, 39500, 56, 23, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Empoleon - Wave Crash - Level 66
  (395, 39500, 834, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Empoleon - Take Down - TM001
  (395, 39500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Empoleon - Charm - TM002
  (395, 39500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Empoleon - Agility - TM004
  (395, 39500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Empoleon - Mud-Slap - TM005
  (395, 39500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Empoleon - Scary Face - TM006
  (395, 39500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Empoleon - Protect - TM007
  (395, 39500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Empoleon - Water Pulse - TM011
  (395, 39500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Empoleon - Disarming Voice - TM019
  (395, 39500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 23),
  -- Empoleon - Chilling Water - TM022
  (395, 39500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Empoleon - Facade - TM025
  (395, 39500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Empoleon - Aerial Ace - TM027
  (395, 39500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Empoleon - Bulldoze - TM028
  (395, 39500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Empoleon - Metal Claw - TM031
  (395, 39500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Empoleon - Swift - TM032
  (395, 39500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Empoleon - Icy Wind - TM034
  (395, 39500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Empoleon - Rock Tomb - TM036
  (395, 39500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Empoleon - Air Cutter - TM040
  (395, 39500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 32),
  -- Empoleon - Fling - TM043
  (395, 39500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Empoleon - Avalanche - TM046
  (395, 39500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 34),
  -- Empoleon - Endure - TM047
  (395, 39500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Empoleon - Rain Dance - TM050
  (395, 39500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Empoleon - Snowscape - TM052
  (395, 39500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 37),
  -- Empoleon - False Swipe - TM057
  (395, 39500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 38),
  -- Empoleon - Brick Break - TM058
  (395, 39500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 39),
  -- Empoleon - Shadow Claw - TM061
  (395, 39500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 40),
  -- Empoleon - Air Slash - TM065
  (395, 39500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 41),
  -- Empoleon - Body Slam - TM066
  (395, 39500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Empoleon - Sleep Talk - TM070
  (395, 39500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Empoleon - Waterfall - TM077
  (395, 39500, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 44),
  -- Empoleon - Grass Knot - TM081
  (395, 39500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Empoleon - Rest - TM085
  (395, 39500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Empoleon - Rock Slide - TM086
  (395, 39500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Empoleon - Swords Dance - TM088
  (395, 39500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Empoleon - Flash Cannon - TM093
  (395, 39500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 49),
  -- Empoleon - Substitute - TM103
  (395, 39500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Empoleon - Iron Defense - TM104
  (395, 39500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 51),
  -- Empoleon - Liquidation - TM110
  (395, 39500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 52),
  -- Empoleon - Stealth Rock - TM116
  (395, 39500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Empoleon - Surf - TM123
  (395, 39500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 54),
  -- Empoleon - Ice Spinner - TM124
  (395, 39500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 55),
  -- Empoleon - Helping Hand - TM130
  (395, 39500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Empoleon - Ice Beam - TM135
  (395, 39500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 57),
  -- Empoleon - Hydro Pump - TM142
  (395, 39500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 58),
  -- Empoleon - Blizzard - TM143
  (395, 39500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 59),
  -- Empoleon - Water Pledge - TM145
  (395, 39500, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 60),
  -- Empoleon - Earthquake - TM149
  (395, 39500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 61),
  -- Empoleon - Giga Impact - TM152
  (395, 39500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Empoleon - Hydro Cannon - TM154
  (395, 39500, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 63),
  -- Empoleon - Hyper Beam - TM163
  (395, 39500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Empoleon - Steel Beam - TM170
  (395, 39500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 65),
  -- Empoleon - Tera Blast - TM171
  (395, 39500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Empoleon - Supersonic - Egg
  (395, 39500, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Empoleon - Snore - Egg
  (395, 39500, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Empoleon - Yawn - Egg
  (395, 39500, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Empoleon - Feather Dance - Egg
  (395, 39500, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Empoleon - Roost - Egg
  (395, 39500, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Empoleon - Aqua Ring - Egg
  (395, 39500, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Empoleon - Power Trip - Egg
  (395, 39500, 681, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Empoleon - Aqua Jet - Evolution
  (395, 39500, 453, 23, NULL, 7, NULL, NULL, NULL, NULL, 74),
  -- Starly - Tackle - Level 1
  (396, 39600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starly - Growl - Level 1
  (396, 39600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starly - Quick Attack - Level 5
  (396, 39600, 98, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Starly - Wing Attack - Level 9
  (396, 39600, 17, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Starly - Double Team - Level 13
  (396, 39600, 104, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Starly - Endeavor - Level 17
  (396, 39600, 283, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Starly - Whirlwind - Level 21
  (396, 39600, 18, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Starly - Aerial Ace - Level 25
  (396, 39600, 332, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Starly - Take Down - Level 29
  (396, 39600, 36, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Starly - Agility - Level 33
  (396, 39600, 97, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Starly - Brave Bird - Level 37
  (396, 39600, 413, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Starly - Final Gambit - Level 41
  (396, 39600, 515, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Starly - Take Down - TM001
  (396, 39600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Starly - Agility - TM004
  (396, 39600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Starly - Protect - TM007
  (396, 39600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Starly - Acrobatics - TM014
  (396, 39600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Starly - Thief - TM018
  (396, 39600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Starly - Facade - TM025
  (396, 39600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Starly - Aerial Ace - TM027
  (396, 39600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Starly - Swift - TM032
  (396, 39600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Starly - Air Cutter - TM040
  (396, 39600, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 21),
  -- Starly - Endure - TM047
  (396, 39600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Starly - Sunny Day - TM049
  (396, 39600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Starly - Rain Dance - TM050
  (396, 39600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Starly - U-turn - TM060
  (396, 39600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 25),
  -- Starly - Air Slash - TM065
  (396, 39600, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 26),
  -- Starly - Sleep Talk - TM070
  (396, 39600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Starly - Rest - TM085
  (396, 39600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Starly - Fly - TM097
  (396, 39600, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 29),
  -- Starly - Substitute - TM103
  (396, 39600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Starly - Tailwind - TM113
  (396, 39600, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 31),
  -- Starly - Heat Wave - TM118
  (396, 39600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 32),
  -- Starly - Helping Hand - TM130
  (396, 39600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Starly - Hurricane - TM160
  (396, 39600, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 34),
  -- Starly - Brave Bird - TM164
  (396, 39600, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 35),
  -- Starly - Tera Blast - TM171
  (396, 39600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Starly - Sand Attack - Egg
  (396, 39600, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Starly - Fury Attack - Egg
  (396, 39600, 31, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Starly - Double-Edge - Egg
  (396, 39600, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Starly - Uproar - Egg
  (396, 39600, 253, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Starly - Feather Dance - Egg
  (396, 39600, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Starly - Astonish - Egg
  (396, 39600, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Staravia - Tackle - Level 1
  (397, 39700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staravia - Growl - Level 1
  (397, 39700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staravia - Quick Attack - Level 1
  (397, 39700, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staravia - Wing Attack - Level 9
  (397, 39700, 17, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Staravia - Double Team - Level 13
  (397, 39700, 104, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Staravia - Endeavor - Level 18
  (397, 39700, 283, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Staravia - Whirlwind - Level 23
  (397, 39700, 18, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Staravia - Aerial Ace - Level 28
  (397, 39700, 332, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Staravia - Take Down - Level 33
  (397, 39700, 36, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Staravia - Agility - Level 38
  (397, 39700, 97, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Staravia - Brave Bird - Level 43
  (397, 39700, 413, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Staravia - Final Gambit - Level 48
  (397, 39700, 515, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Staravia - Take Down - TM001
  (397, 39700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Staravia - Agility - TM004
  (397, 39700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Staravia - Protect - TM007
  (397, 39700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Staravia - Acrobatics - TM014
  (397, 39700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Staravia - Thief - TM018
  (397, 39700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Staravia - Facade - TM025
  (397, 39700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Staravia - Aerial Ace - TM027
  (397, 39700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Staravia - Swift - TM032
  (397, 39700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Staravia - Air Cutter - TM040
  (397, 39700, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 21),
  -- Staravia - Endure - TM047
  (397, 39700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Staravia - Sunny Day - TM049
  (397, 39700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Staravia - Rain Dance - TM050
  (397, 39700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Staravia - U-turn - TM060
  (397, 39700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 25),
  -- Staravia - Air Slash - TM065
  (397, 39700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 26),
  -- Staravia - Sleep Talk - TM070
  (397, 39700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Staravia - Rest - TM085
  (397, 39700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Staravia - Fly - TM097
  (397, 39700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 29),
  -- Staravia - Substitute - TM103
  (397, 39700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 30),
  -- Staravia - Tailwind - TM113
  (397, 39700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 31),
  -- Staravia - Heat Wave - TM118
  (397, 39700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 32),
  -- Staravia - Helping Hand - TM130
  (397, 39700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Staravia - Hurricane - TM160
  (397, 39700, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 34),
  -- Staravia - Brave Bird - TM164
  (397, 39700, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 35),
  -- Staravia - Tera Blast - TM171
  (397, 39700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Staravia - Sand Attack - Egg
  (397, 39700, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Staravia - Fury Attack - Egg
  (397, 39700, 31, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Staravia - Double-Edge - Egg
  (397, 39700, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Staravia - Uproar - Egg
  (397, 39700, 253, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Staravia - Feather Dance - Egg
  (397, 39700, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Staravia - Astonish - Egg
  (397, 39700, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Staraptor - Wing Attack - Level 1
  (398, 39800, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staraptor - Tackle - Level 1
  (398, 39800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staraptor - Growl - Level 1
  (398, 39800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staraptor - Quick Attack - Level 1
  (398, 39800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Staraptor - Double Team - Level 13
  (398, 39800, 104, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Staraptor - Endeavor - Level 18
  (398, 39800, 283, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Staraptor - Whirlwind - Level 23
  (398, 39800, 18, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Staraptor - Aerial Ace - Level 28
  (398, 39800, 332, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Staraptor - Take Down - Level 33
  (398, 39800, 36, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Staraptor - Agility - Level 41
  (398, 39800, 97, 23, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Staraptor - Brave Bird - Level 49
  (398, 39800, 413, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Staraptor - Final Gambit - Level 57
  (398, 39800, 515, 23, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Staraptor - Take Down - TM001
  (398, 39800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Staraptor - Agility - TM004
  (398, 39800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Staraptor - Protect - TM007
  (398, 39800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Staraptor - Acrobatics - TM014
  (398, 39800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Staraptor - Struggle Bug - TM015
  (398, 39800, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Staraptor - Thief - TM018
  (398, 39800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Staraptor - Facade - TM025
  (398, 39800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Staraptor - Aerial Ace - TM027
  (398, 39800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Staraptor - Swift - TM032
  (398, 39800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Staraptor - Air Cutter - TM040
  (398, 39800, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 22),
  -- Staraptor - Endure - TM047
  (398, 39800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Staraptor - Sunny Day - TM049
  (398, 39800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Staraptor - Rain Dance - TM050
  (398, 39800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Staraptor - U-turn - TM060
  (398, 39800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Staraptor - Air Slash - TM065
  (398, 39800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 27),
  -- Staraptor - Sleep Talk - TM070
  (398, 39800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Staraptor - Rest - TM085
  (398, 39800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Staraptor - Fly - TM097
  (398, 39800, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 30),
  -- Staraptor - Substitute - TM103
  (398, 39800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Staraptor - Tailwind - TM113
  (398, 39800, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 32),
  -- Staraptor - Heat Wave - TM118
  (398, 39800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 33),
  -- Staraptor - Helping Hand - TM130
  (398, 39800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 34),
  -- Staraptor - Giga Impact - TM152
  (398, 39800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 35),
  -- Staraptor - Hurricane - TM160
  (398, 39800, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 36),
  -- Staraptor - Hyper Beam - TM163
  (398, 39800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 37),
  -- Staraptor - Brave Bird - TM164
  (398, 39800, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 38),
  -- Staraptor - Close Combat - TM167
  (398, 39800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 39),
  -- Staraptor - Tera Blast - TM171
  (398, 39800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Staraptor - Sand Attack - Egg
  (398, 39800, 28, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Staraptor - Fury Attack - Egg
  (398, 39800, 31, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Staraptor - Double-Edge - Egg
  (398, 39800, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Staraptor - Uproar - Egg
  (398, 39800, 253, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Staraptor - Feather Dance - Egg
  (398, 39800, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Staraptor - Astonish - Egg
  (398, 39800, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Staraptor - Close Combat - Evolution
  (398, 39800, 370, 23, NULL, 7, NULL, NULL, NULL, NULL, 47);
