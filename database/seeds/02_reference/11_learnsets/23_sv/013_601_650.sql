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
-- Scarlet / Violet learnsets for species 601-650.
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
  -- Tynamo - Tackle - Level 1
  (602, 60200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tynamo - Thunder Wave - Level 1
  (602, 60200, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tynamo - Spark - Level 1
  (602, 60200, 209, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tynamo - Charge Beam - Level 1
  (602, 60200, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tynamo - Charge Beam - TM023
  (602, 60200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 5),
  -- Tynamo - Thunder Wave - TM082
  (602, 60200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 6),
  -- Tynamo - Tera Blast - TM171
  (602, 60200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 7),
  -- Eelektrik - Headbutt - Level 1
  (603, 60300, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektrik - Thunder Wave - Level 1
  (603, 60300, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektrik - Spark - Level 1
  (603, 60300, 209, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektrik - Charge Beam - Level 1
  (603, 60300, 451, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektrik - Bind - Level 9
  (603, 60300, 20, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Eelektrik - Acid - Level 19
  (603, 60300, 51, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Eelektrik - Discharge - Level 29
  (603, 60300, 435, 23, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Eelektrik - Thunderbolt - Level 44
  (603, 60300, 85, 23, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Eelektrik - Acid Spray - Level 49
  (603, 60300, 491, 23, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Eelektrik - Coil - Level 54
  (603, 60300, 489, 23, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Eelektrik - Wild Charge - Level 59
  (603, 60300, 528, 23, NULL, 1, 59, NULL, NULL, NULL, 11),
  -- Eelektrik - Gastro Acid - Level 64
  (603, 60300, 380, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Eelektrik - Zap Cannon - Level 69
  (603, 60300, 192, 23, NULL, 1, 69, NULL, NULL, NULL, 13),
  -- Eelektrik - Thrash - Level 74
  (603, 60300, 37, 23, NULL, 1, 74, NULL, NULL, NULL, 14),
  -- Eelektrik - Take Down - TM001
  (603, 60300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Eelektrik - Scary Face - TM006
  (603, 60300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Eelektrik - Protect - TM007
  (603, 60300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Eelektrik - Thunder Fang - TM009
  (603, 60300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 18),
  -- Eelektrik - Acid Spray - TM013
  (603, 60300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Eelektrik - Acrobatics - TM014
  (603, 60300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Eelektrik - Charge Beam - TM023
  (603, 60300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Eelektrik - Facade - TM025
  (603, 60300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Eelektrik - Endure - TM047
  (603, 60300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Eelektrik - Volt Switch - TM048
  (603, 60300, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Eelektrik - Rain Dance - TM050
  (603, 60300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Eelektrik - U-turn - TM060
  (603, 60300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Eelektrik - Body Slam - TM066
  (603, 60300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Eelektrik - Sleep Talk - TM070
  (603, 60300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Eelektrik - Electro Ball - TM072
  (603, 60300, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Eelektrik - Light Screen - TM075
  (603, 60300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Eelektrik - Thunder Wave - TM082
  (603, 60300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Eelektrik - Rest - TM085
  (603, 60300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Eelektrik - Flash Cannon - TM093
  (603, 60300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Eelektrik - Eerie Impulse - TM096
  (603, 60300, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 34),
  -- Eelektrik - Substitute - TM103
  (603, 60300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Eelektrik - Crunch - TM108
  (603, 60300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 36),
  -- Eelektrik - Giga Drain - TM111
  (603, 60300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Eelektrik - Thunderbolt - TM126
  (603, 60300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 38),
  -- Eelektrik - Electric Terrain - TM136
  (603, 60300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 39),
  -- Eelektrik - Wild Charge - TM147
  (603, 60300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 40),
  -- Eelektrik - Thunder - TM166
  (603, 60300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 41),
  -- Eelektrik - Tera Blast - TM171
  (603, 60300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Eelektrik - Crunch - Evolution
  (603, 60300, 242, 23, NULL, 7, NULL, NULL, NULL, NULL, 43),
  -- Eelektross - Headbutt - Level 1
  (604, 60400, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eelektross - Thrash - Level 1
  (604, 60400, 37, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eelektross - Acid - Level 1
  (604, 60400, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eelektross - Zap Cannon - Level 1
  (604, 60400, 192, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eelektross - Crunch - Level 1
  (604, 60400, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eelektross - Crush Claw - Level 1
  (604, 60400, 306, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Eelektross - Gastro Acid - Level 1
  (604, 60400, 380, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Eelektross - Discharge - Level 1
  (604, 60400, 435, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Eelektross - Coil - Level 1
  (604, 60400, 489, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Eelektross - Wild Charge - Level 5
  (604, 60400, 528, 23, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Eelektross - Take Down - TM001
  (604, 60400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Eelektross - Scary Face - TM006
  (604, 60400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 12),
  -- Eelektross - Protect - TM007
  (604, 60400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Eelektross - Thunder Fang - TM009
  (604, 60400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 14),
  -- Eelektross - Acid Spray - TM013
  (604, 60400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 15),
  -- Eelektross - Acrobatics - TM014
  (604, 60400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Eelektross - Confuse Ray - TM017
  (604, 60400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 17),
  -- Eelektross - Charge Beam - TM023
  (604, 60400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 18),
  -- Eelektross - Facade - TM025
  (604, 60400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Eelektross - Bulldoze - TM028
  (604, 60400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Eelektross - Hex - TM029
  (604, 60400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Eelektross - Swift - TM032
  (604, 60400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Eelektross - Rock Tomb - TM036
  (604, 60400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Eelektross - Dragon Tail - TM044
  (604, 60400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 24),
  -- Eelektross - Endure - TM047
  (604, 60400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Eelektross - Volt Switch - TM048
  (604, 60400, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Eelektross - Sunny Day - TM049
  (604, 60400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Eelektross - Rain Dance - TM050
  (604, 60400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Eelektross - Brick Break - TM058
  (604, 60400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Eelektross - Zen Headbutt - TM059
  (604, 60400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Eelektross - U-turn - TM060
  (604, 60400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Eelektross - Bulk Up - TM064
  (604, 60400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Eelektross - Body Slam - TM066
  (604, 60400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Eelektross - Fire Punch - TM067
  (604, 60400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Eelektross - Thunder Punch - TM068
  (604, 60400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Eelektross - Sleep Talk - TM070
  (604, 60400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Eelektross - Electro Ball - TM072
  (604, 60400, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 37),
  -- Eelektross - Drain Punch - TM073
  (604, 60400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 38),
  -- Eelektross - Light Screen - TM075
  (604, 60400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 39),
  -- Eelektross - Dragon Claw - TM078
  (604, 60400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Eelektross - Grass Knot - TM081
  (604, 60400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Eelektross - Thunder Wave - TM082
  (604, 60400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 42),
  -- Eelektross - Stomping Tantrum - TM084
  (604, 60400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 43),
  -- Eelektross - Rest - TM085
  (604, 60400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Eelektross - Rock Slide - TM086
  (604, 60400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Eelektross - Body Press - TM089
  (604, 60400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 46),
  -- Eelektross - Flash Cannon - TM093
  (604, 60400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 47),
  -- Eelektross - Eerie Impulse - TM096
  (604, 60400, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 48),
  -- Eelektross - Substitute - TM103
  (604, 60400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Eelektross - Crunch - TM108
  (604, 60400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 50),
  -- Eelektross - Liquidation - TM110
  (604, 60400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 51),
  -- Eelektross - Giga Drain - TM111
  (604, 60400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 52),
  -- Eelektross - Dragon Pulse - TM115
  (604, 60400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 53),
  -- Eelektross - Heavy Slam - TM121
  (604, 60400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 54),
  -- Eelektross - Flamethrower - TM125
  (604, 60400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 55),
  -- Eelektross - Thunderbolt - TM126
  (604, 60400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Eelektross - Electric Terrain - TM136
  (604, 60400, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 57),
  -- Eelektross - Wild Charge - TM147
  (604, 60400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 58),
  -- Eelektross - Giga Impact - TM152
  (604, 60400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Eelektross - Outrage - TM156
  (604, 60400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 60),
  -- Eelektross - Hyper Beam - TM163
  (604, 60400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Eelektross - Thunder - TM166
  (604, 60400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 62),
  -- Eelektross - Close Combat - TM167
  (604, 60400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Eelektross - Tera Blast - TM171
  (604, 60400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Litwick - Smog - Level 1
  (607, 60700, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Litwick - Astonish - Level 1
  (607, 60700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Litwick - Ember - Level 4
  (607, 60700, 52, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Litwick - Minimize - Level 8
  (607, 60700, 107, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Litwick - Confuse Ray - Level 12
  (607, 60700, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Litwick - Hex - Level 16
  (607, 60700, 506, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Litwick - Will-O-Wisp - Level 20
  (607, 60700, 261, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Litwick - Fire Spin - Level 24
  (607, 60700, 83, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Litwick - Night Shade - Level 28
  (607, 60700, 101, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Litwick - Curse - Level 32
  (607, 60700, 174, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Litwick - Shadow Ball - Level 36
  (607, 60700, 247, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Litwick - Inferno - Level 40
  (607, 60700, 517, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Litwick - Imprison - Level 44
  (607, 60700, 286, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Litwick - Pain Split - Level 48
  (607, 60700, 220, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Litwick - Overheat - Level 52
  (607, 60700, 315, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Litwick - Memento - Level 56
  (607, 60700, 262, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Litwick - Protect - TM007
  (607, 60700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Litwick - Confuse Ray - TM017
  (607, 60700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Litwick - Thief - TM018
  (607, 60700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Litwick - Fire Spin - TM024
  (607, 60700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Litwick - Facade - TM025
  (607, 60700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Litwick - Hex - TM029
  (607, 60700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Litwick - Flame Charge - TM038
  (607, 60700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Litwick - Night Shade - TM042
  (607, 60700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Litwick - Endure - TM047
  (607, 60700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Litwick - Sunny Day - TM049
  (607, 60700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Litwick - Sleep Talk - TM070
  (607, 60700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Litwick - Rest - TM085
  (607, 60700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Litwick - Taunt - TM087
  (607, 60700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 29),
  -- Litwick - Imprison - TM092
  (607, 60700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 30),
  -- Litwick - Dark Pulse - TM094
  (607, 60700, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 31),
  -- Litwick - Substitute - TM103
  (607, 60700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Litwick - Will-O-Wisp - TM107
  (607, 60700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 33),
  -- Litwick - Trick - TM109
  (607, 60700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 34),
  -- Litwick - Shadow Ball - TM114
  (607, 60700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 35),
  -- Litwick - Heat Wave - TM118
  (607, 60700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Litwick - Energy Ball - TM119
  (607, 60700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Litwick - Psychic - TM120
  (607, 60700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Litwick - Flamethrower - TM125
  (607, 60700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Litwick - Calm Mind - TM129
  (607, 60700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Litwick - Fire Blast - TM141
  (607, 60700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Litwick - Overheat - TM157
  (607, 60700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 42),
  -- Litwick - Trick Room - TM161
  (607, 60700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Litwick - Flare Blitz - TM165
  (607, 60700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Litwick - Solar Beam - TM168
  (607, 60700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Litwick - Tera Blast - TM171
  (607, 60700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Litwick - Haze - Egg
  (607, 60700, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Litwick - Acid Armor - Egg
  (607, 60700, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Litwick - Power Split - Egg
  (607, 60700, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Litwick - Clear Smog - Egg
  (607, 60700, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lampent - Ember - Level 1
  (608, 60800, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lampent - Minimize - Level 1
  (608, 60800, 107, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lampent - Smog - Level 1
  (608, 60800, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lampent - Astonish - Level 1
  (608, 60800, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lampent - Confuse Ray - Level 12
  (608, 60800, 109, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lampent - Hex - Level 16
  (608, 60800, 506, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Lampent - Will-O-Wisp - Level 20
  (608, 60800, 261, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Lampent - Fire Spin - Level 24
  (608, 60800, 83, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Lampent - Night Shade - Level 28
  (608, 60800, 101, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Lampent - Curse - Level 32
  (608, 60800, 174, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Lampent - Shadow Ball - Level 36
  (608, 60800, 247, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Lampent - Inferno - Level 40
  (608, 60800, 517, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Lampent - Imprison - Level 46
  (608, 60800, 286, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Lampent - Pain Split - Level 52
  (608, 60800, 220, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Lampent - Overheat - Level 58
  (608, 60800, 315, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Lampent - Memento - Level 64
  (608, 60800, 262, 23, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Lampent - Protect - TM007
  (608, 60800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Lampent - Confuse Ray - TM017
  (608, 60800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Lampent - Thief - TM018
  (608, 60800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Lampent - Fire Spin - TM024
  (608, 60800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Lampent - Facade - TM025
  (608, 60800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Lampent - Hex - TM029
  (608, 60800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Lampent - Flame Charge - TM038
  (608, 60800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 23),
  -- Lampent - Night Shade - TM042
  (608, 60800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Lampent - Endure - TM047
  (608, 60800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Lampent - Sunny Day - TM049
  (608, 60800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Lampent - Sleep Talk - TM070
  (608, 60800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Lampent - Rest - TM085
  (608, 60800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Lampent - Taunt - TM087
  (608, 60800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 29),
  -- Lampent - Imprison - TM092
  (608, 60800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 30),
  -- Lampent - Dark Pulse - TM094
  (608, 60800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 31),
  -- Lampent - Substitute - TM103
  (608, 60800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Lampent - Will-O-Wisp - TM107
  (608, 60800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 33),
  -- Lampent - Trick - TM109
  (608, 60800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 34),
  -- Lampent - Shadow Ball - TM114
  (608, 60800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 35),
  -- Lampent - Heat Wave - TM118
  (608, 60800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Lampent - Energy Ball - TM119
  (608, 60800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Lampent - Psychic - TM120
  (608, 60800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Lampent - Flamethrower - TM125
  (608, 60800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 39),
  -- Lampent - Calm Mind - TM129
  (608, 60800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 40),
  -- Lampent - Fire Blast - TM141
  (608, 60800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 41),
  -- Lampent - Overheat - TM157
  (608, 60800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 42),
  -- Lampent - Trick Room - TM161
  (608, 60800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 43),
  -- Lampent - Flare Blitz - TM165
  (608, 60800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Lampent - Solar Beam - TM168
  (608, 60800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Lampent - Tera Blast - TM171
  (608, 60800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Lampent - Haze - Egg
  (608, 60800, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lampent - Acid Armor - Egg
  (608, 60800, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lampent - Power Split - Egg
  (608, 60800, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lampent - Clear Smog - Egg
  (608, 60800, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chandelure - Ember - Level 1
  (609, 60900, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chandelure - Fire Spin - Level 1
  (609, 60900, 83, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chandelure - Night Shade - Level 1
  (609, 60900, 101, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chandelure - Minimize - Level 1
  (609, 60900, 107, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chandelure - Confuse Ray - Level 1
  (609, 60900, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chandelure - Smog - Level 1
  (609, 60900, 123, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Chandelure - Curse - Level 1
  (609, 60900, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Chandelure - Pain Split - Level 1
  (609, 60900, 220, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Chandelure - Shadow Ball - Level 1
  (609, 60900, 247, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Chandelure - Will-O-Wisp - Level 1
  (609, 60900, 261, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Chandelure - Memento - Level 1
  (609, 60900, 262, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Chandelure - Imprison - Level 1
  (609, 60900, 286, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Chandelure - Astonish - Level 1
  (609, 60900, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Chandelure - Overheat - Level 1
  (609, 60900, 315, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Chandelure - Hex - Level 1
  (609, 60900, 506, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Chandelure - Inferno - Level 1
  (609, 60900, 517, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Chandelure - Protect - TM007
  (609, 60900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Chandelure - Confuse Ray - TM017
  (609, 60900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Chandelure - Thief - TM018
  (609, 60900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Chandelure - Trailblaze - TM020
  (609, 60900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Chandelure - Fire Spin - TM024
  (609, 60900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Chandelure - Facade - TM025
  (609, 60900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Chandelure - Hex - TM029
  (609, 60900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Chandelure - Flame Charge - TM038
  (609, 60900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Chandelure - Night Shade - TM042
  (609, 60900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 25),
  -- Chandelure - Endure - TM047
  (609, 60900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Chandelure - Sunny Day - TM049
  (609, 60900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Chandelure - Sleep Talk - TM070
  (609, 60900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Chandelure - Rest - TM085
  (609, 60900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Chandelure - Taunt - TM087
  (609, 60900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 30),
  -- Chandelure - Imprison - TM092
  (609, 60900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 31),
  -- Chandelure - Dark Pulse - TM094
  (609, 60900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 32),
  -- Chandelure - Substitute - TM103
  (609, 60900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Chandelure - Will-O-Wisp - TM107
  (609, 60900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 34),
  -- Chandelure - Trick - TM109
  (609, 60900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 35),
  -- Chandelure - Shadow Ball - TM114
  (609, 60900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 36),
  -- Chandelure - Heat Wave - TM118
  (609, 60900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 37),
  -- Chandelure - Energy Ball - TM119
  (609, 60900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Chandelure - Psychic - TM120
  (609, 60900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 39),
  -- Chandelure - Flamethrower - TM125
  (609, 60900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 40),
  -- Chandelure - Calm Mind - TM129
  (609, 60900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 41),
  -- Chandelure - Fire Blast - TM141
  (609, 60900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Chandelure - Giga Impact - TM152
  (609, 60900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Chandelure - Overheat - TM157
  (609, 60900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 44),
  -- Chandelure - Trick Room - TM161
  (609, 60900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 45),
  -- Chandelure - Hyper Beam - TM163
  (609, 60900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Chandelure - Flare Blitz - TM165
  (609, 60900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 47),
  -- Chandelure - Solar Beam - TM168
  (609, 60900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 48),
  -- Chandelure - Tera Blast - TM171
  (609, 60900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Chandelure - Haze - Egg
  (609, 60900, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chandelure - Acid Armor - Egg
  (609, 60900, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chandelure - Power Split - Egg
  (609, 60900, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chandelure - Clear Smog - Egg
  (609, 60900, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Axew - Scratch - Level 1
  (610, 61000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Axew - Leer - Level 1
  (610, 61000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Axew - Bite - Level 3
  (610, 61000, 44, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Axew - False Swipe - Level 6
  (610, 61000, 206, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Axew - Assurance - Level 9
  (610, 61000, 372, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Axew - Taunt - Level 12
  (610, 61000, 269, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Axew - Slash - Level 15
  (610, 61000, 163, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Axew - Dragon Claw - Level 18
  (610, 61000, 337, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Axew - Scary Face - Level 21
  (610, 61000, 184, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Axew - Crunch - Level 24
  (610, 61000, 242, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Axew - Dragon Dance - Level 27
  (610, 61000, 349, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Axew - Breaking Swipe - Level 30
  (610, 61000, 784, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Axew - Focus Energy - Level 33
  (610, 61000, 116, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Axew - Dragon Pulse - Level 36
  (610, 61000, 406, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Axew - Swords Dance - Level 39
  (610, 61000, 14, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Axew - Outrage - Level 42
  (610, 61000, 200, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Axew - Guillotine - Level 45
  (610, 61000, 12, 23, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Axew - Giga Impact - Level 48
  (610, 61000, 416, 23, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Axew - Take Down - TM001
  (610, 61000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Axew - Scary Face - TM006
  (610, 61000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Axew - Protect - TM007
  (610, 61000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Axew - Trailblaze - TM020
  (610, 61000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Axew - Facade - TM025
  (610, 61000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Axew - Aerial Ace - TM027
  (610, 61000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Axew - Bulldoze - TM028
  (610, 61000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Axew - Snarl - TM030
  (610, 61000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Axew - Swift - TM032
  (610, 61000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Axew - Rock Tomb - TM036
  (610, 61000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Axew - Fling - TM043
  (610, 61000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Axew - Dragon Tail - TM044
  (610, 61000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 30),
  -- Axew - Endure - TM047
  (610, 61000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Axew - Sunny Day - TM049
  (610, 61000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Axew - Rain Dance - TM050
  (610, 61000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Axew - Dig - TM055
  (610, 61000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Axew - False Swipe - TM057
  (610, 61000, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 35),
  -- Axew - Brick Break - TM058
  (610, 61000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Axew - Shadow Claw - TM061
  (610, 61000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Axew - Sleep Talk - TM070
  (610, 61000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Axew - Dragon Claw - TM078
  (610, 61000, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 39),
  -- Axew - Poison Jab - TM083
  (610, 61000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 40),
  -- Axew - Stomping Tantrum - TM084
  (610, 61000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 41),
  -- Axew - Rest - TM085
  (610, 61000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Axew - Taunt - TM087
  (610, 61000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Axew - Swords Dance - TM088
  (610, 61000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Axew - Iron Head - TM099
  (610, 61000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Axew - Dragon Dance - TM100
  (610, 61000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 46),
  -- Axew - Substitute - TM103
  (610, 61000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Axew - X-Scissor - TM105
  (610, 61000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 48),
  -- Axew - Crunch - TM108
  (610, 61000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 49),
  -- Axew - Dragon Pulse - TM115
  (610, 61000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 50),
  -- Axew - Surf - TM123
  (610, 61000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 51),
  -- Axew - Reversal - TM134
  (610, 61000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Axew - Giga Impact - TM152
  (610, 61000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Axew - Outrage - TM156
  (610, 61000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 54),
  -- Axew - Draco Meteor - TM169
  (610, 61000, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 55),
  -- Axew - Tera Blast - TM171
  (610, 61000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Axew - Counter - Egg
  (610, 61000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Axew - Iron Tail - Egg
  (610, 61000, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Axew - Endeavor - Egg
  (610, 61000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Axew - Night Slash - Egg
  (610, 61000, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Axew - Aqua Tail - Egg
  (610, 61000, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Axew - First Impression - Egg
  (610, 61000, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Fraxure - Scratch - Level 1
  (611, 61100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fraxure - Leer - Level 1
  (611, 61100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fraxure - Bite - Level 1
  (611, 61100, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fraxure - False Swipe - Level 1
  (611, 61100, 206, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fraxure - Assurance - Level 9
  (611, 61100, 372, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Fraxure - Taunt - Level 12
  (611, 61100, 269, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Fraxure - Slash - Level 15
  (611, 61100, 163, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Fraxure - Dragon Claw - Level 18
  (611, 61100, 337, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Fraxure - Scary Face - Level 21
  (611, 61100, 184, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Fraxure - Crunch - Level 24
  (611, 61100, 242, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Fraxure - Dragon Dance - Level 27
  (611, 61100, 349, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Fraxure - Breaking Swipe - Level 30
  (611, 61100, 784, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Fraxure - Focus Energy - Level 33
  (611, 61100, 116, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Fraxure - Dragon Pulse - Level 36
  (611, 61100, 406, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Fraxure - Swords Dance - Level 41
  (611, 61100, 14, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Fraxure - Outrage - Level 46
  (611, 61100, 200, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Fraxure - Guillotine - Level 51
  (611, 61100, 12, 23, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Fraxure - Giga Impact - Level 56
  (611, 61100, 416, 23, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Fraxure - Take Down - TM001
  (611, 61100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Fraxure - Scary Face - TM006
  (611, 61100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Fraxure - Protect - TM007
  (611, 61100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Fraxure - Low Kick - TM012
  (611, 61100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Fraxure - Trailblaze - TM020
  (611, 61100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Fraxure - Facade - TM025
  (611, 61100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Fraxure - Aerial Ace - TM027
  (611, 61100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Fraxure - Bulldoze - TM028
  (611, 61100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Fraxure - Snarl - TM030
  (611, 61100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Fraxure - Swift - TM032
  (611, 61100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Fraxure - Rock Tomb - TM036
  (611, 61100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Fraxure - Fling - TM043
  (611, 61100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Fraxure - Dragon Tail - TM044
  (611, 61100, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 31),
  -- Fraxure - Endure - TM047
  (611, 61100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Fraxure - Sunny Day - TM049
  (611, 61100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Fraxure - Rain Dance - TM050
  (611, 61100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Fraxure - Dig - TM055
  (611, 61100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Fraxure - False Swipe - TM057
  (611, 61100, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 36),
  -- Fraxure - Brick Break - TM058
  (611, 61100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Fraxure - Shadow Claw - TM061
  (611, 61100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Fraxure - Sleep Talk - TM070
  (611, 61100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Fraxure - Dragon Claw - TM078
  (611, 61100, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 40),
  -- Fraxure - Poison Jab - TM083
  (611, 61100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Fraxure - Stomping Tantrum - TM084
  (611, 61100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Fraxure - Rest - TM085
  (611, 61100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Fraxure - Taunt - TM087
  (611, 61100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Fraxure - Swords Dance - TM088
  (611, 61100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 45),
  -- Fraxure - Iron Head - TM099
  (611, 61100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 46),
  -- Fraxure - Dragon Dance - TM100
  (611, 61100, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 47),
  -- Fraxure - Substitute - TM103
  (611, 61100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Fraxure - X-Scissor - TM105
  (611, 61100, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 49),
  -- Fraxure - Crunch - TM108
  (611, 61100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 50),
  -- Fraxure - Dragon Pulse - TM115
  (611, 61100, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 51),
  -- Fraxure - Surf - TM123
  (611, 61100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 52),
  -- Fraxure - Reversal - TM134
  (611, 61100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 53),
  -- Fraxure - Giga Impact - TM152
  (611, 61100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Fraxure - Outrage - TM156
  (611, 61100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 55),
  -- Fraxure - Draco Meteor - TM169
  (611, 61100, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 56),
  -- Fraxure - Tera Blast - TM171
  (611, 61100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Fraxure - Counter - Egg
  (611, 61100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Fraxure - Iron Tail - Egg
  (611, 61100, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Fraxure - Endeavor - Egg
  (611, 61100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Fraxure - Night Slash - Egg
  (611, 61100, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Fraxure - Aqua Tail - Egg
  (611, 61100, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Fraxure - First Impression - Egg
  (611, 61100, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Haxorus - Scratch - Level 1
  (612, 61200, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haxorus - Leer - Level 1
  (612, 61200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haxorus - Bite - Level 1
  (612, 61200, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haxorus - False Swipe - Level 1
  (612, 61200, 206, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haxorus - Assurance - Level 9
  (612, 61200, 372, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Haxorus - Taunt - Level 12
  (612, 61200, 269, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Haxorus - Slash - Level 15
  (612, 61200, 163, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Haxorus - Dragon Claw - Level 18
  (612, 61200, 337, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Haxorus - Scary Face - Level 21
  (612, 61200, 184, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Haxorus - Crunch - Level 24
  (612, 61200, 242, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Haxorus - Dragon Dance - Level 27
  (612, 61200, 349, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Haxorus - Breaking Swipe - Level 30
  (612, 61200, 784, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Haxorus - Focus Energy - Level 33
  (612, 61200, 116, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Haxorus - Dragon Pulse - Level 36
  (612, 61200, 406, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Haxorus - Swords Dance - Level 41
  (612, 61200, 14, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Haxorus - Outrage - Level 46
  (612, 61200, 200, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Haxorus - Guillotine - Level 53
  (612, 61200, 12, 23, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Haxorus - Giga Impact - Level 60
  (612, 61200, 416, 23, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Haxorus - Take Down - TM001
  (612, 61200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Haxorus - Scary Face - TM006
  (612, 61200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Haxorus - Protect - TM007
  (612, 61200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Haxorus - Low Kick - TM012
  (612, 61200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Haxorus - Trailblaze - TM020
  (612, 61200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Haxorus - Facade - TM025
  (612, 61200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Haxorus - Aerial Ace - TM027
  (612, 61200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Haxorus - Bulldoze - TM028
  (612, 61200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Haxorus - Snarl - TM030
  (612, 61200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Haxorus - Swift - TM032
  (612, 61200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Haxorus - Rock Tomb - TM036
  (612, 61200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Haxorus - Low Sweep - TM039
  (612, 61200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Haxorus - Fling - TM043
  (612, 61200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Haxorus - Dragon Tail - TM044
  (612, 61200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 32),
  -- Haxorus - Endure - TM047
  (612, 61200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Haxorus - Sunny Day - TM049
  (612, 61200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Haxorus - Rain Dance - TM050
  (612, 61200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Haxorus - Dig - TM055
  (612, 61200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Haxorus - False Swipe - TM057
  (612, 61200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 37),
  -- Haxorus - Brick Break - TM058
  (612, 61200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Haxorus - Shadow Claw - TM061
  (612, 61200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Haxorus - Body Slam - TM066
  (612, 61200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Haxorus - Sleep Talk - TM070
  (612, 61200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Haxorus - Dragon Claw - TM078
  (612, 61200, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 42),
  -- Haxorus - Grass Knot - TM081
  (612, 61200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Haxorus - Poison Jab - TM083
  (612, 61200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Haxorus - Stomping Tantrum - TM084
  (612, 61200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Haxorus - Rest - TM085
  (612, 61200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Haxorus - Rock Slide - TM086
  (612, 61200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Haxorus - Taunt - TM087
  (612, 61200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Haxorus - Swords Dance - TM088
  (612, 61200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 49),
  -- Haxorus - Iron Head - TM099
  (612, 61200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 50),
  -- Haxorus - Dragon Dance - TM100
  (612, 61200, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 51),
  -- Haxorus - Substitute - TM103
  (612, 61200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Haxorus - X-Scissor - TM105
  (612, 61200, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 53),
  -- Haxorus - Crunch - TM108
  (612, 61200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 54),
  -- Haxorus - Dragon Pulse - TM115
  (612, 61200, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 55),
  -- Haxorus - Surf - TM123
  (612, 61200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 56),
  -- Haxorus - Reversal - TM134
  (612, 61200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 57),
  -- Haxorus - Earthquake - TM149
  (612, 61200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Haxorus - Giga Impact - TM152
  (612, 61200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Haxorus - Outrage - TM156
  (612, 61200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 60),
  -- Haxorus - Focus Blast - TM158
  (612, 61200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Haxorus - Hyper Beam - TM163
  (612, 61200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Haxorus - Close Combat - TM167
  (612, 61200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Haxorus - Draco Meteor - TM169
  (612, 61200, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 64),
  -- Haxorus - Tera Blast - TM171
  (612, 61200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Haxorus - Counter - Egg
  (612, 61200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Haxorus - Iron Tail - Egg
  (612, 61200, 231, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Haxorus - Endeavor - Egg
  (612, 61200, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Haxorus - Night Slash - Egg
  (612, 61200, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Haxorus - Aqua Tail - Egg
  (612, 61200, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Haxorus - First Impression - Egg
  (612, 61200, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Cubchoo - Growl - Level 1
  (613, 61300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubchoo - Powder Snow - Level 1
  (613, 61300, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cubchoo - Endure - Level 3
  (613, 61300, 203, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Cubchoo - Fury Swipes - Level 6
  (613, 61300, 154, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Cubchoo - Icy Wind - Level 9
  (613, 61300, 196, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Cubchoo - Play Nice - Level 12
  (613, 61300, 589, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Cubchoo - Brine - Level 15
  (613, 61300, 362, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Cubchoo - Frost Breath - Level 18
  (613, 61300, 524, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Cubchoo - Slash - Level 21
  (613, 61300, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Cubchoo - Flail - Level 24
  (613, 61300, 175, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Cubchoo - Charm - Level 27
  (613, 61300, 204, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Cubchoo - Snowscape - Level 30
  (613, 61300, 883, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Cubchoo - Thrash - Level 33
  (613, 61300, 37, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Cubchoo - Rest - Level 36
  (613, 61300, 156, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Cubchoo - Blizzard - Level 39
  (613, 61300, 59, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Cubchoo - Sheer Cold - Level 42
  (613, 61300, 329, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Cubchoo - Take Down - TM001
  (613, 61300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Cubchoo - Charm - TM002
  (613, 61300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Cubchoo - Mud-Slap - TM005
  (613, 61300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Cubchoo - Protect - TM007
  (613, 61300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Cubchoo - Ice Fang - TM010
  (613, 61300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 21),
  -- Cubchoo - Water Pulse - TM011
  (613, 61300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Cubchoo - Low Kick - TM012
  (613, 61300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Cubchoo - Thief - TM018
  (613, 61300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Cubchoo - Trailblaze - TM020
  (613, 61300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Cubchoo - Chilling Water - TM022
  (613, 61300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Cubchoo - Facade - TM025
  (613, 61300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Cubchoo - Aerial Ace - TM027
  (613, 61300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Cubchoo - Bulldoze - TM028
  (613, 61300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 29),
  -- Cubchoo - Snarl - TM030
  (613, 61300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 30),
  -- Cubchoo - Metal Claw - TM031
  (613, 61300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 31),
  -- Cubchoo - Icy Wind - TM034
  (613, 61300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 32),
  -- Cubchoo - Mud Shot - TM035
  (613, 61300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 33),
  -- Cubchoo - Rock Tomb - TM036
  (613, 61300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 34),
  -- Cubchoo - Fling - TM043
  (613, 61300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Cubchoo - Avalanche - TM046
  (613, 61300, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 36),
  -- Cubchoo - Endure - TM047
  (613, 61300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 37),
  -- Cubchoo - Rain Dance - TM050
  (613, 61300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Cubchoo - Snowscape - TM052
  (613, 61300, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 39),
  -- Cubchoo - Dig - TM055
  (613, 61300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 40),
  -- Cubchoo - Shadow Claw - TM061
  (613, 61300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 41),
  -- Cubchoo - Body Slam - TM066
  (613, 61300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Cubchoo - Ice Punch - TM069
  (613, 61300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 43),
  -- Cubchoo - Sleep Talk - TM070
  (613, 61300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Cubchoo - Grass Knot - TM081
  (613, 61300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Cubchoo - Rest - TM085
  (613, 61300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Cubchoo - Rock Slide - TM086
  (613, 61300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Cubchoo - Taunt - TM087
  (613, 61300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Cubchoo - Body Press - TM089
  (613, 61300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 49),
  -- Cubchoo - Substitute - TM103
  (613, 61300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Cubchoo - X-Scissor - TM105
  (613, 61300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 51),
  -- Cubchoo - Crunch - TM108
  (613, 61300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 52),
  -- Cubchoo - Liquidation - TM110
  (613, 61300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 53),
  -- Cubchoo - Heavy Slam - TM121
  (613, 61300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 54),
  -- Cubchoo - Encore - TM122
  (613, 61300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 55),
  -- Cubchoo - Surf - TM123
  (613, 61300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 56),
  -- Cubchoo - Play Rough - TM127
  (613, 61300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 57),
  -- Cubchoo - Ice Beam - TM135
  (613, 61300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 58),
  -- Cubchoo - Blizzard - TM143
  (613, 61300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 59),
  -- Cubchoo - Tera Blast - TM171
  (613, 61300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Cubchoo - Focus Punch - Egg
  (613, 61300, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cubchoo - Yawn - Egg
  (613, 61300, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cubchoo - Night Slash - Egg
  (613, 61300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Beartic - Growl - Level 1
  (614, 61400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beartic - Fury Swipes - Level 1
  (614, 61400, 154, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Beartic - Powder Snow - Level 1
  (614, 61400, 181, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Beartic - Endure - Level 1
  (614, 61400, 203, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Beartic - Charm - Level 1
  (614, 61400, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Beartic - Aqua Jet - Level 1
  (614, 61400, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Beartic - Icy Wind - Level 9
  (614, 61400, 196, 23, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Beartic - Play Nice - Level 12
  (614, 61400, 589, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Beartic - Brine - Level 15
  (614, 61400, 362, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Beartic - Frost Breath - Level 18
  (614, 61400, 524, 23, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Beartic - Slash - Level 21
  (614, 61400, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Beartic - Flail - Level 24
  (614, 61400, 175, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Beartic - Swagger - Level 27
  (614, 61400, 207, 23, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Beartic - Snowscape - Level 30
  (614, 61400, 883, 23, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Beartic - Thrash - Level 33
  (614, 61400, 37, 23, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Beartic - Rest - Level 36
  (614, 61400, 156, 23, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Beartic - Blizzard - Level 41
  (614, 61400, 59, 23, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Beartic - Sheer Cold - Level 46
  (614, 61400, 329, 23, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Beartic - Superpower - Level 51
  (614, 61400, 276, 23, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Beartic - Take Down - TM001
  (614, 61400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Beartic - Charm - TM002
  (614, 61400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 21),
  -- Beartic - Mud-Slap - TM005
  (614, 61400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 22),
  -- Beartic - Scary Face - TM006
  (614, 61400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 23),
  -- Beartic - Protect - TM007
  (614, 61400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Beartic - Ice Fang - TM010
  (614, 61400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 25),
  -- Beartic - Water Pulse - TM011
  (614, 61400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 26),
  -- Beartic - Low Kick - TM012
  (614, 61400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 27),
  -- Beartic - Thief - TM018
  (614, 61400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 28),
  -- Beartic - Trailblaze - TM020
  (614, 61400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Beartic - Chilling Water - TM022
  (614, 61400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 30),
  -- Beartic - Facade - TM025
  (614, 61400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Beartic - Aerial Ace - TM027
  (614, 61400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 32),
  -- Beartic - Bulldoze - TM028
  (614, 61400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Beartic - Snarl - TM030
  (614, 61400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 34),
  -- Beartic - Metal Claw - TM031
  (614, 61400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 35),
  -- Beartic - Icy Wind - TM034
  (614, 61400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 36),
  -- Beartic - Mud Shot - TM035
  (614, 61400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 37),
  -- Beartic - Rock Tomb - TM036
  (614, 61400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 38),
  -- Beartic - Fling - TM043
  (614, 61400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 39),
  -- Beartic - Avalanche - TM046
  (614, 61400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 40),
  -- Beartic - Endure - TM047
  (614, 61400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 41),
  -- Beartic - Rain Dance - TM050
  (614, 61400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 42),
  -- Beartic - Snowscape - TM052
  (614, 61400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 43),
  -- Beartic - Dig - TM055
  (614, 61400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 44),
  -- Beartic - Brick Break - TM058
  (614, 61400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 45),
  -- Beartic - Shadow Claw - TM061
  (614, 61400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 46),
  -- Beartic - Bulk Up - TM064
  (614, 61400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 47),
  -- Beartic - Body Slam - TM066
  (614, 61400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 48),
  -- Beartic - Ice Punch - TM069
  (614, 61400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 49),
  -- Beartic - Sleep Talk - TM070
  (614, 61400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 50),
  -- Beartic - Grass Knot - TM081
  (614, 61400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 51),
  -- Beartic - Rest - TM085
  (614, 61400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 52),
  -- Beartic - Rock Slide - TM086
  (614, 61400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 53),
  -- Beartic - Taunt - TM087
  (614, 61400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 54),
  -- Beartic - Swords Dance - TM088
  (614, 61400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 55),
  -- Beartic - Body Press - TM089
  (614, 61400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 56),
  -- Beartic - Substitute - TM103
  (614, 61400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 57),
  -- Beartic - X-Scissor - TM105
  (614, 61400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 58),
  -- Beartic - Crunch - TM108
  (614, 61400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 59),
  -- Beartic - Liquidation - TM110
  (614, 61400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 60),
  -- Beartic - Heavy Slam - TM121
  (614, 61400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 61),
  -- Beartic - Encore - TM122
  (614, 61400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 62),
  -- Beartic - Surf - TM123
  (614, 61400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 63),
  -- Beartic - Play Rough - TM127
  (614, 61400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 64),
  -- Beartic - Reversal - TM134
  (614, 61400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 65),
  -- Beartic - Ice Beam - TM135
  (614, 61400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 66),
  -- Beartic - Blizzard - TM143
  (614, 61400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 67),
  -- Beartic - Earthquake - TM149
  (614, 61400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 68),
  -- Beartic - Stone Edge - TM150
  (614, 61400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 69),
  -- Beartic - Giga Impact - TM152
  (614, 61400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 70),
  -- Beartic - Focus Blast - TM158
  (614, 61400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 71),
  -- Beartic - Hyper Beam - TM163
  (614, 61400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 72),
  -- Beartic - Close Combat - TM167
  (614, 61400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 73),
  -- Beartic - Tera Blast - TM171
  (614, 61400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Beartic - Focus Punch - Egg
  (614, 61400, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Beartic - Yawn - Egg
  (614, 61400, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Beartic - Night Slash - Egg
  (614, 61400, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Beartic - Icicle Crash - Evolution
  (614, 61400, 556, 23, NULL, 7, NULL, NULL, NULL, NULL, 78),
  -- Cryogonal - Bind - Level 1
  (615, 61500, 20, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cryogonal - Ice Shard - Level 1
  (615, 61500, 420, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cryogonal - Confuse Ray - Level 4
  (615, 61500, 109, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cryogonal - Rapid Spin - Level 8
  (615, 61500, 229, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cryogonal - Icy Wind - Level 12
  (615, 61500, 196, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cryogonal - Mist - Level 16
  (615, 61500, 54, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cryogonal - Haze - Level 16
  (615, 61500, 114, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cryogonal - Ancient Power - Level 20
  (615, 61500, 246, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Cryogonal - Aurora Beam - Level 24
  (615, 61500, 62, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cryogonal - Slash - Level 28
  (615, 61500, 163, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Cryogonal - Night Slash - Level 32
  (615, 61500, 400, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Cryogonal - Freeze-Dry - Level 36
  (615, 61500, 573, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Cryogonal - Light Screen - Level 40
  (615, 61500, 113, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Cryogonal - Reflect - Level 40
  (615, 61500, 115, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Cryogonal - Recover - Level 44
  (615, 61500, 105, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Cryogonal - Ice Beam - Level 48
  (615, 61500, 58, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Cryogonal - Acid Armor - Level 52
  (615, 61500, 151, 23, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Cryogonal - Solar Beam - Level 56
  (615, 61500, 76, 23, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Cryogonal - Sheer Cold - Level 60
  (615, 61500, 329, 23, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Cryogonal - Take Down - TM001
  (615, 61500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Cryogonal - Scary Face - TM006
  (615, 61500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Cryogonal - Protect - TM007
  (615, 61500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Cryogonal - Water Pulse - TM011
  (615, 61500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Cryogonal - Acrobatics - TM014
  (615, 61500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 24),
  -- Cryogonal - Confuse Ray - TM017
  (615, 61500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 25),
  -- Cryogonal - Chilling Water - TM022
  (615, 61500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Cryogonal - Facade - TM025
  (615, 61500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Cryogonal - Icy Wind - TM034
  (615, 61500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Cryogonal - Avalanche - TM046
  (615, 61500, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Cryogonal - Endure - TM047
  (615, 61500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Cryogonal - Rain Dance - TM050
  (615, 61500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Cryogonal - Snowscape - TM052
  (615, 61500, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 32),
  -- Cryogonal - Body Slam - TM066
  (615, 61500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Cryogonal - Sleep Talk - TM070
  (615, 61500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Cryogonal - Reflect - TM074
  (615, 61500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Cryogonal - Light Screen - TM075
  (615, 61500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Cryogonal - Poison Jab - TM083
  (615, 61500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Cryogonal - Rest - TM085
  (615, 61500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Cryogonal - Flash Cannon - TM093
  (615, 61500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Cryogonal - Substitute - TM103
  (615, 61500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Cryogonal - Iron Defense - TM104
  (615, 61500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Cryogonal - Ice Spinner - TM124
  (615, 61500, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 42),
  -- Cryogonal - Ice Beam - TM135
  (615, 61500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Cryogonal - Blizzard - TM143
  (615, 61500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Cryogonal - Giga Impact - TM152
  (615, 61500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Cryogonal - Hyper Beam - TM163
  (615, 61500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 46),
  -- Cryogonal - Solar Beam - TM168
  (615, 61500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Cryogonal - Tera Blast - TM171
  (615, 61500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Cryogonal - Explosion - Egg
  (615, 61500, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cryogonal - Frost Breath - Egg
  (615, 61500, 524, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cryogonal - Aurora Veil - Egg
  (615, 61500, 694, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mienfoo - Pound - Level 1
  (619, 61900, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienfoo - Detect - Level 1
  (619, 61900, 197, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mienfoo - Fake Out - Level 5
  (619, 61900, 252, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Mienfoo - Reversal - Level 10
  (619, 61900, 179, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mienfoo - Fury Swipes - Level 15
  (619, 61900, 154, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Mienfoo - Quick Guard - Level 20
  (619, 61900, 501, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Mienfoo - Force Palm - Level 25
  (619, 61900, 395, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Mienfoo - U-turn - Level 30
  (619, 61900, 369, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Mienfoo - Drain Punch - Level 35
  (619, 61900, 409, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Mienfoo - Hone Claws - Level 40
  (619, 61900, 468, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mienfoo - Aura Sphere - Level 45
  (619, 61900, 396, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Mienfoo - Bounce - Level 51
  (619, 61900, 340, 23, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Mienfoo - Calm Mind - Level 55
  (619, 61900, 347, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Mienfoo - High Jump Kick - Level 60
  (619, 61900, 136, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Mienfoo - Take Down - TM001
  (619, 61900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Mienfoo - Agility - TM004
  (619, 61900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Mienfoo - Protect - TM007
  (619, 61900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Mienfoo - Low Kick - TM012
  (619, 61900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Mienfoo - Acrobatics - TM014
  (619, 61900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Mienfoo - Trailblaze - TM020
  (619, 61900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Mienfoo - Facade - TM025
  (619, 61900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Mienfoo - Aerial Ace - TM027
  (619, 61900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Mienfoo - Swift - TM032
  (619, 61900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Mienfoo - Rock Tomb - TM036
  (619, 61900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Mienfoo - Low Sweep - TM039
  (619, 61900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Mienfoo - Fling - TM043
  (619, 61900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Mienfoo - Endure - TM047
  (619, 61900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Mienfoo - Sunny Day - TM049
  (619, 61900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Mienfoo - Rain Dance - TM050
  (619, 61900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Mienfoo - Dig - TM055
  (619, 61900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Mienfoo - Brick Break - TM058
  (619, 61900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Mienfoo - U-turn - TM060
  (619, 61900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Mienfoo - Bulk Up - TM064
  (619, 61900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 33),
  -- Mienfoo - Sleep Talk - TM070
  (619, 61900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Mienfoo - Drain Punch - TM073
  (619, 61900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 35),
  -- Mienfoo - Grass Knot - TM081
  (619, 61900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Mienfoo - Poison Jab - TM083
  (619, 61900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Mienfoo - Rest - TM085
  (619, 61900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Mienfoo - Taunt - TM087
  (619, 61900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Mienfoo - Swords Dance - TM088
  (619, 61900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Mienfoo - Substitute - TM103
  (619, 61900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Mienfoo - Aura Sphere - TM112
  (619, 61900, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 42),
  -- Mienfoo - Calm Mind - TM129
  (619, 61900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Mienfoo - Helping Hand - TM130
  (619, 61900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Mienfoo - Baton Pass - TM132
  (619, 61900, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 45),
  -- Mienfoo - Reversal - TM134
  (619, 61900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 46),
  -- Mienfoo - Stone Edge - TM150
  (619, 61900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 47),
  -- Mienfoo - Focus Blast - TM158
  (619, 61900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 48),
  -- Mienfoo - Close Combat - TM167
  (619, 61900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 49),
  -- Mienfoo - Tera Blast - TM171
  (619, 61900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Mienfoo - Focus Punch - Egg
  (619, 61900, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mienfoo - Knock Off - Egg
  (619, 61900, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mienfoo - Feint - Egg
  (619, 61900, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mienshao - Pound - Level 1
  (620, 62000, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mienshao - Reversal - Level 1
  (620, 62000, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mienshao - Detect - Level 1
  (620, 62000, 197, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mienshao - Fake Out - Level 1
  (620, 62000, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mienshao - Quick Guard - Level 1
  (620, 62000, 501, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mienshao - Fury Swipes - Level 15
  (620, 62000, 154, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mienshao - Wide Guard - Level 20
  (620, 62000, 469, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mienshao - Force Palm - Level 25
  (620, 62000, 395, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Mienshao - U-turn - Level 30
  (620, 62000, 369, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Mienshao - Drain Punch - Level 35
  (620, 62000, 409, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Mienshao - Hone Claws - Level 40
  (620, 62000, 468, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Mienshao - Aura Sphere - Level 45
  (620, 62000, 396, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Mienshao - Bounce - Level 53
  (620, 62000, 340, 23, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Mienshao - Calm Mind - Level 59
  (620, 62000, 347, 23, NULL, 1, 59, NULL, NULL, NULL, 14),
  -- Mienshao - High Jump Kick - Level 66
  (620, 62000, 136, 23, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Mienshao - Take Down - TM001
  (620, 62000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Mienshao - Agility - TM004
  (620, 62000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Mienshao - Protect - TM007
  (620, 62000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Mienshao - Low Kick - TM012
  (620, 62000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Mienshao - Acrobatics - TM014
  (620, 62000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Mienshao - Trailblaze - TM020
  (620, 62000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Mienshao - Facade - TM025
  (620, 62000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Mienshao - Aerial Ace - TM027
  (620, 62000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Mienshao - Swift - TM032
  (620, 62000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Mienshao - Rock Tomb - TM036
  (620, 62000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Mienshao - Low Sweep - TM039
  (620, 62000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Mienshao - Fling - TM043
  (620, 62000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Mienshao - Endure - TM047
  (620, 62000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Mienshao - Sunny Day - TM049
  (620, 62000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Mienshao - Rain Dance - TM050
  (620, 62000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Mienshao - Dig - TM055
  (620, 62000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Mienshao - Brick Break - TM058
  (620, 62000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Mienshao - U-turn - TM060
  (620, 62000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Mienshao - Bulk Up - TM064
  (620, 62000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Mienshao - Sleep Talk - TM070
  (620, 62000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Mienshao - Drain Punch - TM073
  (620, 62000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 36),
  -- Mienshao - Grass Knot - TM081
  (620, 62000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Mienshao - Poison Jab - TM083
  (620, 62000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Mienshao - Rest - TM085
  (620, 62000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Mienshao - Taunt - TM087
  (620, 62000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Mienshao - Swords Dance - TM088
  (620, 62000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Mienshao - Substitute - TM103
  (620, 62000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Mienshao - Aura Sphere - TM112
  (620, 62000, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 43),
  -- Mienshao - Ice Spinner - TM124
  (620, 62000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 44),
  -- Mienshao - Calm Mind - TM129
  (620, 62000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Mienshao - Helping Hand - TM130
  (620, 62000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Mienshao - Baton Pass - TM132
  (620, 62000, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 47),
  -- Mienshao - Reversal - TM134
  (620, 62000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Mienshao - Stone Edge - TM150
  (620, 62000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Mienshao - Giga Impact - TM152
  (620, 62000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Mienshao - Focus Blast - TM158
  (620, 62000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 51),
  -- Mienshao - Hyper Beam - TM163
  (620, 62000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Mienshao - Close Combat - TM167
  (620, 62000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Mienshao - Tera Blast - TM171
  (620, 62000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Mienshao - Focus Punch - Egg
  (620, 62000, 264, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mienshao - Knock Off - Egg
  (620, 62000, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mienshao - Feint - Egg
  (620, 62000, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Golett - Mud-Slap - Level 1
  (622, 62200, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golett - Astonish - Level 1
  (622, 62200, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golett - Defense Curl - Level 4
  (622, 62200, 111, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Golett - Pound - Level 8
  (622, 62200, 1, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Golett - Shadow Punch - Level 12
  (622, 62200, 325, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Golett - Curse - Level 16
  (622, 62200, 174, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Golett - Night Shade - Level 20
  (622, 62200, 101, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Golett - Stomping Tantrum - Level 24
  (622, 62200, 707, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Golett - Iron Defense - Level 28
  (622, 62200, 334, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Golett - Mega Punch - Level 32
  (622, 62200, 5, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Golett - Shadow Ball - Level 36
  (622, 62200, 247, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Golett - Heavy Slam - Level 40
  (622, 62200, 484, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Golett - Phantom Force - Level 44
  (622, 62200, 566, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Golett - Hammer Arm - Level 48
  (622, 62200, 359, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Golett - Earthquake - Level 52
  (622, 62200, 89, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Golett - Dynamic Punch - Level 56
  (622, 62200, 223, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Golett - Take Down - TM001
  (622, 62200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Golett - Mud-Slap - TM005
  (622, 62200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Golett - Protect - TM007
  (622, 62200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Golett - Low Kick - TM012
  (622, 62200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Golett - Confuse Ray - TM017
  (622, 62200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Golett - Thief - TM018
  (622, 62200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Golett - Facade - TM025
  (622, 62200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Golett - Bulldoze - TM028
  (622, 62200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Golett - Hex - TM029
  (622, 62200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Golett - Icy Wind - TM034
  (622, 62200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Golett - Rock Tomb - TM036
  (622, 62200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Golett - Low Sweep - TM039
  (622, 62200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Golett - Night Shade - TM042
  (622, 62200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 29),
  -- Golett - Fling - TM043
  (622, 62200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Golett - Endure - TM047
  (622, 62200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Golett - Sunny Day - TM049
  (622, 62200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Golett - Rain Dance - TM050
  (622, 62200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Golett - Sandstorm - TM051
  (622, 62200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Golett - Dig - TM055
  (622, 62200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Golett - Brick Break - TM058
  (622, 62200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Golett - Body Slam - TM066
  (622, 62200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Golett - Fire Punch - TM067
  (622, 62200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Golett - Thunder Punch - TM068
  (622, 62200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Golett - Ice Punch - TM069
  (622, 62200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Golett - Sleep Talk - TM070
  (622, 62200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Golett - Drain Punch - TM073
  (622, 62200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Golett - Reflect - TM074
  (622, 62200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 43),
  -- Golett - Grass Knot - TM081
  (622, 62200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Golett - Stomping Tantrum - TM084
  (622, 62200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Golett - Rest - TM085
  (622, 62200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Golett - Rock Slide - TM086
  (622, 62200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Golett - Imprison - TM092
  (622, 62200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 48),
  -- Golett - Substitute - TM103
  (622, 62200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Golett - Iron Defense - TM104
  (622, 62200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 50),
  -- Golett - Shadow Ball - TM114
  (622, 62200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Golett - Stealth Rock - TM116
  (622, 62200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 52),
  -- Golett - Psychic - TM120
  (622, 62200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 53),
  -- Golett - Heavy Slam - TM121
  (622, 62200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 54),
  -- Golett - Helping Hand - TM130
  (622, 62200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Golett - Earth Power - TM133
  (622, 62200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 56),
  -- Golett - Ice Beam - TM135
  (622, 62200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 57),
  -- Golett - Earthquake - TM149
  (622, 62200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Golett - Phantom Force - TM151
  (622, 62200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 59),
  -- Golett - Focus Blast - TM158
  (622, 62200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Golett - Tera Blast - TM171
  (622, 62200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Golurk - Pound - Level 1
  (623, 62300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golurk - Defense Curl - Level 1
  (623, 62300, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golurk - Astonish - Level 1
  (623, 62300, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golurk - High Horsepower - Level 1
  (623, 62300, 667, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golurk - Shadow Punch - Level 12
  (623, 62300, 325, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Golurk - Curse - Level 16
  (623, 62300, 174, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Golurk - Night Shade - Level 20
  (623, 62300, 101, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Golurk - Stomping Tantrum - Level 24
  (623, 62300, 707, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Golurk - Iron Defense - Level 28
  (623, 62300, 334, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Golurk - Mega Punch - Level 32
  (623, 62300, 5, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Golurk - Shadow Ball - Level 36
  (623, 62300, 247, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Golurk - Heavy Slam - Level 40
  (623, 62300, 484, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Golurk - Phantom Force - Level 46
  (623, 62300, 566, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Golurk - Hammer Arm - Level 52
  (623, 62300, 359, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Golurk - Earthquake - Level 58
  (623, 62300, 89, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Golurk - Dynamic Punch - Level 64
  (623, 62300, 223, 23, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Golurk - Take Down - TM001
  (623, 62300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Golurk - Mud-Slap - TM005
  (623, 62300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Golurk - Protect - TM007
  (623, 62300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Golurk - Low Kick - TM012
  (623, 62300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Golurk - Confuse Ray - TM017
  (623, 62300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Golurk - Thief - TM018
  (623, 62300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Golurk - Charge Beam - TM023
  (623, 62300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Golurk - Facade - TM025
  (623, 62300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Golurk - Bulldoze - TM028
  (623, 62300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Golurk - Hex - TM029
  (623, 62300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Golurk - Icy Wind - TM034
  (623, 62300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Golurk - Rock Tomb - TM036
  (623, 62300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Golurk - Low Sweep - TM039
  (623, 62300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Golurk - Night Shade - TM042
  (623, 62300, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Golurk - Fling - TM043
  (623, 62300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Golurk - Endure - TM047
  (623, 62300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Golurk - Sunny Day - TM049
  (623, 62300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Golurk - Rain Dance - TM050
  (623, 62300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Golurk - Sandstorm - TM051
  (623, 62300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Golurk - Dig - TM055
  (623, 62300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Golurk - Brick Break - TM058
  (623, 62300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Golurk - Zen Headbutt - TM059
  (623, 62300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 38),
  -- Golurk - Body Slam - TM066
  (623, 62300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Golurk - Fire Punch - TM067
  (623, 62300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Golurk - Thunder Punch - TM068
  (623, 62300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Golurk - Ice Punch - TM069
  (623, 62300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Golurk - Sleep Talk - TM070
  (623, 62300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Golurk - Drain Punch - TM073
  (623, 62300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Golurk - Reflect - TM074
  (623, 62300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 45),
  -- Golurk - Grass Knot - TM081
  (623, 62300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 46),
  -- Golurk - Stomping Tantrum - TM084
  (623, 62300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 47),
  -- Golurk - Rest - TM085
  (623, 62300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Golurk - Rock Slide - TM086
  (623, 62300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 49),
  -- Golurk - Body Press - TM089
  (623, 62300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Golurk - Imprison - TM092
  (623, 62300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 51),
  -- Golurk - Flash Cannon - TM093
  (623, 62300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 52),
  -- Golurk - Fly - TM097
  (623, 62300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 53),
  -- Golurk - Substitute - TM103
  (623, 62300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Golurk - Iron Defense - TM104
  (623, 62300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 55),
  -- Golurk - Trick - TM109
  (623, 62300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 56),
  -- Golurk - Shadow Ball - TM114
  (623, 62300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Golurk - Stealth Rock - TM116
  (623, 62300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 58),
  -- Golurk - Psychic - TM120
  (623, 62300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 59),
  -- Golurk - Heavy Slam - TM121
  (623, 62300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 60),
  -- Golurk - Thunderbolt - TM126
  (623, 62300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 61),
  -- Golurk - Helping Hand - TM130
  (623, 62300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 62),
  -- Golurk - Earth Power - TM133
  (623, 62300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 63),
  -- Golurk - Ice Beam - TM135
  (623, 62300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 64),
  -- Golurk - Earthquake - TM149
  (623, 62300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 65),
  -- Golurk - Stone Edge - TM150
  (623, 62300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 66),
  -- Golurk - Phantom Force - TM151
  (623, 62300, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 67),
  -- Golurk - Giga Impact - TM152
  (623, 62300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Golurk - Focus Blast - TM158
  (623, 62300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 69),
  -- Golurk - Hyper Beam - TM163
  (623, 62300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 70),
  -- Golurk - Close Combat - TM167
  (623, 62300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 71),
  -- Golurk - Solar Beam - TM168
  (623, 62300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 72),
  -- Golurk - Tera Blast - TM171
  (623, 62300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 73),
  -- Golurk - Mud-Slap - Reminder
  (623, 62300, 189, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Golurk - Focus Punch - Reminder
  (623, 62300, 264, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Pawniard - Scratch - Level 1
  (624, 62400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawniard - Leer - Level 1
  (624, 62400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pawniard - Fury Cutter - Level 5
  (624, 62400, 210, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pawniard - Metal Claw - Level 10
  (624, 62400, 232, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pawniard - Torment - Level 15
  (624, 62400, 259, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pawniard - Scary Face - Level 20
  (624, 62400, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Pawniard - Assurance - Level 25
  (624, 62400, 372, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pawniard - Metal Sound - Level 30
  (624, 62400, 319, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Pawniard - Slash - Level 35
  (624, 62400, 163, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Pawniard - Night Slash - Level 40
  (624, 62400, 400, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Pawniard - Iron Defense - Level 45
  (624, 62400, 334, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Pawniard - Retaliate - Level 50
  (624, 62400, 514, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Pawniard - Iron Head - Level 55
  (624, 62400, 442, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Pawniard - Swords Dance - Level 60
  (624, 62400, 14, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Pawniard - Guillotine - Level 65
  (624, 62400, 12, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Pawniard - Take Down - TM001
  (624, 62400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Pawniard - Scary Face - TM006
  (624, 62400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Pawniard - Protect - TM007
  (624, 62400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Pawniard - Low Kick - TM012
  (624, 62400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Pawniard - Thief - TM018
  (624, 62400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Pawniard - Facade - TM025
  (624, 62400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Pawniard - Aerial Ace - TM027
  (624, 62400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Pawniard - Snarl - TM030
  (624, 62400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Pawniard - Metal Claw - TM031
  (624, 62400, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Pawniard - Rock Tomb - TM036
  (624, 62400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Pawniard - Low Sweep - TM039
  (624, 62400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Pawniard - Fling - TM043
  (624, 62400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Pawniard - Endure - TM047
  (624, 62400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Pawniard - Rain Dance - TM050
  (624, 62400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Pawniard - Sandstorm - TM051
  (624, 62400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Pawniard - Dig - TM055
  (624, 62400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Pawniard - False Swipe - TM057
  (624, 62400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Pawniard - Brick Break - TM058
  (624, 62400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Pawniard - Shadow Claw - TM061
  (624, 62400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Pawniard - Foul Play - TM062
  (624, 62400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Pawniard - Air Slash - TM065
  (624, 62400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 36),
  -- Pawniard - Sleep Talk - TM070
  (624, 62400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Pawniard - Grass Knot - TM081
  (624, 62400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Pawniard - Thunder Wave - TM082
  (624, 62400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Pawniard - Poison Jab - TM083
  (624, 62400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 40),
  -- Pawniard - Rest - TM085
  (624, 62400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Pawniard - Taunt - TM087
  (624, 62400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Pawniard - Swords Dance - TM088
  (624, 62400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Pawniard - Flash Cannon - TM093
  (624, 62400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Pawniard - Dark Pulse - TM094
  (624, 62400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 45),
  -- Pawniard - Iron Head - TM099
  (624, 62400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 46),
  -- Pawniard - Substitute - TM103
  (624, 62400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Pawniard - Iron Defense - TM104
  (624, 62400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 48),
  -- Pawniard - X-Scissor - TM105
  (624, 62400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 49),
  -- Pawniard - Stealth Rock - TM116
  (624, 62400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Pawniard - Stone Edge - TM150
  (624, 62400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 51),
  -- Pawniard - Steel Beam - TM170
  (624, 62400, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 52),
  -- Pawniard - Tera Blast - TM171
  (624, 62400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Pawniard - Headbutt - Egg
  (624, 62400, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pawniard - Mean Look - Egg
  (624, 62400, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pawniard - Sucker Punch - Egg
  (624, 62400, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pawniard - Quick Guard - Egg
  (624, 62400, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Bisharp - Scratch - Level 1
  (625, 62500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bisharp - Leer - Level 1
  (625, 62500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bisharp - Fury Cutter - Level 1
  (625, 62500, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bisharp - Metal Claw - Level 1
  (625, 62500, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bisharp - Metal Burst - Level 1
  (625, 62500, 368, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bisharp - Torment - Level 15
  (625, 62500, 259, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Bisharp - Scary Face - Level 20
  (625, 62500, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Bisharp - Assurance - Level 25
  (625, 62500, 372, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Bisharp - Metal Sound - Level 30
  (625, 62500, 319, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Bisharp - Slash - Level 35
  (625, 62500, 163, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bisharp - Night Slash - Level 40
  (625, 62500, 400, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Bisharp - Iron Defense - Level 45
  (625, 62500, 334, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Bisharp - Retaliate - Level 50
  (625, 62500, 514, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Bisharp - Iron Head - Level 57
  (625, 62500, 442, 23, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Bisharp - Swords Dance - Level 64
  (625, 62500, 14, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Bisharp - Guillotine - Level 71
  (625, 62500, 12, 23, NULL, 1, 71, NULL, NULL, NULL, 16),
  -- Bisharp - Take Down - TM001
  (625, 62500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Bisharp - Scary Face - TM006
  (625, 62500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Bisharp - Protect - TM007
  (625, 62500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Bisharp - Low Kick - TM012
  (625, 62500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Bisharp - Thief - TM018
  (625, 62500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Bisharp - Facade - TM025
  (625, 62500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Bisharp - Aerial Ace - TM027
  (625, 62500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Bisharp - Snarl - TM030
  (625, 62500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Bisharp - Metal Claw - TM031
  (625, 62500, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Bisharp - Rock Tomb - TM036
  (625, 62500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Bisharp - Low Sweep - TM039
  (625, 62500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Bisharp - Fling - TM043
  (625, 62500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Bisharp - Endure - TM047
  (625, 62500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Bisharp - Rain Dance - TM050
  (625, 62500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Bisharp - Sandstorm - TM051
  (625, 62500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Bisharp - Dig - TM055
  (625, 62500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Bisharp - False Swipe - TM057
  (625, 62500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 33),
  -- Bisharp - Brick Break - TM058
  (625, 62500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Bisharp - Shadow Claw - TM061
  (625, 62500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Bisharp - Foul Play - TM062
  (625, 62500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Bisharp - Air Slash - TM065
  (625, 62500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Bisharp - Sleep Talk - TM070
  (625, 62500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Bisharp - Grass Knot - TM081
  (625, 62500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Bisharp - Thunder Wave - TM082
  (625, 62500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Bisharp - Poison Jab - TM083
  (625, 62500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Bisharp - Rest - TM085
  (625, 62500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Bisharp - Taunt - TM087
  (625, 62500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Bisharp - Swords Dance - TM088
  (625, 62500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Bisharp - Flash Cannon - TM093
  (625, 62500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 45),
  -- Bisharp - Dark Pulse - TM094
  (625, 62500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 46),
  -- Bisharp - Iron Head - TM099
  (625, 62500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 47),
  -- Bisharp - Substitute - TM103
  (625, 62500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Bisharp - Iron Defense - TM104
  (625, 62500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 49),
  -- Bisharp - X-Scissor - TM105
  (625, 62500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 50),
  -- Bisharp - Stealth Rock - TM116
  (625, 62500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 51),
  -- Bisharp - Reversal - TM134
  (625, 62500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Bisharp - Stone Edge - TM150
  (625, 62500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 53),
  -- Bisharp - Giga Impact - TM152
  (625, 62500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Bisharp - Focus Blast - TM158
  (625, 62500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 55),
  -- Bisharp - Hyper Beam - TM163
  (625, 62500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Bisharp - Steel Beam - TM170
  (625, 62500, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Bisharp - Tera Blast - TM171
  (625, 62500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Bisharp - Headbutt - Egg
  (625, 62500, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bisharp - Mean Look - Egg
  (625, 62500, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Bisharp - Sucker Punch - Egg
  (625, 62500, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Bisharp - Quick Guard - Egg
  (625, 62500, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rufflet - Leer - Level 1
  (627, 62700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rufflet - Peck - Level 1
  (627, 62700, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rufflet - Hone Claws - Level 6
  (627, 62700, 468, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Rufflet - Wing Attack - Level 12
  (627, 62700, 17, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Rufflet - Tailwind - Level 18
  (627, 62700, 366, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Rufflet - Scary Face - Level 24
  (627, 62700, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Rufflet - Aerial Ace - Level 30
  (627, 62700, 332, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Rufflet - Slash - Level 36
  (627, 62700, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Rufflet - Whirlwind - Level 42
  (627, 62700, 18, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Rufflet - Crush Claw - Level 48
  (627, 62700, 306, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Rufflet - Air Slash - Level 55
  (627, 62700, 403, 23, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Rufflet - Defog - Level 60
  (627, 62700, 432, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Rufflet - Thrash - Level 66
  (627, 62700, 37, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Rufflet - Brave Bird - Level 72
  (627, 62700, 413, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Rufflet - Take Down - TM001
  (627, 62700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Rufflet - Agility - TM004
  (627, 62700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Rufflet - Scary Face - TM006
  (627, 62700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Rufflet - Protect - TM007
  (627, 62700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Rufflet - Acrobatics - TM014
  (627, 62700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Rufflet - Facade - TM025
  (627, 62700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Rufflet - Aerial Ace - TM027
  (627, 62700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Rufflet - Swift - TM032
  (627, 62700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Rufflet - Rock Tomb - TM036
  (627, 62700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Rufflet - Air Cutter - TM040
  (627, 62700, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Rufflet - Endure - TM047
  (627, 62700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Rufflet - Sunny Day - TM049
  (627, 62700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Rufflet - Rain Dance - TM050
  (627, 62700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Rufflet - Zen Headbutt - TM059
  (627, 62700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Rufflet - U-turn - TM060
  (627, 62700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 29),
  -- Rufflet - Shadow Claw - TM061
  (627, 62700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Rufflet - Bulk Up - TM064
  (627, 62700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Rufflet - Air Slash - TM065
  (627, 62700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Rufflet - Body Slam - TM066
  (627, 62700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Rufflet - Sleep Talk - TM070
  (627, 62700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Rufflet - Rest - TM085
  (627, 62700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Rufflet - Rock Slide - TM086
  (627, 62700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Rufflet - Fly - TM097
  (627, 62700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 37),
  -- Rufflet - Substitute - TM103
  (627, 62700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Rufflet - Tailwind - TM113
  (627, 62700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Rufflet - Heat Wave - TM118
  (627, 62700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Rufflet - Helping Hand - TM130
  (627, 62700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Rufflet - Hurricane - TM160
  (627, 62700, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 42),
  -- Rufflet - Brave Bird - TM164
  (627, 62700, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 43),
  -- Rufflet - Close Combat - TM167
  (627, 62700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 44),
  -- Rufflet - Tera Blast - TM171
  (627, 62700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Rufflet - Rock Smash - Egg
  (627, 62700, 249, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Rufflet - Roost - Egg
  (627, 62700, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Braviary - Wing Attack - Level 1
  (628, 62800, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braviary - Leer - Level 1
  (628, 62800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braviary - Peck - Level 1
  (628, 62800, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Braviary - Sky Attack - Level 1
  (628, 62800, 143, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Braviary - Hone Claws - Level 1
  (628, 62800, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Braviary - Tailwind - Level 18
  (628, 62800, 366, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Braviary - Scary Face - Level 24
  (628, 62800, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Braviary - Aerial Ace - Level 30
  (628, 62800, 332, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Braviary - Slash - Level 36
  (628, 62800, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Braviary - Whirlwind - Level 42
  (628, 62800, 18, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Braviary - Crush Claw - Level 48
  (628, 62800, 306, 23, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Braviary - Air Slash - Level 57
  (628, 62800, 403, 23, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Braviary - Defog - Level 64
  (628, 62800, 432, 23, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Braviary - Thrash - Level 72
  (628, 62800, 37, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Braviary - Take Down - TM001
  (628, 62800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Braviary - Agility - TM004
  (628, 62800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Braviary - Scary Face - TM006
  (628, 62800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Braviary - Protect - TM007
  (628, 62800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Braviary - Acrobatics - TM014
  (628, 62800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Braviary - Facade - TM025
  (628, 62800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Braviary - Aerial Ace - TM027
  (628, 62800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Braviary - Metal Claw - TM031
  (628, 62800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Braviary - Swift - TM032
  (628, 62800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Braviary - Rock Tomb - TM036
  (628, 62800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Braviary - Air Cutter - TM040
  (628, 62800, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Braviary - Endure - TM047
  (628, 62800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Braviary - Sunny Day - TM049
  (628, 62800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Braviary - Rain Dance - TM050
  (628, 62800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Braviary - Zen Headbutt - TM059
  (628, 62800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Braviary - U-turn - TM060
  (628, 62800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Braviary - Shadow Claw - TM061
  (628, 62800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Braviary - Bulk Up - TM064
  (628, 62800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 32),
  -- Braviary - Air Slash - TM065
  (628, 62800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 33),
  -- Braviary - Body Slam - TM066
  (628, 62800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Braviary - Sleep Talk - TM070
  (628, 62800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Braviary - Rest - TM085
  (628, 62800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Braviary - Rock Slide - TM086
  (628, 62800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Braviary - Fly - TM097
  (628, 62800, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 38),
  -- Braviary - Iron Head - TM099
  (628, 62800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Braviary - Substitute - TM103
  (628, 62800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Braviary - Tailwind - TM113
  (628, 62800, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 41),
  -- Braviary - Heat Wave - TM118
  (628, 62800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Braviary - Helping Hand - TM130
  (628, 62800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Braviary - Reversal - TM134
  (628, 62800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Braviary - Giga Impact - TM152
  (628, 62800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Braviary - Hurricane - TM160
  (628, 62800, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 46),
  -- Braviary - Hyper Beam - TM163
  (628, 62800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Braviary - Brave Bird - TM164
  (628, 62800, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 48),
  -- Braviary - Close Combat - TM167
  (628, 62800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 49),
  -- Braviary - Tera Blast - TM171
  (628, 62800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Braviary - Rock Smash - Egg
  (628, 62800, 249, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Braviary - Roost - Egg
  (628, 62800, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Braviary - Superpower - Evolution
  (628, 62800, 276, 23, NULL, 7, NULL, NULL, NULL, NULL, 53),
  -- Braviary (Hisuian Braviary) - Wing Attack - Level 1
  (628, 62801, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Braviary (Hisuian Braviary) - Leer - Level 1
  (628, 62801, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Braviary (Hisuian Braviary) - Peck - Level 1
  (628, 62801, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Braviary (Hisuian Braviary) - Sky Attack - Level 1
  (628, 62801, 143, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Braviary (Hisuian Braviary) - Superpower - Level 1
  (628, 62801, 276, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Braviary (Hisuian Braviary) - Hone Claws - Level 1
  (628, 62801, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Braviary (Hisuian Braviary) - Tailwind - Level 18
  (628, 62801, 366, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Braviary (Hisuian Braviary) - Scary Face - Level 24
  (628, 62801, 184, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Braviary (Hisuian Braviary) - Aerial Ace - Level 30
  (628, 62801, 332, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Braviary (Hisuian Braviary) - Slash - Level 36
  (628, 62801, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Braviary (Hisuian Braviary) - Whirlwind - Level 42
  (628, 62801, 18, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Braviary (Hisuian Braviary) - Crush Claw - Level 48
  (628, 62801, 306, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Braviary (Hisuian Braviary) - Air Slash - Level 57
  (628, 62801, 403, 23, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Braviary (Hisuian Braviary) - Defog - Level 64
  (628, 62801, 432, 23, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Braviary (Hisuian Braviary) - Thrash - Level 72
  (628, 62801, 37, 23, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Braviary (Hisuian Braviary) - Hurricane - Level 80
  (628, 62801, 542, 23, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Braviary (Hisuian Braviary) - Take Down - TM001
  (628, 62801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Braviary (Hisuian Braviary) - Agility - TM004
  (628, 62801, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Braviary (Hisuian Braviary) - Scary Face - TM006
  (628, 62801, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Braviary (Hisuian Braviary) - Protect - TM007
  (628, 62801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Braviary (Hisuian Braviary) - Acrobatics - TM014
  (628, 62801, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Braviary (Hisuian Braviary) - Psybeam - TM016
  (628, 62801, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Braviary (Hisuian Braviary) - Confuse Ray - TM017
  (628, 62801, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Braviary (Hisuian Braviary) - Facade - TM025
  (628, 62801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Braviary (Hisuian Braviary) - Aerial Ace - TM027
  (628, 62801, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Braviary (Hisuian Braviary) - Snarl - TM030
  (628, 62801, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Braviary (Hisuian Braviary) - Metal Claw - TM031
  (628, 62801, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 27),
  -- Braviary (Hisuian Braviary) - Swift - TM032
  (628, 62801, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Braviary (Hisuian Braviary) - Icy Wind - TM034
  (628, 62801, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Braviary (Hisuian Braviary) - Rock Tomb - TM036
  (628, 62801, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Braviary (Hisuian Braviary) - Air Cutter - TM040
  (628, 62801, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 31),
  -- Braviary (Hisuian Braviary) - Stored Power - TM041
  (628, 62801, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 32),
  -- Braviary (Hisuian Braviary) - Night Shade - TM042
  (628, 62801, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 33),
  -- Braviary (Hisuian Braviary) - Endure - TM047
  (628, 62801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Braviary (Hisuian Braviary) - Sunny Day - TM049
  (628, 62801, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Braviary (Hisuian Braviary) - Rain Dance - TM050
  (628, 62801, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Braviary (Hisuian Braviary) - Psyshock - TM054
  (628, 62801, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 37),
  -- Braviary (Hisuian Braviary) - Zen Headbutt - TM059
  (628, 62801, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 38),
  -- Braviary (Hisuian Braviary) - U-turn - TM060
  (628, 62801, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 39),
  -- Braviary (Hisuian Braviary) - Shadow Claw - TM061
  (628, 62801, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 40),
  -- Braviary (Hisuian Braviary) - Bulk Up - TM064
  (628, 62801, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 41),
  -- Braviary (Hisuian Braviary) - Air Slash - TM065
  (628, 62801, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 42),
  -- Braviary (Hisuian Braviary) - Body Slam - TM066
  (628, 62801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 43),
  -- Braviary (Hisuian Braviary) - Sleep Talk - TM070
  (628, 62801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 44),
  -- Braviary (Hisuian Braviary) - Dazzling Gleam - TM079
  (628, 62801, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 45),
  -- Braviary (Hisuian Braviary) - Rest - TM085
  (628, 62801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Braviary (Hisuian Braviary) - Rock Slide - TM086
  (628, 62801, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Braviary (Hisuian Braviary) - Fly - TM097
  (628, 62801, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 48),
  -- Braviary (Hisuian Braviary) - Substitute - TM103
  (628, 62801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Braviary (Hisuian Braviary) - Tailwind - TM113
  (628, 62801, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 50),
  -- Braviary (Hisuian Braviary) - Shadow Ball - TM114
  (628, 62801, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Braviary (Hisuian Braviary) - Hyper Voice - TM117
  (628, 62801, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 52),
  -- Braviary (Hisuian Braviary) - Heat Wave - TM118
  (628, 62801, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 53),
  -- Braviary (Hisuian Braviary) - Psychic - TM120
  (628, 62801, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Braviary (Hisuian Braviary) - Calm Mind - TM129
  (628, 62801, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Braviary (Hisuian Braviary) - Helping Hand - TM130
  (628, 62801, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Braviary (Hisuian Braviary) - Reversal - TM134
  (628, 62801, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 57),
  -- Braviary (Hisuian Braviary) - Psychic Terrain - TM138
  (628, 62801, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 58),
  -- Braviary (Hisuian Braviary) - Giga Impact - TM152
  (628, 62801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Braviary (Hisuian Braviary) - Hurricane - TM160
  (628, 62801, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 60),
  -- Braviary (Hisuian Braviary) - Hyper Beam - TM163
  (628, 62801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Braviary (Hisuian Braviary) - Brave Bird - TM164
  (628, 62801, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 62),
  -- Braviary (Hisuian Braviary) - Close Combat - TM167
  (628, 62801, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 63),
  -- Braviary (Hisuian Braviary) - Tera Blast - TM171
  (628, 62801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Braviary (Hisuian Braviary) - Rock Smash - Egg
  (628, 62801, 249, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Braviary (Hisuian Braviary) - Roost - Egg
  (628, 62801, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Braviary (Hisuian Braviary) - Esper Wing - Evolution
  (628, 62801, 840, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Vullaby - Gust - Level 1
  (629, 62900, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vullaby - Leer - Level 1
  (629, 62900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vullaby - Flatter - Level 6
  (629, 62900, 260, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Vullaby - Pluck - Level 12
  (629, 62900, 365, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Vullaby - Tailwind - Level 18
  (629, 62900, 366, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Vullaby - Knock Off - Level 24
  (629, 62900, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Vullaby - Iron Defense - Level 30
  (629, 62900, 334, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Vullaby - Whirlwind - Level 36
  (629, 62900, 18, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Vullaby - Air Slash - Level 42
  (629, 62900, 403, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Vullaby - Dark Pulse - Level 48
  (629, 62900, 399, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Vullaby - Nasty Plot - Level 54
  (629, 62900, 417, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Vullaby - Defog - Level 60
  (629, 62900, 432, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Vullaby - Attract - Level 66
  (629, 62900, 213, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Vullaby - Brave Bird - Level 72
  (629, 62900, 413, 23, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Vullaby - Take Down - TM001
  (629, 62900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Vullaby - Fake Tears - TM003
  (629, 62900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Vullaby - Scary Face - TM006
  (629, 62900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Vullaby - Protect - TM007
  (629, 62900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Vullaby - Thief - TM018
  (629, 62900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Vullaby - Facade - TM025
  (629, 62900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Vullaby - Snarl - TM030
  (629, 62900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 21),
  -- Vullaby - Swift - TM032
  (629, 62900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Vullaby - Rock Tomb - TM036
  (629, 62900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Vullaby - Air Cutter - TM040
  (629, 62900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Vullaby - Endure - TM047
  (629, 62900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Vullaby - Sunny Day - TM049
  (629, 62900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Vullaby - Rain Dance - TM050
  (629, 62900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Vullaby - U-turn - TM060
  (629, 62900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Vullaby - Foul Play - TM062
  (629, 62900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Vullaby - Air Slash - TM065
  (629, 62900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Vullaby - Sleep Talk - TM070
  (629, 62900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Vullaby - Rest - TM085
  (629, 62900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Vullaby - Taunt - TM087
  (629, 62900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Vullaby - Dark Pulse - TM094
  (629, 62900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 34),
  -- Vullaby - Fly - TM097
  (629, 62900, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 35),
  -- Vullaby - Substitute - TM103
  (629, 62900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Vullaby - Iron Defense - TM104
  (629, 62900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Vullaby - Tailwind - TM113
  (629, 62900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 38),
  -- Vullaby - Shadow Ball - TM114
  (629, 62900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 39),
  -- Vullaby - Heat Wave - TM118
  (629, 62900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Vullaby - Nasty Plot - TM140
  (629, 62900, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 41),
  -- Vullaby - Brave Bird - TM164
  (629, 62900, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 42),
  -- Vullaby - Tera Blast - TM171
  (629, 62900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Vullaby - Toxic - Egg
  (629, 62900, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vullaby - Mean Look - Egg
  (629, 62900, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vullaby - Roost - Egg
  (629, 62900, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mandibuzz - Gust - Level 1
  (630, 63000, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mandibuzz - Leer - Level 1
  (630, 63000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mandibuzz - Toxic - Level 1
  (630, 63000, 92, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mandibuzz - Sky Attack - Level 1
  (630, 63000, 143, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mandibuzz - Flatter - Level 1
  (630, 63000, 260, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mandibuzz - Pluck - Level 1
  (630, 63000, 365, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mandibuzz - Tailwind - Level 18
  (630, 63000, 366, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Mandibuzz - Knock Off - Level 24
  (630, 63000, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mandibuzz - Iron Defense - Level 30
  (630, 63000, 334, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Mandibuzz - Whirlwind - Level 36
  (630, 63000, 18, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Mandibuzz - Air Slash - Level 42
  (630, 63000, 403, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Mandibuzz - Dark Pulse - Level 48
  (630, 63000, 399, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Mandibuzz - Nasty Plot - Level 57
  (630, 63000, 417, 23, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Mandibuzz - Defog - Level 64
  (630, 63000, 432, 23, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Mandibuzz - Attract - Level 72
  (630, 63000, 213, 23, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Mandibuzz - Brave Bird - Level 80
  (630, 63000, 413, 23, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Mandibuzz - Take Down - TM001
  (630, 63000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Mandibuzz - Fake Tears - TM003
  (630, 63000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Mandibuzz - Scary Face - TM006
  (630, 63000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Mandibuzz - Protect - TM007
  (630, 63000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Mandibuzz - Acrobatics - TM014
  (630, 63000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Mandibuzz - Thief - TM018
  (630, 63000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Mandibuzz - Facade - TM025
  (630, 63000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Mandibuzz - Aerial Ace - TM027
  (630, 63000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Mandibuzz - Snarl - TM030
  (630, 63000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Mandibuzz - Swift - TM032
  (630, 63000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Mandibuzz - Rock Tomb - TM036
  (630, 63000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Mandibuzz - Air Cutter - TM040
  (630, 63000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 28),
  -- Mandibuzz - Endure - TM047
  (630, 63000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Mandibuzz - Sunny Day - TM049
  (630, 63000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Mandibuzz - Rain Dance - TM050
  (630, 63000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Mandibuzz - Sandstorm - TM051
  (630, 63000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Mandibuzz - U-turn - TM060
  (630, 63000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Mandibuzz - Foul Play - TM062
  (630, 63000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Mandibuzz - Air Slash - TM065
  (630, 63000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 35),
  -- Mandibuzz - Sleep Talk - TM070
  (630, 63000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Mandibuzz - Rest - TM085
  (630, 63000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Mandibuzz - Taunt - TM087
  (630, 63000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Mandibuzz - Dark Pulse - TM094
  (630, 63000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Mandibuzz - Fly - TM097
  (630, 63000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 40),
  -- Mandibuzz - Substitute - TM103
  (630, 63000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Mandibuzz - Iron Defense - TM104
  (630, 63000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Mandibuzz - Tailwind - TM113
  (630, 63000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 43),
  -- Mandibuzz - Shadow Ball - TM114
  (630, 63000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Mandibuzz - Heat Wave - TM118
  (630, 63000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Mandibuzz - Nasty Plot - TM140
  (630, 63000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 46),
  -- Mandibuzz - Giga Impact - TM152
  (630, 63000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Mandibuzz - Hurricane - TM160
  (630, 63000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 48),
  -- Mandibuzz - Hyper Beam - TM163
  (630, 63000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Mandibuzz - Brave Bird - TM164
  (630, 63000, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 50),
  -- Mandibuzz - Tera Blast - TM171
  (630, 63000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Mandibuzz - Toxic - Egg
  (630, 63000, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mandibuzz - Mean Look - Egg
  (630, 63000, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mandibuzz - Roost - Egg
  (630, 63000, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mandibuzz - Bone Rush - Evolution
  (630, 63000, 198, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Deino - Tackle - Level 1
  (633, 63300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deino - Focus Energy - Level 1
  (633, 63300, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deino - Dragon Breath - Level 4
  (633, 63300, 225, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deino - Bite - Level 8
  (633, 63300, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Deino - Roar - Level 12
  (633, 63300, 46, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Deino - Assurance - Level 16
  (633, 63300, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Deino - Headbutt - Level 20
  (633, 63300, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Deino - Work Up - Level 24
  (633, 63300, 526, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Deino - Slam - Level 28
  (633, 63300, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Deino - Crunch - Level 32
  (633, 63300, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Deino - Scary Face - Level 36
  (633, 63300, 184, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Deino - Dragon Pulse - Level 40
  (633, 63300, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Deino - Body Slam - Level 44
  (633, 63300, 34, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Deino - Hyper Voice - Level 48
  (633, 63300, 304, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Deino - Dragon Rush - Level 52
  (633, 63300, 407, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Deino - Nasty Plot - Level 56
  (633, 63300, 417, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Deino - Outrage - Level 60
  (633, 63300, 200, 23, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Deino - Take Down - TM001
  (633, 63300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Deino - Scary Face - TM006
  (633, 63300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Deino - Protect - TM007
  (633, 63300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Deino - Fire Fang - TM008
  (633, 63300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Deino - Thunder Fang - TM009
  (633, 63300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Deino - Ice Fang - TM010
  (633, 63300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Deino - Thief - TM018
  (633, 63300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Deino - Facade - TM025
  (633, 63300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Deino - Snarl - TM030
  (633, 63300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Deino - Dragon Tail - TM044
  (633, 63300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 27),
  -- Deino - Endure - TM047
  (633, 63300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Deino - Sunny Day - TM049
  (633, 63300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Deino - Rain Dance - TM050
  (633, 63300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Deino - Zen Headbutt - TM059
  (633, 63300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Deino - Body Slam - TM066
  (633, 63300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Deino - Sleep Talk - TM070
  (633, 63300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Deino - Thunder Wave - TM082
  (633, 63300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Deino - Rest - TM085
  (633, 63300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Deino - Taunt - TM087
  (633, 63300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Deino - Dark Pulse - TM094
  (633, 63300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Deino - Substitute - TM103
  (633, 63300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Deino - Crunch - TM108
  (633, 63300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Deino - Dragon Pulse - TM115
  (633, 63300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 40),
  -- Deino - Hyper Voice - TM117
  (633, 63300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Deino - Earth Power - TM133
  (633, 63300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 42),
  -- Deino - Nasty Plot - TM140
  (633, 63300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 43),
  -- Deino - Outrage - TM156
  (633, 63300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 44),
  -- Deino - Draco Meteor - TM169
  (633, 63300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 45),
  -- Deino - Tera Blast - TM171
  (633, 63300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Deino - Astonish - Egg
  (633, 63300, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deino - Head Smash - Egg
  (633, 63300, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deino - Double Hit - Egg
  (633, 63300, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deino - Belch - Egg
  (633, 63300, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zweilous - Tackle - Level 1
  (634, 63400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zweilous - Bite - Level 1
  (634, 63400, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zweilous - Focus Energy - Level 1
  (634, 63400, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zweilous - Dragon Breath - Level 1
  (634, 63400, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zweilous - Double Hit - Level 1
  (634, 63400, 458, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zweilous - Roar - Level 12
  (634, 63400, 46, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zweilous - Assurance - Level 16
  (634, 63400, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Zweilous - Headbutt - Level 20
  (634, 63400, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Zweilous - Work Up - Level 24
  (634, 63400, 526, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Zweilous - Slam - Level 28
  (634, 63400, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Zweilous - Crunch - Level 32
  (634, 63400, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Zweilous - Scary Face - Level 36
  (634, 63400, 184, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zweilous - Dragon Pulse - Level 40
  (634, 63400, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zweilous - Body Slam - Level 44
  (634, 63400, 34, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Zweilous - Hyper Voice - Level 48
  (634, 63400, 304, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Zweilous - Dragon Rush - Level 54
  (634, 63400, 407, 23, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Zweilous - Nasty Plot - Level 60
  (634, 63400, 417, 23, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Zweilous - Outrage - Level 66
  (634, 63400, 200, 23, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Zweilous - Take Down - TM001
  (634, 63400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Zweilous - Scary Face - TM006
  (634, 63400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Zweilous - Protect - TM007
  (634, 63400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Zweilous - Fire Fang - TM008
  (634, 63400, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Zweilous - Thunder Fang - TM009
  (634, 63400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Zweilous - Ice Fang - TM010
  (634, 63400, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Zweilous - Thief - TM018
  (634, 63400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Zweilous - Facade - TM025
  (634, 63400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Zweilous - Snarl - TM030
  (634, 63400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Zweilous - Dragon Tail - TM044
  (634, 63400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 28),
  -- Zweilous - Endure - TM047
  (634, 63400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Zweilous - Sunny Day - TM049
  (634, 63400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Zweilous - Rain Dance - TM050
  (634, 63400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Zweilous - Zen Headbutt - TM059
  (634, 63400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Zweilous - Body Slam - TM066
  (634, 63400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Zweilous - Sleep Talk - TM070
  (634, 63400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Zweilous - Thunder Wave - TM082
  (634, 63400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Zweilous - Stomping Tantrum - TM084
  (634, 63400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Zweilous - Rest - TM085
  (634, 63400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Zweilous - Taunt - TM087
  (634, 63400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Zweilous - Dark Pulse - TM094
  (634, 63400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Zweilous - Substitute - TM103
  (634, 63400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Zweilous - Crunch - TM108
  (634, 63400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Zweilous - Dragon Pulse - TM115
  (634, 63400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 42),
  -- Zweilous - Hyper Voice - TM117
  (634, 63400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 43),
  -- Zweilous - Helping Hand - TM130
  (634, 63400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Zweilous - Earth Power - TM133
  (634, 63400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Zweilous - Nasty Plot - TM140
  (634, 63400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 46),
  -- Zweilous - Outrage - TM156
  (634, 63400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Zweilous - Draco Meteor - TM169
  (634, 63400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 48),
  -- Zweilous - Tera Blast - TM171
  (634, 63400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Zweilous - Astonish - Egg
  (634, 63400, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Zweilous - Head Smash - Egg
  (634, 63400, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zweilous - Double Hit - Egg
  (634, 63400, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zweilous - Belch - Egg
  (634, 63400, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Hydreigon - Tackle - Level 1
  (635, 63500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hydreigon - Bite - Level 1
  (635, 63500, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hydreigon - Focus Energy - Level 1
  (635, 63500, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hydreigon - Tri Attack - Level 1
  (635, 63500, 161, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hydreigon - Dragon Breath - Level 1
  (635, 63500, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hydreigon - Double Hit - Level 1
  (635, 63500, 458, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hydreigon - Roar - Level 12
  (635, 63500, 46, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Hydreigon - Assurance - Level 16
  (635, 63500, 372, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Hydreigon - Headbutt - Level 20
  (635, 63500, 29, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Hydreigon - Work Up - Level 24
  (635, 63500, 526, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Hydreigon - Slam - Level 28
  (635, 63500, 21, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Hydreigon - Crunch - Level 32
  (635, 63500, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Hydreigon - Scary Face - Level 36
  (635, 63500, 184, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Hydreigon - Dragon Pulse - Level 40
  (635, 63500, 406, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Hydreigon - Body Slam - Level 44
  (635, 63500, 34, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Hydreigon - Hyper Voice - Level 48
  (635, 63500, 304, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Hydreigon - Dragon Rush - Level 54
  (635, 63500, 407, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Hydreigon - Nasty Plot - Level 60
  (635, 63500, 417, 23, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Hydreigon - Outrage - Level 68
  (635, 63500, 200, 23, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Hydreigon - Hyper Beam - Level 76
  (635, 63500, 63, 23, NULL, 1, 76, NULL, NULL, NULL, 20),
  -- Hydreigon - Take Down - TM001
  (635, 63500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 21),
  -- Hydreigon - Scary Face - TM006
  (635, 63500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Hydreigon - Protect - TM007
  (635, 63500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Hydreigon - Fire Fang - TM008
  (635, 63500, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 24),
  -- Hydreigon - Thunder Fang - TM009
  (635, 63500, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 25),
  -- Hydreigon - Ice Fang - TM010
  (635, 63500, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 26),
  -- Hydreigon - Acrobatics - TM014
  (635, 63500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 27),
  -- Hydreigon - Thief - TM018
  (635, 63500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 28),
  -- Hydreigon - Fire Spin - TM024
  (635, 63500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 29),
  -- Hydreigon - Facade - TM025
  (635, 63500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Hydreigon - Bulldoze - TM028
  (635, 63500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 31),
  -- Hydreigon - Snarl - TM030
  (635, 63500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 32),
  -- Hydreigon - Rock Tomb - TM036
  (635, 63500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 33),
  -- Hydreigon - Dragon Tail - TM044
  (635, 63500, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 34),
  -- Hydreigon - Endure - TM047
  (635, 63500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Hydreigon - Sunny Day - TM049
  (635, 63500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 36),
  -- Hydreigon - Rain Dance - TM050
  (635, 63500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 37),
  -- Hydreigon - Zen Headbutt - TM059
  (635, 63500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 38),
  -- Hydreigon - U-turn - TM060
  (635, 63500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 39),
  -- Hydreigon - Body Slam - TM066
  (635, 63500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 40),
  -- Hydreigon - Sleep Talk - TM070
  (635, 63500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Hydreigon - Reflect - TM074
  (635, 63500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 42),
  -- Hydreigon - Thunder Wave - TM082
  (635, 63500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Hydreigon - Stomping Tantrum - TM084
  (635, 63500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 44),
  -- Hydreigon - Rest - TM085
  (635, 63500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Hydreigon - Rock Slide - TM086
  (635, 63500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Hydreigon - Taunt - TM087
  (635, 63500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Hydreigon - Flash Cannon - TM093
  (635, 63500, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 48),
  -- Hydreigon - Dark Pulse - TM094
  (635, 63500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Hydreigon - Fly - TM097
  (635, 63500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 50),
  -- Hydreigon - Dragon Dance - TM100
  (635, 63500, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 51),
  -- Hydreigon - Substitute - TM103
  (635, 63500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Hydreigon - Crunch - TM108
  (635, 63500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Hydreigon - Tailwind - TM113
  (635, 63500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 54),
  -- Hydreigon - Dragon Pulse - TM115
  (635, 63500, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 55),
  -- Hydreigon - Stealth Rock - TM116
  (635, 63500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 56),
  -- Hydreigon - Hyper Voice - TM117
  (635, 63500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 57),
  -- Hydreigon - Heat Wave - TM118
  (635, 63500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 58),
  -- Hydreigon - Surf - TM123
  (635, 63500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 59),
  -- Hydreigon - Flamethrower - TM125
  (635, 63500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 60),
  -- Hydreigon - Helping Hand - TM130
  (635, 63500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Hydreigon - Earth Power - TM133
  (635, 63500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 62),
  -- Hydreigon - Nasty Plot - TM140
  (635, 63500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Hydreigon - Fire Blast - TM141
  (635, 63500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 64),
  -- Hydreigon - Hydro Pump - TM142
  (635, 63500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 65),
  -- Hydreigon - Earthquake - TM149
  (635, 63500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 66),
  -- Hydreigon - Stone Edge - TM150
  (635, 63500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 67),
  -- Hydreigon - Giga Impact - TM152
  (635, 63500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 68),
  -- Hydreigon - Outrage - TM156
  (635, 63500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 69),
  -- Hydreigon - Focus Blast - TM158
  (635, 63500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 70),
  -- Hydreigon - Hyper Beam - TM163
  (635, 63500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 71),
  -- Hydreigon - Draco Meteor - TM169
  (635, 63500, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 72),
  -- Hydreigon - Tera Blast - TM171
  (635, 63500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 73),
  -- Hydreigon - Astonish - Egg
  (635, 63500, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Hydreigon - Head Smash - Egg
  (635, 63500, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Hydreigon - Double Hit - Egg
  (635, 63500, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Hydreigon - Belch - Egg
  (635, 63500, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Larvesta - Ember - Level 1
  (636, 63600, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvesta - String Shot - Level 1
  (636, 63600, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvesta - Flame Charge - Level 6
  (636, 63600, 488, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Larvesta - Struggle Bug - Level 12
  (636, 63600, 522, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Larvesta - Flame Wheel - Level 18
  (636, 63600, 172, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Larvesta - Bug Bite - Level 24
  (636, 63600, 450, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Larvesta - Screech - Level 30
  (636, 63600, 103, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Larvesta - Leech Life - Level 36
  (636, 63600, 141, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Larvesta - Bug Buzz - Level 42
  (636, 63600, 405, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Larvesta - Take Down - Level 48
  (636, 63600, 36, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Larvesta - Amnesia - Level 54
  (636, 63600, 133, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Larvesta - Double-Edge - Level 60
  (636, 63600, 38, 23, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Larvesta - Flare Blitz - Level 66
  (636, 63600, 394, 23, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Larvesta - Take Down - TM001
  (636, 63600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Larvesta - Protect - TM007
  (636, 63600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Larvesta - Acrobatics - TM014
  (636, 63600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Larvesta - Struggle Bug - TM015
  (636, 63600, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Larvesta - Trailblaze - TM020
  (636, 63600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Larvesta - Pounce - TM021
  (636, 63600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Larvesta - Fire Spin - TM024
  (636, 63600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Larvesta - Facade - TM025
  (636, 63600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Larvesta - Flame Charge - TM038
  (636, 63600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 22),
  -- Larvesta - Endure - TM047
  (636, 63600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Larvesta - Sunny Day - TM049
  (636, 63600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Larvesta - Zen Headbutt - TM059
  (636, 63600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Larvesta - U-turn - TM060
  (636, 63600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Larvesta - Body Slam - TM066
  (636, 63600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Larvesta - Sleep Talk - TM070
  (636, 63600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Larvesta - Light Screen - TM075
  (636, 63600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Larvesta - Rest - TM085
  (636, 63600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Larvesta - Leech Life - TM095
  (636, 63600, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 31),
  -- Larvesta - Substitute - TM103
  (636, 63600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Larvesta - Will-O-Wisp - TM107
  (636, 63600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 33),
  -- Larvesta - Giga Drain - TM111
  (636, 63600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Larvesta - Heat Wave - TM118
  (636, 63600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 35),
  -- Larvesta - Psychic - TM120
  (636, 63600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 36),
  -- Larvesta - Flamethrower - TM125
  (636, 63600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 37),
  -- Larvesta - Amnesia - TM128
  (636, 63600, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 38),
  -- Larvesta - Calm Mind - TM129
  (636, 63600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 39),
  -- Larvesta - Fire Blast - TM141
  (636, 63600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 40),
  -- Larvesta - Wild Charge - TM147
  (636, 63600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 41),
  -- Larvesta - Overheat - TM157
  (636, 63600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 42),
  -- Larvesta - Bug Buzz - TM162
  (636, 63600, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 43),
  -- Larvesta - Flare Blitz - TM165
  (636, 63600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Larvesta - Solar Beam - TM168
  (636, 63600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Larvesta - Tera Blast - TM171
  (636, 63600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Larvesta - Thrash - Egg
  (636, 63600, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Larvesta - Absorb - Egg
  (636, 63600, 71, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Larvesta - Harden - Egg
  (636, 63600, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Larvesta - Morning Sun - Egg
  (636, 63600, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Volcarona - Gust - Level 1
  (637, 63700, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcarona - Whirlwind - Level 1
  (637, 63700, 18, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcarona - Take Down - Level 1
  (637, 63700, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Volcarona - Double-Edge - Level 1
  (637, 63700, 38, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Volcarona - Ember - Level 1
  (637, 63700, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Volcarona - String Shot - Level 1
  (637, 63700, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Volcarona - Fire Spin - Level 1
  (637, 63700, 83, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Volcarona - Flare Blitz - Level 1
  (637, 63700, 394, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Volcarona - Flame Charge - Level 1
  (637, 63700, 488, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Volcarona - Struggle Bug - Level 1
  (637, 63700, 522, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Volcarona - Fiery Dance - Level 1
  (637, 63700, 552, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Volcarona - Flame Wheel - Level 18
  (637, 63700, 172, 23, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Volcarona - Bug Bite - Level 24
  (637, 63700, 450, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Volcarona - Screech - Level 30
  (637, 63700, 103, 23, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Volcarona - Leech Life - Level 36
  (637, 63700, 141, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Volcarona - Bug Buzz - Level 42
  (637, 63700, 405, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Volcarona - Heat Wave - Level 48
  (637, 63700, 257, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Volcarona - Amnesia - Level 54
  (637, 63700, 133, 23, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Volcarona - Hurricane - Level 62
  (637, 63700, 542, 23, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Volcarona - Fire Blast - Level 70
  (637, 63700, 126, 23, NULL, 1, 70, NULL, NULL, NULL, 20),
  -- Volcarona - Rage Powder - Level 78
  (637, 63700, 476, 23, NULL, 1, 78, NULL, NULL, NULL, 21),
  -- Volcarona - Take Down - TM001
  (637, 63700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 22),
  -- Volcarona - Protect - TM007
  (637, 63700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Volcarona - Acrobatics - TM014
  (637, 63700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 24),
  -- Volcarona - Struggle Bug - TM015
  (637, 63700, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 25),
  -- Volcarona - Trailblaze - TM020
  (637, 63700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Volcarona - Pounce - TM021
  (637, 63700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 27),
  -- Volcarona - Fire Spin - TM024
  (637, 63700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 28),
  -- Volcarona - Facade - TM025
  (637, 63700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 29),
  -- Volcarona - Flame Charge - TM038
  (637, 63700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 30),
  -- Volcarona - Air Cutter - TM040
  (637, 63700, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 31),
  -- Volcarona - Endure - TM047
  (637, 63700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Volcarona - Sunny Day - TM049
  (637, 63700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Volcarona - Rain Dance - TM050
  (637, 63700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Volcarona - Zen Headbutt - TM059
  (637, 63700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Volcarona - U-turn - TM060
  (637, 63700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Volcarona - Air Slash - TM065
  (637, 63700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Volcarona - Body Slam - TM066
  (637, 63700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Volcarona - Sleep Talk - TM070
  (637, 63700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Volcarona - Light Screen - TM075
  (637, 63700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Volcarona - Poison Jab - TM083
  (637, 63700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Volcarona - Rest - TM085
  (637, 63700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Volcarona - Leech Life - TM095
  (637, 63700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 43),
  -- Volcarona - Fly - TM097
  (637, 63700, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 44),
  -- Volcarona - Substitute - TM103
  (637, 63700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Volcarona - Will-O-Wisp - TM107
  (637, 63700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 46),
  -- Volcarona - Giga Drain - TM111
  (637, 63700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 47),
  -- Volcarona - Tailwind - TM113
  (637, 63700, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 48),
  -- Volcarona - Heat Wave - TM118
  (637, 63700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 49),
  -- Volcarona - Psychic - TM120
  (637, 63700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 50),
  -- Volcarona - Flamethrower - TM125
  (637, 63700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 51),
  -- Volcarona - Amnesia - TM128
  (637, 63700, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 52),
  -- Volcarona - Calm Mind - TM129
  (637, 63700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 53),
  -- Volcarona - Fire Blast - TM141
  (637, 63700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 54),
  -- Volcarona - Wild Charge - TM147
  (637, 63700, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 55),
  -- Volcarona - Giga Impact - TM152
  (637, 63700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Volcarona - Overheat - TM157
  (637, 63700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 57),
  -- Volcarona - Hurricane - TM160
  (637, 63700, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 58),
  -- Volcarona - Bug Buzz - TM162
  (637, 63700, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 59),
  -- Volcarona - Hyper Beam - TM163
  (637, 63700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Volcarona - Flare Blitz - TM165
  (637, 63700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 61),
  -- Volcarona - Solar Beam - TM168
  (637, 63700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 62),
  -- Volcarona - Tera Blast - TM171
  (637, 63700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Volcarona - Thrash - Egg
  (637, 63700, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Volcarona - Absorb - Egg
  (637, 63700, 71, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Volcarona - Harden - Egg
  (637, 63700, 106, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Volcarona - Morning Sun - Egg
  (637, 63700, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Volcarona - Quiver Dance - Evolution
  (637, 63700, 483, 23, NULL, 7, NULL, NULL, NULL, NULL, 68),
  -- Cobalion - Leer - Level 1
  (638, 63800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cobalion - Quick Attack - Level 1
  (638, 63800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cobalion - Helping Hand - Level 1
  (638, 63800, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cobalion - Work Up - Level 1
  (638, 63800, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cobalion - Metal Claw - Level 7
  (638, 63800, 232, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Cobalion - Quick Guard - Level 14
  (638, 63800, 501, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Cobalion - Double Kick - Level 21
  (638, 63800, 24, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cobalion - Retaliate - Level 28
  (638, 63800, 514, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cobalion - Metal Burst - Level 35
  (638, 63800, 368, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Cobalion - Take Down - Level 42
  (638, 63800, 36, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Cobalion - Sacred Sword - Level 49
  (638, 63800, 533, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Cobalion - Swords Dance - Level 56
  (638, 63800, 14, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Cobalion - Iron Head - Level 63
  (638, 63800, 442, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Cobalion - Close Combat - Level 70
  (638, 63800, 370, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Cobalion - Take Down - TM001
  (638, 63800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Cobalion - Scary Face - TM006
  (638, 63800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Cobalion - Protect - TM007
  (638, 63800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Cobalion - Facade - TM025
  (638, 63800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Cobalion - Aerial Ace - TM027
  (638, 63800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Cobalion - Metal Claw - TM031
  (638, 63800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 20),
  -- Cobalion - Swift - TM032
  (638, 63800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Cobalion - Endure - TM047
  (638, 63800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Cobalion - Volt Switch - TM048
  (638, 63800, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 23),
  -- Cobalion - Sunny Day - TM049
  (638, 63800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Cobalion - Rain Dance - TM050
  (638, 63800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Cobalion - Sandstorm - TM051
  (638, 63800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Cobalion - Smart Strike - TM053
  (638, 63800, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 27),
  -- Cobalion - False Swipe - TM057
  (638, 63800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 28),
  -- Cobalion - Brick Break - TM058
  (638, 63800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Cobalion - Zen Headbutt - TM059
  (638, 63800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Cobalion - Air Slash - TM065
  (638, 63800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 31),
  -- Cobalion - Body Slam - TM066
  (638, 63800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Cobalion - Sleep Talk - TM070
  (638, 63800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Cobalion - Reflect - TM074
  (638, 63800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Cobalion - Thunder Wave - TM082
  (638, 63800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Cobalion - Poison Jab - TM083
  (638, 63800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Cobalion - Rest - TM085
  (638, 63800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Cobalion - Taunt - TM087
  (638, 63800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Cobalion - Swords Dance - TM088
  (638, 63800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Cobalion - Body Press - TM089
  (638, 63800, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 40),
  -- Cobalion - Flash Cannon - TM093
  (638, 63800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 41),
  -- Cobalion - Iron Head - TM099
  (638, 63800, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Cobalion - Substitute - TM103
  (638, 63800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Cobalion - Iron Defense - TM104
  (638, 63800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Cobalion - X-Scissor - TM105
  (638, 63800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 45),
  -- Cobalion - Aura Sphere - TM112
  (638, 63800, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 46),
  -- Cobalion - Stealth Rock - TM116
  (638, 63800, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Cobalion - Heavy Slam - TM121
  (638, 63800, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Cobalion - Calm Mind - TM129
  (638, 63800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Cobalion - Helping Hand - TM130
  (638, 63800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Cobalion - Reversal - TM134
  (638, 63800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 51),
  -- Cobalion - Stone Edge - TM150
  (638, 63800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 52),
  -- Cobalion - Giga Impact - TM152
  (638, 63800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Cobalion - Focus Blast - TM158
  (638, 63800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 54),
  -- Cobalion - Hyper Beam - TM163
  (638, 63800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Cobalion - Close Combat - TM167
  (638, 63800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 56),
  -- Cobalion - Steel Beam - TM170
  (638, 63800, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Cobalion - Tera Blast - TM171
  (638, 63800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Terrakion - Leer - Level 1
  (639, 63900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Terrakion - Quick Attack - Level 1
  (639, 63900, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Terrakion - Helping Hand - Level 1
  (639, 63900, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Terrakion - Work Up - Level 1
  (639, 63900, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Terrakion - Smack Down - Level 7
  (639, 63900, 479, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Terrakion - Quick Guard - Level 14
  (639, 63900, 501, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Terrakion - Double Kick - Level 21
  (639, 63900, 24, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Terrakion - Retaliate - Level 28
  (639, 63900, 514, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Terrakion - Rock Slide - Level 35
  (639, 63900, 157, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Terrakion - Take Down - Level 42
  (639, 63900, 36, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Terrakion - Sacred Sword - Level 49
  (639, 63900, 533, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Terrakion - Swords Dance - Level 56
  (639, 63900, 14, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Terrakion - Stone Edge - Level 63
  (639, 63900, 444, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Terrakion - Close Combat - Level 70
  (639, 63900, 370, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Terrakion - Take Down - TM001
  (639, 63900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Terrakion - Scary Face - TM006
  (639, 63900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Terrakion - Protect - TM007
  (639, 63900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Terrakion - Facade - TM025
  (639, 63900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Terrakion - Aerial Ace - TM027
  (639, 63900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Terrakion - Bulldoze - TM028
  (639, 63900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Terrakion - Swift - TM032
  (639, 63900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Terrakion - Rock Tomb - TM036
  (639, 63900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Terrakion - Endure - TM047
  (639, 63900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Terrakion - Sandstorm - TM051
  (639, 63900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 24),
  -- Terrakion - Smart Strike - TM053
  (639, 63900, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 25),
  -- Terrakion - False Swipe - TM057
  (639, 63900, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 26),
  -- Terrakion - Brick Break - TM058
  (639, 63900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 27),
  -- Terrakion - Zen Headbutt - TM059
  (639, 63900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Terrakion - Air Slash - TM065
  (639, 63900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 29),
  -- Terrakion - Body Slam - TM066
  (639, 63900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Terrakion - Sleep Talk - TM070
  (639, 63900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Terrakion - Reflect - TM074
  (639, 63900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 32),
  -- Terrakion - Rock Blast - TM076
  (639, 63900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Terrakion - Poison Jab - TM083
  (639, 63900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 34),
  -- Terrakion - Stomping Tantrum - TM084
  (639, 63900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Terrakion - Rest - TM085
  (639, 63900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Terrakion - Rock Slide - TM086
  (639, 63900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Terrakion - Taunt - TM087
  (639, 63900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Terrakion - Swords Dance - TM088
  (639, 63900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Terrakion - Iron Head - TM099
  (639, 63900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Terrakion - Substitute - TM103
  (639, 63900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Terrakion - X-Scissor - TM105
  (639, 63900, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 42),
  -- Terrakion - Aura Sphere - TM112
  (639, 63900, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 43),
  -- Terrakion - Stealth Rock - TM116
  (639, 63900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 44),
  -- Terrakion - Calm Mind - TM129
  (639, 63900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Terrakion - Helping Hand - TM130
  (639, 63900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Terrakion - Earth Power - TM133
  (639, 63900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Terrakion - Reversal - TM134
  (639, 63900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Terrakion - Earthquake - TM149
  (639, 63900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Terrakion - Stone Edge - TM150
  (639, 63900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Terrakion - Giga Impact - TM152
  (639, 63900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Terrakion - Focus Blast - TM158
  (639, 63900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 52),
  -- Terrakion - Hyper Beam - TM163
  (639, 63900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Terrakion - Close Combat - TM167
  (639, 63900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 54),
  -- Terrakion - Tera Blast - TM171
  (639, 63900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Virizion - Leer - Level 1
  (640, 64000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Virizion - Quick Attack - Level 1
  (640, 64000, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Virizion - Helping Hand - Level 1
  (640, 64000, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Virizion - Work Up - Level 1
  (640, 64000, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Virizion - Magical Leaf - Level 7
  (640, 64000, 345, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Virizion - Quick Guard - Level 14
  (640, 64000, 501, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Virizion - Double Kick - Level 21
  (640, 64000, 24, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Virizion - Retaliate - Level 28
  (640, 64000, 514, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Virizion - Giga Drain - Level 35
  (640, 64000, 202, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Virizion - Synthesis - Level 42
  (640, 64000, 235, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Virizion - Sacred Sword - Level 49
  (640, 64000, 533, 23, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Virizion - Swords Dance - Level 56
  (640, 64000, 14, 23, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Virizion - Leaf Blade - Level 63
  (640, 64000, 348, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Virizion - Close Combat - Level 70
  (640, 64000, 370, 23, NULL, 1, 70, NULL, NULL, NULL, 14),
  -- Virizion - Take Down - TM001
  (640, 64000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Virizion - Scary Face - TM006
  (640, 64000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Virizion - Protect - TM007
  (640, 64000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Virizion - Trailblaze - TM020
  (640, 64000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Virizion - Facade - TM025
  (640, 64000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Virizion - Aerial Ace - TM027
  (640, 64000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Virizion - Swift - TM032
  (640, 64000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Virizion - Magical Leaf - TM033
  (640, 64000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Virizion - Endure - TM047
  (640, 64000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Virizion - Sunny Day - TM049
  (640, 64000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Virizion - Smart Strike - TM053
  (640, 64000, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 25),
  -- Virizion - Bullet Seed - TM056
  (640, 64000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Virizion - False Swipe - TM057
  (640, 64000, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 27),
  -- Virizion - Brick Break - TM058
  (640, 64000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Virizion - Zen Headbutt - TM059
  (640, 64000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Virizion - Air Slash - TM065
  (640, 64000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Virizion - Body Slam - TM066
  (640, 64000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Virizion - Sleep Talk - TM070
  (640, 64000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Virizion - Seed Bomb - TM071
  (640, 64000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Virizion - Reflect - TM074
  (640, 64000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Virizion - Light Screen - TM075
  (640, 64000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Virizion - Grass Knot - TM081
  (640, 64000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Virizion - Rest - TM085
  (640, 64000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Virizion - Taunt - TM087
  (640, 64000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Virizion - Swords Dance - TM088
  (640, 64000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Virizion - Substitute - TM103
  (640, 64000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Virizion - X-Scissor - TM105
  (640, 64000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 41),
  -- Virizion - Giga Drain - TM111
  (640, 64000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 42),
  -- Virizion - Aura Sphere - TM112
  (640, 64000, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 43),
  -- Virizion - Energy Ball - TM119
  (640, 64000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Virizion - Calm Mind - TM129
  (640, 64000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 45),
  -- Virizion - Helping Hand - TM130
  (640, 64000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Virizion - Reversal - TM134
  (640, 64000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Virizion - Stone Edge - TM150
  (640, 64000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Virizion - Giga Impact - TM152
  (640, 64000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Virizion - Focus Blast - TM158
  (640, 64000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Virizion - Leaf Storm - TM159
  (640, 64000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 51),
  -- Virizion - Hyper Beam - TM163
  (640, 64000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Virizion - Close Combat - TM167
  (640, 64000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Virizion - Solar Beam - TM168
  (640, 64000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Virizion - Tera Blast - TM171
  (640, 64000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Virizion - Take Down - Reminder
  (640, 64000, 36, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Tornadus - Gust - Level 1
  (641, 64100, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus - Astonish - Level 1
  (641, 64100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus - Leer - Level 5
  (641, 64100, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tornadus - Swagger - Level 10
  (641, 64100, 207, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tornadus - Bite - Level 15
  (641, 64100, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tornadus - Air Cutter - Level 20
  (641, 64100, 314, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tornadus - Agility - Level 25
  (641, 64100, 97, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tornadus - Tailwind - Level 30
  (641, 64100, 366, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tornadus - Air Slash - Level 35
  (641, 64100, 403, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tornadus - Crunch - Level 40
  (641, 64100, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tornadus - Extrasensory - Level 45
  (641, 64100, 326, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tornadus - Uproar - Level 50
  (641, 64100, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tornadus - Hammer Arm - Level 55
  (641, 64100, 359, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tornadus - Rain Dance - Level 60
  (641, 64100, 240, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tornadus - Hurricane - Level 65
  (641, 64100, 542, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tornadus - Thrash - Level 70
  (641, 64100, 37, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tornadus - Bleakwind Storm - Level 77
  (641, 64100, 846, 23, NULL, 1, 77, NULL, NULL, NULL, 17),
  -- Tornadus - Take Down - TM001
  (641, 64100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Tornadus - Agility - TM004
  (641, 64100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Tornadus - Scary Face - TM006
  (641, 64100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Tornadus - Protect - TM007
  (641, 64100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Tornadus - Acrobatics - TM014
  (641, 64100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Tornadus - Thief - TM018
  (641, 64100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Tornadus - Chilling Water - TM022
  (641, 64100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Tornadus - Facade - TM025
  (641, 64100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Tornadus - Icy Wind - TM034
  (641, 64100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Tornadus - Air Cutter - TM040
  (641, 64100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Tornadus - Fling - TM043
  (641, 64100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Tornadus - Endure - TM047
  (641, 64100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Tornadus - Sunny Day - TM049
  (641, 64100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Tornadus - Rain Dance - TM050
  (641, 64100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Tornadus - Sandstorm - TM051
  (641, 64100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Tornadus - Snowscape - TM052
  (641, 64100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Tornadus - Brick Break - TM058
  (641, 64100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Tornadus - U-turn - TM060
  (641, 64100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Tornadus - Foul Play - TM062
  (641, 64100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Tornadus - Bulk Up - TM064
  (641, 64100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Tornadus - Air Slash - TM065
  (641, 64100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Tornadus - Body Slam - TM066
  (641, 64100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Tornadus - Sleep Talk - TM070
  (641, 64100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Tornadus - Metronome - TM080
  (641, 64100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Tornadus - Grass Knot - TM081
  (641, 64100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Tornadus - Rest - TM085
  (641, 64100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Tornadus - Taunt - TM087
  (641, 64100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Tornadus - Dark Pulse - TM094
  (641, 64100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 45),
  -- Tornadus - Fly - TM097
  (641, 64100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 46),
  -- Tornadus - Substitute - TM103
  (641, 64100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Tornadus - Crunch - TM108
  (641, 64100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Tornadus - Tailwind - TM113
  (641, 64100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 49),
  -- Tornadus - Heat Wave - TM118
  (641, 64100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 50),
  -- Tornadus - Psychic - TM120
  (641, 64100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Tornadus - Reversal - TM134
  (641, 64100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Tornadus - Nasty Plot - TM140
  (641, 64100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 53),
  -- Tornadus - Sludge Bomb - TM148
  (641, 64100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 54),
  -- Tornadus - Giga Impact - TM152
  (641, 64100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Tornadus - Focus Blast - TM158
  (641, 64100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Tornadus - Hurricane - TM160
  (641, 64100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 57),
  -- Tornadus - Hyper Beam - TM163
  (641, 64100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Tornadus - Tera Blast - TM171
  (641, 64100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Tornadus (Therian) - Gust - Level 1
  (641, 64101, 16, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus (Therian) - Astonish - Level 1
  (641, 64101, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus (Therian) - Leer - Level 5
  (641, 64101, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tornadus (Therian) - Swagger - Level 10
  (641, 64101, 207, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tornadus (Therian) - Bite - Level 15
  (641, 64101, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tornadus (Therian) - Air Cutter - Level 20
  (641, 64101, 314, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tornadus (Therian) - Agility - Level 25
  (641, 64101, 97, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tornadus (Therian) - Tailwind - Level 30
  (641, 64101, 366, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tornadus (Therian) - Air Slash - Level 35
  (641, 64101, 403, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tornadus (Therian) - Crunch - Level 40
  (641, 64101, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tornadus (Therian) - Extrasensory - Level 45
  (641, 64101, 326, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tornadus (Therian) - Uproar - Level 50
  (641, 64101, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tornadus (Therian) - Hammer Arm - Level 55
  (641, 64101, 359, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tornadus (Therian) - Rain Dance - Level 60
  (641, 64101, 240, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tornadus (Therian) - Hurricane - Level 65
  (641, 64101, 542, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Tornadus (Therian) - Thrash - Level 70
  (641, 64101, 37, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Tornadus (Therian) - Bleakwind Storm - Level 77
  (641, 64101, 846, 23, NULL, 1, 77, NULL, NULL, NULL, 17),
  -- Tornadus (Therian) - Take Down - TM001
  (641, 64101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Tornadus (Therian) - Agility - TM004
  (641, 64101, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Tornadus (Therian) - Scary Face - TM006
  (641, 64101, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Tornadus (Therian) - Protect - TM007
  (641, 64101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Tornadus (Therian) - Acrobatics - TM014
  (641, 64101, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Tornadus (Therian) - Thief - TM018
  (641, 64101, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Tornadus (Therian) - Chilling Water - TM022
  (641, 64101, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Tornadus (Therian) - Facade - TM025
  (641, 64101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Tornadus (Therian) - Icy Wind - TM034
  (641, 64101, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Tornadus (Therian) - Air Cutter - TM040
  (641, 64101, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Tornadus (Therian) - Fling - TM043
  (641, 64101, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Tornadus (Therian) - Endure - TM047
  (641, 64101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Tornadus (Therian) - Sunny Day - TM049
  (641, 64101, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Tornadus (Therian) - Rain Dance - TM050
  (641, 64101, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Tornadus (Therian) - Sandstorm - TM051
  (641, 64101, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 32),
  -- Tornadus (Therian) - Snowscape - TM052
  (641, 64101, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Tornadus (Therian) - Brick Break - TM058
  (641, 64101, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Tornadus (Therian) - U-turn - TM060
  (641, 64101, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Tornadus (Therian) - Foul Play - TM062
  (641, 64101, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Tornadus (Therian) - Bulk Up - TM064
  (641, 64101, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Tornadus (Therian) - Air Slash - TM065
  (641, 64101, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 38),
  -- Tornadus (Therian) - Body Slam - TM066
  (641, 64101, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Tornadus (Therian) - Sleep Talk - TM070
  (641, 64101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Tornadus (Therian) - Metronome - TM080
  (641, 64101, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 41),
  -- Tornadus (Therian) - Grass Knot - TM081
  (641, 64101, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Tornadus (Therian) - Rest - TM085
  (641, 64101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Tornadus (Therian) - Taunt - TM087
  (641, 64101, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Tornadus (Therian) - Dark Pulse - TM094
  (641, 64101, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 45),
  -- Tornadus (Therian) - Fly - TM097
  (641, 64101, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 46),
  -- Tornadus (Therian) - Substitute - TM103
  (641, 64101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Tornadus (Therian) - Crunch - TM108
  (641, 64101, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Tornadus (Therian) - Tailwind - TM113
  (641, 64101, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 49),
  -- Tornadus (Therian) - Heat Wave - TM118
  (641, 64101, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 50),
  -- Tornadus (Therian) - Psychic - TM120
  (641, 64101, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Tornadus (Therian) - Reversal - TM134
  (641, 64101, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 52),
  -- Tornadus (Therian) - Nasty Plot - TM140
  (641, 64101, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 53),
  -- Tornadus (Therian) - Sludge Bomb - TM148
  (641, 64101, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 54),
  -- Tornadus (Therian) - Giga Impact - TM152
  (641, 64101, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Tornadus (Therian) - Focus Blast - TM158
  (641, 64101, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Tornadus (Therian) - Hurricane - TM160
  (641, 64101, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 57),
  -- Tornadus (Therian) - Hyper Beam - TM163
  (641, 64101, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Tornadus (Therian) - Tera Blast - TM171
  (641, 64101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Thundurus - Thunder Shock - Level 1
  (642, 64200, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus - Astonish - Level 1
  (642, 64200, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus - Leer - Level 5
  (642, 64200, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Thundurus - Swagger - Level 10
  (642, 64200, 207, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Thundurus - Bite - Level 15
  (642, 64200, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Thundurus - Shock Wave - Level 20
  (642, 64200, 351, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Thundurus - Agility - Level 25
  (642, 64200, 97, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Thundurus - Charge - Level 30
  (642, 64200, 268, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Thundurus - Volt Switch - Level 35
  (642, 64200, 521, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Thundurus - Crunch - Level 40
  (642, 64200, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Thundurus - Discharge - Level 45
  (642, 64200, 435, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Thundurus - Uproar - Level 50
  (642, 64200, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Thundurus - Hammer Arm - Level 55
  (642, 64200, 359, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Thundurus - Rain Dance - Level 60
  (642, 64200, 240, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Thundurus - Thunder - Level 65
  (642, 64200, 87, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Thundurus - Thrash - Level 70
  (642, 64200, 37, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Thundurus - Wildbolt Storm - Level 75
  (642, 64200, 847, 23, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Thundurus - Take Down - TM001
  (642, 64200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Thundurus - Agility - TM004
  (642, 64200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Thundurus - Scary Face - TM006
  (642, 64200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Thundurus - Protect - TM007
  (642, 64200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Thundurus - Acrobatics - TM014
  (642, 64200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Thundurus - Thief - TM018
  (642, 64200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Thundurus - Charge Beam - TM023
  (642, 64200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Thundurus - Facade - TM025
  (642, 64200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Thundurus - Snarl - TM030
  (642, 64200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Thundurus - Fling - TM043
  (642, 64200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Thundurus - Endure - TM047
  (642, 64200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Thundurus - Volt Switch - TM048
  (642, 64200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 29),
  -- Thundurus - Sunny Day - TM049
  (642, 64200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Thundurus - Rain Dance - TM050
  (642, 64200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Thundurus - Smart Strike - TM053
  (642, 64200, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Thundurus - Brick Break - TM058
  (642, 64200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Thundurus - Zen Headbutt - TM059
  (642, 64200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Thundurus - U-turn - TM060
  (642, 64200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Thundurus - Foul Play - TM062
  (642, 64200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Thundurus - Bulk Up - TM064
  (642, 64200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Thundurus - Body Slam - TM066
  (642, 64200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Thundurus - Thunder Punch - TM068
  (642, 64200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Thundurus - Sleep Talk - TM070
  (642, 64200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Thundurus - Electro Ball - TM072
  (642, 64200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 41),
  -- Thundurus - Grass Knot - TM081
  (642, 64200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Thundurus - Thunder Wave - TM082
  (642, 64200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Thundurus - Rest - TM085
  (642, 64200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Thundurus - Taunt - TM087
  (642, 64200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Thundurus - Flash Cannon - TM093
  (642, 64200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 46),
  -- Thundurus - Dark Pulse - TM094
  (642, 64200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Thundurus - Eerie Impulse - TM096
  (642, 64200, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 48),
  -- Thundurus - Fly - TM097
  (642, 64200, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 49),
  -- Thundurus - Substitute - TM103
  (642, 64200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Thundurus - Crunch - TM108
  (642, 64200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Thundurus - Psychic - TM120
  (642, 64200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Thundurus - Thunderbolt - TM126
  (642, 64200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Thundurus - Electric Terrain - TM136
  (642, 64200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 54),
  -- Thundurus - Nasty Plot - TM140
  (642, 64200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Thundurus - Wild Charge - TM147
  (642, 64200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 56),
  -- Thundurus - Sludge Bomb - TM148
  (642, 64200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Thundurus - Giga Impact - TM152
  (642, 64200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Thundurus - Focus Blast - TM158
  (642, 64200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Thundurus - Hyper Beam - TM163
  (642, 64200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Thundurus - Thunder - TM166
  (642, 64200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 61),
  -- Thundurus - Tera Blast - TM171
  (642, 64200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Thundurus (Therian) - Thunder Shock - Level 1
  (642, 64201, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus (Therian) - Astonish - Level 1
  (642, 64201, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus (Therian) - Leer - Level 5
  (642, 64201, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Thundurus (Therian) - Swagger - Level 10
  (642, 64201, 207, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Thundurus (Therian) - Bite - Level 15
  (642, 64201, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Thundurus (Therian) - Shock Wave - Level 20
  (642, 64201, 351, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Thundurus (Therian) - Agility - Level 25
  (642, 64201, 97, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Thundurus (Therian) - Charge - Level 30
  (642, 64201, 268, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Thundurus (Therian) - Volt Switch - Level 35
  (642, 64201, 521, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Thundurus (Therian) - Crunch - Level 40
  (642, 64201, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Thundurus (Therian) - Discharge - Level 45
  (642, 64201, 435, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Thundurus (Therian) - Uproar - Level 50
  (642, 64201, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Thundurus (Therian) - Hammer Arm - Level 55
  (642, 64201, 359, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Thundurus (Therian) - Rain Dance - Level 60
  (642, 64201, 240, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Thundurus (Therian) - Thunder - Level 65
  (642, 64201, 87, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Thundurus (Therian) - Thrash - Level 70
  (642, 64201, 37, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Thundurus (Therian) - Wildbolt Storm - Level 75
  (642, 64201, 847, 23, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Thundurus (Therian) - Take Down - TM001
  (642, 64201, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Thundurus (Therian) - Agility - TM004
  (642, 64201, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Thundurus (Therian) - Scary Face - TM006
  (642, 64201, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Thundurus (Therian) - Protect - TM007
  (642, 64201, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Thundurus (Therian) - Acrobatics - TM014
  (642, 64201, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Thundurus (Therian) - Thief - TM018
  (642, 64201, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Thundurus (Therian) - Charge Beam - TM023
  (642, 64201, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 24),
  -- Thundurus (Therian) - Facade - TM025
  (642, 64201, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Thundurus (Therian) - Snarl - TM030
  (642, 64201, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Thundurus (Therian) - Fling - TM043
  (642, 64201, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Thundurus (Therian) - Endure - TM047
  (642, 64201, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Thundurus (Therian) - Volt Switch - TM048
  (642, 64201, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 29),
  -- Thundurus (Therian) - Sunny Day - TM049
  (642, 64201, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Thundurus (Therian) - Rain Dance - TM050
  (642, 64201, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Thundurus (Therian) - Smart Strike - TM053
  (642, 64201, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 32),
  -- Thundurus (Therian) - Brick Break - TM058
  (642, 64201, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Thundurus (Therian) - Zen Headbutt - TM059
  (642, 64201, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Thundurus (Therian) - U-turn - TM060
  (642, 64201, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Thundurus (Therian) - Foul Play - TM062
  (642, 64201, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Thundurus (Therian) - Bulk Up - TM064
  (642, 64201, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Thundurus (Therian) - Body Slam - TM066
  (642, 64201, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Thundurus (Therian) - Thunder Punch - TM068
  (642, 64201, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Thundurus (Therian) - Sleep Talk - TM070
  (642, 64201, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Thundurus (Therian) - Electro Ball - TM072
  (642, 64201, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 41),
  -- Thundurus (Therian) - Grass Knot - TM081
  (642, 64201, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Thundurus (Therian) - Thunder Wave - TM082
  (642, 64201, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Thundurus (Therian) - Rest - TM085
  (642, 64201, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Thundurus (Therian) - Taunt - TM087
  (642, 64201, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Thundurus (Therian) - Flash Cannon - TM093
  (642, 64201, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 46),
  -- Thundurus (Therian) - Dark Pulse - TM094
  (642, 64201, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Thundurus (Therian) - Eerie Impulse - TM096
  (642, 64201, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 48),
  -- Thundurus (Therian) - Fly - TM097
  (642, 64201, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 49),
  -- Thundurus (Therian) - Substitute - TM103
  (642, 64201, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Thundurus (Therian) - Crunch - TM108
  (642, 64201, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Thundurus (Therian) - Psychic - TM120
  (642, 64201, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Thundurus (Therian) - Thunderbolt - TM126
  (642, 64201, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Thundurus (Therian) - Electric Terrain - TM136
  (642, 64201, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 54),
  -- Thundurus (Therian) - Nasty Plot - TM140
  (642, 64201, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Thundurus (Therian) - Wild Charge - TM147
  (642, 64201, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 56),
  -- Thundurus (Therian) - Sludge Bomb - TM148
  (642, 64201, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Thundurus (Therian) - Giga Impact - TM152
  (642, 64201, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Thundurus (Therian) - Focus Blast - TM158
  (642, 64201, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Thundurus (Therian) - Hyper Beam - TM163
  (642, 64201, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Thundurus (Therian) - Thunder - TM166
  (642, 64201, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 61),
  -- Thundurus (Therian) - Tera Blast - TM171
  (642, 64201, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Reshiram - Dragon Breath - Level 1
  (643, 64300, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reshiram - Ancient Power - Level 1
  (643, 64300, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reshiram - Fire Fang - Level 1
  (643, 64300, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reshiram - Noble Roar - Level 1
  (643, 64300, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reshiram - Slash - Level 8
  (643, 64300, 163, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Reshiram - Crunch - Level 16
  (643, 64300, 242, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Reshiram - Extrasensory - Level 24
  (643, 64300, 326, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Reshiram - Dragon Pulse - Level 32
  (643, 64300, 406, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Reshiram - Flamethrower - Level 40
  (643, 64300, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Reshiram - Fusion Flare - Level 48
  (643, 64300, 558, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Reshiram - Hyper Voice - Level 56
  (643, 64300, 304, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Reshiram - Fire Blast - Level 64
  (643, 64300, 126, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Reshiram - Imprison - Level 72
  (643, 64300, 286, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Reshiram - Outrage - Level 80
  (643, 64300, 200, 23, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Reshiram - Blue Flare - Level 88
  (643, 64300, 551, 23, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Reshiram - Take Down - TM001
  (643, 64300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Reshiram - Scary Face - TM006
  (643, 64300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Reshiram - Protect - TM007
  (643, 64300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Reshiram - Fire Fang - TM008
  (643, 64300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 19),
  -- Reshiram - Fire Spin - TM024
  (643, 64300, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Reshiram - Facade - TM025
  (643, 64300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Reshiram - Swift - TM032
  (643, 64300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Reshiram - Rock Tomb - TM036
  (643, 64300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Reshiram - Flame Charge - TM038
  (643, 64300, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Reshiram - Fling - TM043
  (643, 64300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Reshiram - Dragon Tail - TM044
  (643, 64300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Reshiram - Endure - TM047
  (643, 64300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Reshiram - Sunny Day - TM049
  (643, 64300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Reshiram - Rain Dance - TM050
  (643, 64300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Reshiram - Zen Headbutt - TM059
  (643, 64300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Reshiram - Shadow Claw - TM061
  (643, 64300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Reshiram - Body Slam - TM066
  (643, 64300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Reshiram - Sleep Talk - TM070
  (643, 64300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Reshiram - Reflect - TM074
  (643, 64300, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Reshiram - Light Screen - TM075
  (643, 64300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Reshiram - Dragon Claw - TM078
  (643, 64300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 36),
  -- Reshiram - Rest - TM085
  (643, 64300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Reshiram - Rock Slide - TM086
  (643, 64300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Reshiram - Body Press - TM089
  (643, 64300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 39),
  -- Reshiram - Imprison - TM092
  (643, 64300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Reshiram - Fly - TM097
  (643, 64300, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 41),
  -- Reshiram - Dragon Dance - TM100
  (643, 64300, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 42),
  -- Reshiram - Substitute - TM103
  (643, 64300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Reshiram - Will-O-Wisp - TM107
  (643, 64300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Reshiram - Crunch - TM108
  (643, 64300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 45),
  -- Reshiram - Tailwind - TM113
  (643, 64300, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 46),
  -- Reshiram - Shadow Ball - TM114
  (643, 64300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Reshiram - Dragon Pulse - TM115
  (643, 64300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 48),
  -- Reshiram - Hyper Voice - TM117
  (643, 64300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Reshiram - Heat Wave - TM118
  (643, 64300, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 50),
  -- Reshiram - Psychic - TM120
  (643, 64300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Reshiram - Flamethrower - TM125
  (643, 64300, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Reshiram - Helping Hand - TM130
  (643, 64300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Reshiram - Earth Power - TM133
  (643, 64300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 54),
  -- Reshiram - Fire Blast - TM141
  (643, 64300, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Reshiram - Stone Edge - TM150
  (643, 64300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Reshiram - Giga Impact - TM152
  (643, 64300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Reshiram - Outrage - TM156
  (643, 64300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 58),
  -- Reshiram - Overheat - TM157
  (643, 64300, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 59),
  -- Reshiram - Focus Blast - TM158
  (643, 64300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Reshiram - Hyper Beam - TM163
  (643, 64300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Reshiram - Flare Blitz - TM165
  (643, 64300, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 62),
  -- Reshiram - Solar Beam - TM168
  (643, 64300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 63),
  -- Reshiram - Draco Meteor - TM169
  (643, 64300, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 64),
  -- Reshiram - Tera Blast - TM171
  (643, 64300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Zekrom - Dragon Breath - Level 1
  (644, 64400, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zekrom - Ancient Power - Level 1
  (644, 64400, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zekrom - Thunder Fang - Level 1
  (644, 64400, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zekrom - Noble Roar - Level 1
  (644, 64400, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zekrom - Slash - Level 8
  (644, 64400, 163, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Zekrom - Crunch - Level 16
  (644, 64400, 242, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Zekrom - Zen Headbutt - Level 24
  (644, 64400, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Zekrom - Dragon Claw - Level 32
  (644, 64400, 337, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Zekrom - Thunderbolt - Level 40
  (644, 64400, 85, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Zekrom - Fusion Bolt - Level 48
  (644, 64400, 559, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Zekrom - Hyper Voice - Level 56
  (644, 64400, 304, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Zekrom - Thunder - Level 64
  (644, 64400, 87, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Zekrom - Imprison - Level 72
  (644, 64400, 286, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Zekrom - Outrage - Level 80
  (644, 64400, 200, 23, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Zekrom - Bolt Strike - Level 88
  (644, 64400, 550, 23, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Zekrom - Take Down - TM001
  (644, 64400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Zekrom - Scary Face - TM006
  (644, 64400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Zekrom - Protect - TM007
  (644, 64400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Zekrom - Thunder Fang - TM009
  (644, 64400, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 19),
  -- Zekrom - Charge Beam - TM023
  (644, 64400, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Zekrom - Facade - TM025
  (644, 64400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Zekrom - Swift - TM032
  (644, 64400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Zekrom - Rock Tomb - TM036
  (644, 64400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 23),
  -- Zekrom - Fling - TM043
  (644, 64400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Zekrom - Dragon Tail - TM044
  (644, 64400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 25),
  -- Zekrom - Endure - TM047
  (644, 64400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Zekrom - Volt Switch - TM048
  (644, 64400, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Zekrom - Sunny Day - TM049
  (644, 64400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Zekrom - Rain Dance - TM050
  (644, 64400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Zekrom - Brick Break - TM058
  (644, 64400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Zekrom - Zen Headbutt - TM059
  (644, 64400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 31),
  -- Zekrom - Shadow Claw - TM061
  (644, 64400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 32),
  -- Zekrom - Body Slam - TM066
  (644, 64400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Zekrom - Thunder Punch - TM068
  (644, 64400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Zekrom - Sleep Talk - TM070
  (644, 64400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Zekrom - Electro Ball - TM072
  (644, 64400, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 36),
  -- Zekrom - Reflect - TM074
  (644, 64400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 37),
  -- Zekrom - Light Screen - TM075
  (644, 64400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 38),
  -- Zekrom - Dragon Claw - TM078
  (644, 64400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 39),
  -- Zekrom - Thunder Wave - TM082
  (644, 64400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Zekrom - Rest - TM085
  (644, 64400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Zekrom - Rock Slide - TM086
  (644, 64400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Zekrom - Body Press - TM089
  (644, 64400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Zekrom - Imprison - TM092
  (644, 64400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 44),
  -- Zekrom - Flash Cannon - TM093
  (644, 64400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 45),
  -- Zekrom - Fly - TM097
  (644, 64400, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 46),
  -- Zekrom - Dragon Dance - TM100
  (644, 64400, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 47),
  -- Zekrom - Substitute - TM103
  (644, 64400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Zekrom - Crunch - TM108
  (644, 64400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 49),
  -- Zekrom - Tailwind - TM113
  (644, 64400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 50),
  -- Zekrom - Shadow Ball - TM114
  (644, 64400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Zekrom - Dragon Pulse - TM115
  (644, 64400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 52),
  -- Zekrom - Stealth Rock - TM116
  (644, 64400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Zekrom - Hyper Voice - TM117
  (644, 64400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Zekrom - Psychic - TM120
  (644, 64400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Zekrom - Thunderbolt - TM126
  (644, 64400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 56),
  -- Zekrom - Helping Hand - TM130
  (644, 64400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Zekrom - Earth Power - TM133
  (644, 64400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 58),
  -- Zekrom - Electric Terrain - TM136
  (644, 64400, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 59),
  -- Zekrom - Wild Charge - TM147
  (644, 64400, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 60),
  -- Zekrom - Stone Edge - TM150
  (644, 64400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Zekrom - Giga Impact - TM152
  (644, 64400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Zekrom - Outrage - TM156
  (644, 64400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 63),
  -- Zekrom - Focus Blast - TM158
  (644, 64400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 64),
  -- Zekrom - Hyper Beam - TM163
  (644, 64400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 65),
  -- Zekrom - Thunder - TM166
  (644, 64400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 66),
  -- Zekrom - Draco Meteor - TM169
  (644, 64400, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 67),
  -- Zekrom - Tera Blast - TM171
  (644, 64400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Landorus - Sand Tomb - Level 1
  (645, 64500, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus - Smack Down - Level 1
  (645, 64500, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus - Leer - Level 5
  (645, 64500, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Landorus - Block - Level 10
  (645, 64500, 335, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Landorus - Bulldoze - Level 15
  (645, 64500, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Landorus - Rock Tomb - Level 20
  (645, 64500, 317, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Landorus - Imprison - Level 30
  (645, 64500, 286, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Landorus - Rock Slide - Level 35
  (645, 64500, 157, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Landorus - Earth Power - Level 40
  (645, 64500, 414, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Landorus - Extrasensory - Level 45
  (645, 64500, 326, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Landorus - Stone Edge - Level 50
  (645, 64500, 444, 23, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Landorus - Hammer Arm - Level 55
  (645, 64500, 359, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Landorus - Sandstorm - Level 60
  (645, 64500, 201, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Landorus - Earthquake - Level 65
  (645, 64500, 89, 23, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Landorus - Outrage - Level 70
  (645, 64500, 200, 23, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Landorus - Fissure - Level 75
  (645, 64500, 90, 23, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Landorus - Sandsear Storm - Level 80
  (645, 64500, 848, 23, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Landorus - Take Down - TM001
  (645, 64500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Landorus - Mud-Slap - TM005
  (645, 64500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Landorus - Scary Face - TM006
  (645, 64500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Landorus - Protect - TM007
  (645, 64500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Landorus - Facade - TM025
  (645, 64500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Landorus - Bulldoze - TM028
  (645, 64500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Landorus - Mud Shot - TM035
  (645, 64500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Landorus - Rock Tomb - TM036
  (645, 64500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Landorus - Fling - TM043
  (645, 64500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Landorus - Endure - TM047
  (645, 64500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Landorus - Sunny Day - TM049
  (645, 64500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Landorus - Rain Dance - TM050
  (645, 64500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Landorus - Sandstorm - TM051
  (645, 64500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Landorus - Dig - TM055
  (645, 64500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Landorus - Brick Break - TM058
  (645, 64500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Landorus - U-turn - TM060
  (645, 64500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Landorus - Bulk Up - TM064
  (645, 64500, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Landorus - Body Slam - TM066
  (645, 64500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Landorus - Sleep Talk - TM070
  (645, 64500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Landorus - Grass Knot - TM081
  (645, 64500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Landorus - Stomping Tantrum - TM084
  (645, 64500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Landorus - Rest - TM085
  (645, 64500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Landorus - Rock Slide - TM086
  (645, 64500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Landorus - Taunt - TM087
  (645, 64500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Landorus - Swords Dance - TM088
  (645, 64500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Landorus - Imprison - TM092
  (645, 64500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 43),
  -- Landorus - Fly - TM097
  (645, 64500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 44),
  -- Landorus - Substitute - TM103
  (645, 64500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Landorus - Crunch - TM108
  (645, 64500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 46),
  -- Landorus - Stealth Rock - TM116
  (645, 64500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Landorus - Psychic - TM120
  (645, 64500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Landorus - Calm Mind - TM129
  (645, 64500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Landorus - Earth Power - TM133
  (645, 64500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 50),
  -- Landorus - Nasty Plot - TM140
  (645, 64500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Landorus - Sludge Bomb - TM148
  (645, 64500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 52),
  -- Landorus - Earthquake - TM149
  (645, 64500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Landorus - Stone Edge - TM150
  (645, 64500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 54),
  -- Landorus - Giga Impact - TM152
  (645, 64500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Landorus - Outrage - TM156
  (645, 64500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 56),
  -- Landorus - Focus Blast - TM158
  (645, 64500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Landorus - Hyper Beam - TM163
  (645, 64500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Landorus - Tera Blast - TM171
  (645, 64500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Landorus (Therian) - Sand Tomb - Level 1
  (645, 64501, 328, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus (Therian) - Smack Down - Level 1
  (645, 64501, 479, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus (Therian) - Leer - Level 5
  (645, 64501, 43, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Landorus (Therian) - Block - Level 10
  (645, 64501, 335, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Landorus (Therian) - Bulldoze - Level 15
  (645, 64501, 523, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Landorus (Therian) - Rock Tomb - Level 20
  (645, 64501, 317, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Landorus (Therian) - Imprison - Level 30
  (645, 64501, 286, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Landorus (Therian) - Rock Slide - Level 35
  (645, 64501, 157, 23, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Landorus (Therian) - Earth Power - Level 40
  (645, 64501, 414, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Landorus (Therian) - Extrasensory - Level 45
  (645, 64501, 326, 23, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Landorus (Therian) - Stone Edge - Level 50
  (645, 64501, 444, 23, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Landorus (Therian) - Hammer Arm - Level 55
  (645, 64501, 359, 23, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Landorus (Therian) - Sandstorm - Level 60
  (645, 64501, 201, 23, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Landorus (Therian) - Earthquake - Level 65
  (645, 64501, 89, 23, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Landorus (Therian) - Outrage - Level 70
  (645, 64501, 200, 23, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Landorus (Therian) - Fissure - Level 75
  (645, 64501, 90, 23, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Landorus (Therian) - Sandsear Storm - Level 80
  (645, 64501, 848, 23, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Landorus (Therian) - Take Down - TM001
  (645, 64501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Landorus (Therian) - Mud-Slap - TM005
  (645, 64501, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Landorus (Therian) - Scary Face - TM006
  (645, 64501, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Landorus (Therian) - Protect - TM007
  (645, 64501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Landorus (Therian) - Facade - TM025
  (645, 64501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Landorus (Therian) - Bulldoze - TM028
  (645, 64501, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Landorus (Therian) - Mud Shot - TM035
  (645, 64501, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Landorus (Therian) - Rock Tomb - TM036
  (645, 64501, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Landorus (Therian) - Fling - TM043
  (645, 64501, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Landorus (Therian) - Endure - TM047
  (645, 64501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Landorus (Therian) - Sunny Day - TM049
  (645, 64501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Landorus (Therian) - Rain Dance - TM050
  (645, 64501, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Landorus (Therian) - Sandstorm - TM051
  (645, 64501, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Landorus (Therian) - Dig - TM055
  (645, 64501, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Landorus (Therian) - Brick Break - TM058
  (645, 64501, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Landorus (Therian) - U-turn - TM060
  (645, 64501, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Landorus (Therian) - Bulk Up - TM064
  (645, 64501, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Landorus (Therian) - Body Slam - TM066
  (645, 64501, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Landorus (Therian) - Sleep Talk - TM070
  (645, 64501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Landorus (Therian) - Grass Knot - TM081
  (645, 64501, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Landorus (Therian) - Stomping Tantrum - TM084
  (645, 64501, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Landorus (Therian) - Rest - TM085
  (645, 64501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Landorus (Therian) - Rock Slide - TM086
  (645, 64501, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Landorus (Therian) - Taunt - TM087
  (645, 64501, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Landorus (Therian) - Swords Dance - TM088
  (645, 64501, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Landorus (Therian) - Imprison - TM092
  (645, 64501, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 43),
  -- Landorus (Therian) - Fly - TM097
  (645, 64501, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 44),
  -- Landorus (Therian) - Substitute - TM103
  (645, 64501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Landorus (Therian) - Crunch - TM108
  (645, 64501, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 46),
  -- Landorus (Therian) - Stealth Rock - TM116
  (645, 64501, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Landorus (Therian) - Psychic - TM120
  (645, 64501, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Landorus (Therian) - Calm Mind - TM129
  (645, 64501, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 49),
  -- Landorus (Therian) - Earth Power - TM133
  (645, 64501, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 50),
  -- Landorus (Therian) - Nasty Plot - TM140
  (645, 64501, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 51),
  -- Landorus (Therian) - Sludge Bomb - TM148
  (645, 64501, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 52),
  -- Landorus (Therian) - Earthquake - TM149
  (645, 64501, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Landorus (Therian) - Stone Edge - TM150
  (645, 64501, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 54),
  -- Landorus (Therian) - Giga Impact - TM152
  (645, 64501, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Landorus (Therian) - Outrage - TM156
  (645, 64501, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 56),
  -- Landorus (Therian) - Focus Blast - TM158
  (645, 64501, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Landorus (Therian) - Hyper Beam - TM163
  (645, 64501, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Landorus (Therian) - Tera Blast - TM171
  (645, 64501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Kyurem - Dragon Breath - Level 1
  (646, 64600, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem - Ancient Power - Level 1
  (646, 64600, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem - Noble Roar - Level 1
  (646, 64600, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyurem - Freeze-Dry - Level 1
  (646, 64600, 573, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyurem - Slash - Level 8
  (646, 64600, 163, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kyurem - Endeavor - Level 16
  (646, 64600, 283, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kyurem - Dragon Pulse - Level 24
  (646, 64600, 406, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kyurem - Ice Beam - Level 32
  (646, 64600, 58, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kyurem - Hyper Voice - Level 40
  (646, 64600, 304, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kyurem - Scary Face - Level 48
  (646, 64600, 184, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kyurem - Blizzard - Level 56
  (646, 64600, 59, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Kyurem - Imprison - Level 64
  (646, 64600, 286, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Kyurem - Outrage - Level 72
  (646, 64600, 200, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Kyurem - Glaciate - Level 80
  (646, 64600, 549, 23, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Kyurem - Sheer Cold - Level 88
  (646, 64600, 329, 23, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Kyurem - Take Down - TM001
  (646, 64600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Kyurem - Scary Face - TM006
  (646, 64600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Kyurem - Protect - TM007
  (646, 64600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Kyurem - Ice Fang - TM010
  (646, 64600, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Kyurem - Facade - TM025
  (646, 64600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Kyurem - Aerial Ace - TM027
  (646, 64600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Kyurem - Swift - TM032
  (646, 64600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Kyurem - Icy Wind - TM034
  (646, 64600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Kyurem - Rock Tomb - TM036
  (646, 64600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Kyurem - Fling - TM043
  (646, 64600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Kyurem - Dragon Tail - TM044
  (646, 64600, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Kyurem - Avalanche - TM046
  (646, 64600, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Kyurem - Endure - TM047
  (646, 64600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Kyurem - Sunny Day - TM049
  (646, 64600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Kyurem - Rain Dance - TM050
  (646, 64600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Kyurem - Snowscape - TM052
  (646, 64600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Kyurem - Zen Headbutt - TM059
  (646, 64600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Kyurem - Shadow Claw - TM061
  (646, 64600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Kyurem - Body Slam - TM066
  (646, 64600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Kyurem - Sleep Talk - TM070
  (646, 64600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Kyurem - Reflect - TM074
  (646, 64600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Kyurem - Light Screen - TM075
  (646, 64600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Kyurem - Dragon Claw - TM078
  (646, 64600, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 38),
  -- Kyurem - Rest - TM085
  (646, 64600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Kyurem - Rock Slide - TM086
  (646, 64600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Kyurem - Body Press - TM089
  (646, 64600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Kyurem - Imprison - TM092
  (646, 64600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Kyurem - Flash Cannon - TM093
  (646, 64600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Kyurem - Fly - TM097
  (646, 64600, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 44),
  -- Kyurem - Iron Head - TM099
  (646, 64600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Kyurem - Dragon Dance - TM100
  (646, 64600, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 46),
  -- Kyurem - Substitute - TM103
  (646, 64600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Kyurem - Shadow Ball - TM114
  (646, 64600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Kyurem - Dragon Pulse - TM115
  (646, 64600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Kyurem - Hyper Voice - TM117
  (646, 64600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Kyurem - Psychic - TM120
  (646, 64600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Kyurem - Helping Hand - TM130
  (646, 64600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Kyurem - Earth Power - TM133
  (646, 64600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 53),
  -- Kyurem - Ice Beam - TM135
  (646, 64600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 54),
  -- Kyurem - Blizzard - TM143
  (646, 64600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 55),
  -- Kyurem - Stone Edge - TM150
  (646, 64600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Kyurem - Giga Impact - TM152
  (646, 64600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Kyurem - Outrage - TM156
  (646, 64600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 58),
  -- Kyurem - Focus Blast - TM158
  (646, 64600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Kyurem - Hyper Beam - TM163
  (646, 64600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Kyurem - Draco Meteor - TM169
  (646, 64600, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 61),
  -- Kyurem - Tera Blast - TM171
  (646, 64600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Kyurem (White) - Dragon Breath - Level 1
  (646, 64601, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (White) - Ancient Power - Level 1
  (646, 64601, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (White) - Noble Roar - Level 1
  (646, 64601, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyurem (White) - Freeze-Dry - Level 1
  (646, 64601, 573, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyurem (White) - Slash - Level 8
  (646, 64601, 163, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kyurem (White) - Endeavor - Level 16
  (646, 64601, 283, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kyurem (White) - Dragon Pulse - Level 24
  (646, 64601, 406, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kyurem (White) - Ice Beam - Level 32
  (646, 64601, 58, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kyurem (White) - Hyper Voice - Level 40
  (646, 64601, 304, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kyurem (White) - Fusion Flare - Level 48
  (646, 64601, 558, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kyurem (White) - Blizzard - Level 56
  (646, 64601, 59, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Kyurem (White) - Imprison - Level 64
  (646, 64601, 286, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Kyurem (White) - Outrage - Level 72
  (646, 64601, 200, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Kyurem (White) - Ice Burn - Level 80
  (646, 64601, 554, 23, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Kyurem (White) - Sheer Cold - Level 88
  (646, 64601, 329, 23, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Kyurem (White) - Take Down - TM001
  (646, 64601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Kyurem (White) - Scary Face - TM006
  (646, 64601, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Kyurem (White) - Protect - TM007
  (646, 64601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Kyurem (White) - Ice Fang - TM010
  (646, 64601, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Kyurem (White) - Facade - TM025
  (646, 64601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Kyurem (White) - Aerial Ace - TM027
  (646, 64601, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Kyurem (White) - Swift - TM032
  (646, 64601, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Kyurem (White) - Icy Wind - TM034
  (646, 64601, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Kyurem (White) - Rock Tomb - TM036
  (646, 64601, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Kyurem (White) - Fling - TM043
  (646, 64601, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Kyurem (White) - Dragon Tail - TM044
  (646, 64601, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Kyurem (White) - Avalanche - TM046
  (646, 64601, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Kyurem (White) - Endure - TM047
  (646, 64601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Kyurem (White) - Sunny Day - TM049
  (646, 64601, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Kyurem (White) - Rain Dance - TM050
  (646, 64601, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Kyurem (White) - Snowscape - TM052
  (646, 64601, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Kyurem (White) - Zen Headbutt - TM059
  (646, 64601, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Kyurem (White) - Shadow Claw - TM061
  (646, 64601, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Kyurem (White) - Body Slam - TM066
  (646, 64601, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Kyurem (White) - Sleep Talk - TM070
  (646, 64601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Kyurem (White) - Reflect - TM074
  (646, 64601, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Kyurem (White) - Light Screen - TM075
  (646, 64601, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Kyurem (White) - Dragon Claw - TM078
  (646, 64601, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 38),
  -- Kyurem (White) - Rest - TM085
  (646, 64601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Kyurem (White) - Rock Slide - TM086
  (646, 64601, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Kyurem (White) - Body Press - TM089
  (646, 64601, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Kyurem (White) - Imprison - TM092
  (646, 64601, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Kyurem (White) - Flash Cannon - TM093
  (646, 64601, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Kyurem (White) - Fly - TM097
  (646, 64601, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 44),
  -- Kyurem (White) - Iron Head - TM099
  (646, 64601, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Kyurem (White) - Dragon Dance - TM100
  (646, 64601, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 46),
  -- Kyurem (White) - Substitute - TM103
  (646, 64601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Kyurem (White) - Shadow Ball - TM114
  (646, 64601, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Kyurem (White) - Dragon Pulse - TM115
  (646, 64601, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Kyurem (White) - Hyper Voice - TM117
  (646, 64601, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Kyurem (White) - Psychic - TM120
  (646, 64601, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Kyurem (White) - Helping Hand - TM130
  (646, 64601, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Kyurem (White) - Earth Power - TM133
  (646, 64601, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 53),
  -- Kyurem (White) - Ice Beam - TM135
  (646, 64601, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 54),
  -- Kyurem (White) - Blizzard - TM143
  (646, 64601, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 55),
  -- Kyurem (White) - Stone Edge - TM150
  (646, 64601, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Kyurem (White) - Giga Impact - TM152
  (646, 64601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Kyurem (White) - Outrage - TM156
  (646, 64601, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 58),
  -- Kyurem (White) - Focus Blast - TM158
  (646, 64601, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Kyurem (White) - Hyper Beam - TM163
  (646, 64601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Kyurem (White) - Draco Meteor - TM169
  (646, 64601, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 61),
  -- Kyurem (White) - Tera Blast - TM171
  (646, 64601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Kyurem (Black) - Dragon Breath - Level 1
  (646, 64602, 225, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (Black) - Ancient Power - Level 1
  (646, 64602, 246, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (Black) - Noble Roar - Level 1
  (646, 64602, 568, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyurem (Black) - Freeze-Dry - Level 1
  (646, 64602, 573, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyurem (Black) - Slash - Level 8
  (646, 64602, 163, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kyurem (Black) - Endeavor - Level 16
  (646, 64602, 283, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kyurem (Black) - Dragon Pulse - Level 24
  (646, 64602, 406, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kyurem (Black) - Ice Beam - Level 32
  (646, 64602, 58, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kyurem (Black) - Hyper Voice - Level 40
  (646, 64602, 304, 23, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kyurem (Black) - Fusion Bolt - Level 48
  (646, 64602, 559, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Kyurem (Black) - Blizzard - Level 56
  (646, 64602, 59, 23, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Kyurem (Black) - Imprison - Level 64
  (646, 64602, 286, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Kyurem (Black) - Outrage - Level 72
  (646, 64602, 200, 23, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Kyurem (Black) - Freeze Shock - Level 80
  (646, 64602, 553, 23, NULL, 1, 80, NULL, NULL, NULL, 14),
  -- Kyurem (Black) - Sheer Cold - Level 88
  (646, 64602, 329, 23, NULL, 1, 88, NULL, NULL, NULL, 15),
  -- Kyurem (Black) - Take Down - TM001
  (646, 64602, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Kyurem (Black) - Scary Face - TM006
  (646, 64602, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Kyurem (Black) - Protect - TM007
  (646, 64602, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Kyurem (Black) - Ice Fang - TM010
  (646, 64602, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 19),
  -- Kyurem (Black) - Facade - TM025
  (646, 64602, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Kyurem (Black) - Aerial Ace - TM027
  (646, 64602, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Kyurem (Black) - Swift - TM032
  (646, 64602, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Kyurem (Black) - Icy Wind - TM034
  (646, 64602, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Kyurem (Black) - Rock Tomb - TM036
  (646, 64602, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Kyurem (Black) - Fling - TM043
  (646, 64602, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Kyurem (Black) - Dragon Tail - TM044
  (646, 64602, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 26),
  -- Kyurem (Black) - Avalanche - TM046
  (646, 64602, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Kyurem (Black) - Endure - TM047
  (646, 64602, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Kyurem (Black) - Sunny Day - TM049
  (646, 64602, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Kyurem (Black) - Rain Dance - TM050
  (646, 64602, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Kyurem (Black) - Snowscape - TM052
  (646, 64602, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 31),
  -- Kyurem (Black) - Zen Headbutt - TM059
  (646, 64602, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Kyurem (Black) - Shadow Claw - TM061
  (646, 64602, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Kyurem (Black) - Body Slam - TM066
  (646, 64602, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Kyurem (Black) - Sleep Talk - TM070
  (646, 64602, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Kyurem (Black) - Reflect - TM074
  (646, 64602, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Kyurem (Black) - Light Screen - TM075
  (646, 64602, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Kyurem (Black) - Dragon Claw - TM078
  (646, 64602, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 38),
  -- Kyurem (Black) - Rest - TM085
  (646, 64602, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Kyurem (Black) - Rock Slide - TM086
  (646, 64602, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Kyurem (Black) - Body Press - TM089
  (646, 64602, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 41),
  -- Kyurem (Black) - Imprison - TM092
  (646, 64602, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Kyurem (Black) - Flash Cannon - TM093
  (646, 64602, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Kyurem (Black) - Fly - TM097
  (646, 64602, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 44),
  -- Kyurem (Black) - Iron Head - TM099
  (646, 64602, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Kyurem (Black) - Dragon Dance - TM100
  (646, 64602, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 46),
  -- Kyurem (Black) - Substitute - TM103
  (646, 64602, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Kyurem (Black) - Shadow Ball - TM114
  (646, 64602, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Kyurem (Black) - Dragon Pulse - TM115
  (646, 64602, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Kyurem (Black) - Hyper Voice - TM117
  (646, 64602, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Kyurem (Black) - Psychic - TM120
  (646, 64602, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Kyurem (Black) - Helping Hand - TM130
  (646, 64602, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Kyurem (Black) - Earth Power - TM133
  (646, 64602, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 53),
  -- Kyurem (Black) - Ice Beam - TM135
  (646, 64602, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 54),
  -- Kyurem (Black) - Blizzard - TM143
  (646, 64602, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 55),
  -- Kyurem (Black) - Stone Edge - TM150
  (646, 64602, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Kyurem (Black) - Giga Impact - TM152
  (646, 64602, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Kyurem (Black) - Outrage - TM156
  (646, 64602, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 58),
  -- Kyurem (Black) - Focus Blast - TM158
  (646, 64602, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Kyurem (Black) - Hyper Beam - TM163
  (646, 64602, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Kyurem (Black) - Draco Meteor - TM169
  (646, 64602, 434, 23, NULL, 2, NULL, NULL, 23002169, NULL, 61),
  -- Kyurem (Black) - Tera Blast - TM171
  (646, 64602, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Keldeo - Leer - Level 1
  (647, 64700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Keldeo - Helping Hand - Level 1
  (647, 64700, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Keldeo - Aqua Jet - Level 1
  (647, 64700, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Keldeo - Work Up - Level 1
  (647, 64700, 526, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Keldeo - Secret Sword - Level 1
  (647, 64700, 548, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Keldeo - Bubble Beam - Level 7
  (647, 64700, 61, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Keldeo - Quick Guard - Level 14
  (647, 64700, 501, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Keldeo - Double Kick - Level 21
  (647, 64700, 24, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Keldeo - Retaliate - Level 28
  (647, 64700, 514, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Keldeo - Aqua Tail - Level 35
  (647, 64700, 401, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Keldeo - Take Down - Level 42
  (647, 64700, 36, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Keldeo - Sacred Sword - Level 49
  (647, 64700, 533, 23, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Keldeo - Swords Dance - Level 56
  (647, 64700, 14, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Keldeo - Hydro Pump - Level 63
  (647, 64700, 56, 23, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Keldeo - Close Combat - Level 70
  (647, 64700, 370, 23, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Keldeo - Take Down - TM001
  (647, 64700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Keldeo - Protect - TM007
  (647, 64700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Keldeo - Water Pulse - TM011
  (647, 64700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Keldeo - Low Kick - TM012
  (647, 64700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Keldeo - Trailblaze - TM020
  (647, 64700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Keldeo - Chilling Water - TM022
  (647, 64700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Keldeo - Facade - TM025
  (647, 64700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Keldeo - Aerial Ace - TM027
  (647, 64700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Keldeo - Swift - TM032
  (647, 64700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Keldeo - Icy Wind - TM034
  (647, 64700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Keldeo - Endure - TM047
  (647, 64700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Keldeo - Sunny Day - TM049
  (647, 64700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Keldeo - Rain Dance - TM050
  (647, 64700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Keldeo - Smart Strike - TM053
  (647, 64700, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 29),
  -- Keldeo - False Swipe - TM057
  (647, 64700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 30),
  -- Keldeo - Brick Break - TM058
  (647, 64700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Keldeo - Air Slash - TM065
  (647, 64700, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Keldeo - Sleep Talk - TM070
  (647, 64700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Keldeo - Reflect - TM074
  (647, 64700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Keldeo - Poison Jab - TM083
  (647, 64700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 35),
  -- Keldeo - Rest - TM085
  (647, 64700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Keldeo - Taunt - TM087
  (647, 64700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Keldeo - Swords Dance - TM088
  (647, 64700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Keldeo - Substitute - TM103
  (647, 64700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Keldeo - X-Scissor - TM105
  (647, 64700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 40),
  -- Keldeo - Liquidation - TM110
  (647, 64700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 41),
  -- Keldeo - Aura Sphere - TM112
  (647, 64700, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 42),
  -- Keldeo - Surf - TM123
  (647, 64700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 43),
  -- Keldeo - Calm Mind - TM129
  (647, 64700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Keldeo - Helping Hand - TM130
  (647, 64700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Keldeo - Baton Pass - TM132
  (647, 64700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Keldeo - Reversal - TM134
  (647, 64700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Keldeo - Hydro Pump - TM142
  (647, 64700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 48),
  -- Keldeo - Stone Edge - TM150
  (647, 64700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Keldeo - Giga Impact - TM152
  (647, 64700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Keldeo - Focus Blast - TM158
  (647, 64700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 51),
  -- Keldeo - Hyper Beam - TM163
  (647, 64700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Keldeo - Close Combat - TM167
  (647, 64700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Keldeo - Tera Blast - TM171
  (647, 64700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Meloetta - Sing - Level 1
  (648, 64800, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meloetta - Confusion - Level 1
  (648, 64800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meloetta - Quick Attack - Level 1
  (648, 64800, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meloetta - Round - Level 1
  (648, 64800, 496, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meloetta - Teeter Dance - Level 21
  (648, 64800, 298, 23, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Meloetta - Acrobatics - Level 26
  (648, 64800, 512, 23, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Meloetta - Psybeam - Level 31
  (648, 64800, 60, 23, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Meloetta - Echoed Voice - Level 36
  (648, 64800, 497, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Meloetta - U-turn - Level 43
  (648, 64800, 369, 23, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Meloetta - Relic Song - Level 50
  (648, 64800, 547, 23, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Meloetta - Psychic - Level 57
  (648, 64800, 94, 23, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Meloetta - Hyper Voice - Level 64
  (648, 64800, 304, 23, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Meloetta - Role Play - Level 71
  (648, 64800, 272, 23, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Meloetta - Close Combat - Level 78
  (648, 64800, 370, 23, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Meloetta - Perish Song - Level 85
  (648, 64800, 195, 23, NULL, 1, 85, NULL, NULL, NULL, 15),
  -- Meloetta - Charm - TM002
  (648, 64800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Meloetta - Fake Tears - TM003
  (648, 64800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Meloetta - Protect - TM007
  (648, 64800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Meloetta - Low Kick - TM012
  (648, 64800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Meloetta - Acrobatics - TM014
  (648, 64800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Meloetta - Psybeam - TM016
  (648, 64800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Meloetta - Disarming Voice - TM019
  (648, 64800, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Meloetta - Facade - TM025
  (648, 64800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Meloetta - Swift - TM032
  (648, 64800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Meloetta - Low Sweep - TM039
  (648, 64800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 25),
  -- Meloetta - Fling - TM043
  (648, 64800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Meloetta - Endure - TM047
  (648, 64800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Meloetta - Sunny Day - TM049
  (648, 64800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Meloetta - Rain Dance - TM050
  (648, 64800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Meloetta - Psyshock - TM054
  (648, 64800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 30),
  -- Meloetta - Brick Break - TM058
  (648, 64800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Meloetta - Zen Headbutt - TM059
  (648, 64800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Meloetta - U-turn - TM060
  (648, 64800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Meloetta - Shadow Claw - TM061
  (648, 64800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Meloetta - Fire Punch - TM067
  (648, 64800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Meloetta - Thunder Punch - TM068
  (648, 64800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Meloetta - Ice Punch - TM069
  (648, 64800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Meloetta - Sleep Talk - TM070
  (648, 64800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Meloetta - Drain Punch - TM073
  (648, 64800, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 39),
  -- Meloetta - Light Screen - TM075
  (648, 64800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Meloetta - Dazzling Gleam - TM079
  (648, 64800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 41),
  -- Meloetta - Metronome - TM080
  (648, 64800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 42),
  -- Meloetta - Grass Knot - TM081
  (648, 64800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Meloetta - Thunder Wave - TM082
  (648, 64800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 44),
  -- Meloetta - Rest - TM085
  (648, 64800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Meloetta - Swords Dance - TM088
  (648, 64800, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Meloetta - Skill Swap - TM098
  (648, 64800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 47),
  -- Meloetta - Substitute - TM103
  (648, 64800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Meloetta - Trick - TM109
  (648, 64800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 49),
  -- Meloetta - Shadow Ball - TM114
  (648, 64800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Meloetta - Hyper Voice - TM117
  (648, 64800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 51),
  -- Meloetta - Energy Ball - TM119
  (648, 64800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 52),
  -- Meloetta - Psychic - TM120
  (648, 64800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 53),
  -- Meloetta - Thunderbolt - TM126
  (648, 64800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 54),
  -- Meloetta - Play Rough - TM127
  (648, 64800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 55),
  -- Meloetta - Calm Mind - TM129
  (648, 64800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 56),
  -- Meloetta - Helping Hand - TM130
  (648, 64800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Meloetta - Baton Pass - TM132
  (648, 64800, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 58),
  -- Meloetta - Reversal - TM134
  (648, 64800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 59),
  -- Meloetta - Stone Edge - TM150
  (648, 64800, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 60),
  -- Meloetta - Giga Impact - TM152
  (648, 64800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Meloetta - Focus Blast - TM158
  (648, 64800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Meloetta - Trick Room - TM161
  (648, 64800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 63),
  -- Meloetta - Hyper Beam - TM163
  (648, 64800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Meloetta - Thunder - TM166
  (648, 64800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 65),
  -- Meloetta - Close Combat - TM167
  (648, 64800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 66),
  -- Meloetta - Tera Blast - TM171
  (648, 64800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Chespin - Vine Whip - Level 1
  (650, 65000, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chespin - Growl - Level 1
  (650, 65000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chespin - Rollout - Level 8
  (650, 65000, 205, 23, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Chespin - Bite - Level 11
  (650, 65000, 44, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Chespin - Leech Seed - Level 15
  (650, 65000, 73, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chespin - Pin Missile - Level 18
  (650, 65000, 42, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Chespin - Take Down - Level 27
  (650, 65000, 36, 23, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Chespin - Seed Bomb - Level 32
  (650, 65000, 402, 23, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Chespin - Mud Shot - Level 35
  (650, 65000, 341, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Chespin - Body Slam - Level 42
  (650, 65000, 34, 23, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Chespin - Pain Split - Level 45
  (650, 65000, 220, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Chespin - Wood Hammer - Level 48
  (650, 65000, 452, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Chespin - Take Down - TM001
  (650, 65000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Chespin - Protect - TM007
  (650, 65000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Chespin - Low Kick - TM012
  (650, 65000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 15),
  -- Chespin - Trailblaze - TM020
  (650, 65000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Chespin - Facade - TM025
  (650, 65000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Chespin - Aerial Ace - TM027
  (650, 65000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 18),
  -- Chespin - Bulldoze - TM028
  (650, 65000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 19),
  -- Chespin - Metal Claw - TM031
  (650, 65000, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 20),
  -- Chespin - Swift - TM032
  (650, 65000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Chespin - Magical Leaf - TM033
  (650, 65000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Chespin - Mud Shot - TM035
  (650, 65000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Chespin - Rock Tomb - TM036
  (650, 65000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Chespin - Fling - TM043
  (650, 65000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Chespin - Endure - TM047
  (650, 65000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Chespin - Sunny Day - TM049
  (650, 65000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Chespin - Rain Dance - TM050
  (650, 65000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Chespin - Dig - TM055
  (650, 65000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Chespin - Bullet Seed - TM056
  (650, 65000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Chespin - Brick Break - TM058
  (650, 65000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Chespin - Zen Headbutt - TM059
  (650, 65000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 32),
  -- Chespin - Shadow Claw - TM061
  (650, 65000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Chespin - Body Slam - TM066
  (650, 65000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Chespin - Thunder Punch - TM068
  (650, 65000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Chespin - Sleep Talk - TM070
  (650, 65000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Chespin - Seed Bomb - TM071
  (650, 65000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Chespin - Drain Punch - TM073
  (650, 65000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 38),
  -- Chespin - Reflect - TM074
  (650, 65000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 39),
  -- Chespin - Grass Knot - TM081
  (650, 65000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 40),
  -- Chespin - Poison Jab - TM083
  (650, 65000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 41),
  -- Chespin - Stomping Tantrum - TM084
  (650, 65000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 42),
  -- Chespin - Rest - TM085
  (650, 65000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Chespin - Rock Slide - TM086
  (650, 65000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 44),
  -- Chespin - Spikes - TM090
  (650, 65000, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 45),
  -- Chespin - Iron Head - TM099
  (650, 65000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 46),
  -- Chespin - Substitute - TM103
  (650, 65000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Chespin - Giga Drain - TM111
  (650, 65000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Chespin - Energy Ball - TM119
  (650, 65000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 49),
  -- Chespin - Helping Hand - TM130
  (650, 65000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Chespin - Grassy Terrain - TM137
  (650, 65000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 51),
  -- Chespin - Grass Pledge - TM146
  (650, 65000, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 52),
  -- Chespin - Leaf Storm - TM159
  (650, 65000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Chespin - Solar Beam - TM168
  (650, 65000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Chespin - Tera Blast - TM171
  (650, 65000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Chespin - Super Fang - Egg
  (650, 65000, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Chespin - Curse - Egg
  (650, 65000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Chespin - Belly Drum - Egg
  (650, 65000, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Chespin - Spikes - Egg
  (650, 65000, 191, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Chespin - Synthesis - Egg
  (650, 65000, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Chespin - Wide Guard - Egg
  (650, 65000, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Chespin - Quick Guard - Egg
  (650, 65000, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 62);
